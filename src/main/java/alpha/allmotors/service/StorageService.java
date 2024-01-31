package alpha.allmotors.service;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface StorageService {

    void init();

    String store(MultipartFile filename);

    Resource loadAsResource(String filename);

}
