package alpha.allmotors.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.ImageEntity;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.exception.ResourceNotFoundException;
import alpha.allmotors.helper.DataGenerationHelper;
import alpha.allmotors.repository.CarRepository;
import alpha.allmotors.repository.ImageRepository;
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
    ImageService imageService;

    @Autowired
    SessionService sessionService;

    @Autowired
    ImageRepository imageRepository;

    public CarEntity get(Long id) {
        return carRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Car not found"));
    }

    public Page<CarEntity> getPage(Pageable pageable, String filter, Long userId) {
        if (userId != null && userId != 0) {
            if (filter == null || filter.isEmpty()) {
                // Suponiendo que tienes un método para encontrar por userId
                return carRepository.findByUserId(userId, pageable);
            } else {
                return carRepository.findByUserIdAndTitleContainingIgnoreCase(userId, filter, pageable);
            }
        } else {
            if (filter == null || filter.isEmpty()) {
                return carRepository.findAll(pageable);
            } else {
                return carRepository.findByTitleContainingIgnoreCase(filter, pageable);
            }
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
                //do not update saves
                
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
        
        // delete images
        List<ImageEntity> images = imageRepository.findByCarId(id);
        for (ImageEntity image : images) {
            imageService.deleteImage(image.getId());
        }
        
        carRepository.deleteById(id);

        return id;
    }

    public CarEntity getOneRandom() {
        sessionService.onlyAdmins();
        Pageable pageable = PageRequest.of((int) (Math.random() * carRepository.count()), 1);
        return carRepository.findAll(pageable).getContent().get(0);
    }

    @Transactional
    public Long populate(Integer amount) {
        sessionService.onlyAdmins();

        for (int i = 0; i < amount; i++) {
            String brand = DataGenerationHelper.getRandomCarBrand();
            String model = DataGenerationHelper.getRandomCarModel();
            String title = brand + " " + model;
            String color = DataGenerationHelper.getRandomCarColor();
            int year = DataGenerationHelper.getRandomCarYear();
            int seats = DataGenerationHelper.getRandomCarSeats();
            int doors = DataGenerationHelper.getRandomCarDoors();
            int horsepower = DataGenerationHelper.getRandomCarHorsepower();
            String gearbox = DataGenerationHelper.getRandomCarGearbox();
            int distance = DataGenerationHelper.getRandomCarDistance();
            String fuel = DataGenerationHelper.getRandomCarFuelType();
            int price = DataGenerationHelper.getRandomCarPrice();
            String type = DataGenerationHelper.getRandomCarType();
            String description = DataGenerationHelper.generateComplexSentence();
            String location = DataGenerationHelper.getRandomLocation();
            String city = DataGenerationHelper.getRandomCity();
            Double emissions = DataGenerationHelper.getRandomEmissions();
            Double consumption = DataGenerationHelper.getRandomConsumption();
            String currency = DataGenerationHelper.getRandomCurrency();
            Double acceleration = DataGenerationHelper.getRandomAcceleration();
            String drive = DataGenerationHelper.getRandomDrive();
            UserEntity user = userService.getOneRandom();

            // Crear y guardar el CarEntity SIN imágenes
            CarEntity car = new CarEntity(brand, model, title, color, year, seats, doors, horsepower, gearbox, distance,
                    fuel, price, type, location, city, description, emissions, consumption,
                    currency, acceleration, drive, user, new ArrayList<>());
            final CarEntity savedCar = carRepository.save(car);

            int numberOfImages = DataGenerationHelper.getRandomInt(2, 8); // Ejemplo: entre 1 y 5 imágenes
            for (int j = 0; j < numberOfImages; j++) {
                String imagePath = DataGenerationHelper.getRandomImagePath();
                ImageEntity image = new ImageEntity(imagePath, savedCar);
                imageRepository.save(image);
                savedCar.getImages().add(image); // Añadir la imagen a la lista de imágenes del coche
            }

            // Opcional: actualizar el coche con la lista de imágenes si es necesario
            carRepository.save(savedCar);
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

    public List<CarEntity> getCarsByViews(Integer resultCount) {
        return carRepository.findCarsByOrderByViewsDesc(resultCount);
    }
}
