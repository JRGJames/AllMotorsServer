package alpha.allmotors.entity;

import java.time.LocalDateTime;
import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "message")
public class MessageEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    @Column(name = "sent_time")
    private LocalDateTime sentTime;

    @Column(name = "is_read")
    private boolean isRead;

    @Column(name = "is_liked")
    private boolean isLiked;

    @ManyToOne
    @JoinColumn(name = "id_sender")
    private UserEntity sender;

    @ManyToOne
    @JoinColumn(name = "id_receiver")
    private UserEntity receiver;

    @ManyToOne
    @JoinColumn(name = "id_chat")
    private ChatEntity chat;

    @NotNull
    @NotBlank
    private String content;

    public MessageEntity() {
    }

    public MessageEntity(Long id, UserEntity sender, UserEntity receiver, ChatEntity chat, String content) {
        this.id = id;
        this.sentTime = LocalDateTime.now();
        this.sender = sender;
        this.receiver = receiver;
        this.content = content;
    }

    public MessageEntity( UserEntity sender, UserEntity receiver, ChatEntity chat, String content) {
        this.sentTime = LocalDateTime.now();
        this.sender = sender;
        this.receiver = receiver;
        this.chat = chat;
        this.content = content;
    }

    public MessageEntity(UserEntity sender, UserEntity receiver, String content) {
        this.sentTime = LocalDateTime.now();
        this.sender = sender;
        this.receiver = receiver;
        this.content = content;
    }

    public MessageEntity(UserEntity receiver, String content) {
        this.sentTime = LocalDateTime.now();
        this.receiver = receiver;
        this.content = content;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getSentTime() {
        return sentTime;
    }

    public void setSentTime(LocalDateTime sentTime) {
        this.sentTime = sentTime;
    }

    public boolean isRead() {
        return isRead;
    }

    public void setIsRead(boolean isRead) {
        this.isRead = isRead;
    }

    public boolean isLiked() {
        return isLiked;
    }

    public void setIsLiked(boolean isLiked) {
        this.isLiked = isLiked;
    }

    public UserEntity getSender() {
        return sender;
    }

    public void setSender(UserEntity sender) {
        this.sender = sender;
    }

    public UserEntity getReceiver() {
        return receiver;
    }

    public void setReceiver(UserEntity receiver) {
        this.receiver = receiver;
    }

    public ChatEntity getChat() {
        return chat;
    }

    public void setChat(ChatEntity chat) {
        this.chat = chat;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
