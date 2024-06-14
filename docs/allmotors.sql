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
  `year` int NOT NULL,
  `color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seats` int NOT NULL,
  `doors` int NOT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `gearbox` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fuel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `date_uploaded` datetime DEFAULT NULL,
  `views` int NOT NULL,
  `saves` int NOT NULL,
  `distance` int DEFAULT NULL,
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
(287, 22, 'Audi Civic', 3983539, '€', 'Audi', 'Civic', 1981, '#2ECC71', 6, 5, 'than one car sleeps slowly the dog reads', '38.9637, 35.2433', 'New Brunswick', 'automatic', 'hybrid', '2024-06-14 19:06:57', '2024-06-14 19:03:17', 1, 0, 869597, 'coupe', 356, 8.5, 76.59, 'AWD', 6.54),
(288, 2, 'Mazda E-Class', 4481990, '€', 'Mazda', 'E-Class', 2003, '#2ECC71', 4, 5, 'though the sun is one sun run or one friend shines', '-30.5595, 22.9375', 'British Columbia', 'automatic', 'petrol', '2024-06-14 19:08:25', '2024-06-14 19:03:17', 2, 0, 84469, 'SUV', 1190, 4.4, 39.59, 'AWD', 6.07),
(289, 7, 'Audi Outback', 123712, '$', 'Audi', 'Outback', 1933, '#D92518', 4, 3, 'because the sandwich reads one birds is but the car fly', '51.1657, 10.4515', 'Galicia', 'manual', 'electric', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 906978, 'sedan', 511, 4.5, 31.97, 'FWD', 9.35),
(290, 12, 'BMW Golf', 141324, '¥', 'BMW', 'Golf', 1946, '#8C8C8C', 8, 3, 'so that a birds sleeps brightly the sun run or one friend sleeps quickly', '35.8617, 104.1954', 'Yukon', 'manual', 'gasoline', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 731548, 'truck', 1072, 6.2, 67.27, 'AWD', 5.35),
(291, 4, 'Chevrolet Altima', 1127536, '€', 'Chevrolet', 'Altima', 1990, '#D92518', 5, 3, 'while a car is a cat run slowly', '46.6034, 1.8883', 'Galicia', 'manual', 'electric', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 646821, 'coupe', 900, 4.5, 16.87, 'RWD', 9.06),
(292, 2, 'Kia Camry', 4583297, '€', 'Kia', 'Camry', 1924, '#008080', 5, 4, 'whenever one friend ate brightly one cat shines softly', '-38.4161, -63.6167', 'Basque Country', 'manual', 'petrol', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 745030, 'SUV', 329, 8.2, 63.53, 'FWD', 8.85),
(293, 15, 'BMW Soul', 4894968, '€', 'BMW', 'Soul', 1986, '#4B0082', 3, 5, 'until a friend barks softly one house ate softly', '60.4720, 8.4689', 'Galicia', 'automatic', 'gasoline', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 452106, 'van', 183, 7.1, 13.88, 'FWD', 9.48),
(294, 15, 'Nissan CX-5', 2914037, '$', 'Nissan', 'CX-5', 2018, '#D92518', 4, 4, 'so that the house ate slowly the car ate softly or a friend is', '-25.2744, 133.7751', 'Alberta', 'automatic', 'gasoline', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 1317457, 'convertible', 1077, 2.7, 57.27, 'AWD', 5.86),
(295, 6, 'Mazda CX-5', 1209254, '£', 'Mazda', 'CX-5', 1945, '#800000', 6, 5, 'where the birds run one friend run or a cat sleeps loudly', '-14.2350, -51.9253', 'Basque Country', 'automatic', 'electric', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 303669, 'coupe', 752, 2.4, 43.79, 'RWD', 8.95),
(296, 20, 'Audi Civic', 4281715, '$', 'Audi', 'Civic', 1990, '#8C8C8C', 6, 4, 'if a sun run brightly the sun ate softly', '46.6034, 1.8883', 'Ontario', 'manual', 'petrol', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 462882, 'hatchback', 914, 9.7, 107.29, 'RWD', 8.15),
(298, 23, 'BMW Model 3', 2709725, '$', 'BMW', 'Model 3', 1934, '#0284C7', 3, 2, 'so that one cat run loudly one house reads', '56.1304, -106.3468', 'Newfoundland and Labrador', 'automatic', 'hybrid', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 922192, 'SUV', 1161, 4.1, 107.32, 'AWD', 8.41),
(299, 8, 'Kia S60', 2684705, '$', 'Kia', 'S60', 1936, '#8C8C8C', 3, 3, 'so that a birds reads softly the book is brightly and a sun sleeps', '23.6345, -102.5528', 'Prince Edward Island', 'automatic', 'gasoline', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 534122, 'sedan', 1335, 7.2, 26.69, 'FWD', 6.1),
(300, 22, 'Audi Altima', 659007, '$', 'Audi', 'Altima', 1932, '#FF00FF', 8, 4, 'when one sandwich ate brightly a house barks softly but one house fly loudly', '-14.2350, -51.9253', 'New Brunswick', 'manual', 'hybrid', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 975224, 'pickup', 114, 10, 105.55, 'RWD', 9.55),
(301, 18, 'Mercedes-Benz Golf', 2826085, '£', 'Mercedes-Benz', 'Golf', 1944, '#C0C0C0', 6, 5, 'that the book barks brightly a birds shines quickly or one sun run', '51.1657, 10.4515', 'Catalonia', 'manual', 'petrol', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 78271, 'coupe', 1350, 3.3, 73.62, 'FWD', 5.28),
(302, 16, 'Honda E-Class', 4019826, '€', 'Honda', 'E-Class', 1940, '#00FF00', 4, 4, 'so that a car ate brightly the dog fly', '51.1657, 10.4515', 'Quebec', 'manual', 'gasoline', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 985675, 'sedan', 1287, 3.7, 104.24, 'RWD', 6.61),
(303, 15, 'Subaru Altima', 1957723, '¥', 'Subaru', 'Altima', 1987, '#4B0082', 4, 4, 'once one house sleeps quickly the cat fly loudly but a cat is brightly', '37.0902, -95.7129', 'Basque Country', 'manual', 'electric', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 1037693, 'convertible', 734, 5, 77.16, 'AWD', 5.22),
(304, 19, 'Subaru Cruze', 1897995, '$', 'Subaru', 'Cruze', 1938, '#800080', 7, 5, 'until a book fly the car fly softly', '38.9637, 35.2433', 'Valencia', 'automatic', 'hybrid', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 1442161, 'hatchback', 1226, 8.9, 101.72, 'FWD', 6.39),
(305, 7, 'Chevrolet Outback', 197172, '£', 'Chevrolet', 'Outback', 2012, '#2ECC71', 5, 2, 'unless the car run slowly a friend is slowly and one cat is', '46.6034, 1.8883', 'Madrid', 'automatic', 'hybrid', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 1144069, 'SUV', 178, 7.4, 59.96, 'AWD', 8.05),
(306, 17, 'Mazda A4', 4383697, '€', 'Mazda', 'A4', 1992, '#00FFFF', 7, 4, 'in order to a dog run brightly a birds ate but a dog fly softly', '-38.4161, -63.6167', 'Basque Country', 'manual', 'hybrid', '2024-06-14 19:03:17', '2024-06-14 19:03:17', 0, 0, 666228, 'convertible', 583, 8.4, 108.92, 'AWD', 8.08),
(307, 23, 'Volvo Camry', 4917544, '£', 'Volvo', 'Camry', 2000, '#00FFFF', 8, 3, 'when the birds is a sandwich is loudly or the car fly', '36.2048, 138.2529', 'Catalonia', 'automatic', 'petrol', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 468498, 'truck', 955, 3.1, 39.3, 'RWD', 7.52),
(308, 13, 'Hyundai A4', 2130971, '€', 'Hyundai', 'A4', 1973, '#FFC107', 3, 5, 'unless one sandwich barks a cat reads or the friend fly', '35.9078, 127.7669', 'Nova Scotia', 'manual', 'petrol', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 174850, 'van', 657, 4.8, 99.1, 'RWD', 5.65),
(309, 5, 'Tesla CX-5', 165697, '¥', 'Tesla', 'CX-5', 1987, '#0284C7', 7, 3, 'until the sun sleeps slowly the sandwich sleeps', '-30.5595, 22.9375', 'Madrid', 'manual', 'hybrid', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 968294, 'coupe', 669, 7.9, 52.17, 'AWD', 8.14),
(310, 16, 'Mercedes-Benz Civic', 454019, '$', 'Mercedes-Benz', 'Civic', 2007, '#008080', 6, 2, 'provided that one sun shines brightly one sandwich sleeps but one sun is', '-14.2350, -51.9253', 'Saskatchewan', 'manual', 'hybrid', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 1283343, 'other', 867, 8.4, 79.59, 'FWD', 6.15),
(311, 22, 'BMW Outback', 2485282, '€', 'BMW', 'Outback', 1932, '#008080', 4, 2, 'whether a car ate one book fly', '36.2048, 138.2529', 'Newfoundland and Labrador', 'automatic', 'gasoline', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 986215, 'coupe', 94, 6.9, 48.25, 'RWD', 9.36),
(312, 13, 'Chevrolet A4', 4939561, '£', 'Chevrolet', 'A4', 1948, '#00FF00', 7, 2, 'provided that the dog reads a cat is', '41.8719, 12.5674', 'Yukon', 'manual', 'gasoline', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 419180, 'SUV', 530, 8.1, 87.47, 'RWD', 7.62),
(313, 8, 'Volvo Cruze', 4456759, '€', 'Volvo', 'Cruze', 1981, '#FF00FF', 4, 4, 'before a house run softly one friend reads brightly but a sun shines', '36.2048, 138.2529', 'Prince Edward Island', 'manual', 'gasoline', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 999225, 'coupe', 818, 6.7, 39.46, 'RWD', 9.34),
(314, 15, 'Mazda Model 3', 1871070, '$', 'Mazda', 'Model 3', 2019, '#C0C0C0', 8, 2, 'wherever a friend shines loudly a dog fly slowly and the cat reads slowly', '-14.2350, -51.9253', 'Saskatchewan', 'automatic', 'petrol', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 547309, 'other', 1332, 4.7, 41.66, 'RWD', 9.27),
(315, 22, 'Honda 3 Series', 1965983, '$', 'Honda', '3 Series', 1926, '#FF00FF', 7, 4, 'so that one cat sleeps one book run slowly but a car reads slowly', '46.6034, 1.8883', 'Quebec', 'manual', 'petrol', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 149152, 'sedan', 1393, 6, 106.69, 'AWD', 9.95),
(316, 11, 'Volvo Model 3', 110753, '£', 'Volvo', 'Model 3', 1955, '#D92518', 5, 2, 'until the car run a sandwich run but one sun sleeps', '38.9637, 35.2433', 'Alberta', 'automatic', 'petrol', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 552659, 'coupe', 1133, 5.2, 80.91, 'RWD', 8.09),
(317, 18, 'Honda Outback', 1288304, '€', 'Honda', 'Outback', 1994, '#000080', 7, 4, 'if the sun run the book is but one sandwich shines slowly', '37.0902, -95.7129', 'Andalusia', 'automatic', 'hybrid', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 290461, 'coupe', 1372, 6.3, 93.26, 'RWD', 8.19),
(318, 17, 'Nissan Model 3', 1877997, '€', 'Nissan', 'Model 3', 1922, '#808000', 5, 2, 'though one birds ate loudly one sandwich ate', '38.9637, 35.2433', 'British Columbia', 'manual', 'electric', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 479844, 'other', 376, 9.7, 84.43, 'AWD', 5.21),
(319, 10, 'Audi Outback', 945957, '€', 'Audi', 'Outback', 1983, '#D92518', 4, 2, 'whether a book fly softly the book run and one book fly', '36.2048, 138.2529', 'Basque Country', 'manual', 'hybrid', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 986263, 'pickup', 555, 7.6, 65.03, 'AWD', 8.07),
(320, 18, 'Volkswagen Elantra', 4103304, '¥', 'Volkswagen', 'Elantra', 1971, '#FFA500', 7, 3, 'even though a sun is softly a book is', '60.4720, 8.4689', 'Ontario', 'manual', 'hybrid', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 202634, 'hatchback', 1437, 5.5, 51.71, 'AWD', 5.88),
(321, 5, 'Volvo Altima', 2692541, '¥', 'Volvo', 'Altima', 1955, '#FFC107', 2, 4, 'even though the dog shines slowly one book run', '55.3781, -3.4360', 'Alberta', 'manual', 'electric', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 1295644, 'SUV', 754, 4.6, 105, 'FWD', 8.47),
(322, 9, 'Ford Cruze', 1956474, '€', 'Ford', 'Cruze', 1940, '#D92518', 8, 4, 'unless a sandwich reads softly one sun is brightly and the dog ate loudly', '35.8617, 104.1954', 'Nunavut', 'manual', 'electric', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 1372867, 'sedan', 383, 3.9, 27.25, 'AWD', 6.31),
(323, 12, 'Tesla 3 Series', 4949462, '€', 'Tesla', '3 Series', 1929, '#FFC0CB', 2, 3, 'whether the dog barks a sun run quickly', '41.8719, 12.5674', 'Andalusia', 'automatic', 'petrol', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 1311056, 'other', 1132, 10, 89.58, 'AWD', 7.59),
(324, 10, 'Hyundai CX-5', 3863668, '$', 'Hyundai', 'CX-5', 1987, '#0284C7', 6, 3, 'wherever one book is quickly one house ate softly', '60.4720, 8.4689', 'Manitoba', 'manual', 'electric', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 1024872, 'hatchback', 601, 4.9, 89.12, 'AWD', 9.07),
(325, 17, 'Ford Civic', 4664436, '£', 'Ford', 'Civic', 1938, '#D92518', 6, 4, 'so that one house run brightly the house ate', '60.1282, 18.6435', 'Catalonia', 'automatic', 'hybrid', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 516081, 'truck', 969, 3.3, 26.21, 'AWD', 9.86),
(326, 12, 'Audi A4', 3359735, '€', 'Audi', 'A4', 1929, '#FFC0CB', 3, 2, 'while a car sleeps brightly the sandwich run slowly', '56.1304, -106.3468', 'Quebec', 'automatic', 'electric', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 1071085, 'other', 597, 8.7, 100.34, 'FWD', 6.49),
(327, 17, 'Kia Golf', 4230530, '£', 'Kia', 'Golf', 2014, '#00FF00', 2, 4, 'because a birds fly the friend shines loudly or the sun shines', '41.8719, 12.5674', 'Nova Scotia', 'automatic', 'gasoline', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 344268, 'SUV', 1130, 5.6, 20.63, 'FWD', 9.1),
(328, 4, 'Mazda F-150', 4097138, '$', 'Mazda', 'F-150', 1925, '#808000', 5, 5, 'while a sun fly loudly the cat barks loudly', '-14.2350, -51.9253', 'Northwest Territories', 'automatic', 'electric', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 1208450, 'sedan', 938, 2.4, 80.3, 'AWD', 6.78),
(329, 7, 'Tesla Elantra', 585651, '¥', 'Tesla', 'Elantra', 1931, '#FF00FF', 3, 4, 'whenever a house reads softly a sun ate', '51.1657, 10.4515', 'Quebec', 'manual', 'hybrid', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 1252201, 'convertible', 1355, 6.6, 10.84, 'RWD', 8.27),
(330, 17, 'Tesla Outback', 2355769, '€', 'Tesla', 'Outback', 2013, '#FF00FF', 5, 5, 'although one cat run one birds is quickly', '37.0902, -95.7129', 'Catalonia', 'manual', 'electric', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 948856, 'pickup', 156, 2.6, 58.68, 'AWD', 9.94),
(331, 12, 'Ford Camry', 500885, '¥', 'Ford', 'Camry', 1921, '#FFC0CB', 2, 2, 'because the birds barks a friend reads slowly but a sandwich fly', '-25.2744, 133.7751', 'Ontario', 'automatic', 'gasoline', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 1000643, 'other', 1148, 8.7, 108.22, 'AWD', 6.29),
(332, 5, 'Volkswagen A4', 2109114, '€', 'Volkswagen', 'A4', 1938, '#FFC0CB', 6, 5, 'while a sandwich fly the friend shines but the book reads', '-38.4161, -63.6167', 'New Brunswick', 'automatic', 'gasoline', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 754764, 'truck', 252, 6.7, 71.97, 'RWD', 8.07),
(333, 20, 'Nissan Golf', 1639097, '¥', 'Nissan', 'Golf', 1939, '#0284C7', 8, 2, 'whether one cat reads the car shines brightly or the book fly brightly', '35.9078, 127.7669', 'Prince Edward Island', 'automatic', 'hybrid', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 713680, 'SUV', 402, 9.2, 24.45, 'AWD', 8.51),
(334, 17, 'Chevrolet Outback', 1007923, '£', 'Chevrolet', 'Outback', 1954, '#008080', 3, 5, 'as one cat barks softly one dog ate', '35.8617, 104.1954', 'Saskatchewan', 'manual', 'electric', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 565636, 'hatchback', 298, 2.9, 71.01, 'RWD', 7.92),
(335, 20, 'Mercedes-Benz 3 Series', 1529498, '€', 'Mercedes-Benz', '3 Series', 1982, '#D92518', 4, 4, 'in order to one sun sleeps the birds sleeps quickly', '38.9637, 35.2433', 'Saskatchewan', 'manual', 'hybrid', '2024-06-14 19:03:18', '2024-06-14 19:03:18', 0, 0, 552696, 'SUV', 517, 9.9, 52.46, 'FWD', 8),
(336, 13, 'Honda CX-5', 230201, '¥', 'Honda', 'CX-5', 2022, '#FF00FF', 6, 4, 'provided that the birds fly a cat barks slowly', '40.4637, -3.7492', 'Basque Country', 'manual', 'petrol', '2024-06-14 19:03:19', '2024-06-14 19:03:19', 0, 0, 518072, 'SUV', 776, 4.5, 55.63, 'AWD', 9.64),
(337, 1, 'BMW 8 Series', 179998, '$', 'BMW', '8 Series', 2022, 'navy', 4, 2, 'This is a test', '-0.393216 39.4559488', 'València', 'automatic', 'gasoline', '2024-06-14 19:05:07', '2024-06-14 17:04:02', 3, 0, 0, NULL, 0, NULL, NULL, NULL, NULL),
(338, 10, 'Mercedes-Benz Cruze', 4479623, '$', 'Mercedes-Benz', 'Cruze', 1964, '#800080', 4, 2, 'that one car fly brightly the house barks loudly and one book shines', '-14.2350, -51.9253', 'Valencia', 'manual', 'petrol', '2024-06-14 19:08:37', '2024-06-14 19:08:37', 0, 0, 447625, 'sedan', 1313, 9.1, 82.53, 'RWD', 8.09),
(339, 20, 'Subaru CX-5', 2590794, '¥', 'Subaru', 'CX-5', 1920, '#FFA500', 3, 4, 'when the house sleeps softly a friend ate softly but a friend ate brightly', '35.8617, 104.1954', 'Nunavut', 'automatic', 'petrol', '2024-06-14 19:08:38', '2024-06-14 19:08:38', 0, 0, 992495, 'sedan', 664, 7.9, 52.5, 'FWD', 7.34),
(340, 8, 'Tesla S60', 496975, '£', 'Tesla', 'S60', 1971, '#00FFFF', 6, 3, 'because a house fly one friend barks and one cat barks loudly', '-25.2744, 133.7751', 'Prince Edward Island', 'manual', 'electric', '2024-06-14 19:08:38', '2024-06-14 19:08:38', 0, 0, 890371, 'van', 1486, 5.6, 28.59, 'FWD', 7.91),
(341, 18, 'Nissan CX-5', 981449, '¥', 'Nissan', 'CX-5', 1949, '#FFC107', 3, 5, 'in order to the sun barks one car run', '-14.2350, -51.9253', 'Catalonia', 'automatic', 'petrol', '2024-06-14 19:08:38', '2024-06-14 19:08:38', 0, 0, 1370603, 'convertible', 502, 2.5, 14.61, 'RWD', 9.21),
(342, 23, 'Chevrolet F-150', 144638, '€', 'Chevrolet', 'F-150', 1993, '#800080', 2, 3, 'although one dog ate the birds run or one sun shines', '20.5937, 78.9629', 'Castile and León', 'automatic', 'gasoline', '2024-06-14 19:08:38', '2024-06-14 19:08:38', 0, 0, 963074, 'convertible', 591, 6.3, 74.64, 'FWD', 5.82),
(343, 2, 'Chevrolet Model 3', 1353072, '¥', 'Chevrolet', 'Model 3', 1981, '#FF00FF', 4, 5, 'before the car ate one friend fly slowly', '38.9637, 35.2433', 'Basque Country', 'manual', 'electric', '2024-06-14 19:08:38', '2024-06-14 19:08:38', 0, 0, 1143941, 'convertible', 1306, 4.3, 48.3, 'RWD', 6.54),
(344, 4, 'Subaru Camry', 2323120, '¥', 'Subaru', 'Camry', 1979, '#2ECC71', 6, 5, 'wherever the sandwich ate a friend fly slowly', '20.5937, 78.9629', 'Ontario', 'automatic', 'electric', '2024-06-14 19:08:38', '2024-06-14 19:08:38', 0, 0, 661879, 'sedan', 246, 8.5, 70.76, 'FWD', 6.36),
(345, 15, 'Volvo A4', 31980, '£', 'Volvo', 'A4', 1955, '#8C8C8C', 4, 3, 'whenever the book run the car fly softly and one house fly quickly', '-14.2350, -51.9253', 'Quebec', 'automatic', 'petrol', '2024-06-14 19:08:38', '2024-06-14 19:08:38', 0, 0, 1265586, 'SUV', 511, 6.5, 46.69, 'AWD', 7.91),
(346, 23, 'Nissan Model 3', 4705849, '¥', 'Nissan', 'Model 3', 1926, '#800080', 7, 2, 'while one birds is slowly a dog is loudly or one cat ate loudly', '55.3781, -3.4360', 'Yukon', 'automatic', 'petrol', '2024-06-14 19:08:38', '2024-06-14 19:08:38', 0, 0, 241026, 'SUV', 268, 9.1, 75.45, 'RWD', 9.18),
(347, 20, 'Nissan CX-5', 4750756, '£', 'Nissan', 'CX-5', 1946, '#FFC0CB', 6, 4, 'when the cat is softly one sandwich is loudly but a book barks softly', '61.5240, 105.3188', 'Saskatchewan', 'automatic', 'hybrid', '2024-06-14 19:08:38', '2024-06-14 19:08:38', 0, 0, 181806, 'van', 1397, 5.2, 33.35, 'RWD', 8.22),
(348, 12, 'Volvo F-150', 3593, '¥', 'Volvo', 'F-150', 1982, '#D92518', 2, 4, 'that a sun ate brightly one cat reads brightly', '41.8719, 12.5674', 'Alberta', 'automatic', 'electric', '2024-06-14 19:08:48', '2024-06-14 19:08:38', 1, 0, 604675, 'coupe', 661, 4.4, 48.18, 'AWD', 5.66);

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

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `creation_date`, `notifications`, `id_member_one`, `id_member_two`, `deleted_by`, `id_car`) VALUES
(8, '2024-06-14 19:04:44', 0, 2, 1, NULL, 337);

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
(589, 1, 288),
(590, 1, 290),
(591, 1, 292),
(592, 1, 294);

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
(1735, 'image4.jpg', 287),
(1736, 'image6.jpg', 287),
(1737, 'image5.jpg', 287),
(1738, 'image4.jpg', 287),
(1739, 'image10.jpg', 287),
(1740, 'image10.jpg', 288),
(1741, 'image10.jpg', 288),
(1742, 'image2.jpg', 288),
(1743, 'image1.jpg', 288),
(1744, 'image4.jpg', 288),
(1745, 'image5.jpg', 289),
(1746, 'image5.jpg', 289),
(1747, 'image1.jpg', 289),
(1748, 'image9.jpg', 290),
(1749, 'image9.jpg', 290),
(1750, 'image7.jpg', 290),
(1751, 'image6.jpg', 291),
(1752, 'image3.jpg', 291),
(1753, 'image1.jpg', 291),
(1754, 'image4.jpg', 291),
(1755, 'image7.jpg', 291),
(1756, 'image9.jpg', 292),
(1757, 'image1.jpg', 292),
(1758, 'image5.jpg', 292),
(1759, 'image8.jpeg', 293),
(1760, 'image9.jpg', 293),
(1761, 'image4.jpg', 294),
(1762, 'image4.jpg', 294),
(1763, 'image8.jpeg', 294),
(1764, 'image6.jpg', 295),
(1765, 'image4.jpg', 295),
(1766, 'image9.jpg', 295),
(1767, 'image4.jpg', 296),
(1768, 'image5.jpg', 296),
(1772, 'image4.jpg', 298),
(1773, 'image8.jpeg', 298),
(1774, 'image5.jpg', 299),
(1775, 'image1.jpg', 299),
(1776, 'image7.jpg', 299),
(1777, 'image2.jpg', 299),
(1778, 'image2.jpg', 300),
(1779, 'image7.jpg', 300),
(1780, 'image1.jpg', 300),
(1781, 'image5.jpg', 300),
(1782, 'image10.jpg', 300),
(1783, 'image1.jpg', 300),
(1784, 'image3.jpg', 301),
(1785, 'image8.jpeg', 301),
(1786, 'image6.jpg', 302),
(1787, 'image3.jpg', 302),
(1788, 'image1.jpg', 302),
(1789, 'image6.jpg', 302),
(1790, 'image6.jpg', 302),
(1791, 'image2.jpg', 302),
(1792, 'image1.jpg', 302),
(1793, 'image8.jpeg', 302),
(1794, 'image9.jpg', 303),
(1795, 'image9.jpg', 303),
(1796, 'image9.jpg', 303),
(1797, 'image7.jpg', 303),
(1798, 'image8.jpeg', 303),
(1799, 'image4.jpg', 303),
(1800, 'image5.jpg', 304),
(1801, 'image9.jpg', 304),
(1802, 'image7.jpg', 304),
(1803, 'image10.jpg', 304),
(1804, 'image1.jpg', 304),
(1805, 'image1.jpg', 304),
(1806, 'image7.jpg', 304),
(1807, 'image4.jpg', 305),
(1808, 'image5.jpg', 305),
(1809, 'image10.jpg', 306),
(1810, 'image10.jpg', 306),
(1811, 'image3.jpg', 306),
(1812, 'image8.jpeg', 307),
(1813, 'image5.jpg', 307),
(1814, 'image10.jpg', 307),
(1815, 'image8.jpeg', 307),
(1816, 'image4.jpg', 307),
(1817, 'image1.jpg', 307),
(1818, 'image2.jpg', 308),
(1819, 'image9.jpg', 308),
(1820, 'image6.jpg', 308),
(1821, 'image8.jpeg', 308),
(1822, 'image9.jpg', 308),
(1823, 'image6.jpg', 308),
(1824, 'image3.jpg', 308),
(1825, 'image9.jpg', 309),
(1826, 'image2.jpg', 309),
(1827, 'image7.jpg', 309),
(1828, 'image9.jpg', 309),
(1829, 'image4.jpg', 310),
(1830, 'image1.jpg', 310),
(1831, 'image1.jpg', 311),
(1832, 'image3.jpg', 311),
(1833, 'image4.jpg', 311),
(1834, 'image1.jpg', 311),
(1835, 'image2.jpg', 311),
(1836, 'image4.jpg', 312),
(1837, 'image9.jpg', 312),
(1838, 'image9.jpg', 312),
(1839, 'image8.jpeg', 312),
(1840, 'image9.jpg', 312),
(1841, 'image6.jpg', 313),
(1842, 'image9.jpg', 313),
(1843, 'image1.jpg', 313),
(1844, 'image4.jpg', 313),
(1845, 'image5.jpg', 313),
(1846, 'image1.jpg', 313),
(1847, 'image9.jpg', 313),
(1848, 'image5.jpg', 314),
(1849, 'image3.jpg', 314),
(1850, 'image8.jpeg', 315),
(1851, 'image4.jpg', 315),
(1852, 'image9.jpg', 315),
(1853, 'image9.jpg', 316),
(1854, 'image10.jpg', 316),
(1855, 'image9.jpg', 316),
(1856, 'image6.jpg', 316),
(1857, 'image10.jpg', 316),
(1858, 'image4.jpg', 316),
(1859, 'image2.jpg', 316),
(1860, 'image5.jpg', 317),
(1861, 'image1.jpg', 317),
(1862, 'image10.jpg', 318),
(1863, 'image8.jpeg', 318),
(1864, 'image1.jpg', 318),
(1865, 'image8.jpeg', 318),
(1866, 'image8.jpeg', 319),
(1867, 'image4.jpg', 319),
(1868, 'image2.jpg', 319),
(1869, 'image5.jpg', 320),
(1870, 'image10.jpg', 320),
(1871, 'image3.jpg', 320),
(1872, 'image7.jpg', 320),
(1873, 'image8.jpeg', 320),
(1874, 'image10.jpg', 320),
(1875, 'image9.jpg', 320),
(1876, 'image3.jpg', 320),
(1877, 'image10.jpg', 321),
(1878, 'image10.jpg', 321),
(1879, 'image4.jpg', 322),
(1880, 'image5.jpg', 322),
(1881, 'image5.jpg', 323),
(1882, 'image4.jpg', 323),
(1883, 'image5.jpg', 323),
(1884, 'image1.jpg', 323),
(1885, 'image6.jpg', 323),
(1886, 'image6.jpg', 323),
(1887, 'image10.jpg', 323),
(1888, 'image8.jpeg', 323),
(1889, 'image3.jpg', 324),
(1890, 'image9.jpg', 324),
(1891, 'image8.jpeg', 324),
(1892, 'image3.jpg', 324),
(1893, 'image8.jpeg', 324),
(1894, 'image7.jpg', 324),
(1895, 'image7.jpg', 325),
(1896, 'image7.jpg', 325),
(1897, 'image1.jpg', 325),
(1898, 'image4.jpg', 325),
(1899, 'image9.jpg', 326),
(1900, 'image3.jpg', 326),
(1901, 'image5.jpg', 327),
(1902, 'image6.jpg', 327),
(1903, 'image1.jpg', 327),
(1904, 'image3.jpg', 327),
(1905, 'image2.jpg', 327),
(1906, 'image9.jpg', 327),
(1907, 'image2.jpg', 328),
(1908, 'image1.jpg', 328),
(1909, 'image1.jpg', 328),
(1910, 'image8.jpeg', 328),
(1911, 'image4.jpg', 328),
(1912, 'image10.jpg', 328),
(1913, 'image4.jpg', 328),
(1914, 'image9.jpg', 328),
(1915, 'image3.jpg', 329),
(1916, 'image6.jpg', 329),
(1917, 'image6.jpg', 329),
(1918, 'image3.jpg', 329),
(1919, 'image10.jpg', 329),
(1920, 'image10.jpg', 329),
(1921, 'image10.jpg', 329),
(1922, 'image8.jpeg', 329),
(1923, 'image3.jpg', 330),
(1924, 'image6.jpg', 330),
(1925, 'image8.jpeg', 330),
(1926, 'image8.jpeg', 330),
(1927, 'image5.jpg', 330),
(1928, 'image8.jpeg', 330),
(1929, 'image6.jpg', 331),
(1930, 'image3.jpg', 331),
(1931, 'image7.jpg', 331),
(1932, 'image8.jpeg', 331),
(1933, 'image8.jpeg', 332),
(1934, 'image1.jpg', 332),
(1935, 'image10.jpg', 332),
(1936, 'image9.jpg', 332),
(1937, 'image8.jpeg', 332),
(1938, 'image6.jpg', 333),
(1939, 'image9.jpg', 333),
(1940, 'image1.jpg', 333),
(1941, 'image1.jpg', 333),
(1942, 'image4.jpg', 333),
(1943, 'image6.jpg', 333),
(1944, 'image3.jpg', 333),
(1945, 'image7.jpg', 334),
(1946, 'image1.jpg', 334),
(1947, 'image2.jpg', 334),
(1948, 'image5.jpg', 334),
(1949, 'image3.jpg', 334),
(1950, 'image6.jpg', 334),
(1951, 'image8.jpeg', 334),
(1952, 'image4.jpg', 334),
(1953, 'image4.jpg', 335),
(1954, 'image1.jpg', 335),
(1955, 'image2.jpg', 336),
(1956, 'image1.jpg', 336),
(1957, 'image2.jpg', 336),
(1958, 'image2.jpg', 336),
(1959, '5a77fefa-7811-4f20-bea2-e48effdd3556.jpg', 337),
(1960, '6591709b-d7c7-4046-b816-b19c22843d80.jpg', 337),
(1961, 'e2a393d6-3a28-45ff-bc79-23337e31e27f.jpg', 337),
(1962, 'image5.jpg', 338),
(1963, 'image10.jpg', 338),
(1964, 'image4.jpg', 338),
(1965, 'image8.jpeg', 338),
(1966, 'image3.jpg', 339),
(1967, 'image5.jpg', 339),
(1968, 'image7.jpg', 340),
(1969, 'image8.jpeg', 340),
(1970, 'image1.jpg', 340),
(1971, 'image6.jpg', 340),
(1972, 'image3.jpg', 341),
(1973, 'image10.jpg', 341),
(1974, 'image1.jpg', 341),
(1975, 'image4.jpg', 342),
(1976, 'image3.jpg', 342),
(1977, 'image5.jpg', 342),
(1978, 'image6.jpg', 342),
(1979, 'image4.jpg', 342),
(1980, 'image2.jpg', 342),
(1981, 'image8.jpeg', 343),
(1982, 'image5.jpg', 343),
(1983, 'image2.jpg', 343),
(1984, 'image5.jpg', 343),
(1985, 'image6.jpg', 343),
(1986, 'image10.jpg', 343),
(1987, 'image3.jpg', 343),
(1988, 'image3.jpg', 343),
(1989, 'image2.jpg', 344),
(1990, 'image4.jpg', 344),
(1991, 'image3.jpg', 344),
(1992, 'image2.jpg', 344),
(1993, 'image1.jpg', 344),
(1994, 'image5.jpg', 345),
(1995, 'image8.jpeg', 345),
(1996, 'image3.jpg', 345),
(1997, 'image5.jpg', 345),
(1998, 'image9.jpg', 345),
(1999, 'image7.jpg', 345),
(2000, 'image3.jpg', 345),
(2001, 'image9.jpg', 345),
(2002, 'image3.jpg', 346),
(2003, 'image6.jpg', 346),
(2004, 'image2.jpg', 346),
(2005, 'image5.jpg', 347),
(2006, 'image7.jpg', 347),
(2007, 'image8.jpeg', 347),
(2008, 'image9.jpg', 347),
(2009, 'image5.jpg', 348),
(2010, 'image8.jpeg', 348),
(2011, 'image10.jpg', 348),
(2012, 'image8.jpeg', 348),
(2013, 'image9.jpg', 348),
(2014, 'image10.jpg', 348),
(2015, 'image8.jpeg', 348),
(2016, 'image8.jpeg', 348);

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

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `content`, `sent_time`, `is_liked`, `is_read`, `id_sender`, `id_receiver`, `id_chat`) VALUES
(50, 'me gusta tu coche', '2024-06-14 19:04:44', 0, 0, 2, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` bigint NOT NULL,
  `id_car` bigint NOT NULL,
  `modified` datetime NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` bigint NOT NULL,
  `id_rated_user` bigint NOT NULL,
  `id_rating_user` bigint NOT NULL,
  `score` float NOT NULL
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
-- Table structure for table `rating_seq`
--

CREATE TABLE `rating_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_seq`
--

INSERT INTO `rating_seq` (`next_val`) VALUES
(1);

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
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'I like cars',
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
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
(1, 'Fernando', 'Alonso', 'ElNano', 1, '2022-02-24 04:25:00', '-0.3784603198914027 39.4679336934979', 'Spain', 'Asturias', 'El Nano es una bala azul que sin cañón\nDispara en un circuito directo al corazón\nEl Nano no es humano, el Nano es inmortal\nY sale en las revistas junto a Hulk y a Supermam\n', 'a2773b88-922b-4e3f-8dbd-22e39406276a.webp', '4b86f217-cc79-48a0-9a24-e4f59ccd12ed.jpg', b'1', '633974333', 'nano@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '1996-07-15 15:35:07', '1936-02-15 00:37:41', 0, 1, 0),
(2, 'Carlos', 'Sainz', 'carlossainz', 0, '1991-05-16 16:56:24', '-3.7050339534411023 40.40991945152729', 'Spain', 'Madrid', 'Carlos Sainz, il matador. Smooooooth operatoooor       ', 'b1fcd965-cdfc-4f37-ba24-604b6bb845cb.jpg', '153902dd-640b-4236-8fb6-1d370a1af510.jpg', b'0', '655974455', 'sainz@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2019-02-06 02:54:17', '1969-08-30 01:11:21', 0, 1, 0),
(3, 'Amador', 'Rivas', 'capitanSalam1', 1, '1940-01-24 16:53:42', '-0.3784603198914027 39.4679336934979', 'Italy', 'British Columbia', ' Quieres salami, merengue merengue ', 'f9fec625-b1c1-4f48-a915-a8ad58a2e49b.jpg', '40118821-2bab-47c8-ab3f-fe84a8c16b8c.jpg', b'0', '561079640', 'alalat0@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(4, 'Ramón', 'Melendi', 'milindr1', 1, '1957-07-05 01:34:14', '-0.3784603198914027 39.4679336934979', 'South Africa', 'British Columbia', '    Siete vidas tiene un gatoComo una y cuento cienAy y como de hablar no cansoVoy y te como a ti tambiénYa ha acabado el Gran HermanoAbre un buen champan FrancésQue lo mejor de tol programaAy fue la novia de un tal Ness        ', '4ceac9e6-3728-42b0-81ed-9b00b7b98a76.jpg', '3d3a41b0-a58a-4291-93bd-532845faa431.jpg', b'0', '783044591', 'elopui1@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(5, 'Kakarotto', 'Son', 'gokuSan', 1, '1942-01-27 10:48:02', '-0.3784603198914027 39.4679336934979', 'China', 'Madrid', 'Yo se que a veces peleamos, pero que rico cuando chingamos', '16219753-0576-44af-9abb-01a891698a18.jpg', '4f290a90-c535-4cc0-be90-1a251ce2c191.webp', b'0', '264594045', 'lauazn2@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(6, 'Raquel', 'López', 'raqop3', 1, '2003-06-29 19:11:20', '-0.3784603198914027 39.4679336934979', 'France', 'Manitoba', NULL, NULL, NULL, b'0', '438555840', 'raqlóp3@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(7, 'Jaime', 'Alcañiz', 'jailc4', 1, '1989-07-24 06:19:49', '-0.3784603198914027 39.4679336934979', 'Australia', 'British Columbia', NULL, NULL, NULL, b'0', '540103646', 'jaialc4@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(8, 'Elena', 'Aparici', 'elepa5', 1, '1954-08-07 13:23:12', '-0.3784603198914027 39.4679336934979', 'China', 'British Columbia', NULL, NULL, NULL, b'1', '522347732', 'eleapa5@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(9, 'Rafael', 'Fabra', 'rafab6', 1, '2021-04-06 20:02:31', '-0.3784603198914027 39.4679336934979', 'United Kingdom', 'Andalusia', NULL, NULL, NULL, b'0', '677088171', 'raffab6@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(10, 'Eva', 'Rozalén', 'evaoz7', 1, '2005-12-29 04:45:05', '-0.3784603198914027 39.4679336934979', 'India', 'Newfoundland and Labrador', NULL, NULL, NULL, b'0', '262542259', 'evaroz7@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(11, 'Pablo', 'Roselló', 'pabos8', 1, '2015-10-30 00:50:48', '-0.3784603198914027 39.4679336934979', 'Argentina', 'Northwest Territories', NULL, NULL, NULL, b'0', '944923106', 'pabros8@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(12, 'Eloy', 'Cano', 'eloan9', 1, '1933-09-09 19:16:19', '-0.3784603198914027 39.4679336934979', 'Canada', 'Galicia', NULL, NULL, NULL, b'0', '730352177', 'elocan9@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(13, 'Nieves', 'González', 'nieon10', 1, '1994-02-13 13:47:06', '-0.3784603198914027 39.4679336934979', 'Germany', 'Manitoba', NULL, NULL, NULL, b'0', '148826957', 'niegon10@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(14, 'Paula', 'Díaz', 'pauia11', 1, '2017-11-08 10:30:06', '-0.3784603198914027 39.4679336934979', 'United States', 'Yukon', NULL, NULL, NULL, b'0', '507038397', 'paudía11@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(15, 'Eva', 'Alcañiz', 'evalc12', 1, '1933-01-20 10:24:25', '-0.3784603198914027 39.4679336934979', 'Spain', 'Basque Country', NULL, NULL, NULL, b'0', '503128044', 'evaalc12@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(16, 'Pablo', 'Roselló', 'pabos13', 1, '1954-05-16 02:09:39', '-0.3784603198914027 39.4679336934979', 'Australia', 'Prince Edward Island', NULL, NULL, NULL, b'0', '271156887', 'pabros13@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(17, 'Fernando', 'Maldonado', 'feral14', 1, '1984-04-21 23:48:50', '-0.3784603198914027 39.4679336934979', 'Spain', 'Madrid', NULL, NULL, NULL, b'0', '521925730', 'fermal14@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(18, 'Mónica', 'Marín', 'monar15', 1, '2001-09-14 18:43:55', '-0.3784603198914027 39.4679336934979', 'Canada', 'Prince Edward Island', NULL, NULL, NULL, b'0', '992410388', 'mónmar15@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(19, 'José Antonio', 'Quilez', 'josui16', 1, '1989-12-03 00:36:55', '-0.3784603198914027 39.4679336934979', 'Germany', 'Castile and León', NULL, NULL, NULL, b'0', '117737792', 'josqui16@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(20, 'Mónica', 'Ferrer', 'moner17', 1, '1950-03-03 20:03:19', '-0.3784603198914027 39.4679336934979', 'South Africa', 'British Columbia', NULL, NULL, NULL, b'0', '669615683', 'mónfer17@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(21, 'Nieves', 'Gómez', 'nieom18', 1, '1958-11-08 22:51:15', '-0.3784603198914027 39.4679336934979', 'South Africa', 'Galicia', NULL, NULL, NULL, b'0', '896113707', 'niegóm18@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(22, 'Laura', 'Gómez', 'lauom19', 1, '2007-05-19 16:00:46', '-0.3784603198914027 39.4679336934979', 'Canada', 'Andalusia', NULL, NULL, NULL, b'0', '627092165', 'laugóm19@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1, 0),
(23, 'Jaime', 'Rosello', 'jaumerosello_', 1, '2004-08-02 20:09:07', '-0.39413583904328675 39.45770272279975', 'Spain', 'València', 'Soy el verdadero admin', 'd0839b00-a830-4e02-8e77-f84c1df2d728.jpg', 'c60f3ec0-0ffb-4c67-b60a-74d104b3d7f3.jpg', b'0', '601447829', 'jarogos14@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '2024-05-02 18:07:33', '2024-05-02 18:07:33', 0, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKm2cs5bh53qsh8asi6tanvcwla` (`id_owner`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt8q6vbshr4i0w4ph70f537041` (`id_car`),
  ADD KEY `FKk3h4yiwg3inoawuham6qpgpj3` (`deleted_by`),
  ADD KEY `FKlarky5ul61s9iwkq8jt00nxj8` (`id_member_one`),
  ADD KEY `FKimsbqaf2tv5coiph14kd5ok86` (`id_member_two`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKk9cgcap5knsoe0xqxeyd5j127` (`id_chat`),
  ADD KEY `FKqyxddlqh59ce3gqls6qu9w3lq` (`id_receiver`),
  ADD KEY `FK249t1hnaxlacjng5xtud18fi` (`id_sender`);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2017;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `FKm2cs5bh53qsh8asi6tanvcwla` FOREIGN KEY (`id_owner`) REFERENCES `user` (`id`);

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `FKimsbqaf2tv5coiph14kd5ok86` FOREIGN KEY (`id_member_two`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKk3h4yiwg3inoawuham6qpgpj3` FOREIGN KEY (`deleted_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKlarky5ul61s9iwkq8jt00nxj8` FOREIGN KEY (`id_member_one`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt8q6vbshr4i0w4ph70f537041` FOREIGN KEY (`id_car`) REFERENCES `car` (`id`);

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
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK249t1hnaxlacjng5xtud18fi` FOREIGN KEY (`id_sender`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKk9cgcap5knsoe0xqxeyd5j127` FOREIGN KEY (`id_chat`) REFERENCES `chat` (`id`),
  ADD CONSTRAINT `FKqyxddlqh59ce3gqls6qu9w3lq` FOREIGN KEY (`id_receiver`) REFERENCES `user` (`id`);

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
