package alpha.allmotors.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
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

    //By order asc desc

    public Page<CarEntity> getPageByPriceDesc(Pageable pageable, Long userId) {
        if (userId == 0) {
            return carRepository.findCarsByOrderByPriceDesc(pageable);
        } else {
            return carRepository.findCarsByUserIdOrderByPriceDesc(userId, pageable);
        }
    }

    public Page<CarEntity> getPageByDistanceDesc(Pageable pageable, Long userId) {
        if (userId == 0) {
            return carRepository.findCarsByOrderByDistanceDesc(pageable);
        } else {
            return carRepository.findCarsByUserIdOrderByDistanceDesc(userId, pageable);
        }
    }

    public Page<CarEntity> getPageByYearDesc(Pageable pageable, Long userId) {
        if (userId == 0) {
            return carRepository.findCarsByOrderByYearDesc(pageable);
        } else {
            return carRepository.findCarsByUserIdOrderByYearDesc(userId, pageable);
        }
    }

    public Page<CarEntity> getPageByHorsepowerDesc(Pageable pageable, Long userId) {
        if (userId == 0) {
            return carRepository.findCarsByOrderByHorsepowerDesc(pageable);
        } else {
            return carRepository.findCarsByUserIdOrderByHorsepowerDesc(userId, pageable);
        }
    }

    //By an specific field value

    public Page<CarEntity> getPageByBrand(Pageable pageable, Long userId, String brand) {
        if (userId == 0) {
            return carRepository.findCarsByBrand(brand, pageable);
        } else {
            return carRepository.findCarsByUserIdAndBrand(userId, brand, pageable);
        }
    }

    public Page<CarEntity> getPageByModel(Pageable pageable, Long userId, String model) {
        if (userId == 0) {
            return carRepository.findCarsByModel(model, pageable);
        } else {
            return carRepository.findCarsByUserIdAndModel(userId, model, pageable);
        }
    }

    public Page<CarEntity> getPageByColor(Pageable pageable, Long userId, String color) {
        if (userId == 0) {
            return carRepository.findCarsByColor(color, pageable);
        } else {
            return carRepository.findCarsByUserIdAndColor(userId, color, pageable);
        }
    }

    public Page<CarEntity> getPageByTransmission(Pageable pageable, Long userId, String transmission) {
        if (userId == 0) {
            return carRepository.findCarsByTransmission(transmission, pageable);
        } else {
            return carRepository.findCarsByUserIdAndTransmission(userId, transmission, pageable);
        }
    }

    public Page<CarEntity> getPageByEngine(Pageable pageable, Long userId, String engine) {
        if (userId == 0) {
            return carRepository.findCarsByEngine(engine, pageable);
        } else {
            return carRepository.findCarsByUserIdAndEngine(userId, engine, pageable);
        }
    }

    public Page<CarEntity> getPageByCarType(Pageable pageable, Long userId, String type) {
        if (userId == 0) {
            return carRepository.findCarsByType(type, pageable);
        } else {
            return carRepository.findCarsByUserIdAndType(userId, type, pageable);
        }
    }

    public Page<CarEntity> getPageByLocation(Pageable pageable, Long userId, String location) {
        if (userId == 0) {
            return carRepository.findCarsByLocation(location, pageable);
        } else {
            return carRepository.findCarsByUserIdAndLocation(userId, location, pageable);
        }
    }

    public Page<CarEntity> getPageByStatus(Pageable pageable, Long userId, String status) {
        if (userId == 0) {
            return carRepository.findCarsByStatus(status, pageable);
        } else {
            return carRepository.findCarsByUserIdAndStatus(userId, status, pageable);
        }
    }

    //By ranges

    public Page<CarEntity> findCarsByYearRange(Pageable pageable, Long userId, int startYear, int endYear) {
        if (userId == 0) {
            return carRepository.findCarsByYearRange(startYear, endYear, pageable);
        } else {
            return carRepository.findCarsByUserIdAndYearRange(userId, startYear, endYear, pageable);
        }
    }

    public Page<CarEntity> findCarsByPriceRange(Pageable pageable, Long userId, int startPrice, int endPrice) {
        if (userId == 0) {
            return carRepository.findCarsByPriceRange(startPrice, endPrice, pageable);
        } else {
            return carRepository.findCarsByUserIdAndPriceRange(userId, startPrice, endPrice, pageable);
        }
    }

    public Page<CarEntity> findCarsBySeatsRange(Pageable pageable, Long userId, int startSeats, int endSeats) {
        if (userId == 0) {
            return carRepository.findCarsBySeatsRange(startSeats, endSeats, pageable);
        } else {
            return carRepository.findCarsByUserIdAndSeatsRange(userId, startSeats, endSeats, pageable);
        }
    }

    public Page<CarEntity> findCarsByDoorsRange(Pageable pageable, Long userId, int startDoors, int endDoors) {
        if (userId == 0) {
            return carRepository.findCarsByDoorsRange(startDoors, endDoors, pageable);
        } else {
            return carRepository.findCarsByUserIdAndDoorsRange(userId, startDoors, endDoors, pageable);
        }
    }

    public Page<CarEntity> findCarsByHorsepowerRange(Pageable pageable, Long userId, int startHorsepower, int endHorsepower) {
        if (userId == 0) {
            return carRepository.findCarsByHorsepowerRange(startHorsepower, endHorsepower, pageable);
        } else {
            return carRepository.findCarsByUserIdAndHorsepowerRange(userId, startHorsepower, endHorsepower, pageable);
        }
    }

    public Page<CarEntity> findCarsByDistanceRange(Pageable pageable, Long userId, int startDistance, int endDistance) {
        if (userId == 0) {
            return carRepository.findCarsByDistanceRange(startDistance, endDistance, pageable);
        } else {
            return carRepository.findCarsByUserIdAndDistanceRange(userId, startDistance, endDistance, pageable);
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
