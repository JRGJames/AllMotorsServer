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
(1, 'Audi', 'Model 3', 'Audi Model 3', '2024-02-20 20:12:24', NULL, 0, 0, 'white', '1956', 2, 3, 994, 'manual', 482342, 'hybrid', '£', 3, 'V10', 'FWD', 'South Africa', 757076, 'Coupe', 'British Columbia', 66.49, 7.28, '4256-QMU', 'ECO', '2020-02-07 00:06:02', '2024-02-20 20:12:24', 'before a cat ate a birds is', 1),
(2, 'Honda', 'CX-5', 'Honda CX-5', '2024-02-20 20:12:24', NULL, 0, 0, 'gray', '1966', 2, 2, 609, 'automatic', 1331384, 'hybrid', '¥', 2.7, 'W16', 'RWD', 'Japan', 2529015, 'Van', 'Nunavut', 108.73, 7.47, '1815-VLQ', 'C', '2016-10-03 09:03:29', '2024-02-20 20:12:24', 'where the sandwich run loudly the birds reads softly', 1),
(3, 'Volvo', 'Outback', 'Volvo Outback', '2024-02-20 20:12:24', NULL, 0, 0, 'yellow', '2009', 2, 2, 1055, 'manual', 41615, 'petrol', '$', 5.9, 'V6', 'AWD', 'Brazil', 3103906, 'Hatchback', 'Newfoundland and Labrador', 29.47, 5.79, '1515-LER', 'B', '2018-04-28 14:58:10', '2024-02-20 20:12:24', 'if a birds sleeps slowly one birds fly softly', 1),
(4, 'Ford', 'A4', 'Ford A4', '2024-02-20 20:12:24', NULL, 0, 0, 'yellow', '1932', 5, 3, 855, 'manual', 197189, 'petrol', '$', 4.2, 'W16', 'FWD', 'South Korea', 786083, 'Hatchback', 'Ontario', 16.01, 5.04, '4167-RVX', '0', '2021-05-06 01:53:45', '2024-02-20 20:12:24', 'that the sun reads slowly the car shines brightly and a cat sleeps slowly', 1),
(5, 'Mazda', 'F-150', 'Mazda F-150', '2024-02-20 20:12:24', NULL, 0, 0, 'yellow', '1956', 6, 2, 1131, 'automatic', 1421199, 'electric', '€', 7.3, 'V8', 'AWD', 'South Africa', 1214325, 'Sedan', 'Newfoundland and Labrador', 83.07, 7.21, '8183-UCK', 'B', '2013-04-14 10:26:40', '2024-02-20 20:12:24', 'while the car fly one sandwich barks softly', 1),
(6, 'Ford', 'S60', 'Ford S60', '2024-02-20 20:12:24', NULL, 0, 0, 'red', '1996', 6, 4, 689, 'manual', 806965, 'petrol', '$', 7.7, 'V10', 'FWD', 'Norway', 4192304, 'Sedan', 'Ontario', 54.85, 5.95, '8331-JTJ', 'ECO', '2013-04-26 13:26:48', '2024-02-20 20:12:24', 'even though the house sleeps brightly the sandwich fly', 2),
(7, 'Hyundai', '3 Series', 'Hyundai 3 Series', '2024-02-20 20:12:24', NULL, 0, 0, 'green', '1977', 8, 3, 1266, 'automatic', 641740, 'gasoline', '$', 5.5, 'I6', 'FWD', 'Spain', 244063, 'Truck', 'New Brunswick', 97.59, 8.25, '9056-XSS', 'B', '2022-05-09 19:03:31', '2024-02-20 20:12:24', 'unless the friend sleeps slowly a car run loudly', 2),
(8, 'Chevrolet', 'F-150', 'Chevrolet F-150', '2024-02-20 20:12:24', NULL, 0, 0, 'white', '1978', 4, 5, 373, 'manual', 425438, 'petrol', '¥', 6.9, 'V10', 'FWD', 'Italy', 1308043, 'Truck', 'Andalusia', 43.68, 5.28, '9811-MFY', 'ECO', '2012-09-02 16:24:40', '2024-02-20 20:12:24', 'if one dog ate a sun sleeps but a sun fly', 2),
(9, 'Ford', 'Model 3', 'Ford Model 3', '2024-02-20 20:12:24', NULL, 0, 0, 'red', '1954', 5, 2, 874, 'automatic', 1287618, 'electric', '£', 6.7, 'V6', 'RWD', 'Canada', 4666665, 'Truck', 'Saskatchewan', 30.01, 6.12, '7776-ZHV', 'ECO', '2019-05-10 10:35:06', '2024-02-20 20:12:24', 'after a book sleeps one friend run brightly', 2),
(10, 'Subaru', 'Outback', 'Subaru Outback', '2024-02-20 20:12:24', NULL, 0, 0, 'orange', '1957', 7, 4, 1080, 'manual', 413037, 'gasoline', '£', 9.2, 'I4', 'FWD', 'Spain', 2943950, 'Hatchback', 'Valencia', 65.92, 8.91, '8597-ZVS', 'ECO', '2013-06-15 22:22:54', '2024-02-20 20:12:24', 'in order to a house shines one cat reads and one car shines', 2),
(11, 'Mazda', 'S60', 'Mazda S60', '2024-02-20 20:12:24', NULL, 0, 0, 'green', '1938', 2, 5, 913, 'automatic', 696376, 'hybrid', '$', 3.3, 'I4', 'AWD', 'South Korea', 1077948, 'Sedan', 'Nova Scotia', 103.61, 8.95, '1457-KSV', 'C', '2010-10-07 03:07:06', '2024-02-20 20:12:24', 'so that the sun run slowly one sandwich barks quickly', 1),
(12, 'Subaru', 'Soul', 'Subaru Soul', '2024-02-20 20:12:24', NULL, 0, 0, 'yellow', '1948', 5, 4, 570, 'manual', 290448, 'gasoline', '£', 8.8, 'I3', 'FWD', 'Italy', 2578996, 'Van', 'Madrid', 35.95, 7.16, '1861-STE', 'B', '2016-02-14 13:37:11', '2024-02-20 20:12:24', 'while a birds sleeps one sandwich shines softly', 1),
(13, 'Volkswagen', 'Cruze', 'Volkswagen Cruze', '2024-02-20 20:12:24', NULL, 0, 0, 'gray', '1935', 5, 2, 959, 'manual', 313369, 'electric', '¥', 5.5, 'I6', 'AWD', 'Germany', 854478, 'Sedan', 'Yukon', 104.76, 5.52, '5823-FRQ', 'B', '2018-07-24 10:53:20', '2024-02-20 20:12:24', 'where one book fly one friend run quickly', 2),
(14, 'Mercedes-Benz', 'Cruze', 'Mercedes-Benz Cruze', '2024-02-20 20:12:25', NULL, 0, 0, 'green', '2016', 6, 5, 167, 'manual', 1060259, 'petrol', '€', 9.3, 'I3', 'AWD', 'Mexico', 697537, 'SUV', 'Yukon', 17.64, 5.03, '6132-PFR', 'ECO', '2020-12-13 12:20:25', '2024-02-20 20:12:25', 'in order to a book shines a cat fly but a house run', 2),
(15, 'Hyundai', '3 Series', 'Hyundai 3 Series', '2024-02-20 20:12:25', NULL, 0, 0, 'green', '1923', 7, 5, 1417, 'manual', 509686, 'gasoline', '¥', 3.7, 'I6', 'AWD', 'South Korea', 1771637, 'Sedan', 'Yukon', 96.37, 6.28, '5128-CQU', 'ECO', '2012-11-29 06:28:42', '2024-02-20 20:12:25', 'in order to the dog shines loudly a house reads brightly', 2),
(16, 'Subaru', 'A4', 'Subaru A4', '2024-02-20 20:12:25', NULL, 0, 0, 'blue', '1932', 4, 4, 416, 'automatic', 642229, 'gasoline', '¥', 3, 'W16', 'AWD', 'Russia', 2322947, 'Wagon', 'Ontario', 70.06, 9.99, '0910-RDP', '0', '2014-05-30 05:01:52', '2024-02-20 20:12:25', 'until one sandwich shines quickly the friend ate', 2),
(17, 'Toyota', 'Camry', 'Toyota Camry', '2024-02-20 20:12:25', NULL, 0, 0, 'red', '2000', 4, 3, 1435, 'automatic', 181451, 'gasoline', '$', 8.8, 'W16', 'FWD', 'South Korea', 545692, 'SUV', 'New Brunswick', 51.42, 7.91, '7277-TTO', 'B', '2011-06-27 01:43:01', '2024-02-20 20:12:25', 'after a house is one sandwich barks brightly', 1),
(18, 'BMW', 'Outback', 'BMW Outback', '2024-02-20 20:12:25', NULL, 0, 0, 'red', '1985', 3, 2, 1000, 'manual', 1422716, 'electric', '$', 3.5, 'V10', 'RWD', 'Turkey', 4316502, 'Truck', 'Northwest Territories', 63.53, 8.53, '7845-NWI', 'C', '2020-02-26 06:52:02', '2024-02-20 20:12:25', 'while the friend fly slowly the cat shines', 2),
(19, 'Tesla', 'S60', 'Tesla S60', '2024-02-20 20:12:25', NULL, 0, 0, 'black', '2018', 3, 4, 603, 'manual', 64068, 'electric', '¥', 5.1, 'I4', 'RWD', 'China', 1863854, 'Sedan', 'Nova Scotia', 66.02, 7.82, '6129-IUI', 'ECO', '2018-10-02 17:00:22', '2024-02-20 20:12:25', 'wherever a dog barks a birds fly brightly or one house barks', 1),
(20, 'Mercedes-Benz', 'Model 3', 'Mercedes-Benz Model 3', '2024-02-20 20:12:25', NULL, 0, 0, 'purple', '2020', 7, 3, 477, 'manual', 1005738, 'hybrid', '¥', 3.6, 'V8', 'FWD', 'Norway', 1011356, 'Truck', 'Prince Edward Island', 22.25, 6.21, '9110-LUS', '0', '2019-01-11 18:08:24', '2024-02-20 20:12:25', 'even if one house is the cat ate loudly', 2),
(21, 'Mazda', 'Elantra', 'Mazda Elantra', '2024-02-20 20:12:25', NULL, 0, 0, 'blue', '1958', 6, 2, 498, 'automatic', 999731, 'petrol', '€', 4.2, 'V12', 'FWD', 'Russia', 2806023, 'Hatchback', 'Ontario', 78.71, 6.44, '2364-GOE', '0', '2016-06-12 03:00:05', '2024-02-20 20:12:25', 'if the book is quickly one dog reads but one cat run', 1),
(22, 'Volvo', 'E-Class', 'Volvo E-Class', '2024-02-20 20:12:25', NULL, 0, 0, 'green', '1951', 5, 2, 480, 'manual', 985592, 'gasoline', '¥', 6.1, 'V12', 'FWD', 'Canada', 4705606, 'Hatchback', 'Nunavut', 41.39, 5.28, '7023-HUV', '0', '2015-01-03 09:02:38', '2024-02-20 20:12:25', 'since one car reads softly a friend shines softly but the cat fly', 2),
(23, 'Honda', 'CX-5', 'Honda CX-5', '2024-02-20 20:12:25', NULL, 0, 0, 'yellow', '1982', 2, 2, 654, 'manual', 993783, 'petrol', '¥', 2.8, 'I3', 'RWD', 'South Africa', 3357, 'Hatchback', 'Nunavut', 10.58, 6.94, '8730-BMW', 'ECO', '2019-03-26 17:02:51', '2024-02-20 20:12:25', 'unless a car run one cat shines', 2),
(24, 'Mercedes-Benz', 'Model 3', 'Mercedes-Benz Model 3', '2024-02-20 20:12:25', NULL, 0, 0, 'gray', '1949', 8, 5, 305, 'manual', 486267, 'petrol', '$', 2.6, 'V10', 'AWD', 'United Kingdom', 4966077, 'Convertible', 'Nova Scotia', 30.3, 8.28, '4884-SZI', '0', '2016-03-17 12:20:09', '2024-02-20 20:12:25', 'wherever the car fly softly a sandwich barks slowly or the sun reads loudly', 2),
(25, 'Hyundai', 'F-150', 'Hyundai F-150', '2024-02-20 20:12:25', NULL, 0, 0, 'black', '1938', 6, 4, 1036, 'automatic', 286105, 'petrol', '$', 9.9, 'I3', 'FWD', 'Canada', 1485048, 'Van', 'Alberta', 46.83, 7.35, '6070-DJD', 'C', '2018-10-26 23:23:49', '2024-02-20 20:12:25', 'so that the book run the cat ate', 1),
(26, 'Hyundai', 'Outback', 'Hyundai Outback', '2024-02-20 20:12:25', NULL, 0, 0, 'gray', '1939', 4, 5, 342, 'manual', 720376, 'gasoline', '£', 3.5, 'I5', 'RWD', 'Russia', 3152890, 'Wagon', 'Catalonia', 85.57, 8.08, '2405-YQI', 'ECO', '2015-08-20 01:30:53', '2024-02-20 20:12:25', 'until a book sleeps brightly a friend barks', 2),
(27, 'Volvo', 'E-Class', 'Volvo E-Class', '2024-02-20 20:12:25', NULL, 0, 0, 'black', '1989', 5, 2, 371, 'automatic', 969468, 'hybrid', '$', 3.6, 'V12', 'RWD', 'Russia', 1990132, 'Coupe', 'Nunavut', 72.53, 5.7, '1978-GWQ', '0', '2023-10-20 21:43:25', '2024-02-20 20:12:25', 'if the cat is one friend shines and one dog fly', 2),
(28, 'Tesla', 'Outback', 'Tesla Outback', '2024-02-20 20:12:25', NULL, 0, 0, 'white', '1924', 8, 3, 551, 'manual', 93298, 'gasoline', '£', 5.5, 'I4', 'FWD', 'Italy', 3538658, 'Coupe', 'Manitoba', 90.56, 6.44, '9858-JON', 'B', '2015-01-09 11:56:01', '2024-02-20 20:12:25', 'where a dog is the house is or the friend ate quickly', 1),
(29, 'Chevrolet', 'Elantra', 'Chevrolet Elantra', '2024-02-20 20:12:25', NULL, 0, 0, 'blue', '1972', 7, 3, 344, 'automatic', 78757, 'gasoline', '¥', 2.9, 'W12', 'AWD', 'South Africa', 1736769, 'Wagon', 'Ontario', 38.16, 6.34, '9990-EVC', 'ECO', '2016-12-21 03:36:13', '2024-02-20 20:12:25', 'that the cat is the birds reads slowly but one cat run', 2),
(30, 'Nissan', 'Elantra', 'Nissan Elantra', '2024-02-20 20:12:25', NULL, 0, 0, 'black', '1950', 4, 5, 1320, 'manual', 14178, 'petrol', '¥', 9.8, 'W16', 'RWD', 'United States', 4237733, 'Sedan', 'Andalusia', 31.09, 5.48, '0050-IHE', '0', '2022-10-11 09:11:15', '2024-02-20 20:12:25', 'since the dog run one house is and one car shines', 2),
(31, 'Genesis', 'GV60', 'Excellent Condition', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:18:00', NULL, 'Detailed description of the car.', 1),
(32, 'Audi', 'e-tron', 'Excellent Condition', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:18:20', NULL, 'Detailed description of the car.', 1),
(33, 'Audi', 'e-tron', 'BMW e39', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:20:26', NULL, 'Detailed description of the car.', 1),
(34, 'Audi', 'e-tron', 'Excellent Condition', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:29:41', NULL, 'Detailed description of the car.', 1),
(35, 'BMW', 'Integra', 'Excellent Condition', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:32:29', NULL, 'Detailed description of the car.', 1),
(36, 'BMW', 'A5', 'Excellent Condition', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:45:09', NULL, 'Detailed description of the car.', 1),
(37, 'BMW', 'e39', 'Excellent Condition', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:45:18', NULL, 'Detailed description of the car.', 1),
(38, 'Acura', 'Integra', 'Excellent Condition', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:46:03', NULL, 'Detailed description of the car.', 1),
(39, 'Audi', 'A5', 'Audi A5', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:52:48', NULL, 'Detailed description of the car.', 1),
(40, 'Acura', 'ILX', 'Acura ILX', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:57:38', NULL, 'Detailed description of the car.', 1),
(41, 'Acura', 'Integra', 'Acura Integra hola', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:57:49', NULL, 'Detailed description of the car.', 1),
(42, 'Audi', 'A5', 'Audi A5', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 12:58:58', NULL, 'Detailed description of the car.', 1),
(43, 'Audi', 'e-tron S', 'hola', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 13:03:07', NULL, 'Detailed description of the car.', 1),
(44, 'Audi', 'e-tron', 'Excellent Condition', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 14:47:00', NULL, 'Detailed description of the car.', 1),
(45, 'Acura', 'Integra', 'Excellent Condition', NULL, NULL, 0, 0, 'red', '1930', 5, 4, 200, 'manual', 50000, 'petrol', '€', 7.2, '3.0L V6', 'rwd', 'Germany', 30000, 'sedan', 'City', 120, 5.5, 'ABC123', 'C', '2024-02-21 14:49:07', NULL, 'Detailed description of the car.', 1),
(46, 'Acura', 'MDX', 'Acura MDX', NULL, NULL, 0, 0, 'red', '2023', 2, 2, 0, 'automatic', 2, 'electric', '€', NULL, NULL, NULL, NULL, 2, NULL, 'Prince Edward Island', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(47, 'Acura', 'MDX', 'Acura MDX', NULL, NULL, 0, 0, 'red', '2024', 2, 2, 0, 'automatic', 3333, 'electric', '€', NULL, NULL, NULL, NULL, 33, NULL, 'Valencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(48, 'BMW', '4 Series', 'BMW 4 Series', NULL, NULL, 0, 0, 'blue', '2001', 5, 2, 185, 'manual', 100000, 'gasoline', '€', 7.2, '3.0L V6', 'rwd', 'Spain', 33000, 'sedan', 'Valencia', 120, 5.5, 'ABC123', 'C', '2024-02-21 15:34:09', NULL, 'El BMW Serie 3 E46 no es solo un coche, es una pieza de la historia automovilística que combina a la perfección rendimiento, lujo y fiabilidad. Diseñado para aquellos que aprecian la conducción pura, este modelo se ha convertido en un favorito tanto para entusiastas como para aquellos que buscan un vehículo premium versátil.', 1);

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
(737, '/media/image2.jpg', 1),
(738, '/media/image4.jpg', 1),
(739, '/media/image8.jpeg', 1),
(740, '/media/image4.jpg', 1),
(741, '/media/image9.jpg', 2),
(742, '/media/image7.jpg', 2),
(743, '/media/image3.jpg', 2),
(744, '/media/image4.jpg', 2),
(745, '/media/image8.jpeg', 2),
(746, '/media/image10.jpg', 2),
(747, '/media/image3.jpg', 2),
(748, '/media/image7.jpg', 3),
(749, '/media/image2.jpg', 3),
(750, '/media/image1.jpg', 4),
(751, '/media/image9.jpg', 4),
(752, '/media/image6.jpg', 4),
(753, '/media/image1.jpg', 5),
(754, '/media/image1.jpg', 6),
(755, '/media/image2.jpg', 6),
(756, '/media/image7.jpg', 6),
(757, '/media/image3.jpg', 7),
(758, '/media/image3.jpg', 7),
(759, '/media/image1.jpg', 7),
(760, '/media/image8.jpeg', 7),
(761, '/media/image10.jpg', 7),
(762, '/media/image9.jpg', 7),
(763, '/media/image4.jpg', 7),
(764, '/media/image10.jpg', 8),
(765, '/media/image6.jpg', 8),
(766, '/media/image4.jpg', 8),
(767, '/media/image4.jpg', 8),
(768, '/media/image4.jpg', 8),
(769, '/media/image6.jpg', 8),
(770, '/media/image4.jpg', 8),
(771, '/media/image7.jpg', 9),
(772, '/media/image1.jpg', 9),
(773, '/media/image2.jpg', 9),
(774, '/media/image8.jpeg', 9),
(775, '/media/image7.jpg', 9),
(776, '/media/image2.jpg', 9),
(777, '/media/image4.jpg', 9),
(778, '/media/image9.jpg', 10),
(779, '/media/image5.jpg', 10),
(780, '/media/image9.jpg', 10),
(781, '/media/image8.jpeg', 10),
(782, '/media/image7.jpg', 10),
(783, '/media/image3.jpg', 10),
(784, '/media/image7.jpg', 11),
(785, '/media/image6.jpg', 12),
(786, '/media/image8.jpeg', 12),
(787, '/media/image9.jpg', 12),
(788, '/media/image9.jpg', 12),
(789, '/media/image2.jpg', 12),
(790, '/media/image7.jpg', 12),
(791, '/media/image8.jpeg', 12),
(792, '/media/image7.jpg', 13),
(793, '/media/image7.jpg', 13),
(794, '/media/image2.jpg', 13),
(795, '/media/image2.jpg', 13),
(796, '/media/image1.jpg', 13),
(797, '/media/image1.jpg', 13),
(798, '/media/image1.jpg', 13),
(799, '/media/image1.jpg', 14),
(800, '/media/image7.jpg', 14),
(801, '/media/image3.jpg', 14),
(802, '/media/image6.jpg', 14),
(803, '/media/image9.jpg', 14),
(804, '/media/image8.jpeg', 15),
(805, '/media/image7.jpg', 15),
(806, '/media/image10.jpg', 16),
(807, '/media/image4.jpg', 16),
(808, '/media/image2.jpg', 16),
(809, '/media/image9.jpg', 16),
(810, '/media/image10.jpg', 16),
(811, '/media/image5.jpg', 16),
(812, '/media/image3.jpg', 16),
(813, '/media/image10.jpg', 16),
(814, '/media/image4.jpg', 17),
(815, '/media/image5.jpg', 17),
(816, '/media/image7.jpg', 17),
(817, '/media/image7.jpg', 17),
(818, '/media/image2.jpg', 17),
(819, '/media/image9.jpg', 17),
(820, '/media/image1.jpg', 17),
(821, '/media/image4.jpg', 17),
(822, '/media/image9.jpg', 18),
(823, '/media/image2.jpg', 18),
(824, '/media/image1.jpg', 18),
(825, '/media/image7.jpg', 18),
(826, '/media/image4.jpg', 18),
(827, '/media/image5.jpg', 19),
(828, '/media/image3.jpg', 19),
(829, '/media/image2.jpg', 20),
(830, '/media/image10.jpg', 20),
(831, '/media/image4.jpg', 20),
(832, '/media/image8.jpeg', 20),
(833, '/media/image6.jpg', 20),
(834, '/media/image7.jpg', 20),
(835, '/media/image3.jpg', 21),
(836, '/media/image5.jpg', 21),
(837, '/media/image2.jpg', 21),
(838, '/media/image3.jpg', 21),
(839, '/media/image7.jpg', 21),
(840, '/media/image9.jpg', 21),
(841, '/media/image1.jpg', 22),
(842, '/media/image6.jpg', 22),
(843, '/media/image6.jpg', 22),
(844, '/media/image2.jpg', 22),
(845, '/media/image2.jpg', 22),
(846, '/media/image2.jpg', 22),
(847, '/media/image2.jpg', 22),
(848, '/media/image3.jpg', 22),
(849, '/media/image6.jpg', 23),
(850, '/media/image1.jpg', 24),
(851, '/media/image3.jpg', 24),
(852, '/media/image3.jpg', 24),
(853, '/media/image2.jpg', 24),
(854, '/media/image1.jpg', 24),
(855, '/media/image7.jpg', 24),
(856, '/media/image5.jpg', 24),
(857, '/media/image5.jpg', 24),
(858, '/media/image2.jpg', 25),
(859, '/media/image6.jpg', 25),
(860, '/media/image4.jpg', 26),
(861, '/media/image10.jpg', 26),
(862, '/media/image6.jpg', 26),
(863, '/media/image1.jpg', 27),
(864, '/media/image10.jpg', 27),
(865, '/media/image4.jpg', 27),
(866, '/media/image7.jpg', 27),
(867, '/media/image7.jpg', 27),
(868, '/media/image4.jpg', 28),
(869, '/media/image4.jpg', 29),
(870, '/media/image4.jpg', 29),
(871, '/media/image10.jpg', 29),
(872, '/media/image7.jpg', 29),
(873, '/media/image3.jpg', 29),
(874, '/media/image4.jpg', 29),
(875, '/media/image1.jpg', 29),
(876, '/media/image7.jpg', 30),
(877, '/media/image3.jpg', 30),
(878, '/media/image6.jpg', 30),
(879, '/media/image3.jpg', 30),
(880, '/media/image6.jpg', 30),
(881, '/media/image1.jpg', 30),
(882, '/media/image8.jpeg', 30),
(883, '/media/image3.jpg', 30);

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
(2, 2, 1, 3);

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
(2, 'Carlos', 'Sainz', 'carlossainz', 'Man', '1991-05-16 16:56:24', 'Spain', 'Madrid', 'Calle Sainz 55', '53055', 'Test description', 'default.png', 1, '655974455', 'sainz@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2019-02-06 02:54:17', '1969-08-30 01:11:21', 1, 1);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=884;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
