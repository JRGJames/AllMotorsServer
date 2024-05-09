package alpha.allmotors.helper;

import java.time.Duration;
import java.time.Instant;
import java.util.Date;
import java.util.Optional;
import java.util.UUID;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

import javax.crypto.SecretKey;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.exception.ResourceNotFoundException;
import alpha.allmotors.repository.UserRepository;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jws;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.security.Keys;

@Service
public class JWTHelper {

    public static final String SECRET = "allmotors_2024_1234567890@@$$";
    private static final String ISSUER = "ALLMOTORS TFG JRG";

    private static ScheduledExecutorService scheduler = Executors.newScheduledThreadPool(1);

    UserEntity userEntity;

    @Autowired
    static UserRepository userRepo;

    private static SecretKey secretKey() {
        return Keys.hmacShaKeyFor((SECRET + ISSUER + SECRET).getBytes());
    }

    public static void changeStatus(UserRepository userRepository,String username, String email) {
        
        Optional<UserEntity> userUsername = userRepository.findByUsername(username);
        Optional<UserEntity> userEmail = userRepository.findByEmail(email);
        
        if (userUsername.isPresent()) {
            UserEntity userEntity = userUsername.get();
            userEntity.setStatus(false);
            userRepository.save(userEntity);
        } else if (userEmail.isPresent()) {
            UserEntity userEntity = userEmail.get();
            userEntity.setStatus(false);
            userRepository.save(userEntity);
        } else {
            throw new ResourceNotFoundException("User not found");
        }
    }

    public String generateJWT(UserRepository userRepository, String username, String email) {

        Date currentTime = Date.from(Instant.now());
        Date expiryTime = Date.from(Instant.now().plus(Duration.ofSeconds(1500)));

        Instant currentInstant = currentTime.toInstant();
        Instant expiryInstant = expiryTime.toInstant();
        
        scheduler.schedule(() -> {
            changeStatus(userRepository, username, email);
        }, Duration.between(currentInstant, expiryInstant).toMillis(), TimeUnit.MILLISECONDS);

        return Jwts.builder()
                .setId(UUID.randomUUID().toString())
                .setIssuer(ISSUER)
                .setIssuedAt(currentTime)
                .setExpiration(expiryTime)
                .claim("name", username)
                .signWith(secretKey())
                .compact();
    }

    public static String validateJWT(String strJWT) {

        try {
            Jws<Claims> headerClaimsJwt = Jwts.parserBuilder()
                    .setSigningKey(secretKey())
                    .build()
                    .parseClaimsJws(strJWT);

            Claims claims = headerClaimsJwt.getBody();

            if (claims.getExpiration().before(new Date())) {         
                return null;
                // throw new JWTException("Error validating JWT: token expired");
            }

            if (!claims.getIssuer().equals(ISSUER)) {
                return null;
                // throw new JWTException("Error validating JWT: wrong issuer");
            }

            return claims.get("name", String.class);
        } catch (Exception e) {
            return null;
        }
    }

}
