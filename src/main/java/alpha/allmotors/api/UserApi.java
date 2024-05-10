package alpha.allmotors.api;

import java.util.Collections;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.service.UserService;

@CrossOrigin(origins = "*", allowedHeaders = "*", maxAge = 3600)
@RestController
@RequestMapping("/user")
public class UserApi {

    @Autowired
    UserService userService;

    @GetMapping("/get/{id}")
    public ResponseEntity<UserEntity> get(@PathVariable("id") Long id) {
        return ResponseEntity.ok(userService.get(id));
    }

    @GetMapping("/getPage")
    public ResponseEntity<Page<UserEntity>> getPage(
            Pageable pageable,
            @RequestParam(name = "filter", required = false) String strFilter) {
        return ResponseEntity.ok(userService.getPage(pageable, strFilter));
    }

    @GetMapping("/getAll")
    public ResponseEntity<Iterable<UserEntity>> getAll() {
        return ResponseEntity.ok(userService.getAll());
    }

    @GetMapping("/byUsername/{username}")
    public ResponseEntity<UserEntity> get(@PathVariable("username") String username) {
        return ResponseEntity.ok(userService.getByUsername(username));
    }

    @PostMapping("/create")
    public ResponseEntity<Long> create(@RequestBody UserEntity userEntity) {
        return ResponseEntity.ok(userService.create(userEntity));
    }

    @PutMapping("/update")
    public ResponseEntity<UserEntity> update(@RequestBody UserEntity userEntity) {
        return ResponseEntity.ok(userService.update(userEntity));
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Long> delete(@PathVariable("id") Long id) {
        return ResponseEntity.ok(userService.delete(id));
    }

    @PostMapping("/populate/{amount}")
    public ResponseEntity<Long> populate(@PathVariable("amount") Integer amount) {
        return ResponseEntity.ok(userService.populate(amount));
    }

    @DeleteMapping("/empty")
    public ResponseEntity<Long> empty() {
        return ResponseEntity.ok(userService.empty());
    }

    @GetMapping("/username-check")
    public ResponseEntity<Map<String, Boolean>> checkUsernameAvailability(@RequestParam String username) {
        boolean isAvailable = userService.isUsernameAvailable(username);
        return ResponseEntity.ok(Collections.singletonMap("isUsernameAvailable", isAvailable));
    }

    @GetMapping("/email-check")
    public ResponseEntity<Map<String, Boolean>> checkEmailAvailability(@RequestParam String email) {
        boolean isAvailable = userService.isEmailAvailable(email);
        return ResponseEntity.ok(Collections.singletonMap("isEmailAvailable", isAvailable));
    }
}

