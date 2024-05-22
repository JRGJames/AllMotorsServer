-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Apr 16, 2024 at 04:26 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allmotors`
--

DROP DATABASE allmotors;
CREATE DATABASE IF NOT EXISTS `allmotors` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `allmotors`;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` bigint NOT NULL,
  `id_owner` bigint NOT NULL,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `year` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seats` int NOT NULL,
  `doors` int NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `gearbox` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fuel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `views` bigint DEFAULT '0',
  `saves` bigint DEFAULT '0',
  `distance` int NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `horsepower` int DEFAULT NULL,
  `acceleration` float DEFAULT NULL,
  `emissions` float DEFAULT NULL,
  `drive` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `consumption` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `id_owner`, `title`, `price`, `currency`, `brand`, `model`, `year`, `color`, `seats`, `doors`, `description`, `location`, `city`, `gearbox`, `fuel`, `last_update`, `date_uploaded`, `views`, `saves`, `distance`, `type`, `horsepower`, `acceleration`, `emissions`, `drive`, `consumption`) VALUES
(1, 23, 'BMW 320ci e46', 33033, '€', 'hyundai', 'penelope', '2003', '#1F2937', 5, 3, 'El BMW E46 del 2003 con restyling representa un equilibrio perfecto entre diseño, rendimiento y tecnología. Las mejoras estéticas y técnicas introducidas en esta actualización hicieron de este modelo una opción atractiva para los entusiastas de los automóviles que buscan una experiencia de conducción superior combinada con la elegancia y calidad que caracteriza a BMW. A día de hoy, el E46 sigue siendo un modelo muy valorado por su diseño atemporal y su dinámica de conducción excepcional.', '-0.3784603198914027 39.4679336934979', '', 'manual', 'gasoline', '2024-05-22 17:39:35', NULL, 480, 2, 123000, 'coupe', 180, 8.3, 213, 'RWD', 10.4),
(2, 3, 'Chevrolet Bolt EV Corvette', 17300, '$', 'chevrolet', 'corvette', '1990', '#1F2937', 2, 3, 'while one house sleeps loudly one book reads', 'British Columbia', '', 'manual', 'hybrid', '2024-05-17 10:37:57', NULL, 93, 0, 897000, 'suv', 694, 3.4, 59.04, 'rwd', 5.79),
(4, 4, 'Nissan Golf', 3583, '€', 'nissan', 'golf', '2015', '#A52A2A', 3, 2, 'whenever one house fly quickly one car ate slowly', 'Nova Scotia', '', 'automatic', 'electric', '2024-05-17 10:47:05', NULL, 53, 0, 9000, 'hatchback', 71, 10, 93.09, 'rwd', 6.42),
(5, 2, 'Chevrolet F-150', 1265, '£', 'chevrolet', 'f-150', '1961', '#FFC107', 3, 4, 'before one car shines brightly the sandwich barks', 'Newfoundland and Labrador', '', 'manual', 'petrol', '2024-05-20 08:30:24', '2024-02-22 00:38:09', 13, 0, 318000, 'truck', 1257, 3.7, 64.38, 'fwd', 9.12),
(6, 1, 'Honda S60', 1004933, '€', 'Honda', 'S60', '1976', 'red', 5, 5, 'while a book shines brightly the cat ate', 'Basque Country', '', 'automatic', 'electric', '2024-02-22 00:38:09', '2024-02-22 00:38:09', 11, 0, 1208320, 'Convertible', 351, 8.4, 102.76, 'RWD', 9.12),
(7, 5, 'Chevrolet Civic', 3689, '€', 'chevrolet', 'civic', '1926', 'green', 5, 5, 'when the car ate one friend shines slowly and a sun barks softly', 'Valencia', '', 'manual', 'petrol', '2024-05-13 16:35:35', '2024-02-22 00:38:09', 2, 0, 61000, 'suv', 1185, 3.3, 45.93, 'rwd', 9.03),
(8, 2, 'Kia F-150', 1242127, '$', 'Kia', 'F-150', '1931', 'green', 6, 4, 'until the house fly one sandwich is', 'Catalonia', '', 'automatic', 'hybrid', '2024-02-22 00:38:09', '2024-02-22 00:38:09', 4, 0, 1094050, 'Sedan', 1007, 5, 61.76, 'AWD', 9.95),
(9, 1, 'Hyundai CX-5', 4559772, '€', 'Hyundai', 'CX-5', '1998', 'yellow', 6, 3, 'because a book reads slowly the friend barks', 'Castile and León', '', 'automatic', 'petrol', '2024-02-22 00:38:09', '2024-02-22 00:38:09', 43, 0, 620285, 'Hatchback', 1273, 8, 32.65, 'FWD', 6.34),
(10, 2, 'Hyundai Civic', 428536, '£', 'Hyundai', 'Civic', '2001', 'black', 5, 4, 'where one cat sleeps brightly the car fly softly or a sun sleeps', 'Andalusia', '', 'manual', 'petrol', '2024-02-22 00:38:09', '2024-02-22 00:38:09', 2, 0, 110204, 'Truck', 248, 6.1, 24.4, 'AWD', 8.22),
(11, 1, 'Hyundai F-150', 3352101, '£', 'Hyundai', 'F-150', '1961', 'orange', 5, 5, 'unless one friend reads a house is slowly and one house barks slowly', 'New Brunswick', '', 'manual', 'electric', '2024-02-22 00:38:09', '2024-02-22 00:38:09', 0, 0, 397078, 'Van', 1439, 9, 88.92, 'FWD', 8.31),
(13, 1, 'Chevrolet Soul', 1660237, '$', 'Chevrolet', 'Soul', '1971', 'yellow', 5, 4, 'even if the birds run the dog reads', 'Galicia', '', 'automatic', 'petrol', '2024-02-22 00:54:18', '2024-02-22 00:54:18', 3, 0, 444314, 'Convertible', 693, 2.5, 108.07, 'AWD', 5.91),
(14, 2, 'Volvo 3 Series', 1296794, '$', 'Volvo', '3 Series', '1964', 'green', 8, 4, 'because one sandwich run loudly a sun barks', 'Alberta', '', 'automatic', 'electric', '2024-02-22 00:54:18', '2024-02-22 00:54:18', 2, 0, 222849, 'Convertible', 1447, 9.3, 50.25, 'AWD', 9.12),
(15, 1, 'Volkswagen S60', 3202159, '£', 'Volkswagen', 'S60', '1958', 'green', 4, 4, 'while one cat fly slowly a house ate and one house sleeps', 'Newfoundland and Labrador', '', 'automatic', 'electric', '2024-02-22 00:54:18', '2024-02-22 00:54:18', 76, 0, 536065, 'Hatchback', 589, 9.7, 29.96, 'FWD', 6.79),
(16, 1, 'Ford A4', 4711972, '$', 'Ford', 'A4', '1997', 'green', 4, 3, 'unless a birds shines a sandwich is', 'Galicia', '', 'automatic', 'electric', '2024-02-22 00:54:18', '2024-02-22 00:54:18', 32, 0, 1464771, 'SUV', 668, 8.7, 77.81, 'RWD', 8.21),
(17, 2, 'Mercedes-Benz F-150', 3016212, '$', 'Mercedes-Benz', 'F-150', '1942', 'gray', 4, 2, 'once a dog ate brightly a house reads and one car shines quickly', 'Ontario', '', 'manual', 'petrol', '2024-02-22 00:54:19', '2024-02-22 00:54:19', 1, 0, 989919, 'Coupe', 659, 5.4, 72.63, 'AWD', 7.25),
(18, 1, 'Volkswagen CX-5', 4586970, '¥', 'Volkswagen', 'CX-5', '1982', 'purple', 5, 5, 'so that the sandwich sleeps slowly one sandwich reads', 'Madrid', '', 'manual', 'electric', '2024-02-22 00:54:19', '2024-02-22 00:54:19', 3, 0, 595954, 'Sedan', 1129, 2.5, 104.69, 'RWD', 7.71),
(19, 2, 'Volkswagen Model 3', 2410960, '$', 'Volkswagen', 'Model 3', '1952', 'yellow', 4, 4, 'whether the car shines softly the birds run and the dog run brightly', 'Yukon', '', 'automatic', 'petrol', '2024-02-22 00:54:19', '2024-02-22 00:54:19', 0, 0, 399186, 'Van', 1495, 9, 84.82, 'FWD', 5.84),
(20, 2, 'Ford A4', 3500048, '€', 'Ford', 'A4', '1971', 'green', 4, 4, 'if a sun ate a cat ate', 'Ontario', '', 'manual', 'gasoline', '2024-02-22 00:54:19', '2024-02-22 00:54:19', 0, 0, 1365399, 'Truck', 1218, 4.2, 70.55, 'AWD', 7.51),
(21, 2, 'Mazda F-150', 1779597, '€', 'Mazda', 'F-150', '1964', 'red', 2, 2, 'once the car shines loudly the sun run brightly', 'Northwest Territories', '', 'automatic', 'gasoline', '2024-02-22 00:54:19', '2024-02-22 00:54:19', 0, 0, 695281, 'Coupe', 638, 3.7, 39.31, 'RWD', 6.26),
(24, 1, 'Hyundai E-Class', 4994315, '$', 'Hyundai', 'E-Class', '1998', 'red', 4, 4, 'unless one sandwich shines one dog barks', 'Madrid', '', 'manual', 'electric', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 1, 0, 1223582, 'Sedan', 144, 6.3, 44.36, 'FWD', 7.33),
(25, 2, 'Volvo E-Class', 1405668, '£', 'Volvo', 'E-Class', '2006', 'gray', 5, 3, 'although a sandwich ate slowly a sun barks', 'Manitoba', '', 'manual', 'hybrid', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 1161575, 'Wagon', 753, 4.1, 74.21, 'AWD', 6.41),
(26, 1, 'Ford F-150', 1753361, '¥', 'Ford', 'F-150', '1982', 'blue', 7, 2, 'when the friend ate quickly a car is', 'Madrid', '', 'manual', 'electric', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 67632, 'Truck', 457, 4.3, 16.36, 'FWD', 7.32),
(27, 2, 'Kia A4', 210517, '¥', 'Kia', 'A4', '2021', 'orange', 4, 3, 'as the house fly one dog sleeps', 'Castile and León', '', 'automatic', 'electric', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 1473595, 'Van', 165, 9.8, 30.86, 'AWD', 7.56),
(28, 1, 'Tesla Outback', 2391816, '€', 'Tesla', 'Outback', '1927', 'black', 7, 4, 'than a dog barks brightly the sandwich is slowly or one house run', 'Yukon', '', 'automatic', 'electric', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 277870, 'Convertible', 223, 8.1, 76.76, 'FWD', 8.52),
(29, 1, 'Mazda Cruze', 4477333, '£', 'Mazda', 'Cruze', '1984', 'yellow', 8, 5, 'though one sandwich sleeps slowly one friend run', 'Saskatchewan', '', 'manual', 'hybrid', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 1404429, 'Truck', 279, 3.3, 80.44, 'FWD', 7.13),
(30, 2, 'Volkswagen Model 3', 338521, '¥', 'Volkswagen', 'Model 3', '2015', 'white', 6, 5, 'whenever the house ate the house is but a house barks quickly', 'Castile and León', '', 'manual', 'petrol', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 194974, 'Hatchback', 702, 3.1, 68.59, 'RWD', 8.8),
(31, 2, 'Chevrolet Golf', 1146093, '$', 'Chevrolet', 'Golf', '1956', 'orange', 5, 2, 'until the dog sleeps a friend run', 'Northwest Territories', '', 'automatic', 'hybrid', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 115985, 'Convertible', 83, 8.9, 13.67, 'AWD', 9.74),
(32, 1, 'Chevrolet F-150', 334052, '¥', 'Chevrolet', 'F-150', '1931', 'yellow', 7, 3, 'that a sandwich barks the cat shines slowly and a book is softly', 'Nova Scotia', '', 'automatic', 'hybrid', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 730325, 'Coupe', 223, 6.3, 62.65, 'RWD', 9.18),
(33, 2, 'Hyundai E-Class', 1676631, '£', 'Hyundai', 'E-Class', '1927', 'orange', 4, 5, 'once one sandwich sleeps the sun sleeps quickly', 'Nova Scotia', '', 'automatic', 'gasoline', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 3, 0, 840505, 'Convertible', 238, 9.1, 35.63, 'FWD', 6.08),
(34, 2, 'Mercedes-Benz Model 3', 2809, '¥', 'mercedes-benz', 'model 3', '2015', '#00FFFF', 3, 3, 'since the car is softly the birds ate', 'Northwest Territories', '', 'manual', 'petrol', '2024-05-13 16:07:13', '2024-03-11 01:48:33', 13, 0, 920000, 'convertible', 398, 6.7, 31.66, 'fwd', 9.02),
(35, 2, 'Mercedes-Benz F-150', 439885, '$', 'Mercedes-Benz', 'F-150', '2016', 'red', 5, 5, 'whether the sun shines quickly one sun fly loudly', 'Valencia', '', 'automatic', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 500939, 'Sedan', 687, 3.7, 99.37, 'AWD', 9.76),
(36, 1, 'BMW S60', 442753, '£', 'BMW', 'S60', '1969', 'green', 2, 2, 'whenever one dog run a sun shines quickly and one dog run quickly', 'Ontario', '', 'automatic', 'hybrid', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 953301, 'Wagon', 777, 5.6, 20.48, 'RWD', 8.88),
(37, 2, 'Volvo S60', 3420648, '$', 'Volvo', 'S60', '1961', 'green', 5, 2, 'when a sandwich fly brightly a car sleeps slowly and a birds run quickly', 'Nova Scotia', '', 'manual', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1181640, 'Sedan', 201, 2.9, 59.41, 'FWD', 8.02),
(38, 2, 'Subaru Golf', 1118633, '$', 'Subaru', 'Golf', '2021', 'blue', 7, 4, 'since a birds shines one car is', 'Castile and León', '', 'automatic', 'electric', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1493152, 'Van', 451, 9.2, 77.5, 'FWD', 9.09),
(39, 1, 'Toyota F-150', 2225092, '$', 'Toyota', 'F-150', '1997', 'orange', 2, 3, 'whether the car ate the dog sleeps brightly but one cat ate', 'Ontario', '', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 168290, 'Truck', 948, 2.9, 73.51, 'RWD', 9.84),
(40, 1, 'Audi Camry', 4311021, '€', 'Audi', 'Camry', '1928', 'red', 8, 3, 'as a car is the car reads softly or the friend run brightly', 'Saskatchewan', '', 'automatic', 'hybrid', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1052251, 'Sedan', 968, 7.8, 56.72, 'AWD', 9.36),
(41, 1, 'Chevrolet A4', 3852672, '€', 'Chevrolet', 'A4', '1986', 'yellow', 8, 5, 'because a sandwich is the friend run quickly and a cat run', 'Saskatchewan', '', 'manual', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 129959, 'SUV', 1053, 8.8, 38.66, 'RWD', 6.32),
(42, 1, 'Ford Camry', 4856583, '€', 'Ford', 'Camry', '1923', 'red', 3, 4, 'while one car fly one sandwich sleeps quickly or one house run', 'Ontario', '', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 392614, 'Hatchback', 591, 7.7, 10.11, 'AWD', 9.77),
(43, 2, 'Mercedes-Benz Soul', 4522769, '£', 'Mercedes-Benz', 'Soul', '1963', 'orange', 5, 4, 'when one dog run one dog sleeps loudly and one cat is brightly', 'Madrid', '', 'manual', 'electric', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 839608, 'Sedan', 228, 5.1, 56.47, 'AWD', 5.76),
(44, 1, 'Mazda Soul', 2322613, '¥', 'Mazda', 'Soul', '1967', 'black', 7, 3, 'so that a sun ate one sun shines quickly', 'Newfoundland and Labrador', '', 'manual', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 51890, 'SUV', 1407, 6.6, 83.75, 'AWD', 9.18),
(45, 2, 'Audi Soul', 266977, '£', 'Audi', 'Soul', '1989', 'green', 8, 3, 'than the house reads the book is and the dog shines', 'Alberta', '', 'manual', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1401384, 'SUV', 312, 7.4, 87.16, 'AWD', 7.53),
(46, 1, 'Ford Cruze', 1762670, '¥', 'Ford', 'Cruze', '1994', 'white', 2, 5, 'because one sun run slowly a friend barks', 'Saskatchewan', '', 'automatic', 'electric', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 696333, 'Coupe', 765, 3.4, 58.6, 'FWD', 6.64),
(47, 1, 'Toyota Elantra', 2754087, '$', 'Toyota', 'Elantra', '2008', 'purple', 3, 4, 'though a sandwich fly a car reads loudly but the sun reads', 'Quebec', '', 'manual', 'hybrid', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 3, 0, 1129176, 'Coupe', 1287, 7.2, 109.87, 'FWD', 9.22),
(48, 1, 'Mercedes-Benz E-Class', 900475, '¥', 'Mercedes-Benz', 'E-Class', '1969', 'purple', 4, 2, 'while the house run loudly a sun is', 'British Columbia', '', 'automatic', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 1, 0, 870177, 'SUV', 406, 8.2, 69.45, 'AWD', 6.24),
(49, 2, 'Toyota Cruze', 929264, '€', 'Toyota', 'Cruze', '1948', 'red', 4, 2, 'so that a sun shines loudly the sandwich ate and one sandwich ate loudly', 'Galicia', '', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 50598, 'Hatchback', 607, 3.4, 93.89, 'AWD', 8.81),
(50, 2, 'Nissan Civic', 2353839, '€', 'Nissan', 'Civic', '1978', 'blue', 4, 5, 'as one dog barks the book run slowly', 'Saskatchewan', '', 'automatic', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1289088, 'Wagon', 556, 8.8, 99.16, 'AWD', 9.46),
(51, 2, 'BMW F-150', 1658725, '€', 'BMW', 'F-150', '1970', 'blue', 5, 2, 'while one sandwich sleeps one birds barks but the birds run loudly', 'Alberta', '', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 584244, 'Van', 1060, 3.1, 28.83, 'FWD', 5.87),
(52, 1, 'BMW F-150', 4766678, '€', 'BMW', 'F-150', '1945', 'green', 7, 5, 'in order to one house shines softly the dog is', 'Nunavut', '', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 211487, 'Hatchback', 1473, 3.4, 19.73, 'AWD', 7.59),
(53, 2, 'Kia Cruze', 2644933, '£', 'Kia', 'Cruze', '1939', 'gray', 7, 3, 'although the friend shines quickly one birds fly brightly but a sun is', 'Catalonia', '', 'manual', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 472397, 'Sedan', 1052, 4.9, 106.65, 'FWD', 9.15),
(54, 2, 'Nissan Cruze', 984565, '$', 'Nissan', 'Cruze', '1994', 'blue', 3, 5, 'so that the cat shines the dog reads brightly or a cat run loudly', 'Manitoba', '', 'manual', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 256429, 'Truck', 1280, 3.6, 90.57, 'AWD', 7.14),
(55, 2, 'Tesla CX-5', 148015, '$', 'Tesla', 'CX-5', '1921', 'purple', 7, 3, 'as the sun reads loudly a friend run quickly', 'British Columbia', '', 'manual', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 139182, 'Truck', 1368, 2.3, 63.74, 'AWD', 9.26),
(56, 1, 'Kia 3 Series', 1181686, '€', 'Kia', '3 Series', '1962', 'green', 4, 4, 'before one car barks loudly the sandwich fly', 'Saskatchewan', '', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 13988, 'Van', 254, 7.5, 84.32, 'FWD', 7.25),
(57, 1, 'BMW 3 Series', 3130151, '€', 'BMW', '3 Series', '1926', 'green', 6, 4, 'before one dog reads softly one car sleeps', 'Northwest Territories', '', 'automatic', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 741711, 'Truck', 840, 10, 88.64, 'RWD', 6.67),
(58, 1, 'Audi Cruze', 4085434, '€', 'Audi', 'Cruze', '1940', 'red', 3, 4, 'unless a car sleeps the house barks', 'Newfoundland and Labrador', '', 'manual', 'hybrid', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 300894, 'Sedan', 297, 8.7, 84.74, 'FWD', 5.51),
(59, 2, 'Kia Model 3', 4404418, '£', 'Kia', 'Model 3', '1981', 'black', 6, 5, 'unless a dog run brightly a sun barks but one friend sleeps', 'Nova Scotia', '', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1214334, 'Truck', 236, 5.2, 82.23, 'FWD', 5.75),
(60, 1, 'Kia Cruze', 1028422, '¥', 'Kia', 'Cruze', '1925', 'yellow', 3, 3, 'even if the sun sleeps the cat run but one car reads', 'Ontario', '', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 356164, 'Coupe', 969, 8.6, 21.2, 'FWD', 5.56),
(61, 1, 'Volvo Golf', 4049004, '£', 'Volvo', 'Golf', '2014', 'gray', 2, 4, 'after a book fly softly a friend fly slowly', 'Newfoundland and Labrador', '', 'manual', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1039817, 'Van', 1256, 7.2, 74.7, 'FWD', 5.53),
(62, 1, 'Chevrolet Cruze', 4421168, '£', 'Chevrolet', 'Cruze', '2000', 'purple', 4, 5, 'that one friend sleeps loudly the cat run but the sun ate', 'Andalusia', '', 'automatic', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 589517, 'SUV', 559, 2.3, 104.48, 'RWD', 7.6),
(63, 1, 'Subaru Model 3', 3094399, '¥', 'Subaru', 'Model 3', '1943', 'black', 3, 3, 'unless a sandwich reads quickly one sandwich barks', 'Ontario', '', 'automatic', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 551530, 'SUV', 237, 4.5, 89.14, 'RWD', 6.06),
(64, 1, 'Chevrolet Model 3', 1967778, '€', 'Chevrolet', 'Model 3', '2013', 'purple', 6, 3, 'while a sandwich barks brightly one cat reads', 'New Brunswick', '', 'automatic', 'electric', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 811275, 'Wagon', 1339, 8.6, 53.5, 'RWD', 5.66),
(65, 1, 'Toyota CX-5', 2365749, '¥', 'Toyota', 'CX-5', '1944', 'red', 4, 2, 'unless a sun fly a car is', 'Manitoba', '', 'manual', 'petrol', '2024-05-17 10:56:37', '2024-03-11 01:48:34', 1, 0, 423118, 'Sedan', 1328, 2.4, 64.61, 'AWD', 9.31),
(66, 1, 'Tesla Cruze', 857361, '¥', 'Tesla', 'Cruze', '2007', 'green', 5, 5, 'so that the dog ate a birds run loudly and a sun barks', 'Nunavut', '', 'manual', 'electric', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 2, 0, 945772, 'Coupe', 1329, 3.8, 21.63, 'RWD', 7.22),
(67, 1, 'Tesla A4', 3199869, '$', 'Tesla', 'A4', '1939', 'gray', 8, 2, 'before a house barks the birds shines slowly and the book sleeps brightly', 'Nova Scotia', '', 'automatic', 'electric', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 711565, 'Wagon', 617, 6.1, 62.64, 'AWD', 9),
(68, 1, 'Mazda S60', 1006216, '€', 'Mazda', 'S60', '2003', 'white', 7, 3, 'although one sandwich ate loudly one birds fly', 'Prince Edward Island', '', 'manual', 'electric', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 939428, 'Wagon', 1397, 5.9, 65.46, 'AWD', 9.53),
(69, 2, 'Volkswagen S60', 4786257, '€', 'Volkswagen', 'S60', '1983', 'gray', 2, 3, 'until a sun run slowly the car fly', 'Nova Scotia', '', 'manual', 'hybrid', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1258926, 'Van', 664, 7.4, 12.26, 'AWD', 6.68),
(70, 1, 'Volkswagen Soul', 2930870, '¥', 'Volkswagen', 'Soul', '2003', 'yellow', 6, 5, 'since a house barks quickly a sandwich is', 'Andalusia', '', 'manual', 'hybrid', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 415409, 'Wagon', 480, 7.3, 20.21, 'RWD', 8.9),
(71, 2, 'Kia 3 Series', 3173251, '€', 'Kia', '3 Series', '1987', 'yellow', 2, 4, 'that a cat is slowly one cat sleeps', 'Newfoundland and Labrador', '', 'automatic', 'gasoline', '2024-03-11 01:48:35', '2024-03-11 01:48:35', 0, 0, 320760, 'Truck', 773, 9.3, 18.05, 'AWD', 8.96),
(72, 2, 'Volkswagen Cruze', 3428190, '¥', 'Volkswagen', 'Cruze', '2023', 'gray', 7, 5, 'before one dog sleeps slowly one friend run softly but the car fly brightly', 'Alberta', '', 'manual', 'electric', '2024-03-11 01:48:35', '2024-03-11 01:48:35', 0, 0, 610984, 'Convertible', 1209, 8.5, 69.37, 'RWD', 8.03),
(73, 1, 'Nissan Model 3', 3051360, '¥', 'Nissan', 'Model 3', '1985', 'white', 8, 5, 'though one car ate the cat is slowly', 'Galicia', '', 'manual', 'gasoline', '2024-03-11 01:48:35', '2024-03-11 01:48:35', 0, 0, 194080, 'SUV', 681, 4, 65.41, 'FWD', 8.77),
(74, 3, 'Mercedes-Benz Civic', 3405723, '£', 'Mercedes-Benz', 'Civic', '2013', 'black', 8, 3, 'although the house shines the car shines quickly', '41.8719, 12.5674', '', 'manual', 'electric', '2024-04-10 08:05:26', '2024-04-10 08:05:26', 2, 0, 94017, 'Convertible', 710, 4.9, 66.91, 'AWD', 7.4);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` bigint NOT NULL,
  `creation_date` datetime DEFAULT NULL,
  `notifications` int DEFAULT '0',
  `id_member_one` bigint NOT NULL,
  `id_member_two` bigint NOT NULL,
  `deleted_by` bigint DEFAULT NULL,
  `id_car` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint NOT NULL,
  `id_user` bigint NOT NULL,
  `id_car` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `id_user`, `id_car`) VALUES
