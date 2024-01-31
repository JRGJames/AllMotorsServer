package alpha.allmotors.service;

import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
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

@Service
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
        return carRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Car not found"));
    }

    // public Page<CarEntity> getPage(Pageable pageable, String strFilter, Long userId, List<String> brandList, List<String> modelList, List<String> colorList, List<String> fuelList, List<String> gearboxList, List<String> typeList, int yearStart, int yearEnd, int priceStart, int priceEnd, int seatsStart, int seatsEnd, int doorsStart, int doorsEnd, int horsepowerStart, int horsepowerEnd, int distanceStart, int distanceEnd) {

    //     if (brandList == null) {
    //         brandList = Arrays.asList("Toyota", "Honda", "Ford", "Chevrolet", "Volkswagen",
    //                 "Nissan", "BMW", "Mercedes-Benz", "Audi", "Tesla",
    //                 "Hyundai", "Kia", "Mazda", "Volvo", "Subaru");
    //     }
    //     if (modelList == null) {
    //         modelList = Arrays.asList("Camry", "Civic", "F-150", "Cruze", "Golf", "Altima", "3 Series", "E-Class", "A4", "Model 3",
    //                 "Elantra", "Soul", "CX-5", "S60", "Outback");
    //     }
    //     if (colorList == null) {
    //         colorList = Arrays.asList("Red", "Blue", "Green", "Black", "White", "Silver", "Gray", "Yellow", "Orange", "Purple");
    //     }
        
    //     if (fuelList == null) {
    //         fuelList = Arrays.asList("Gasoline", "Diesel", "Electric", "Hybrid");
    //     }

    //     if (gearboxList == null) {
    //         gearboxList = Arrays.asList("Manual", "Automatic", "Semi-automatic");
    //     }

    //     if (typeList == null) {
    //         typeList = Arrays.asList("Sedan", "Coupe", "Hatchback", "SUV", "Pickup", "Van", "Convertible", "Wagon", "Minivan");
    //     }

    //     if (strFilter != null && !strFilter.isEmpty()) {
    //         brandList = Arrays.asList(strFilter);
    //         modelList = Arrays.asList(strFilter);
    //         colorList = Arrays.asList(strFilter);
    //         fuelList = Arrays.asList(strFilter);
    //         gearboxList = Arrays.asList(strFilter);
    //         typeList = Arrays.asList(strFilter);
    //     }

    //     // Lógica para obtener la página de coches según los filtros
    //     return carRepository.findCarsWithFilters(pageable, userId, brandList, modelList, colorList, gearboxList, fuelList, typeList, yearStart, yearEnd, seatsStart, seatsEnd, doorsStart, doorsEnd, priceStart, priceEnd, horsepowerStart, horsepowerEnd, distanceStart, distanceEnd);
    // }


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

    public Page<CarEntity> getPageByGearbox(Pageable pageable, Long userId, String gearbox) {
        if (userId == 0) {
            return carRepository.findCarsByGearbox(gearbox, pageable);
        } else {
            return carRepository.findCarsByUserIdAndGearbox(userId, gearbox, pageable);
        }
    }

    public Page<CarEntity> getPageByFuel(Pageable pageable, Long userId, String fuel) {
        if (userId == 0) {
            return carRepository.findCarsByFuel(fuel, pageable);
        } else {
            return carRepository.findCarsByUserIdAndFuel(userId, fuel, pageable);
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
            String gearbox = DataGenerationHelper.getRandomCarGearbox();
            int distance = DataGenerationHelper.getRandomCarDistance();
            String fuel = DataGenerationHelper.getRandomCarFuelType();
            int price = DataGenerationHelper.getRandomCarPrice();
            String plate = DataGenerationHelper.getRandomCarPlate();
            String type = DataGenerationHelper.getRandomCarType();
            String description = DataGenerationHelper.generateComplexSentence();
            String images = "default_image.png";
            String location = DataGenerationHelper.getRandomProvince();
            Double emissions = DataGenerationHelper.getRandomEmissions();
            Double consumption = DataGenerationHelper.getRandomConsumption();
            String dgtSticker = DataGenerationHelper.getRandomDGTSticker();
            LocalDateTime lastITV = DataGenerationHelper.getRandomLastITV();
            String currency = DataGenerationHelper.getRandomCurrency();
            Double acceleration = DataGenerationHelper.getRandomAcceleration();
            String boughtIn = DataGenerationHelper.getRandomCountry();   
            String engine = DataGenerationHelper.getRandomEngine();
            String drive = DataGenerationHelper.getRandomDrive();        
            UserEntity user = userService.getOneRandom();
            carRepository
                    .save(new CarEntity(brand, model, color, year, seats, doors, horsepower, gearbox, distance,
                    fuel, price, plate, type, images, location, description, emissions, consumption, dgtSticker, lastITV, currency, boughtIn, acceleration, engine, drive, user));
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
