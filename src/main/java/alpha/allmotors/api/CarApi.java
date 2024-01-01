package alpha.allmotors.api;

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

import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.service.CarService;

@CrossOrigin(origins = "*", allowedHeaders = "*", maxAge = 3600)
@RestController
@RequestMapping("/car")
public class CarApi {
    @Autowired
    CarService carService;

    @GetMapping("/get/{id}")
    public ResponseEntity<CarEntity> get(@PathVariable("id") Long id) {
        return ResponseEntity.ok(carService.get(id));
    }

    @PostMapping("/create")
    public ResponseEntity<Long> create(@RequestBody CarEntity carEntity) {
        return ResponseEntity.ok(carService.create(carEntity));
    }

    @PutMapping("/update")
    public ResponseEntity<CarEntity> update(@RequestBody CarEntity carEntity) {
        return ResponseEntity.ok(carService.update(carEntity));
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Long> delete(@PathVariable("id") Long id) {
        return ResponseEntity.ok(carService.delete(id));
    }

    @GetMapping("/getPage")
    public ResponseEntity<Page<CarEntity>> getPage(
            Pageable pageable,
            @RequestParam(value = "user", defaultValue = "0", required = false) Long userId,
            @RequestParam(name = "filter", required = false) String strFilter) {
        return ResponseEntity.ok(carService.getPage(pageable, strFilter, userId));
    }

    @PostMapping("/populate/{amount}")
    public ResponseEntity<Long> populate(@PathVariable("amount") Integer amount) {
        return ResponseEntity.ok(carService.populate(amount));
    }

    @DeleteMapping("/empty")
    public ResponseEntity<Long> empty() {
        return ResponseEntity.ok(carService.empty());
    }

    @GetMapping("/getPage/byRepliesNumberDesc")
    public ResponseEntity<Page<CarEntity>> getPageByRepliesNumberDesc(Pageable pageable,
            @RequestParam(value = "user", defaultValue = "0", required = false) Long userId) {
        return ResponseEntity.ok(carService.getPageByRepliesNumberDesc(pageable, userId));
    }

}
