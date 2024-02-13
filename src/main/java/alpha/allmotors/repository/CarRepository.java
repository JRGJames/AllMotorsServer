package alpha.allmotors.repository;

import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.domain.Pageable;

import alpha.allmotors.entity.CarEntity;

public interface CarRepository extends JpaRepository<CarEntity, Long> {

        // @Query("SELECT c FROM CarEntity c WHERE " +
        // "(:userId = 0 OR c.id_owner = :id_owner)" +
        // " AND (:brandList IS NULL OR c.brand IN :brandList)" +
        // " AND (:modelList IS NULL OR c.model IN :modelList)" +
        // " AND (:colorList IS NULL OR c.color IN :colorList)" +
        // " AND (:gearboxList IS NULL OR c.gearbox IN :gearboxList)" +
        // " AND (:fuelList IS NULL OR c.fuel IN :fuelList)" +
        // " AND (:typeList IS NULL OR c.type IN :typeList)" +
        // " AND (:yearStart IS NULL OR c.year >= :yearStart)" +
        // " AND (:yearEnd IS NULL OR c.year <= :yearEnd)" +
        // " AND (:seatsStart IS NULL OR c.seats >= :seatsStart)" +
        // " AND (:seatsEnd IS NULL OR c.seats <= :seatsEnd)" +
        // " AND (:doorsStart IS NULL OR c.doors >= :doorsStart)" +
        // " AND (:doorsEnd IS NULL OR c.doors <= :doorsEnd)" +
        // " AND (:priceStart IS NULL OR c.price >= :priceStart)" +
        // " AND (:priceEnd IS NULL OR c.price <= :priceEnd)" +
        // " AND (:horsepowerStart IS NULL OR c.horsepower >= :horsepowerStart)" +
        // " AND (:horsepowerEnd IS NULL OR c.horsepower <= :horsepowerEnd)" +
        // " AND (:distanceStart IS NULL OR c.distance >= :distanceStart)" +
        // " AND (:distanceEnd IS NULL OR c.distance <= :distanceEnd)")
        // Page<CarEntity> findCarsWithFilters(Pageable pageable,
        // @Param("id_owner") Long userId,
        // @Param("brandList") List<String> brandList,
        // @Param("modelList") List<String> modelList,
        // @Param("colorList") List<String> colorList,
        // @Param("gearboxList") List<String> gearboxList,
        // @Param("fuelList") List<String> fuelList,
        // @Param("typeList") List<String> typeList,
        // @Param("year") int yearStart,
        // @Param("year") int yearEnd,
        // @Param("seats") int seatsStart,
        // @Param("seats") int seatsEnd,
        // @Param("doors") int doorsStart,
        // @Param("doors") int doorsEnd,
        // @Param("price") int priceStart,
        // @Param("price") int priceEnd,
        // @Param("horsepower") int horsepowerStart,
        // @Param("horsepower") int horsepowerEnd,
        // @Param("distance") int distanceStart,
        // @Param("distance") int distanceEnd);

        @Query(value = "SELECT * FROM car ORDER BY views DESC LIMIT :resultCount", nativeQuery = true)
        List<CarEntity> findCarsByOrderByViewsDesc(Integer resultCount);

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

        @Query(value = "SELECT * FROM car WHERE gearbox = :gearbox ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByGearbox(String gearbox, Pageable pageable);

        @Query(value = "SELECT * FROM car WHERE fuel = :fuel ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByFuel(String fuel, Pageable pageable);

        @Query(value = "SELECT * FROM car WHERE type = :type ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByType(String type, Pageable pageable);

        @Query(value = "SELECT * FROM car WHERE location = :location ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByLocation(String location, Pageable pageable);

        @Query(value = "SELECT * FROM car WHERE status = :status ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByStatus(String status, Pageable pageable);

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

        @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND gearbox = :gearbox ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByUserIdAndGearbox(Long userId, String gearbox, Pageable pageable);

        @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND fuel = :fuel ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByUserIdAndFuel(Long userId, String fuel, Pageable pageable);

        @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND type = :type ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByUserIdAndType(Long userId, String type, Pageable pageable);

        @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND location = :location ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByUserIdAndLocation(Long userId, String location, Pageable pageable);

        @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND status = :status ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByUserIdAndStatus(Long userId, String status, Pageable pageable);

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
        Page<CarEntity> findCarsByUserIdAndHorsepowerRange(Long userId, int startHorsepower, int endHorsepower,
                        Pageable pageable);

        @Query(value = "SELECT * FROM car WHERE id_owner = :userId AND distance BETWEEN :startDistance AND :endDistance ORDER BY id DESC LIMIT :pageSize OFFSET :pageNumber * :pageSize", nativeQuery = true)
        Page<CarEntity> findCarsByUserIdAndDistanceRange(Long userId, int startDistance, int endDistance,
                        Pageable pageable);

        // Seach by title
        Page<CarEntity> findByUserIdAndTitleContainingIgnoreCase(Long userId, String title, Pageable pageable);

        Page<CarEntity> findByTitleContainingIgnoreCase(String searchText, Pageable pageable);

        @Modifying
        @Query(value = "ALTER TABLE car AUTO_INCREMENT = 1", nativeQuery = true)
        void resetAutoIncrement();
}
