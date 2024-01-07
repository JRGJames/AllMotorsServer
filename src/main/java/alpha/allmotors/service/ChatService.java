package alpha.allmotors.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.ChatEntity;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.repository.ChatRepository;
import jakarta.transaction.Transactional;

@Service
public class ChatService {

    @Autowired
    private ChatRepository chatRepository;

    public Optional<ChatEntity> getChatById(Long chatId) {
        return chatRepository.findById(chatId);
    }

    public Page<ChatEntity> getChatsByUsers(UserEntity user, UserEntity participant, Pageable pageable) {
        return chatRepository.findByUserAndParticipant(user, participant, pageable);
    }

    public Page<ChatEntity> getAllChatsSortedByCreationDateDesc(Pageable pageable) {
        return chatRepository.findAllByOrderByCreationDateDesc(pageable);
    }

    public Page<ChatEntity> getChatsWithNotifications(Pageable pageable) {
        return chatRepository.findByNotificationsGreaterThan(0, pageable);
    }

    public List<ChatEntity> getChatByUsersAndCar(UserEntity user, UserEntity participant, CarEntity car) {
        return chatRepository.findByUsersAndCar(user, participant, car);
    }

    @Transactional
    public void deleteChatForUser(Long chatId, UserEntity user) {
        // Busca el chat por su identificador
        ChatEntity chat = chatRepository.findById(chatId).orElse(null);

        // Verifica si el chat existe y si el usuario es parte del chat
        if (chat != null && (user.equals(chat.getUser1()) || user.equals(chat.getUser2()))) {
            // Modifica el estado del chat para indicar que ha sido eliminado por este usuario
            chat.setDeletedBy(user);
            // Guarda los cambios en la base de datos
            chatRepository.save(chat);
        }
    }

    public UserEntity getSenderOfChat(Long chatId) {
        ChatEntity chat = chatRepository.findById(chatId).orElse(null);

        if (chat != null) {
            return chat.getUser1();
        }

        return null;
    }

    public UserEntity getRecipientOfChat(Long chatId) {
        ChatEntity chat = chatRepository.findById(chatId).orElse(null);

        if (chat != null) {
            return chat.getUser2();
        }

        return null;
    }

    public CarEntity getCarOfChat(Long chatId) {
        ChatEntity chat = chatRepository.findById(chatId).orElse(null);

        if (chat != null) {
            return chat.getCar();
        }

        return null;
    }
}