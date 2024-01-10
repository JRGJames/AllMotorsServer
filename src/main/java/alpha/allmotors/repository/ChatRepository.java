package alpha.allmotors.repository;

import java.util.Optional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.ChatEntity;
import alpha.allmotors.entity.UserEntity;

public interface ChatRepository extends JpaRepository<ChatEntity, Long> {

        Optional<ChatEntity> findById(Long chatId);

        // Método para obtener chats por memberOne y memberTwo
        @Query("SELECT c FROM ChatEntity c WHERE (c.memberOne = :memberOne AND c.memberTwo = :memberTwo) OR (c.memberOne = :memberTwo AND c.memberTwo = :memberOne)")
        ChatEntity findByMemberOneAndMemberTwo(UserEntity memberOne, UserEntity memberTwo);

        // Método para obtener chats por memberOne y memberTwo paginados
        @Query("SELECT c FROM ChatEntity c WHERE (c.memberOne = :memberOne AND c.memberTwo = :memberTwo) OR (c.memberOne = :memberTwo AND c.memberTwo = :memberOne)")
        Page<ChatEntity> findByMemberOneAndMemberTwo(UserEntity memberOne, UserEntity memberTwo, Pageable pageable);

        // Método para obtener chats ordenados por fecha de creación descendente
        Page<ChatEntity> findAllByOrderByCreationDateDesc(Pageable pageable);

        // Método para encontrar chats con notificaciones
        Page<ChatEntity> findByNotificationsGreaterThan(int notifications, Pageable pageable);

        // Método para encontrar un chat por su identificador y el usuario que lo
        // eliminó
        ChatEntity findByIdAndDeletedBy(Long chatId, UserEntity deletedBy);

        // Método para encontrar chats por usuarios y coche
        @Query("SELECT c FROM ChatEntity c WHERE " +
                        "((c.memberOne = :memberOne AND c.memberTwo = :memberTwo) OR " +
                        "(c.memberOne = :memberTwo AND c.memberTwo = :memberOne)) " +
                        "AND c.car = :car")
        ChatEntity findByUsersAndCar(@Param("memberOne") UserEntity memberOne,
                        @Param("memberTwo") UserEntity memberTwo,
                        @Param("car") CarEntity car);
}