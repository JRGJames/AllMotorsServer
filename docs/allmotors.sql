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
  `brand` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `views` bigint DEFAULT '0',
  `saves` bigint DEFAULT '0',
  `color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `year` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seats` int NOT NULL,
  `doors` int NOT NULL,
  `horsepower` int DEFAULT NULL,
  `gearbox` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `distance` int NOT NULL,
  `fuel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `acceleration` float DEFAULT NULL,
  `drive` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emissions` float DEFAULT NULL,
  `consumption` float DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_owner` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `brand`, `model`, `title`, `date_uploaded`, `views`, `saves`, `color`, `year`, `seats`, `doors`, `horsepower`, `gearbox`, `distance`, `fuel`, `currency`, `acceleration`, `drive`, `price`, `type`, `location`, `emissions`, `consumption`, `last_update`, `description`, `id_owner`) VALUES
(1, 'hyundai', 'penelope', 'BMW 320ci e46', NULL, 478, 2, '#1F2937', '2003', 5, 3, 180, 'manual', 123000, 'gasoline', '€', 8.3, 'RWD', 33033, 'coupe', 'Yukon', 213, 10.4, '2024-05-20 13:24:31', 'El BMW E46 del 2003 con restyling representa un equilibrio perfecto entre diseño, rendimiento y tecnología. Las mejoras estéticas y técnicas introducidas en esta actualización hicieron de este modelo una opción atractiva para los entusiastas de los automóviles que buscan una experiencia de conducción superior combinada con la elegancia y calidad que caracteriza a BMW. A día de hoy, el E46 sigue siendo un modelo muy valorado por su diseño atemporal y su dinámica de conducción excepcional.', 23),
(2, 'chevrolet', 'corvette', 'Chevrolet Bolt EV Corvette', NULL, 93, 0, '#1F2937', '1990', 2, 3, 694, 'manual', 897000, 'hybrid', '$', 3.4, 'rwd', 17300, 'suv', 'British Columbia', 59.04, 5.79, '2024-05-17 10:37:57', 'while one house sleeps loudly one book reads', 3),
(4, 'nissan', 'golf', 'Nissan Golf', NULL, 53, 0, '#A52A2A', '2015', 3, 2, 71, 'automatic', 9000, 'electric', '€', 10, 'rwd', 3583, 'hatchback', 'Nova Scotia', 93.09, 6.42, '2024-05-17 10:47:05', 'whenever one house fly quickly one car ate slowly', 4),
(5, 'chevrolet', 'f-150', 'Chevrolet F-150', '2024-02-22 00:38:09', 13, 0, '#FFC107', '1961', 3, 4, 1257, 'manual', 318000, 'petrol', '£', 3.7, 'fwd', 1265, 'truck', 'Newfoundland and Labrador', 64.38, 9.12, '2024-05-20 08:30:24', 'before one car shines brightly the sandwich barks', 2),
(6, 'Honda', 'S60', 'Honda S60', '2024-02-22 00:38:09', 11, 0, 'red', '1976', 5, 5, 351, 'automatic', 1208320, 'electric', '€', 8.4, 'RWD', 1004933, 'Convertible', 'Basque Country', 102.76, 9.12, '2024-02-22 00:38:09', 'while a book shines brightly the cat ate', 1),
(7, 'chevrolet', 'civic', 'Chevrolet Civic', '2024-02-22 00:38:09', 2, 0, 'green', '1926', 5, 5, 1185, 'manual', 61000, 'petrol', '€', 3.3, 'rwd', 3689, 'suv', 'Valencia', 45.93, 9.03, '2024-05-13 16:35:35', 'when the car ate one friend shines slowly and a sun barks softly', 5),
(8, 'Kia', 'F-150', 'Kia F-150', '2024-02-22 00:38:09', 4, 0, 'green', '1931', 6, 4, 1007, 'automatic', 1094050, 'hybrid', '$', 5, 'AWD', 1242127, 'Sedan', 'Catalonia', 61.76, 9.95, '2024-02-22 00:38:09', 'until the house fly one sandwich is', 2),
(9, 'Hyundai', 'CX-5', 'Hyundai CX-5', '2024-02-22 00:38:09', 43, 0, 'yellow', '1998', 6, 3, 1273, 'automatic', 620285, 'petrol', '€', 8, 'FWD', 4559772, 'Hatchback', 'Castile and León', 32.65, 6.34, '2024-02-22 00:38:09', 'because a book reads slowly the friend barks', 1),
(10, 'Hyundai', 'Civic', 'Hyundai Civic', '2024-02-22 00:38:09', 2, 0, 'black', '2001', 5, 4, 248, 'manual', 110204, 'petrol', '£', 6.1, 'AWD', 428536, 'Truck', 'Andalusia', 24.4, 8.22, '2024-02-22 00:38:09', 'where one cat sleeps brightly the car fly softly or a sun sleeps', 2),
(11, 'Hyundai', 'F-150', 'Hyundai F-150', '2024-02-22 00:38:09', 0, 0, 'orange', '1961', 5, 5, 1439, 'manual', 397078, 'electric', '£', 9, 'FWD', 3352101, 'Van', 'New Brunswick', 88.92, 8.31, '2024-02-22 00:38:09', 'unless one friend reads a house is slowly and one house barks slowly', 1),
(13, 'Chevrolet', 'Soul', 'Chevrolet Soul', '2024-02-22 00:54:18', 3, 0, 'yellow', '1971', 5, 4, 693, 'automatic', 444314, 'petrol', '$', 2.5, 'AWD', 1660237, 'Convertible', 'Galicia', 108.07, 5.91, '2024-02-22 00:54:18', 'even if the birds run the dog reads', 1),
(14, 'Volvo', '3 Series', 'Volvo 3 Series', '2024-02-22 00:54:18', 2, 0, 'green', '1964', 8, 4, 1447, 'automatic', 222849, 'electric', '$', 9.3, 'AWD', 1296794, 'Convertible', 'Alberta', 50.25, 9.12, '2024-02-22 00:54:18', 'because one sandwich run loudly a sun barks', 2),
(15, 'Volkswagen', 'S60', 'Volkswagen S60', '2024-02-22 00:54:18', 76, 0, 'green', '1958', 4, 4, 589, 'automatic', 536065, 'electric', '£', 9.7, 'FWD', 3202159, 'Hatchback', 'Newfoundland and Labrador', 29.96, 6.79, '2024-02-22 00:54:18', 'while one cat fly slowly a house ate and one house sleeps', 1),
(16, 'Ford', 'A4', 'Ford A4', '2024-02-22 00:54:18', 32, 0, 'green', '1997', 4, 3, 668, 'automatic', 1464771, 'electric', '$', 8.7, 'RWD', 4711972, 'SUV', 'Galicia', 77.81, 8.21, '2024-02-22 00:54:18', 'unless a birds shines a sandwich is', 1),
(17, 'Mercedes-Benz', 'F-150', 'Mercedes-Benz F-150', '2024-02-22 00:54:19', 1, 0, 'gray', '1942', 4, 2, 659, 'manual', 989919, 'petrol', '$', 5.4, 'AWD', 3016212, 'Coupe', 'Ontario', 72.63, 7.25, '2024-02-22 00:54:19', 'once a dog ate brightly a house reads and one car shines quickly', 2),
(18, 'Volkswagen', 'CX-5', 'Volkswagen CX-5', '2024-02-22 00:54:19', 3, 0, 'purple', '1982', 5, 5, 1129, 'manual', 595954, 'electric', '¥', 2.5, 'RWD', 4586970, 'Sedan', 'Madrid', 104.69, 7.71, '2024-02-22 00:54:19', 'so that the sandwich sleeps slowly one sandwich reads', 1),
(19, 'Volkswagen', 'Model 3', 'Volkswagen Model 3', '2024-02-22 00:54:19', 0, 0, 'yellow', '1952', 4, 4, 1495, 'automatic', 399186, 'petrol', '$', 9, 'FWD', 2410960, 'Van', 'Yukon', 84.82, 5.84, '2024-02-22 00:54:19', 'whether the car shines softly the birds run and the dog run brightly', 2),
(20, 'Ford', 'A4', 'Ford A4', '2024-02-22 00:54:19', 0, 0, 'green', '1971', 4, 4, 1218, 'manual', 1365399, 'gasoline', '€', 4.2, 'AWD', 3500048, 'Truck', 'Ontario', 70.55, 7.51, '2024-02-22 00:54:19', 'if a sun ate a cat ate', 2),
(21, 'Mazda', 'F-150', 'Mazda F-150', '2024-02-22 00:54:19', 0, 0, 'red', '1964', 2, 2, 638, 'automatic', 695281, 'gasoline', '€', 3.7, 'RWD', 1779597, 'Coupe', 'Northwest Territories', 39.31, 6.26, '2024-02-22 00:54:19', 'once the car shines loudly the sun run brightly', 2),
(23, 'BMW', '4 Series Gran Coupe', 'BMW 4 Series Gran Coupe', NULL, 1, 0, 'red', '2020', 5, 2, 0, 'manual', 11000, 'gasoline', '€', NULL, NULL, 33000, NULL, 'Nunavut', NULL, NULL, NULL, NULL, 2),
(24, 'Hyundai', 'E-Class', 'Hyundai E-Class', '2024-03-11 01:48:33', 1, 0, 'red', '1998', 4, 4, 144, 'manual', 1223582, 'electric', '$', 6.3, 'FWD', 4994315, 'Sedan', 'Madrid', 44.36, 7.33, '2024-03-11 01:48:33', 'unless one sandwich shines one dog barks', 1),
(25, 'Volvo', 'E-Class', 'Volvo E-Class', '2024-03-11 01:48:33', 0, 0, 'gray', '2006', 5, 3, 753, 'manual', 1161575, 'hybrid', '£', 4.1, 'AWD', 1405668, 'Wagon', 'Manitoba', 74.21, 6.41, '2024-03-11 01:48:33', 'although a sandwich ate slowly a sun barks', 2),
(26, 'Ford', 'F-150', 'Ford F-150', '2024-03-11 01:48:33', 0, 0, 'blue', '1982', 7, 2, 457, 'manual', 67632, 'electric', '¥', 4.3, 'FWD', 1753361, 'Truck', 'Madrid', 16.36, 7.32, '2024-03-11 01:48:33', 'when the friend ate quickly a car is', 1),
(27, 'Kia', 'A4', 'Kia A4', '2024-03-11 01:48:33', 0, 0, 'orange', '2021', 4, 3, 165, 'automatic', 1473595, 'electric', '¥', 9.8, 'AWD', 210517, 'Van', 'Castile and León', 30.86, 7.56, '2024-03-11 01:48:33', 'as the house fly one dog sleeps', 2),
(28, 'Tesla', 'Outback', 'Tesla Outback', '2024-03-11 01:48:33', 0, 0, 'black', '1927', 7, 4, 223, 'automatic', 277870, 'electric', '€', 8.1, 'FWD', 2391816, 'Convertible', 'Yukon', 76.76, 8.52, '2024-03-11 01:48:33', 'than a dog barks brightly the sandwich is slowly or one house run', 1),
(29, 'Mazda', 'Cruze', 'Mazda Cruze', '2024-03-11 01:48:33', 0, 0, 'yellow', '1984', 8, 5, 279, 'manual', 1404429, 'hybrid', '£', 3.3, 'FWD', 4477333, 'Truck', 'Saskatchewan', 80.44, 7.13, '2024-03-11 01:48:33', 'though one sandwich sleeps slowly one friend run', 1),
(30, 'Volkswagen', 'Model 3', 'Volkswagen Model 3', '2024-03-11 01:48:33', 0, 0, 'white', '2015', 6, 5, 702, 'manual', 194974, 'petrol', '¥', 3.1, 'RWD', 338521, 'Hatchback', 'Castile and León', 68.59, 8.8, '2024-03-11 01:48:33', 'whenever the house ate the house is but a house barks quickly', 2),
(31, 'Chevrolet', 'Golf', 'Chevrolet Golf', '2024-03-11 01:48:33', 0, 0, 'orange', '1956', 5, 2, 83, 'automatic', 115985, 'hybrid', '$', 8.9, 'AWD', 1146093, 'Convertible', 'Northwest Territories', 13.67, 9.74, '2024-03-11 01:48:33', 'until the dog sleeps a friend run', 2),
(32, 'Chevrolet', 'F-150', 'Chevrolet F-150', '2024-03-11 01:48:33', 0, 0, 'yellow', '1931', 7, 3, 223, 'automatic', 730325, 'hybrid', '¥', 6.3, 'RWD', 334052, 'Coupe', 'Nova Scotia', 62.65, 9.18, '2024-03-11 01:48:33', 'that a sandwich barks the cat shines slowly and a book is softly', 1),
(33, 'Hyundai', 'E-Class', 'Hyundai E-Class', '2024-03-11 01:48:33', 3, 0, 'orange', '1927', 4, 5, 238, 'automatic', 840505, 'gasoline', '£', 9.1, 'FWD', 1676631, 'Convertible', 'Nova Scotia', 35.63, 6.08, '2024-03-11 01:48:33', 'once one sandwich sleeps the sun sleeps quickly', 2),
(34, 'mercedes-benz', 'model 3', 'Mercedes-Benz Model 3', '2024-03-11 01:48:33', 13, 0, '#00FFFF', '2015', 3, 3, 398, 'manual', 920000, 'petrol', '¥', 6.7, 'fwd', 2809, 'convertible', 'Northwest Territories', 31.66, 9.02, '2024-05-13 16:07:13', 'since the car is softly the birds ate', 2),
(35, 'Mercedes-Benz', 'F-150', 'Mercedes-Benz F-150', '2024-03-11 01:48:34', 0, 0, 'red', '2016', 5, 5, 687, 'automatic', 500939, 'gasoline', '$', 3.7, 'AWD', 439885, 'Sedan', 'Valencia', 99.37, 9.76, '2024-03-11 01:48:34', 'whether the sun shines quickly one sun fly loudly', 2),
(36, 'BMW', 'S60', 'BMW S60', '2024-03-11 01:48:34', 0, 0, 'green', '1969', 2, 2, 777, 'automatic', 953301, 'hybrid', '£', 5.6, 'RWD', 442753, 'Wagon', 'Ontario', 20.48, 8.88, '2024-03-11 01:48:34', 'whenever one dog run a sun shines quickly and one dog run quickly', 1),
(37, 'Volvo', 'S60', 'Volvo S60', '2024-03-11 01:48:34', 0, 0, 'green', '1961', 5, 2, 201, 'manual', 1181640, 'gasoline', '$', 2.9, 'FWD', 3420648, 'Sedan', 'Nova Scotia', 59.41, 8.02, '2024-03-11 01:48:34', 'when a sandwich fly brightly a car sleeps slowly and a birds run quickly', 2),
(38, 'Subaru', 'Golf', 'Subaru Golf', '2024-03-11 01:48:34', 0, 0, 'blue', '2021', 7, 4, 451, 'automatic', 1493152, 'electric', '$', 9.2, 'FWD', 1118633, 'Van', 'Castile and León', 77.5, 9.09, '2024-03-11 01:48:34', 'since a birds shines one car is', 2),
(39, 'Toyota', 'F-150', 'Toyota F-150', '2024-03-11 01:48:34', 0, 0, 'orange', '1997', 2, 3, 948, 'automatic', 168290, 'petrol', '$', 2.9, 'RWD', 2225092, 'Truck', 'Ontario', 73.51, 9.84, '2024-03-11 01:48:34', 'whether the car ate the dog sleeps brightly but one cat ate', 1),
(40, 'Audi', 'Camry', 'Audi Camry', '2024-03-11 01:48:34', 0, 0, 'red', '1928', 8, 3, 968, 'automatic', 1052251, 'hybrid', '€', 7.8, 'AWD', 4311021, 'Sedan', 'Saskatchewan', 56.72, 9.36, '2024-03-11 01:48:34', 'as a car is the car reads softly or the friend run brightly', 1),
(41, 'Chevrolet', 'A4', 'Chevrolet A4', '2024-03-11 01:48:34', 0, 0, 'yellow', '1986', 8, 5, 1053, 'manual', 129959, 'gasoline', '€', 8.8, 'RWD', 3852672, 'SUV', 'Saskatchewan', 38.66, 6.32, '2024-03-11 01:48:34', 'because a sandwich is the friend run quickly and a cat run', 1),
(42, 'Ford', 'Camry', 'Ford Camry', '2024-03-11 01:48:34', 0, 0, 'red', '1923', 3, 4, 591, 'automatic', 392614, 'petrol', '€', 7.7, 'AWD', 4856583, 'Hatchback', 'Ontario', 10.11, 9.77, '2024-03-11 01:48:34', 'while one car fly one sandwich sleeps quickly or one house run', 1),
(43, 'Mercedes-Benz', 'Soul', 'Mercedes-Benz Soul', '2024-03-11 01:48:34', 0, 0, 'orange', '1963', 5, 4, 228, 'manual', 839608, 'electric', '£', 5.1, 'AWD', 4522769, 'Sedan', 'Madrid', 56.47, 5.76, '2024-03-11 01:48:34', 'when one dog run one dog sleeps loudly and one cat is brightly', 2),
(44, 'Mazda', 'Soul', 'Mazda Soul', '2024-03-11 01:48:34', 0, 0, 'black', '1967', 7, 3, 1407, 'manual', 51890, 'petrol', '¥', 6.6, 'AWD', 2322613, 'SUV', 'Newfoundland and Labrador', 83.75, 9.18, '2024-03-11 01:48:34', 'so that a sun ate one sun shines quickly', 1),
(45, 'Audi', 'Soul', 'Audi Soul', '2024-03-11 01:48:34', 0, 0, 'green', '1989', 8, 3, 312, 'manual', 1401384, 'petrol', '£', 7.4, 'AWD', 266977, 'SUV', 'Alberta', 87.16, 7.53, '2024-03-11 01:48:34', 'than the house reads the book is and the dog shines', 2),
(46, 'Ford', 'Cruze', 'Ford Cruze', '2024-03-11 01:48:34', 0, 0, 'white', '1994', 2, 5, 765, 'automatic', 696333, 'electric', '¥', 3.4, 'FWD', 1762670, 'Coupe', 'Saskatchewan', 58.6, 6.64, '2024-03-11 01:48:34', 'because one sun run slowly a friend barks', 1),
(47, 'Toyota', 'Elantra', 'Toyota Elantra', '2024-03-11 01:48:34', 3, 0, 'purple', '2008', 3, 4, 1287, 'manual', 1129176, 'hybrid', '$', 7.2, 'FWD', 2754087, 'Coupe', 'Quebec', 109.87, 9.22, '2024-03-11 01:48:34', 'though a sandwich fly a car reads loudly but the sun reads', 1),
(48, 'Mercedes-Benz', 'E-Class', 'Mercedes-Benz E-Class', '2024-03-11 01:48:34', 1, 0, 'purple', '1969', 4, 2, 406, 'automatic', 870177, 'gasoline', '¥', 8.2, 'AWD', 900475, 'SUV', 'British Columbia', 69.45, 6.24, '2024-03-11 01:48:34', 'while the house run loudly a sun is', 1),
(49, 'Toyota', 'Cruze', 'Toyota Cruze', '2024-03-11 01:48:34', 0, 0, 'red', '1948', 4, 2, 607, 'automatic', 50598, 'petrol', '€', 3.4, 'AWD', 929264, 'Hatchback', 'Galicia', 93.89, 8.81, '2024-03-11 01:48:34', 'so that a sun shines loudly the sandwich ate and one sandwich ate loudly', 2),
(50, 'Nissan', 'Civic', 'Nissan Civic', '2024-03-11 01:48:34', 0, 0, 'blue', '1978', 4, 5, 556, 'automatic', 1289088, 'gasoline', '€', 8.8, 'AWD', 2353839, 'Wagon', 'Saskatchewan', 99.16, 9.46, '2024-03-11 01:48:34', 'as one dog barks the book run slowly', 2),
(51, 'BMW', 'F-150', 'BMW F-150', '2024-03-11 01:48:34', 0, 0, 'blue', '1970', 5, 2, 1060, 'automatic', 584244, 'petrol', '€', 3.1, 'FWD', 1658725, 'Van', 'Alberta', 28.83, 5.87, '2024-03-11 01:48:34', 'while one sandwich sleeps one birds barks but the birds run loudly', 2),
(52, 'BMW', 'F-150', 'BMW F-150', '2024-03-11 01:48:34', 0, 0, 'green', '1945', 7, 5, 1473, 'automatic', 211487, 'petrol', '€', 3.4, 'AWD', 4766678, 'Hatchback', 'Nunavut', 19.73, 7.59, '2024-03-11 01:48:34', 'in order to one house shines softly the dog is', 1),
(53, 'Kia', 'Cruze', 'Kia Cruze', '2024-03-11 01:48:34', 0, 0, 'gray', '1939', 7, 3, 1052, 'manual', 472397, 'gasoline', '£', 4.9, 'FWD', 2644933, 'Sedan', 'Catalonia', 106.65, 9.15, '2024-03-11 01:48:34', 'although the friend shines quickly one birds fly brightly but a sun is', 2),
(54, 'Nissan', 'Cruze', 'Nissan Cruze', '2024-03-11 01:48:34', 0, 0, 'blue', '1994', 3, 5, 1280, 'manual', 256429, 'petrol', '$', 3.6, 'AWD', 984565, 'Truck', 'Manitoba', 90.57, 7.14, '2024-03-11 01:48:34', 'so that the cat shines the dog reads brightly or a cat run loudly', 2),
(55, 'Tesla', 'CX-5', 'Tesla CX-5', '2024-03-11 01:48:34', 0, 0, 'purple', '1921', 7, 3, 1368, 'manual', 139182, 'gasoline', '$', 2.3, 'AWD', 148015, 'Truck', 'British Columbia', 63.74, 9.26, '2024-03-11 01:48:34', 'as the sun reads loudly a friend run quickly', 2),
(56, 'Kia', '3 Series', 'Kia 3 Series', '2024-03-11 01:48:34', 0, 0, 'green', '1962', 4, 4, 254, 'automatic', 13988, 'petrol', '€', 7.5, 'FWD', 1181686, 'Van', 'Saskatchewan', 84.32, 7.25, '2024-03-11 01:48:34', 'before one car barks loudly the sandwich fly', 1),
(57, 'BMW', '3 Series', 'BMW 3 Series', '2024-03-11 01:48:34', 0, 0, 'green', '1926', 6, 4, 840, 'automatic', 741711, 'gasoline', '€', 10, 'RWD', 3130151, 'Truck', 'Northwest Territories', 88.64, 6.67, '2024-03-11 01:48:34', 'before one dog reads softly one car sleeps', 1),
(58, 'Audi', 'Cruze', 'Audi Cruze', '2024-03-11 01:48:34', 0, 0, 'red', '1940', 3, 4, 297, 'manual', 300894, 'hybrid', '€', 8.7, 'FWD', 4085434, 'Sedan', 'Newfoundland and Labrador', 84.74, 5.51, '2024-03-11 01:48:34', 'unless a car sleeps the house barks', 1),
(59, 'Kia', 'Model 3', 'Kia Model 3', '2024-03-11 01:48:34', 0, 0, 'black', '1981', 6, 5, 236, 'automatic', 1214334, 'petrol', '£', 5.2, 'FWD', 4404418, 'Truck', 'Nova Scotia', 82.23, 5.75, '2024-03-11 01:48:34', 'unless a dog run brightly a sun barks but one friend sleeps', 2),
(60, 'Kia', 'Cruze', 'Kia Cruze', '2024-03-11 01:48:34', 0, 0, 'yellow', '1925', 3, 3, 969, 'automatic', 356164, 'petrol', '¥', 8.6, 'FWD', 1028422, 'Coupe', 'Ontario', 21.2, 5.56, '2024-03-11 01:48:34', 'even if the sun sleeps the cat run but one car reads', 1),
(61, 'Volvo', 'Golf', 'Volvo Golf', '2024-03-11 01:48:34', 0, 0, 'gray', '2014', 2, 4, 1256, 'manual', 1039817, 'petrol', '£', 7.2, 'FWD', 4049004, 'Van', 'Newfoundland and Labrador', 74.7, 5.53, '2024-03-11 01:48:34', 'after a book fly softly a friend fly slowly', 1),
(62, 'Chevrolet', 'Cruze', 'Chevrolet Cruze', '2024-03-11 01:48:34', 0, 0, 'purple', '2000', 4, 5, 559, 'automatic', 589517, 'gasoline', '£', 2.3, 'RWD', 4421168, 'SUV', 'Andalusia', 104.48, 7.6, '2024-03-11 01:48:34', 'that one friend sleeps loudly the cat run but the sun ate', 1),
(63, 'Subaru', 'Model 3', 'Subaru Model 3', '2024-03-11 01:48:34', 0, 0, 'black', '1943', 3, 3, 237, 'automatic', 551530, 'gasoline', '¥', 4.5, 'RWD', 3094399, 'SUV', 'Ontario', 89.14, 6.06, '2024-03-11 01:48:34', 'unless a sandwich reads quickly one sandwich barks', 1),
(64, 'Chevrolet', 'Model 3', 'Chevrolet Model 3', '2024-03-11 01:48:34', 0, 0, 'purple', '2013', 6, 3, 1339, 'automatic', 811275, 'electric', '€', 8.6, 'RWD', 1967778, 'Wagon', 'New Brunswick', 53.5, 5.66, '2024-03-11 01:48:34', 'while a sandwich barks brightly one cat reads', 1),
(65, 'Toyota', 'CX-5', 'Toyota CX-5', '2024-03-11 01:48:34', 1, 0, 'red', '1944', 4, 2, 1328, 'manual', 423118, 'petrol', '¥', 2.4, 'AWD', 2365749, 'Sedan', 'Manitoba', 64.61, 9.31, '2024-05-17 10:56:37', 'unless a sun fly a car is', 1),
(66, 'Tesla', 'Cruze', 'Tesla Cruze', '2024-03-11 01:48:34', 2, 0, 'green', '2007', 5, 5, 1329, 'manual', 945772, 'electric', '¥', 3.8, 'RWD', 857361, 'Coupe', 'Nunavut', 21.63, 7.22, '2024-03-11 01:48:34', 'so that the dog ate a birds run loudly and a sun barks', 1),
(67, 'Tesla', 'A4', 'Tesla A4', '2024-03-11 01:48:34', 0, 0, 'gray', '1939', 8, 2, 617, 'automatic', 711565, 'electric', '$', 6.1, 'AWD', 3199869, 'Wagon', 'Nova Scotia', 62.64, 9, '2024-03-11 01:48:34', 'before a house barks the birds shines slowly and the book sleeps brightly', 1),
(68, 'Mazda', 'S60', 'Mazda S60', '2024-03-11 01:48:34', 0, 0, 'white', '2003', 7, 3, 1397, 'manual', 939428, 'electric', '€', 5.9, 'AWD', 1006216, 'Wagon', 'Prince Edward Island', 65.46, 9.53, '2024-03-11 01:48:34', 'although one sandwich ate loudly one birds fly', 1),
(69, 'Volkswagen', 'S60', 'Volkswagen S60', '2024-03-11 01:48:34', 0, 0, 'gray', '1983', 2, 3, 664, 'manual', 1258926, 'hybrid', '€', 7.4, 'AWD', 4786257, 'Van', 'Nova Scotia', 12.26, 6.68, '2024-03-11 01:48:34', 'until a sun run slowly the car fly', 2),
(70, 'Volkswagen', 'Soul', 'Volkswagen Soul', '2024-03-11 01:48:34', 0, 0, 'yellow', '2003', 6, 5, 480, 'manual', 415409, 'hybrid', '¥', 7.3, 'RWD', 2930870, 'Wagon', 'Andalusia', 20.21, 8.9, '2024-03-11 01:48:34', 'since a house barks quickly a sandwich is', 1),
(71, 'Kia', '3 Series', 'Kia 3 Series', '2024-03-11 01:48:35', 0, 0, 'yellow', '1987', 2, 4, 773, 'automatic', 320760, 'gasoline', '€', 9.3, 'AWD', 3173251, 'Truck', 'Newfoundland and Labrador', 18.05, 8.96, '2024-03-11 01:48:35', 'that a cat is slowly one cat sleeps', 2),
(72, 'Volkswagen', 'Cruze', 'Volkswagen Cruze', '2024-03-11 01:48:35', 0, 0, 'gray', '2023', 7, 5, 1209, 'manual', 610984, 'electric', '¥', 8.5, 'RWD', 3428190, 'Convertible', 'Alberta', 69.37, 8.03, '2024-03-11 01:48:35', 'before one dog sleeps slowly one friend run softly but the car fly brightly', 2),
(73, 'Nissan', 'Model 3', 'Nissan Model 3', '2024-03-11 01:48:35', 0, 0, 'white', '1985', 8, 5, 681, 'manual', 194080, 'gasoline', '¥', 4, 'FWD', 3051360, 'SUV', 'Galicia', 65.41, 8.77, '2024-03-11 01:48:35', 'though one car ate the cat is slowly', 1),
(74, 'Mercedes-Benz', 'Civic', 'Mercedes-Benz Civic', '2024-04-10 08:05:26', 2, 0, 'black', '2013', 8, 3, 710, 'manual', 94017, 'electric', '£', 4.9, 'AWD', 3405723, 'Convertible', '41.8719, 12.5674', 66.91, 7.4, '2024-04-10 08:05:26', 'although the house shines the car shines quickly', 3);

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

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `gender`, `birthdate`, `country`, `city`, `description`, `profile_picture`, `profile_background`, `status`, `phone`, `email`, `password`, `role`, `member_since`, `last_connection`, `banned`, `actived`, `reports`) VALUES
(1, 'Fernando', 'Alonso', 'ElNano', 1, '2022-02-24 04:25:00', 'Spain', 'Asturias', '                                      El Nano es una bala azul que sin cañónDispara en un circuito directo al corazónEl Nano no es humano, el Nano es inmortalY sale en las revistas junto a Hulk y a SupermamEl Nano es un gigante en un cuerpo de mortalY nadie le echa el guante, nadie lo puede alcanzar                                      ', 'd57976ef-26fa-481d-8410-a4be1ef3e97b.webp', 'b1049c1f-addb-4d25-acf7-cb16e46a51b0.webp', 1, '633974333', 'nano@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '1996-07-15 15:35:07', '1936-02-15 00:37:41', 0, 1, 0),
(2, 'Carlos', 'Sainz', 'carlossainz', 0, '1991-05-16 16:56:24', 'Spain', 'Madrid', '             Carlos Sainz, il matador. Smooooooth operatoooor      ', 'b1fcd965-cdfc-4f37-ba24-604b6bb845cb.jpg', '9d9a48f6-82aa-4bde-9536-c33a32bf35c4.jpeg', 0, '655974455', 'sainz@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2019-02-06 02:54:17', '1969-08-30 01:11:21', 0, 1, 0),
(3, 'Amador', 'Rivas', 'capitanSalam1', 1, '1940-01-24 16:53:42', 'Italy', 'British Columbia', ' Quieres salami, merengue merengue ', 'f9fec625-b1c1-4f48-a915-a8ad58a2e49b.jpg', '40118821-2bab-47c8-ab3f-fe84a8c16b8c.jpg', 0, '561079640', 'alalat0@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(4, 'Ramón', 'Melendi', 'milindr1', 1, '1957-07-05 01:34:14', 'South Africa', 'British Columbia', '    Siete vidas tiene un gatoComo una y cuento cienAy y como de hablar no cansoVoy y te como a ti tambiénYa ha acabado el Gran HermanoAbre un buen champan FrancésQue lo mejor de tol programaAy fue la novia de un tal Ness        ', '4ceac9e6-3728-42b0-81ed-9b00b7b98a76.jpg', '3d3a41b0-a58a-4291-93bd-532845faa431.jpg', 0, '783044591', 'elopui1@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(5, 'Kakarotto', 'Son', 'gokuSan', 1, '1942-01-27 10:48:02', 'China', 'Madrid', 'Yo se que a veces peleamos, pero que rico cuando chingamos', '16219753-0576-44af-9abb-01a891698a18.jpg', '4f290a90-c535-4cc0-be90-1a251ce2c191.webp', 0, '264594045', 'lauazn2@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(6, 'Raquel', 'López', 'raqop3', 1, '2003-06-29 19:11:20', 'France', 'Manitoba', NULL, NULL, NULL, 0, '438555840', 'raqlóp3@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(7, 'Jaime', 'Alcañiz', 'jailc4', 1, '1989-07-24 06:19:49', 'Australia', 'British Columbia', NULL, NULL, NULL, 0, '540103646', 'jaialc4@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(8, 'Elena', 'Aparici', 'elepa5', 1, '1954-08-07 13:23:12', 'China', 'British Columbia', NULL, NULL, NULL, 1, '522347732', 'eleapa5@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(9, 'Rafael', 'Fabra', 'rafab6', 1, '2021-04-06 20:02:31', 'United Kingdom', 'Andalusia', NULL, NULL, NULL, 0, '677088171', 'raffab6@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(10, 'Eva', 'Rozalén', 'evaoz7', 1, '2005-12-29 04:45:05', 'India', 'Newfoundland and Labrador', NULL, NULL, NULL, 0, '262542259', 'evaroz7@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(11, 'Pablo', 'Roselló', 'pabos8', 1, '2015-10-30 00:50:48', 'Argentina', 'Northwest Territories', NULL, NULL, NULL, 0, '944923106', 'pabros8@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(12, 'Eloy', 'Cano', 'eloan9', 1, '1933-09-09 19:16:19', 'Canada', 'Galicia', NULL, NULL, NULL, 0, '730352177', 'elocan9@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(13, 'Nieves', 'González', 'nieon10', 1, '1994-02-13 13:47:06', 'Germany', 'Manitoba', NULL, NULL, NULL, 0, '148826957', 'niegon10@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(14, 'Paula', 'Díaz', 'pauia11', 1, '2017-11-08 10:30:06', 'United States', 'Yukon', NULL, NULL, NULL, 0, '507038397', 'paudía11@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(15, 'Eva', 'Alcañiz', 'evalc12', 1, '1933-01-20 10:24:25', 'Spain', 'Basque Country', NULL, NULL, NULL, 0, '503128044', 'evaalc12@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(16, 'Pablo', 'Roselló', 'pabos13', 1, '1954-05-16 02:09:39', 'Australia', 'Prince Edward Island', NULL, NULL, NULL, 0, '271156887', 'pabros13@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(17, 'Fernando', 'Maldonado', 'feral14', 1, '1984-04-21 23:48:50', 'Spain', 'Madrid', NULL, NULL, NULL, 0, '521925730', 'fermal14@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(18, 'Mónica', 'Marín', 'monar15', 1, '2001-09-14 18:43:55', 'Canada', 'Prince Edward Island', NULL, NULL, NULL, 0, '992410388', 'mónmar15@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(19, 'José Antonio', 'Quilez', 'josui16', 1, '1989-12-03 00:36:55', 'Germany', 'Castile and León', NULL, NULL, NULL, 0, '117737792', 'josqui16@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(20, 'Mónica', 'Ferrer', 'moner17', 1, '1950-03-03 20:03:19', 'South Africa', 'British Columbia', NULL, NULL, NULL, 0, '669615683', 'mónfer17@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(21, 'Nieves', 'Gómez', 'nieom18', 1, '1958-11-08 22:51:15', 'South Africa', 'Galicia', NULL, NULL, NULL, 0, '896113707', 'niegóm18@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(22, 'Laura', 'Gómez', 'lauom19', 1, '2007-05-19 16:00:46', 'Canada', 'Andalusia', NULL, NULL, NULL, 0, '627092165', 'laugóm19@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(23, 'Jaime', 'Rosello', 'jaumerosello_', 1, '2004-08-02 20:09:07', 'Spain', 'Valencia', '             Soy el verdadero admin             ', 'd0839b00-a830-4e02-8e77-f84c1df2d728.jpg', '366b2ae0-2d5e-4f3f-9369-57e50eb29dda.jpg', 0, '601447829', 'jarogos14@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '2024-05-02 18:07:33', '2024-05-02 18:07:33', 0, 1, 0);

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
