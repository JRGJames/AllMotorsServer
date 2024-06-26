package alpha.allmotors.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import alpha.allmotors.entity.MessageEntity;

@Repository
public interface MessageRepository extends JpaRepository<MessageEntity, Long>  {

    List<MessageEntity> findByChatId(Long chatId);

    Long countByChatId(Long chatId);

}
