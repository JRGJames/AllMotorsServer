package alpha.allmotors.entity;

import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "price")
public class PriceEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "id_car")
    private Long car;

    private double price;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    private LocalDateTime modified;

    public PriceEntity() {
    }

    public PriceEntity(Long id, Long car, double price, LocalDateTime modified) {
        this.id = id;
        this.car = car;
        this.price = price;
        this.modified = modified;
    }

    public PriceEntity(Long car, double price, LocalDateTime modified) {
        this.car = car;
        this.price = price;
        
    }

    public Long getId() {
        return id;
    }

    public Long getCar() {
        return car;
    }

    public double getPrice() {
        return price;
    }

    public LocalDateTime getModified() {
        return modified;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setPrice(double price) {
        this.price = price;
    }


}
