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

    @Autowired
    private SessionService session;

    @Transactional
    public MessageEntity sendMessage(MessageEntity message) {

        message.setSender(session.getSessionUser());
        UserEntity memberOne = message.getSender();
        UserEntity memberTwo = message.getReceiver();
        String content = message.getContent();
        ChatEntity chat = chatRepository.findById(message.getChat().getId()).orElse(null);

        if (message.getSender() != null) {
            if (chat != null) {
                if (message.getChat().getCar() == null) {
                    if (chatService.getChatByUsers(memberOne, memberTwo) == null
                            && chatService.getChatByUsers(memberTwo, memberOne) == null) {

                        ChatEntity newChat = new ChatEntity(memberOne, memberTwo);
                        chatRepository.save(newChat);

                        return messageRepository.save(new MessageEntity(memberTwo, newChat, content));
                    } else {
                        return messageRepository.save(new MessageEntity(memberTwo, chat, content));
                    }
                } else {
                    CarEntity car = message.getChat().getCar();

                    if (chatService.getChatByUsersAndCar(memberOne, memberTwo, car) != null) {
                        ChatEntity activeChat = chatService.getChatByUsersAndCar(memberOne, memberTwo, car);

                        return messageRepository.save(new MessageEntity(memberTwo, activeChat, content));
                    } else {
                        ChatEntity activeChat = chatService.getChatByUsersAndCar(memberTwo, memberOne, car);

                        return messageRepository.save(new MessageEntity(memberTwo, activeChat, content));
                    }
                }
            } else {
                ChatEntity newChat = new ChatEntity(memberOne, memberTwo);
                chatRepository.save(newChat);

                return messageRepository.save(new MessageEntity(memberTwo, newChat, content));
            }
        }else {
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
