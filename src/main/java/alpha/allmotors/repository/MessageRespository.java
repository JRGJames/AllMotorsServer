package alpha.allmotors.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import alpha.allmotors.entity.MessageEntity;

public interface MessageRespository extends JpaRepository<MessageEntity, Long>  {

}
