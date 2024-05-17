package alpha.allmotors.api;

import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import lombok.AllArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import alpha.allmotors.entity.ImageEntity;
import alpha.allmotors.service.ImageService;
import alpha.allmotors.service.StorageService;

import java.io.IOException;
import jakarta.servlet.http.HttpServletRequest;

@CrossOrigin(origins = "*", allowedHeaders = "*", maxAge = 3600)
@RestController
@RequestMapping("/media")
@AllArgsConstructor
public class MediaController {

    private final StorageService storageService;
    private final HttpServletRequest request;

    @Autowired
    private ImageService imageService;

    @PostMapping("/upload/background/{userId}")
    public Map<String, String> uploadProfileBackground(@RequestParam("file") MultipartFile file, @PathVariable Long userId) {
        String path = storageService.storeBackground(file, userId);
        String host = request.getRequestURL().toString().replace(request.getRequestURI(), "");
        String url = ServletUriComponentsBuilder
            .fromHttpUrl(host)
            .path("/media/")
            .path(path)
            .toUriString();

        return Map.of("url", url);
    }

    @PostMapping("/upload/picture/{userId}")
    public Map<String, String> uploadProfilePicture(@RequestParam("file") MultipartFile file, @PathVariable Long userId) {
        String path = storageService.storePicture(file, userId);
        String host = request.getRequestURL().toString().replace(request.getRequestURI(), "");
        String url = ServletUriComponentsBuilder
            .fromHttpUrl(host)
            .path("/media/")
            .path(path)
            .toUriString();

        return Map.of("url", url);
    }

    @GetMapping("{filename:.+}")
    public ResponseEntity<Resource> getFile(@PathVariable String filename) throws IOException {
        Resource file = storageService.loadAsResource(filename);
        String contentType = Files.probeContentType(file.getFile().toPath());

        return ResponseEntity.ok().header(HttpHeaders.CONTENT_TYPE, contentType).body(file);
    }

    @GetMapping("/get/{id}")
    public ResponseEntity<ImageEntity> get(@PathVariable("id") Long id) {
        return ResponseEntity.ok(imageService.get(id));
    }

    @GetMapping("/getByCar/{carId}")
    public ResponseEntity<Optional<List<ImageEntity>>> getByCar(@PathVariable("carId") Long carId) {
        return ResponseEntity.ok(imageService.getAllByCar(carId));
    }

    @PostMapping("/create/{carId}")
    public ResponseEntity<Long> create(@RequestParam("file") MultipartFile file, @PathVariable("carId") Long carId) {
        return ResponseEntity.ok(imageService.createImage(file, carId));
    }

    @PutMapping("/update")
    public ResponseEntity<ImageEntity> update(@RequestBody ImageEntity imageEntity) {
        return ResponseEntity.ok(imageService.updateImage(imageEntity));
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Long> delete(@PathVariable("id") Long id) {
        return ResponseEntity.ok(imageService.deleteImage(id));
    }
}
