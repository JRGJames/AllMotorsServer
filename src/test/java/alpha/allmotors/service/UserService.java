package alpha.allmotors.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import alpha.allmotors.repository.UserRepository;

@Service
public class UserService {

    private final String foxforumPASSWORD = "e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e";

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
        oSessionService.onlyAdmins();
        
        Page<UserEntity> page;

        if (filter == null || filter.isEmpty() || filter.trim().isEmpty()) {
            page = userRepository.findAll(pageable);
        } else {
            page = userRepository.findByUserByNameOrSurnameOrLastnameContainingIgnoreCase(
                    filter, filter, filter, filter, pageable);
        }
        return page;
    }

    public Page<UserEntity> getPageByRepliesNumberDesc(Pageable oPageable) {
        return userRepository.findUsersByRepliesNumberDescFilter(oPageable);
    }

    public Long create(UserEntity oUserEntity) {
        oSessionService.onlyAdmins();
        oUserEntity.setId(null);
        oUserEntity.setPassword(foxforumPASSWORD);
        return userRepository.save(oUserEntity).getId();
    }

    public UserEntity update(UserEntity oUserEntityToSet) {
        UserEntity oUserEntityFromDatabase = this.get(oUserEntityToSet.getId());
        oSessionService.onlyAdminsOrUsersWithIisOwnData(oUserEntityFromDatabase.getId());
        if (oSessionService.isUser()) {            
            oUserEntityToSet.setRole(oUserEntityFromDatabase.getRole());
            oUserEntityToSet.setPassword(foxforumPASSWORD);
            return userRepository.save(oUserEntityToSet);
        } else {            
            oUserEntityToSet.setPassword(foxforumPASSWORD);
            return userRepository.save(oUserEntityToSet);
        }
    }

    public Long delete(Long id) {
        oSessionService.onlyAdmins();
        userRepository.deleteById(id);
        return id;
    }
   
    public UserEntity getOneRandom() {
        oSessionService.onlyAdmins();
        Pageable oPageable = PageRequest.of((int) (Math.random() * userRepository.count()), 1);
        return userRepository.findAll(oPageable).getContent().get(0);
    }

    public Long populate(Integer amount) {
        oSessionService.onlyAdmins();
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
                    "e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e", true));
        }
        return userRepository.count();
    }



    @Transactional
    public Long empty() {
        oSessionService.onlyAdmins();
        userRepository.deleteAll();
        userRepository.resetAutoIncrement();
        UserEntity oUserEntity1 = new UserEntity(1L, "Pedro", "Picapiedra", "Roca",
                "pedropicapiedra@ausiasmarch.net", "pedropicapiedra", foxforumPASSWORD, false);
        userRepository.save(oUserEntity1);
        oUserEntity1 = new UserEntity(2L, "Pablo", "Mármol", "Granito", "pablomarmol@ausiasmarch.net",
                "pablomarmol", foxforumPASSWORD, true);
        userRepository.save(oUserEntity1);
        return userRepository.count();
    }

}
