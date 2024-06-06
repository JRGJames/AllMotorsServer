package alpha.allmotors.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.FavoriteEntity;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.repository.CarRepository;
import alpha.allmotors.repository.FavoriteRepository;
import alpha.allmotors.repository.UserRepository;
import jakarta.transaction.Transactional;

@Service
public class FavoriteService {

    @Autowired
    private FavoriteRepository favoriteRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private CarRepository carRepository;

    @Transactional
    public FavoriteEntity addFavorite(Long userId, Long carId) {

        UserEntity user = userRepository.findById(userId)
                .orElseThrow(() -> new RuntimeException("Usuario no encontrado"));
        CarEntity car = carRepository.findById(carId)
                .orElseThrow(() -> new RuntimeException("Coche no encontrado"));

        FavoriteEntity favorite = new FavoriteEntity();
        favorite.setUser(user);
        favorite.setCar(car);
        return favoriteRepository.save(favorite);
    }

    @Transactional
    public void removeFavorite(Long userId, Long carId) {
        FavoriteEntity favorite = favoriteRepository.findByUserIdAndCarId(userId, carId)
                .orElseThrow(() -> new RuntimeException("El coche no está en favoritos"));

        favoriteRepository.delete(favorite);
    }

    @Transactional
    public boolean toggleFavorite(Long userId, Long carId) {
        if (favoriteRepository.existsByUserIdAndCarId(userId, carId)) {
            return false; // Indicando que el coche fue eliminado de favoritos
        } else {
            return true; // Indicando que el coche fue añadido a favoritos
        }
    }

    public boolean existsByUserIdAndCarId(Long userId, Long carId) {
        return favoriteRepository.existsByUserIdAndCarId(userId, carId);
    }

    // public List<CarEntity> getByUserId(Long userId) {
    //     List<FavoriteEntity> favorites = favoriteRepository.findByUserId(userId);
    //     return favorites.stream()
    //             .map(FavoriteEntity::getCar)
    //             .collect(Collectors.toList());
    // }

    // public List<FavoriteEntity> getByUserIdAndCarTitleContainingIgnoreCase(Long userId, String title) {
    //     return favoriteRepository.findByUserIdAndCarTitleContainingIgnoreCase(userId, title);
    // }

    public List<CarEntity> getByUser(Long userId, String title) {
        if (title == null || title.isEmpty()) {
            List<FavoriteEntity> favorites = favoriteRepository.findByUserId(userId);
            return favorites.stream()
                    .map(FavoriteEntity::getCar)
                    .collect(Collectors.toList());
        } else {
            List<FavoriteEntity> favoritesWithTitle = favoriteRepository
                    .findByUserIdAndCarTitleContainingIgnoreCase(userId, title);
            return favoritesWithTitle.stream()
                    .map(FavoriteEntity::getCar)
                    .collect(Collectors.toList());
        }

    }

    public Long countByCarId(Long carId) {
        return favoriteRepository.countByCarId(carId);
    }

    @Transactional
    public Long increaseSaves(Long carId) {
        carRepository.findById(carId)
                .orElseThrow(() -> new RuntimeException("Coche no encontrado"));
        favoriteRepository.increaseSavesById(carId);
        return favoriteRepository.countByCarId(carId);
    }

    @Transactional
    public Long decreaseSaves(Long carId) {
        carRepository.findById(carId)
                .orElseThrow(() -> new RuntimeException("Coche no encontrado"));
        favoriteRepository.decreaseSavesById(carId);
        return favoriteRepository.countByCarId(carId);
    }

}
