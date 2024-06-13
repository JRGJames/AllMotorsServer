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
DROP DATABASE IF EXISTS allmotors;
CREATE DATABASE allmotors;
USE allmotors;

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
-- Volcado de datos para la tabla `car`
--

INSERT INTO `car` (`id`, `id_owner`, `title`, `price`, `currency`, `brand`, `model`, `year`, `color`, `seats`, `doors`, `description`, `location`, `city`, `gearbox`, `fuel`, `last_update`, `date_uploaded`, `views`, `saves`, `distance`, `type`, `horsepower`, `acceleration`, `emissions`, `drive`, `consumption`) VALUES
(2, 3, 'Chevrolet Bolt EV Corvette', 17300, '¥', 'chevrolet', 'corvette', 1990, '#1F2937', 2, 3, 'while one house sleeps loudly one book reads', '-0.37749273937532735 39.4696641313445', 'València', 'manual', 'hybrid', '2024-06-12 13:31:52', NULL, 117, 0, 897000, 'sedan', 694, 3.4, 59.04, 'rwd', 5.79),
(6, 1, 'Honda S60', 1004933, '€', 'Honda', 'S60', 1976, 'red', 5, 5, 'while a book shines brightly the cat ate', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'electric', '2024-06-12 13:27:38', '2024-02-22 00:38:09', 40, 0, 1208320, 'convertible', 351, 8.4, 102.76, 'RWD', 9.12),
(7, 5, 'BMW E76', 3689, '€', 'chevrolet', 'civic', 2021, '#000080', 4, 2, 'when the car ate one friend shines slowly and a sun barks softly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'gasoline', '2024-06-12 13:35:28', '2024-02-22 00:38:09', 125, 0, 61000, 'coupe', 1185, 3.3, 45.93, 'rwd', 9.03),
(8, 2, 'Kia F-150', 1242127, '$', 'Kia', 'F-150', 1931, 'green', 6, 4, 'until the house fly one sandwich is', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'hybrid', '2024-06-11 09:28:04', '2024-02-22 00:38:09', 10, 1, 1094050, 'sedan', 1007, 5, 61.76, 'AWD', 9.95),
(9, 1, 'Hyundai CX-5', 4559772, '€', 'Hyundai', 'CX-5', 1998, 'yellow', 6, 3, 'because a book reads slowly the friend barks', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-06-12 13:25:26', '2024-02-22 00:38:09', 49, 0, 620285, 'hatchback', 1273, 8, 32.65, 'FWD', 6.34),
(10, 2, 'Hyundai Civic', 428536, '£', 'Hyundai', 'Civic', 2001, 'black', 5, 4, 'where one cat sleeps brightly the car fly softly or a sun sleeps', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'petrol', '2024-06-11 08:08:05', '2024-02-22 00:38:09', 4, 0, 110204, 'truck', 248, 6.1, 24.4, 'AWD', 8.22),
(11, 1, 'Hyundai F-150', 3352101, '£', 'Hyundai', 'F-150', 1961, 'orange', 5, 5, 'unless one friend reads a house is slowly and one house barks slowly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'electric', '2024-06-10 16:01:39', '2024-02-22 00:38:09', 1, 0, 397078, 'van', 1439, 9, 88.92, 'FWD', 8.31),
(13, 1, 'Chevrolet Soul', 1660237, '$', 'Chevrolet', 'Soul', 1971, 'yellow', 5, 4, 'even if the birds run the dog reads', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-02-22 00:54:18', '2024-02-22 00:54:18', 3, 0, 444314, 'convertible', 693, 2.5, 108.07, 'AWD', 5.91),
(14, 2, 'Volvo 3 Series', 1296794, '$', 'Volvo', '3 Series', 1964, 'green', 8, 4, 'because one sandwich run loudly a sun barks', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'electric', '2024-06-11 08:30:48', '2024-02-22 00:54:18', 5, 0, 222849, 'convertible', 1447, 9.3, 50.25, 'AWD', 9.12),
(15, 1, 'Volkswagen S60', 3202159, '£', 'Volkswagen', 'S60', 1958, 'green', 4, 4, 'while one cat fly slowly a house ate and one house sleeps', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'electric', '2024-02-22 00:54:18', '2024-02-22 00:54:18', 76, 0, 536065, 'hatchback', 589, 9.7, 29.96, 'FWD', 6.79),
(16, 1, 'Ford A4', 4711972, '$', 'Ford', 'A4', 1997, 'green', 4, 3, 'unless a birds shines a sandwich is', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'electric', '2024-02-22 00:54:18', '2024-02-22 00:54:18', 32, 0, 1464771, 'SUV', 668, 8.7, 77.81, 'RWD', 8.21),
(17, 2, 'Mercedes-Benz F-150', 3016212, '$', 'Mercedes-Benz', 'F-150', 1942, 'gray', 4, 2, 'once a dog ate brightly a house reads and one car shines quickly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'petrol', '2024-06-11 09:28:09', '2024-02-22 00:54:19', 3, 0, 989919, 'coupe', 659, 5.4, 72.63, 'AWD', 7.25),
(18, 1, 'Volkswagen CX-5', 4586970, '¥', 'Volkswagen', 'CX-5', 1982, 'purple', 5, 5, 'so that the sandwich sleeps slowly one sandwich reads', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'electric', '2024-02-22 00:54:19', '2024-02-22 00:54:19', 3, 0, 595954, 'sedan', 1129, 2.5, 104.69, 'RWD', 7.71),
(19, 2, 'Volkswagen Model 3', 2410960, '$', 'Volkswagen', 'Model 3', 1952, 'yellow', 4, 4, 'whether the car shines softly the birds run and the dog run brightly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-06-11 07:48:29', '2024-02-22 00:54:19', 4, 0, 399186, 'van', 1495, 9, 84.82, 'FWD', 5.84),
(20, 2, 'Ford A4', 3500048, '€', 'Ford', 'A4', 1971, 'green', 4, 4, 'if a sun ate a cat ate', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'gasoline', '2024-06-11 09:08:39', '2024-02-22 00:54:19', 5, 0, 1365399, 'truck', 1218, 4.2, 70.55, 'AWD', 7.51),
(21, 2, 'Mazda F-150', 1779597, '€', 'Mazda', 'F-150', 1964, 'red', 2, 2, 'once the car shines loudly the sun run brightly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'gasoline', '2024-02-22 00:54:19', '2024-02-22 00:54:19', 0, 0, 695281, 'coupe', 638, 3.7, 39.31, 'RWD', 6.26),
(24, 1, 'Hyundai E-Class', 4994315, '$', 'Hyundai', 'E-Class', 1998, 'red', 4, 4, 'unless one sandwich shines one dog barks', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'electric', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 1, 0, 1223582, 'sedan', 144, 6.3, 44.36, 'FWD', 7.33),
(26, 1, 'Ford F-150', 1753361, '¥', 'Ford', 'F-150', 1982, 'blue', 7, 2, 'when the friend ate quickly a car is', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'electric', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 67632, 'truck', 457, 4.3, 16.36, 'FWD', 7.32),
(27, 2, 'Kia A4', 210517, '¥', 'Kia', 'A4', 2021, 'orange', 4, 3, 'as the house fly one dog sleeps', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'electric', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 1473595, 'van', 165, 9.8, 30.86, 'AWD', 7.56),
(28, 1, 'Tesla Outback', 2391816, '€', 'Tesla', 'Outback', 1927, 'black', 7, 4, 'than a dog barks brightly the sandwich is slowly or one house run', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'electric', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 277870, 'convertible', 223, 8.1, 76.76, 'FWD', 8.52),
(29, 1, 'Mazda Cruze', 4477333, '£', 'Mazda', 'Cruze', 1984, 'yellow', 8, 5, 'though one sandwich sleeps slowly one friend run', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'hybrid', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 1404429, 'truck', 279, 3.3, 80.44, 'FWD', 7.13),
(30, 2, 'Volkswagen Model 3', 338521, '¥', 'Volkswagen', 'Model 3', 2015, 'white', 6, 5, 'whenever the house ate the house is but a house barks quickly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'petrol', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 194974, 'hatchback', 702, 3.1, 68.59, 'RWD', 8.8),
(31, 2, 'Chevrolet Golf', 1146093, '$', 'Chevrolet', 'Golf', 1956, 'orange', 5, 2, 'until the dog sleeps a friend run', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'hybrid', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 115985, 'convertible', 83, 8.9, 13.67, 'AWD', 9.74),
(32, 1, 'Chevrolet F-150', 334052, '¥', 'Chevrolet', 'F-150', 1931, 'yellow', 7, 3, 'that a sandwich barks the cat shines slowly and a book is softly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'hybrid', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 0, 0, 730325, 'coupe', 223, 6.3, 62.65, 'RWD', 9.18),
(33, 2, 'Hyundai E-Class', 1676631, '£', 'Hyundai', 'E-Class', 1927, 'orange', 4, 5, 'once one sandwich sleeps the sun sleeps quickly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'gasoline', '2024-03-11 01:48:33', '2024-03-11 01:48:33', 3, 0, 840505, 'convertible', 238, 9.1, 35.63, 'FWD', 6.08),
(34, 2, 'Mercedes-Benz Model 3', 2809, '¥', 'mercedes-benz', 'model 3', 2015, '#00FFFF', 3, 3, 'since the car is softly the birds ate', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'petrol', '2024-06-11 08:07:41', '2024-03-11 01:48:33', 15, 0, 920000, 'convertible', 398, 6.7, 31.66, 'fwd', 9.02),
(35, 2, 'Mercedes-Benz F-150', 439885, '$', 'Mercedes-Benz', 'F-150', 2016, 'red', 5, 5, 'whether the sun shines quickly one sun fly loudly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 500939, 'sedan', 687, 3.7, 99.37, 'AWD', 9.76),
(37, 2, 'Volvo S60', 3420648, '$', 'Volvo', 'S60', 1961, 'green', 5, 2, 'when a sandwich fly brightly a car sleeps slowly and a birds run quickly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1181640, 'sedan', 201, 2.9, 59.41, 'FWD', 8.02),
(38, 2, 'Subaru Golf', 1118633, '$', 'Subaru', 'Golf', 2021, 'blue', 7, 4, 'since a birds shines one car is', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'electric', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1493152, 'van', 451, 9.2, 77.5, 'FWD', 9.09),
(39, 1, 'Toyota F-150', 2225092, '$', 'Toyota', 'F-150', 1997, 'orange', 2, 3, 'whether the car ate the dog sleeps brightly but one cat ate', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 168290, 'truck', 948, 2.9, 73.51, 'RWD', 9.84),
(40, 1, 'Audi Camry', 4311021, '€', 'Audi', 'Camry', 1928, 'red', 8, 3, 'as a car is the car reads softly or the friend run brightly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'hybrid', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1052251, 'sedan', 968, 7.8, 56.72, 'AWD', 9.36),
(41, 1, 'Chevrolet A4', 3852672, '€', 'Chevrolet', 'A4', 1986, 'yellow', 8, 5, 'because a sandwich is the friend run quickly and a cat run', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 129959, 'SUV', 1053, 8.8, 38.66, 'RWD', 6.32),
(42, 1, 'Ford Camry', 4856583, '€', 'Ford', 'Camry', 1923, 'red', 3, 4, 'while one car fly one sandwich sleeps quickly or one house run', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 392614, 'hatchback', 591, 7.7, 10.11, 'AWD', 9.77),
(43, 2, 'Mercedes-Benz Soul', 4522769, '£', 'Mercedes-Benz', 'Soul', 1963, 'orange', 5, 4, 'when one dog run one dog sleeps loudly and one cat is brightly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'electric', '2024-06-11 07:58:40', '2024-03-11 01:48:34', 2, 0, 839608, 'sedan', 228, 5.1, 56.47, 'AWD', 5.76),
(44, 1, 'Mazda Soul', 2322613, '¥', 'Mazda', 'Soul', 1967, 'black', 7, 3, 'so that a sun ate one sun shines quickly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 51890, 'SUV', 1407, 6.6, 83.75, 'AWD', 9.18),
(45, 2, 'Audi Soul', 266977, '£', 'Audi', 'Soul', 1989, 'green', 8, 3, 'than the house reads the book is and the dog shines', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1401384, 'SUV', 312, 7.4, 87.16, 'AWD', 7.53),
(46, 1, 'Ford Cruze', 1762670, '¥', 'Ford', 'Cruze', 1994, 'white', 2, 5, 'because one sun run slowly a friend barks', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'electric', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 696333, 'coupe', 765, 3.4, 58.6, 'FWD', 6.64),
(47, 1, 'Toyota Elantra', 2754087, '$', 'Toyota', 'Elantra', 2008, 'purple', 3, 4, 'though a sandwich fly a car reads loudly but the sun reads', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'hybrid', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 3, 0, 1129176, 'coupe', 1287, 7.2, 109.87, 'FWD', 9.22),
(48, 1, 'Mercedes-Benz E-Class', 900475, '¥', 'Mercedes-Benz', 'E-Class', 1969, 'purple', 4, 2, 'while the house run loudly a sun is', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 1, 0, 870177, 'SUV', 406, 8.2, 69.45, 'AWD', 6.24),
(49, 2, 'Toyota Cruze', 929264, '€', 'Toyota', 'Cruze', 1948, 'red', 4, 2, 'so that a sun shines loudly the sandwich ate and one sandwich ate loudly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 50598, 'hatchback', 607, 3.4, 93.89, 'AWD', 8.81),
(51, 2, 'BMW F-150', 1658725, '€', 'BMW', 'F-150', 1970, 'blue', 5, 2, 'while one sandwich sleeps one birds barks but the birds run loudly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 584244, 'van', 1060, 3.1, 28.83, 'FWD', 5.87),
(52, 1, 'BMW F-150', 4766678, '€', 'BMW', 'F-150', 1945, 'green', 7, 5, 'in order to one house shines softly the dog is', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 211487, 'hatchback', 1473, 3.4, 19.73, 'AWD', 7.59),
(53, 2, 'Kia Cruze', 2644933, '£', 'Kia', 'Cruze', 1939, 'gray', 7, 3, 'although the friend shines quickly one birds fly brightly but a sun is', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 472397, 'sedan', 1052, 4.9, 106.65, 'FWD', 9.15),
(54, 2, 'Nissan Cruze', 984565, '$', 'Nissan', 'Cruze', 1994, 'blue', 3, 5, 'so that the cat shines the dog reads brightly or a cat run loudly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 256429, 'truck', 1280, 3.6, 90.57, 'AWD', 7.14),
(55, 2, 'Tesla CX-5', 148015, '$', 'Tesla', 'CX-5', 1921, 'purple', 7, 3, 'as the sun reads loudly a friend run quickly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 139182, 'truck', 1368, 2.3, 63.74, 'AWD', 9.26),
(56, 1, 'Kia 3 Series', 1181686, '€', 'Kia', '3 Series', 1962, 'green', 4, 4, 'before one car barks loudly the sandwich fly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 13988, 'van', 254, 7.5, 84.32, 'FWD', 7.25),
(57, 1, 'BMW 3 Series', 3130151, '€', 'BMW', '3 Series', 1926, 'green', 6, 4, 'before one dog reads softly one car sleeps', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'gasoline', '2024-05-25 16:27:11', '2024-03-11 01:48:34', 1, 0, 741711, 'truck', 840, 10, 88.64, 'RWD', 6.67),
(58, 1, 'Audi Cruze', 4085434, '€', 'Audi', 'Cruze', 1940, 'red', 3, 4, 'unless a car sleeps the house barks', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'hybrid', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 300894, 'sedan', 297, 8.7, 84.74, 'FWD', 5.51),
(59, 2, 'Kia Model 3', 4404418, '£', 'Kia', 'Model 3', 1981, 'black', 6, 5, 'unless a dog run brightly a sun barks but one friend sleeps', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-06-11 07:55:31', '2024-03-11 01:48:34', 3, 0, 1214334, 'truck', 236, 5.2, 82.23, 'FWD', 5.75),
(60, 1, 'Kia Cruze', 1028422, '¥', 'Kia', 'Cruze', 1925, 'yellow', 3, 3, 'even if the sun sleeps the cat run but one car reads', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 356164, 'coupe', 969, 8.6, 21.2, 'FWD', 5.56),
(61, 1, 'Volvo Golf', 4049004, '£', 'Volvo', 'Golf', 2014, 'gray', 2, 4, 'after a book fly softly a friend fly slowly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'petrol', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 1039817, 'van', 1256, 7.2, 74.7, 'FWD', 5.53),
(62, 1, 'Chevrolet Cruze', 4421168, '£', 'Chevrolet', 'Cruze', 2000, 'purple', 4, 5, 'that one friend sleeps loudly the cat run but the sun ate', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 589517, 'SUV', 559, 2.3, 104.48, 'RWD', 7.6),
(63, 1, 'Subaru Model 3', 3094399, '¥', 'Subaru', 'Model 3', 1943, 'black', 3, 3, 'unless a sandwich reads quickly one sandwich barks', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'gasoline', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 0, 0, 551530, 'SUV', 237, 4.5, 89.14, 'RWD', 6.06),
(65, 1, 'Toyota CX-5', 2365749, '¥', 'Toyota', 'CX-5', 1944, 'red', 4, 2, 'unless a sun fly a car is', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'petrol', '2024-05-17 10:56:37', '2024-03-11 01:48:34', 1, 0, 423118, 'sedan', 1328, 2.4, 64.61, 'AWD', 9.31),
(66, 1, 'Tesla Cruze', 857361, '¥', 'Tesla', 'Cruze', 2007, 'green', 5, 5, 'so that the dog ate a birds run loudly and a sun barks', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'electric', '2024-03-11 01:48:34', '2024-03-11 01:48:34', 2, 0, 945772, 'coupe', 1329, 3.8, 21.63, 'RWD', 7.22),
(69, 2, 'Volkswagen S60', 4786257, '€', 'Volkswagen', 'S60', 1983, 'gray', 2, 3, 'until a sun run slowly the car fly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'hybrid', '2024-06-12 13:35:05', '2024-03-11 01:48:34', 3, 0, 1258926, 'van', 664, 7.4, 12.26, 'AWD', 6.68),
(71, 2, 'Kia 3 Series', 3173251, '€', 'Kia', '3 Series', 1987, 'yellow', 2, 4, 'that a cat is slowly one cat sleeps', '-0.3784603198914027 39.4679336934979', 'Valencia', 'automatic', 'gasoline', '2024-03-11 01:48:35', '2024-03-11 01:48:35', 0, 0, 320760, 'truck', 773, 9.3, 18.05, 'AWD', 8.96),
(72, 2, 'Volkswagen Cruze', 3428190, '¥', 'Volkswagen', 'Cruze', 2023, 'gray', 7, 5, 'before one dog sleeps slowly one friend run softly but the car fly brightly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'electric', '2024-03-11 01:48:35', '2024-03-11 01:48:35', 0, 0, 610984, 'convertible', 1209, 8.5, 69.37, 'RWD', 8.03),
(73, 1, 'Nissan Model 3', 3051360, '¥', 'Nissan', 'Model 3', 1985, 'white', 8, 5, 'though one car ate the cat is slowly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'gasoline', '2024-03-11 01:48:35', '2024-03-11 01:48:35', 0, 0, 194080, 'SUV', 681, 4, 65.41, 'FWD', 8.77),
(74, 3, 'Mercedes-Benz Civic', 3405723, '£', 'Mercedes-Benz', 'Civic', 2013, 'black', 8, 3, 'although the house shines the car shines quickly', '-0.3784603198914027 39.4679336934979', 'Valencia', 'manual', 'electric', '2024-05-23 19:07:04', '2024-04-10 08:05:26', 3, 0, 94017, 'convertible', 710, 4.9, 66.91, 'AWD', 7.4),
(278, 23, 'BMW E90', 130000, '€', 'BMW', 'E90', 2022, 'black', 4, 4, 'Esto es una prueba para demostrar que funciona bien todo.\n\nEfectivamente, funciona', '-0.3735552 39.469056', 'València', 'automatic', 'gasoline', '2024-06-11 07:37:56', '2024-05-25 15:18:07', 301, 0, 80000, 'sedan', 440, 3.4, 120, 'rwd', 11.2),
(280, 2, 'BMW 320ci E46 2001', 33000, '€', 'BMW', 'E46', 2001, 'navy', 5, 2, 'El BMW Serie 3 E46 no es solo un coche, es una pieza de la historia automovilística que combina a la perfección rendimiento, lujo y fiabilidad. Diseñado para aquellos que aprecian la conducción pura, este modelo se ha convertido en un favorito tanto para entusiastas como para aquellos que buscan un vehículo premium versátil.', '-0.376398131838944 39.47331748845821', 'Valencia', 'manual', 'gasoline', '2024-06-12 13:32:44', '2024-06-12 11:32:38', 2, 0, 100000, 'sedan', 185, 7.2, 120, 'rwd', 5.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
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
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`id`, `creation_date`, `notifications`, `id_member_one`, `id_member_two`, `deleted_by`, `id_car`) VALUES
(23, '2024-06-11 09:10:54', 0, 1, 2, NULL, 69),
(24, '2024-06-11 09:14:09', 0, 1, 3, NULL, 2),
(25, '2024-06-11 09:14:34', 0, 1, 5, NULL, 7),
(26, '2024-06-11 09:27:14', 0, 1, 2, NULL, 8),
(27, '2024-06-11 09:28:14', 0, 1, 2, NULL, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint NOT NULL,
  `id_user` bigint NOT NULL,
  `id_car` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `favorites`
--

INSERT INTO `favorites` (`id`, `id_user`, `id_car`) VALUES
(294, 1, 15),
(295, 1, 18),
(296, 1, 24),
(299, 2, 47),
(589, 1, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_car` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `image_url`, `id_car`) VALUES
(890, 'image1.jpg', 2),
(891, 'image4.jpg', 2),
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
(1183, 'image3.jpg', 69),
(1184, 'image9.jpg', 69),
(1185, 'image7.jpg', 69),
(1186, 'image7.jpg', 69),
(1187, 'image9.jpg', 69),
(1188, 'image3.jpg', 69),
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
(1692, '33648a92-aaac-42de-87b6-a10736c5a028.jpg', 278),
(1693, '6902e9b1-2bf6-4b75-9a9b-cb0b629999b9.jpg', 278),
(1697, '5ffdb7c1-d060-454f-83d2-a0bacddfede8.webp', 280),
(1698, '22c1a7bb-ac10-401d-b12d-1c5ef8009908.webp', 280);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
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
-- Volcado de datos para la tabla `message`
--

INSERT INTO `message` (`id`, `content`, `sent_time`, `is_liked`, `is_read`, `id_sender`, `id_receiver`, `id_chat`) VALUES
(718, 'hola', '2024-06-11 09:10:54', 0, 1, 1, 2, 23),
(719, 'dfgdf', '2024-06-11 09:12:56', 0, 1, 1, 2, 23),
(720, 'hola', '2024-06-11 09:13:48', 0, 1, 1, 2, 23),
(721, 'fsdf', '2024-06-11 09:13:53', 0, 1, 1, 2, 23),
(722, 'hola', '2024-06-11 09:14:09', 0, 0, 1, 3, 24),
(723, 'hola', '2024-06-11 09:14:34', 0, 0, 1, 5, 25),
(724, 'gdfgdfgdf', '2024-06-11 09:27:14', 0, 1, 1, 2, 26),
(725, 'gdfgdfgdfgf', '2024-06-11 09:27:21', 0, 0, 1, 5, 25),
(726, 'dsfsdfsfsdf', '2024-06-11 09:28:14', 0, 1, 1, 2, 27),
(727, 'fsdfsdfsfs', '2024-06-11 09:28:27', 0, 1, 1, 2, 27),
(728, 'alons', '2024-06-11 09:29:37', 0, 1, 2, 1, 27),
(729, 'fsdfsdf', '2024-06-11 09:29:40', 0, 1, 1, 2, 27),
(730, 'fd', '2024-06-11 09:29:43', 0, 1, 1, 2, 27),
(731, 'fd', '2024-06-11 09:29:44', 0, 1, 1, 2, 27),
(732, 'f', '2024-06-11 09:29:44', 0, 1, 1, 2, 27),
(733, 'fd', '2024-06-11 09:29:44', 0, 1, 1, 2, 27),
(734, 'ffd', '2024-06-11 09:29:45', 0, 1, 1, 2, 27),
(735, 'fdf', '2024-06-11 09:29:45', 0, 1, 1, 2, 27),
(736, 'dff', '2024-06-11 09:29:45', 0, 1, 1, 2, 27),
(737, 'dfd', '2024-06-11 09:29:46', 0, 1, 1, 2, 27),
(738, 'fdf', '2024-06-11 09:29:46', 0, 1, 1, 2, 27),
(739, 'dfdf', '2024-06-11 09:29:47', 0, 1, 1, 2, 27),
(740, 'df', '2024-06-11 09:29:49', 0, 1, 1, 2, 27),
(741, 'si', '2024-06-11 09:29:55', 0, 1, 2, 1, 27),
(742, 'si', '2024-06-11 09:29:57', 0, 1, 2, 1, 27),
(743, 'si', '2024-06-11 09:29:58', 0, 1, 2, 1, 27),
(744, 'sis', '2024-06-11 09:29:59', 0, 1, 2, 1, 27),
(745, 'sd', '2024-06-11 09:30:00', 0, 1, 2, 1, 27),
(746, 'sdsds', '2024-06-11 09:30:00', 0, 1, 2, 1, 27),
(747, 'd', '2024-06-11 09:30:00', 0, 1, 2, 1, 27),
(748, 'sd', '2024-06-11 09:30:00', 0, 1, 2, 1, 27),
(749, 's', '2024-06-11 09:30:01', 0, 1, 2, 1, 27),
(750, 'ds', '2024-06-11 09:30:01', 0, 1, 2, 1, 27),
(751, 'd', '2024-06-11 09:30:01', 0, 1, 2, 1, 27),
(752, 'sd', '2024-06-11 09:30:01', 0, 1, 2, 1, 27),
(753, 's', '2024-06-11 09:30:01', 0, 1, 2, 1, 27),
(754, 'hola', '2024-06-11 09:31:21', 0, 1, 1, 2, 27),
(755, 'hola', '2024-06-11 09:33:00', 0, 1, 2, 1, 27),
(756, 'dasdas', '2024-06-11 09:33:30', 0, 1, 1, 2, 27),
(757, 'df', '2024-06-11 09:33:37', 0, 1, 2, 1, 27),
(758, 'dfsf', '2024-06-11 09:33:42', 0, 1, 2, 1, 27),
(759, 'dsfd', '2024-06-11 09:33:43', 0, 1, 2, 1, 27),
(760, 'sf', '2024-06-11 09:33:43', 0, 1, 2, 1, 27),
(761, 'sdf', '2024-06-11 09:33:43', 0, 1, 2, 1, 27),
(762, 'dd', '2024-06-11 09:33:43', 0, 1, 2, 1, 27),
(763, 'sd', '2024-06-11 09:33:55', 0, 1, 1, 2, 27),
(764, 'sdf', '2024-06-11 09:33:55', 0, 1, 1, 2, 27),
(765, 'sd', '2024-06-11 09:33:56', 0, 1, 1, 2, 27),
(766, 'fds', '2024-06-11 09:33:56', 0, 1, 1, 2, 27),
(767, 'dfs', '2024-06-11 09:33:56', 0, 1, 1, 2, 27),
(768, 'fsd', '2024-06-11 09:33:56', 0, 1, 1, 2, 27),
(769, 'fds', '2024-06-11 09:33:56', 0, 1, 1, 2, 27),
(770, 'f', '2024-06-11 09:33:56', 0, 1, 1, 2, 27),
(771, 'sf', '2024-06-11 09:33:57', 0, 1, 1, 2, 27),
(772, 'sf', '2024-06-11 09:33:57', 0, 1, 1, 2, 27),
(773, 'd', '2024-06-11 09:33:57', 0, 1, 1, 2, 27),
(774, 'f', '2024-06-11 09:33:57', 0, 1, 1, 2, 27),
(775, 'fd', '2024-06-11 09:33:57', 0, 1, 1, 2, 27),
(776, 'f', '2024-06-11 09:33:57', 0, 1, 1, 2, 27),
(777, 'f', '2024-06-11 09:33:57', 0, 1, 1, 2, 27),
(778, 'f', '2024-06-11 09:33:57', 0, 1, 1, 2, 27),
(779, 'f', '2024-06-11 09:33:58', 0, 1, 1, 2, 27),
(780, 'f', '2024-06-11 09:33:58', 0, 1, 1, 2, 27),
(781, 'f', '2024-06-11 09:33:58', 0, 1, 1, 2, 27),
(782, 'f', '2024-06-11 09:33:58', 0, 1, 1, 2, 27),
(783, 'f', '2024-06-11 09:33:58', 0, 1, 1, 2, 27),
(784, 'f', '2024-06-11 09:33:59', 0, 1, 1, 2, 27),
(785, 'ff', '2024-06-11 09:33:59', 0, 1, 1, 2, 27),
(786, 'f', '2024-06-11 09:33:59', 0, 1, 1, 2, 27),
(787, 'ff', '2024-06-11 09:33:59', 0, 1, 1, 2, 27),
(788, 'df', '2024-06-11 09:33:59', 0, 1, 1, 2, 27),
(789, 'df', '2024-06-11 09:34:00', 0, 1, 1, 2, 27),
(790, 'df', '2024-06-11 09:34:00', 0, 1, 1, 2, 27),
(791, 'f', '2024-06-11 09:34:00', 0, 1, 1, 2, 27),
(792, 'f', '2024-06-11 09:34:00', 0, 1, 1, 2, 27),
(793, 'f', '2024-06-11 09:34:00', 0, 1, 1, 2, 27),
(794, 'f', '2024-06-11 09:34:01', 0, 1, 1, 2, 27),
(795, 'f', '2024-06-11 09:34:01', 0, 1, 1, 2, 27),
(796, 'f', '2024-06-11 09:34:01', 0, 1, 1, 2, 27),
(797, 'f', '2024-06-11 09:34:01', 0, 1, 1, 2, 27),
(798, 'f', '2024-06-11 09:34:01', 0, 1, 1, 2, 27),
(799, 'f', '2024-06-11 09:34:02', 0, 1, 1, 2, 27),
(800, 'f', '2024-06-11 09:34:02', 0, 1, 1, 2, 27),
(801, 'f', '2024-06-11 09:34:02', 0, 1, 1, 2, 27),
(802, 'f', '2024-06-11 09:34:02', 0, 1, 1, 2, 27),
(803, 'f', '2024-06-11 09:34:02', 0, 1, 1, 2, 27),
(804, 'f', '2024-06-11 09:34:02', 0, 1, 1, 2, 27),
(805, 'f', '2024-06-11 09:34:03', 0, 1, 1, 2, 27),
(806, 'f', '2024-06-11 09:34:03', 0, 1, 1, 2, 27),
(807, 'f', '2024-06-11 09:34:03', 0, 1, 1, 2, 27),
(808, 'f', '2024-06-11 09:34:03', 0, 1, 1, 2, 27),
(809, 'f', '2024-06-11 09:34:03', 0, 1, 1, 2, 27),
(810, 'ff', '2024-06-11 09:34:12', 0, 1, 1, 2, 27),
(811, 'f', '2024-06-11 09:34:12', 0, 1, 1, 2, 27),
(812, 'f', '2024-06-11 09:34:13', 0, 1, 1, 2, 27),
(813, 'ff', '2024-06-11 09:34:13', 0, 1, 1, 2, 27),
(814, 'ff', '2024-06-11 09:34:14', 0, 1, 1, 2, 27),
(815, 'f', '2024-06-11 09:34:14', 0, 1, 1, 2, 27),
(816, 'f', '2024-06-11 09:34:14', 0, 1, 1, 2, 27),
(817, 'fff', '2024-06-11 09:34:14', 0, 1, 1, 2, 27),
(818, 'ff', '2024-06-11 09:34:15', 0, 1, 1, 2, 27),
(819, 'f', '2024-06-11 09:34:15', 0, 1, 1, 2, 27),
(820, 'f', '2024-06-11 09:34:15', 0, 1, 1, 2, 27),
(821, 'ff', '2024-06-11 09:34:15', 0, 1, 1, 2, 27),
(822, 'f', '2024-06-11 09:34:16', 0, 1, 1, 2, 27),
(823, 'f', '2024-06-11 09:34:16', 0, 1, 1, 2, 27),
(824, 'f', '2024-06-11 09:34:16', 0, 1, 1, 2, 27),
(825, 'ff', '2024-06-11 09:34:17', 0, 1, 1, 2, 27),
(826, 'fff', '2024-06-11 09:34:17', 0, 1, 1, 2, 27),
(827, 'ff', '2024-06-11 09:34:17', 0, 1, 1, 2, 27),
(828, 'f', '2024-06-11 09:34:18', 0, 1, 1, 2, 27),
(829, 'f', '2024-06-11 09:34:18', 0, 1, 1, 2, 27),
(830, 'ff', '2024-06-11 09:34:19', 0, 1, 1, 2, 27),
(831, 'f', '2024-06-11 09:34:19', 0, 1, 1, 2, 27),
(832, 'ff', '2024-06-11 09:34:19', 0, 1, 1, 2, 27),
(833, 'ff', '2024-06-11 09:34:19', 0, 1, 1, 2, 27),
(834, 'f', '2024-06-11 09:34:20', 0, 1, 1, 2, 27),
(835, 'ff', '2024-06-11 09:34:20', 0, 1, 1, 2, 27),
(836, 'ff', '2024-06-11 09:34:21', 0, 1, 1, 2, 27),
(837, 'f', '2024-06-11 09:34:21', 0, 1, 1, 2, 27),
(838, 'f', '2024-06-11 09:34:21', 0, 1, 1, 2, 27),
(839, 'ff', '2024-06-11 09:34:21', 0, 1, 1, 2, 27),
(840, 'f', '2024-06-11 09:34:36', 0, 1, 1, 2, 27),
(841, 'fdf', '2024-06-11 09:34:36', 0, 1, 1, 2, 27),
(842, 'f', '2024-06-11 09:34:37', 0, 1, 1, 2, 27),
(843, 'd', '2024-06-11 09:34:37', 0, 1, 1, 2, 27),
(844, 'fd', '2024-06-11 09:34:37', 0, 1, 1, 2, 27),
(845, 'fd', '2024-06-11 09:34:37', 0, 1, 1, 2, 27),
(846, 'fdf', '2024-06-11 09:34:38', 0, 1, 1, 2, 27),
(847, 'd', '2024-06-11 09:34:38', 0, 1, 1, 2, 27),
(848, 'fdf', '2024-06-11 09:34:38', 0, 1, 1, 2, 27),
(849, 'df', '2024-06-11 09:34:38', 0, 1, 1, 2, 27),
(850, 'dfd', '2024-06-11 09:34:39', 0, 1, 1, 2, 27),
(851, 'fd', '2024-06-11 09:34:39', 0, 1, 1, 2, 27),
(852, 'fdf', '2024-06-11 09:34:39', 0, 1, 1, 2, 27),
(853, 'df', '2024-06-11 09:34:40', 0, 1, 1, 2, 27),
(854, 'dfd', '2024-06-11 09:34:40', 0, 1, 1, 2, 27),
(855, 'fdf', '2024-06-11 09:34:40', 0, 1, 1, 2, 27),
(856, 'f', '2024-06-11 09:34:41', 0, 1, 1, 2, 27),
(857, 'df', '2024-06-11 09:34:41', 0, 1, 1, 2, 27),
(858, 'df', '2024-06-11 09:34:41', 0, 1, 1, 2, 27),
(859, 'dfd', '2024-06-11 09:34:42', 0, 1, 1, 2, 27),
(860, 'fd', '2024-06-11 09:34:42', 0, 1, 1, 2, 27),
(861, 'f', '2024-06-11 09:34:42', 0, 1, 1, 2, 27),
(862, 'f', '2024-06-11 09:34:42', 0, 1, 1, 2, 27),
(863, 'df', '2024-06-11 09:34:42', 0, 1, 1, 2, 27),
(864, 'df', '2024-06-11 09:34:43', 0, 1, 1, 2, 27),
(865, 'df', '2024-06-11 09:34:43', 0, 1, 1, 2, 27),
(866, 'df', '2024-06-11 09:34:43', 0, 1, 1, 2, 27),
(867, 'df', '2024-06-11 09:34:43', 0, 1, 1, 2, 27),
(868, 'df', '2024-06-11 09:34:43', 0, 1, 1, 2, 27),
(869, 'df', '2024-06-11 09:34:44', 0, 1, 1, 2, 27),
(870, 'df', '2024-06-11 09:34:44', 0, 1, 1, 2, 27),
(871, 'dfd', '2024-06-11 09:34:44', 0, 1, 1, 2, 27),
(872, 'hola', '2024-06-11 09:35:44', 0, 1, 2, 1, 27),
(873, 'hola', '2024-06-11 10:00:59', 0, 1, 1, 2, 27),
(874, 'que tal', '2024-06-11 10:01:00', 0, 1, 1, 2, 27),
(875, 'muy bien', '2024-06-11 10:01:04', 0, 1, 1, 2, 27),
(876, 'jajajajaja', '2024-06-11 10:01:09', 0, 1, 1, 2, 27),
(877, 'hola', '2024-06-12 13:33:29', 0, 1, 1, 2, 27),
(878, 'dgdgdfgdfg', '2024-06-12 13:34:03', 0, 1, 2, 1, 27),
(879, 'molon', '2024-06-12 13:34:57', 0, 1, 2, 1, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `price`
--

CREATE TABLE `price` (
  `id` bigint NOT NULL,
  `id_car` bigint NOT NULL,
  `modified` datetime NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rating`
--

CREATE TABLE `rating` (
  `id` bigint NOT NULL,
  `id_rated_user` bigint NOT NULL,
  `id_rating_user` bigint NOT NULL,
  `score` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rating`
--

INSERT INTO `rating` (`id`, `id_rated_user`, `id_rating_user`, `score`) VALUES
(1, 1, 2, 4),
(2, 2, 1, 3),
(3, 1, 3, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rating_seq`
--

CREATE TABLE `rating_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rating_seq`
--

INSERT INTO `rating_seq` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
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
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `gender`, `birthdate`, `location`, `country`, `city`, `description`, `profile_picture`, `profile_background`, `status`, `phone`, `email`, `password`, `role`, `member_since`, `last_connection`, `banned`, `actived`, `reports`) VALUES
(1, ' Fernando', 'Alonso', 'ElNano', 1, '2022-02-24 04:25:00', '-0.3784603198914027 39.4679336934979', 'Spain', 'Asturias', 'El Nano es una bala azul que sin cañón    Dispara en un circuito directo al corazón\nEl Nano no es humano, el Nano es inmortal     Y sale en las revistas junto a Hulk y a Supermam', 'a2773b88-922b-4e3f-8dbd-22e39406276a.webp', '4b86f217-cc79-48a0-9a24-e4f59ccd12ed.jpg', b'0', '633974333', 'nano@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '1996-07-15 15:35:07', '1936-02-15 00:37:41', 0, 1, 0),
(2, 'Carlos', 'Sainz', 'carlossainz', 0, '1991-05-16 16:56:24', '-3.7050339534411023 40.40991945152729', 'Spain', 'Madrid', '              Carlos Sainz, il matador. Smooooooth operatoooor       ', 'b1fcd965-cdfc-4f37-ba24-604b6bb845cb.jpg', '153902dd-640b-4236-8fb6-1d370a1af510.jpg', b'0', '655974455', 'sainz@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2019-02-06 02:54:17', '1969-08-30 01:11:21', 0, 1, 0),
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
(23, 'Jaime', 'Rosello', 'jaumerosello_', 1, '2004-08-02 20:09:07', '-0.39413583904328675 39.45770272279975', 'Spain', 'València', '              Soy el verdadero admin              ', 'd0839b00-a830-4e02-8e77-f84c1df2d728.jpg', 'c60f3ec0-0ffb-4c67-b60a-74d104b3d7f3.jpg', b'0', '601447829', 'jarogos14@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '2024-05-02 18:07:33', '2024-05-02 18:07:33', 0, 1, 0),
(38, NULL, NULL, 'adsad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, 'gola@f', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-06-11 18:06:35', '2024-06-11 18:06:35', 0, 1, 0),
(39, NULL, NULL, 'fsfsdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'0', NULL, 'epep@sdfs', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-06-11 18:33:20', '2024-06-11 18:33:20', 0, 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKm2cs5bh53qsh8asi6tanvcwla` (`id_owner`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt8q6vbshr4i0w4ph70f537041` (`id_car`),
  ADD KEY `FKk3h4yiwg3inoawuham6qpgpj3` (`deleted_by`),
  ADD KEY `FKlarky5ul61s9iwkq8jt00nxj8` (`id_member_one`),
  ADD KEY `FKimsbqaf2tv5coiph14kd5ok86` (`id_member_two`);

--
-- Indices de la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_id_user` (`id_user`),
  ADD KEY `fk_id_car` (`id_car`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_car` (`id_car`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKk9cgcap5knsoe0xqxeyd5j127` (`id_chat`),
  ADD KEY `FKqyxddlqh59ce3gqls6qu9w3lq` (`id_receiver`),
  ADD KEY `FK249t1hnaxlacjng5xtud18fi` (`id_sender`);

--
-- Indices de la tabla `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_car` (`id_car`);

--
-- Indices de la tabla `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rated_user` (`id_rated_user`),
  ADD KEY `id_rating_user` (`id_rating_user`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `car`
--
ALTER TABLE `car`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1699;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=880;

--
-- AUTO_INCREMENT de la tabla `price`
--
ALTER TABLE `price`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `FKm2cs5bh53qsh8asi6tanvcwla` FOREIGN KEY (`id_owner`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `FKimsbqaf2tv5coiph14kd5ok86` FOREIGN KEY (`id_member_two`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKk3h4yiwg3inoawuham6qpgpj3` FOREIGN KEY (`deleted_by`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKlarky5ul61s9iwkq8jt00nxj8` FOREIGN KEY (`id_member_one`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKt8q6vbshr4i0w4ph70f537041` FOREIGN KEY (`id_car`) REFERENCES `car` (`id`);

--
-- Filtros para la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`id_car`) REFERENCES `car` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_car`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK249t1hnaxlacjng5xtud18fi` FOREIGN KEY (`id_sender`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FKk9cgcap5knsoe0xqxeyd5j127` FOREIGN KEY (`id_chat`) REFERENCES `chat` (`id`),
  ADD CONSTRAINT `FKqyxddlqh59ce3gqls6qu9w3lq` FOREIGN KEY (`id_receiver`) REFERENCES `user` (`id`);

--
-- Filtros para la tabla `price`
--
ALTER TABLE `price`
  ADD CONSTRAINT `price_ibfk_1` FOREIGN KEY (`id_car`) REFERENCES `car` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`id_rated_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`id_rating_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
