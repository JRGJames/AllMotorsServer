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
    private UserService userService;

    @Autowired
    private ChatRepository chatRepository;

    @Transactional
    public MessageEntity sendMessage(MessageEntity message) {

        UserEntity user1 = userService.getByUsername("ElNano");
        UserEntity user2 = message.getRecipient();
        String content = message.getContent();

        if (user1 != null) {
            if (message.getChat() != null) {
                if (message.getChat().getCar().getId() == null) {
                    if (chatService.getChatByUsersAndCar(user1, user2, null) == null) {

                        ChatEntity chat = new ChatEntity(LocalDateTime.now(), 0, user1, user2, null);
                        chatRepository.save(chat);

                        return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                                user1, user2, chat, content));
                    } else {
                        ChatEntity chat = chatService.getChatByUsersAndCar(user1, user2, null).get(0);
                        return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                                user1, user2, chat, content));
                    }
                } else {
                    CarEntity car = message.getChat().getCar();

                    if (chatService.getChatByUsersAndCar(user1, user2, car) == null) {
                        ChatEntity chat = new ChatEntity(LocalDateTime.now(), 0, user1, user2, car);
                        chatRepository.save(chat);

                        return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                                user1, user2, chat, content));
                    } else {
                        ChatEntity chat = chatService.getChatByUsersAndCar(user1, user2, car).get(0);
                        return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                                user1, user2, chat, content));
                    }
                }
            } else {
                if (chatService.getChatByUsersAndCar(user1, user2, null) == null) {

                    ChatEntity chat = new ChatEntity(LocalDateTime.now(), 0, user1, user2, null);
                    chatRepository.save(chat);

                    return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                            user1, user2, chat, content));
                } else {
                    System.out.println();
                    ChatEntity chat = chatService.getChatByUsersAndCar(user1, user2, null).get(0);
                    return messageRepository.save(new MessageEntity(LocalDateTime.now(), false, false,
                            user1, user2, chat, content));
                }
            }
        } else {

            System.out.println("No se ha podido enviar el mensaje2");
            return null;
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
