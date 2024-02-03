package alpha.allmotors.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "rating")
public class RatingEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    @NotNull
    @Column(name = "id_rated_user")
    private Long ratedUser; // ID del usuario que recibe la valoración
    
    @NotNull
    @Column(name = "id_rating_user")
    private Long ratingUser; // ID del usuario que da la valoración
    
    @NotNull
    private float score; // La puntuación otorgada
    
    // Constructor por defecto
    public RatingEntity() {
    }

    // Constructor parametrizado
    public RatingEntity(Long ratedUser, Long ratingUser, float score) {
        this.ratedUser = ratedUser;
        this.ratingUser = ratingUser;
        this.score = score;
    }

    // Getters y Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRatedUser() {
        return ratedUser;
    }

    public void setRatedUser(Long ratedUser) {
        this.ratedUser = ratedUser;
    }

    public Long getRatingUser() {
        return ratingUser;
    }

    public void setRatingUser(Long ratingUser) {
        this.ratingUser = ratingUser;
    }

    public float getScore() {
        return score;
    }

    public void setScore(float score) {
        this.score = score;
    }
}
