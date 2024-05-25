package alpha.allmotors.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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

    public Long createImage(MultipartFile file, Long carId) {
        ImageEntity image = new ImageEntity();

        CarEntity car = carRepository.findById(carId).orElseThrow(() -> new ResourceNotFoundException("Car not found"));
        image.setCar(car);
        image.setImageUrl(file.getOriginalFilename());
        imageRepository.save(image);

        fileSystemStorageService.storeCarImage(file, image);
        return image.getId();
    }
    
    public Long deleteImage(Long imageId) {
        fileSystemStorageService.deleteCarImage(imageId);

        return imageId;
    }

    public List<ImageEntity> getImagesByCarId(Long id) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'getImagesByCarId'");
    }

}
