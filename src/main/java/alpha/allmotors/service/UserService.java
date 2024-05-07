package alpha.allmotors.service;

import java.time.LocalDateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
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

    private final String ALLMOTORS = "afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18";

    @Autowired
    UserRepository userRepository;

    @Autowired
    HttpServletRequest httpServletRequest;

    @Autowired
    SessionService sessionService;

    public boolean isUsernameAvailable(String username) {
        return !userRepository.findByUsername(username).isPresent();
    }

    public boolean isEmailAvailable(String email) {
        return !userRepository.findByEmail(email).isPresent();
    }

    public UserEntity get(Long id) {
        return userRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("User not found"));
    }

    public Page<UserEntity> getPage(Pageable pageable, String filter) {
        sessionService.onlyAdmins();

        Page<UserEntity> page;

        page = userRepository.findAll(pageable);

        return page;
    }

    public UserEntity getByUsername(String username) {
        return userRepository.findByUsername(username)
                .orElseThrow(() -> new ResourceNotFoundException("User not found by username"));
    }

    public Long create(UserEntity userEntity) {
        sessionService.onlyAdmins();
        userEntity.setId(null);
        userEntity.setPassword(userEntity.getPassword());
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
            String username = DataGenerationHelper
                    .doNormalizeString(name.substring(0, 3) + lastname.substring(1, 3) + i).toLowerCase();
            Boolean gender = DataGenerationHelper.getRandomGender();
            LocalDateTime birthdate = DataGenerationHelper.getRandomDate();
            String country = DataGenerationHelper.getRandomCountry();
            String city = DataGenerationHelper.getRandomCity();
            String phone = DataGenerationHelper.getRandomPhoneNumber();
            String email = (name.substring(0, 3) + lastname.substring(0, 3) + i).toLowerCase() + "@gmail.net";
            String password = ALLMOTORS;
            Boolean role = false;
            userRepository.save(new UserEntity(name, lastname, username, gender, birthdate, country, city, false, phone,
                    email, password, role));
        }
        return userRepository.count();
    }

    @Transactional
    public Long empty() {
        sessionService.onlyAdmins();
        userRepository.deleteAll();
        userRepository.resetAutoIncrement();
        UserEntity userEntityOne = new UserEntity("Fernando", "Alonso", "ElNano", true,
                DataGenerationHelper.getRandomDate(), "Spain", "Asturias", false, "633974333",
                "nano@gmail.com", ALLMOTORS, true);
        userRepository.save(userEntityOne);
        UserEntity userEntityTwo = new UserEntity("Carlos", "Sainz", "carlossainz", true,
                DataGenerationHelper.getRandomDate(), "Spain", "Madrid", false, "655974455",
                "sainz@gmail.com", ALLMOTORS, false);
        userRepository.save(userEntityTwo);
        return userRepository.count();
    }

}
