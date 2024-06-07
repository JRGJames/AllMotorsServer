package alpha.allmotors.api;

import java.util.concurrent.CopyOnWriteArraySet;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class ChatHandler extends TextWebSocketHandler {

    private final CopyOnWriteArraySet<WebSocketSession> sessions = new CopyOnWriteArraySet<>();

    @Override
    public void afterConnectionEstablished(WebSocketSession session) throws Exception {
        sessions.add(session);
    }

    @Override
    public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
        sessions.remove(session);
    }

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        // Obtener el contenido del mensaje recibido
        String messageContent = message.getPayload();

        // Convertir el contenido del mensaje a formato JSON
        ObjectMapper objectMapper = new ObjectMapper();
        Object jsonMessage = objectMapper.readValue(messageContent, Object.class);
        String jsonMessageString = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(jsonMessage);

        // Imprimir el mensaje recibido en formato JSON en la consola del servidor
        System.out.println("Mensaje recibido en formato JSON:");
        System.out.println(jsonMessageString);

        // Reenviar el mensaje a todas las sesiones WebSocket activas
        for (WebSocketSession webSocketSession : sessions) {
            if (webSocketSession.isOpen() && !webSocketSession.equals(session)) {
                webSocketSession.sendMessage(message);
            }
        }
    }

    public CopyOnWriteArraySet<WebSocketSession> getSessions() {
        return sessions;
    }
}
