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
    private String gearbox;

    @NotNull
    @Min(value = 1)
    @Max(value = 20000000)
    private int distance;

    @NotNull
    @NotBlank
    @Size(max = 20)
    private String fuel;

    @NotNull
    @Min(value = 1)
    private int price;

    @Size(max = 12)
    private String plate;

    @NotNull
    @NotBlank
    @Size(max = 20)
    private String type;

    @Size(max = 200)
    private String description;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    @Column(name = "date_uploaded")
    private LocalDateTime dateUploaded;

    @Size(max = 255)
    private String images;

    @Size(max = 20)
    private String status;

    private int views;

    private int saves;

    @NotNull
    @NotBlank
    @Size(max = 50)
    private String location;

    private Double emissions;

    private Double consumption;

    @JoinColumn(name = "dgt_sticker")
    private String dgtSticker;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    @Column(name = "last_update")
    private LocalDateTime lastUpdate;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    @Column(name = "last_itv")
    private LocalDateTime lastITV;

    @ManyToOne
    @JoinColumn(name = "id_owner")
    private UserEntity user;

    public CarEntity() {
    }

    public CarEntity(Long id) {
        this.id = id;} 

    public CarEntity(Long id, String brand, String model, String color, int year, int seats, int doors,
            int horsepower, String gearbox, int distance, String fuel, int price,
            String images, String plate, String type, String location, UserEntity user) {
        this.id = id;
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.doors = doors;
        this.horsepower = horsepower;
        this.gearbox = gearbox;
        this.distance = distance;
        this.fuel = fuel;
        this.price = price;
        this.plate = plate;
        this.type = type;
        this.dateUploaded = LocalDateTime.now();
        this.location = location;
        this.user = user;
    }

    public CarEntity(String brand, String model, String color, int year, int seats, int doors,
            int horsepower, String gearbox, int distance, String fuel, int price,
            String plate, String type, String images, String location, UserEntity user) {
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.doors = doors;
        this.horsepower = horsepower;
        this.gearbox = gearbox;
        this.distance = distance;
        this.fuel = fuel;
        this.price = price;
        this.plate = plate;
        this.type = type;
        this.images = images;
        this.dateUploaded = LocalDateTime.now();
        this.location = location;
        this.user = user;
    }

    public CarEntity(String brand, String model, String color, int year, int seats, int doors,
            int horsepower, String gearbox, int distance, String fuel, int price,
            String plate, String type, String images, String location) {
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.doors = doors;
        this.horsepower = horsepower;
        this.gearbox = gearbox;
        this.distance = distance;
        this.fuel = fuel;
        this.price = price;
        this.plate = plate;
        this.type = type;
        this.images = images;
        this.dateUploaded = LocalDateTime.now();
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

    public String getGearbox() {
        return gearbox;
    }

    public void setGearbox(String gearbox) {
        this.gearbox = gearbox;
    }

    public int getDistance() {
        return distance;
    }

    public void setDistance(int distance) {
        this.distance = distance;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
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

    public Double getEmissions() {
        return emissions;
    }

    public void setEmissions(Double emissions) {
        this.emissions = emissions;
    }

    public Double getConsumption() {
        return consumption;
    }

    public void setConsumption(Double consumption) {
        this.consumption = consumption;
    }

    public String getDgtSticker() {
        return dgtSticker;
    }

    public void setDgtSticker(String dgtSticker) {
        this.dgtSticker = dgtSticker;
    }

    public LocalDateTime getLastUpdate() {
        return lastUpdate;
    }

    public void setLastUpdate(LocalDateTime lastUpdate) {
        this.lastUpdate = LocalDateTime.now();
    }

    public LocalDateTime getLastITV() {
        return lastITV;
    }

    public void setLastITV(LocalDateTime lastITV) {
        this.lastITV = lastITV;
    }

    public UserEntity getOwner() {
        return user;
    }

    public void setOwner(UserEntity user) {
        this.user = user;
    }

}
