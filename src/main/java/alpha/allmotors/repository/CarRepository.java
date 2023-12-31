package alpha.allmotors.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.domain.Pageable;

import alpha.allmotors.entity.CarEntity;

public interface CarRepository extends JpaRepository<CarEntity, Long> {

    // By user id

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findByUserId(Long userId, Pageable pageable);

    // By order desc or asc

    @Query(value = "SELECT * FROM car ORDER BY price DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByOrderByPriceDesc(Pageable pageable);

    @Query(value = "SELECT * FROM car ORDER BY distance DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByOrderByDistanceDesc(Pageable pageable);

    @Query(value = "SELECT * FROM car ORDER BY year DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByOrderByYearDesc(Pageable pageable);

    @Query(value = "SELECT * FROM car ORDER BY horsepower DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByOrderByHorsepowerDesc(Pageable pageable);

    // By an specific field

    @Query(value = "SELECT * FROM car WHERE brand = :brand ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByBrand(String brand, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE model = :model ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByModel(String model, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE color = :color ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByColor(String color, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE transmission = :transmission ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByTransmission(String transmission, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE engine = :engine ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByEngine(String engine, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE type = :type ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByType(String type, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE location = :location ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByLocation(String location, Pageable pageable);

    // Between two values

    @Query(value = "SELECT * FROM car WHERE year BETWEEN :startYear AND :endYear ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByYearRange(int startYear, int endYear, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE price BETWEEN :startPrice AND :endPrice ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByPriceRange(int startPrice, int endPrice, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE seats BETWEEN :startSeats AND :endSeats ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsBySeatsRange(int startSeats, int endSeats, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE doors BETWEEN :startDoors AND :endDoors ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByDoorsRange(int startDoors, int endDoors, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE horsepower BETWEEN :startHorsepower AND :endHorsepower ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByHorsepowerRange(int startHorsepower, int endHorsepower, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE distance BETWEEN :startDistance AND :endDistance ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByDistanceRange(int startDistance, int endDistance, Pageable pageable);

    // By user id and order desc or asc

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId ORDER BY price DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdOrderByPriceDesc(Long userId, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId ORDER BY distance DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdOrderByDistanceDesc(Long userId, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId ORDER BY year DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdOrderByYearDesc(Long userId, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId ORDER BY horsepower DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdOrderByHorsepowerDesc(Long userId, Pageable pageable);

    // By user id and an specific field

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND brand = :brand ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndBrand(Long userId, String brand, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND model = :model ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndModel(Long userId, String model, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND color = :color ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndColor(Long userId, String color, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND transmission = :transmission ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndTransmission(Long userId, String transmission, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND engine = :engine ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndEngine(Long userId, String engine, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND type = :type ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndType(Long userId, String type, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND location = :location ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndLocation(Long userId, String location, Pageable pageable);

    // By user id and between two values

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND year BETWEEN :startYear AND :endYear ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndYearRange(Long userId, int startYear, int endYear, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND price BETWEEN :startPrice AND :endPrice ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndPriceRange(Long userId, int startPrice, int endPrice, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND seats BETWEEN :startSeats AND :endSeats ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndSeatsRange(Long userId, int startSeats, int endSeats, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND doors BETWEEN :startDoors AND :endDoors ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndDoorsRange(Long userId, int startDoors, int endDoors, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND horsepower BETWEEN :startHorsepower AND :endHorsepower ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndHorsepowerRange(Long userId, int startHorsepower, int endHorsepower, Pageable pageable);

    @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND distance BETWEEN :startDistance AND :endDistance ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findCarsByUserIdAndDistanceRange(Long userId, int startDistance, int endDistance, Pageable pageable);

    // Seach by ttitle

    @Query(value = "SELECT * FROM car WHERE LENGTH(:searchText) >= 3 AND (brand LIKE CONCAT('%', :searchText, '%') OR model LIKE CONCAT('%', :searchText, '%') OR description LIKE CONCAT('%', :searchText, '%')) LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
    Page<CarEntity> findByTitleContainingIgnoreCase(String searchText, Pageable pageable);

    @Modifying
    @Query(value = "ALTER TABLE car AUTO_INCREMENT = 1", nativeQuery = true)
    void resetAutoIncrement();
}
