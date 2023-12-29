package alpha.allmotors.entity;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

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
    private String username;

    @NotNull
    @NotBlank
    @Size(min = 3, max = 10)
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
    private String postal_code;

    @Size(max = 500)
    private String description;

    @Size(max = 255)
    private String profile_picture;

    @NotNull
    private int rating = 0;

    @NotNull
    @NotBlank
    @Size(min = 3, max = 15)
    private String status;

    @NotNull
    @NotBlank
    @Size(min = 9, max = 9)
    private String phone;

    @NotNull
    @NotBlank
    @Email
    @Size(min = 3, max = 100)
    private String email;

    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
    private LocalDateTime member_since = LocalDateTime.now();

    @NotNull
    @NotBlank
    @Size(min = 3, max = 255)
    @Pattern(regexp = "^[\\p{L}0-9\\p{Punct}]+$", message = "Password can include any symbol except white spaces")
    private String password;

    private boolean role = false;

    @OneToMany(mappedBy = "user", fetch = jakarta.persistence.FetchType.LAZY)
    private List<CarEntity> cars;

    @OneToMany(mappedBy = "user", fetch = jakarta.persistence.FetchType.LAZY)
    private List<ChatEntity> chats;

    public UserEntity() {
        cars = new ArrayList<>();
        chats = new ArrayList<>();
    }

    public UserEntity(Long id, String name, String lastname, String username, String gender,
            LocalDateTime birthdate, String country, String province, String address,
            String postal_code, String description, String profile_picture, int rating,
            String status, String phone, String email, LocalDateTime member_since, String password, boolean role) {
        this.id = id;
        this.name = name;
        this.lastname = lastname;
        this.username = username;
        this.gender = gender;
        this.birthdate = birthdate;
        this.country = country;
        this.province = province;
        this.address = address;
        this.postal_code = postal_code;
        this.description = description;
        this.profile_picture = profile_picture;
        this.rating = rating;
        this.status = status;
        this.phone = phone;
        this.email = email;
        this.member_since = LocalDateTime.now();
        this.password = password;
        this.role = role;
    }

    public UserEntity(String name, String lastname, String username, String gender,
            LocalDateTime birthdate, String country, String province, String address,
            String postal_code, String description, String profile_picture, int rating,
            String status, String phone, String email, LocalDateTime member_since, String password, boolean role) {
        this.name = name;
        this.lastname = lastname;
        this.username = username;
        this.gender = gender;
        this.birthdate = birthdate;
        this.country = country;
        this.province = province;
        this.address = address;
        this.postal_code = postal_code;
        this.description = description;
        this.profile_picture = profile_picture;
        this.rating = rating;
        this.status = status;
        this.phone = phone;
        this.email = email;
        this.member_since = member_since;
        this.password = password;
        this.role = role;
    }

    public UserEntity(String email, String password) {
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
        return this.postal_code;
    }

    public void setPostalCode(String postal_code) {
        this.postal_code = postal_code;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProfilePicture() {
        return this.profile_picture;
    }

    public void setProfilePicture(String profile_picture) {
        this.profile_picture = profile_picture;
    }

    public int getRating() {
        return this.rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
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
         return this.member_since;
    }

    public void setMemberSince(LocalDateTime member_since) {
        this.member_since = member_since;
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

    public int getChats() {
        return chats.size();
    }
}
