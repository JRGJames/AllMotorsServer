package alpha.allmotors.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import alpha.allmotors.entity.FavoriteEntity;

import java.util.List;
import java.util.Optional;

@Repository
public interface FavoriteRepository extends JpaRepository<FavoriteEntity, Long> {
    // Encuentra los favoritos por ID de usuario
    List<FavoriteEntity> findByUserId(Long userId);

    Optional<FavoriteEntity> findByUserIdAndCarId(Long userId, Long carId);

    Long countByCarId(Long carId);

    // Método adicional para verificar si un coche ya es favorito de un usuario
    boolean existsByUserIdAndCarId(Long userId, Long carId);
}