(294, 1, 15),
(295, 1, 18),
(296, 1, 24),
(298, 2, 5),
(299, 2, 47),
(300, 2, 1),
(585, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_car` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_url`, `id_car`) VALUES
(890, 'image1.jpg', 2),
(891, 'image4.jpg', 2),
(892, 'image1.jpg', 2),
(893, 'image2.jpg', 2),
(894, 'image9.jpg', 2),
(895, 'image10.jpg', 2),
(896, 'image8.jpeg', 2),
(904, 'image8.jpeg', 4),
(905, 'image1.jpg', 5),
(906, 'image2.jpg', 5),
(907, 'image8.jpeg', 5),
(908, 'image6.jpg', 5),
(909, 'image10.jpg', 5),
(910, 'image1.jpg', 5),
(911, 'image9.jpg', 5),
(912, 'image1.jpg', 6),
(913, 'image6.jpg', 6),
(914, 'image5.jpg', 6),
(915, 'image5.jpg', 7),
(916, 'image10.jpg', 7),
(917, 'image8.jpeg', 7),
(918, 'image5.jpg', 7),
(919, 'image1.jpg', 7),
(920, 'image2.jpg', 7),
(921, 'image5.jpg', 7),
(922, 'image10.jpg', 8),
(923, 'image5.jpg', 9),
(924, 'image9.jpg', 9),
(925, 'image7.jpg', 9),
(926, 'image3.jpg', 9),
(927, 'image10.jpg', 9),
(928, 'image9.jpg', 9),
(929, 'image5.jpg', 9),
(930, 'image8.jpeg', 10),
(931, 'image3.jpg', 11),
(932, 'image3.jpg', 11),
(933, 'image10.jpg', 11),
(934, 'image1.jpg', 11),
(935, 'image4.jpg', 11),
(936, 'image9.jpg', 13),
(937, 'image3.jpg', 13),
(938, 'image4.jpg', 13),
(939, 'image3.jpg', 13),
(940, 'image3.jpg', 13),
(941, 'image8.jpeg', 14),
(942, 'image4.jpg', 14),
(943, 'image1.jpg', 14),
(944, 'image6.jpg', 14),
(945, 'image8.jpeg', 14),
(946, 'image7.jpg', 14),
(947, 'image1.jpg', 15),
(948, 'image5.jpg', 15),
(949, 'image4.jpg', 15),
(950, 'image10.jpg', 15),
(951, 'image6.jpg', 15),
(952, 'image5.jpg', 15),
(953, 'image6.jpg', 15),
(954, 'image6.jpg', 16),
(955, 'image6.jpg', 16),
(956, 'image9.jpg', 16),
(957, 'image9.jpg', 16),
(958, 'image6.jpg', 16),
(959, 'image6.jpg', 17),
(960, 'image4.jpg', 17),
(961, 'image1.jpg', 18),
(962, 'image8.jpeg', 18),
(963, 'image7.jpg', 18),
(964, 'image2.jpg', 18),
(965, 'image4.jpg', 18),
(966, 'image8.jpeg', 18),
(967, 'image7.jpg', 19),
(968, 'image1.jpg', 19),
(969, 'image5.jpg', 19),
(970, 'image7.jpg', 19),
(971, 'image3.jpg', 19),
(972, 'image2.jpg', 19),
(973, 'image1.jpg', 19),
(974, 'image1.jpg', 19),
(975, 'image10.jpg', 20),
(976, 'image7.jpg', 20),
(977, 'image3.jpg', 21),
(978, 'image9.jpg', 21),
(979, 'image10.jpg', 21),
(980, 'image6.jpg', 21),
(981, 'image6.jpg', 21),
(982, 'image10.jpg', 21),
(988, 'image4.jpg', 24),
(989, 'image5.jpg', 24),
(990, 'image5.jpg', 24),
(991, 'image4.jpg', 24),
(992, 'image4.jpg', 24),
(993, 'image1.jpg', 24),
(994, 'image10.jpg', 24),
(995, 'image8.jpeg', 24),
(996, 'image6.jpg', 25),
(997, 'image3.jpg', 25),
(998, 'image6.jpg', 25),
(999, 'image3.jpg', 25),
(1000, 'image10.jpg', 25),
(1001, 'image7.jpg', 26),
(1002, 'image7.jpg', 26),
(1003, 'image7.jpg', 26),
(1004, 'image4.jpg', 26),
(1005, 'image6.jpg', 26),
(1006, 'image7.jpg', 27),
(1007, 'image5.jpg', 27),
(1008, 'image10.jpg', 27),
(1009, 'image5.jpg', 27),
(1010, 'image10.jpg', 27),
(1011, 'image6.jpg', 27),
(1012, 'image9.jpg', 28),
(1013, 'image10.jpg', 29),
(1014, 'image4.jpg', 30),
(1015, 'image10.jpg', 30),
(1016, 'image6.jpg', 30),
(1017, 'image6.jpg', 31),
(1018, 'image8.jpeg', 31),
(1019, 'image10.jpg', 31),
(1020, 'image6.jpg', 31),
(1021, 'image10.jpg', 31),
(1022, 'image9.jpg', 31),
(1023, 'image2.jpg', 32),
(1024, 'image1.jpg', 33),
(1025, 'image7.jpg', 33),
(1026, 'image4.jpg', 34),
(1027, 'image8.jpeg', 34),
(1028, 'image8.jpeg', 34),
(1029, 'image3.jpg', 34),
(1030, 'image10.jpg', 34),
(1031, 'image2.jpg', 35),
(1032, 'image10.jpg', 35),
(1033, 'image8.jpeg', 35),
(1034, 'image2.jpg', 35),
(1035, 'image6.jpg', 36),
(1036, 'image4.jpg', 36),
(1037, 'image1.jpg', 36),
(1038, 'image7.jpg', 36),
(1039, 'image7.jpg', 36),
(1040, 'image4.jpg', 36),
(1041, 'image2.jpg', 36),
(1042, 'image5.jpg', 36),
(1043, 'image10.jpg', 37),
(1044, 'image8.jpeg', 37),
(1045, 'image8.jpeg', 37),
(1046, 'image4.jpg', 37),
(1047, 'image3.jpg', 37),
(1048, 'image8.jpeg', 37),
(1049, 'image7.jpg', 37),
(1050, 'image1.jpg', 37),
(1051, 'image6.jpg', 38),
(1052, 'image1.jpg', 39),
(1053, 'image5.jpg', 39),
(1054, 'image1.jpg', 39),
(1055, 'image7.jpg', 40),
(1056, 'image3.jpg', 41),
(1057, 'image8.jpeg', 41),
(1058, 'image9.jpg', 41),
(1059, 'image1.jpg', 41),
(1060, 'image2.jpg', 41),
(1061, 'image4.jpg', 41),
(1062, 'image2.jpg', 41),
(1063, 'image2.jpg', 41),
(1064, 'image10.jpg', 42),
(1065, 'image10.jpg', 42),
(1066, 'image1.jpg', 43),
(1067, 'image6.jpg', 43),
(1068, 'image3.jpg', 44),
(1069, 'image1.jpg', 44),
(1070, 'image3.jpg', 44),
(1071, 'image1.jpg', 44),
(1072, 'image7.jpg', 44),
(1073, 'image7.jpg', 44),
(1074, 'image7.jpg', 45),
(1075, 'image1.jpg', 45),
(1076, 'image3.jpg', 45),
(1077, 'image3.jpg', 45),
(1078, 'image5.jpg', 45),
(1079, 'image9.jpg', 45),
(1080, 'image6.jpg', 45),
(1081, 'image9.jpg', 45),
(1082, 'image7.jpg', 46),
(1083, 'image9.jpg', 46),
(1084, 'image5.jpg', 46),
(1085, 'image3.jpg', 46),
(1086, 'image1.jpg', 46),
(1087, 'image3.jpg', 46),
(1088, 'image3.jpg', 46),
(1089, 'image7.jpg', 46),
(1090, 'image5.jpg', 47),
(1091, 'image3.jpg', 47),
(1092, 'image3.jpg', 47),
(1093, 'image8.jpeg', 47),
(1094, 'image2.jpg', 47),
(1095, 'image5.jpg', 47),
(1096, 'image4.jpg', 47),
(1097, 'image4.jpg', 47),
(1098, 'image6.jpg', 48),
(1099, 'image8.jpeg', 48),
(1100, 'image4.jpg', 48),
(1101, 'image6.jpg', 48),
(1102, 'image5.jpg', 48),
(1103, 'image6.jpg', 49),
(1104, 'image10.jpg', 50),
(1105, 'image7.jpg', 50),
(1106, 'image10.jpg', 50),
(1107, 'image3.jpg', 50),
(1108, 'image5.jpg', 50),
(1109, 'image4.jpg', 51),
(1110, 'image9.jpg', 51),
(1111, 'image2.jpg', 51),
(1112, 'image2.jpg', 52),
(1113, 'image9.jpg', 52),
(1114, 'image6.jpg', 52),
(1115, 'image9.jpg', 52),
(1116, 'image4.jpg', 52),
(1117, 'image1.jpg', 52),
(1118, 'image9.jpg', 52),
(1119, 'image1.jpg', 53),
(1120, 'image2.jpg', 53),
(1121, 'image6.jpg', 53),
(1122, 'image7.jpg', 54),
(1123, 'image9.jpg', 54),
(1124, 'image4.jpg', 54),
(1125, 'image5.jpg', 54),
(1126, 'image5.jpg', 54),
(1127, 'image10.jpg', 54),
(1128, 'image9.jpg', 55),
(1129, 'image10.jpg', 55),
(1130, 'image8.jpeg', 55),
(1131, 'image10.jpg', 56),
(1132, 'image6.jpg', 56),
(1133, 'image5.jpg', 57),
(1134, 'image4.jpg', 57),
(1135, 'image7.jpg', 57),
(1136, 'image6.jpg', 57),
(1137, 'image1.jpg', 57),
(1138, 'image5.jpg', 57),
(1139, 'image8.jpeg', 57),
(1140, 'image9.jpg', 57),
(1141, 'image7.jpg', 58),
(1142, 'image3.jpg', 58),
(1143, 'image6.jpg', 58),
(1144, 'image3.jpg', 58),
(1145, 'image4.jpg', 58),
(1146, 'image9.jpg', 58),
(1147, 'image10.jpg', 58),
(1148, 'image4.jpg', 59),
(1149, 'image3.jpg', 59),
(1150, 'image4.jpg', 59),
(1151, 'image7.jpg', 59),
(1152, 'image9.jpg', 60),
(1153, 'image8.jpeg', 60),
(1154, 'image2.jpg', 60),
(1155, 'image3.jpg', 60),
(1156, 'image6.jpg', 61),
(1157, 'image10.jpg', 61),
(1158, 'image6.jpg', 61),
(1159, 'image4.jpg', 61),
(1160, 'image9.jpg', 62),
(1161, 'image7.jpg', 62),
(1162, 'image5.jpg', 63),
(1163, 'image8.jpeg', 64),
(1164, 'image1.jpg', 64),
(1165, 'image7.jpg', 65),
(1166, 'image6.jpg', 65),
(1167, 'image8.jpeg', 65),
(1168, 'image8.jpeg', 66),
(1169, 'image3.jpg', 66),
(1170, 'image1.jpg', 66),
(1171, 'image1.jpg', 66),
(1172, 'image1.jpg', 66),
(1173, 'image6.jpg', 66),
(1174, 'image8.jpeg', 66),
(1175, 'image6.jpg', 66),
(1176, 'image2.jpg', 67),
(1177, 'image6.jpg', 67),
(1178, 'image5.jpg', 67),
(1179, 'image6.jpg', 68),
(1180, 'image9.jpg', 68),
(1181, 'image9.jpg', 68),
(1182, 'image1.jpg', 68),
(1183, 'image3.jpg', 69),
(1184, 'image9.jpg', 69),
(1185, 'image7.jpg', 69),
(1186, 'image7.jpg', 69),
(1187, 'image9.jpg', 69),
(1188, 'image3.jpg', 69),
(1189, 'image8.jpeg', 70),
(1190, 'image9.jpg', 70),
(1191, 'image1.jpg', 70),
(1192, 'image7.jpg', 70),
(1193, 'image8.jpeg', 71),
(1194, 'image3.jpg', 71),
(1195, 'image4.jpg', 71),
(1196, 'image10.jpg', 71),
(1197, 'image9.jpg', 71),
(1198, 'image1.jpg', 71),
(1199, 'image6.jpg', 71),
(1200, 'image8.jpeg', 71),
(1201, 'image10.jpg', 72),
(1202, 'image1.jpg', 72),
(1203, 'image3.jpg', 72),
(1204, 'image9.jpg', 72),
(1205, 'image9.jpg', 73),
(1206, 'image3.jpg', 73),
(1207, 'image1.jpg', 73),
(1208, 'image7.jpg', 74),
(1209, 'image10.jpg', 74),
(1242, 'd889ce20-cef2-44c8-b5a7-65de4cf95ab4.jpg', 4),
(1252, 'f0218e6b-d127-45f1-8401-45222c1dddae.jpg', 1),
(1253, '074a865f-7a4d-459b-8ea4-d1eea4337a60.jpg', 1),
(1254, 'fab7dd92-9922-4d50-8b02-3bf2b9ae5b4e.jpg', 1),
(1255, '3baf5b68-fb90-444f-afad-c52f07cd0b34.jpg', 1),
(1257, 'f1e52be2-d88f-42a7-b404-41c36f3951ae.jpg', 1),
(1258, '37644e50-29ce-4e51-9838-df7898489a17.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` bigint NOT NULL,
  `content` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sent_time` datetime DEFAULT NULL,
  `is_liked` tinyint(1) DEFAULT '0',
  `is_read` tinyint(1) DEFAULT '0',
  `id_sender` bigint DEFAULT NULL,
  `id_receiver` bigint NOT NULL,
  `id_chat` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` bigint NOT NULL,
  `id_car` bigint NOT NULL,
  `modified` datetime NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` bigint NOT NULL,
  `id_rated_user` bigint NOT NULL,
  `id_rating_user` bigint NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `id_rated_user`, `id_rating_user`, `score`) VALUES
(1, 1, 2, 4),
(2, 2, 1, 3),
(3, 1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `phone` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` tinyint(1) DEFAULT '0',
  `member_since` datetime DEFAULT NULL,
  `last_connection` datetime DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  `actived` tinyint(1) DEFAULT '1',
  `reports` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `gender`, `birthdate`, `location`, `country`, `city`, `description`, `profile_picture`, `profile_background`, `status`, `phone`, `email`, `password`, `role`, `member_since`, `last_connection`, `banned`, `actived`, `reports`) VALUES
