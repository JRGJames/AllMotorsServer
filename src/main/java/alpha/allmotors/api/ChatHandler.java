package alpha.allmotors.api;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import com.fasterxml.jackson.databind.ObjectMapper;

import alpha.allmotors.entity.ChatEntity;
import alpha.allmotors.service.ChatService;

@Component
public class ChatHandler extends TextWebSocketHandler {

    private final CopyOnWriteArraySet<WebSocketSession> sessions = new CopyOnWriteArraySet<>();
    private final Map<Long, Set<WebSocketSession>> chatSessions = new HashMap<>();

    @Autowired
    private ChatService chatService;

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        sessions.add(session);

        // Obtener el chatId de los atributos de la peticion
        UriComponents uriComponents = UriComponentsBuilder.fromUri(session.getUri()).build();
        Long chatId = uriComponents.getQueryParams().getFirst("chatId") != null
                ? Long.parseLong(uriComponents.getQueryParams().getFirst("chatId"))
                : null;
        session.getAttributes().put("chatId", chatId);

        // Agregar la sesión al conjunto de sesiones del chat correspondiente
        if (chatId != null) {
            // get session of the memberOne and memberTwo of the chat and add it to the
            // chatSessions
            Optional<ChatEntity> chat = chatService.getChatById(chatId);

            if (chat.isPresent()) {
                Set<WebSocketSession> sessions = chatSessions.get(chatId);
                if (sessions == null) {
                    sessions = new HashSet<>();
                    chatSessions.put(chatId, sessions);
                }
                sessions.add(session);
            }
        }
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        sessions.remove(session);
        // Eliminar la sesión del conjunto de sesiones del chat correspondiente
        Long chatId = (Long) session.getAttributes().get("chatId");
        if (chatId != null) {
            Set<WebSocketSession> sessions = chatSessions.get(chatId);
            if (sessions != null) {
                sessions.remove(session);
                if (sessions.isEmpty()) {
                    chatSessions.remove(chatId);
                }
            }
        }
    }

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        // Convertir el contenido del mensaje a formato JSON
        ObjectMapper objectMapper = new ObjectMapper();
        Object jsonMessage = objectMapper.readValue(message.getPayload(), Object.class);
        // Obtener el chatId del mensaje
        Long chatId = (Long) session.getAttributes().get("chatId");
        // Enviar el mensaje solo a las sesiones WebSocket asociadas con el chat actual
        Set<WebSocketSession> chatSessions = this.chatSessions.get(chatId);
        if (chatSessions != null) {
            for (WebSocketSession chatSession : chatSessions) {
                if (chatSession.isOpen()) {
                    chatSession.sendMessage(message);
                }
            }
        }
    }

    public Map<Long, Set<WebSocketSession>> getChatSessions() {
        return chatSessions;
    }

    public CopyOnWriteArraySet<WebSocketSession> getSessions() {
        return sessions;
    }
}
