package alpha.allmotors.api;

import java.nio.file.Files;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import lombok.AllArgsConstructor;

import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

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

    @PostMapping("/upload")
    public ResponseEntity<?> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files) {
        try {
            List<String> paths = storageService.storeMultiple(files);
            String host = request.getRequestURL().toString().replace(request.getRequestURI(), "");

            List<Map<String, String>> responseList = new ArrayList<>();
            for (String path : paths) {
                String url = ServletUriComponentsBuilder.fromHttpUrl(host).path("/media/").path(path).toUriString();
                responseList.add(Map.of("url", url));
            }

            return ResponseEntity.ok(responseList);
        } catch (RuntimeException e) {
            // Retorna un ResponseEntity con el mensaje de error y un código de estado adecuado
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    @GetMapping("{filename:.+}")
    public ResponseEntity<Resource> getFile(@PathVariable String filename) throws IOException {
        Resource file = storageService.loadAsResource(filename);
        String contentType = Files.probeContentType(file.getFile().toPath());

        return ResponseEntity.ok().header(HttpHeaders.CONTENT_TYPE, contentType).body(file);
    }
}
