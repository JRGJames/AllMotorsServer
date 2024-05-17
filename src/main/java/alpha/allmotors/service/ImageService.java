package alpha.allmotors.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import alpha.allmotors.entity.CarEntity;
import alpha.allmotors.entity.ImageEntity;
import alpha.allmotors.exception.ResourceNotFoundException;
import alpha.allmotors.repository.CarRepository;
import alpha.allmotors.repository.ImageRepository;

@Service
public class ImageService {

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private CarRepository carRepository;

    @Autowired
    private FileSystemStorageService fileSystemStorageService;
    
    public ImageEntity get(Long id) {
        return imageRepository.findById(id).orElseThrow(() -> new ResourceNotFoundException("Image not found"));
    }
    
    public Optional<List<ImageEntity>> getAllByCar(Long carId) {
        return imageRepository.findAllByCarId(carId);
    }

    public Long createImage(MultipartFile file, Long carId) {
        ImageEntity image = new ImageEntity();

        CarEntity car = carRepository.findById(carId).orElseThrow(() -> new ResourceNotFoundException("Car not found"));
        image.setCar(car);
        image.setImageUrl(file.getOriginalFilename());
        imageRepository.save(image);

        System.out.println("ImageService.createImage: " + image.toString());
        System.out.println("ImageService.createImage: " + image.getImageUrl());
        System.out.println("ImageService.createImage: " + image.getId());

        fileSystemStorageService.storeCarImage(file, image.getId());
        return image.getId();
    }
    
    public Long deleteImage(Long id) {
        imageRepository.deleteById(id);
        return id;
    }

    public ImageEntity updateImage(ImageEntity image) {
        imageRepository.save(image);
        return imageRepository.save(image);
    }
}
