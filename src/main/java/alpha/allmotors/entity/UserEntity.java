package alpha.allmotors.entity;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.annotation.JsonFormat;

import alpha.allmotors.repository.ChatRepository;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
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

    @NotNull
    @NotBlank
    @Size(min = 3, max = 50)
    private String name;

    @NotNull
    @NotBlank
    @Size(min = 3, max = 50)
    private String lastname;

    @NotNull
    @NotBlank
    @Size(min = 3, max = 15)
    @Column(unique = true)
    private String username;

    @NotNull
    @NotBlank
    @Size(min = 3, max = 20)
    private String gender;

    private LocalDateTime birthdate;

    @NotNull
    @NotBlank
    @Size(min = 3, max = 25)
    private String country;

    @NotNull
    @NotBlank
    @Size(min = 3, max = 30)
    private String province;

    @NotNull
    @NotBlank
    @Size(min = 3, max = 30)
    private String address;

    @NotNull
    @NotBlank
    @Size(min = 3, max = 15)
    @Column(name = "postal_code")
    private String postalCode;

    @Size(max = 500)
    private String description;

    @Size(max = 255)
    @Column(name = "profile_picture")
    private String profilePicture;

    @NotNull
    private int rating = 0;

    private Boolean status;

    @NotNull
    @Size(min = 9, max = 9)
    private String phone;

    @NotNull
    @NotBlank
    @Email
    @Size(min = 3, max = 100)
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

    @OneToMany(mappedBy = "user", fetch = jakarta.persistence.FetchType.LAZY)
    private List<CarEntity> cars;

    public UserEntity() {
        cars = new ArrayList<>();
    }

    public UserEntity(Long id, String name, String lastname, String username, String gender,
            LocalDateTime birthdate, String country, String province, String address,
            String postalCode, String description, String profilePicture, int rating,
            Boolean status, String phone, String email, LocalDateTime memberSince, LocalDateTime lastConnection,
            String password, boolean role) {
        this.id = id;
        this.name = name;
        this.lastname = lastname;
        this.username = username;
        this.gender = gender;
        this.birthdate = birthdate;
        this.country = country;
        this.province = province;
        this.address = address;
        this.postalCode = postalCode;
        this.description = description;
        this.profilePicture = profilePicture;
        this.rating = rating;
        this.status = status;
        this.phone = phone;
        this.email = email;
        this.memberSince = LocalDateTime.now();
        this.lastConnection = LocalDateTime.now();
        this.password = password;
        this.role = role;
    }

    public UserEntity(String name, String lastname, String username, String gender,
            LocalDateTime birthdate, String country, String province, String address,
            String postalCode, String description, String profilePicture, int rating,
            Boolean status, String phone, String email, LocalDateTime memberSince, LocalDateTime lastConnection,
            String password, boolean role) {
        this.name = name;
        this.lastname = lastname;
        this.username = username;
        this.gender = gender;
        this.birthdate = birthdate;
        this.country = country;
        this.province = province;
        this.address = address;
        this.postalCode = postalCode;
        this.description = description;
        this.profilePicture = profilePicture;
        this.rating = rating;
        this.status = status;
        this.phone = phone;
        this.email = email;
        this.memberSince = LocalDateTime.now();
        this.lastConnection = LocalDateTime.now();
        this.password = password;
        this.role = role;
    }

    public UserEntity(String username, String password) {
        this.username = username;
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

    public String getGender() {
        return this.gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public LocalDateTime getBirthdate() {
        return this.birthdate;
    }

    public void setBirthdate(LocalDateTime birthdate) {
        this.birthdate = birthdate;
    }

    public String getCountry() {
        return this.country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getProvince() {
        return this.province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getAddress() {
        return this.address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostalCode() {
        return this.postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
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

    public int getRating() {
        return this.rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
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

    public int getCars() {
        return cars.size();
    }
}
