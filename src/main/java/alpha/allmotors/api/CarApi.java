package alpha.allmotors.api;

import java.util.List;
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

    // @GetMapping("/getPage")
    // public ResponseEntity<Page<CarEntity>> getPage(
    //         Pageable pageable,
    //         @RequestParam(value = "id_owner", defaultValue = "0", required = false) Long userId,
    //         @RequestParam(name = "filter", required = false) String strFilter,
    //         @RequestParam(name = "brandList", required = false) List<String> brandList,
    //         @RequestParam(name = "modelList", required = false) List<String> modelList,
    //         @RequestParam(name = "colorList", required = false) List<String> colorList,
    //         @RequestParam(name = "fuelList", required = false) List<String> fuelList,
    //         @RequestParam(name = "gearboxList", required = false) List<String> gearboxList,
    //         @RequestParam(name = "typeList", required = false) List<String> typeList,
    //         @RequestParam(name = "yearStart", required = false) Integer yearStart,
    //         @RequestParam(name = "yearEnd", required = false) Integer yearEnd,
    //         @RequestParam(name = "priceStart", required = false) Integer priceStart,
    //         @RequestParam(name = "priceEnd", required = false) Integer priceEnd,
    //         @RequestParam(name = "seatsStart", required = false) Integer seatsStart,
    //         @RequestParam(name = "seatsEnd", required = false) Integer seatsEnd,
    //         @RequestParam(name = "doorsStart", required = false) Integer doorsStart,
    //         @RequestParam(name = "doorsEnd", required = false) Integer doorsEnd,
    //         @RequestParam(name = "horsepowerStart", required = false) Integer horsepowerStart,
    //         @RequestParam(name = "horsepowerEnd", required = false) Integer horsepowerEnd,
    //         @RequestParam(name = "distanceStart", required = false) Integer distanceStart,
    //         @RequestParam(name = "distanceEnd", required = false) Integer distanceEnd) {
    //     return ResponseEntity.ok(carService.getPage(pageable, strFilter, userId, brandList, modelList, colorList,
    //             fuelList, gearboxList, typeList, yearStart, yearEnd, priceStart, priceEnd, seatsStart, seatsEnd,
    //             doorsStart, doorsEnd, horsepowerStart, horsepowerEnd, distanceStart, distanceEnd));
    // }

    @PostMapping("/populate/{amount}")
    public ResponseEntity<Long> populate(@PathVariable("amount") Integer amount) {
        return ResponseEntity.ok(carService.populate(amount));
    }

    @DeleteMapping("/empty")
    public ResponseEntity<Long> empty() {
        return ResponseEntity.ok(carService.empty());
    }

    @GetMapping("/get/byViews")
    public ResponseEntity<List<CarEntity>> get(Integer amount) {
        return ResponseEntity.ok(carService.getCarsByViews(amount));
    }
}
