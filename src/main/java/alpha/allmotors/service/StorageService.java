package alpha.allmotors.service;

import java.io.IOException;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface StorageService {

    void init() throws IOException;
    
    String storePicture(MultipartFile file, Long userId);

    String storeBackground(MultipartFile file, Long userId);

    String storeCarImage(MultipartFile file, Long imageId);

    void deleteCarImage(Long imageId);

    Resource loadAsResource(String filename);

}
