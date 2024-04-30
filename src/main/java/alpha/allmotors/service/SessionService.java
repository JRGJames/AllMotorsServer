package alpha.allmotors.service;

import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import alpha.allmotors.bean.UserBean;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.exception.ResourceNotFoundException;
import alpha.allmotors.exception.UnauthorizedException;
import alpha.allmotors.helper.JWTHelper;
import alpha.allmotors.repository.UserRepository;
import org.springframework.util.StringUtils;
import jakarta.servlet.http.HttpServletRequest;

@Service
public class SessionService {

    @Autowired
    UserRepository userRepository;

    UserEntity userEntity;

    JWTHelper jwtHelper = new JWTHelper();

    @Autowired
    HttpServletRequest httpServletRequest;

    public String login(UserBean userBean) {

        if (StringUtils.hasText(userBean.getUsername())) {
            userRepository.findByUsernameAndPassword(userBean.getUsername(), userBean.getPassword());
        } else if (StringUtils.hasText(userBean.getEmail())) {
            userRepository.findByEmailAndPassword(userBean.getEmail(), userBean.getPassword());
        } else {
            throw new UnauthorizedException("Debe proporcionar nombre de usuario o correo electrónico");
        }

        return jwtHelper.generateJWT(userRepository, userBean.getUsername(), userBean.getEmail());
    }

    public void changeStatus(UserBean userBean) {
        Optional<UserEntity> userEmail = userRepository.findByEmail(userBean.getEmail());
        Optional<UserEntity> userUsername = userRepository.findByUsername(userBean.getUsername());

        if (userUsername.isPresent()) {
            userEntity = userUsername.get();
            userEntity.setStatus(true);
            ;
            userRepository.save(userEntity);
        } else if (userEmail.isPresent()) {
            userEntity = userEmail.get();
            userEntity.setStatus(true);
            userRepository.save(userEntity);
        } else {
            throw new ResourceNotFoundException("User not found");
        }
    }

    public String loginStatus(UserBean userBean) {
        String token = this.login(userBean);
        this.changeStatus(userBean);
        return token;
    }

    public String getSessionUsername() {
        if (httpServletRequest.getAttribute("username") instanceof String) {
            return httpServletRequest.getAttribute("username").toString();
        } else {
            return null;
        }
    }

    public UserEntity getSessionUser() {
        if (this.getSessionUsername() != null) {
            return userRepository.findByUsername(this.getSessionUsername()).orElse(null);
        } else {
            return null;
        }
    }

    public Boolean isSessionActive() {
        if (this.getSessionUsername() != null) {
            return userRepository.findByUsername(this.getSessionUsername()).isPresent();
        } else {
            return false;
        }
    }

    public Boolean isAdmin() {
        if (this.getSessionUsername() != null) {
            UserEntity userEntityInSession = userRepository.findByUsername(this.getSessionUsername())
                    .orElseThrow(() -> new ResourceNotFoundException("User not found"));
            return Boolean.TRUE.equals(userEntityInSession.isRole());
        } else {
            return true;
        }
    }

    public Boolean isUser() {
        if (this.getSessionUsername() != null) {
            UserEntity userEntityInSession = userRepository.findByUsername(this.getSessionUsername())
                    .orElseThrow(() -> new ResourceNotFoundException("User not found"));
            return Boolean.FALSE.equals(userEntityInSession.isRole());
        } else {
            return true;
        }
    }

    public void onlyAdmins() {
        if (!this.isAdmin()) {
            throw new UnauthorizedException("Only admins can do this");
        }
    }

    public void onlyUsers() {
        if (!this.isUser()) {
            throw new UnauthorizedException("Only users can do this");
        }
    }

    public void onlyAdminsOrUsers() {
        if (!this.isSessionActive()) {
            throw new UnauthorizedException("Only admins or users can do this");
        }
    }

    public void onlyUsersWithIisOwnData(Long id_user) {
        if (!this.isUser()) {
            throw new UnauthorizedException("Only users can do this");
        }
        if (!this.getSessionUser().getId().equals(id_user)) {
            throw new UnauthorizedException("Only users can do this");
        }
    }

    public void onlyAdminsOrUsersWithIisOwnData(Long id_user) {
        if (this.isSessionActive()) {
            if (!this.isAdmin()) {
                if (!this.isUser()) {
                    throw new UnauthorizedException("Only admins or users can do this");
                } else {
                    if (!this.getSessionUser().getId().equals(id_user)) {
                        throw new UnauthorizedException("Only admins or users with its own data can do this");
                    }
                }
            }
        } else {
            throw new UnauthorizedException("Only admins or users can do this");
        }
    }
}
