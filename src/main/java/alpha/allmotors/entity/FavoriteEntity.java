package alpha.allmotors.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "favorites")
public class FavoriteEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Usa IDENTITY si tu base de datos soporta auto incremento
    private Long id;

    @ManyToOne
    @JoinColumn(name = "id_user")
    private UserEntity user;

    @ManyToOne
    @JoinColumn(name = "id_car")
    private CarEntity car;

    public FavoriteEntity() {
    }

    public FavoriteEntity(Long id, UserEntity user, CarEntity car) {
        this.id = id;
        this.user = user;
        this.car = car;
    }

    public FavoriteEntity(UserEntity user, CarEntity car) {
        this.user = user;
        this.car = car;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setCar(CarEntity car) {
        this.car = car;
    }

    public CarEntity getCar() {
        return car;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
