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

@Service
public class MessageService {

    @Autowired
    private MessageRepository messageRepository;

    @Autowired
    private ChatRepository chatRepository;

    public MessageEntity sendMessage(int notificaciones, UserEntity sender, UserEntity recipient, ChatEntity chat, String content, CarEntity car) {
        // Buscar o crear el chat existente
        getOrCreateChat(notificaciones, sender, recipient, car);

        // Enviar el mensaje
        MessageEntity newMessage = new MessageEntity(LocalDateTime.now(), false, false, sender, recipient, chat, content);
        messageRepository.save(newMessage);

        return newMessage;  // Devolver el mensaje creado
    }

    private ChatEntity getOrCreateChat(int notifications, UserEntity sender, UserEntity recipient, CarEntity car) {
        // Buscar si existe un chat entre los dos usuarios y referenciando al mismo coche
        List<ChatEntity> existingChats = chatRepository.findByUsersAndCar(sender, recipient, car);

        if (!existingChats.isEmpty()) {
            return existingChats.get(0); // Devuelve el primer chat encontrado
        } else {
            // Si no existe, crear un nuevo chat
            ChatEntity newChat = new ChatEntity(LocalDateTime.now(), notifications, sender, recipient, car);
            return chatRepository.save(newChat);
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