(1, 'Fernando', 'Alonso', 'ElNano', 1, '2022-02-24 04:25:00', '', 'Spain', 'Asturias', 'El Nano es una bala azul que sin cañónDispara en un circuito directo al corazónEl Nano no es humano, el Nano es inmortalY sale en las revistas junto a Hulk y a SupermamEl Nano es un gigante en un cuerpo de mortalY nadie le echa el guante, nadie lo puede alcanzar                                      ', 'd57976ef-26fa-481d-8410-a4be1ef3e97b.webp', 'b1049c1f-addb-4d25-acf7-cb16e46a51b0.webp', 1, '633974333', 'nano@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '1996-07-15 15:35:07', '1936-02-15 00:37:41', 0, 1, 0),
(2, 'Carlos', 'Sainz', 'carlossainz', 0, '1991-05-16 16:56:24', '', 'Spain', 'Madrid', '             Carlos Sainz, il matador. Smooooooth operatoooor      ', 'b1fcd965-cdfc-4f37-ba24-604b6bb845cb.jpg', '9d9a48f6-82aa-4bde-9536-c33a32bf35c4.jpeg', 0, '655974455', 'sainz@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2019-02-06 02:54:17', '1969-08-30 01:11:21', 0, 1, 0),
(3, 'Amador', 'Rivas', 'capitanSalam1', 1, '1940-01-24 16:53:42', '', 'Italy', 'British Columbia', ' Quieres salami, merengue merengue ', 'f9fec625-b1c1-4f48-a915-a8ad58a2e49b.jpg', '40118821-2bab-47c8-ab3f-fe84a8c16b8c.jpg', 0, '561079640', 'alalat0@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(4, 'Ramón', 'Melendi', 'milindr1', 1, '1957-07-05 01:34:14', '', 'South Africa', 'British Columbia', '    Siete vidas tiene un gatoComo una y cuento cienAy y como de hablar no cansoVoy y te como a ti tambiénYa ha acabado el Gran HermanoAbre un buen champan FrancésQue lo mejor de tol programaAy fue la novia de un tal Ness        ', '4ceac9e6-3728-42b0-81ed-9b00b7b98a76.jpg', '3d3a41b0-a58a-4291-93bd-532845faa431.jpg', 0, '783044591', 'elopui1@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(5, 'Kakarotto', 'Son', 'gokuSan', 1, '1942-01-27 10:48:02', '', 'China', 'Madrid', 'Yo se que a veces peleamos, pero que rico cuando chingamos', '16219753-0576-44af-9abb-01a891698a18.jpg', '4f290a90-c535-4cc0-be90-1a251ce2c191.webp', 0, '264594045', 'lauazn2@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(6, 'Raquel', 'López', 'raqop3', 1, '2003-06-29 19:11:20', '', 'France', 'Manitoba', NULL, NULL, NULL, 0, '438555840', 'raqlóp3@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(7, 'Jaime', 'Alcañiz', 'jailc4', 1, '1989-07-24 06:19:49', '', 'Australia', 'British Columbia', NULL, NULL, NULL, 0, '540103646', 'jaialc4@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(8, 'Elena', 'Aparici', 'elepa5', 1, '1954-08-07 13:23:12', '', 'China', 'British Columbia', NULL, NULL, NULL, 1, '522347732', 'eleapa5@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(9, 'Rafael', 'Fabra', 'rafab6', 1, '2021-04-06 20:02:31', '', 'United Kingdom', 'Andalusia', NULL, NULL, NULL, 0, '677088171', 'raffab6@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(10, 'Eva', 'Rozalén', 'evaoz7', 1, '2005-12-29 04:45:05', '', 'India', 'Newfoundland and Labrador', NULL, NULL, NULL, 0, '262542259', 'evaroz7@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(11, 'Pablo', 'Roselló', 'pabos8', 1, '2015-10-30 00:50:48', '', 'Argentina', 'Northwest Territories', NULL, NULL, NULL, 0, '944923106', 'pabros8@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(12, 'Eloy', 'Cano', 'eloan9', 1, '1933-09-09 19:16:19', '', 'Canada', 'Galicia', NULL, NULL, NULL, 0, '730352177', 'elocan9@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(13, 'Nieves', 'González', 'nieon10', 1, '1994-02-13 13:47:06', '', 'Germany', 'Manitoba', NULL, NULL, NULL, 0, '148826957', 'niegon10@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(14, 'Paula', 'Díaz', 'pauia11', 1, '2017-11-08 10:30:06', '', 'United States', 'Yukon', NULL, NULL, NULL, 0, '507038397', 'paudía11@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(15, 'Eva', 'Alcañiz', 'evalc12', 1, '1933-01-20 10:24:25', '', 'Spain', 'Basque Country', NULL, NULL, NULL, 0, '503128044', 'evaalc12@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(16, 'Pablo', 'Roselló', 'pabos13', 1, '1954-05-16 02:09:39', '', 'Australia', 'Prince Edward Island', NULL, NULL, NULL, 0, '271156887', 'pabros13@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(17, 'Fernando', 'Maldonado', 'feral14', 1, '1984-04-21 23:48:50', '', 'Spain', 'Madrid', NULL, NULL, NULL, 0, '521925730', 'fermal14@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(18, 'Mónica', 'Marín', 'monar15', 1, '2001-09-14 18:43:55', '', 'Canada', 'Prince Edward Island', NULL, NULL, NULL, 0, '992410388', 'mónmar15@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(19, 'José Antonio', 'Quilez', 'josui16', 1, '1989-12-03 00:36:55', '', 'Germany', 'Castile and León', NULL, NULL, NULL, 0, '117737792', 'josqui16@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(20, 'Mónica', 'Ferrer', 'moner17', 1, '1950-03-03 20:03:19', '', 'South Africa', 'British Columbia', NULL, NULL, NULL, 0, '669615683', 'mónfer17@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(21, 'Nieves', 'Gómez', 'nieom18', 1, '1958-11-08 22:51:15', '', 'South Africa', 'Galicia', NULL, NULL, NULL, 0, '896113707', 'niegóm18@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(22, 'Laura', 'Gómez', 'lauom19', 1, '2007-05-19 16:00:46', '', 'Canada', 'Andalusia', NULL, NULL, NULL, 0, '627092165', 'laugóm19@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(23, 'Jaime', 'Rosello', 'jaumerosello_', 1, '2004-08-02 20:09:07', '', 'Spain', 'Valencia', '             Soy el verdadero admin             ', 'd0839b00-a830-4e02-8e77-f84c1df2d728.jpg', '366b2ae0-2d5e-4f3f-9369-57e50eb29dda.jpg', 0, '601447829', 'jarogos14@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '2024-05-02 18:07:33', '2024-05-02 18:07:33', 0, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`id_user`),
  ADD KEY `fk_id_car` (`id_car`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_car` (`id_car`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_car` (`id_car`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rated_user` (`id_rated_user`),
  ADD KEY `id_rating_user` (`id_rating_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1259;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`id_car`) REFERENCES `car` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_car`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `price_ibfk_1` FOREIGN KEY (`id_car`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`id_rated_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`id_rating_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
