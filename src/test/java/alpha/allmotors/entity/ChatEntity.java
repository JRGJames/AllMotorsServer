package alpha.allmotors.entity;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.time.LocalDateTime;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "chat")
public class ChatEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    private LocalDateTime creation_date;

    @ManyToOne
    @JoinColumn(name = "id_user_one")
    private UserEntity user1;

    @ManyToOne
    @JoinColumn(name = "id_user_two")
    private UserEntity user2;

    @OneToMany(mappedBy = "chat", fetch = jakarta.persistence.FetchType.LAZY)
    private List<MessageEntity> messages;

    public ChatEntity() {
        messages = new ArrayList<>();
    }

    public ChatEntity(Long id, LocalDateTime creation_date, UserEntity user1, UserEntity user2) {
        this.id = id;
        this.creation_date = LocalDateTime.now();
        this.user1 = user1;
        this.user2 = user2;
    }

    public ChatEntity(LocalDateTime creation_date, UserEntity user1, UserEntity user2) {
        this.creation_date = creation_date;
        this.user1 = user1;
        this.user2 = user2;
    }

    public Long getId() {
        return id;
    }

    public Long setId(Long id) {
        return this.id = id;
    }

    public LocalDateTime getCreation_date() {
        return creation_date;
    }

    public LocalDateTime setCreation_date(LocalDateTime creation_date) {
        return this.creation_date = creation_date;
    }

    public UserEntity getUser1() {
        return user1;
    }

    public UserEntity setUser1(UserEntity user1) {
        return this.user1 = user1;
    }

    public UserEntity getUser2() {
        return user2;
    }

    public UserEntity setUser2(UserEntity user2) {
        return this.user2 = user2;
    }

    public int getMessages() {
        return messages.size();
    }


}

