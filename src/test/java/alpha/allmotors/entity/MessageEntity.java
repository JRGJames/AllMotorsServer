package alpha.allmotors.entity;

import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "message")
public class MessageEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    private LocalDateTime sent_time;

    private boolean is_read;

    private boolean is_deleted;

    private boolean is_liked;

    @ManyToOne
    @JoinColumn(name = "id_chat")
    private ChatEntity chat;

    @ManyToOne
    @JoinColumn(name = "id_user")
    private UserEntity sender;

    @NotNull
    @NotBlank
    @Size(min = 1, max = 2048)
    private String content;

    public MessageEntity(Long id, LocalDateTime sent_time, boolean is_read, boolean is_deleted, boolean is_liked,
            ChatEntity chat, UserEntity sender, String content) {
        this.id = id;
        this.sent_time = LocalDateTime.now();
        this.is_read = is_read;
        this.is_deleted = is_deleted;
        this.is_liked = is_liked;
        this.chat = chat;
        this.sender = sender;
        this.content = content;
    }

    public MessageEntity(LocalDateTime sent_time, boolean is_read, boolean is_deleted, boolean is_liked,
            ChatEntity chat, UserEntity sender, String content) {
        this.sent_time = sent_time;
        this.is_read = is_read;
        this.is_deleted = is_deleted;
        this.is_liked = is_liked;
        this.chat = chat;
        this.sender = sender;
        this.content = content;
    }

    public Long getId() {
        return id;
    }

    public Long setId(Long id) {
        return this.id = id;
    }

    public LocalDateTime getSentTime() {
        return sent_time;
    }

    public LocalDateTime setSentTime(LocalDateTime sent_time) {
        return this.sent_time = sent_time;
    }

    public boolean isRead() {
        return is_read;
    }

    public boolean setIsRead(boolean is_read) {
        return this.is_read = is_read;
    }

    public boolean isDeleted() {
        return is_deleted;
    }

    public boolean setIsDeleted(boolean is_deleted) {
        return this.is_deleted = is_deleted;
    }

    public boolean isLiked() {
        return is_liked;
    }

    public boolean setIsLiked(boolean is_liked) {
        return this.is_liked = is_liked;
    }

    public ChatEntity getChat() {
        return chat;
    }

    public ChatEntity setChat(ChatEntity chat) {
        return this.chat = chat;
    }

    public UserEntity getSender() {
        return sender;
    }

    public UserEntity setSender(UserEntity sender) {
        return this.sender = sender;
    }

    public String getContent() {
        return content;
    }

    public String setContent(String content) {
        return this.content = content;
    }


}
