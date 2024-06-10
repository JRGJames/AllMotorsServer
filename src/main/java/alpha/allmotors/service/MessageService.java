package alpha.allmotors.service;

import java.util.List;
import java.util.Optional;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import alpha.allmotors.api.ChatHandler;
import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.ChatEntity;
import alpha.allmotors.entity.MessageEntity;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.repository.ChatRepository;
import alpha.allmotors.repository.MessageRepository;
import jakarta.transaction.Transactional;

@Service
public class MessageService {

    @Autowired
    private MessageRepository messageRepository;

    @Autowired
    private ChatService chatService;

    @Autowired
    private ChatRepository chatRepository;

    @Autowired
    private CarService carService;

    @Autowired
    private ChatHandler chatHandler;

    private final ObjectMapper objectMapper;

    public MessageService(ChatHandler chatHandler, ObjectMapper objectMapper) {
        this.chatHandler = chatHandler;
        this.objectMapper = objectMapper;
    }

    @Transactional
    public MessageEntity sendMessage(MessageEntity message, Long carId) {
        UserEntity memberOne = message.getSender();
        UserEntity memberTwo = message.getReceiver();

        String content = message.getContent();

        MessageEntity savedMessage = null;

        if (memberOne != null) {
            if (carId == null) {
                // No hay coche asociado
                ChatEntity chat = chatService.getChatByUsersWithoutCar(memberOne, memberTwo);
                if (chat != null) {
                    savedMessage = messageRepository.save(new MessageEntity(memberOne, memberTwo, chat, content));
                } else {
                    ChatEntity newChat = new ChatEntity(memberOne, memberTwo);
                    chatRepository.save(newChat);
                    savedMessage = messageRepository.save(new MessageEntity(memberOne, memberTwo, newChat, content));
                }
            } else {
                // Hay coche asociado
                CarEntity carEntity = carService.get(carId);
                ChatEntity chat = chatService.getChatByUsersAndCar(memberOne, memberTwo, carEntity);
                if (chat != null) {
                    savedMessage = messageRepository.save(new MessageEntity(memberOne, memberTwo, chat, content));
                } else {
                    ChatEntity newChat = new ChatEntity(memberOne, memberTwo, carEntity);
                    chatRepository.save(newChat);
                    savedMessage = messageRepository.save(new MessageEntity(memberOne, memberTwo, newChat, content));
                }
            }
        } else {
            return null;
        }

        // Enviar el mensaje a través de WebSocket
        if (savedMessage != null) {
            sendMessageToWebSocket(savedMessage);
        }

        return savedMessage;
    }

    private void sendMessageToWebSocket(MessageEntity message) {
        try {
            // Convertir el mensaje a JSON
            String jsonMessage = objectMapper.writeValueAsString(message);
            TextMessage textMessage = new TextMessage(jsonMessage);

            // Obtener el ID del chat del mensaje
            Long chatId = message.getChat().getId();

            // Obtener las sesiones WebSocket asociadas con el chat actual
            Set<WebSocketSession> chatSessions = chatHandler.getChatSessions().get(chatId);
            if (chatSessions != null) {
                // Enviar el mensaje JSON solo a las sesiones WebSocket asociadas con el chat
                // actual
                for (WebSocketSession session : chatSessions) {
                    if (session.isOpen()) {
                        session.sendMessage(textMessage);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Metodo para marcar un mensaje como leído
    public void markAsRead(Long messageId) {
        Optional<MessageEntity> message = messageRepository.findById(messageId);
        if (message.isPresent()) {
            MessageEntity messageEntity = message.get();
            messageEntity.setRead(true);
            messageRepository.save(message.get());
        }
    }

    // Metodo para dar like a un mensaje
    public void likeMessage(Long messageId, Boolean liked) {
        Optional<MessageEntity> message = messageRepository.findById(messageId);
        if (message.isPresent()) {
            MessageEntity messageEntity = message.get();
            messageEntity.setLiked(liked);
            messageRepository.save(message.get());
        }
    }

    // Método para eliminar un mensaje
    public void deleteMessage(Long messageId) {
        messageRepository.deleteById(messageId);
    }

    // Método para obtener todos los mensajes de un chat
    public List<MessageEntity> getMessagesByChat(Long chatId) {
        return messageRepository.findByChatId(chatId);
    }

    public long countMessagesInChat(Long chatId) {
        return messageRepository.countByChatId(chatId);
    }
}
