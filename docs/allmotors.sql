-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Jan 11, 2024 at 12:45 AM
-- Server version: 10.9.8-MariaDB-1:10.9.8+maria~ubu2204
-- PHP Version: 8.2.12

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
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'On sale',
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
  `currency` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `acceleration` float DEFAULT NULL,
  `engine` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `drive` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bought_in` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emissions` float DEFAULT NULL,
  `consumption` float DEFAULT NULL,
  `plate` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dgt_sticker` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_itv` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_owner` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `brand`, `model`, `title`, `date_uploaded`, `status`, `views`, `saves`, `color`, `year`, `seats`, `doors`, `horsepower`, `gearbox`, `distance`, `fuel`, `currency`, `acceleration`, `engine`, `drive`, `bought_in`, `price`, `type`, `location`, `emissions`, `consumption`, `plate`, `dgt_sticker`, `last_itv`, `last_update`, `description`, `id_owner`) VALUES
(1, 'Hyundai', 'Altima', 'Hyundai Altima', '2024-02-22 00:37:58', NULL, 5, 0, 'gray', '1977', 4, 2, 940, 'manual', 465009, 'electric', '€', 5.5, 'V6', 'RWD', 'Russia', 302839, 'Wagon', 'Yukon', 79.62, 6.96, '3208-VQJ', 'ECO', '2014-03-03 14:04:08', '2024-02-22 00:37:58', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean at laoreet leo, eget congue eros. Aenean vulputate odio ac lacus tincidunt, ut volutpat lorem lobortis. Quisque et tincidunt augue. Nam mauris eros, tincidunt eu ipsum non, pharetra vestibulum lorem. Vestibulum lobortis blandit molestie. Integer condimentum consequat nisi ut vehicula. Duis placerat lacinia sapien at tempor. Nam gravida sollicitudin enim, id convallis sapien mollis eu.\n\nVivamus sed eros finibus quam posuere tincidunt. Quisque ut urna venenatis, varius orci vel, consequat ante. Pellentesque vel ipsum id nisl pharetra pharetra at in nisi. Cras lobortis diam a pretium dignissim. In nec sem dignissim.', 2),
(2, 'Chevrolet', 'Corvette', 'Chevrolet Bolt EV Corvette', NULL, NULL, 8, 0, 'white', '1990', 2, 3, 694, 'manual', 896779, 'hybrid', '£', 3.4, 'I4', 'RWD', 'United Kingdom', 4389346, 'SUV', 'British Columbia', 59.04, 5.79, '8745-PGT', 'ECO', '2013-10-20 14:24:17', NULL, 'while one house sleeps loudly one book reads', 2),
(4, 'Nissan', 'Golf', 'Nissan Golf', '2024-02-22 00:38:09', NULL, 6, 0, 'purple', '2015', 3, 2, 71, 'automatic', 8913, 'electric', '£', 10, 'I5', 'RWD', 'Norway', 3583426, 'Hatchback', 'Nova Scotia', 93.09, 6.42, '0806-WMR', 'B', '2011-11-19 01:13:53', '2024-02-22 00:38:09', 'whenever one house fly quickly one car ate slowly', 1),
(5, 'Chevrolet', 'F-150', 'Chevrolet F-150', '2024-02-22 00:38:09', NULL, 3, 0, 'yellow', '1961', 3, 4, 1257, 'manual', 317677, 'petrol', '£', 3.7, 'V12', 'FWD', 'South Korea', 1265321, 'Truck', 'Newfoundland and Labrador', 64.38, 9.12, '8863-SLC', 'C', '2023-07-24 05:47:51', '2024-02-22 00:38:09', 'before one car shines brightly the sandwich barks', 2),
(6, 'Honda', 'S60', 'Honda S60', '2024-02-22 00:38:09', NULL, 0, 0, 'red', '1976', 5, 5, 351, 'automatic', 1208320, 'electric', '€', 8.4, 'I5', 'RWD', 'Japan', 1004933, 'Convertible', 'Basque Country', 102.76, 9.12, '2356-IQV', 'C', '2022-09-29 21:26:41', '2024-02-22 00:38:09', 'while a book shines brightly the cat ate', 1),
(7, 'Chevrolet', 'Civic', 'Chevrolet Civic', '2024-02-22 00:38:09', NULL, 0, 0, 'green', '1926', 5, 5, 1185, 'manual', 60920, 'petrol', '€', 3.3, 'I3', 'RWD', 'France', 3689858, 'SUV', 'Valencia', 45.93, 9.03, '9198-NCI', 'B', '2017-08-13 05:08:07', '2024-02-22 00:38:09', 'when the car ate one friend shines slowly and a sun barks softly', 1),
(8, 'Kia', 'F-150', 'Kia F-150', '2024-02-22 00:38:09', NULL, 2, 0, 'green', '1931', 6, 4, 1007, 'automatic', 1094050, 'hybrid', '$', 5, 'W12', 'AWD', 'Norway', 1242127, 'Sedan', 'Catalonia', 61.76, 9.95, '4275-DPV', 'B', '2020-01-26 10:16:01', '2024-02-22 00:38:09', 'until the house fly one sandwich is', 2),
(9, 'Hyundai', 'CX-5', 'Hyundai CX-5', '2024-02-22 00:38:09', NULL, 0, 0, 'yellow', '1998', 6, 3, 1273, 'automatic', 620285, 'petrol', '€', 8, 'V6', 'FWD', 'Canada', 4559772, 'Hatchback', 'Castile and León', 32.65, 6.34, '9408-XFK', 'ECO', '2013-09-19 12:23:56', '2024-02-22 00:38:09', 'because a book reads slowly the friend barks', 1),
(10, 'Hyundai', 'Civic', 'Hyundai Civic', '2024-02-22 00:38:09', NULL, 0, 0, 'black', '2001', 5, 4, 248, 'manual', 110204, 'petrol', '£', 6.1, 'W12', 'AWD', 'Japan', 428536, 'Truck', 'Andalusia', 24.4, 8.22, '9697-EMQ', '0', '2023-06-23 22:08:42', '2024-02-22 00:38:09', 'where one cat sleeps brightly the car fly softly or a sun sleeps', 2),
(11, 'Hyundai', 'F-150', 'Hyundai F-150', '2024-02-22 00:38:09', NULL, 0, 0, 'orange', '1961', 5, 5, 1439, 'manual', 397078, 'electric', '£', 9, 'I3', 'FWD', 'Sweden', 3352101, 'Van', 'New Brunswick', 88.92, 8.31, '6692-KEU', 'C', '2012-01-14 00:08:35', '2024-02-22 00:38:09', 'unless one friend reads a house is slowly and one house barks slowly', 1),
(12, 'Acura', 'MDX', 'Acura MDX', NULL, NULL, 0, 0, 'blue', '2001', 5, 2, 185, 'manual', 100000, 'gasoline', '€', 7.2, '3.0L V6', 'rwd', 'Spain', 33000, 'sedan', 'Valencia', 120, 5.5, 'ABC123', 'C', '2024-02-21 23:38:13', NULL, 'El BMW Serie 3 E46 no es solo un coche, es una pieza de la historia automovilística que combina a la perfección rendimiento, lujo y fiabilidad. Diseñado para aquellos que aprecian la conducción pura, este modelo se ha convertido en un favorito tanto para entusiastas como para aquellos que buscan un vehículo premium versátil.', 1),
(13, 'Chevrolet', 'Soul', 'Chevrolet Soul', '2024-02-22 00:54:18', NULL, 0, 0, 'yellow', '1971', 5, 4, 693, 'automatic', 444314, 'petrol', '$', 2.5, 'W12', 'AWD', 'Russia', 1660237, 'Convertible', 'Galicia', 108.07, 5.91, '6865-JZI', 'C', '2014-12-27 22:59:45', '2024-02-22 00:54:18', 'even if the birds run the dog reads', 1),
(14, 'Volvo', '3 Series', 'Volvo 3 Series', '2024-02-22 00:54:18', NULL, 0, 0, 'green', '1964', 8, 4, 1447, 'automatic', 222849, 'electric', '$', 9.3, 'V8', 'AWD', 'Australia', 1296794, 'Convertible', 'Alberta', 50.25, 9.12, '9007-EPL', 'B', '2014-11-22 10:05:25', '2024-02-22 00:54:18', 'because one sandwich run loudly a sun barks', 2),
(15, 'Volkswagen', 'S60', 'Volkswagen S60', '2024-02-22 00:54:18', NULL, 0, 0, 'green', '1958', 4, 4, 589, 'automatic', 536065, 'electric', '£', 9.7, 'I4', 'FWD', 'Turkey', 3202159, 'Hatchback', 'Newfoundland and Labrador', 29.96, 6.79, '8232-KRS', '0', '2013-11-28 13:06:15', '2024-02-22 00:54:18', 'while one cat fly slowly a house ate and one house sleeps', 1),
(16, 'Ford', 'A4', 'Ford A4', '2024-02-22 00:54:18', NULL, 12, 0, 'green', '1997', 4, 3, 668, 'automatic', 1464771, 'electric', '$', 8.7, 'W12', 'RWD', 'China', 4711972, 'SUV', 'Galicia', 77.81, 8.21, '0011-NBX', 'ECO', '2017-10-08 07:17:09', '2024-02-22 00:54:18', 'unless a birds shines a sandwich is', 1),
(17, 'Mercedes-Benz', 'F-150', 'Mercedes-Benz F-150', '2024-02-22 00:54:19', NULL, 0, 0, 'gray', '1942', 4, 2, 659, 'manual', 989919, 'petrol', '$', 5.4, 'V10', 'AWD', 'Brazil', 3016212, 'Coupe', 'Ontario', 72.63, 7.25, '5345-IUL', 'C', '2022-07-17 04:56:42', '2024-02-22 00:54:19', 'once a dog ate brightly a house reads and one car shines quickly', 2),
(18, 'Volkswagen', 'CX-5', 'Volkswagen CX-5', '2024-02-22 00:54:19', NULL, 0, 0, 'purple', '1982', 5, 5, 1129, 'manual', 595954, 'electric', '¥', 2.5, 'V6', 'RWD', 'India', 4586970, 'Sedan', 'Madrid', 104.69, 7.71, '0594-IJY', '0', '2019-06-21 20:54:03', '2024-02-22 00:54:19', 'so that the sandwich sleeps slowly one sandwich reads', 1),
(19, 'Volkswagen', 'Model 3', 'Volkswagen Model 3', '2024-02-22 00:54:19', NULL, 0, 0, 'yellow', '1952', 4, 4, 1495, 'automatic', 399186, 'petrol', '$', 9, 'V10', 'FWD', 'Norway', 2410960, 'Van', 'Yukon', 84.82, 5.84, '1064-PNY', 'B', '2022-04-01 02:58:31', '2024-02-22 00:54:19', 'whether the car shines softly the birds run and the dog run brightly', 2),
(20, 'Ford', 'A4', 'Ford A4', '2024-02-22 00:54:19', NULL, 0, 0, 'green', '1971', 4, 4, 1218, 'manual', 1365399, 'gasoline', '€', 4.2, 'I3', 'AWD', 'Mexico', 3500048, 'Truck', 'Ontario', 70.55, 7.51, '1128-NOP', 'C', '2023-03-29 04:49:53', '2024-02-22 00:54:19', 'if a sun ate a cat ate', 2),
(21, 'Mazda', 'F-150', 'Mazda F-150', '2024-02-22 00:54:19', NULL, 0, 0, 'red', '1964', 2, 2, 638, 'automatic', 695281, 'gasoline', '€', 3.7, 'I3', 'RWD', 'Japan', 1779597, 'Coupe', 'Northwest Territories', 39.31, 6.26, '5523-TQJ', '0', '2016-02-27 07:17:41', '2024-02-22 00:54:19', 'once the car shines loudly the sun run brightly', 2),
(22, 'Volkswagen', 'CX-5', 'Volkswagen CX-5', '2024-02-22 00:54:19', NULL, 0, 0, 'gray', '1991', 3, 3, 81, 'automatic', 982161, 'petrol', '£', 9, 'W12', 'RWD', 'Canada', 4510417, 'Sedan', 'Saskatchewan', 64, 8.15, '2147-ZNA', 'C', '2019-12-24 13:14:29', '2024-02-22 00:54:19', 'after the book sleeps the sandwich reads quickly', 1),
(23, 'BMW', '4 Series Gran Coupe', 'BMW 4 Series Gran Coupe', NULL, NULL, 0, 0, 'red', '2020', 5, 2, 0, 'manual', 11000, 'gasoline', '€', NULL, NULL, NULL, NULL, 33000, NULL, 'Nunavut', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(24, 'Hyundai', 'E-Class', 'Hyundai E-Class', '2024-03-11 01:48:33', NULL, 0, 0, 'red', '1998', 4, 4, 144, 'manual', 1223582, 'electric', '$', 6.3, 'W12', 'FWD', 'Spain', 4994315, 'Sedan', 'Madrid', 44.36, 7.33, '4723-WWL', 'B', '2014-07-20 00:44:34', '2024-03-11 01:48:33', 'unless one sandwich shines one dog barks', 1),
(25, 'Volvo', 'E-Class', 'Volvo E-Class', '2024-03-11 01:48:33', NULL, 0, 0, 'gray', '2006', 5, 3, 753, 'manual', 1161575, 'hybrid', '£', 4.1, 'I4', 'AWD', 'Mexico', 1405668, 'Wagon', 'Manitoba', 74.21, 6.41, '3370-GDY', 'B', '2021-01-21 19:36:17', '2024-03-11 01:48:33', 'although a sandwich ate slowly a sun barks', 2),
(26, 'Ford', 'F-150', 'Ford F-150', '2024-03-11 01:48:33', NULL, 0, 0, 'blue', '1982', 7, 2, 457, 'manual', 67632, 'electric', '¥', 4.3, 'I5', 'FWD', 'Mexico', 1753361, 'Truck', 'Madrid', 16.36, 7.32, '1354-YFT', '0', '2019-06-02 02:03:07', '2024-03-11 01:48:33', 'when the friend ate quickly a car is', 1),
(27, 'Kia', 'A4', 'Kia A4', '2024-03-11 01:48:33', NULL, 0, 0, 'orange', '2021', 4, 3, 165, 'automatic', 1473595, 'electric', '¥', 9.8, 'I4', 'AWD', 'Turkey', 210517, 'Van', 'Castile and León', 30.86, 7.56, '1255-OZD', 'ECO', '2020-03-08 17:05:47', '2024-03-11 01:48:33', 'as the house fly one dog sleeps', 2),
(28, 'Tesla', 'Outback', 'Tesla Outback', '2024-03-11 01:48:33', NULL, 0, 0, 'black', '1927', 7, 4, 223, 'automatic', 277870, 'electric', '€', 8.1, 'I5', 'FWD', 'Russia', 2391816, 'Convertible', 'Yukon', 76.76, 8.52, '3840-XUR', 'B', '2021-05-16 23:05:37', '2024-03-11 01:48:33', 'than a dog barks brightly the sandwich is slowly or one house run', 1),
(29, 'Mazda', 'Cruze', 'Mazda Cruze', '2024-03-11 01:48:33', NULL, 0, 0, 'yellow', '1984', 8, 5, 279, 'manual', 1404429, 'hybrid', '£', 3.3, 'I5', 'FWD', 'Spain', 4477333, 'Truck', 'Saskatchewan', 80.44, 7.13, '8774-EEN', 'B', '2021-07-22 21:27:48', '2024-03-11 01:48:33', 'though one sandwich sleeps slowly one friend run', 1),
(30, 'Volkswagen', 'Model 3', 'Volkswagen Model 3', '2024-03-11 01:48:33', NULL, 0, 0, 'white', '2015', 6, 5, 702, 'manual', 194974, 'petrol', '¥', 3.1, 'I4', 'RWD', 'Canada', 338521, 'Hatchback', 'Castile and León', 68.59, 8.8, '7183-ECE', 'B', '2016-08-25 03:46:38', '2024-03-11 01:48:33', 'whenever the house ate the house is but a house barks quickly', 2),
(31, 'Chevrolet', 'Golf', 'Chevrolet Golf', '2024-03-11 01:48:33', NULL, 0, 0, 'orange', '1956', 5, 2, 83, 'automatic', 115985, 'hybrid', '$', 8.9, 'V6', 'AWD', 'Russia', 1146093, 'Convertible', 'Northwest Territories', 13.67, 9.74, '4449-SPC', 'B', '2020-08-12 14:40:02', '2024-03-11 01:48:33', 'until the dog sleeps a friend run', 2),
(32, 'Chevrolet', 'F-150', 'Chevrolet F-150', '2024-03-11 01:48:33', NULL, 0, 0, 'yellow', '1931', 7, 3, 223, 'automatic', 730325, 'hybrid', '¥', 6.3, 'V10', 'RWD', 'Argentina', 334052, 'Coupe', 'Nova Scotia', 62.65, 9.18, '7603-UFD', 'B', '2011-07-22 18:13:12', '2024-03-11 01:48:33', 'that a sandwich barks the cat shines slowly and a book is softly', 1),
(33, 'Hyundai', 'E-Class', 'Hyundai E-Class', '2024-03-11 01:48:33', NULL, 0, 0, 'orange', '1927', 4, 5, 238, 'automatic', 840505, 'gasoline', '£', 9.1, 'I3', 'FWD', 'China', 1676631, 'Convertible', 'Nova Scotia', 35.63, 6.08, '1129-BLA', 'C', '2017-08-14 06:40:36', '2024-03-11 01:48:33', 'once one sandwich sleeps the sun sleeps quickly', 2),
(34, 'Mercedes-Benz', 'Model 3', 'Mercedes-Benz Model 3', '2024-03-11 01:48:33', NULL, 0, 0, 'yellow', '2015', 3, 3, 398, 'manual', 920015, 'petrol', '¥', 6.7, 'I4', 'FWD', 'Canada', 2809524, 'Convertible', 'Northwest Territories', 31.66, 9.02, '9192-TBT', '0', '2017-01-19 09:34:33', '2024-03-11 01:48:33', 'since the car is softly the birds ate', 2),
(35, 'Mercedes-Benz', 'F-150', 'Mercedes-Benz F-150', '2024-03-11 01:48:34', NULL, 0, 0, 'red', '2016', 5, 5, 687, 'automatic', 500939, 'gasoline', '$', 3.7, 'W12', 'AWD', 'Italy', 439885, 'Sedan', 'Valencia', 99.37, 9.76, '4163-BHB', '0', '2017-03-13 00:13:26', '2024-03-11 01:48:34', 'whether the sun shines quickly one sun fly loudly', 2),
(36, 'BMW', 'S60', 'BMW S60', '2024-03-11 01:48:34', NULL, 0, 0, 'green', '1969', 2, 2, 777, 'automatic', 953301, 'hybrid', '£', 5.6, 'W12', 'RWD', 'China', 442753, 'Wagon', 'Ontario', 20.48, 8.88, '4835-OWL', 'B', '2019-05-07 14:59:38', '2024-03-11 01:48:34', 'whenever one dog run a sun shines quickly and one dog run quickly', 1),
(37, 'Volvo', 'S60', 'Volvo S60', '2024-03-11 01:48:34', NULL, 0, 0, 'green', '1961', 5, 2, 201, 'manual', 1181640, 'gasoline', '$', 2.9, 'I4', 'FWD', 'Russia', 3420648, 'Sedan', 'Nova Scotia', 59.41, 8.02, '7047-ISV', 'C', '2015-05-06 16:42:42', '2024-03-11 01:48:34', 'when a sandwich fly brightly a car sleeps slowly and a birds run quickly', 2),
(38, 'Subaru', 'Golf', 'Subaru Golf', '2024-03-11 01:48:34', NULL, 0, 0, 'blue', '2021', 7, 4, 451, 'automatic', 1493152, 'electric', '$', 9.2, 'I4', 'FWD', 'South Africa', 1118633, 'Van', 'Castile and León', 77.5, 9.09, '1920-XZP', '0', '2022-07-08 11:37:48', '2024-03-11 01:48:34', 'since a birds shines one car is', 2),
(39, 'Toyota', 'F-150', 'Toyota F-150', '2024-03-11 01:48:34', NULL, 0, 0, 'orange', '1997', 2, 3, 948, 'automatic', 168290, 'petrol', '$', 2.9, 'I3', 'RWD', 'South Africa', 2225092, 'Truck', 'Ontario', 73.51, 9.84, '5438-DPR', '0', '2016-08-19 06:56:34', '2024-03-11 01:48:34', 'whether the car ate the dog sleeps brightly but one cat ate', 1),
(40, 'Audi', 'Camry', 'Audi Camry', '2024-03-11 01:48:34', NULL, 0, 0, 'red', '1928', 8, 3, 968, 'automatic', 1052251, 'hybrid', '€', 7.8, 'V12', 'AWD', 'South Africa', 4311021, 'Sedan', 'Saskatchewan', 56.72, 9.36, '3092-TXB', '0', '2013-05-18 01:40:08', '2024-03-11 01:48:34', 'as a car is the car reads softly or the friend run brightly', 1),
(41, 'Chevrolet', 'A4', 'Chevrolet A4', '2024-03-11 01:48:34', NULL, 0, 0, 'yellow', '1986', 8, 5, 1053, 'manual', 129959, 'gasoline', '€', 8.8, 'I3', 'RWD', 'Sweden', 3852672, 'SUV', 'Saskatchewan', 38.66, 6.32, '8961-EMF', 'B', '2014-04-24 17:44:25', '2024-03-11 01:48:34', 'because a sandwich is the friend run quickly and a cat run', 1),
(42, 'Ford', 'Camry', 'Ford Camry', '2024-03-11 01:48:34', NULL, 0, 0, 'red', '1923', 3, 4, 591, 'automatic', 392614, 'petrol', '€', 7.7, 'I4', 'AWD', 'China', 4856583, 'Hatchback', 'Ontario', 10.11, 9.77, '3208-ANY', 'B', '2010-12-06 23:51:11', '2024-03-11 01:48:34', 'while one car fly one sandwich sleeps quickly or one house run', 1),
(43, 'Mercedes-Benz', 'Soul', 'Mercedes-Benz Soul', '2024-03-11 01:48:34', NULL, 0, 0, 'orange', '1963', 5, 4, 228, 'manual', 839608, 'electric', '£', 5.1, 'V12', 'AWD', 'China', 4522769, 'Sedan', 'Madrid', 56.47, 5.76, '1761-CGL', 'B', '2013-05-26 17:58:42', '2024-03-11 01:48:34', 'when one dog run one dog sleeps loudly and one cat is brightly', 2),
(44, 'Mazda', 'Soul', 'Mazda Soul', '2024-03-11 01:48:34', NULL, 0, 0, 'black', '1967', 7, 3, 1407, 'manual', 51890, 'petrol', '¥', 6.6, 'I6', 'AWD', 'Canada', 2322613, 'SUV', 'Newfoundland and Labrador', 83.75, 9.18, '2046-IBK', 'B', '2021-09-08 05:33:58', '2024-03-11 01:48:34', 'so that a sun ate one sun shines quickly', 1),
(45, 'Audi', 'Soul', 'Audi Soul', '2024-03-11 01:48:34', NULL, 0, 0, 'green', '1989', 8, 3, 312, 'manual', 1401384, 'petrol', '£', 7.4, 'I4', 'AWD', 'France', 266977, 'SUV', 'Alberta', 87.16, 7.53, '7682-EHF', 'C', '2018-05-06 13:54:27', '2024-03-11 01:48:34', 'than the house reads the book is and the dog shines', 2),
(46, 'Ford', 'Cruze', 'Ford Cruze', '2024-03-11 01:48:34', NULL, 0, 0, 'white', '1994', 2, 5, 765, 'automatic', 696333, 'electric', '¥', 3.4, 'I6', 'FWD', 'Japan', 1762670, 'Coupe', 'Saskatchewan', 58.6, 6.64, '9608-CVR', 'ECO', '2010-03-06 05:25:36', '2024-03-11 01:48:34', 'because one sun run slowly a friend barks', 1),
(47, 'Toyota', 'Elantra', 'Toyota Elantra', '2024-03-11 01:48:34', NULL, 0, 0, 'purple', '2008', 3, 4, 1287, 'manual', 1129176, 'hybrid', '$', 7.2, 'W12', 'FWD', 'Norway', 2754087, 'Coupe', 'Quebec', 109.87, 9.22, '1594-UBG', 'B', '2023-06-07 16:20:58', '2024-03-11 01:48:34', 'though a sandwich fly a car reads loudly but the sun reads', 1),
(48, 'Mercedes-Benz', 'E-Class', 'Mercedes-Benz E-Class', '2024-03-11 01:48:34', NULL, 0, 0, 'purple', '1969', 4, 2, 406, 'automatic', 870177, 'gasoline', '¥', 8.2, 'V8', 'AWD', 'United Kingdom', 900475, 'SUV', 'British Columbia', 69.45, 6.24, '6305-IML', 'B', '2023-06-26 11:11:56', '2024-03-11 01:48:34', 'while the house run loudly a sun is', 1),
(49, 'Toyota', 'Cruze', 'Toyota Cruze', '2024-03-11 01:48:34', NULL, 0, 0, 'red', '1948', 4, 2, 607, 'automatic', 50598, 'petrol', '€', 3.4, 'W12', 'AWD', 'China', 929264, 'Hatchback', 'Galicia', 93.89, 8.81, '3667-PWY', '0', '2016-07-09 06:03:23', '2024-03-11 01:48:34', 'so that a sun shines loudly the sandwich ate and one sandwich ate loudly', 2),
(50, 'Nissan', 'Civic', 'Nissan Civic', '2024-03-11 01:48:34', NULL, 0, 0, 'blue', '1978', 4, 5, 556, 'automatic', 1289088, 'gasoline', '€', 8.8, 'W16', 'AWD', 'Australia', 2353839, 'Wagon', 'Saskatchewan', 99.16, 9.46, '4836-BWV', 'B', '2019-02-21 22:19:43', '2024-03-11 01:48:34', 'as one dog barks the book run slowly', 2),
(51, 'BMW', 'F-150', 'BMW F-150', '2024-03-11 01:48:34', NULL, 0, 0, 'blue', '1970', 5, 2, 1060, 'automatic', 584244, 'petrol', '€', 3.1, 'W12', 'FWD', 'United Kingdom', 1658725, 'Van', 'Alberta', 28.83, 5.87, '9974-ROV', 'B', '2023-09-13 15:37:33', '2024-03-11 01:48:34', 'while one sandwich sleeps one birds barks but the birds run loudly', 2),
(52, 'BMW', 'F-150', 'BMW F-150', '2024-03-11 01:48:34', NULL, 0, 0, 'green', '1945', 7, 5, 1473, 'automatic', 211487, 'petrol', '€', 3.4, 'I4', 'AWD', 'South Korea', 4766678, 'Hatchback', 'Nunavut', 19.73, 7.59, '0302-ZYZ', 'C', '2015-01-01 01:35:59', '2024-03-11 01:48:34', 'in order to one house shines softly the dog is', 1),
(53, 'Kia', 'Cruze', 'Kia Cruze', '2024-03-11 01:48:34', NULL, 0, 0, 'gray', '1939', 7, 3, 1052, 'manual', 472397, 'gasoline', '£', 4.9, 'I4', 'FWD', 'Japan', 2644933, 'Sedan', 'Catalonia', 106.65, 9.15, '6303-WHJ', 'B', '2012-07-05 18:25:03', '2024-03-11 01:48:34', 'although the friend shines quickly one birds fly brightly but a sun is', 2),
(54, 'Nissan', 'Cruze', 'Nissan Cruze', '2024-03-11 01:48:34', NULL, 0, 0, 'blue', '1994', 3, 5, 1280, 'manual', 256429, 'petrol', '$', 3.6, 'V8', 'AWD', 'Australia', 984565, 'Truck', 'Manitoba', 90.57, 7.14, '7291-VLP', '0', '2019-06-05 19:42:03', '2024-03-11 01:48:34', 'so that the cat shines the dog reads brightly or a cat run loudly', 2),
(55, 'Tesla', 'CX-5', 'Tesla CX-5', '2024-03-11 01:48:34', NULL, 0, 0, 'purple', '1921', 7, 3, 1368, 'manual', 139182, 'gasoline', '$', 2.3, 'W12', 'AWD', 'Norway', 148015, 'Truck', 'British Columbia', 63.74, 9.26, '1151-BGJ', 'C', '2012-11-20 11:56:53', '2024-03-11 01:48:34', 'as the sun reads loudly a friend run quickly', 2),
(56, 'Kia', '3 Series', 'Kia 3 Series', '2024-03-11 01:48:34', NULL, 0, 0, 'green', '1962', 4, 4, 254, 'automatic', 13988, 'petrol', '€', 7.5, 'W12', 'FWD', 'Japan', 1181686, 'Van', 'Saskatchewan', 84.32, 7.25, '0637-RDH', 'B', '2022-04-17 12:53:54', '2024-03-11 01:48:34', 'before one car barks loudly the sandwich fly', 1),
(57, 'BMW', '3 Series', 'BMW 3 Series', '2024-03-11 01:48:34', NULL, 0, 0, 'green', '1926', 6, 4, 840, 'automatic', 741711, 'gasoline', '€', 10, 'V12', 'RWD', 'Japan', 3130151, 'Truck', 'Northwest Territories', 88.64, 6.67, '0549-LNH', 'C', '2018-01-22 12:25:19', '2024-03-11 01:48:34', 'before one dog reads softly one car sleeps', 1),
(58, 'Audi', 'Cruze', 'Audi Cruze', '2024-03-11 01:48:34', NULL, 0, 0, 'red', '1940', 3, 4, 297, 'manual', 300894, 'hybrid', '€', 8.7, 'V10', 'FWD', 'Spain', 4085434, 'Sedan', 'Newfoundland and Labrador', 84.74, 5.51, '4608-RMB', 'ECO', '2011-05-11 18:46:03', '2024-03-11 01:48:34', 'unless a car sleeps the house barks', 1),
(59, 'Kia', 'Model 3', 'Kia Model 3', '2024-03-11 01:48:34', NULL, 0, 0, 'black', '1981', 6, 5, 236, 'automatic', 1214334, 'petrol', '£', 5.2, 'W16', 'FWD', 'Sweden', 4404418, 'Truck', 'Nova Scotia', 82.23, 5.75, '3467-WJJ', 'C', '2013-04-20 22:30:55', '2024-03-11 01:48:34', 'unless a dog run brightly a sun barks but one friend sleeps', 2),
(60, 'Kia', 'Cruze', 'Kia Cruze', '2024-03-11 01:48:34', NULL, 0, 0, 'yellow', '1925', 3, 3, 969, 'automatic', 356164, 'petrol', '¥', 8.6, 'V6', 'FWD', 'Spain', 1028422, 'Coupe', 'Ontario', 21.2, 5.56, '6157-QLW', 'C', '2018-04-27 23:11:25', '2024-03-11 01:48:34', 'even if the sun sleeps the cat run but one car reads', 1),
(61, 'Volvo', 'Golf', 'Volvo Golf', '2024-03-11 01:48:34', NULL, 0, 0, 'gray', '2014', 2, 4, 1256, 'manual', 1039817, 'petrol', '£', 7.2, 'W16', 'FWD', 'Norway', 4049004, 'Van', 'Newfoundland and Labrador', 74.7, 5.53, '3515-TQV', 'B', '2022-04-18 13:11:46', '2024-03-11 01:48:34', 'after a book fly softly a friend fly slowly', 1),
(62, 'Chevrolet', 'Cruze', 'Chevrolet Cruze', '2024-03-11 01:48:34', NULL, 0, 0, 'purple', '2000', 4, 5, 559, 'automatic', 589517, 'gasoline', '£', 2.3, 'V8', 'RWD', 'United Kingdom', 4421168, 'SUV', 'Andalusia', 104.48, 7.6, '5826-XVI', 'ECO', '2011-02-01 23:19:35', '2024-03-11 01:48:34', 'that one friend sleeps loudly the cat run but the sun ate', 1),
(63, 'Subaru', 'Model 3', 'Subaru Model 3', '2024-03-11 01:48:34', NULL, 0, 0, 'black', '1943', 3, 3, 237, 'automatic', 551530, 'gasoline', '¥', 4.5, 'V10', 'RWD', 'Spain', 3094399, 'SUV', 'Ontario', 89.14, 6.06, '5120-HUR', '0', '2011-11-06 10:17:03', '2024-03-11 01:48:34', 'unless a sandwich reads quickly one sandwich barks', 1),
(64, 'Chevrolet', 'Model 3', 'Chevrolet Model 3', '2024-03-11 01:48:34', NULL, 0, 0, 'purple', '2013', 6, 3, 1339, 'automatic', 811275, 'electric', '€', 8.6, 'V8', 'RWD', 'Argentina', 1967778, 'Wagon', 'New Brunswick', 53.5, 5.66, '5896-EQG', 'ECO', '2020-09-13 19:34:09', '2024-03-11 01:48:34', 'while a sandwich barks brightly one cat reads', 1),
(65, 'Toyota', 'CX-5', 'Toyota CX-5', '2024-03-11 01:48:34', NULL, 0, 0, 'red', '1944', 4, 2, 1328, 'manual', 423118, 'petrol', '¥', 2.4, 'I5', 'AWD', 'Australia', 2365749, 'Sedan', 'Manitoba', 64.61, 9.31, '1369-BZC', 'ECO', '2010-02-14 15:34:18', '2024-03-11 01:48:34', 'unless a sun fly a car is', 1),
(66, 'Tesla', 'Cruze', 'Tesla Cruze', '2024-03-11 01:48:34', NULL, 0, 0, 'green', '2007', 5, 5, 1329, 'manual', 945772, 'electric', '¥', 3.8, 'V8', 'RWD', 'Argentina', 857361, 'Coupe', 'Nunavut', 21.63, 7.22, '1451-BMC', 'B', '2015-07-19 16:46:33', '2024-03-11 01:48:34', 'so that the dog ate a birds run loudly and a sun barks', 1),
(67, 'Tesla', 'A4', 'Tesla A4', '2024-03-11 01:48:34', NULL, 0, 0, 'gray', '1939', 8, 2, 617, 'automatic', 711565, 'electric', '$', 6.1, 'I6', 'AWD', 'India', 3199869, 'Wagon', 'Nova Scotia', 62.64, 9, '8286-VVO', 'B', '2018-10-07 08:35:01', '2024-03-11 01:48:34', 'before a house barks the birds shines slowly and the book sleeps brightly', 1),
(68, 'Mazda', 'S60', 'Mazda S60', '2024-03-11 01:48:34', NULL, 0, 0, 'white', '2003', 7, 3, 1397, 'manual', 939428, 'electric', '€', 5.9, 'W12', 'AWD', 'Canada', 1006216, 'Wagon', 'Prince Edward Island', 65.46, 9.53, '1393-ZDI', 'ECO', '2015-03-02 02:36:01', '2024-03-11 01:48:34', 'although one sandwich ate loudly one birds fly', 1),
(69, 'Volkswagen', 'S60', 'Volkswagen S60', '2024-03-11 01:48:34', NULL, 0, 0, 'gray', '1983', 2, 3, 664, 'manual', 1258926, 'hybrid', '€', 7.4, 'I4', 'AWD', 'China', 4786257, 'Van', 'Nova Scotia', 12.26, 6.68, '4877-VDT', 'C', '2014-05-14 00:10:25', '2024-03-11 01:48:34', 'until a sun run slowly the car fly', 2),
(70, 'Volkswagen', 'Soul', 'Volkswagen Soul', '2024-03-11 01:48:34', NULL, 0, 0, 'yellow', '2003', 6, 5, 480, 'manual', 415409, 'hybrid', '¥', 7.3, 'I5', 'RWD', 'Brazil', 2930870, 'Wagon', 'Andalusia', 20.21, 8.9, '8640-TNN', 'ECO', '2019-04-04 04:33:10', '2024-03-11 01:48:34', 'since a house barks quickly a sandwich is', 1),
(71, 'Kia', '3 Series', 'Kia 3 Series', '2024-03-11 01:48:35', NULL, 0, 0, 'yellow', '1987', 2, 4, 773, 'automatic', 320760, 'gasoline', '€', 9.3, 'I6', 'AWD', 'United Kingdom', 3173251, 'Truck', 'Newfoundland and Labrador', 18.05, 8.96, '8052-ZNK', 'ECO', '2010-06-10 10:08:40', '2024-03-11 01:48:35', 'that a cat is slowly one cat sleeps', 2),
(72, 'Volkswagen', 'Cruze', 'Volkswagen Cruze', '2024-03-11 01:48:35', NULL, 0, 0, 'gray', '2023', 7, 5, 1209, 'manual', 610984, 'electric', '¥', 8.5, 'V12', 'RWD', 'United Kingdom', 3428190, 'Convertible', 'Alberta', 69.37, 8.03, '3636-ISV', 'C', '2015-05-17 22:59:07', '2024-03-11 01:48:35', 'before one dog sleeps slowly one friend run softly but the car fly brightly', 2),
(73, 'Nissan', 'Model 3', 'Nissan Model 3', '2024-03-11 01:48:35', NULL, 0, 0, 'white', '1985', 8, 5, 681, 'manual', 194080, 'gasoline', '¥', 4, 'V8', 'FWD', 'France', 3051360, 'SUV', 'Galicia', 65.41, 8.77, '7444-YEG', 'B', '2018-12-15 11:38:46', '2024-03-11 01:48:35', 'though one car ate the cat is slowly', 1);

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
(884, '/media/image5.jpg', 1),
(885, '/media/image2.jpg', 1),
(886, '/media/image4.jpg', 1),
(887, '/media/image6.jpg', 1),
(888, '/media/image8.jpeg', 1),
(889, '/media/image10.jpg', 1),
(890, '/media/image1.jpg', 2),
(891, '/media/image4.jpg', 2),
(892, '/media/image1.jpg', 2),
(893, '/media/image2.jpg', 2),
(894, '/media/image9.jpg', 2),
(895, '/media/image10.jpg', 2),
(896, '/media/image8.jpeg', 2),
(904, '/media/image8.jpeg', 4),
(905, '/media/image1.jpg', 5),
(906, '/media/image2.jpg', 5),
(907, '/media/image8.jpeg', 5),
(908, '/media/image6.jpg', 5),
(909, '/media/image10.jpg', 5),
(910, '/media/image1.jpg', 5),
(911, '/media/image9.jpg', 5),
(912, '/media/image1.jpg', 6),
(913, '/media/image6.jpg', 6),
(914, '/media/image5.jpg', 6),
(915, '/media/image5.jpg', 7),
(916, '/media/image10.jpg', 7),
(917, '/media/image8.jpeg', 7),
(918, '/media/image5.jpg', 7),
(919, '/media/image1.jpg', 7),
(920, '/media/image2.jpg', 7),
(921, '/media/image5.jpg', 7),
(922, '/media/image10.jpg', 8),
(923, '/media/image5.jpg', 9),
(924, '/media/image9.jpg', 9),
(925, '/media/image7.jpg', 9),
(926, '/media/image3.jpg', 9),
(927, '/media/image10.jpg', 9),
(928, '/media/image9.jpg', 9),
(929, '/media/image5.jpg', 9),
(930, '/media/image8.jpeg', 10),
(931, '/media/image3.jpg', 11),
(932, '/media/image3.jpg', 11),
(933, '/media/image10.jpg', 11),
(934, '/media/image1.jpg', 11),
(935, '/media/image4.jpg', 11),
(936, '/media/image9.jpg', 13),
(937, '/media/image3.jpg', 13),
(938, '/media/image4.jpg', 13),
(939, '/media/image3.jpg', 13),
(940, '/media/image3.jpg', 13),
(941, '/media/image8.jpeg', 14),
(942, '/media/image4.jpg', 14),
(943, '/media/image1.jpg', 14),
(944, '/media/image6.jpg', 14),
(945, '/media/image8.jpeg', 14),
(946, '/media/image7.jpg', 14),
(947, '/media/image1.jpg', 15),
(948, '/media/image5.jpg', 15),
(949, '/media/image4.jpg', 15),
(950, '/media/image10.jpg', 15),
(951, '/media/image6.jpg', 15),
(952, '/media/image5.jpg', 15),
(953, '/media/image6.jpg', 15),
(954, '/media/image6.jpg', 16),
(955, '/media/image6.jpg', 16),
(956, '/media/image9.jpg', 16),
(957, '/media/image9.jpg', 16),
(958, '/media/image6.jpg', 16),
(959, '/media/image6.jpg', 17),
(960, '/media/image4.jpg', 17),
(961, '/media/image1.jpg', 18),
(962, '/media/image8.jpeg', 18),
(963, '/media/image7.jpg', 18),
(964, '/media/image2.jpg', 18),
(965, '/media/image4.jpg', 18),
(966, '/media/image8.jpeg', 18),
(967, '/media/image7.jpg', 19),
(968, '/media/image1.jpg', 19),
(969, '/media/image5.jpg', 19),
(970, '/media/image7.jpg', 19),
(971, '/media/image3.jpg', 19),
(972, '/media/image2.jpg', 19),
(973, '/media/image1.jpg', 19),
(974, '/media/image1.jpg', 19),
(975, '/media/image10.jpg', 20),
(976, '/media/image7.jpg', 20),
(977, '/media/image3.jpg', 21),
(978, '/media/image9.jpg', 21),
(979, '/media/image10.jpg', 21),
(980, '/media/image6.jpg', 21),
(981, '/media/image6.jpg', 21),
(982, '/media/image10.jpg', 21),
(983, '/media/image3.jpg', 22),
(984, '/media/image7.jpg', 22),
(985, '/media/image4.jpg', 22),
(986, '/media/image3.jpg', 22),
(987, '/media/image3.jpg', 22),
(988, '/media/image4.jpg', 24),
(989, '/media/image5.jpg', 24),
(990, '/media/image5.jpg', 24),
(991, '/media/image4.jpg', 24),
(992, '/media/image4.jpg', 24),
(993, '/media/image1.jpg', 24),
(994, '/media/image10.jpg', 24),
(995, '/media/image8.jpeg', 24),
(996, '/media/image6.jpg', 25),
(997, '/media/image3.jpg', 25),
(998, '/media/image6.jpg', 25),
(999, '/media/image3.jpg', 25),
(1000, '/media/image10.jpg', 25),
(1001, '/media/image7.jpg', 26),
(1002, '/media/image7.jpg', 26),
(1003, '/media/image7.jpg', 26),
(1004, '/media/image4.jpg', 26),
(1005, '/media/image6.jpg', 26),
(1006, '/media/image7.jpg', 27),
(1007, '/media/image5.jpg', 27),
(1008, '/media/image10.jpg', 27),
(1009, '/media/image5.jpg', 27),
(1010, '/media/image10.jpg', 27),
(1011, '/media/image6.jpg', 27),
(1012, '/media/image9.jpg', 28),
(1013, '/media/image10.jpg', 29),
(1014, '/media/image4.jpg', 30),
(1015, '/media/image10.jpg', 30),
(1016, '/media/image6.jpg', 30),
(1017, '/media/image6.jpg', 31),
(1018, '/media/image8.jpeg', 31),
(1019, '/media/image10.jpg', 31),
(1020, '/media/image6.jpg', 31),
(1021, '/media/image10.jpg', 31),
(1022, '/media/image9.jpg', 31),
(1023, '/media/image2.jpg', 32),
(1024, '/media/image1.jpg', 33),
(1025, '/media/image7.jpg', 33),
(1026, '/media/image4.jpg', 34),
(1027, '/media/image8.jpeg', 34),
(1028, '/media/image8.jpeg', 34),
(1029, '/media/image3.jpg', 34),
(1030, '/media/image10.jpg', 34),
(1031, '/media/image2.jpg', 35),
(1032, '/media/image10.jpg', 35),
(1033, '/media/image8.jpeg', 35),
(1034, '/media/image2.jpg', 35),
(1035, '/media/image6.jpg', 36),
(1036, '/media/image4.jpg', 36),
(1037, '/media/image1.jpg', 36),
(1038, '/media/image7.jpg', 36),
(1039, '/media/image7.jpg', 36),
(1040, '/media/image4.jpg', 36),
(1041, '/media/image2.jpg', 36),
(1042, '/media/image5.jpg', 36),
(1043, '/media/image10.jpg', 37),
(1044, '/media/image8.jpeg', 37),
(1045, '/media/image8.jpeg', 37),
(1046, '/media/image4.jpg', 37),
(1047, '/media/image3.jpg', 37),
(1048, '/media/image8.jpeg', 37),
(1049, '/media/image7.jpg', 37),
(1050, '/media/image1.jpg', 37),
(1051, '/media/image6.jpg', 38),
(1052, '/media/image1.jpg', 39),
(1053, '/media/image5.jpg', 39),
(1054, '/media/image1.jpg', 39),
(1055, '/media/image7.jpg', 40),
(1056, '/media/image3.jpg', 41),
(1057, '/media/image8.jpeg', 41),
(1058, '/media/image9.jpg', 41),
(1059, '/media/image1.jpg', 41),
(1060, '/media/image2.jpg', 41),
(1061, '/media/image4.jpg', 41),
(1062, '/media/image2.jpg', 41),
(1063, '/media/image2.jpg', 41),
(1064, '/media/image10.jpg', 42),
(1065, '/media/image10.jpg', 42),
(1066, '/media/image1.jpg', 43),
(1067, '/media/image6.jpg', 43),
(1068, '/media/image3.jpg', 44),
(1069, '/media/image1.jpg', 44),
(1070, '/media/image3.jpg', 44),
(1071, '/media/image1.jpg', 44),
(1072, '/media/image7.jpg', 44),
(1073, '/media/image7.jpg', 44),
(1074, '/media/image7.jpg', 45),
(1075, '/media/image1.jpg', 45),
(1076, '/media/image3.jpg', 45),
(1077, '/media/image3.jpg', 45),
(1078, '/media/image5.jpg', 45),
(1079, '/media/image9.jpg', 45),
(1080, '/media/image6.jpg', 45),
(1081, '/media/image9.jpg', 45),
(1082, '/media/image7.jpg', 46),
(1083, '/media/image9.jpg', 46),
(1084, '/media/image5.jpg', 46),
(1085, '/media/image3.jpg', 46),
(1086, '/media/image1.jpg', 46),
(1087, '/media/image3.jpg', 46),
(1088, '/media/image3.jpg', 46),
(1089, '/media/image7.jpg', 46),
(1090, '/media/image5.jpg', 47),
(1091, '/media/image3.jpg', 47),
(1092, '/media/image3.jpg', 47),
(1093, '/media/image8.jpeg', 47),
(1094, '/media/image2.jpg', 47),
(1095, '/media/image5.jpg', 47),
(1096, '/media/image4.jpg', 47),
(1097, '/media/image4.jpg', 47),
(1098, '/media/image6.jpg', 48),
(1099, '/media/image8.jpeg', 48),
(1100, '/media/image4.jpg', 48),
(1101, '/media/image6.jpg', 48),
(1102, '/media/image5.jpg', 48),
(1103, '/media/image6.jpg', 49),
(1104, '/media/image10.jpg', 50),
(1105, '/media/image7.jpg', 50),
(1106, '/media/image10.jpg', 50),
(1107, '/media/image3.jpg', 50),
(1108, '/media/image5.jpg', 50),
(1109, '/media/image4.jpg', 51),
(1110, '/media/image9.jpg', 51),
(1111, '/media/image2.jpg', 51),
(1112, '/media/image2.jpg', 52),
(1113, '/media/image9.jpg', 52),
(1114, '/media/image6.jpg', 52),
(1115, '/media/image9.jpg', 52),
(1116, '/media/image4.jpg', 52),
(1117, '/media/image1.jpg', 52),
(1118, '/media/image9.jpg', 52),
(1119, '/media/image1.jpg', 53),
(1120, '/media/image2.jpg', 53),
(1121, '/media/image6.jpg', 53),
(1122, '/media/image7.jpg', 54),
(1123, '/media/image9.jpg', 54),
(1124, '/media/image4.jpg', 54),
(1125, '/media/image5.jpg', 54),
(1126, '/media/image5.jpg', 54),
(1127, '/media/image10.jpg', 54),
(1128, '/media/image9.jpg', 55),
(1129, '/media/image10.jpg', 55),
(1130, '/media/image8.jpeg', 55),
(1131, '/media/image10.jpg', 56),
(1132, '/media/image6.jpg', 56),
(1133, '/media/image5.jpg', 57),
(1134, '/media/image4.jpg', 57),
(1135, '/media/image7.jpg', 57),
(1136, '/media/image6.jpg', 57),
(1137, '/media/image1.jpg', 57),
(1138, '/media/image5.jpg', 57),
(1139, '/media/image8.jpeg', 57),
(1140, '/media/image9.jpg', 57),
(1141, '/media/image7.jpg', 58),
(1142, '/media/image3.jpg', 58),
(1143, '/media/image6.jpg', 58),
(1144, '/media/image3.jpg', 58),
(1145, '/media/image4.jpg', 58),
(1146, '/media/image9.jpg', 58),
(1147, '/media/image10.jpg', 58),
(1148, '/media/image4.jpg', 59),
(1149, '/media/image3.jpg', 59),
(1150, '/media/image4.jpg', 59),
(1151, '/media/image7.jpg', 59),
(1152, '/media/image9.jpg', 60),
(1153, '/media/image8.jpeg', 60),
(1154, '/media/image2.jpg', 60),
(1155, '/media/image3.jpg', 60),
(1156, '/media/image6.jpg', 61),
(1157, '/media/image10.jpg', 61),
(1158, '/media/image6.jpg', 61),
(1159, '/media/image4.jpg', 61),
(1160, '/media/image9.jpg', 62),
(1161, '/media/image7.jpg', 62),
(1162, '/media/image5.jpg', 63),
(1163, '/media/image8.jpeg', 64),
(1164, '/media/image1.jpg', 64),
(1165, '/media/image7.jpg', 65),
(1166, '/media/image6.jpg', 65),
(1167, '/media/image8.jpeg', 65),
(1168, '/media/image8.jpeg', 66),
(1169, '/media/image3.jpg', 66),
(1170, '/media/image1.jpg', 66),
(1171, '/media/image1.jpg', 66),
(1172, '/media/image1.jpg', 66),
(1173, '/media/image6.jpg', 66),
(1174, '/media/image8.jpeg', 66),
(1175, '/media/image6.jpg', 66),
(1176, '/media/image2.jpg', 67),
(1177, '/media/image6.jpg', 67),
(1178, '/media/image5.jpg', 67),
(1179, '/media/image6.jpg', 68),
(1180, '/media/image9.jpg', 68),
(1181, '/media/image9.jpg', 68),
(1182, '/media/image1.jpg', 68),
(1183, '/media/image3.jpg', 69),
(1184, '/media/image9.jpg', 69),
(1185, '/media/image7.jpg', 69),
(1186, '/media/image7.jpg', 69),
(1187, '/media/image9.jpg', 69),
(1188, '/media/image3.jpg', 69),
(1189, '/media/image8.jpeg', 70),
(1190, '/media/image9.jpg', 70),
(1191, '/media/image1.jpg', 70),
(1192, '/media/image7.jpg', 70),
(1193, '/media/image8.jpeg', 71),
(1194, '/media/image3.jpg', 71),
(1195, '/media/image4.jpg', 71),
(1196, '/media/image10.jpg', 71),
(1197, '/media/image9.jpg', 71),
(1198, '/media/image1.jpg', 71),
(1199, '/media/image6.jpg', 71),
(1200, '/media/image8.jpeg', 71),
(1201, '/media/image10.jpg', 72),
(1202, '/media/image1.jpg', 72),
(1203, '/media/image3.jpg', 72),
(1204, '/media/image9.jpg', 72),
(1205, '/media/image9.jpg', 73),
(1206, '/media/image3.jpg', 73),
(1207, '/media/image1.jpg', 73);

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
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `postal_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `phone` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role` tinyint(1) DEFAULT '0',
  `member_since` datetime DEFAULT NULL,
  `last_connection` datetime DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  `actived` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `gender`, `birthdate`, `country`, `province`, `address`, `postal_code`, `description`, `profile_picture`, `status`, `phone`, `email`, `password`, `role`, `member_since`, `last_connection`, `banned`, `actived`) VALUES
(1, 'Fernando', 'Alonso', 'ElNano', 'Man', '2022-02-24 04:25:00', 'Spain', 'Asturias', 'Calle Nano 33', '53033', 'Test description', 'default.png', 1, '633974333', 'nano@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '1996-07-15 15:35:07', '1936-02-15 00:37:41', 1, 1),
(2, 'Carlos', 'Sainz', 'carlossainz', 'Man', '1991-05-16 16:56:24', 'Spain', 'Madrid', 'Calle Sainz 55', '53055', 'Test description', 'default.png', 1, '655974455', 'sainz@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2019-02-06 02:54:17', '1969-08-30 01:11:21', 1, 1),
(3, 'Alan', 'Latorre', 'alaat0', 'Man', '1940-01-24 16:53:42', 'Italy', 'British Columbia', '21 Park Avenue', 'WC2N 5DU', NULL, NULL, 1, '561079640', 'alalat0@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(4, 'Eloy', 'Puig', 'eloui1', 'Woman', '1957-07-05 01:34:14', 'South Africa', 'British Columbia', '20 Forest Drive', 'K1F 4B1', NULL, NULL, 1, '783044591', 'elopui1@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(5, 'Laura', 'Aznar', 'lauzn2', 'Man', '1942-01-27 10:48:02', 'China', 'Madrid', '46 Golden Gate', 'E1C 1V1', NULL, NULL, 0, '264594045', 'lauazn2@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(6, 'Raquel', 'López', 'raqop3', 'Woman', '2003-06-29 19:11:20', 'France', 'Manitoba', '37 River Road', 'K1J 2B1', NULL, NULL, 0, '438555840', 'raqlóp3@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(7, 'Jaime', 'Alcañiz', 'jailc4', 'Prefer not to say', '1989-07-24 06:19:49', 'Australia', 'British Columbia', '31 Cedar Road', '194615', NULL, NULL, 0, '540103646', 'jaialc4@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(8, 'Elena', 'Aparici', 'elepa5', 'Prefer not to say', '1954-08-07 13:23:12', 'China', 'British Columbia', '52 Pine Street', '08931', NULL, NULL, 1, '522347732', 'eleapa5@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(9, 'Rafael', 'Fabra', 'rafab6', 'Prefer not to say', '2021-04-06 20:02:31', 'United Kingdom', 'Andalusia', '41 Forest Drive', '18561', NULL, NULL, 0, '677088171', 'raffab6@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(10, 'Eva', 'Rozalén', 'evaoz7', 'Man', '2005-12-29 04:45:05', 'India', 'Newfoundland and Labrador', '11 Meadow Lane', '10178', NULL, NULL, 0, '262542259', 'evaroz7@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(11, 'Pablo', 'Roselló', 'pabos8', 'Prefer not to say', '2015-10-30 00:50:48', 'Argentina', 'Northwest Territories', '36 Valley Lane', '37177', NULL, NULL, 0, '944923106', 'pabros8@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(12, 'Eloy', 'Cano', 'eloan9', 'Man', '1933-09-09 19:16:19', 'Canada', 'Galicia', '58 Main Street', '75481', NULL, NULL, 1, '730352177', 'elocan9@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(13, 'Nieves', 'González', 'nieon10', 'Prefer not to say', '1994-02-13 13:47:06', 'Germany', 'Manitoba', '23 Skyline Drive', '17115', NULL, NULL, 1, '148826957', 'niegon10@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(14, 'Paula', 'Díaz', 'pauia11', 'Prefer not to say', '2017-11-08 10:30:06', 'United States', 'Yukon', '4 Lake Shore', '16115', NULL, NULL, 1, '507038397', 'paudía11@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(15, 'Eva', 'Alcañiz', 'evalc12', 'Prefer not to say', '1933-01-20 10:24:25', 'Spain', 'Basque Country', '25 Ocean View', '37161', NULL, NULL, 1, '503128044', 'evaalc12@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(16, 'Pablo', 'Roselló', 'pabos13', 'Prefer not to say', '1954-05-16 02:09:39', 'Australia', 'Prince Edward Island', '5 Ocean View', 'WC2N 5DU', NULL, NULL, 1, '271156887', 'pabros13@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(17, 'Fernando', 'Maldonado', 'feral14', 'Man', '1984-04-21 23:48:50', 'Spain', 'Madrid', '45 Skyline Drive', '10115', NULL, NULL, 0, '521925730', 'fermal14@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(18, 'Mónica', 'Marín', 'monar15', 'Man', '2001-09-14 18:43:55', 'Canada', 'Prince Edward Island', '14 Golden Gate', 'K1W 7B1', NULL, NULL, 0, '992410388', 'mónmar15@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(19, 'José Antonio', 'Quilez', 'josui16', 'Man', '1989-12-03 00:36:55', 'Germany', 'Castile and León', '34 River Road', '129053', NULL, NULL, 0, '117737792', 'josqui16@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(20, 'Mónica', 'Ferrer', 'moner17', 'Prefer not to say', '1950-03-03 20:03:19', 'South Africa', 'British Columbia', '45 Mountain View', '87183', NULL, NULL, 1, '669615683', 'mónfer17@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(21, 'Nieves', 'Gómez', 'nieom18', 'Prefer not to say', '1958-11-08 22:51:15', 'South Africa', 'Galicia', '21 Skyline Drive', '414051', NULL, NULL, 1, '896113707', 'niegóm18@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1),
(22, 'Laura', 'Gómez', 'lauom19', 'Prefer not to say', '2007-05-19 16:00:46', 'Canada', 'Andalusia', '38 Elm Boulevard', '28261', NULL, NULL, 0, '627092165', 'laugóm19@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-03-11 16:11:18', '2024-03-11 16:11:18', 0, 1);

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint NOT NULL,
  `id_user` bigint NOT NULL,
  `id_car` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `favorites`
--

ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`id_user`),
  ADD KEY `fk_id_car` (`id_car`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1208;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_car`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`id_rated_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`id_rating_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`id_car`) REFERENCES `car` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
