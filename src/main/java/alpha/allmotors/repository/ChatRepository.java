package alpha.allmotors.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import alpha.allmotors.entity.ChatEntity;

public interface ChatRepository extends JpaRepository<ChatEntity, Long>  {

}
