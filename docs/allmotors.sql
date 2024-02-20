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
  `brand` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_owner` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `brand`, `model`, `title`, `date_uploaded`, `status`, `views`, `saves`, `color`, `year`, `seats`, `doors`, `horsepower`, `gearbox`, `distance`, `fuel`, `currency`, `acceleration`, `engine`, `drive`, `bought_in`, `price`, `type`, `location`, `emissions`, `consumption`, `plate`, `dgt_sticker`, `last_itv`, `last_update`, `description`, `id_owner`) VALUES
(1, 'Volvo', 'Model 3', 'Volvo Model 3', '2024-02-20 09:32:58', NULL, 0, 0, 'Black', '1952', 8, 2, 1214, 'Automatic', 625095, 'Diesel', '£', 3.5, 'I6', 'FWD', 'Spain', 2763579, 'SUV', 'Manitoba', 91.58, 5.64, '3041-IEK', 'B', '2022-06-30 01:10:46', '2024-02-20 09:32:58', 'while a cat reads loudly a dog sleeps', 1),
(2, 'Hyundai', 'A4', 'Hyundai A4', '2024-02-20 09:32:58', NULL, 0, 0, 'Green', '2012', 2, 5, 304, 'Automatic', 709169, 'Diesel', '€', 8.6, 'V6', 'FWD', 'India', 4321131, 'Van', 'Prince Edward Island', 67.86, 7.19, '1305-EFC', 'ECO', '2018-06-22 17:16:24', '2024-02-20 09:32:58', 'wherever the car run quickly a book run quickly', 2),
(3, 'Ford', 'Golf', 'Ford Golf', '2024-02-20 09:32:58', NULL, 0, 0, 'Orange', '2016', 6, 2, 596, 'Automatic', 1293887, 'Gasoline', '£', 5.4, 'I6', 'FWD', 'South Korea', 2879536, 'Coupe', 'Alberta', 77.44, 8.54, '1425-QOM', 'B', '2014-12-20 22:38:25', '2024-02-20 09:32:58', 'that the car fly one birds ate softly but one book reads', 2),
(4, 'Chevrolet', 'Camry', 'Chevrolet Camry', '2024-02-20 09:32:58', NULL, 0, 0, 'Red', '2008', 4, 3, 1132, 'Manual', 367765, 'Hybrid', '€', 9.9, 'V6', 'AWD', 'South Africa', 4992120, 'Van', 'Yukon', 69.39, 9.31, '5034-GQM', '0', '2017-01-06 21:02:12', '2024-02-20 09:32:58', 'until a car fly a dog run', 2),
(5, 'Subaru', 'Camry', 'Subaru Camry', '2024-02-20 09:32:58', NULL, 0, 0, 'Yellow', '1971', 7, 3, 155, 'Manual', 566399, 'Gasoline', '$', 3.9, 'V8', 'FWD', 'India', 3218564, 'Wagon', 'Yukon', 105.87, 5.46, '7179-PJO', 'C', '2021-07-19 22:29:06', '2024-02-20 09:32:58', 'provided that the sun ate one birds sleeps or a sandwich reads', 1),
(6, 'Ford', 'Elantra', 'Ford Elantra', '2024-02-20 09:32:58', NULL, 0, 0, 'Green', '1931', 5, 3, 1311, 'Manual', 565544, 'Hybrid', '£', 3.4, 'I3', 'AWD', 'India', 2607102, 'Coupe', 'Yukon', 89.96, 6.11, '7028-SBB', 'ECO', '2022-07-26 10:48:25', '2024-02-20 09:32:58', 'than the cat sleeps brightly the friend ate', 2),
(7, 'Hyundai', 'Camry', 'Hyundai Camry', '2024-02-20 09:32:58', NULL, 0, 0, 'Red', '1974', 3, 3, 531, 'Automatic', 912905, 'Electric', '¥', 4.5, 'V8', 'FWD', 'Germany', 147797, 'Coupe', 'Ontario', 103.54, 5.05, '2486-TSW', 'ECO', '2022-01-22 12:37:41', '2024-02-20 09:32:58', 'after a sun ate a car sleeps brightly', 2),
(8, 'Hyundai', 'F-150', 'Hyundai F-150', '2024-02-20 09:32:58', NULL, 0, 0, 'Black', '1942', 2, 5, 987, 'Automatic', 1095908, 'Diesel', '$', 2.2, 'I5', 'RWD', 'United Kingdom', 3143745, 'Truck', 'Northwest Territories', 83.55, 8.36, '0480-EYB', 'ECO', '2016-06-20 01:55:26', '2024-02-20 09:32:58', 'while a sun fly one sandwich ate but a friend reads', 1),
(9, 'BMW', 'S60', 'BMW S60', '2024-02-20 09:32:58', NULL, 0, 0, 'Orange', '1936', 8, 4, 1101, 'Manual', 1364085, 'Gasoline', '$', 10, 'V6', 'RWD', 'France', 1771102, 'Wagon', 'Nova Scotia', 83.33, 9.42, '4618-ZZS', '0', '2021-04-21 09:00:22', '2024-02-20 09:32:58', 'as one birds is a house sleeps slowly', 1),
(10, 'Audi', 'S60', 'Audi S60', '2024-02-20 09:32:58', NULL, 0, 0, 'Red', '1957', 2, 5, 1122, 'Manual', 97254, 'Diesel', '£', 9.5, 'I6', 'FWD', 'Brazil', 2410471, 'Sedan', 'Madrid', 78.19, 9.1, '8293-MZB', 'C', '2017-12-08 16:03:01', '2024-02-20 09:32:58', 'after the house barks quickly a sun run loudly and one birds sleeps', 2),
(11, 'Subaru', '3 Series', 'Subaru 3 Series', '2024-02-20 09:32:58', NULL, 0, 0, 'Silver', '1957', 3, 5, 756, 'Manual', 107110, 'Hybrid', '£', 9.7, 'I5', 'AWD', 'France', 2586706, 'Coupe', 'Newfoundland and Labrador', 43.86, 9.09, '4660-ZDJ', 'ECO', '2021-12-01 03:08:58', '2024-02-20 09:32:58', 'unless the friend ate one sun run', 1),
(12, 'Nissan', 'Golf', 'Nissan Golf', '2024-02-20 09:32:58', NULL, 0, 0, 'Purple', '1934', 4, 3, 1148, 'Automatic', 1124787, 'Diesel', '$', 2.9, 'I5', 'AWD', 'Australia', 2138222, 'Truck', 'Catalonia', 106.27, 7.31, '2728-DHM', '0', '2013-03-05 21:19:56', '2024-02-20 09:32:58', 'than a book is one sun ate', 2),
(13, 'Audi', 'Civic', 'Audi Civic', '2024-02-20 09:32:58', NULL, 0, 0, 'Yellow', '1958', 5, 2, 1490, 'Manual', 1307635, 'Electric', '¥', 7.6, 'W16', 'FWD', 'China', 2654793, 'Convertible', 'Saskatchewan', 13.4, 8.53, '3947-TNY', '0', '2012-10-24 01:47:51', '2024-02-20 09:32:58', 'while a car run brightly a house shines quickly and a dog fly slowly', 2),
(14, 'Mercedes-Benz', 'Soul', 'Mercedes-Benz Soul', '2024-02-20 09:32:59', NULL, 0, 0, 'Yellow', '2020', 2, 5, 505, 'Manual', 449254, 'Hybrid', '€', 8.3, 'W12', 'RWD', 'India', 829804, 'Wagon', 'Prince Edward Island', 40.62, 9.83, '9255-JUH', 'B', '2016-07-18 17:47:23', '2024-02-20 09:32:59', 'after one sun barks the birds fly brightly', 1),
(15, 'Mercedes-Benz', '3 Series', 'Mercedes-Benz 3 Series', '2024-02-20 09:32:59', NULL, 0, 0, 'White', '1989', 4, 4, 747, 'Automatic', 777447, 'Electric', '$', 8.1, 'V12', 'FWD', 'Japan', 2228031, 'Hatchback', 'Basque Country', 73.49, 7.97, '4594-AAL', '0', '2017-12-01 08:52:41', '2024-02-20 09:32:59', 'that one friend ate one car reads', 2),
(16, 'Hyundai', '3 Series', 'Hyundai 3 Series', '2024-02-20 09:32:59', NULL, 0, 0, 'White', '1983', 2, 2, 1243, 'Automatic', 269297, 'Hybrid', '£', 3, 'V8', 'FWD', 'South Korea', 1192340, 'Truck', 'Catalonia', 30.31, 9.02, '6167-CBO', '0', '2020-08-21 13:29:42', '2024-02-20 09:32:59', 'so that one friend barks one car sleeps softly and the house ate quickly', 1),
(17, 'Honda', 'Model 3', 'Honda Model 3', '2024-02-20 09:32:59', NULL, 0, 0, 'Blue', '1975', 7, 5, 651, 'Manual', 98743, 'Electric', '€', 4.3, 'V8', 'FWD', 'Norway', 3487087, 'Hatchback', 'Basque Country', 58.04, 7.42, '3856-QTY', 'ECO', '2017-04-06 08:35:51', '2024-02-20 09:32:59', 'until one house ate brightly one book shines quickly and the house fly loudly', 1),
(18, 'BMW', 'Soul', 'BMW Soul', '2024-02-20 09:32:59', NULL, 0, 0, 'Red', '1934', 4, 4, 1074, 'Manual', 417157, 'Diesel', '$', 8.4, 'I3', 'RWD', 'Japan', 549635, 'Convertible', 'Basque Country', 79.03, 6.3, '7963-NKP', 'B', '2018-09-14 21:23:52', '2024-02-20 09:32:59', 'so that the sandwich barks loudly a dog ate slowly', 1),
(19, 'Subaru', 'S60', 'Subaru S60', '2024-02-20 09:32:59', NULL, 0, 0, 'Green', '1951', 8, 5, 64, 'Manual', 269184, 'Gasoline', '$', 6.9, 'W16', 'AWD', 'Mexico', 4552526, 'SUV', 'Northwest Territories', 103.98, 9.3, '5485-HZP', 'B', '2012-03-28 13:07:29', '2024-02-20 09:32:59', 'even though a car run one cat barks loudly', 2),
(20, 'Honda', 'F-150', 'Honda F-150', '2024-02-20 09:32:59', NULL, 0, 0, 'Yellow', '1987', 8, 5, 666, 'Manual', 1382620, 'Hybrid', '£', 3.9, 'I6', 'AWD', 'Argentina', 3297880, 'Convertible', 'Basque Country', 20.44, 9.68, '7431-EOX', 'B', '2019-05-26 16:10:28', '2024-02-20 09:32:59', 'in order to a dog run one dog reads brightly', 1),
(21, 'Volkswagen', 'Elantra', 'Volkswagen Elantra', '2024-02-20 09:32:59', NULL, 0, 0, 'Green', '1980', 3, 3, 860, 'Manual', 833732, 'Gasoline', '€', 9.1, 'V6', 'FWD', 'Turkey', 2037668, 'Coupe', 'Prince Edward Island', 76.52, 9.35, '1896-BXB', 'ECO', '2013-04-01 18:20:01', '2024-02-20 09:32:59', 'though a friend barks loudly one birds sleeps', 1),
(22, 'Toyota', 'Altima', 'Toyota Altima', '2024-02-20 09:32:59', NULL, 0, 0, 'Orange', '1993', 3, 5, 763, 'Manual', 1001924, 'Hybrid', '£', 2.4, 'V6', 'AWD', 'Argentina', 512803, 'Convertible', 'New Brunswick', 26.91, 9.46, '2700-HML', '0', '2018-11-03 05:59:33', '2024-02-20 09:32:59', 'so that a sandwich fly one car ate slowly', 2),
(23, 'Mercedes-Benz', 'Soul', 'Mercedes-Benz Soul', '2024-02-20 09:32:59', NULL, 0, 0, 'Purple', '1953', 7, 4, 1371, 'Manual', 1264147, 'Hybrid', '$', 2.2, 'V8', 'AWD', 'Japan', 4484175, 'Sedan', 'Andalusia', 62.08, 8.29, '9958-MSL', 'ECO', '2014-03-08 04:26:00', '2024-02-20 09:32:59', 'although one friend ate a book shines or the sandwich ate slowly', 1),
(24, 'Toyota', 'Civic', 'Toyota Civic', '2024-02-20 09:32:59', NULL, 0, 0, 'Purple', '1932', 7, 2, 1264, 'Manual', 1066345, 'Gasoline', '£', 7.4, 'W16', 'AWD', 'South Korea', 4670230, 'SUV', 'Alberta', 41.61, 7.62, '4856-IIB', 'B', '2013-02-25 22:07:35', '2024-02-20 09:32:59', 'although the house is the birds sleeps', 2),
(25, 'Ford', 'F-150', 'Ford F-150', '2024-02-20 09:32:59', NULL, 0, 0, 'Gray', '1965', 5, 5, 624, 'Automatic', 1368161, 'Electric', '$', 3.2, 'W16', 'RWD', 'France', 606449, 'Coupe', 'Alberta', 97.09, 5.56, '8245-OGJ', 'B', '2017-10-10 23:25:43', '2024-02-20 09:32:59', 'whenever a dog barks the sun ate softly or the cat run softly', 2),
(26, 'Volvo', 'Camry', 'Volvo Camry', '2024-02-20 09:32:59', NULL, 0, 0, 'Silver', '1944', 3, 2, 337, 'Manual', 1227933, 'Gasoline', '$', 8.4, 'V6', 'RWD', 'Argentina', 1002629, 'Hatchback', 'Northwest Territories', 26.63, 8.7, '9868-MYL', 'ECO', '2021-08-24 10:29:19', '2024-02-20 09:32:59', 'so that the friend ate softly the dog barks', 1),
(27, 'Tesla', 'A4', 'Tesla A4', '2024-02-20 09:32:59', NULL, 0, 0, 'Red', '1923', 2, 4, 647, 'Automatic', 240760, 'Hybrid', '¥', 9.6, 'W16', 'AWD', 'Spain', 3646508, 'Hatchback', 'Yukon', 53.9, 5.22, '7290-LTO', '0', '2011-09-18 17:38:34', '2024-02-20 09:32:59', 'wherever the cat ate softly one cat reads brightly', 2),
(28, 'Ford', '3 Series', 'Ford 3 Series', '2024-02-20 09:32:59', NULL, 0, 0, 'Orange', '2023', 2, 5, 707, 'Manual', 642754, 'Diesel', '£', 3.3, 'I5', 'FWD', 'South Korea', 2549149, 'Wagon', 'Yukon', 90.55, 6.42, '5280-CYA', 'ECO', '2021-08-07 20:03:28', '2024-02-20 09:32:59', 'before the sun fly slowly one dog ate loudly', 2),
(29, 'Nissan', 'F-150', 'Nissan F-150', '2024-02-20 09:32:59', NULL, 0, 0, 'Silver', '2001', 3, 4, 1270, 'Manual', 463922, 'Gasoline', '£', 5.2, 'I4', 'RWD', 'India', 382555, 'Hatchback', 'British Columbia', 18.22, 6.65, '7531-DAI', 'C', '2020-05-22 03:30:02', '2024-02-20 09:32:59', 'since the cat reads the cat reads quickly or a friend barks', 2),
(30, 'Ford', 'CX-5', 'Ford CX-5', '2024-02-20 09:32:59', NULL, 0, 0, 'Blue', '2003', 4, 3, 763, 'Automatic', 1488788, 'Diesel', '$', 4.8, 'I5', 'AWD', 'Mexico', 969143, 'Sedan', 'Ontario', 101.69, 8.91, '5883-MNQ', 'C', '2021-12-09 17:35:19', '2024-02-20 09:32:59', 'where a house ate a house is', 2),
(31, 'Volkswagen', '3 Series', 'Volkswagen 3 Series', '2024-02-20 09:32:59', NULL, 0, 0, 'Gray', '1976', 7, 3, 461, 'Manual', 170139, 'Hybrid', '¥', 4, 'I6', 'AWD', 'South Africa', 3213186, 'Convertible', 'Prince Edward Island', 51.25, 7.19, '8823-JPJ', 'ECO', '2021-08-17 10:15:04', '2024-02-20 09:32:59', 'after one birds fly loudly the book shines softly', 1),
(32, 'Chevrolet', 'Model 3', 'Chevrolet Model 3', '2024-02-20 09:32:59', NULL, 0, 0, 'Gray', '2002', 8, 4, 495, 'Manual', 807953, 'Hybrid', '¥', 5.1, 'I3', 'FWD', 'Italy', 3730810, 'Convertible', 'Saskatchewan', 19.39, 9.21, '1009-QFI', 'C', '2014-01-07 16:14:03', '2024-02-20 09:32:59', 'when a sandwich barks brightly the book run', 1),
(33, 'Mercedes-Benz', 'Camry', 'Mercedes-Benz Camry', '2024-02-20 09:32:59', NULL, 0, 0, 'White', '1933', 8, 2, 415, 'Manual', 51747, 'Hybrid', '$', 5.9, 'W12', 'AWD', 'Japan', 1034223, 'Coupe', 'Saskatchewan', 63.56, 7.68, '3798-OSF', 'ECO', '2016-12-09 05:57:44', '2024-02-20 09:32:59', 'than the friend is brightly the house shines', 2),
(34, 'Subaru', 'CX-5', 'Subaru CX-5', '2024-02-20 09:32:59', NULL, 0, 0, 'White', '1942', 4, 5, 1268, 'Manual', 202573, 'Electric', '€', 7.1, 'W12', 'AWD', 'Argentina', 3724337, 'SUV', 'Quebec', 21.96, 8.63, '4003-SXD', 'B', '2015-06-07 21:10:29', '2024-02-20 09:32:59', 'provided that one car run slowly one friend fly', 1),
(35, 'Kia', 'Elantra', 'Kia Elantra', '2024-02-20 09:32:59', NULL, 0, 0, 'Purple', '1990', 8, 2, 1448, 'Manual', 664416, 'Gasoline', '€', 3, 'V10', 'AWD', 'China', 4191963, 'Truck', 'Yukon', 100.9, 7.71, '2748-URK', 'C', '2022-11-27 14:33:17', '2024-02-20 09:32:59', 'when a sun sleeps brightly one car reads loudly and a sandwich ate quickly', 1);

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
(594, '/media/image4.jpg', 1),
(595, '/media/image5.jpg', 1),
(596, '/media/image2.jpg', 1),
(597, '/media/image2.jpg', 1),
(598, '/media/image5.jpg', 2),
(599, '/media/image1.jpg', 2),
(600, '/media/image9.jpg', 2),
(601, '/media/image1.jpg', 3),
(602, '/media/image1.jpg', 3),
(603, '/media/image8.jpeg', 3),
(604, '/media/image3.jpg', 3),
(605, '/media/image1.jpg', 4),
(606, '/media/image4.jpg', 5),
(607, '/media/image6.jpg', 5),
(608, '/media/image8.jpeg', 5),
(609, '/media/image3.jpg', 5),
(610, '/media/image5.jpg', 5),
(611, '/media/image2.jpg', 5),
(612, '/media/image2.jpg', 5),
(613, '/media/image10.jpg', 5),
(614, '/media/image5.jpg', 6),
(615, '/media/image1.jpg', 6),
(616, '/media/image1.jpg', 7),
(617, '/media/image8.jpeg', 7),
(618, '/media/image9.jpg', 7),
(619, '/media/image5.jpg', 7),
(620, '/media/image1.jpg', 7),
(621, '/media/image7.jpg', 7),
(622, '/media/image8.jpeg', 8),
(623, '/media/image6.jpg', 8),
(624, '/media/image6.jpg', 8),
(625, '/media/image9.jpg', 8),
(626, '/media/image7.jpg', 8),
(627, '/media/image5.jpg', 8),
(628, '/media/image5.jpg', 8),
(629, '/media/image1.jpg', 8),
(630, '/media/image8.jpeg', 9),
(631, '/media/image5.jpg', 9),
(632, '/media/image10.jpg', 9),
(633, '/media/image7.jpg', 10),
(634, '/media/image2.jpg', 10),
(635, '/media/image4.jpg', 11),
(636, '/media/image9.jpg', 12),
(637, '/media/image1.jpg', 12),
(638, '/media/image1.jpg', 12),
(639, '/media/image3.jpg', 12),
(640, '/media/image10.jpg', 12),
(641, '/media/image10.jpg', 12),
(642, '/media/image9.jpg', 13),
(643, '/media/image10.jpg', 13),
(644, '/media/image3.jpg', 13),
(645, '/media/image5.jpg', 13),
(646, '/media/image10.jpg', 13),
(647, '/media/image2.jpg', 13),
(648, '/media/image8.jpeg', 13),
(649, '/media/image3.jpg', 13),
(650, '/media/image2.jpg', 14),
(651, '/media/image7.jpg', 14),
(652, '/media/image4.jpg', 15),
(653, '/media/image10.jpg', 15),
(654, '/media/image7.jpg', 15),
(655, '/media/image9.jpg', 15),
(656, '/media/image9.jpg', 15),
(657, '/media/image5.jpg', 15),
(658, '/media/image2.jpg', 16),
(659, '/media/image9.jpg', 17),
(660, '/media/image2.jpg', 17),
(661, '/media/image8.jpeg', 17),
(662, '/media/image5.jpg', 17),
(663, '/media/image10.jpg', 18),
(664, '/media/image1.jpg', 18),
(665, '/media/image9.jpg', 18),
(666, '/media/image8.jpeg', 18),
(667, '/media/image8.jpeg', 18),
(668, '/media/image10.jpg', 18),
(669, '/media/image8.jpeg', 19),
(670, '/media/image7.jpg', 19),
(671, '/media/image4.jpg', 19),
(672, '/media/image7.jpg', 19),
(673, '/media/image10.jpg', 19),
(674, '/media/image7.jpg', 19),
(675, '/media/image3.jpg', 19),
(676, '/media/image6.jpg', 19),
(677, '/media/image2.jpg', 20),
(678, '/media/image9.jpg', 20),
(679, '/media/image2.jpg', 20),
(680, '/media/image8.jpeg', 20),
(681, '/media/image7.jpg', 20),
(682, '/media/image5.jpg', 21),
(683, '/media/image1.jpg', 21),
(684, '/media/image1.jpg', 21),
(685, '/media/image7.jpg', 21),
(686, '/media/image10.jpg', 22),
(687, '/media/image5.jpg', 22),
(688, '/media/image5.jpg', 23),
(689, '/media/image9.jpg', 23),
(690, '/media/image5.jpg', 23),
(691, '/media/image5.jpg', 23),
(692, '/media/image6.jpg', 23),
(693, '/media/image2.jpg', 23),
(694, '/media/image1.jpg', 23),
(695, '/media/image6.jpg', 24),
(696, '/media/image1.jpg', 25),
(697, '/media/image2.jpg', 25),
(698, '/media/image10.jpg', 25),
(699, '/media/image9.jpg', 25),
(700, '/media/image4.jpg', 25),
(701, '/media/image6.jpg', 25),
(702, '/media/image3.jpg', 25),
(703, '/media/image5.jpg', 26),
(704, '/media/image2.jpg', 26),
(705, '/media/image2.jpg', 27),
(706, '/media/image2.jpg', 27),
(707, '/media/image8.jpeg', 27),
(708, '/media/image7.jpg', 27),
(709, '/media/image10.jpg', 27),
(710, '/media/image2.jpg', 27),
(711, '/media/image2.jpg', 28),
(712, '/media/image9.jpg', 28),
(713, '/media/image2.jpg', 28),
(714, '/media/image5.jpg', 28),
(715, '/media/image5.jpg', 28),
(716, '/media/image6.jpg', 29),
(717, '/media/image3.jpg', 29),
(718, '/media/image8.jpeg', 29),
(719, '/media/image6.jpg', 29),
(720, '/media/image9.jpg', 29),
(721, '/media/image3.jpg', 30),
(722, '/media/image3.jpg', 30),
(723, '/media/image9.jpg', 30),
(724, '/media/image4.jpg', 30),
(725, '/media/image7.jpg', 30),
(726, '/media/image8.jpeg', 31),
(727, '/media/image3.jpg', 32),
(728, '/media/image10.jpg', 33),
(729, '/media/image7.jpg', 33),
(730, '/media/image7.jpg', 34),
(731, '/media/image1.jpg', 34),
(732, '/media/image5.jpg', 35),
(733, '/media/image9.jpg', 35),
(734, '/media/image5.jpg', 35),
(735, '/media/image4.jpg', 35),
(736, '/media/image1.jpg', 35);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=737;

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
