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
import jakarta.validation.constraints.Size;

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
    @JoinColumn(name = "id_recipient")
    private UserEntity recipient;

    @ManyToOne
    @JoinColumn(name = "id_chat")
    private ChatEntity chat;

    @NotNull
    @NotBlank
    @Size(min = 1, max = 2048)
    private String content;

    public MessageEntity() {
    }

    public MessageEntity(Long id, LocalDateTime sentTime, boolean isRead, boolean isLiked, UserEntity sender, UserEntity recipient, ChatEntity chat, String content) {
        this.id = id;
        this.sentTime = LocalDateTime.now();
        this.isRead = isRead;
        this.isLiked = isLiked;
        this.sender = sender;
        this.recipient = recipient;
        this.chat = chat;
        this.content = content;
    }

    public MessageEntity(LocalDateTime sentTime, boolean isRead, boolean isLiked, UserEntity sender, UserEntity recipient, ChatEntity chat, String content) {
        this.sentTime = LocalDateTime.now();
        this.isRead = isRead;
        this.isLiked = isLiked;
        this.sender = sender;
        this.recipient = recipient;
        this.chat = chat;
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

    public UserEntity getRecipient() {
        return recipient;
    }

    public void setRecipient(UserEntity recipient) {
        this.recipient = recipient;
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
