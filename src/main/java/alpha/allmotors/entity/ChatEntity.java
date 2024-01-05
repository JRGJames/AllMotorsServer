package alpha.allmotors.entity;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.time.LocalDateTime;

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

    private int notifications;

    @ManyToOne
    @JoinColumn(name = "id_user_one")
    private UserEntity user;

    @ManyToOne
    @JoinColumn(name = "id_user_two")
    private UserEntity participant;

    @ManyToOne
    @JoinColumn(name = "deleted_by")
    private UserEntity deletedBy;

    @ManyToOne
    @JoinColumn(name = "id_car")
    private CarEntity car;

    @OneToMany(mappedBy = "chat", fetch = jakarta.persistence.FetchType.LAZY)
    private List<MessageEntity> messages;

    public ChatEntity() {
        messages = new ArrayList<>();
    }

    public ChatEntity(Long id, LocalDateTime creationDate, int notifications ,UserEntity user, UserEntity participant, CarEntity car) {
        this.id = id;
        this.creationDate = LocalDateTime.now();
        this.notifications = notifications;
        this.user = user;
        this.participant = participant;
        this.car = car;
    }

    public ChatEntity(LocalDateTime creationDate, int notifications, UserEntity user, UserEntity participant, CarEntity car) {
        this.creationDate = creationDate;
        this.notifications = notifications;
        this.user = user;
        this.participant = participant;
        this.car = car;
    }

    public ChatEntity(LocalDateTime creationDate, int notifications, UserEntity user, UserEntity participant) {
        this.creationDate = creationDate;
        this.notifications = notifications;
        this.user = user;
        this.participant = participant;
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

    public UserEntity getUser1() {
        return user;
    }

    public void setUser1(UserEntity user) {
        this.user = user;
    }

    public UserEntity getUser2() {
        return participant;
    }

    public void setUser2(UserEntity participant) {
        this.participant = participant;
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

    public int getMessages() {
        return messages.size();
    }
}

