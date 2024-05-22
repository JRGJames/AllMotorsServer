package alpha.allmotors.entity;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "user")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min = 3, max = 50)
    private String name;

    @Size(min = 3, max = 50)
    private String lastname;

    @NotNull
    @NotBlank
    @Size(min = 3, max = 15)
    @Column(unique = true)
    private String username;

    private Boolean gender;

    private LocalDateTime birthdate;

    @NotBlank
    @NotNull
    private String location;

    @Size(min = 3, max = 25)
    private String country;

    @Size(min = 3, max = 30)
    private String city;

    @Size(max = 500)
    private String description;

    @Size(max = 255)
    @Column(name = "profile_picture")
    private String profilePicture;

    @Size(max = 255)
    @Column(name = "profile_background")
    private String profileBackground;

    private Boolean status;

    @Size(min = 9, max = 9)
    private String phone;

    @NotNull
    @NotBlank
    @Email
    @Size(min = 3, max = 100)
    @Column(unique = true)
    private String email;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    @Column(name = "member_since")
    private LocalDateTime memberSince = LocalDateTime.now();

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    @Column(name = "last_connection")
    private LocalDateTime lastConnection = LocalDateTime.now();

    @NotNull
    @NotBlank
    @Size(min = 3, max = 255)
    @Pattern(regexp = "^[\\p{L}0-9\\p{Punct}]+$", message = "Password can include any symbol except white spaces")
    private String password;

    private boolean role = false;

    private boolean actived = true;
    
    private boolean banned = false;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<CarEntity> cars;

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<FavoriteEntity> favorites;

    public UserEntity() {
        cars = new ArrayList<>();
        favorites = new ArrayList<>();
    }

    public UserEntity(Long id, String name, String lastname, String username, Boolean gender,
            LocalDateTime birthdate, String location, String country, String city, Boolean status, String phone, String email, String password, boolean role) {
        this.id = id;
        this.name = name;
        this.lastname = lastname;
        this.username = username;
        this.gender = gender;
        this.birthdate = birthdate;
        this.location = location;
        this.country = country;
        this.city = city;
        this.status = status;
        this.phone = phone;
        this.email = email;
        this.memberSince = LocalDateTime.now();
        this.lastConnection = LocalDateTime.now();
        this.password = password;
        this.role = role;
    }

    public UserEntity(String name, String lastname, String username, Boolean gender,
            LocalDateTime birthdate, String location, String country, String city, Boolean status, String phone, String email, String password, boolean role) {
        this.name = name;
        this.lastname = lastname;
        this.username = username;
        this.gender = gender;
        this.birthdate = birthdate;
        this.location = location;
        this.country = country;
        this.city = city;
        this.status = status;
        this.phone = phone;
        this.email = email;
        this.memberSince = LocalDateTime.now();
        this.lastConnection = LocalDateTime.now();
        this.password = password;
        this.role = role;
    }

    public UserEntity(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return this.lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getUsername() {
        return this.username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Boolean getGender() {
        return this.gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public LocalDateTime getBirthdate() {
        return this.birthdate;
    }

    public void setBirthdate(LocalDateTime birthdate) {
        this.birthdate = birthdate;
    }

    public String getLocation() {
        return this.location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCity() {
        return this.city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProfilePicture() {
        return this.profilePicture;
    }

    public void setProfilePicture(String profilePicture) {
        this.profilePicture = profilePicture;
    }

    public String getProfileBackground() {
        return this.profileBackground;
    }

    public void setProfileBackground(String profileBackground) {
        this.profileBackground = profileBackground;
    }

    public Boolean isStatus() {
        return this.status;
    }

    public void setStatus(Boolean status) {
        this.status = status;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDateTime getMemberSince() {
        return this.memberSince;
    }

    public void setMemberSince(LocalDateTime memberSince) {
        this.memberSince = memberSince;
    }

    public LocalDateTime getLastConnection() {
        return this.lastConnection;
    }

    public void setLastConnection(LocalDateTime lastConnection) {
        this.lastConnection = lastConnection;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isRole() {
        return this.role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    public boolean isActived() {
        return this.actived;
    }

    public void setActived(boolean actived) {
        this.actived = actived;
    }

    public boolean isBanned() {
        return this.banned;
    }

    public void setBanned(boolean banned) {
        this.banned = banned;
    }

    // public int getCars() {
    //     return cars.size();
    // }

    // public int getFavorites() {
    //     return favorites.size();
    // }

    // public List<CarEntity> getCarsList() {
    //     return cars;
    // }

    // public List<FavoriteEntity> getFavoritesList() {
    //     return favorites;
    // }
}
