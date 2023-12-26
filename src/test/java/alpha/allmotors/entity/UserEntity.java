package alpha.allmotors.entity;
import java.time.LocalDateTime;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "user")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @NotBlank
    @Size(min=3, max=50)
    private String name;

    @NotNull
    @NotBlank
    @Size(min=3, max=50)
    private String lastname;

    @NotNull
    @NotBlank
    @Size(min=3, max=15)
    private String username;

    private String gender;

    private LocalDateTime birthdate;

    private String country;

    private String province;

    private String address;

    private String postal_code;

    private String description;

    private String profile_picture;

    private int rating;

    private String status;

    private String phone;

    private String email;

    private String password;

    private boolean role = false;




}
