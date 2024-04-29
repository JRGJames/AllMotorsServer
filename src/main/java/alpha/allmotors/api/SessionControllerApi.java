package alpha.allmotors.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import alpha.allmotors.bean.UserBean;
import alpha.allmotors.service.SessionService;

@CrossOrigin(origins = "*", allowedHeaders = "*", maxAge = 3600)
@RestController
@RequestMapping("/session")
public class SessionControllerApi {

    @Autowired
    SessionService sessionService;

    @PostMapping("/login")
    public ResponseEntity<String> login(@RequestBody UserBean userBean) {
        return ResponseEntity.ok("\"" + sessionService.loginStatus(userBean) + "\"");
    }

    @GetMapping("/status")
    public ResponseEntity<Boolean> isUserConnected() {
        boolean isLoggedIn = sessionService.isSessionActive();
        return ResponseEntity.ok(isLoggedIn);
    }
}