package alpha.allmotors.service;

import java.time.LocalDateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.exception.ResourceNotFoundException;
import alpha.allmotors.helper.DataGenerationHelper;
import alpha.allmotors.repository.UserRepository;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.transaction.Transactional;

@Service
public class UserService {

    private final String ALLMOTORS = "c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894";

    @Autowired
    UserRepository userRepository;

    @Autowired
    HttpServletRequest httpServletRequest;

    @Autowired
    SessionService sessionService;

    public UserEntity get(Long id) {
        return userRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("User not found"));
    }

    public UserEntity getByUsername(String username) {
        return userRepository.findByUsername(username)
                .orElseThrow(() -> new ResourceNotFoundException("User not found by username"));
    }

    public Long create(UserEntity userEntity) {
        sessionService.onlyAdmins();
        userEntity.setId(null);
        userEntity.setPassword(ALLMOTORS);
        return userRepository.save(userEntity).getId();
    }

    public UserEntity update(UserEntity userEntityToSet) {
        UserEntity userEntityFromDatabase = this.get(userEntityToSet.getId());
        sessionService.onlyAdminsOrUsersWithIisOwnData(userEntityFromDatabase.getId());
        if (sessionService.isUser()) {            
            userEntityToSet.setRole(userEntityFromDatabase.isRole());
            userEntityToSet.setPassword(ALLMOTORS);
            return userRepository.save(userEntityToSet);
        } else {            
            userEntityToSet.setPassword(ALLMOTORS);
            return userRepository.save(userEntityToSet);
        }
    }

    public Long delete(Long id) {
        sessionService.onlyAdmins();
        userRepository.deleteById(id);
        return id;
    }

    public UserEntity getOneRandom() {
        sessionService.onlyAdmins();
        Pageable pageable = PageRequest.of((int) (Math.random() * userRepository.count()), 1);
        return userRepository.findAll(pageable).getContent().get(0);
    }

    public Long populate(Integer amount) {
        sessionService.onlyAdmins();
        for (int i = 0; i < amount; i++) {
            String name = DataGenerationHelper.getRandomName();
            String lastname = DataGenerationHelper.getRandomSurname();
            String username = DataGenerationHelper.doNormalizeString(name.substring(0, 3) + lastname.substring(1, 3) + i).toLowerCase();
            String gender = DataGenerationHelper.getRandomGender();
            LocalDateTime birthdate = DataGenerationHelper.getRandomDate();
            String country = DataGenerationHelper.getRandomCountry();
            String province = DataGenerationHelper.getRandomProvince();
            String address = DataGenerationHelper.getRandomAddress();
            String postal_code = DataGenerationHelper.getRandomPostalCode();
            String description = DataGenerationHelper.generateComplexSentence();
            String profile_picture = "default_image.png";
            int rating = 0;
            Boolean status = DataGenerationHelper.getRandomStatus();
            String phone = DataGenerationHelper.getRandomPhoneNumber();
            String email = (name.substring(0, 3) + lastname.substring(0, 3) + i).toLowerCase() + "@gmail.net";
            String password = ALLMOTORS;
            Boolean role = false;
            LocalDateTime member_since = DataGenerationHelper.getRandomDate();
            LocalDateTime last_connection = DataGenerationHelper.getRandomDate();
            userRepository.save(new UserEntity(name, lastname, username, gender, birthdate, country, province, address,
                    postal_code, description, profile_picture, rating, status, phone, email, member_since, last_connection, password, role));
        }
        return userRepository.count();
    }

    @Transactional
    public Long empty() {
        sessionService.onlyAdmins();
        userRepository.deleteAll();
        userRepository.resetAutoIncrement();
        UserEntity userEntityOne = new UserEntity("Fernando", "Alonso", "ElNano", "Man",
                DataGenerationHelper.getRandomDate(), "Spain", "Asturias", "Calle Nano 33", "53033", "Test description", "default_image.png", 0, true, "633974333", "nano@gmail.com", DataGenerationHelper.getRandomDate(), DataGenerationHelper.getRandomDate(), ALLMOTORS, true);
        userRepository.save(userEntityOne);
        UserEntity userEntityTwo = new UserEntity("Carlos", "Sainz", "carlossainz", "Man",
                DataGenerationHelper.getRandomDate(), "Spain", "Madrid", "Calle Sainz 55", "53055", "Test description", "default_image.png", 0, true, "655974455", "sainz@gmail.com", DataGenerationHelper.getRandomDate(), DataGenerationHelper.getRandomDate(), ALLMOTORS, false);
        userRepository.save(userEntityTwo);
        return userRepository.count();
    }

}
