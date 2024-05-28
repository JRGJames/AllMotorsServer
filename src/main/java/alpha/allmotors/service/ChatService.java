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
import alpha.allmotors.repository.UserRepository;
import jakarta.transaction.Transactional;

@Service
public class ChatService {

    @Autowired
    private ChatRepository chatRepository;

    @Autowired
    private UserRepository userRepository;

    public Boolean isThereCar(CarEntity car) {
        if (car != null && car.getId() != null) {
            return true;
        } else {
            return false;
        }
    }

    public ChatEntity findChatUsers(UserEntity memberOne, UserEntity memberTwo) {

        if (!existsChatByUsers(memberOne, memberTwo)) {

            return createChatUsers(memberOne, memberTwo);
        } else {
            if (getChatByUsers(memberOne, memberTwo) != null) {
                return getChatByUsers(memberOne, memberTwo);
            } else {
                return getChatByUsers(memberTwo, memberOne);
            }
        }
    }

    public ChatEntity findChatUsersCar(UserEntity memberOne, UserEntity memberTwo, CarEntity car) {

        if (!existsChatByUsersCar(memberOne, memberTwo, car)) {

            return createChatUsersCar(memberOne, memberTwo, car);
        } else {
            if (getChatByUsersAndCar(memberOne, memberTwo, car) != null) {
                ChatEntity chat = getChatByUsersAndCar(memberOne, memberTwo, car);
                chat.setCar(car);
                return chat;
            } else {
                ChatEntity chat = getChatByUsersAndCar(memberTwo, memberOne, car);
                chat.setCar(car);
                return chat;
            }
        }
    }

    public ChatEntity createChatUsers(UserEntity memberOne, UserEntity memberTwo) {

        ChatEntity chat = new ChatEntity(memberOne, memberTwo);
        return chatRepository.save(chat);
    }

    public ChatEntity createChatUsersCar(UserEntity memberOne, UserEntity memberTwo, CarEntity car) {

        ChatEntity chat = new ChatEntity(memberOne, memberTwo, car);
        chat.setCar(car);
        return chatRepository.save(chat);
    }

    public Boolean existsChatByUsers(UserEntity memberOne, UserEntity memberTwo) {
        if (getChatByUsers(memberOne, memberTwo) == null
                && getChatByUsers(memberTwo, memberOne) == null) {
            return false;
        } else {
            return true;
        }
    }


    public Boolean existsChatByUsersCar(UserEntity memberOne, UserEntity memberTwo, CarEntity car) {
        if (getChatByUsersAndCar(memberOne, memberTwo, car) == null
                && getChatByUsersAndCar(memberTwo, memberOne, car) == null) {
            return false;
        } else {
            return true;
        }
    }

    public Optional<ChatEntity> getChatById(Long chatId) {
        return chatRepository.findById(chatId);
    }

    public ChatEntity getChatByUsers(UserEntity memberOne, UserEntity memberTwo) {
        return chatRepository.findByMemberOneAndMemberTwo(memberOne, memberTwo);
    }

    public Page<ChatEntity> getChatsByUsersPaged(UserEntity memberOne, UserEntity memberTwo, Pageable pageable) {
        return chatRepository.findByMemberOneAndMemberTwo(memberOne, memberTwo, pageable);
    }

    public ChatEntity getChatByUsersAndCar(UserEntity memberOne, UserEntity memberTwo, CarEntity car) {
        return chatRepository.findByUsersAndCar(memberOne, memberTwo, car);
    }

    public List<ChatEntity> getChatsByUser(Long memberOneId) {
        UserEntity memberOne = userRepository.findById(memberOneId).orElse(null);
        return chatRepository.findAllChatsByUser(memberOne);
    }

    public Page<ChatEntity> getChatsByUserPaged(UserEntity memberOne, Pageable pageable) {
        return chatRepository.findAllChatsByUser(memberOne, pageable);
    }

    public Page<ChatEntity> getAllChatsSortedByCreationDateDesc(Pageable pageable) {
        return chatRepository.findAllByOrderByCreationDateDesc(pageable);
    }

    public Page<ChatEntity> getChatsWithNotifications(Pageable pageable) {
        return chatRepository.findByNotificationsGreaterThan(0, pageable);
    }

    @Transactional
    public void deleteChatForUser(Long chatId, UserEntity user) {
        // Busca el chat por su identificador
        ChatEntity chat = chatRepository.findById(chatId).orElse(null);

        // Verifica si el chat existe y si el usuario es parte del chat
        if (chat != null && (user.equals(chat.getMemberOne()) || user.equals(chat.getMemberTwo()))) {
            // Modifica el estado del chat para indicar que ha sido eliminado por este
            // usuario
            chat.setDeletedBy(user);
            // Guarda los cambios en la base de datos
            chatRepository.save(chat);
        }
    }

    public UserEntity getSenderOfChat(Long chatId) {
        ChatEntity chat = chatRepository.findById(chatId).orElse(null);

        if (chat != null) {
            return chat.getMemberOne();
        }

        return null;
    }

    public UserEntity getReceiverOfChat(Long chatId) {
        ChatEntity chat = chatRepository.findById(chatId).orElse(null);

        if (chat != null) {
            return chat.getMemberTwo();
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