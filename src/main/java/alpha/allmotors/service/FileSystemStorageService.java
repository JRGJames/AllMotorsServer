package alpha.allmotors.service;

import java.io.InputStream;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.UrlResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import alpha.allmotors.entity.ImageEntity;
import alpha.allmotors.entity.UserEntity;
import alpha.allmotors.repository.ImageRepository;
import alpha.allmotors.repository.UserRepository;

import java.io.IOException;
import jakarta.annotation.PostConstruct;
import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;

@Service
public class FileSystemStorageService implements StorageService {

    @Autowired
    private ImageRepository imageRepository;

    @Autowired
    private EntityManager entityManager;

    @Autowired
    private UserRepository userRepository;

    @Value("${media.location}")
    private String mediaLocation;

    private Path rootLocation;

    @Override
    @PostConstruct
    public void init() throws IOException {
        rootLocation = Paths.get(mediaLocation);
        Files.createDirectories(rootLocation);
    }

    @Override
    public String storePicture(MultipartFile file, Long userId) {
        try {
            if (file.isEmpty()) {
                throw new RuntimeException("Failed to store empty file");
            }
            String filename = generateUniqueFilename(file);
            Path destinationFile = rootLocation.resolve(Paths.get(filename)).normalize().toAbsolutePath();

            try (InputStream inputStream = file.getInputStream()) {
                Files.copy(inputStream, destinationFile, StandardCopyOption.REPLACE_EXISTING);
            }

            Optional<UserEntity> user = userRepository.findById(userId);

            if (user.isPresent()) {
                UserEntity userEntity = user.get();
                userEntity.setProfilePicture(filename);
                userRepository.save(userEntity);
            }

            return filename;
        } catch (Exception e) {
            throw new RuntimeException("Could not store file", e);
        }
    }

    @Override
    public String storeBackground(MultipartFile file, Long userId) {
        try {
            if (file.isEmpty()) {
                throw new RuntimeException("Failed to store empty file");
            }
            String filename = generateUniqueFilename(file);
            Path destinationFile = rootLocation.resolve(Paths.get(filename)).normalize().toAbsolutePath();

            try (InputStream inputStream = file.getInputStream()) {
                Files.copy(inputStream, destinationFile, StandardCopyOption.REPLACE_EXISTING);
            }

            Optional<UserEntity> user = userRepository.findById(userId);

            if (user.isPresent()) {
                UserEntity userEntity = user.get();
                userEntity.setProfileBackground(filename);
                userRepository.save(userEntity);
            }

            return filename;
        } catch (Exception e) {
            throw new RuntimeException("Could not store file", e);
        }
    }

    @Transactional
    @Override
    public String storeCarImage(MultipartFile file, ImageEntity imageToSet) {
        try {
            if (file.isEmpty()) {
                throw new RuntimeException("Failed to store empty file");
            }

            String filename = generateUniqueFilename(file);
            Path destinationFile = rootLocation.resolve(Paths.get(filename)).normalize().toAbsolutePath();

            // Copiar el archivo
            try (InputStream inputStream = file.getInputStream()) {
                Files.copy(inputStream, destinationFile, StandardCopyOption.REPLACE_EXISTING);
            }

            // Actualizar la URL de la imagen
            Optional<ImageEntity> image = imageRepository.findById(imageToSet.getId());

            if (image.isPresent()) {
                ImageEntity imageEntity = image.get();
                imageEntity.setImageUrl(filename);
                imageRepository.save(imageEntity);
                entityManager.flush();
            }

            return filename;
        } catch (Exception e) {
            System.err.println("Error storing file: " + e.getMessage());
            throw new RuntimeException("Could not store file", e);
        }
    }

    @Override
    public void deleteCarImage(Long imageId) {
        Optional<ImageEntity> image = imageRepository.findById(imageId);

        if (image.isPresent()) {
            ImageEntity imageEntity = image.get();
            String filename = imageEntity.getImageUrl();
            Path destinationFile = rootLocation.resolve(Paths.get(filename)).normalize().toAbsolutePath();
            try {
                Files.delete(destinationFile);
            } catch (IOException e) {
                throw new RuntimeException("Could not delete file", e);
            }

            imageRepository.deleteById(imageId);

        } else {
            throw new RuntimeException("Image not found");
        }
    }

    private String generateUniqueFilename(MultipartFile file) {
        String originalFilename = file.getOriginalFilename();
        String extension = originalFilename.substring(originalFilename.lastIndexOf("."));
        String uuid = UUID.randomUUID().toString();
        return uuid + extension;
    }

    @Override
    public Resource loadAsResource(String filename) {
        try {
            Path file = rootLocation.resolve(filename);
            Resource resource = new UrlResource((file.toUri()));

            if (resource.exists() || resource.isReadable()) {
                return resource;
            } else {
                throw new RuntimeException("Could not read file: " + filename);
            }
        } catch (MalformedURLException e) {
            throw new RuntimeException("Could not read file: " + filename);
        }
    }

    public ImageEntity getImage(Long imageId) {
        return imageRepository.findById(imageId).orElseThrow(() -> new RuntimeException("Image not found"));
    }
}
