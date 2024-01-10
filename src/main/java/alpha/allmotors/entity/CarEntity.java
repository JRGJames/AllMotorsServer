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
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "car")
public class CarEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @NotBlank
    @Size(min = 2, max = 30)
    private String brand;

    @NotNull
    @NotBlank
    @Size(min = 2, max = 30)
    private String model;

    @NotNull
    @NotBlank
    @Size(min = 2, max = 30)
    private String color;

    @NotNull
    @Min(value = 1900)
    private int year;

    @NotNull
    @Min(value = 1)
    @Max(value = 8)
    private int seats;

    @NotNull
    @Min(value = 2)
    @Max(value = 5)
    private int doors;

    @NotNull
    @Min(value = 1)
    @Max(value = 2000)
    private int horsepower;

    @NotNull
    @NotBlank
    @Size(max = 20)
    private String transmission;

    @NotNull
    @Min(value = 1)
    @Max(value = 20000000)
    private int distance;

    @NotNull
    @NotBlank
    @Size(max = 20)
    private String engine;

    @NotNull
    @Min(value = 1)
    private int price;

    @NotNull
    @NotBlank
    @Size(max = 12)
    private String plate;

    @NotNull
    @NotBlank
    @Size(max = 20)
    private String type;

    @NotNull
    @NotBlank
    @Size(max = 200)
    private String description;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    @Column(name = "date_uploaded")
    private LocalDateTime dateUploaded;

    @NotNull
    @NotBlank
    @Size(max = 255)
    private String images;

    @NotNull
    @NotBlank
    @Size(max = 15)
    private String status;

    @NotNull
    private int views;

    @NotNull
    private int saves;

    @NotNull
    @NotBlank
    @Size(max = 50)
    private String location;

    @ManyToOne
    @JoinColumn(name = "id_owner")
    private UserEntity user;

    public CarEntity() {
    }

    public CarEntity(Long id, String brand, String model, String color, int year, int seats, int doors,
            int horsepower, String transmission, int distance, String engine, int price,
            String images, String status, String plate, String type, String description, LocalDateTime dateUploaded,
            int views, int saves, String location, UserEntity user) {
        this.id = id;
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.doors = doors;
        this.horsepower = horsepower;
        this.transmission = transmission;
        this.distance = distance;
        this.engine = engine;
        this.price = price;
        this.plate = plate;
        this.type = type;
        this.description = description;
        this.images = images;
        this.status = status;
        this.dateUploaded = LocalDateTime.now();
        this.views = views;
        this.saves = saves;
        this.location = location;
        this.user = user;
    }

    public CarEntity(String brand, String model, String color, int year, int seats, int doors,
            int horsepower, String transmission, int distance, String engine, int price,
            String plate, String type, String description, String images, String status, LocalDateTime dateUploaded,
            int views, int saves, String location, UserEntity user) {
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.doors = doors;
        this.horsepower = horsepower;
        this.transmission = transmission;
        this.distance = distance;
        this.engine = engine;
        this.price = price;
        this.plate = plate;
        this.type = type;
        this.description = description;
        this.images = images;
        this.status = status;
        this.dateUploaded = LocalDateTime.now();
        this.views = views;
        this.saves = saves;
        this.location = location;
        this.user = user;
    }

    public CarEntity(String brand, String model, String color, int year, int seats, int doors,
            int horsepower, String transmission, int distance, String engine, int price,
            String plate, String type, String description, String images, String status, LocalDateTime dateUploaded,
            int views, int saves, String location) {
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.doors = doors;
        this.horsepower = horsepower;
        this.transmission = transmission;
        this.distance = distance;
        this.engine = engine;
        this.price = price;
        this.plate = plate;
        this.type = type;
        this.description = description;
        this.images = images;
        this.status = status;
        this.dateUploaded = LocalDateTime.now();
        this.views = views;
        this.saves = saves;
        this.location = location;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getSeats() {
        return seats;
    }

    public void setSeats(int seats) {
        this.seats = seats;
    }

    public int getDoors() {
        return doors;
    }

    public void setDoors(int doors) {
        this.doors = doors;
    }

    public int getHorsepower() {
        return horsepower;
    }

    public void setHorsepower(int horsepower) {
        this.horsepower = horsepower;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public int getDistance() {
        return distance;
    }

    public void setDistance(int distance) {
        this.distance = distance;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getPlate() {
        return plate;
    }

    public void setPlate(String plate) {
        this.plate = plate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDateTime getDateUploaded() {
        return dateUploaded;
    }

    public void setDateUploaded(LocalDateTime dateUploaded) {
        this.dateUploaded = dateUploaded;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }

    public int getSaves() {
        return saves;
    }

    public void setSaves(int saves) {
        this.saves = saves;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public UserEntity getOwner() {
        return user;
    }

    public void setOwner(UserEntity user) {
        this.user = user;
    }

}