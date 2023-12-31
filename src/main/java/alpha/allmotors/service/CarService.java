package alpha.allmotors.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cglib.core.Local;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.exception.ResourceNotFoundException;
import alpha.allmotors.helper.DataGenerationHelper;
import alpha.allmotors.repository.CarRepository;
import alpha.allmotors.repository.UserRepository;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.transaction.Transactional;

public class CarService {
    @Autowired
    CarRepository carRepository;

    @Autowired
    HttpServletRequest httpServletRequest;

    @Autowired
    UserRepository userRepository;

    @Autowired
    UserService userService;

    @Autowired
    SessionService sessionService;

    public CarEntity get(Long id) {
        return carRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Thread not found"));
    }

    public Page<CarEntity> getPage(Pageable pageable, String filter, Long userId) {
        sessionService.onlyAdmins();

        Page<CarEntity> page;

        if (userId != null && userId != 0) {
            if (filter == null || filter.isEmpty() || filter.trim().isEmpty()) {
                page = carRepository.findByUserId(userId, pageable);
            } else {
                page = carRepository.findByTitleContainingIgnoreCase(filter, pageable);
            }
        } else {
            if (filter == null || filter.isEmpty() || filter.trim().isEmpty()) {
                page = carRepository.findAll(pageable);
            } else {
                page = carRepository.findByTitleContainingIgnoreCase(filter, pageable);
            }
        }
        return page;
    }

    public Page<CarEntity> getPageByRepliesNumberDesc(Pageable pageable, Long userId) {
        if (userId == 0) {
            return carRepository.findThreadsByRepliesNumberDesc(pageable);
        } else {
            return carRepository.findThreadsByRepliesNumberDescFilterByUserId(userId, pageable);
        }
    }

    public Long create(CarEntity carEntity) {
        carEntity.setId(null);
        sessionService.onlyAdminsOrUsers();
        if (sessionService.isUser()) {
            carEntity.setOwner(sessionService.getSessionUser());
            return carRepository.save(carEntity).getId();
        } else {
            return carRepository.save(carEntity).getId();
        }
    }

    public CarEntity update(CarEntity carEntityToSet) {
        CarEntity carEntityFromDatabase = this.get(carEntityToSet.getId());
        sessionService.onlyAdminsOrUsersWithIisOwnData(carEntityFromDatabase.getOwner().getId());
        if (sessionService.isUser()) {
            if (carEntityToSet.getOwner().getId().equals(sessionService.getSessionUser().getId())) {
                return carRepository.save(carEntityToSet);
            } else {
                throw new ResourceNotFoundException("Unauthorized");
            }
        } else {
            return carRepository.save(carEntityToSet);
        }
    }

    public Long delete(Long id) {
        CarEntity carEntityFromDatabase = this.get(id);
        sessionService.onlyAdminsOrUsersWithIisOwnData(carEntityFromDatabase.getOwner().getId());
        carRepository.deleteById(id);
        return id;
    }

    public CarEntity getOneRandom() {
        sessionService.onlyAdmins();
        Pageable pageable = PageRequest.of((int) (Math.random() * carRepository.count()), 1);
        return carRepository.findAll(pageable).getContent().get(0);
    }

    public Long populate(Integer amount) {
        sessionService.onlyAdmins();
        for (int i = 0; i < amount; i++) {
            String brand = DataGenerationHelper.getRandomCarBrand();
            String model = DataGenerationHelper.getRandomCarModel();
            String color = DataGenerationHelper.getRandomCarColor();
            int year = DataGenerationHelper.getRandomCarYear();
            int seats = DataGenerationHelper.getRandomCarSeats();
            int doors = DataGenerationHelper.getRandomCarDoors();
            int horsepower = DataGenerationHelper.getRandomCarHorsepower();
            String transmission = DataGenerationHelper.getRandomCarTransmission();
            int distance = DataGenerationHelper.getRandomCarDistance();
            String engine = DataGenerationHelper.getRandomCarEngineType();
            int price = DataGenerationHelper.getRandomCarPrice();
            String plate = DataGenerationHelper.getRandomCarPlate();
            String type = DataGenerationHelper.getRandomCarType();
            String description = DataGenerationHelper.generateComplexSentence();
            LocalDateTime date_uploaded = LocalDateTime.now();
            String images = "default_image.png";
            String status = "on sale";
            int views = 0;
            int saves = 0;
            String location = DataGenerationHelper.getRandomProvince();
            UserEntity user = userService.getOneRandom();
            carRepository
                    .save(new CarEntity(brand, model, color, year, seats, doors, horsepower, transmission, distance,
                            engine, price, plate, type, description, images, status, date_uploaded, views, saves,
                            location, user));
        }
        return carRepository.count();
    }

    @Transactional
    public Long empty() {
        sessionService.onlyAdmins();
        carRepository.deleteAll();
        carRepository.resetAutoIncrement();
        carRepository.flush();
        return carRepository.count();
    }
}
