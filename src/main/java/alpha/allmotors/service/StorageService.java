package alpha.allmotors.service;

import java.io.IOException;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import alpha.allmotors.entity.ImageEntity;

public interface StorageService {

    void init() throws IOException;
    
    String storePicture(MultipartFile file, Long userId);

    String storeBackground(MultipartFile file, Long userId);

    String storeCarImage(MultipartFile file, ImageEntity imageEntity);

    void deleteCarImage(Long imageId);

    Resource loadAsResource(String filename);

}
