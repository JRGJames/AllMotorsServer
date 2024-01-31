package alpha.allmotors.service;

import java.io.IOException;
import java.util.List;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

public interface StorageService {

    void init() throws IOException;

    List<String> storeMultiple(MultipartFile[] files);

    Resource loadAsResource(String filename);

}
