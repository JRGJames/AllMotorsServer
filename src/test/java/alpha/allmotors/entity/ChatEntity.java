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
    private UserEntity user;

    @ManyToOne
    @JoinColumn(name = "id_user_two")
    private UserEntity participant;

    @OneToMany(mappedBy = "chat", fetch = jakarta.persistence.FetchType.LAZY)
    private List<MessageEntity> messages;

    public ChatEntity() {
        messages = new ArrayList<>();
    }

    public ChatEntity(Long id, LocalDateTime creation_date, UserEntity user, UserEntity participant) {
        this.id = id;
        this.creation_date = LocalDateTime.now();
        this.user = user;
        this.participant = participant;
    }

    public ChatEntity(LocalDateTime creation_date, UserEntity user, UserEntity participant) {
        this.creation_date = creation_date;
        this.user = user;
        this.participant = participant;
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
        return user;
    }

    public UserEntity setUser1(UserEntity user) {
        return this.user = user;
    }

    public UserEntity getUser2() {
        return participant;
    }

    public UserEntity setUser2(UserEntity participant) {
        return this.participant = participant;
    }

    public int getMessages() {
        return messages.size();
    }


}

