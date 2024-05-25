package alpha.allmotors.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import alpha.allmotors.entity.ImageEntity;

@Repository
public interface ImageRepository extends JpaRepository<ImageEntity, Long>{

    Optional<ImageEntity> findById(Long imageId);

    //list of images by car id
    List<ImageEntity> findByCarId(Long carId);
}
