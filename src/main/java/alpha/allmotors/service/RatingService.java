package alpha.allmotors.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import alpha.allmotors.entity.RatingEntity;
import alpha.allmotors.repository.RatingRepository;

@Service
public class RatingService {

    @Autowired
    private RatingRepository ratingRepository;
    
    public void addRating(RatingEntity rating) {
        ratingRepository.save(rating);
    }
    
    public float getUserAverageRating(Long userId) {
        List<RatingEntity> ratings = ratingRepository.findByRatedUser(userId);
        if (ratings.size() == 0) return 0;
        
        float sum = 0;
        for (RatingEntity r : ratings) {
            sum += r.getScore();
        }
        return sum / ratings.size();
    }

    public Long getRatingCountForUser(Long ratedUser) {
        return ratingRepository.countByRatedUser(ratedUser);
    }
}