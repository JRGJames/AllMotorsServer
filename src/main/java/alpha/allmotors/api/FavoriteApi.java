package alpha.allmotors.api;

import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.FavoriteEntity;
import alpha.allmotors.service.FavoriteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*", allowedHeaders = "*", maxAge = 3600)
@RestController
@RequestMapping("/favorites")
public class FavoriteApi {

    @Autowired
    private FavoriteService favoriteService;

    @PostMapping("/add")
    public ResponseEntity<FavoriteEntity> addFavorite(@RequestParam Long userId, @RequestParam Long carId) {
        return ResponseEntity.ok(favoriteService.addFavorite(userId, carId));
    }

    @DeleteMapping("/remove")
    public ResponseEntity<Void> removeFavorite(@RequestParam Long userId, @RequestParam Long carId) {
        favoriteService.removeFavorite(userId, carId);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/status")
    public ResponseEntity<Boolean> isFavorite(@RequestParam Long userId, @RequestParam Long carId) {
        return ResponseEntity.ok(favoriteService.existsByUserIdAndCarId(userId, carId));
    }

    @GetMapping("/get/{userId}")
    public ResponseEntity<List<CarEntity>> getByUserId(@PathVariable Long userId) {
        try {
            List<CarEntity> favorites = favoriteService.getByUserId(userId);
            return ResponseEntity.ok(favorites);
        } catch (Exception e) {
            return ResponseEntity.badRequest().build();
        }
    }

    @GetMapping("/count/{carId}")
    public ResponseEntity<Long> countFavoritesByCarId(@PathVariable Long carId) {
        return ResponseEntity.ok(favoriteService.countByCarId(carId));
    }

    @PostMapping("/increase/{carId}")
    public ResponseEntity<Long> increaseSaves(@PathVariable("carId") Long carId) {
        return ResponseEntity.ok(favoriteService.increaseSaves(carId));
    }

    @PostMapping("/decrease/{carId}")
    public ResponseEntity<Long> decreaseSaves(@PathVariable("carId") Long carId) {
        return ResponseEntity.ok(favoriteService.decreaseSaves(carId));
    }
}
