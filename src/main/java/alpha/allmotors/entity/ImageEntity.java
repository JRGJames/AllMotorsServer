package alpha.allmotors.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Size;

@Entity
@Table(name = "images") // Especifica el nombre de la tabla si es diferente del nombre de la entidad
public class ImageEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Usa IDENTITY si tu base de datos soporta auto incremento
    private Long id;
    
    @Size(max = 255)
    @Column(name = "image_url", nullable = false) // Especifica el nombre de la columna si es diferente del nombre del atributo
    private String imageUrl;

    @ManyToOne
    @JoinColumn(name = "id_car", nullable = false) // Asegúrate de que la imagen siempre esté asociada a un coche
    private CarEntity car;
    
    public ImageEntity() {
    }

    public ImageEntity(Long id, String imageUrl, CarEntity car) {
        this.id = id;
        this.imageUrl = imageUrl;
        this.car = car;
    }

    public ImageEntity(String imageUrl, CarEntity car) {
        this.imageUrl = imageUrl;
        this.car = car;
    }

    public void setCar(CarEntity car) {
        this.car = car;
    }

    public CarEntity getCar() {
        return car;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public String getImageUrl() {
        return imageUrl;
    }
}
