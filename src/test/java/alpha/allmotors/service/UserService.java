package alpha.allmotors.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
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

    public Page<UserEntity> getPage(Pageable pageable, String filter) {
        sessionService.onlyAdmins();
        
        Page<UserEntity> page;

        if (filter == null || filter.isEmpty() || filter.trim().isEmpty()) {
            page = userRepository.findAll(pageable);
        } else {
            page = userRepository.findByUserByNameOrSurnameOrLastnameContainingIgnoreCase(
                    filter, filter, filter, filter, pageable);
        }
        return page;
    }

    public Long create(UserEntity oUserEntity) {
        sessionService.onlyAdmins();
        oUserEntity.setId(null);
        oUserEntity.setPassword(ALLMOTORS);
        return userRepository.save(oUserEntity).getId();
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

    public Long populate(Integer amount) {
        sessionService.onlyAdmins();
        for (int i = 0; i < amount; i++) {
            String name = DataGenerationHelper.getRadomName();
            String surname = DataGenerationHelper.getRadomSurname();
            String lastname = DataGenerationHelper.getRadomSurname();
            String email = (name.substring(0, 3) + surname.substring(0, 3) + lastname.substring(0, 2) + i).toLowerCase()
                    + "@ausiasmarch.net";
            String username = DataGenerationHelper
                    .doNormalizeString(
                            name.substring(0, 3) + surname.substring(1, 3) + lastname.substring(1, 2) + i).toLowerCase();
            userRepository.save(new UserEntity(name, surname, lastname, email, username,
                    ALLMOTORS, true));
        }
        return userRepository.count();
    }



    @Transactional
    public Long empty() {
        sessionService.onlyAdmins();
        userRepository.deleteAll();
        userRepository.resetAutoIncrement();
        UserEntity userEntity = new UserEntity(1L, "Pedro", "Picapiedra", "Roca",
                "pedropicapiedra@ausiasmarch.net", "pedropicapiedra", ALLMOTORS, false);
        userRepository.save(userEntity);
        userEntity = new UserEntity(2L, "Pablo", "Mármol", "Granito", "pablomarmol@ausiasmarch.net",
                "pablomarmol", ALLMOTORS, true);
        userRepository.save(userEntity);
        return userRepository.count();
    }

}
