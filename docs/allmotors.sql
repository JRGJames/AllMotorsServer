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
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'On sale',
  `views` bigint DEFAULT '0',
  `saves` bigint DEFAULT '0',
  `color` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `year` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seats` int NOT NULL,
  `doors` int NOT NULL,
  `horsepower` int NOT NULL,
  `transmission` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `distance` int NOT NULL,
  `engine` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `emissions` float DEFAULT NULL,
  `consumption` float DEFAULT NULL,
  `plate` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dgt_sticker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_itv` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_owner` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `brand`, `model`, `date_uploaded`, `images`, `status`, `views`, `saves`, `color`, `year`, `seats`, `doors`, `horsepower`, `transmission`, `distance`, `engine`, `price`, `type`, `location`, `emissions`, `consumption`, `plate`, `dgt_sticker`, `last_itv`, `last_update`, `description`, `id_owner`) VALUES
(1, 'Ford', 'Elantra', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Gray', '1956', 7, 5, 543, 'automatic', 560468, 'electric', 2326419, 'Sedan', 'Manitoba', 0, NULL, '5652-WKG', '', NULL, NULL, 'before a friend is slowly a house is and one dog sleeps loudly', 2),
(2, 'Mazda', '3 Series', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Blue', '1977', 6, 4, 805, 'automatic', 162894, 'diesel', 3692694, 'Van', 'Newfoundland and Labrador', 0, NULL, '5180-NUI', '', NULL, NULL, 'since a car barks the house ate but a birds run softly', 1),
(3, 'Honda', 'A4', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Black', '1936', 6, 5, 918, 'automatic', 1344893, 'electric', 3757363, 'Hatchback', 'Nunavut', 0, NULL, '9292-MCA', '', NULL, NULL, 'because the dog ate brightly the book shines and the cat fly', 1),
(4, 'Audi', 'Camry', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'White', '1931', 8, 3, 1343, 'manual', 1251490, 'hybrid', 306392, 'Sedan', 'Saskatchewan', 0, NULL, '2924-IDD', '', NULL, NULL, 'whether one book is slowly one car run or one car reads', 1),
(5, 'Mercedes-Benz', 'Civic', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Orange', '1964', 5, 4, 324, 'semi-automatic', 632721, 'diesel', 3646166, 'Truck', 'Valencia', 0, NULL, '5079-NFB', '', NULL, NULL, 'while a dog ate the dog reads loudly', 1),
(6, 'Nissan', 'E-Class', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Silver', '1985', 8, 5, 957, 'semi-automatic', 924783, 'gasoline', 2227541, 'Hatchback', 'Quebec', 0, NULL, '8454-EMK', '', NULL, NULL, 'since a cat shines brightly a dog ate quickly', 1),
(7, 'Volkswagen', 'Golf', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Red', '1934', 8, 4, 1422, 'manual', 439701, 'gasoline', 531334, 'Convertible', 'Northwest Territories', 0, NULL, '4341-TWK', '', NULL, NULL, 'although a book fly brightly one friend shines softly but the cat shines', 1),
(8, 'Honda', 'Model 3', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1920', 6, 3, 1025, 'semi-automatic', 1469216, 'hybrid', 3593927, 'Coupe', 'Nunavut', 0, NULL, '2468-SKG', '', NULL, NULL, 'whenever the sandwich ate loudly one birds run brightly and a cat is softly', 1),
(9, 'Honda', 'Cruze', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Gray', '1979', 7, 3, 1408, 'manual', 136987, 'electric', 747127, 'Wagon', 'Alberta', 0, NULL, '8108-GXJ', '', NULL, NULL, 'unless the friend fly the cat run brightly', 2),
(10, 'BMW', 'Cruze', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Blue', '1964', 3, 2, 795, 'semi-automatic', 902261, 'diesel', 1113779, 'Truck', 'Newfoundland and Labrador', 0, NULL, '4097-QTZ', '', NULL, NULL, 'whether one dog shines the car run', 2),
(11, 'Kia', 'Cruze', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Blue', '1922', 8, 3, 853, 'manual', 858978, 'hybrid', 15200, 'Hatchback', 'Madrid', 0, NULL, '1581-XSZ', '', NULL, NULL, 'unless one sandwich shines the book sleeps softly', 1),
(12, 'Chevrolet', '3 Series', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1962', 5, 2, 950, 'semi-automatic', 373826, 'diesel', 1907534, 'Van', 'Nova Scotia', 0, NULL, '4442-KIX', '', NULL, NULL, 'until a car sleeps the cat ate slowly', 2),
(13, 'Subaru', 'CX-5', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Black', '1958', 2, 5, 178, 'semi-automatic', 642486, 'hybrid', 2716516, 'Van', 'Nunavut', 0, NULL, '3140-LVY', '', NULL, NULL, 'whether one friend run slowly a friend sleeps softly', 1),
(14, 'Audi', 'Soul', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'White', '2018', 3, 2, 289, 'manual', 936670, 'hybrid', 3637761, 'Wagon', 'Nunavut', 0, NULL, '1876-QMZ', '', NULL, NULL, 'whether the cat sleeps the cat barks loudly', 1),
(15, 'Audi', '3 Series', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Green', '2003', 2, 3, 939, 'semi-automatic', 235416, 'diesel', 3649097, 'Sedan', 'Nunavut', 0, NULL, '9608-LYV', '', NULL, NULL, 'even though the sandwich ate brightly the book is', 1),
(16, 'Subaru', 'F-150', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Silver', '1920', 5, 3, 199, 'automatic', 141409, 'electric', 1592575, 'Convertible', 'British Columbia', 0, NULL, '4043-KOY', '', NULL, NULL, 'once the book is one car sleeps softly and one dog barks quickly', 1),
(17, 'Hyundai', 'Outback', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Purple', '1955', 5, 4, 822, 'manual', 1403942, 'hybrid', 515676, 'SUV', 'Saskatchewan', 0, NULL, '6083-BNX', '', NULL, NULL, 'until the house fly quickly one sandwich shines softly', 1),
(18, 'Toyota', 'F-150', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Blue', '2001', 2, 4, 1058, 'manual', 1245415, 'hybrid', 1753180, 'Sedan', 'Nova Scotia', 0, NULL, '0524-XTD', '', NULL, NULL, 'even though one dog ate quickly the birds ate brightly and a friend sleeps slowly', 2),
(19, 'Honda', 'A4', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Gray', '1944', 7, 3, 399, 'automatic', 938333, 'hybrid', 4158583, 'Sedan', 'Nova Scotia', 0, NULL, '4141-XDW', '', NULL, NULL, 'since one cat sleeps one sun ate quickly', 2),
(20, 'BMW', 'Altima', '2024-01-07 16:27:25', 'default_image.png', 'on sale', 0, 0, 'Gray', '2007', 6, 5, 282, 'manual', 7071, 'electric', 4441024, 'Hatchback', 'Northwest Territories', 0, NULL, '4158-ILC', '', NULL, NULL, 'even though a dog fly one cat shines quickly', 2),
(21, 'Volvo', 'Outback', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Green', '1954', 2, 5, 487, 'semi-automatic', 1110430, 'diesel', 1250860, 'Sedan', 'Newfoundland and Labrador', 0, NULL, '3590-EJL', '', NULL, NULL, 'wherever the house is slowly a cat ate or a cat sleeps', 1),
(22, 'Volkswagen', 'Outback', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Purple', '1982', 6, 3, 883, 'semi-automatic', 1357575, 'hybrid', 2619033, 'Wagon', 'Nova Scotia', 0, NULL, '4444-VYM', '', NULL, NULL, 'while one sun is loudly one friend reads quickly or one dog is', 2),
(23, 'Toyota', 'Elantra', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'White', '2006', 2, 5, 703, 'automatic', 1035242, 'gasoline', 4002364, 'Van', 'Yukon', 0, NULL, '2698-WPT', '', NULL, NULL, 'in order to a car barks a house fly but a house ate', 2),
(24, 'Ford', 'Soul', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Purple', '1995', 6, 2, 241, 'semi-automatic', 12487, 'hybrid', 366206, 'Hatchback', 'Manitoba', 0, NULL, '0292-OIY', '', NULL, NULL, 'while one birds run loudly a sun ate loudly', 1),
(25, 'Audi', 'Golf', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Green', '1977', 4, 3, 849, 'automatic', 831784, 'gasoline', 820237, 'Convertible', 'Saskatchewan', 0, NULL, '3730-URU', '', NULL, NULL, 'unless one friend barks softly one sun sleeps and a sun sleeps brightly', 2),
(26, 'Honda', 'Model 3', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1989', 5, 4, 449, 'semi-automatic', 301623, 'hybrid', 2800744, 'Sedan', 'Prince Edward Island', 0, NULL, '3231-JPO', '', NULL, NULL, 'once the cat reads a birds ate quickly or the friend is', 2),
(27, 'Subaru', 'Civic', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Green', '1993', 7, 3, 855, 'manual', 249166, 'diesel', 3381879, 'Van', 'Ontario', 0, NULL, '8109-KEK', '', NULL, NULL, 'wherever one car shines brightly a dog barks and one cat fly slowly', 2),
(28, 'Honda', 'E-Class', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Red', '1972', 2, 2, 897, 'semi-automatic', 306565, 'hybrid', 3156139, 'Coupe', 'Castile and León', 0, NULL, '8019-JCM', '', NULL, NULL, 'provided that one sun shines softly a cat fly slowly or the sun reads', 1),
(29, 'Honda', 'Outback', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Silver', '1961', 4, 4, 595, 'manual', 312657, 'hybrid', 1799609, 'Coupe', 'Valencia', 0, NULL, '8912-OUY', '', NULL, NULL, 'after the dog ate slowly the cat barks brightly and one house reads loudly', 1),
(30, 'Audi', 'CX-5', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1973', 3, 4, 679, 'automatic', 1478428, 'diesel', 507864, 'Wagon', 'Galicia', 0, NULL, '3652-OBS', '', NULL, NULL, 'until one house ate brightly the cat sleeps', 2),
(31, 'BMW', 'E-Class', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Purple', '1941', 6, 4, 1253, 'semi-automatic', 1149381, 'gasoline', 1587609, 'Wagon', 'Nunavut', 0, NULL, '2997-WDH', '', NULL, NULL, 'where one dog shines a birds fly loudly or a birds is', 1),
(32, 'Tesla', 'Elantra', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'White', '1999', 5, 5, 440, 'manual', 1021198, 'diesel', 3897071, 'Coupe', 'Saskatchewan', 0, NULL, '4765-JIR', '', NULL, NULL, 'unless one sun run quickly one sun reads', 2),
(33, 'Audi', 'E-Class', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Black', '2018', 2, 3, 1406, 'manual', 316961, 'diesel', 1310260, 'Hatchback', 'Quebec', 0, NULL, '7436-JJW', '', NULL, NULL, 'so that one car ate softly the cat fly', 2),
(34, 'Volkswagen', 'Altima', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'White', '1950', 8, 5, 421, 'automatic', 897001, 'hybrid', 936962, 'Hatchback', 'Catalonia', 0, NULL, '0056-UXR', '', NULL, NULL, 'than one cat sleeps one sun barks but a dog ate quickly', 2),
(35, 'BMW', 'F-150', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Gray', '1951', 7, 5, 723, 'semi-automatic', 94245, 'gasoline', 2664692, 'Convertible', 'Newfoundland and Labrador', 0, NULL, '8470-MOW', '', NULL, NULL, 'wherever the cat shines quickly a sun fly slowly or one car ate', 1),
(36, 'Nissan', 'Elantra', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Red', '1961', 4, 2, 221, 'automatic', 339254, 'diesel', 3071207, 'SUV', 'Prince Edward Island', 0, NULL, '7795-VAR', '', NULL, NULL, 'where one car reads a sun reads brightly', 1),
(37, 'Audi', 'Camry', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Yellow', '2003', 2, 2, 1214, 'automatic', 137168, 'gasoline', 3824831, 'Sedan', 'British Columbia', 0, NULL, '8407-DZW', '', NULL, NULL, 'until a dog sleeps one sandwich barks', 1),
(38, 'Chevrolet', 'S60', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Green', '1957', 7, 5, 866, 'manual', 358649, 'electric', 3204672, 'Coupe', 'Madrid', 0, NULL, '6443-ZXG', '', NULL, NULL, 'while a house shines one friend barks but one birds run brightly', 2),
(39, 'Mercedes-Benz', 'Golf', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Purple', '2010', 5, 4, 679, 'semi-automatic', 1275522, 'diesel', 1950977, 'Convertible', 'Newfoundland and Labrador', 0, NULL, '1662-ALH', '', NULL, NULL, 'while one cat sleeps a house ate', 2),
(40, 'Toyota', 'Golf', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Green', '1960', 4, 5, 1245, 'semi-automatic', 1482161, 'electric', 4515853, 'SUV', 'Quebec', 0, NULL, '8015-KIF', '', NULL, NULL, 'unless one book ate the house shines brightly or a cat shines quickly', 1),
(41, 'Mazda', 'CX-5', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'White', '2005', 4, 2, 181, 'manual', 562160, 'diesel', 1962793, 'Convertible', 'Newfoundland and Labrador', 0, NULL, '6987-GVQ', '', NULL, NULL, 'than a dog ate slowly one dog reads', 2),
(42, 'Mazda', 'Civic', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Black', '2019', 7, 5, 1043, 'automatic', 137490, 'diesel', 1921745, 'SUV', 'Ontario', 0, NULL, '8812-OWX', '', NULL, NULL, 'than the friend shines the birds is softly but the house is', 2),
(43, 'Subaru', 'E-Class', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1958', 6, 5, 971, 'semi-automatic', 1493244, 'diesel', 4690320, 'Truck', 'Ontario', 0, NULL, '4619-LUF', '', NULL, NULL, 'while a house ate a sandwich run loudly but one book reads', 2),
(44, 'Volkswagen', 'Outback', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Red', '2002', 8, 3, 668, 'automatic', 158353, 'hybrid', 1673021, 'Convertible', 'Alberta', 0, NULL, '0684-VJX', '', NULL, NULL, 'when the cat ate one sun ate but a house run', 2),
(45, 'Toyota', 'E-Class', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Silver', '2012', 8, 5, 106, 'automatic', 310350, 'diesel', 2427176, 'Van', 'Ontario', 0, NULL, '6690-LDP', '', NULL, NULL, 'whenever a friend reads the house fly but a sun ate', 1),
(46, 'Mazda', 'Altima', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Blue', '2015', 2, 4, 281, 'semi-automatic', 1280707, 'gasoline', 1983370, 'SUV', 'Ontario', 0, NULL, '1786-DMM', '', NULL, NULL, 'even if the cat barks the sun is slowly', 1),
(47, 'Volkswagen', 'Model 3', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Orange', '1945', 6, 4, 129, 'automatic', 1107585, 'diesel', 3576542, 'Coupe', 'Alberta', 0, NULL, '0891-TCX', '', NULL, NULL, 'wherever the sun run the car fly and a dog is', 2),
(48, 'Hyundai', 'Outback', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Silver', '1974', 4, 2, 361, 'manual', 532742, 'hybrid', 895808, 'Sedan', 'Northwest Territories', 0, NULL, '0485-NAI', '', NULL, NULL, 'where the friend barks quickly a cat ate or the cat sleeps', 2),
(49, 'Subaru', 'Altima', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Green', '1953', 2, 5, 1150, 'manual', 602287, 'gasoline', 68892, 'Coupe', 'Alberta', 0, NULL, '5150-NJY', '', NULL, NULL, 'though a car shines slowly one dog is', 2),
(50, 'Ford', 'Camry', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Gray', '1997', 2, 3, 404, 'semi-automatic', 726581, 'diesel', 413526, 'Sedan', 'Galicia', 0, NULL, '8370-NQL', '', NULL, NULL, 'while a sandwich run one dog ate brightly or one dog run', 1),
(51, 'BMW', 'Model 3', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Purple', '1980', 4, 5, 555, 'automatic', 515260, 'diesel', 4005963, 'Hatchback', 'Galicia', 0, NULL, '8260-IIU', '', NULL, NULL, 'wherever one house reads softly the sun reads', 2),
(52, 'Kia', 'Altima', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Yellow', '2004', 8, 4, 1262, 'manual', 599461, 'gasoline', 3799188, 'Wagon', 'Basque Country', 0, NULL, '5756-UKH', '', NULL, NULL, 'while a sun barks quickly the book reads', 2),
(53, 'Subaru', 'Cruze', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Black', '1966', 8, 2, 78, 'manual', 818828, 'diesel', 114859, 'Wagon', 'Castile and León', 0, NULL, '4387-VSB', '', NULL, NULL, 'while a book reads the dog shines brightly', 1),
(54, 'Toyota', 'S60', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Silver', '1933', 8, 5, 416, 'automatic', 2961, 'hybrid', 2665462, 'Wagon', 'Catalonia', 0, NULL, '9805-UNZ', '', NULL, NULL, 'that one birds fly a birds ate softly but a book is', 2),
(55, 'Mazda', '3 Series', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Blue', '1931', 3, 5, 1206, 'semi-automatic', 1484221, 'diesel', 1481439, 'Hatchback', 'Galicia', 0, NULL, '6694-RZD', '', NULL, NULL, 'wherever the sandwich sleeps softly one book is and one sun fly', 1),
(56, 'Mazda', 'E-Class', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Silver', '2022', 7, 2, 1436, 'semi-automatic', 487015, 'hybrid', 3180872, 'Wagon', 'Yukon', 0, NULL, '4601-GUG', '', NULL, NULL, 'when a book fly softly a house ate', 2),
(57, 'Mazda', 'Camry', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Silver', '1998', 6, 4, 1142, 'semi-automatic', 67906, 'gasoline', 546907, 'Coupe', 'Ontario', 0, NULL, '6459-SEP', '', NULL, NULL, 'even if one friend run the car shines softly or the house ate quickly', 1),
(58, 'Hyundai', 'F-150', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Black', '1988', 7, 2, 661, 'manual', 550342, 'gasoline', 119256, 'Truck', 'British Columbia', 0, NULL, '1411-XSX', '', NULL, NULL, 'even though a sun barks one cat ate', 2),
(59, 'Audi', 'Altima', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Gray', '2012', 8, 4, 634, 'automatic', 1357926, 'hybrid', 2377795, 'Hatchback', 'Nova Scotia', 0, NULL, '5897-BRJ', '', NULL, NULL, 'whenever the cat shines one dog reads slowly or the friend ate slowly', 1),
(60, 'Ford', 'E-Class', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'Purple', '1943', 5, 3, 270, 'manual', 1198263, 'diesel', 3501061, 'Sedan', 'Basque Country', 0, NULL, '2538-DYW', '', NULL, NULL, 'because the friend fly quickly the house barks quickly and one birds shines brightly', 2),
(61, 'Subaru', 'CX-5', '2024-01-07 16:27:26', 'default_image.png', 'on sale', 0, 0, 'White', '2019', 6, 4, 1491, 'manual', 793040, 'electric', 2567993, 'Van', 'Andalusia', 0, NULL, '3311-JYT', '', NULL, NULL, 'where a cat reads a book sleeps softly but a dog is', 2),
(62, 'Chevrolet', 'Altima', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1984', 3, 5, 760, 'automatic', 2554, 'electric', 2664648, 'Sedan', 'Valencia', 0, NULL, '0209-LQI', '', NULL, NULL, 'than the birds run loudly the dog sleeps', 2),
(63, 'Audi', 'Outback', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Green', '1937', 7, 2, 184, 'manual', 1483919, 'hybrid', 2541568, 'Coupe', 'Saskatchewan', 0, NULL, '4174-HYU', '', NULL, NULL, 'once the birds barks one sun run softly and one book reads', 2),
(64, 'Hyundai', 'E-Class', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Gray', '1953', 3, 5, 779, 'automatic', 441574, 'electric', 2864909, 'Convertible', 'Nunavut', 0, NULL, '4519-MIV', '', NULL, NULL, 'because a cat fly loudly the dog is brightly and one car fly', 1),
(65, 'Toyota', 'Golf', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Gray', '1955', 7, 3, 345, 'manual', 1255116, 'diesel', 2144617, 'Truck', 'Castile and León', 0, NULL, '0519-HNR', '', NULL, NULL, 'while one friend run a birds reads and a sun shines', 2),
(66, 'Mazda', 'A4', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Black', '1923', 7, 4, 212, 'manual', 1283597, 'gasoline', 473169, 'SUV', 'Newfoundland and Labrador', 0, NULL, '5336-IWJ', '', NULL, NULL, 'while the friend fly loudly a book sleeps but one sandwich reads', 2),
(67, 'Subaru', 'Civic', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Green', '2007', 6, 2, 661, 'automatic', 512801, 'electric', 2091368, 'Truck', 'Castile and León', 0, NULL, '9014-ERB', '', NULL, NULL, 'since one sandwich ate quickly one book run or a cat reads slowly', 1),
(68, 'Volvo', 'Camry', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Purple', '1947', 4, 4, 1323, 'manual', 1359969, 'diesel', 2522588, 'Wagon', 'Quebec', 0, NULL, '5455-BTR', '', NULL, NULL, 'until the car sleeps a cat reads quickly', 2),
(69, 'Mazda', 'E-Class', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Purple', '1970', 5, 3, 204, 'manual', 1239809, 'electric', 2546082, 'Wagon', 'Galicia', 0, NULL, '8190-LVJ', '', NULL, NULL, 'in order to one sandwich sleeps softly one birds is or one sun reads softly', 1),
(70, 'Volkswagen', 'Golf', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Black', '1977', 3, 3, 312, 'semi-automatic', 311751, 'electric', 3313781, 'Convertible', 'Madrid', 0, NULL, '9945-FSB', '', NULL, NULL, 'while one house shines a sandwich sleeps', 2),
(71, 'Honda', 'Model 3', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'White', '1946', 2, 3, 429, 'manual', 1461529, 'diesel', 4423387, 'SUV', 'Ontario', 0, NULL, '0079-KLL', '', NULL, NULL, 'whether a friend fly brightly the car is quickly and one sandwich fly', 1),
(72, 'Ford', '3 Series', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Orange', '1948', 8, 2, 1310, 'automatic', 373066, 'diesel', 3877679, 'Sedan', 'Saskatchewan', 0, NULL, '8501-EAX', '', NULL, NULL, 'as a sun fly the birds is and one car shines quickly', 1),
(73, 'Volkswagen', 'E-Class', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Red', '1932', 4, 4, 650, 'manual', 171321, 'diesel', 3457954, 'Convertible', 'Valencia', 0, NULL, '6482-LXU', '', NULL, NULL, 'though a dog is brightly a house is but the sun barks loudly', 2),
(74, 'Volkswagen', 'CX-5', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Orange', '1988', 4, 3, 910, 'automatic', 56418, 'hybrid', 629696, 'Coupe', 'British Columbia', 0, NULL, '5957-RUA', '', NULL, NULL, 'even though the car sleeps a cat reads softly but the sun shines loudly', 2),
(75, 'Subaru', 'F-150', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Purple', '1952', 3, 4, 1034, 'manual', 1489952, 'diesel', 886589, 'Hatchback', 'Yukon', 0, NULL, '2536-XQL', '', NULL, NULL, 'since one birds is one sandwich is loudly but one car run brightly', 2),
(76, 'Volvo', 'Golf', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Silver', '1944', 2, 5, 1148, 'manual', 943242, 'gasoline', 4794472, 'Truck', 'Nunavut', 0, NULL, '7120-OXZ', '', NULL, NULL, 'before the dog fly quickly one car barks quickly', 2),
(77, 'Mazda', 'Civic', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Purple', '2002', 7, 2, 1251, 'automatic', 130895, 'diesel', 1707630, 'Truck', 'Catalonia', 0, NULL, '3734-FOV', '', NULL, NULL, 'unless one sun ate softly a car ate and the book run brightly', 2),
(78, 'Mercedes-Benz', 'Camry', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Green', '1967', 4, 2, 1139, 'semi-automatic', 384193, 'diesel', 1213256, 'Truck', 'Saskatchewan', 0, NULL, '3316-UIL', '', NULL, NULL, 'since a birds run the car run loudly', 1),
(79, 'Kia', 'Golf', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Green', '1977', 2, 3, 233, 'automatic', 106986, 'diesel', 4914571, 'Hatchback', 'Madrid', 0, NULL, '2916-QPI', '', NULL, NULL, 'than the house shines a birds barks', 2),
(80, 'Chevrolet', 'Civic', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Blue', '2011', 4, 5, 909, 'automatic', 424418, 'gasoline', 4096280, 'SUV', 'Castile and León', 0, NULL, '0519-UBU', '', NULL, NULL, 'since one sandwich fly quickly one sandwich fly but one car sleeps quickly', 1),
(81, 'Audi', 'Altima', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Silver', '1952', 4, 3, 1161, 'automatic', 322868, 'gasoline', 220669, 'Sedan', 'Valencia', 0, NULL, '5423-LIK', '', NULL, NULL, 'after the cat ate quickly the sun sleeps', 2),
(82, 'Subaru', 'Elantra', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Silver', '1930', 8, 3, 585, 'semi-automatic', 853788, 'electric', 225889, 'Convertible', 'British Columbia', 0, NULL, '8574-BDA', '', NULL, NULL, 'until one car fly softly one dog fly', 2),
(83, 'Mercedes-Benz', 'Soul', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Red', '1931', 2, 5, 1023, 'manual', 1278014, 'electric', 2260730, 'SUV', 'Alberta', 0, NULL, '2996-YPQ', '', NULL, NULL, 'until the birds shines one birds barks', 1),
(84, 'Tesla', 'Golf', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Red', '1933', 4, 2, 1476, 'automatic', 593429, 'gasoline', 997988, 'SUV', 'Basque Country', 0, NULL, '4850-WWT', '', NULL, NULL, 'until one sandwich fly a friend is softly or the car run loudly', 2),
(85, 'Kia', 'Civic', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Orange', '1944', 6, 4, 214, 'semi-automatic', 1315075, 'gasoline', 81154, 'Wagon', 'Ontario', 0, NULL, '6069-UCS', '', NULL, NULL, 'as the house barks brightly the friend ate but the birds sleeps loudly', 1),
(86, 'Honda', 'A4', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'White', '1960', 2, 5, 1488, 'manual', 320002, 'gasoline', 2740744, 'Truck', 'Quebec', 0, NULL, '9135-ZNR', '', NULL, NULL, 'once a house is slowly the dog sleeps quickly', 1),
(87, 'Honda', 'Civic', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Green', '1966', 7, 5, 615, 'semi-automatic', 1457718, 'gasoline', 2955934, 'SUV', 'Yukon', 0, NULL, '4229-KGR', '', NULL, NULL, 'while one house reads the sandwich run loudly or one book sleeps', 1),
(88, 'Volkswagen', 'Camry', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Gray', '1957', 5, 3, 276, 'manual', 662397, 'diesel', 1775994, 'Sedan', 'Andalusia', 0, NULL, '2473-YLN', '', NULL, NULL, 'whether the sandwich barks one dog reads or a sun is brightly', 2),
(89, 'Hyundai', 'S60', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'White', '2008', 4, 3, 673, 'automatic', 1130873, 'electric', 48039, 'Sedan', 'Nunavut', 0, NULL, '3450-UOO', '', NULL, NULL, 'so that one sandwich shines the birds barks loudly but one sun reads', 2),
(90, 'Tesla', 'CX-5', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Green', '1973', 2, 4, 386, 'manual', 1159197, 'hybrid', 40038, 'Hatchback', 'Yukon', 0, NULL, '5377-LCB', '', NULL, NULL, 'though the sandwich sleeps quickly the birds barks brightly', 1),
(91, 'Ford', 'Golf', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'White', '1930', 3, 3, 1346, 'semi-automatic', 1286674, 'electric', 422055, 'Wagon', 'Nova Scotia', 0, NULL, '8496-DQV', '', NULL, NULL, 'wherever the cat reads one house shines', 2),
(92, 'Ford', 'F-150', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1986', 3, 3, 1199, 'manual', 664528, 'gasoline', 2192348, 'Sedan', 'Andalusia', 0, NULL, '0833-EEW', '', NULL, NULL, 'so that a book shines slowly the book ate', 1),
(93, 'Tesla', 'Golf', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Purple', '1942', 3, 3, 326, 'manual', 1444162, 'electric', 2345613, 'Convertible', 'Andalusia', 0, NULL, '3344-WAK', '', NULL, NULL, 'while one birds ate a birds barks softly but one birds reads', 1),
(94, 'Ford', 'F-150', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Black', '2016', 4, 2, 753, 'manual', 555541, 'diesel', 1071805, 'Wagon', 'Nova Scotia', 0, NULL, '8704-FMZ', '', NULL, NULL, 'as one dog ate the book sleeps', 2),
(95, 'Chevrolet', 'F-150', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Orange', '1986', 6, 2, 561, 'manual', 1083631, 'gasoline', 3324, 'Van', 'Nunavut', 0, NULL, '4678-ISM', '', NULL, NULL, 'until one friend sleeps softly the dog reads', 1),
(96, 'Volvo', 'F-150', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Purple', '1957', 7, 2, 1084, 'automatic', 466414, 'hybrid', 910267, 'Convertible', 'Newfoundland and Labrador', 0, NULL, '0817-XKI', '', NULL, NULL, 'where the book reads a car fly', 2),
(97, 'Subaru', 'Outback', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Gray', '1978', 6, 3, 818, 'manual', 421544, 'hybrid', 1378924, 'Sedan', 'Andalusia', 0, NULL, '0222-DJJ', '', NULL, NULL, 'until one sun is a sandwich ate slowly', 2),
(98, 'Volvo', 'S60', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Silver', '2005', 2, 5, 988, 'automatic', 1000305, 'hybrid', 487157, 'Sedan', 'Galicia', 0, NULL, '9255-SUO', '', NULL, NULL, 'until the house shines softly one birds is but the sun sleeps quickly', 2),
(99, 'Mazda', 'F-150', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Black', '1968', 6, 4, 699, 'manual', 180777, 'hybrid', 3100490, 'Truck', 'Basque Country', 0, NULL, '1551-DZC', '', NULL, NULL, 'until the dog is one car is but one house shines', 2),
(100, 'Hyundai', 'Golf', '2024-01-07 16:27:27', 'default_image.png', 'on sale', 0, 0, 'Gray', '2006', 3, 5, 1301, 'semi-automatic', 1430578, 'hybrid', 4106148, 'Truck', 'Prince Edward Island', 0, NULL, '4352-TAO', '', NULL, NULL, 'than the cat reads one car shines softly or the birds ate softly', 1),
(101, 'BMW', 'X5', NULL, NULL, NULL, 0, 0, 'dggd', '2001', 4, 2, 180, 'Automatic', 100000, 'fdgdgd', 5000, 'gdgdf', 'gdgdg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(102, 'Mercedes', 'C-Class', NULL, NULL, NULL, 0, 0, 'Gray', '2014', 5, 2, 210, 'Automatic', 100000, 'Gasoline', 25000, 'Sedan', 'Valencia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(103, 'Audi', 'A4', NULL, NULL, NULL, 0, 0, 'BLue', '2015', 5, 2, 190, 'Automatic', 120000, 'Diesel', 13000, 'Sedan', 'Barca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(104, 'Tesla', 'Model 3', NULL, NULL, NULL, 0, 0, 'Gray', '2018', 5, 2, 340, 'Automatic', 20000, 'Electric', 50000, 'COmpact', 'Sevilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

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
(1, '2024-01-09 17:53:32', 0, 1, 2, NULL, NULL),
(16, '2024-01-10 23:54:02', 0, 3, 4, NULL, NULL),
(20, '2024-01-11 08:47:48', 0, 1, 3, NULL, NULL),
(21, '2024-01-11 12:44:25', 0, 1, 3, NULL, 6),
(22, '2024-01-11 12:54:57', 0, 1, 7, NULL, NULL),
(23, '2024-01-11 13:30:49', 0, 1, 4, NULL, NULL);

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
(1, 'Hola, ¿cómo dasdas?', '2024-01-09 17:53:32', 0, 0, 1, 2, 1),
(11, 'estás*', '2024-01-09 18:55:54', 0, 0, 1, 2, 1),
(15, 'Bien y tu?*', '2024-01-09 19:00:10', 0, 0, 1, 2, 1),
(18, 'No me tocaría eso a mi? jajjaja', '2024-01-10 17:18:13', 0, 0, 2, 1, 1),
(19, 'Es verdad jajajaja', '2024-01-10 17:18:46', 0, 0, 1, 2, 1),
(20, 'Que cuentas?', '2024-01-10 17:30:30', 0, 0, 1, 2, 1),
(22, 'Nada nuevo', '2024-01-10 17:35:13', 0, 0, 2, 1, 1),
(23, 'Y tu?', '2024-01-10 18:12:42', 0, 0, 2, 1, 1),
(24, 'Aprendiendo a programar', '2024-01-10 18:13:38', 0, 0, 1, 2, 1),
(25, 'Aprendiendo a programar', '2024-01-10 20:44:14', 0, 0, 1, 2, 1),
(26, 'Aprendiendo a programar', '2024-01-10 20:44:40', 0, 0, 2, 1, 1),
(27, 'Creo que funciona', '2024-01-10 20:52:23', 0, 0, 2, 1, 1),
(28, 'A ver', '2024-01-10 20:52:46', 0, 0, 1, 2, 1),
(29, 'Si, funciona', '2024-01-10 20:52:59', 0, 0, 1, 2, 1),
(56, 'Hola, ¿cómo dasdas?', '2024-01-10 23:54:02', 0, 0, 3, 4, 16),
(59, 'Bien', '2024-01-11 00:03:22', 0, 0, 3, 4, 16),
(60, 'A ver', '2024-01-11 00:03:40', 0, 0, 3, 4, 16),
(66, 'sI?', '2024-01-11 00:40:14', 0, 0, 4, 3, 16),
(67, 'Hola, ¿que tal?', '2024-01-11 07:33:34', 0, 0, 1, 2, 1),
(74, 'Hola, ¿que tal?', '2024-01-11 07:45:15', 0, 0, 2, 1, 1),
(75, 'Hola, ¿que tal?', '2024-01-11 07:46:12', 0, 0, 1, 2, 1),
(76, 'Hola, ¿que tal?', '2024-01-11 07:46:49', 0, 0, 1, 2, 1),
(77, 'Hola, ¿que tal?', '2024-01-11 08:27:58', 0, 0, 1, 2, 1),
(78, 'Hola, ¿que tal?', '2024-01-11 08:30:56', 0, 0, 1, 2, 1),
(79, 'Hola, ¿que tal?', '2024-01-11 08:31:00', 0, 0, 1, 2, 1),
(80, 'Hola, ¿que tal?', '2024-01-11 08:31:16', 0, 0, 1, 2, 1),
(81, 'Hola, ¿que tal?', '2024-01-11 08:34:01', 0, 0, 1, 2, 1),
(82, 'Hola, ¿que tal?', '2024-01-11 08:34:46', 0, 0, 1, 2, 1),
(83, 'Hola, ¿que tal?', '2024-01-11 08:42:26', 0, 0, 1, 2, 1),
(84, 'Hola, ¿que tal?', '2024-01-11 08:47:36', 0, 0, 1, 2, 1),
(85, 'Hola, ¿que tal?', '2024-01-11 08:47:48', 0, 0, 1, 3, 20),
(86, 'Hola, ¿que tal?', '2024-01-11 08:49:09', 0, 0, 1, 3, 20),
(87, 'Hola, ¿que tal?', '2024-01-11 09:01:59', 0, 0, 1, 3, 20),
(88, 'Hola, ¿que tal?', '2024-01-11 09:08:18', 0, 0, 1, 3, 20),
(89, 'Hola, ¿que tal?', '2024-01-11 09:12:57', 0, 0, 1, 3, 20),
(90, 'Hola, ¿que tal?', '2024-01-11 09:15:49', 0, 0, 1, 3, 20),
(91, 'Hola, ¿que tal?', '2024-01-11 11:51:54', 0, 0, 1, 3, 20),
(92, 'Hola, ¿que tal?', '2024-01-11 11:59:37', 0, 0, 1, 3, 20),
(93, 'Hola, ¿que tal?', '2024-01-11 12:22:06', 0, 0, 1, 3, 20),
(94, 'Hola, ¿que tal?', '2024-01-11 12:34:50', 0, 0, 1, 3, 20),
(95, 'Hola, ¿que tal?', '2024-01-11 12:39:54', 0, 0, 1, 3, 20),
(96, 'Hola, ¿que tal?', '2024-01-11 12:40:46', 0, 0, 1, 3, 20),
(97, 'Hola, ¿que tal?', '2024-01-11 12:43:35', 0, 0, 1, 3, 20),
(98, 'Hola, ¿que tal?', '2024-01-11 12:44:25', 0, 0, 1, 3, 21),
(99, 'Hola, ¿que tal?', '2024-01-11 12:54:57', 0, 0, 1, 7, 22),
(100, 'Hola, ¿que tal?', '2024-01-11 12:55:32', 0, 0, 1, 7, 22),
(101, 'Hola, ¿que tal?', '2024-01-11 12:55:50', 0, 0, 1, 7, 22),
(102, 'Hola, ¿que tal?', '2024-01-11 13:07:22', 0, 0, 1, 7, 22),
(103, 'Hola, ¿qué tal?', '2024-01-11 13:30:49', 0, 0, 1, 4, 23),
(104, 'Hola, ¿qué tal?', '2024-01-11 13:31:28', 0, 0, 1, 4, 23),
(105, 'Hola, ¿qué tal?', '2024-01-11 13:32:35', 0, 0, 1, 4, 23),
(106, NULL, '2024-01-11 13:37:42', 0, 0, 1, 2, 1),
(107, 'Este es un mensaje sobre el coche', '2024-01-17 11:55:04', 0, 0, 1, 2, 1),
(108, 'Este es un mensaje sobre el coche', '2024-01-17 11:57:28', 0, 0, 1, 2, 1),
(109, 'Este es un mensaje sobre el coche', '2024-01-17 11:59:25', 0, 0, 1, 2, 1),
(110, 'Este es un mensaje sobre el coche', '2024-01-17 11:59:32', 0, 0, 1, 2, 1),
(111, 'Este es un mensaje sobre el coche', '2024-01-17 12:03:13', 0, 0, 1, 2, 1),
(112, 'Este es un mensaje sobre el coche', '2024-01-17 12:03:55', 0, 0, 1, 2, 1);

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
(1, 'Fernando', 'Alonso', 'ElNano', 'Man', '2022-02-24 04:25:00', 'Spain', 'Asturias', 'Calle Nano 33', '53033', 'Test description', 'default_image.png', 0, 1, '633974333', 'nano@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 1, '1996-07-15 15:35:07', '1936-02-15 00:37:41', 1, 1),
(2, 'Carlos', 'Sainz', 'carlossainz', 'Man', '1991-05-16 16:56:24', 'Spain', 'Madrid', 'Calle Sainz 55', '53055', 'Test description', 'default_image.png', 0, 1, '655974455', 'sainz@gmail.com', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2019-02-06 02:54:17', '1969-08-30 01:11:21', 1, 1),
(3, 'Jaime', 'Lara', 'jaiar0', 'prefer not to say', '1990-02-07 18:16:08', 'Italy', 'Yukon', '38 Sunset Drive', '17115', 'in order to a house shines one car fly and a sun run quickly', 'default_image.png', 0, 0, '561089478', 'jailar0@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-01-10 23:51:08', '2024-01-10 23:51:08', 1, 1),
(4, 'Pablo', 'Latorre', 'pabat1', 'prefer not to say', '1953-06-10 10:11:19', 'Sweden', 'Catalonia', '8 Skyline Drive', '98721', 'whether a dog is softly a dog fly or a dog barks', 'default_image.png', 0, 0, '548068379', 'pablat1@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-01-10 23:51:08', '2024-01-10 23:51:08', 1, 1),
(5, 'Elena', 'Suárez', 'eleua2', 'woman', '1942-02-04 08:55:58', 'United Kingdom', 'Newfoundland and Labrador', '22 Lake Shore', 'V1H 3R9', 'where one house fly the car fly', 'default_image.png', 0, 1, '108545207', 'elesuá2@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-01-10 23:51:08', '2024-01-10 23:51:08', 1, 1),
(6, 'Eloy', 'Muñoz', 'eloun3', 'man', '1992-09-17 06:59:05', 'Italy', 'Northwest Territories', '36 Pine Street', '31621-301', 'since the friend run one book shines or one dog reads', 'default_image.png', 0, 1, '392001377', 'elomuñ3@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-01-10 23:51:08', '2024-01-10 23:51:08', 1, 1),
(7, 'Paula', 'Gómez', 'pauom4', 'man', '1961-06-24 13:26:16', 'Brazil', 'Nova Scotia', '3 Greenway', 'WC2N 5DU', 'provided that the sun is loudly one sandwich reads loudly but a book fly softly', 'default_image.png', 0, 0, '233793920', 'paugóm4@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-01-10 23:51:08', '2024-01-10 23:51:08', 1, 1),
(8, 'José Antonio', 'McLure', 'joscl5', 'prefer not to say', '1965-03-18 07:58:10', 'Australia', 'Prince Edward Island', '33 Hilltop Road', 'H7H 3H7', 'even though one sun barks quickly a book fly quickly or the book ate', 'default_image.png', 0, 0, '044321042', 'josmcl5@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-01-10 23:51:08', '2024-01-10 23:51:08', 1, 1),
(9, 'Eloy', 'Muñoz', 'eloun6', 'woman', '2005-03-05 10:48:15', 'South Africa', 'New Brunswick', '12 Cedar Road', '189441', 'while the cat run brightly one dog barks slowly', 'default_image.png', 0, 0, '729110795', 'elomuñ6@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-01-10 23:51:08', '2024-01-10 23:51:08', 1, 1),
(10, 'Rafael', 'Farell', 'rafar7', 'prefer not to say', '2002-08-25 06:30:48', 'China', 'Manitoba', '4 Golden Gate', '71641-196', 'even though the house ate a sandwich ate softly', 'default_image.png', 0, 1, '256350455', 'raffar7@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-01-10 23:51:08', '2024-01-10 23:51:08', 1, 1),
(11, 'Pablo', 'García', 'pabar8', 'man', '2021-09-21 09:57:26', 'Germany', 'Northwest Territories', '19 Meadow Lane', '405991', 'when the book sleeps brightly one sun is quickly', 'default_image.png', 0, 1, '355513262', 'pabgar8@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-01-10 23:51:08', '2024-01-10 23:51:08', 1, 1),
(12, 'Rafael', 'Puig', 'rafui9', 'prefer not to say', '1930-09-27 14:10:27', 'Norway', 'Valencia', '12 Pine Street', '21540-099', 'than a house run a friend fly quickly', 'default_image.png', 0, 1, '646053919', 'rafpui9@gmail.net', 'afb47e00531153e93808589e43d02c11f6398c5bc877f7924cebca8211c8dd18', 0, '2024-01-10 23:51:08', '2024-01-10 23:51:08', 1, 1),
(13, NULL, NULL, 'a026330562r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jarogos14@gmail.com', 'ae2a56aa2553b961eed09b46a07f23ee55d7427ba2372bb7183dee40007f8405', 0, '2024-01-26 11:35:32', '2024-01-26 11:35:32', 0, 1),
(14, NULL, NULL, 'pepepee', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jarogos14@gmail.com', 'ae2a56aa2553b961eed09b46a07f23ee55d7427ba2372bb7183dee40007f8405', 0, '2024-01-26 11:36:07', '2024-01-26 11:36:07', 0, 1),
(15, NULL, NULL, 'a026330562r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jarogos14@gmail.com', 'ae2a56aa2553b961eed09b46a07f23ee55d7427ba2372bb7183dee40007f8405', 0, '2024-01-26 11:51:32', '2024-01-26 11:51:32', 0, 1),
(16, NULL, NULL, 'a026330562r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jarogos14@gmail.com', 'pepepepe', 0, '2024-01-26 11:52:34', '2024-01-26 11:52:34', 0, 1),
(17, NULL, NULL, 'a026330562r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jarogos14@gmail.com', 'pepepepe', 0, '2024-01-26 11:56:43', '2024-01-26 11:56:43', 0, 1),
(18, NULL, NULL, 'a026330562r', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'jarogos14@gmail.com', 'pepepepepe', 0, '2024-01-26 11:58:02', '2024-01-26 11:58:02', 0, 1);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
