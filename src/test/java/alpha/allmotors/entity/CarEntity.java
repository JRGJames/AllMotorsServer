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
    private LocalDateTime date_uploaded;

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

    public CarEntity(Long id, String brand, String model, String color, int year, int seats,
                     int horsepower, String transmission, int distance, String engine, int price,
                     String plate, String type, String description, LocalDateTime date_uploaded,
                     String images, String status, int views, int saves, String location, UserEntity user) {
        this.id = id;
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.horsepower = horsepower;
        this.transmission = transmission;
        this.distance = distance;
        this.engine = engine;
        this.price = price;
        this.plate = plate;
        this.type = type;
        this.description = description;
        this.date_uploaded = LocalDateTime.now();
        this.images = images;
        this.status = status;
        this.views = views;
        this.saves = saves;
        this.location = location;
        this.user = user;
    }

    public CarEntity(String brand, String model, String color, int year, int seats,
                     int horsepower, String transmission, int distance, String engine, int price,
                     String plate, String type, String description, String images, String status,
                     int views, int saves, String location, UserEntity user) {
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.horsepower = horsepower;
        this.transmission = transmission;
        this.distance = distance;
        this.engine = engine;
        this.price = price;
        this.plate = plate;
        this.type = type;
        this.description = description;
        this.date_uploaded = LocalDateTime.now();
        this.images = images;
        this.status = status;
        this.views = views;
        this.saves = saves;
        this.location = location;
        this.user = user;
    }

    public CarEntity(String brand, String model, String color, int year, int seats,
                     int horsepower, String transmission, int distance, String engine, int price,
                     String plate, String type, String description, String images, String status,
                     int views, int saves, String location) {
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.horsepower = horsepower;
        this.transmission = transmission;
        this.distance = distance;
        this.engine = engine;
        this.price = price;
        this.plate = plate;
        this.type = type;
        this.description = description;
        this.date_uploaded = LocalDateTime.now();
        this.images = images;
        this.status = status;
        this.views = views;
        this.saves = saves;
        this.location = location;
    }

    public CarEntity() {
    }

    public Long getId() {
        return id;
    }

    public Long setId(Long id) {
        return this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public String setBrand(String brand) {
        return this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public String setModel(String model) {
        return this.model = model;
    }

    public String getColor() {
        return color;
    }

    public String setColor(String color) {
        return this.color = color;
    }

    public int getYear() {
        return year;
    }

    public int setYear(int year) {
        return this.year = year;
    }

    public int getSeats() {
        return seats;
    }

    public int setSeats(int seats) {
        return this.seats = seats;
    }

    public int getHorsepower() {
        return horsepower;
    }

    public int setHorsepower(int horsepower) {
        return this.horsepower = horsepower;
    }

    public String getTransmission() {
        return transmission;
    }

    public String setTransmission(String transmission) {
        return this.transmission = transmission;
    }

    public int getDistance() {
        return distance;
    }

    public int setDistance(int distance) {
        return this.distance = distance;
    }

    public String getEngine() {
        return engine;
    }

    public String setEngine(String engine) {
        return this.engine = engine;
    }

    public int getPrice() {
        return price;
    }

    public int setPrice(int price) {
        return this.price = price;
    }

    public String getPlate() {
        return plate;
    }

    public String setPlate(String plate) {
        return this.plate = plate;
    }

    public String getType() {
        return type;
    }

    public String setType(String type) {
        return this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public String setDescription(String description) {
        return this.description = description;
    }

    public LocalDateTime getDateUploaded() {
        return date_uploaded;
    }

    public LocalDateTime setDateUploaded(LocalDateTime date_uploaded) {
        return this.date_uploaded = date_uploaded;
    }

    public String getImages() {
        return images;
    }

    public String setImages(String images) {
        return this.images = images;
    }

    public String getStatus() {
        return status;
    }

    public String setStatus(String status) {
        return this.status = status;
    }

    public int getViews() {
        return views;
    }

    public int setViews(int views) {
        return this.views = views;
    }

    public int getSaves() {
        return saves;
    }

    public int setSaves(int saves) {
        return this.saves = saves;
    }

    public String getLocation() {
        return location;
    }

    public String setLocation(String location) {
        return this.location = location;
    }

    public UserEntity getOwner() {
        return user;
    }

    public UserEntity setOwner(UserEntity user) {
        return this.user = user;
    }

}
