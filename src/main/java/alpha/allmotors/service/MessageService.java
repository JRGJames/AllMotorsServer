package alpha.allmotors.service;

import java.time.LocalDateTime;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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

    @Transactional
    public MessageEntity sendMessage(MessageEntity message) {

        UserEntity user1 = message.getSender();
        UserEntity user2 = message.getRecipient();
        String content = message.getContent();
        ChatEntity chat = chatRepository.findById(message.getChat().getId()).orElse(null);

        if (message.getChat() != null) {
            if (message.getChat().getCar() == null) {
                if (chatService.getChatByUsers(user1, user2) == null && chatService.getChatByUsers(user2, user1) == null) {

                    ChatEntity newChat = new ChatEntity(LocalDateTime.now(), user1, user2);
                    chatRepository.save(newChat);

                    return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                            user1, user2, newChat, content));
                } else {
                    return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                            user1, user2, chat, content));
                }
            } else {
                CarEntity car = message.getChat().getCar();

                if (chatService.getChatByUsersAndCar(user1, user2, car) == null && chatService.getChatByUsersAndCar(user2, user1, car) == null) {
                    ChatEntity newChat = new ChatEntity(LocalDateTime.now(), user1, user2, car);
                    chatRepository.save(newChat);

                    return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                            user1, user2, newChat, content));
                } else {
                    return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                            user1, user2, chat, content));
                }
            }
        } else {
            ChatEntity newChat = new ChatEntity(LocalDateTime.now(), user1, user2);
            chatRepository.save(newChat);

            return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                    user1, user2, newChat, content));
        }
    }

    // Método para marcar un mensaje como leído
    public MessageEntity markAsRead(Long messageId) {
        MessageEntity message = messageRepository.findById(messageId).orElse(null);
        if (message != null) {
            message.setIsRead(true);
            return messageRepository.save(message);
        }
        return null;
    }

    // Método para dar like a un mensaje
    public MessageEntity likeMessage(Long messageId) {
        MessageEntity message = messageRepository.findById(messageId).orElse(null);
        if (message != null) {
            message.setIsLiked(true);
            return messageRepository.save(message);
        }
        return null;
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
