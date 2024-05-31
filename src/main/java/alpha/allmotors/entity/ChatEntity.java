package alpha.allmotors.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
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
    @Column(name = "creation_date")
    private LocalDateTime creationDate;

    private int notifications = 0;

    @ManyToOne
    @JoinColumn(name = "id_member_one")
    private UserEntity memberOne;

    @ManyToOne
    @JoinColumn(name = "id_member_two")
    private UserEntity memberTwo;

    @ManyToOne
    @JoinColumn(name = "deleted_by")
    private UserEntity deletedBy;

    @ManyToOne
    @JoinColumn(name = "id_car")
    private CarEntity car;

    @OneToMany(mappedBy = "chat", fetch = jakarta.persistence.FetchType.LAZY, cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<MessageEntity> messages;

    public ChatEntity() {
        messages = new ArrayList<>();
    }

    public ChatEntity(Long id, UserEntity memberOne, UserEntity memberTwo, CarEntity car) {
        this.id = id;
        this.creationDate = LocalDateTime.now();
        this.memberOne = memberOne;
        this.memberTwo = memberTwo;
        this.car = car;
    }

    public ChatEntity(UserEntity memberOne, UserEntity memberTwo, CarEntity car, List<MessageEntity> messages) {
        this.creationDate = LocalDateTime.now();
        this.memberOne = memberOne;
        this.memberTwo = memberTwo;
        this.car = car;
        this.messages = messages;
    }

    public ChatEntity(UserEntity memberOne, UserEntity memberTwo, CarEntity car) {
        this.creationDate = LocalDateTime.now();
        this.memberOne = memberOne;
        this.memberTwo = memberTwo;
        this.car = car;
    }

    public ChatEntity(UserEntity memberOne, UserEntity memberTwo) {
        this.creationDate = LocalDateTime.now();
        this.memberOne = memberOne;
        this.memberTwo = memberTwo;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public LocalDateTime getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(LocalDateTime creationDate) {
        this.creationDate = creationDate;
    }

    public int getNotifications() {
        return notifications;
    }

    public void setNotifications(int notifications) {
        this.notifications = notifications;
    }

    public UserEntity getMemberOne() {
        return memberOne;
    }

    public void setmMmberOne(UserEntity memberOne) {
        this.memberOne = memberOne;
    }

    public UserEntity getMemberTwo() {
        return memberTwo;
    }

    public void setMemberTwo(UserEntity memberTwo) {
        this.memberTwo = memberTwo;
    }

    public UserEntity getDeletedBy() {
        return deletedBy;
    }

    public void setDeletedBy(UserEntity deletedBy) {
        this.deletedBy = deletedBy;
    }

    public CarEntity getCar() {
        return car;
    }

    public void setCar(CarEntity car) {
        this.car= car;
    }

    public List<MessageEntity> getMessages() {
        return messages;
    }

    public void setMessages(List<MessageEntity> messages) {
        this.messages = messages;
    }

    // Método para obtener la fecha del último mensaje
    public LocalDateTime getLastMessageDate() {
        return messages.stream()
                .map(MessageEntity::getSentTime)
                .max(LocalDateTime::compareTo)
                .orElse(null);
    }
}

