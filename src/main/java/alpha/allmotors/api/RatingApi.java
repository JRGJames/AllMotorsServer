package alpha.allmotors.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import alpha.allmotors.entity.RatingEntity;
import alpha.allmotors.service.RatingService;

@RestController
@RequestMapping("/rating")
public class RatingApi {

    @Autowired
    private RatingService ratingService;
    
    @PostMapping("/add")
    public ResponseEntity<?> addRating(@RequestBody RatingEntity rating) {
        ratingService.addRating(rating);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }
    
    @GetMapping("/average/{userId}")
    public ResponseEntity<Float> getUserAverageRating(@PathVariable Long userId) {
        float average = ratingService.getUserAverageRating(userId);
        return new ResponseEntity<>(average, HttpStatus.OK);
    }

    @GetMapping("/user/{userId}/count")
    public Long getRatingCount(@PathVariable Long userId) {
        return ratingService.getRatingCountForUser(userId);
    }
}