package alpha.allmotors.service;

import java.util.List;
import java.util.Optional;

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
    private CarService carService;

    @Transactional
public MessageEntity sendMessage(MessageEntity message, Long carId) {

    UserEntity memberOne = message.getSender();
    UserEntity memberTwo = message.getReceiver();

    String content = message.getContent();

    if (memberOne != null) {
        if (carId == null) {
            // No hay coche asociado
            System.out.println("No hay coche asociado");

            ChatEntity chat = chatService.getChatByUsersWithoutCar(memberOne, memberTwo);

            if (chat != null){
                // Si el chat entre los usuarios existe, se envía el mensaje al chat existente
                System.out.println("Chat existente encontrado, enviando mensaje al chat existente");
                return messageRepository.save(new MessageEntity(memberOne, memberTwo, chat, content));
            } else {
                // Si no existe un chat entre los usuarios, se crea un nuevo chat
                System.out.println("No existe un chat entre los usuarios, se crea un nuevo chat");

                ChatEntity newChat = new ChatEntity(memberOne, memberTwo);
                chatRepository.save(newChat);

                return messageRepository.save(new MessageEntity(memberOne, memberTwo, newChat, content));
            }
        } else {
            // Hay coche asociado
            System.out.println("Hay coche asociado");

            CarEntity carEntity = carService.get(carId);

            ChatEntity chat = chatService.getChatByUsersAndCar(memberOne, memberTwo, carEntity);

            if (chat != null) {
                // Si el chat entre los usuarios y el coche existe, se envía el mensaje al chat existente
                System.out.println("Chat existente encontrado con coche, enviando mensaje al chat existente");
                return messageRepository.save(new MessageEntity(memberOne, memberTwo, chat, content));
            } else {
                // Si no existe un chat entre los usuarios y el coche, se crea un nuevo chat
                System.out.println("No existe un chat entre los usuarios y el coche, se crea un nuevo chat");

                ChatEntity newChat = new ChatEntity(memberOne, memberTwo, carEntity);
                chatRepository.save(newChat);

                return messageRepository.save(new MessageEntity(memberOne, memberTwo, newChat, content));
            }
        }
    } else {
        // Si no hay un usuario iniciado sesión, el mensaje no puede ser enviado
        System.out.println("No se ha podido enviar el mensaje, no se ha iniciado sesión");
        return null;
    }
}

    // Metodo para marcar un mensaje como leído
    public void markAsRead(Long messageId) {
        Optional<MessageEntity> message = messageRepository.findById(messageId);
        if (message.isPresent()) {
            MessageEntity messageEntity=  message.get();
            messageEntity.setIsRead(true);
            messageRepository.save(message.get());
        }
    }

    // Metodo para dar like a un mensaje
    public void likeMessage(Long messageId, Boolean isLiked) {
        Optional<MessageEntity> message = messageRepository.findById(messageId);
        if (message.isPresent()) {
            MessageEntity messageEntity=  message.get();
            messageEntity.setIsLiked(isLiked);
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
