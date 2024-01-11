package alpha.allmotors.service;

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

    // @Autowired
    // private SessionService session;

    // @Autowired
    // private UserService userService;

    @Transactional
    public MessageEntity sendMessage(MessageEntity message, CarEntity car) {

        // message.setSender(userService.getByUsername(session.getSessionUsername()));
        // message.setReceiver(userService.getByUsername("carlossainz"));

        UserEntity memberOne = message.getSender();
        UserEntity memberTwo = message.getReceiver();

        String content = message.getContent();
        ChatEntity chat = message.getChat();
        
        if (message.getSender() != null) {
            if (chat != null) {
                if (car == null) {
                    if (chatService.getChatByUsers(memberOne, memberTwo) == null
                            && chatService.getChatByUsers(memberTwo, memberOne) == null) {

                        ChatEntity newChat = new ChatEntity(memberOne, memberTwo);
                        chatRepository.save(newChat);

                        return messageRepository.save(new MessageEntity(memberOne, memberTwo, newChat, content));
                    } else {
                        return messageRepository.save(new MessageEntity(memberOne, memberTwo, chat, content));
                    }
                } else {
                    if (chatService.getChatByUsersAndCar(memberOne, memberTwo, car) == null
                            && chatService.getChatByUsersAndCar(memberTwo, memberOne, car) == null) {

                        ChatEntity newChat = new ChatEntity(memberOne, memberTwo, car);
                        chatRepository.save(newChat);

                        return messageRepository.save(new MessageEntity(memberOne, memberTwo, newChat, content));
                    } else {
                        return messageRepository.save(new MessageEntity(memberOne, memberTwo, chat, content));
                    }
                }
            } else {
                if (car == null) {
                    if (chatService.getChatByUsers(memberOne, memberTwo) == null
                            && chatService.getChatByUsers(memberTwo, memberOne) == null) {

                        ChatEntity newChat = new ChatEntity(memberOne, memberTwo);
                        chatRepository.save(newChat);

                        return messageRepository.save(new MessageEntity(memberOne, memberTwo, newChat, content));
                    } else {
                        chat = chatService.getChatByUsers(memberOne, memberTwo);
                    }
                } else {
                    if (chatService.getChatByUsersAndCar(memberOne, memberTwo, car) == null
                            && chatService.getChatByUsersAndCar(memberTwo, memberOne, car) == null) {

                        ChatEntity newChat = new ChatEntity(memberOne, memberTwo, car);
                        chatRepository.save(newChat);

                        return messageRepository.save(new MessageEntity(memberOne, memberTwo, newChat, content));
                    } else {
                        chat = chatService.getChatByUsersAndCar(memberOne, memberTwo, car);
                    }
                }
                return messageRepository.save(new MessageEntity(memberOne, memberTwo, chat, content));
            }
        } else {
            System.out.println("No se ha podido enviar el mensaje, no se ha iniciado sesión");
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
