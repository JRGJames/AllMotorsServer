package alpha.allmotors.entity;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

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
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "car")
@JsonIdentityInfo(
  generator = ObjectIdGenerators.PropertyGenerator.class, 
  property = "id")
public class CarEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @NotBlank
    private String brand;

    @NotNull
    @NotBlank
    private String model;

    @NotNull
    @NotBlank
    @Size(min = 2, max = 30)
    private String title;

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
    @Max(value = 5)
    private int doors;

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

    @Size(max = 20)
    private String type;

    private String description;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    @Column(name = "date_uploaded")
    private LocalDateTime dateUploaded;

    @OneToMany(mappedBy = "car", fetch = jakarta.persistence.FetchType.LAZY, cascade = CascadeType.ALL)
    private List<ImageEntity> images;

    @OneToMany(mappedBy = "car", fetch = jakarta.persistence.FetchType.LAZY, cascade = CascadeType.ALL)
    private List<FavoriteEntity> saves;

    @Size(max = 20)
    private String status;

    private int views;

    @Column(name = "is_saved")
    private boolean isSaved;

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

    @NotNull
    @NotBlank
    private String currency;

    @Size(max = 30)
    @Column(name = "bought_in")
    private String boughtIn;

    private Double acceleration;

    private String engine;

    private String drive;

    @ManyToOne
    @JoinColumn(name = "id_owner")
    private UserEntity user;

    public CarEntity() {
        images = new ArrayList<>();
        saves = new ArrayList<>();
    }

    public CarEntity(Long id) {
        this.id = id;
    }

    public CarEntity(Long id, String brand, String model, String title, String color, int year, int seats, int doors,
            int horsepower, String gearbox, int distance, String fuel, int price, String type, String location, String currency, String boughtIn, UserEntity user, List<ImageEntity> images) {
        this.id = id;
        this.brand = brand;
        this.model = model;
        this.title = title;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.doors = doors;
        this.horsepower = horsepower;
        this.gearbox = gearbox;
        this.distance = distance;
        this.fuel = fuel;
        this.price = price;
        this.type = type;
        this.images = images;
        this.lastUpdate = LocalDateTime.now();
        this.dateUploaded = LocalDateTime.now();
        this.location = location;
        this.currency = currency;
        this.boughtIn = boughtIn;
        this.user = user;
    }

    public CarEntity(String brand, String model, String title, String color, int year, int seats, int doors,
            int horsepower, String gearbox, int distance, String fuel, int price, String type, 
            String location, String currency, String boughtIn, UserEntity user) {
        this.brand = brand;
        this.model = model;
        this.title = title;
        this.color = color;
        this.year = year;
        this.seats = seats;
        this.doors = doors;
        this.horsepower = horsepower;
        this.gearbox = gearbox;
        this.distance = distance;
        this.fuel = fuel;
        this.price = price;
        this.type = type;
        this.lastUpdate = LocalDateTime.now();
        this.dateUploaded = LocalDateTime.now();
        this.location = location;
        this.currency = currency;
        this.boughtIn = boughtIn;
        this.user = user;
    }

    public CarEntity(String brand, String model, String title, String color, int year, int seats, int doors,
            int horsepower, String gearbox, int distance, String fuel, int price,
            String plate, String type, String location, String description, Double emissions,
            Double consumption, String dgtSticker, LocalDateTime lastITV, String currency, String boughtIn,
            Double acceleration, String engine, String drive, UserEntity user) {
        this.brand = brand;
        this.model = model;
        this.title = title;
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
        this.description = description;
        this.location = location;
        this.emissions = emissions;
        this.consumption = consumption;
        this.dgtSticker = dgtSticker;
        this.lastUpdate = LocalDateTime.now();
        this.dateUploaded = LocalDateTime.now();
        this.lastITV = lastITV;
        this.currency = currency;
        this.boughtIn = boughtIn;
        this.acceleration = acceleration;
        this.engine = engine;
        this.drive = drive;
        this.user = user;
    }

    public CarEntity(String brand, String model, String title, String color, int year, int seats, int doors,
            int horsepower, String gearbox, int distance, String fuel, int price,
            String plate, String type, String location, String description, Double emissions,
            Double consumption, String dgtSticker, LocalDateTime lastITV, String currency, String boughtIn,
            Double acceleration, String engine, String drive, UserEntity user, List<ImageEntity> images) {
        this.brand = brand;
        this.model = model;
        this.title = title;
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
        this.description = description;
        this.location = location;
        this.emissions = emissions;
        this.consumption = consumption;
        this.dgtSticker = dgtSticker;
        this.lastUpdate = LocalDateTime.now();
        this.dateUploaded = LocalDateTime.now();
        this.lastITV = lastITV;
        this.currency = currency;
        this.boughtIn = boughtIn;
        this.acceleration = acceleration;
        this.engine = engine;
        this.drive = drive;
        this.user = user;
        this.images = images;
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public void setImages(List<ImageEntity> images) {
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

    public boolean isSaved() {
        return isSaved;
    }

    public void setSaved(boolean isSaved) {
        this.isSaved = isSaved;
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

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getBoughtIn() {
        return boughtIn;
    }

    public void setBoughtIn(String boughtIn) {
        this.boughtIn = boughtIn;
    }

    public Double getAcceleration() {
        return acceleration;
    }

    public void setAcceleration(Double acceleration) {
        this.acceleration = acceleration;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public String getDrive() {
         return drive;
    }

    public void setDrive(String drive) {
        this.drive = drive;
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

    public int getSaves() {
        return saves.size();
    }

    public int getImagesCount() {
        return images.size();
    }
    
    // public List<FavoriteEntity> getSaves() {
    //     return saves;
    // }

    public List<ImageEntity> getImages() {
        return images;
    }

}
