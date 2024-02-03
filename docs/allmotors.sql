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
  `date_uploaded` datetime DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'On sale',
  `views` bigint DEFAULT '0',
  `saves` bigint DEFAULT '0',
  `color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `year` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seats` int NOT NULL,
  `doors` int NOT NULL,
  `horsepower` int NOT NULL,
  `gearbox` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `distance` int NOT NULL,
  `fuel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `currency` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `acceleration` float DEFAULT NULL,
  `engine` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `drive` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bought_in` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
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

INSERT INTO `car` (`id`, `brand`, `model`, `date_uploaded`, `status`, `views`, `saves`, `color`, `year`, `seats`, `doors`, `horsepower`, `gearbox`, `distance`, `fuel`, `currency`, `acceleration`, `engine`, `drive`, `bought_in`, `price`, `type`, `location`, `emissions`, `consumption`, `plate`, `dgt_sticker`, `last_itv`, `last_update`, `description`, `id_owner`) VALUES
(1, 'BMW', 'Model 3', '2024-02-02 16:17:13', NULL, 0, 0, 'Silver', '2018', 5, 3, 279, 'Automatic', 711792, 'Diesel', '$', 4.3, 'I4', 'FWD', 'Mexico', 2035540, 'Truck', 'British Columbia', 62.6, 5.86, '1321-DIL', 'C', '2012-07-17 10:11:00', '2024-02-02 16:17:13', 'once one book run brightly the friend reads or one sandwich sleeps', 1),
(2, 'Volkswagen', 'Model 3', '2024-02-02 16:17:13', NULL, 0, 0, 'Yellow', '1932', 5, 5, 461, 'Automatic', 1162317, 'Diesel', '¥', 5.6, 'I3', 'AWD', 'Australia', 214335, 'Wagon', 'Alberta', 73.73, 9.81, '8606-BCH', 'B', '2021-07-08 01:38:38', '2024-02-02 16:17:13', 'because one friend shines a cat barks but the book shines', 2),
(3, 'Kia', 'Model 3', '2024-02-02 16:17:13', NULL, 0, 0, 'White', '1923', 6, 3, 714, 'Automatic', 869358, 'Hybrid', '$', 4.8, 'I5', 'RWD', 'France', 2553910, 'SUV', 'Saskatchewan', 91.5, 7.74, '2440-QCH', 'C', '2012-02-10 19:06:47', '2024-02-02 16:17:13', 'wherever one dog ate slowly a birds run and one sandwich shines quickly', 1),
(4, 'Honda', 'Civic', '2024-02-02 16:17:13', NULL, 0, 0, 'Purple', '1940', 3, 5, 1321, 'Manual', 494638, 'Diesel', '€', 7.6, 'I6', 'AWD', 'Italy', 1945523, 'Van', 'Basque Country', 73.84, 7.16, '4266-DPF', 'ECO', '2022-02-09 13:45:38', '2024-02-02 16:17:13', 'while a cat is quickly a cat barks', 1),
(5, 'Volvo', 'F-150', '2024-02-02 16:17:13', NULL, 0, 0, 'Blue', '1994', 4, 5, 1500, 'Automatic', 1019903, 'Gasoline', '$', 3.7, 'I3', 'RWD', 'France', 3586789, 'Truck', 'Valencia', 100.37, 8.09, '7027-TSA', 'ECO', '2016-07-04 07:21:10', '2024-02-02 16:17:13', 'where one sandwich reads the sandwich shines brightly or one book ate loudly', 1),
(6, 'Mercedes-Benz', 'Model 3', '2024-02-02 16:17:13', NULL, 0, 0, 'Black', '1965', 8, 2, 602, 'Manual', 904223, 'Gasoline', '€', 6.1, 'I4', 'FWD', 'India', 801185, 'Coupe', 'Northwest Territories', 50.49, 5.25, '6706-DTT', 'ECO', '2016-05-04 11:30:23', '2024-02-02 16:17:13', 'if the dog reads brightly one book run brightly and a book sleeps', 1),
(7, 'Mazda', 'Outback', '2024-02-02 16:17:13', NULL, 0, 0, 'Purple', '1927', 6, 3, 800, 'Manual', 409610, 'Diesel', '€', 3, 'V6', 'FWD', 'China', 1778744, 'Coupe', 'Alberta', 90.02, 6.71, '6019-XOF', '0', '2019-05-22 16:02:33', '2024-02-02 16:17:13', 'although the dog run a car sleeps', 2),
(8, 'Tesla', 'Cruze', '2024-02-02 16:17:13', NULL, 8, 0, 'Black', '1978', 2, 3, 277, 'Automatic', 1355772, 'Gasoline', '$', 2.8, 'V10', 'RWD', 'Brazil', 1830797, 'Convertible', 'Ontario', 11.07, 8.81, '5281-QSF', 'C', '2011-04-04 20:46:23', '2024-02-02 16:17:13', 'although a car sleeps brightly a friend sleeps slowly but a house reads softly', 1),
(9, 'Honda', 'Camry', '2024-02-02 16:17:13', NULL, 0, 0, 'White', '1986', 3, 5, 1202, 'Manual', 255346, 'Hybrid', '¥', 8.7, 'W12', 'FWD', 'Turkey', 4850558, 'Hatchback', 'Prince Edward Island', 56.84, 5.15, '7171-UWR', 'B', '2011-10-23 08:05:18', '2024-02-02 16:17:13', 'whether one cat ate one sandwich fly loudly or a cat fly softly', 2),
(10, 'Volvo', '3 Series', '2024-02-02 16:17:13', NULL, 0, 0, 'Black', '1948', 8, 3, 705, 'Manual', 120286, 'Gasoline', '¥', 2.3, 'I5', 'RWD', 'Mexico', 369996, 'Hatchback', 'Manitoba', 68.85, 7.76, '8506-YWT', 'ECO', '2010-05-11 06:50:08', '2024-02-02 16:17:13', 'while the dog barks softly a sun ate quickly', 1),
(11, 'Tesla', '3 Series', '2024-02-02 23:14:18', NULL, 0, 0, 'White', '1975', 6, 2, 910, 'Manual', 17236, 'Electric', '£', 3.5, 'I5', 'RWD', 'United States', 4912245, 'Sedan', 'Northwest Territories', 87.47, 5.6, '9936-SSV', '0', '2010-07-04 05:40:17', '2024-02-02 23:14:18', 'while one dog shines softly one house sleeps', 1),
(12, 'Mercedes-Benz', 'Outback', '2024-02-02 23:14:18', NULL, 0, 0, 'Black', '2022', 7, 2, 1400, 'Automatic', 203283, 'Hybrid', '¥', 9.2, 'V8', 'RWD', 'France', 3464770, 'Convertible', 'Newfoundland and Labrador', 100.73, 9.17, '4216-PNS', 'ECO', '2021-09-19 12:10:03', '2024-02-02 23:14:18', 'if a sandwich run a book barks softly', 2),
(13, 'Mercedes-Benz', 'CX-5', '2024-02-02 23:14:18', NULL, 0, 0, 'Yellow', '1931', 8, 3, 290, 'Manual', 636148, 'Gasoline', '$', 8.8, 'I4', 'FWD', 'South Africa', 1924306, 'Convertible', 'Quebec', 59.92, 5.44, '9733-PIB', 'C', '2011-11-21 18:04:32', '2024-02-02 23:14:18', 'so that a sun run one friend is brightly or the sandwich barks quickly', 2),
(14, 'BMW', 'Altima', '2024-02-02 23:14:18', NULL, 0, 0, 'Orange', '2019', 7, 3, 688, 'Manual', 1273904, 'Electric', '£', 7.9, 'I4', 'AWD', 'Argentina', 4608181, 'Convertible', 'Manitoba', 53.37, 6.22, '3948-TYF', '0', '2012-03-04 12:55:28', '2024-02-02 23:14:18', 'in order to the sun barks brightly a book ate or one birds shines slowly', 1),
(15, 'Chevrolet', 'Civic', '2024-02-02 23:14:18', NULL, 0, 0, 'Blue', '1973', 2, 4, 1146, 'Automatic', 1357965, 'Gasoline', '$', 2.9, 'V10', 'RWD', 'South Korea', 3352645, 'Wagon', 'Ontario', 53.41, 8.61, '6818-SDW', '0', '2022-06-26 18:21:19', '2024-02-02 23:14:18', 'where a sandwich run the sun sleeps slowly and one car sleeps softly', 1),
(16, 'Nissan', 'Model 3', '2024-02-02 23:14:18', NULL, 0, 0, 'Gray', '1992', 4, 4, 589, 'Manual', 196525, 'Gasoline', '¥', 6, 'I4', 'FWD', 'Japan', 2315002, 'Convertible', 'Yukon', 19.36, 8.27, '3254-HPQ', 'ECO', '2011-12-07 17:55:24', '2024-02-02 23:14:18', 'if one house shines slowly a friend sleeps brightly but one book shines', 2),
(17, 'Honda', 'Civic', '2024-02-02 23:14:18', NULL, 0, 0, 'White', '2003', 8, 5, 469, 'Manual', 641337, 'Electric', '$', 3.4, 'V8', 'RWD', 'Brazil', 1084843, 'Van', 'Basque Country', 41.2, 9.93, '0147-OQG', 'B', '2010-08-18 10:17:02', '2024-02-02 23:14:18', 'that the house barks a book fly softly', 2),
(18, 'Volkswagen', 'F-150', '2024-02-02 23:14:18', NULL, 0, 0, 'Black', '1923', 3, 5, 890, 'Automatic', 981120, 'Diesel', '$', 5.4, 'V12', 'AWD', 'Norway', 4800991, 'Hatchback', 'Saskatchewan', 97.95, 8.37, '5493-IJS', 'C', '2021-04-10 01:19:59', '2024-02-02 23:14:18', 'wherever a sun ate softly one sandwich is but the car run', 1),
(19, 'BMW', 'Camry', '2024-02-02 23:14:18', NULL, 0, 0, 'White', '1964', 8, 2, 1353, 'Automatic', 848006, 'Gasoline', '€', 4.5, 'I4', 'FWD', 'Turkey', 2318868, 'Hatchback', 'British Columbia', 94.72, 7.13, '5628-DGH', 'C', '2017-06-07 16:16:09', '2024-02-02 23:14:18', 'whether the house reads a book fly quickly but the sandwich shines', 1),
(20, 'Chevrolet', 'F-150', '2024-02-02 23:14:19', NULL, 0, 0, 'Red', '1995', 6, 5, 737, 'Manual', 649360, 'Electric', '¥', 2.8, 'V12', 'RWD', 'Mexico', 4134617, 'SUV', 'New Brunswick', 89.26, 9.63, '9398-VKA', 'ECO', '2010-04-02 03:18:33', '2024-02-02 23:14:19', 'once the car sleeps a sun is brightly or a sun sleeps', 2),
(21, 'Nissan', 'S60', '2024-02-02 23:14:19', NULL, 0, 0, 'Green', '1968', 7, 2, 913, 'Manual', 893317, 'Hybrid', '£', 3.4, 'V12', 'RWD', 'Spain', 3805457, 'Sedan', 'Saskatchewan', 52.22, 7.12, '2596-FKQ', '0', '2017-02-21 22:42:29', '2024-02-02 23:14:19', 'although the book fly a house sleeps and a birds fly softly', 2),
(22, 'Hyundai', 'F-150', '2024-02-02 23:14:19', NULL, 0, 0, 'Purple', '2017', 8, 5, 705, 'Manual', 1325697, 'Gasoline', '¥', 4.5, 'W16', 'FWD', 'Italy', 3295619, 'Convertible', 'Prince Edward Island', 30.07, 6.27, '1987-ZKK', 'C', '2012-07-16 02:28:53', '2024-02-02 23:14:19', 'so that the sun reads softly one birds is but a sandwich reads softly', 2),
(23, 'Subaru', 'E-Class', '2024-02-02 23:14:19', NULL, 0, 0, 'Silver', '1927', 4, 5, 663, 'Automatic', 1106230, 'Hybrid', '$', 5.1, 'W12', 'RWD', 'South Korea', 1101246, 'Convertible', 'Nunavut', 87.7, 5.04, '9686-MIF', '0', '2013-09-12 07:21:52', '2024-02-02 23:14:19', 'when a cat shines softly a house reads softly', 2),
(24, 'Tesla', 'Elantra', '2024-02-02 23:14:19', NULL, 0, 0, 'Gray', '1967', 3, 3, 1210, 'Automatic', 1414324, 'Gasoline', '€', 8.8, 'I6', 'FWD', 'India', 2879362, 'Sedan', 'Valencia', 101.81, 7.64, '5992-RTI', 'B', '2022-02-04 15:50:06', '2024-02-02 23:14:19', 'unless a sun fly one friend ate but the cat ate', 1),
(25, 'BMW', 'Civic', '2024-02-02 23:14:19', NULL, 0, 0, 'Green', '2002', 6, 2, 1290, 'Manual', 1158363, 'Hybrid', '$', 4.7, 'I3', 'AWD', 'Russia', 868416, 'SUV', 'Northwest Territories', 40.14, 9.81, '0211-MUV', 'ECO', '2010-02-25 05:25:05', '2024-02-02 23:14:19', 'provided that the car reads the birds ate', 1),
(26, 'Tesla', 'Golf', '2024-02-02 23:14:19', NULL, 0, 0, 'Gray', '2000', 5, 2, 251, 'Automatic', 1063664, 'Electric', '$', 2.1, 'V6', 'FWD', 'Sweden', 2508054, 'Hatchback', 'British Columbia', 103.89, 6.66, '2232-ZGO', 'ECO', '2017-09-01 14:44:03', '2024-02-02 23:14:19', 'while the car ate softly the dog sleeps brightly but the house is loudly', 1),
(27, 'Kia', 'Soul', '2024-02-02 23:14:19', NULL, 0, 0, 'Blue', '2004', 4, 5, 668, 'Automatic', 242336, 'Diesel', '£', 4.9, 'I3', 'FWD', 'Turkey', 2597386, 'Sedan', 'Basque Country', 48.65, 6.08, '4368-KWR', 'ECO', '2015-06-09 18:39:06', '2024-02-02 23:14:19', 'until the dog barks one dog barks quickly and a sun ate', 2),
(28, 'Toyota', 'Outback', '2024-02-02 23:14:19', NULL, 0, 0, 'Purple', '1962', 3, 4, 837, 'Automatic', 18407, 'Diesel', '¥', 5.7, 'V12', 'RWD', 'Australia', 1761015, 'Sedan', 'Castile and León', 27.17, 5.88, '5731-JYK', 'C', '2019-01-05 14:04:43', '2024-02-02 23:14:19', 'where the dog run brightly the sun is slowly', 1),
(29, 'Audi', 'Camry', '2024-02-02 23:14:19', NULL, 0, 0, 'Yellow', '1960', 3, 4, 334, 'Manual', 1173158, 'Diesel', '¥', 3.9, 'I5', 'FWD', 'Sweden', 4444362, 'Van', 'Saskatchewan', 70.92, 5.27, '1669-WXC', '0', '2012-05-20 10:47:57', '2024-02-02 23:14:19', 'unless one birds is brightly one dog run', 2),
(30, 'Volvo', 'Civic', '2024-02-02 23:14:19', NULL, 0, 0, 'Silver', '1991', 8, 3, 573, 'Manual', 199339, 'Electric', '€', 2.2, 'I4', 'RWD', 'Japan', 578560, 'Hatchback', 'Catalonia', 31.14, 9.11, '3215-CGZ', '0', '2016-12-24 03:14:44', '2024-02-02 23:14:19', 'until the book is one sun run or the friend barks loudly', 2),
(31, 'Subaru', 'Civic', '2024-02-02 23:14:19', NULL, 0, 0, 'Purple', '2009', 2, 4, 340, 'Automatic', 1080577, 'Diesel', '$', 8, 'V6', 'RWD', 'Spain', 3247819, 'Convertible', 'Saskatchewan', 46.88, 9.64, '0759-WVE', 'ECO', '2016-08-06 08:51:32', '2024-02-02 23:14:19', 'where a friend shines softly the cat sleeps or one sandwich barks', 2),
(32, 'Volvo', 'E-Class', '2024-02-02 23:14:19', NULL, 0, 0, 'Purple', '2016', 3, 2, 1250, 'Manual', 443499, 'Diesel', '€', 5.1, 'V12', 'AWD', 'Spain', 2932598, 'Sedan', 'Catalonia', 39.54, 7.04, '8991-NGR', 'C', '2011-05-28 23:47:34', '2024-02-02 23:14:19', 'so that the sun reads softly one book barks quickly', 2),
(33, 'Chevrolet', 'CX-5', '2024-02-02 23:14:19', NULL, 0, 0, 'Green', '1985', 4, 3, 561, 'Manual', 939223, 'Diesel', '€', 6.7, 'V8', 'FWD', 'India', 4764433, 'Coupe', 'Manitoba', 18.72, 6.41, '3731-ZJF', 'B', '2014-06-09 05:21:53', '2024-02-02 23:14:19', 'until the book ate quickly a sun fly and the book reads quickly', 1),
(34, 'Nissan', 'Civic', '2024-02-02 23:14:19', NULL, 0, 0, 'Blue', '2021', 7, 5, 137, 'Manual', 307330, 'Electric', '€', 6, 'I6', 'FWD', 'United Kingdom', 4435579, 'Hatchback', 'Prince Edward Island', 93.77, 8.22, '4167-ENN', 'C', '2023-07-01 05:38:42', '2024-02-02 23:14:19', 'until a birds is the book ate loudly but a house reads', 1),
(35, 'Nissan', 'Soul', '2024-02-02 23:14:19', NULL, 0, 0, 'Purple', '1949', 7, 2, 690, 'Automatic', 22553, 'Diesel', '$', 9.3, 'V8', 'FWD', 'South Korea', 4940189, 'Wagon', 'Quebec', 95.62, 7.75, '3612-VOH', 'B', '2016-10-25 07:31:30', '2024-02-02 23:14:19', 'wherever a book run one friend ate or one sandwich fly', 1),
(36, 'Toyota', 'Camry', '2024-02-02 23:14:19', NULL, 0, 0, 'Gray', '2013', 5, 2, 1143, 'Manual', 1155809, 'Electric', '£', 9.3, 'V6', 'AWD', 'Argentina', 2174731, 'Coupe', 'Castile and León', 109.98, 6.05, '6878-BUY', 'ECO', '2019-05-14 21:59:11', '2024-02-02 23:14:19', 'as one car ate one friend barks and a friend sleeps softly', 2),
(37, 'Toyota', 'Soul', '2024-02-02 23:14:19', NULL, 0, 0, 'Blue', '1925', 7, 5, 326, 'Automatic', 1274679, 'Diesel', '£', 4.5, 'V10', 'AWD', 'India', 1244677, 'Hatchback', 'British Columbia', 63.73, 6.46, '1333-WXQ', 'C', '2021-02-21 16:51:49', '2024-02-02 23:14:19', 'because the cat reads loudly a car shines brightly but one house shines brightly', 2),
(38, 'Volkswagen', 'Elantra', '2024-02-02 23:14:19', NULL, 0, 0, 'Silver', '2012', 3, 2, 368, 'Manual', 786343, 'Electric', '£', 3.4, 'I6', 'AWD', 'Australia', 3434050, 'SUV', 'Quebec', 39.79, 9.35, '5667-FWK', 'ECO', '2014-09-15 00:57:53', '2024-02-02 23:14:19', 'that a sun shines a friend is softly and a sun shines brightly', 1),
(39, 'Subaru', 'Civic', '2024-02-02 23:14:19', NULL, 0, 0, 'Orange', '1978', 8, 5, 251, 'Automatic', 1478901, 'Electric', '£', 9.5, 'I4', 'RWD', 'Australia', 1632694, 'Van', 'Yukon', 23.57, 7.82, '9098-GKN', 'C', '2012-02-24 04:13:11', '2024-02-02 23:14:19', 'where the sun reads quickly the house shines slowly', 1),
(40, 'Audi', 'CX-5', '2024-02-02 23:14:19', NULL, 0, 0, 'Blue', '1980', 6, 2, 183, 'Manual', 592344, 'Electric', '$', 2.5, 'V8', 'AWD', 'Argentina', 511387, 'Coupe', 'Ontario', 108, 5.39, '6778-PRI', 'ECO', '2014-07-31 23:54:53', '2024-02-02 23:14:19', 'where one sandwich shines the house is softly', 1);

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
(60, '/media/image4.jpg', 1),
(61, '/media/image10.jpg', 1),
(62, '/media/image9.jpg', 1),
(63, '/media/image1.jpg', 1),
(64, '/media/image3.jpg', 1),
(65, '/media/image4.jpg', 1),
(66, '/media/image6.jpg', 1),
(67, '/media/image4.jpg', 1),
(68, '/media/image7.jpg', 2),
(69, '/media/image3.jpg', 2),
(70, '/media/image4.jpg', 2),
(71, '/media/image8.jpeg', 2),
(72, '/media/image6.jpg', 3),
(73, '/media/image3.jpg', 3),
(74, '/media/image8.jpeg', 3),
(75, '/media/image3.jpg', 4),
(76, '/media/image6.jpg', 4),
(77, '/media/image2.jpg', 4),
(78, '/media/image8.jpeg', 4),
(79, '/media/image7.jpg', 4),
(80, '/media/image6.jpg', 5),
(81, '/media/image2.jpg', 5),
(82, '/media/image2.jpg', 5),
(83, '/media/image1.jpg', 5),
(84, '/media/image7.jpg', 5),
(85, '/media/image3.jpg', 5),
(86, '/media/image10.jpg', 5),
(87, '/media/image10.jpg', 5),
(88, '/media/image8.jpeg', 6),
(89, '/media/image10.jpg', 6),
(90, '/media/image9.jpg', 6),
(91, '/media/image9.jpg', 6),
(92, '/media/image6.jpg', 6),
(93, '/media/image8.jpeg', 6),
(94, '/media/image7.jpg', 6),
(95, '/media/image9.jpg', 6),
(96, '/media/image10.jpg', 7),
(97, '/media/image1.jpg', 7),
(98, '/media/image7.jpg', 7),
(99, '/media/image3.jpg', 7),
(100, '/media/image2.jpg', 7),
(101, '/media/image1.jpg', 7),
(102, '/media/image1.jpg', 7),
(103, '/media/image5.jpg', 8),
(104, '/media/image8.jpeg', 8),
(105, '/media/image8.jpeg', 8),
(106, '/media/image9.jpg', 8),
(107, '/media/image8.jpeg', 9),
(108, '/media/image10.jpg', 9),
(109, '/media/image10.jpg', 9),
(110, '/media/image1.jpg', 10),
(111, '/media/image4.jpg', 10),
(112, '/media/image6.jpg', 10),
(113, '/media/image7.jpg', 10),
(114, '/media/image10.jpg', 10),
(115, '/media/image8.jpeg', 10),
(116, '/media/image2.jpg', 10),
(117, '/media/image1.jpg', 10),
(118, '/media/image7.jpg', 11),
(119, '/media/image8.jpeg', 11),
(120, '/media/image9.jpg', 11),
(121, '/media/image6.jpg', 11),
(122, '/media/image2.jpg', 11),
(123, '/media/image6.jpg', 11),
(124, '/media/image8.jpeg', 11),
(125, '/media/image8.jpeg', 12),
(126, '/media/image6.jpg', 12),
(127, '/media/image2.jpg', 12),
(128, '/media/image2.jpg', 12),
(129, '/media/image7.jpg', 12),
(130, '/media/image6.jpg', 13),
(131, '/media/image3.jpg', 13),
(132, '/media/image6.jpg', 13),
(133, '/media/image5.jpg', 13),
(134, '/media/image1.jpg', 13),
(135, '/media/image10.jpg', 14),
(136, '/media/image9.jpg', 14),
(137, '/media/image9.jpg', 14),
(138, '/media/image10.jpg', 15),
(139, '/media/image6.jpg', 15),
(140, '/media/image6.jpg', 15),
(141, '/media/image8.jpeg', 15),
(142, '/media/image8.jpeg', 15),
(143, '/media/image5.jpg', 15),
(144, '/media/image10.jpg', 16),
(145, '/media/image1.jpg', 16),
(146, '/media/image5.jpg', 16),
(147, '/media/image10.jpg', 16),
(148, '/media/image4.jpg', 16),
(149, '/media/image2.jpg', 17),
(150, '/media/image2.jpg', 17),
(151, '/media/image6.jpg', 17),
(152, '/media/image9.jpg', 17),
(153, '/media/image2.jpg', 17),
(154, '/media/image6.jpg', 17),
(155, '/media/image6.jpg', 18),
(156, '/media/image3.jpg', 19),
(157, '/media/image6.jpg', 20),
(158, '/media/image4.jpg', 20),
(159, '/media/image1.jpg', 20),
(160, '/media/image1.jpg', 20),
(161, '/media/image8.jpeg', 20),
(162, '/media/image2.jpg', 20),
(163, '/media/image7.jpg', 20),
(164, '/media/image8.jpeg', 20),
(165, '/media/image8.jpeg', 21),
(166, '/media/image5.jpg', 21),
(167, '/media/image5.jpg', 21),
(168, '/media/image10.jpg', 21),
(169, '/media/image3.jpg', 21),
(170, '/media/image9.jpg', 21),
(171, '/media/image3.jpg', 22),
(172, '/media/image4.jpg', 22),
(173, '/media/image8.jpeg', 23),
(174, '/media/image9.jpg', 23),
(175, '/media/image1.jpg', 23),
(176, '/media/image9.jpg', 23),
(177, '/media/image1.jpg', 23),
(178, '/media/image3.jpg', 23),
(179, '/media/image2.jpg', 23),
(180, '/media/image7.jpg', 23),
(181, '/media/image10.jpg', 24),
(182, '/media/image2.jpg', 24),
(183, '/media/image10.jpg', 24),
(184, '/media/image5.jpg', 24),
(185, '/media/image4.jpg', 24),
(186, '/media/image1.jpg', 25),
(187, '/media/image8.jpeg', 25),
(188, '/media/image9.jpg', 25),
(189, '/media/image1.jpg', 25),
(190, '/media/image10.jpg', 25),
(191, '/media/image10.jpg', 26),
(192, '/media/image2.jpg', 26),
(193, '/media/image4.jpg', 26),
(194, '/media/image6.jpg', 26),
(195, '/media/image2.jpg', 26),
(196, '/media/image6.jpg', 27),
(197, '/media/image7.jpg', 27),
(198, '/media/image4.jpg', 27),
(199, '/media/image2.jpg', 27),
(200, '/media/image6.jpg', 27),
(201, '/media/image7.jpg', 27),
(202, '/media/image4.jpg', 27),
(203, '/media/image7.jpg', 28),
(204, '/media/image3.jpg', 28),
(205, '/media/image6.jpg', 28),
(206, '/media/image3.jpg', 29),
(207, '/media/image6.jpg', 29),
(208, '/media/image7.jpg', 29),
(209, '/media/image1.jpg', 30),
(210, '/media/image7.jpg', 30),
(211, '/media/image6.jpg', 30),
(212, '/media/image1.jpg', 31),
(213, '/media/image1.jpg', 31),
(214, '/media/image9.jpg', 31),
(215, '/media/image10.jpg', 31),
(216, '/media/image9.jpg', 31),
(217, '/media/image1.jpg', 31),
(218, '/media/image3.jpg', 31),
(219, '/media/image10.jpg', 32),
(220, '/media/image8.jpeg', 32),
(221, '/media/image2.jpg', 32),
(222, '/media/image3.jpg', 32),
(223, '/media/image9.jpg', 33),
(224, '/media/image7.jpg', 33),
(225, '/media/image2.jpg', 34),
(226, '/media/image10.jpg', 34),
(227, '/media/image8.jpeg', 34),
(228, '/media/image10.jpg', 34),
(229, '/media/image10.jpg', 34),
(230, '/media/image2.jpg', 34),
(231, '/media/image2.jpg', 34),
(232, '/media/image9.jpg', 34),
(233, '/media/image5.jpg', 35),
(234, '/media/image10.jpg', 35),
(235, '/media/image2.jpg', 35),
(236, '/media/image3.jpg', 35),
(237, '/media/image2.jpg', 35),
(238, '/media/image5.jpg', 36),
(239, '/media/image4.jpg', 36),
(240, '/media/image6.jpg', 36),
(241, '/media/image9.jpg', 36),
(242, '/media/image3.jpg', 36),
(243, '/media/image7.jpg', 37),
(244, '/media/image7.jpg', 37),
(245, '/media/image3.jpg', 37),
(246, '/media/image3.jpg', 38),
(247, '/media/image10.jpg', 39),
(248, '/media/image7.jpg', 39),
(249, '/media/image5.jpg', 39),
(250, '/media/image3.jpg', 39),
(251, '/media/image10.jpg', 39),
(252, '/media/image5.jpg', 40),
(253, '/media/image1.jpg', 40),
(254, '/media/image8.jpeg', 40);

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
  `rating` int DEFAULT '0',
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

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `gender`, `birthdate`, `country`, `province`, `address`, `postal_code`, `description`, `profile_picture`, `rating`, `status`, `phone`, `email`, `password`, `role`, `member_since`, `last_connection`, `banned`, `actived`) VALUES
(1, 'Fernando', 'Alonso', 'ElNano', 'Man', '2022-02-24 04:25:00', 'Spain', 'Asturias', 'Calle Nano 33', '53033', 'Test description', 'default.png', 0, 1, '633974333', 'nano@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '1996-07-15 15:35:07', '1936-02-15 00:37:41', 1, 1),
(2, 'Carlos', 'Sainz', 'carlossainz', 'Man', '1991-05-16 16:56:24', 'Spain', 'Madrid', 'Calle Sainz 55', '53055', 'Test description', 'default.png', 0, 1, '655974455', 'sainz@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2019-02-06 02:54:17', '1969-08-30 01:11:21', 1, 1);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
