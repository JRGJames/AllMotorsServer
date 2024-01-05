-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: database:3306
-- Generation Time: Dec 29, 2023 at 03:16 PM
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

CREATE DATABASE IF NOT EXISTS `allmotors` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

USE `allmotors`;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` bigint(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `images` varchar(255) NOT NULL,
  `status` varchar(15) NOT NULL,
  `views` bigint(20) NOT NULL,
  `saves` bigint(20) NOT NULL,
  `color` varchar(30) NOT NULL,
  `year` varchar(4) NOT NULL,
  `seats` int(11) NOT NULL,
  `doors` int(11) NOT NULL,
  `horsepower` int(11) NOT NULL,
  `transmission` varchar(20) NOT NULL,
  `distance` int(11) NOT NULL,
  `engine` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `plate` varchar(12) NOT NULL,
  `type` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `id_owner` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `brand`, `model`, `date_uploaded`, `images`, `status`, `views`, `saves`, `color`, `year`, `seats`, `doors`, `horsepower`, `transmission`, `distance`, `engine`, `price`, `plate`, `type`, `location`, `description`, `id_owner`) VALUES
(1, 'Mazda', 'F-150', '2024-01-04 15:23:34', 'default_image.png', 'on sale', 0, 0, 'White', '1966', 6, 4, 1481, 'semi-automatic', 517854, 'electric', 2429291, '8017-GZF', 'SUV', 'Quebec', 'provided that a car shines the friend shines or a friend is', 2),
(2, 'Honda', 'A4', '2024-01-04 15:23:35', 'default_image.png', 'on sale', 0, 0, 'Purple', '1973', 5, 5, 823, 'manual', 224360, 'gasoline', 3393911, '5756-TBJ', 'Coupe', 'Alberta', 'once one dog reads brightly one sandwich run brightly or a birds sleeps', 1),
(3, 'Toyota', 'Civic', '2024-01-04 15:23:35', 'default_image.png', 'on sale', 0, 0, 'Green', '1956', 3, 4, 761, 'manual', 1400823, 'electric', 4382521, '2206-KJU', 'Sedan', 'Newfoundland and Labrador', 'wherever a dog sleeps loudly the friend run quickly', 1),
(4, 'Volvo', 'Cruze', '2024-01-04 15:23:35', 'default_image.png', 'on sale', 0, 0, 'White', '1935', 2, 4, 360, 'automatic', 198176, 'electric', 3968638, '3745-JSG', 'Van', 'British Columbia', 'whether a book shines slowly the dog shines quickly', 2),
(5, 'Nissan', 'S60', '2024-01-04 15:23:35', 'default_image.png', 'on sale', 0, 0, 'Blue', '1982', 4, 5, 1174, 'automatic', 957347, 'diesel', 3626606, '2110-WAQ', 'Coupe', 'Prince Edward Island', 'in order to the birds reads one book fly quickly and the dog shines', 2),
(7, 'Toyota', 'Altima', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Orange', '1934', 6, 4, 460, 'semi-automatic', 1136261, 'gasoline', 2953079, '1201-WMI', 'Van', 'Catalonia', 'until one sandwich fly the dog sleeps but one birds fly quickly', 5),
(8, 'Chevrolet', 'S60', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Orange', '1980', 6, 3, 61, 'manual', 1370515, 'diesel', 2540179, '9927-RJN', 'Van', 'Catalonia', 'even if one cat ate a car reads slowly', 51),
(9, 'Nissan', 'Cruze', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1948', 6, 5, 1241, 'semi-automatic', 1260316, 'hybrid', 3878196, '9836-TDJ', 'Van', 'Andalusia', 'wherever a sandwich is slowly the car run', 38),
(10, 'Toyota', 'Golf', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Red', '1948', 8, 5, 1392, 'manual', 536933, 'diesel', 1730516, '3613-ONI', 'Hatchback', 'New Brunswick', 'as a book fly one book fly softly', 26),
(11, 'BMW', 'S60', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Blue', '2003', 6, 5, 352, 'manual', 769653, 'diesel', 1778519, '8991-WSE', 'Van', 'Quebec', 'even if one car reads softly one sandwich sleeps loudly', 51),
(12, 'Ford', 'A4', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1939', 4, 3, 445, 'semi-automatic', 1299135, 'hybrid', 3891966, '3944-PNZ', 'Convertible', 'Manitoba', 'even if a sun shines a house is', 42),
(13, 'Nissan', 'F-150', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Gray', '2011', 6, 4, 133, 'semi-automatic', 1407374, 'electric', 1249586, '1964-WYB', 'Sedan', 'Prince Edward Island', 'if the dog shines slowly one house reads brightly and one sun is', 27),
(14, 'Ford', 'Soul', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Gray', '1942', 4, 4, 751, 'semi-automatic', 848949, 'gasoline', 4668778, '9923-XWF', 'SUV', 'Catalonia', 'until a birds sleeps the book barks or a car barks', 48),
(15, 'Toyota', 'Model 3', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Black', '1979', 7, 3, 573, 'manual', 964784, 'hybrid', 2082976, '9700-IAB', 'Convertible', 'Galicia', 'when one sun run slowly a sandwich barks but a house run', 14),
(16, 'Chevrolet', 'CX-5', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1988', 6, 3, 1462, 'automatic', 1168245, 'hybrid', 2935320, '4096-ZSS', 'Truck', 'Prince Edward Island', 'once one birds reads loudly the dog sleeps but a car fly brightly', 6),
(17, 'Mercedes-Benz', 'Cruze', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Silver', '1956', 5, 3, 215, 'semi-automatic', 1478844, 'gasoline', 4681436, '9805-MBZ', 'Truck', 'British Columbia', 'once one cat shines softly the dog fly softly and the sun is', 39),
(18, 'Kia', 'A4', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Green', '2023', 2, 3, 836, 'manual', 159481, 'electric', 2880864, '5762-VGC', 'Sedan', 'Madrid', 'so that one cat ate slowly a sandwich barks', 36),
(19, 'Mazda', 'Camry', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Blue', '2017', 3, 3, 913, 'manual', 288211, 'gasoline', 1313523, '4859-DUV', 'Convertible', 'British Columbia', 'so that the sun ate brightly the birds is slowly or a birds fly', 16),
(20, 'Nissan', 'Camry', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Orange', '2016', 7, 5, 471, 'automatic', 1087413, 'diesel', 3108207, '4790-FVD', 'SUV', 'Basque Country', 'so that a sandwich barks softly the car fly but the birds run brightly', 43),
(21, 'Audi', 'A4', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'White', '2017', 6, 5, 884, 'automatic', 596845, 'electric', 1121520, '1026-INX', 'Convertible', 'Galicia', 'when the sun is the dog reads slowly', 48),
(22, 'Tesla', 'F-150', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Green', '1963', 7, 2, 676, 'manual', 1229380, 'diesel', 4251637, '7090-RNT', 'Coupe', 'British Columbia', 'so that one dog run a sun fly', 10),
(23, 'Subaru', 'Model 3', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Green', '1948', 6, 3, 274, 'manual', 423000, 'electric', 2916812, '6995-VPS', 'Truck', 'Madrid', 'as one book reads a cat run or one sandwich reads', 28),
(24, 'Nissan', 'Model 3', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Red', '1952', 2, 2, 1282, 'semi-automatic', 910276, 'diesel', 4278302, '6200-BPA', 'Van', 'Prince Edward Island', 'provided that one house is softly a dog ate brightly but one book reads softly', 38),
(25, 'BMW', 'Cruze', '2024-01-05 17:40:51', 'default_image.png', 'on sale', 0, 0, 'Silver', '1972', 6, 2, 987, 'semi-automatic', 706753, 'hybrid', 652941, '7565-YVW', 'Wagon', 'Ontario', 'whether the house barks loudly the sandwich fly but the sandwich barks', 27),
(26, 'Tesla', 'CX-5', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Silver', '1944', 5, 5, 149, 'automatic', 892430, 'diesel', 2027434, '2444-TZT', 'Truck', 'Quebec', 'although the birds sleeps quickly a dog reads loudly', 26),
(27, 'Subaru', 'Outback', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Purple', '1970', 3, 2, 793, 'semi-automatic', 416853, 'electric', 162819, '4233-SKW', 'Convertible', 'Northwest Territories', 'so that a friend shines one sandwich reads slowly and a dog reads', 8),
(28, 'Subaru', 'A4', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Black', '1956', 8, 3, 1121, 'semi-automatic', 144982, 'diesel', 1183113, '1024-RBJ', 'Convertible', 'Catalonia', 'once one sandwich reads loudly one friend barks brightly and one birds shines slowly', 30),
(29, 'Nissan', 'Soul', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Red', '2004', 4, 4, 1082, 'manual', 545596, 'electric', 2653476, '0530-TVK', 'Coupe', 'Galicia', 'so that a book reads the friend shines', 35),
(30, 'Chevrolet', 'Altima', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Orange', '1987', 5, 3, 1199, 'automatic', 333077, 'hybrid', 1664975, '9340-UZW', 'Hatchback', 'Nova Scotia', 'where one sun shines quickly one dog run loudly but one friend fly slowly', 47),
(31, 'Honda', 'CX-5', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Purple', '1996', 3, 3, 298, 'automatic', 824228, 'gasoline', 4591528, '9525-EWU', 'Van', 'Nova Scotia', 'whenever one sandwich reads a sun sleeps or a friend reads quickly', 43),
(32, 'Subaru', 'Outback', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Purple', '1987', 7, 2, 674, 'semi-automatic', 1481413, 'diesel', 3160115, '6236-OYC', 'Wagon', 'Saskatchewan', 'unless one house run the cat barks but the friend is', 21),
(33, 'Chevrolet', 'CX-5', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Orange', '1967', 6, 4, 1000, 'semi-automatic', 705669, 'electric', 4378126, '3191-FIE', 'Convertible', 'Quebec', 'whenever a birds barks brightly one sun is slowly', 8),
(34, 'Audi', 'S60', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Gray', '1942', 6, 2, 456, 'semi-automatic', 576629, 'diesel', 1008242, '5032-IJQ', 'SUV', 'British Columbia', 'unless a dog is the car shines but one friend reads softly', 26),
(35, 'Honda', 'Soul', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'White', '1931', 4, 2, 296, 'manual', 671876, 'gasoline', 4419198, '9981-QAN', 'Wagon', 'British Columbia', 'provided that a sandwich fly one sun barks', 41),
(36, 'Kia', '3 Series', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Green', '1980', 7, 4, 878, 'automatic', 1314893, 'electric', 1876460, '2400-YHN', 'SUV', 'Manitoba', 'where one book is a sun ate brightly but one book shines quickly', 25),
(37, 'Ford', 'Civic', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Blue', '2011', 3, 5, 576, 'automatic', 607158, 'hybrid', 3413161, '4952-SOM', 'Coupe', 'Nunavut', 'as the house shines softly one house run slowly and the sandwich is', 11),
(38, 'Chevrolet', 'Model 3', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Green', '2008', 6, 5, 688, 'automatic', 466783, 'hybrid', 2693370, '2349-QUP', 'Coupe', 'Valencia', 'if a book shines quickly a cat reads', 51),
(39, 'Ford', 'Soul', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Gray', '2020', 8, 3, 1231, 'manual', 370792, 'diesel', 4561608, '1405-TJC', 'Coupe', 'Castile and León', 'than a book shines quickly one book barks or a dog barks', 35),
(40, 'Tesla', 'Civic', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Green', '1968', 7, 5, 154, 'semi-automatic', 271861, 'electric', 1499957, '9702-SPO', 'SUV', 'Nunavut', 'if the sun fly the book is', 27),
(41, 'Subaru', 'Elantra', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Green', '1931', 6, 4, 819, 'manual', 1429136, 'hybrid', 1808900, '6193-XBR', 'Convertible', 'Valencia', 'so that a birds ate slowly a dog is but a dog is quickly', 24),
(42, 'Ford', 'S60', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Orange', '1958', 6, 3, 574, 'manual', 1176401, 'electric', 4878980, '0573-OPJ', 'Wagon', 'Nunavut', 'if one sun barks slowly one house barks', 11),
(43, 'BMW', 'Civic', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Purple', '2012', 8, 3, 404, 'manual', 595930, 'diesel', 4069143, '5688-DUA', 'SUV', 'Catalonia', 'as one sandwich is softly one house fly', 42),
(44, 'Ford', '3 Series', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1991', 6, 5, 223, 'automatic', 1348392, 'electric', 2150116, '6007-YJB', 'Coupe', 'Alberta', 'as the car is one cat run', 42),
(45, 'Ford', 'F-150', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Gray', '2016', 7, 4, 417, 'automatic', 1090853, 'hybrid', 3181896, '3422-YRO', 'Hatchback', 'Nova Scotia', 'so that a car sleeps one cat ate', 50),
(46, 'Nissan', 'Cruze', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Red', '1929', 5, 4, 208, 'automatic', 46375, 'electric', 2227429, '5657-UQX', 'Truck', 'Galicia', 'when one dog fly one friend reads', 36),
(47, 'Honda', 'Altima', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Green', '1943', 3, 2, 709, 'automatic', 1376515, 'diesel', 1962941, '4314-OKA', 'Coupe', 'Nova Scotia', 'while a house run the birds fly brightly', 15),
(48, 'Kia', 'F-150', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Red', '1937', 8, 4, 950, 'manual', 202576, 'diesel', 4438346, '6432-DBN', 'Wagon', 'Nova Scotia', 'so that the house shines slowly one friend fly loudly and a sandwich ate', 49),
(49, 'Chevrolet', 'Cruze', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1956', 2, 3, 637, 'manual', 1195995, 'electric', 2041291, '8479-GIJ', 'Wagon', 'British Columbia', 'when a sandwich fly the dog run', 21),
(50, 'Honda', 'S60', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'White', '1994', 8, 3, 940, 'automatic', 1385485, 'hybrid', 3248881, '6116-DWY', 'Coupe', 'Saskatchewan', 'if the friend shines brightly the cat sleeps slowly', 27),
(51, 'Tesla', '3 Series', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Silver', '1944', 2, 3, 882, 'semi-automatic', 730767, 'gasoline', 4553347, '2142-ROR', 'SUV', 'Nova Scotia', 'after one dog fly brightly the friend reads slowly and one book reads', 2),
(52, 'Volvo', 'S60', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'White', '1996', 5, 2, 985, 'automatic', 1486719, 'electric', 4488482, '2524-FYA', 'Wagon', 'British Columbia', 'before a house fly quickly one sun barks', 10),
(53, 'Kia', 'Civic', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Red', '2021', 6, 5, 577, 'manual', 1297521, 'electric', 3080248, '2043-ZOK', 'Hatchback', 'Catalonia', 'even though a sun reads the car reads loudly', 26),
(54, 'Chevrolet', 'Outback', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Orange', '1979', 3, 5, 379, 'manual', 434602, 'electric', 81305, '4706-TCX', 'Hatchback', 'Catalonia', 'even if the book sleeps loudly a birds is quickly', 42),
(55, 'Volvo', 'Elantra', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Red', '1965', 2, 2, 1197, 'automatic', 884163, 'hybrid', 2760879, '7097-GZA', 'Convertible', 'British Columbia', 'whenever a friend barks slowly a sandwich is but one sandwich fly quickly', 17),
(56, 'Volvo', 'Soul', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Green', '1998', 8, 2, 1473, 'manual', 880199, 'hybrid', 2228495, '7584-ODK', 'Coupe', 'Madrid', 'where a car sleeps a birds is softly and the book fly quickly', 11),
(57, 'Mercedes-Benz', 'Civic', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Purple', '1980', 4, 3, 1209, 'manual', 864026, 'electric', 3224037, '7044-XDT', 'Wagon', 'Basque Country', 'since a sandwich shines one dog sleeps loudly but a house shines slowly', 46),
(58, 'Volkswagen', 'Outback', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Orange', '1946', 7, 2, 272, 'manual', 99559, 'diesel', 2946460, '8995-TLQ', 'Coupe', 'Catalonia', 'because a house run brightly a dog reads', 7),
(59, 'Honda', 'CX-5', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Gray', '1926', 7, 5, 785, 'manual', 957750, 'electric', 44354, '4969-LFJ', 'Coupe', 'New Brunswick', 'while the friend sleeps the dog ate softly', 16),
(60, 'Subaru', 'Camry', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Red', '1998', 3, 2, 1050, 'automatic', 1085648, 'electric', 3343334, '4232-XAS', 'Truck', 'Northwest Territories', 'once a cat fly brightly one birds ate brightly', 46),
(61, 'Honda', '3 Series', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Red', '1943', 4, 2, 781, 'semi-automatic', 1073815, 'electric', 4367897, '9962-UDK', 'Van', 'Nova Scotia', 'provided that one sun barks one sandwich shines quickly but the dog is slowly', 17),
(62, 'BMW', 'Elantra', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Silver', '2019', 4, 3, 441, 'manual', 36737, 'gasoline', 4788539, '0698-FTW', 'Hatchback', 'Basque Country', 'provided that a book fly softly the cat fly loudly and one sandwich run', 28),
(63, 'Mazda', 'Model 3', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Green', '1992', 5, 5, 828, 'automatic', 752872, 'diesel', 4098709, '1926-VZH', 'Van', 'Prince Edward Island', 'when the friend barks a sun is', 34),
(64, 'Kia', 'Golf', '2024-01-05 17:40:52', 'default_image.png', 'on sale', 0, 0, 'Orange', '1971', 5, 2, 678, 'automatic', 342974, 'gasoline', 3504782, '9539-WDC', 'Van', 'Northwest Territories', 'that one car sleeps the sun run', 33),
(65, 'Hyundai', '3 Series', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Red', '1927', 6, 2, 1238, 'manual', 476354, 'gasoline', 3662119, '2111-ZKB', 'Convertible', 'Nova Scotia', 'as the cat sleeps one cat ate but one friend barks', 31),
(66, 'Volkswagen', 'Model 3', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Purple', '1948', 4, 2, 1499, 'automatic', 1167355, 'hybrid', 1952742, '6195-SIO', 'Hatchback', 'New Brunswick', 'while a birds fly one cat reads', 5),
(67, 'Honda', 'Elantra', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1945', 5, 5, 740, 'manual', 378900, 'diesel', 2271780, '3783-WKN', 'Truck', 'Valencia', 'unless one birds is brightly the friend reads and a cat reads slowly', 18),
(68, 'Chevrolet', 'Camry', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Silver', '1924', 3, 3, 371, 'semi-automatic', 1291583, 'diesel', 2994426, '7592-EGI', 'Wagon', 'Galicia', 'so that the cat sleeps one sun reads or a sandwich barks softly', 20),
(69, 'Hyundai', 'A4', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'White', '1983', 6, 2, 209, 'semi-automatic', 439533, 'gasoline', 380578, '4503-LDP', 'Wagon', 'Yukon', 'so that a dog reads brightly one dog run', 27),
(70, 'BMW', 'E-Class', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Orange', '1934', 4, 5, 977, 'automatic', 1106838, 'gasoline', 859736, '8045-YGE', 'Van', 'Quebec', 'since one dog fly slowly a sun sleeps softly', 28),
(71, 'Kia', 'Cruze', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Blue', '2018', 7, 2, 351, 'semi-automatic', 1090431, 'electric', 3106185, '7915-MAL', 'Hatchback', 'British Columbia', 'before a house shines a birds barks', 45),
(72, 'Honda', 'Camry', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1946', 4, 4, 473, 'semi-automatic', 1251933, 'electric', 984227, '1977-YXK', 'Van', 'Manitoba', 'even though one sun fly one dog run softly', 16),
(73, 'Hyundai', 'F-150', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Red', '2005', 5, 3, 754, 'automatic', 1014991, 'diesel', 1119206, '3089-AEX', 'Truck', 'Manitoba', 'so that a car reads slowly a birds ate but the sandwich is loudly', 21),
(74, 'Toyota', 'A4', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Blue', '1964', 8, 2, 505, 'manual', 545266, 'electric', 2823468, '0522-KTN', 'SUV', 'Nova Scotia', 'whether one book barks a dog barks', 41),
(75, 'Volkswagen', 'Elantra', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Orange', '2006', 7, 4, 873, 'automatic', 121076, 'hybrid', 2730279, '0517-RXZ', 'Coupe', 'Saskatchewan', 'so that one sun barks one birds fly', 6),
(76, 'Volkswagen', 'Golf', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Green', '1998', 8, 3, 1329, 'automatic', 1373939, 'diesel', 1377621, '5320-LNG', 'SUV', 'Newfoundland and Labrador', 'once one house sleeps the sandwich fly brightly', 23),
(77, 'Nissan', 'F-150', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Green', '1945', 2, 4, 518, 'manual', 1034056, 'electric', 445126, '8974-KUG', 'Sedan', 'British Columbia', 'when the dog run one birds reads but a car barks', 23),
(78, 'Ford', 'S60', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Gray', '1979', 2, 2, 1130, 'manual', 577355, 'electric', 3132380, '8307-TNX', 'SUV', 'Madrid', 'wherever a house is one car is brightly and one dog barks', 21),
(79, 'Subaru', 'Elantra', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Red', '1933', 2, 2, 337, 'automatic', 1315691, 'diesel', 411848, '1348-DOB', 'Coupe', 'Ontario', 'that one dog reads loudly a house ate quickly', 23),
(80, 'Toyota', 'CX-5', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Green', '1924', 2, 3, 700, 'semi-automatic', 672446, 'gasoline', 3092873, '9477-PPX', 'Sedan', 'Basque Country', 'before a friend fly one friend ate and the sun shines slowly', 45),
(81, 'Mazda', 'Altima', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1951', 7, 5, 1344, 'automatic', 353298, 'electric', 3036998, '9109-VCN', 'Convertible', 'Valencia', 'although one car fly loudly the book barks', 34),
(82, 'Volkswagen', 'Altima', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Gray', '1938', 4, 3, 994, 'manual', 1205874, 'diesel', 4457593, '0725-ZIY', 'Truck', 'Prince Edward Island', 'if a birds sleeps one car run brightly', 8),
(83, 'Kia', 'F-150', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Black', '1948', 5, 5, 102, 'manual', 63191, 'diesel', 4464123, '0869-MZY', 'Wagon', 'Nunavut', 'whenever one birds run one birds sleeps slowly or one house shines slowly', 10),
(84, 'Audi', 'A4', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Yellow', '2007', 7, 5, 726, 'semi-automatic', 1027831, 'hybrid', 1843201, '2772-EZT', 'Hatchback', 'Prince Edward Island', 'if a cat shines one dog sleeps', 19),
(85, 'BMW', 'E-Class', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Orange', '1925', 7, 5, 78, 'semi-automatic', 1147389, 'gasoline', 2198461, '4086-SBH', 'Sedan', 'Ontario', 'while the sandwich ate slowly the car run quickly and a friend sleeps brightly', 11),
(86, 'Volvo', 'CX-5', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Gray', '2020', 2, 5, 1077, 'semi-automatic', 87862, 'electric', 4783183, '8393-KXU', 'SUV', 'Galicia', 'before the sun run a sandwich reads slowly or a car barks', 25),
(87, 'Ford', 'S60', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Orange', '1935', 2, 3, 724, 'semi-automatic', 1034911, 'hybrid', 2333578, '5427-SCR', 'Wagon', 'Castile and León', 'whether one sun run loudly a sun reads loudly', 40),
(88, 'Hyundai', 'Golf', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Green', '2013', 2, 2, 368, 'automatic', 1159212, 'gasoline', 3156634, '8907-CHE', 'SUV', 'Castile and León', 'whether the birds shines loudly one cat run', 36),
(89, 'Nissan', 'CX-5', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Black', '1966', 2, 5, 1490, 'automatic', 127444, 'hybrid', 4687746, '4301-WBQ', 'Sedan', 'Saskatchewan', 'unless the dog ate a car is loudly', 1),
(90, 'Nissan', 'Cruze', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Silver', '1953', 8, 5, 600, 'semi-automatic', 888882, 'gasoline', 3260079, '9765-DSZ', 'Van', 'Catalonia', 'whether one friend barks brightly one friend barks and one car fly loudly', 47),
(91, 'Hyundai', 'CX-5', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Yellow', '1932', 4, 2, 1233, 'manual', 1009925, 'diesel', 2739538, '3849-DXA', 'Truck', 'Saskatchewan', 'unless a house fly softly a sandwich fly but the car shines loudly', 35),
(92, 'Volvo', 'Outback', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Green', '2003', 4, 5, 1464, 'manual', 490948, 'diesel', 369223, '0122-RKD', 'Convertible', 'Newfoundland and Labrador', 'when the sun reads quickly the sandwich fly slowly and a book run brightly', 34),
(93, 'BMW', 'Soul', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Green', '1925', 6, 3, 78, 'manual', 1141922, 'gasoline', 4167023, '8754-WZC', 'Hatchback', 'Galicia', 'whether a car ate brightly one sandwich run quickly but the book run loudly', 43),
(94, 'Tesla', 'Cruze', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'White', '1951', 7, 3, 1308, 'automatic', 1167723, 'diesel', 1839605, '6365-TIY', 'Convertible', 'Madrid', 'whenever the friend barks slowly the sandwich run brightly', 45),
(95, 'Subaru', 'S60', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Purple', '1983', 5, 4, 133, 'manual', 532292, 'gasoline', 213580, '5411-CUK', 'Van', 'Madrid', 'whenever the sandwich shines softly one dog ate and the dog reads quickly', 15),
(96, 'Volvo', 'F-150', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Orange', '1954', 7, 4, 461, 'semi-automatic', 1453950, 'gasoline', 2953491, '9614-DQP', 'Truck', 'British Columbia', 'even if the car shines the cat ate or the dog ate', 30),
(97, 'BMW', 'F-150', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Red', '1946', 2, 5, 117, 'automatic', 747698, 'gasoline', 1246248, '4188-RZT', 'Convertible', 'Yukon', 'whether one car reads a house reads quickly', 5),
(98, 'Mazda', 'S60', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Black', '2015', 6, 4, 903, 'automatic', 1266357, 'electric', 176566, '1210-KOJ', 'Wagon', 'New Brunswick', 'where the book sleeps slowly one book barks softly and one car run', 34),
(99, 'Kia', 'S60', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Orange', '1930', 4, 2, 1010, 'automatic', 114050, 'hybrid', 4891439, '4708-WHT', 'Hatchback', 'Yukon', 'unless a dog shines the book run or the birds ate', 1),
(100, 'Tesla', 'CX-5', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Black', '2008', 5, 3, 431, 'semi-automatic', 205164, 'gasoline', 4972548, '1472-CCZ', 'Truck', 'Manitoba', 'than the birds barks loudly one house is', 42),
(101, 'Nissan', 'Soul', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Blue', '2004', 4, 5, 920, 'manual', 352226, 'hybrid', 351663, '9839-ZVS', 'Wagon', 'New Brunswick', 'so that the friend reads one birds shines brightly and a book sleeps', 44),
(102, 'Subaru', 'Golf', '2024-01-05 17:40:53', 'default_image.png', 'on sale', 0, 0, 'Purple', '2017', 6, 2, 1118, 'automatic', 905077, 'gasoline', 199246, '8767-QTB', 'Hatchback', 'Northwest Territories', 'unless a friend barks one friend fly brightly', 10),
(103, 'Kia', 'Soul', '2024-01-05 17:40:54', 'default_image.png', 'on sale', 0, 0, 'Blue', '1940', 4, 4, 843, 'manual', 1206066, 'gasoline', 219977, '6578-NXE', 'Van', 'Manitoba', 'wherever one birds run one birds ate loudly but one dog reads', 26),
(104, 'Subaru', 'Camry', '2024-01-05 17:40:54', 'default_image.png', 'on sale', 0, 0, 'Green', '1958', 2, 2, 1278, 'semi-automatic', 1493046, 'gasoline', 4799955, '7889-BJT', 'Coupe', 'Nova Scotia', 'until a sun fly slowly a birds barks softly', 12),
(105, 'Hyundai', 'F-150', '2024-01-05 17:40:54', 'default_image.png', 'on sale', 0, 0, 'Silver', '1942', 5, 4, 1293, 'automatic', 832767, 'gasoline', 2814692, '6825-BAJ', 'Sedan', 'British Columbia', 'when a house sleeps a birds ate loudly', 34),
(106, 'Volkswagen', 'A4', '2024-01-05 17:40:54', 'default_image.png', 'on sale', 0, 0, 'Silver', '1923', 8, 3, 82, 'automatic', 363265, 'gasoline', 4891600, '5127-JZN', 'Truck', 'Ontario', 'while a birds run brightly a dog ate', 49);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL,
  `creation_date` datetime NOT NULL,
  `notifications` int(11) NOT NULL,
  `id_user_one` bigint(20) NOT NULL,
  `id_user_two` bigint(20) NOT NULL,
  `deleted_by` bigint(20) NOT NULL,
  `id_car` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL,
  `content` varchar(2048) NOT NULL,
  `sent_time` datetime NOT NULL,
  `is_liked` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `id_sender` bigint(20) NOT NULL,
  `id_recipient` bigint(20) NOT NULL,
  `id_chat` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `birthdate` datetime NOT NULL,
  `country` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `postal_code` varchar(15) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `phone` varchar(9) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `member_since` datetime NOT NULL,
  `last_connection` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `gender`, `birthdate`, `country`, `province`, `address`, `postal_code`, `description`, `profile_picture`, `rating`, `status`, `phone`, `email`, `password`, `role`, `member_since`, `last_connection`) VALUES
(1, 'Fernando', 'Alonso', 'ElNano', 'Man', '2022-02-24 04:25:00', 'Spain', 'Asturias', 'Calle Nano 33', '53033', 'Test description', 'default_image.png', 0, 1, '633974333', 'nano@gmail.com', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 1, '1996-07-15 15:35:07', '1936-02-15 00:37:41'),
(2, 'Carlos', 'Sainz', 'carlossainz', 'Man', '1991-05-16 16:56:24', 'Spain', 'Madrid', 'Calle Sainz 55', '53055', 'Test description', 'default_image.png', 0, 1, '655974455', 'sainz@gmail.com', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2019-02-06 02:54:17', '1969-08-30 01:11:21'),
(3, 'Eloy', 'González', 'eloon0', 'woman', '1992-07-29 08:17:09', 'Japan', 'British Columbia', '48 Oak Avenue', '28527-207', 'since a book sleeps quickly the sun fly or a dog barks slowly', 'default_image.png', 0, 0, '211595125', 'elogon0@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1967-07-24 10:34:26', '1972-10-04 01:07:32'),
(4, 'Raquel', 'Ferrer', 'raqer1', 'man', '1983-12-27 21:34:06', 'Japan', 'Galicia', '30 Highland Avenue', 'T1G 1N1', 'when the friend sleeps a friend reads softly', 'default_image.png', 0, 1, '221243697', 'raqfer1@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1946-11-20 17:27:23', '1996-09-20 14:00:13'),
(5, 'Nieves', 'Aparici', 'niepa2', 'man', '2004-01-09 01:08:51', 'France', 'Northwest Territories', '7 Lake Shore', '479501', 'although the sun shines quickly the house fly quickly', 'default_image.png', 0, 1, '300792228', 'nieapa2@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2012-04-15 09:51:30', '1982-09-27 14:25:55'),
(6, 'Paula', 'Farell', 'pauar3', 'prefer not to say', '1946-03-22 14:24:50', 'Brazil', 'Newfoundland and Labrador', '44 Oak Avenue', 'H0H 1H8', 'whenever a house run loudly one sun is slowly', 'default_image.png', 0, 1, '530764282', 'paufar3@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1969-08-27 12:55:34', '1975-03-10 06:37:42'),
(7, 'Paula', 'Esteve', 'paust4', 'woman', '2020-03-12 22:03:14', 'Russia', 'Manitoba', '10 Sunset Drive', '16115', 'while a birds reads softly one friend sleeps loudly or a book barks softly', 'default_image.png', 0, 1, '723332009', 'pauest4@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1977-12-15 08:22:15', '1931-06-15 05:59:22'),
(8, 'Eloy', 'Romero', 'eloom5', 'man', '1930-12-03 22:32:38', 'United States', 'Basque Country', '11 Oak Avenue', '15178', 'while the house is a cat is brightly', 'default_image.png', 0, 1, '476986533', 'elorom5@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1989-11-30 08:38:54', '1991-04-19 04:18:53'),
(9, 'Raquel', 'Esteve', 'raqst6', 'woman', '1997-12-20 19:22:14', 'Sweden', 'New Brunswick', '28 Sunset Drive', '75871', 'until the book is one sun is', 'default_image.png', 0, 0, '053072960', 'raqest6@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2005-07-06 08:52:33', '2018-08-21 01:32:39'),
(10, 'Alan', 'Molero', 'alaol7', 'woman', '2009-09-24 08:41:14', 'Italy', 'Prince Edward Island', '14 Oak Avenue', '10178', 'as a car barks one sun fly', 'default_image.png', 0, 0, '876017797', 'alamol7@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2012-06-26 00:46:34', '1950-05-06 00:23:59'),
(11, 'Sergio', 'Aparici', 'serpa8', 'prefer not to say', '1959-07-05 09:28:35', 'Norway', 'Galicia', '27 Main Street', 'W1U 1H1', 'while the cat fly the house barks', 'default_image.png', 0, 1, '175941963', 'serapa8@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1979-09-29 07:53:42', '1956-08-12 16:45:48'),
(12, 'Raquel', 'Marín', 'raqar9', 'man', '2012-07-31 15:39:33', 'Australia', 'Valencia', '42 Maple Lane', '68791', 'provided that one birds run brightly the birds is brightly', 'default_image.png', 0, 0, '107668748', 'raqmar9@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1995-10-30 04:06:10', '1966-03-06 00:26:08'),
(13, 'Rafael', 'Ferrer', 'rafer10', 'prefer not to say', '1992-05-09 13:10:25', 'Canada', 'Prince Edward Island', '52 Greenway', '34437', 'even if one sun shines brightly one cat is', 'default_image.png', 0, 1, '769736467', 'raffer10@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2021-08-11 04:22:37', '1993-06-02 21:44:32'),
(14, 'Fernando', 'Alcañiz', 'ferlc11', 'woman', '2001-03-31 01:20:21', 'Canada', 'British Columbia', '56 Mountain View', '71881-531', 'where the dog is softly the dog is loudly', 'default_image.png', 0, 1, '889495288', 'feralc11@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2014-09-13 12:55:10', '1972-09-28 05:35:35'),
(15, 'Pablo', 'Aparici', 'pabpa12', 'man', '1956-09-06 18:51:14', 'China', 'Galicia', '17 Elm Boulevard', '34437', 'wherever a house run one cat shines brightly', 'default_image.png', 0, 0, '111245930', 'pabapa12@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2014-09-02 03:47:34', '1993-04-29 18:07:09'),
(16, 'Paula', 'McLure', 'paucl13', 'woman', '1994-05-07 08:21:09', 'China', 'Quebec', '24 Meadow Lane', '34437', 'that one car reads quickly a dog is slowly', 'default_image.png', 0, 1, '175924168', 'paumcl13@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2006-07-02 10:13:49', '1963-11-17 13:39:03'),
(17, 'Eloy', 'Aznar', 'elozn14', 'prefer not to say', '2006-01-31 05:55:11', 'United Kingdom', 'Alberta', '10 Greenway', '197227', 'although the car reads softly the book reads and a sandwich barks', 'default_image.png', 0, 1, '309638695', 'eloazn14@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1994-07-09 00:27:16', '1938-10-13 12:57:42'),
(18, 'Lucas', 'Maldonado', 'lucal15', 'woman', '2008-10-31 19:23:01', 'Turkey', 'Valencia', '27 Highland Avenue', '13178', 'unless one car is loudly the car shines slowly', 'default_image.png', 0, 1, '314050148', 'lucmal15@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1985-08-01 14:08:41', '1937-03-21 04:06:59'),
(19, 'José Antonio', 'Gómez', 'josom16', 'woman', '2006-08-08 05:10:13', 'Argentina', 'British Columbia', '22 Elm Boulevard', '71691-411', 'if the cat run quickly one car fly or the sandwich shines', 'default_image.png', 0, 1, '144109378', 'josgóm16@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1946-02-26 23:47:04', '1978-10-10 19:44:32'),
(20, 'Sergio', 'Maldonado', 'seral17', 'woman', '1968-01-10 12:35:22', 'Norway', 'Nova Scotia', '45 Pine Street', '34437', 'provided that the dog run loudly the book sleeps brightly', 'default_image.png', 0, 0, '090316485', 'sermal17@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1976-06-08 14:45:51', '1972-05-21 02:06:41'),
(21, 'Elena', 'Gómez', 'eleom18', 'prefer not to say', '2013-12-17 10:41:41', 'France', 'Yukon', '3 Pine Street', '10991', 'where the car sleeps one sandwich shines', 'default_image.png', 0, 1, '338267056', 'elegóm18@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1936-11-26 04:00:06', '2017-03-02 02:10:40'),
(22, 'Nieves', 'Suárez', 'nieua19', 'prefer not to say', '1969-04-03 06:35:17', 'United Kingdom', 'Nova Scotia', '32 Cedar Road', '13391', 'than the car ate the sandwich reads', 'default_image.png', 0, 1, '222550668', 'niesuá19@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2006-10-12 19:46:50', '1934-06-17 16:02:57'),
(23, 'Sergio', 'McLure', 'sercl20', 'man', '1959-04-07 23:48:20', 'Australia', 'Andalusia', '40 Pine Street', '34437', 'until one friend shines softly the book run', 'default_image.png', 0, 1, '725344864', 'sermcl20@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2002-04-25 01:30:38', '2012-11-11 12:31:23'),
(24, 'Sergio', 'López', 'serop21', 'woman', '1948-04-25 02:50:07', 'United Kingdom', 'Yukon', '56 Cedar Road', '415941', 'where one car ate one cat reads', 'default_image.png', 0, 0, '438516770', 'serlóp21@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1966-05-02 22:34:26', '1938-05-07 05:30:45'),
(25, 'José Antonio', 'Roselló', 'josos22', 'woman', '1939-04-17 01:48:24', 'Norway', 'Northwest Territories', '30 Forest Drive', 'K1E 6B1', 'even though a car is loudly one dog fly', 'default_image.png', 0, 1, '928445283', 'josros22@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1989-11-10 03:34:06', '1980-12-26 08:25:09'),
(26, 'Eloy', 'Gómez', 'eloom23', 'woman', '2019-12-19 00:03:51', 'Brazil', 'New Brunswick', '24 Valley Lane', '08761', 'while the cat ate a birds shines brightly', 'default_image.png', 0, 0, '865537797', 'elogóm23@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1963-06-07 18:37:51', '1976-09-14 14:32:30'),
(27, 'Laura', 'Gómez', 'lauom24', 'prefer not to say', '1971-12-29 07:26:31', 'Argentina', 'Manitoba', '24 Greenway', 'K1J 8B1', 'if a birds ate the friend shines loudly', 'default_image.png', 0, 0, '259127168', 'laugóm24@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1999-08-30 12:25:24', '2004-03-17 16:31:21'),
(28, 'Fernando', 'Alarcón', 'ferla25', 'man', '1993-02-14 18:32:32', 'Russia', 'Valencia', '30 Pine Street', '21701-081', 'provided that a car sleeps the book run or one car run slowly', 'default_image.png', 0, 0, '427471120', 'ferala25@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1966-09-14 14:53:09', '1944-02-23 04:31:53'),
(29, 'José Antonio', 'Navarro', 'josav26', 'woman', '1942-10-05 00:39:56', 'United Kingdom', 'Saskatchewan', '34 Forest Drive', '179645', 'unless one dog reads one car barks', 'default_image.png', 0, 0, '160281621', 'josnav26@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1949-07-09 14:24:54', '1983-08-04 20:40:24'),
(30, 'Fernando', 'Ayala', 'ferya27', 'prefer not to say', '1994-07-15 21:41:32', 'Turkey', 'Valencia', '10 Greenway', '97146', 'as one birds fly one dog reads', 'default_image.png', 0, 0, '720481837', 'feraya27@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2003-08-31 17:26:48', '1993-10-05 03:50:00'),
(31, 'Paula', 'Alcañiz', 'paulc28', 'man', '1940-04-02 10:26:38', 'Spain', 'Manitoba', '22 Hilltop Road', 'H0H 2H8', 'when the sandwich fly slowly one car is slowly and a friend fly', 'default_image.png', 0, 0, '574593413', 'paualc28@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2009-12-12 05:35:44', '2022-09-14 22:53:03'),
(32, 'José Antonio', 'Farell', 'josar29', 'man', '1977-06-30 04:38:20', 'Italy', 'Castile and León', '21 Lake Shore', '193092', 'even though the friend ate a friend ate brightly', 'default_image.png', 0, 1, '721376401', 'josfar29@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1993-04-08 22:29:11', '2003-05-28 10:55:22'),
(33, 'Pablo', 'Alcañiz', 'pablc30', 'prefer not to say', '2011-02-15 22:08:41', 'United Kingdom', 'Nunavut', '51 Skyline Drive', '11115', 'when a sun is softly one car sleeps slowly but a car sleeps', 'default_image.png', 0, 0, '589709041', 'pabalc30@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1936-01-27 23:38:58', '1944-06-28 01:14:46'),
(34, 'Rafael', 'Briones', 'rafri31', 'man', '1987-08-28 10:39:38', 'Germany', 'Yukon', '12 Greenway', '71978-866', 'where one birds run the car run but one friend reads quickly', 'default_image.png', 0, 0, '120492236', 'rafbri31@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2011-07-18 18:01:16', '1976-05-09 22:38:07'),
(35, 'Eva', 'Gómez', 'evaom32', 'man', '1964-07-20 20:34:45', 'India', 'Nunavut', '10 River Road', '16115', 'until the sun reads the sun sleeps brightly or one sandwich is softly', 'default_image.png', 0, 1, '707597398', 'evagóm32@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1975-08-03 20:08:04', '1930-02-17 01:18:49'),
(36, 'Laura', 'Lara', 'lauar33', 'prefer not to say', '1959-01-15 18:40:11', 'Argentina', 'New Brunswick', '2 Oak Avenue', '29847-011', 'so that a dog shines brightly the sandwich fly quickly and one dog barks slowly', 'default_image.png', 0, 1, '074118780', 'laular33@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2013-07-31 06:18:34', '2000-11-30 19:55:11'),
(37, 'Alan', 'González', 'alaon34', 'man', '1953-10-19 07:36:57', 'Germany', 'Prince Edward Island', '18 Forest Drive', '12115', 'while one sandwich fly loudly one sandwich run but one house sleeps loudly', 'default_image.png', 0, 0, '059813934', 'alagon34@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1933-07-31 20:52:50', '1990-08-27 13:05:18'),
(38, 'Jesús', 'Ferrer', 'jeser35', 'man', '1950-01-31 17:55:13', 'Italy', 'Newfoundland and Labrador', '58 Valley Lane', 'S1Y 1O1', 'provided that the birds fly slowly a birds ate slowly', 'default_image.png', 0, 0, '288353815', 'jesfer35@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2016-05-06 19:41:17', '1999-11-19 02:03:57'),
(39, 'Eva', 'Ayala', 'evaya36', 'man', '1960-10-09 01:59:42', 'Turkey', 'Northwest Territories', '15 Elm Boulevard', '35162', 'provided that a book barks a sun shines', 'default_image.png', 0, 0, '499295109', 'evaaya36@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2021-01-19 22:55:24', '2018-04-01 18:46:19'),
(40, 'José Antonio', 'Latorre', 'josat37', 'prefer not to say', '1950-05-29 07:17:11', 'Russia', 'Madrid', '18 Main Street', '19178', 'even if a cat reads brightly the house ate softly', 'default_image.png', 0, 1, '757968775', 'joslat37@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1986-07-20 05:20:12', '1944-05-04 19:11:22'),
(41, 'Elena', 'Farell', 'elear38', 'woman', '1980-02-10 22:01:52', 'United Kingdom', 'Castile and León', '8 Park Avenue', '192144', 'as one sandwich is one birds shines', 'default_image.png', 0, 0, '760295795', 'elefar38@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1948-06-25 00:08:25', '1969-03-05 07:04:09'),
(42, 'Fernando', 'Velarte', 'ferel39', 'man', '1993-07-24 19:57:26', 'Canada', 'Castile and León', '60 Oak Avenue', '17178', 'wherever one dog fly softly a sandwich is slowly and the house sleeps loudly', 'default_image.png', 0, 1, '361175742', 'fervel39@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2001-12-18 00:34:02', '1933-04-14 17:24:51'),
(43, 'Laura', 'Aguilar', 'laugu40', 'prefer not to say', '1969-09-17 09:35:47', 'Japan', 'Ontario', '60 Hilltop Road', '95141', 'until the birds run the cat sleeps brightly or one book sleeps', 'default_image.png', 0, 1, '564135752', 'lauagu40@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2001-10-29 07:55:50', '1977-11-25 02:27:59'),
(44, 'Nieves', 'Navarro', 'nieav41', 'prefer not to say', '2002-03-23 13:33:26', 'Germany', 'British Columbia', '49 Skyline Drive', 'V1H 3R9', 'because one birds reads quickly the sun barks brightly but a house sleeps softly', 'default_image.png', 0, 1, '445578184', 'nienav41@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1968-04-03 08:38:35', '1992-08-12 10:23:13'),
(45, 'Rafael', 'Ayala', 'rafya42', 'man', '1941-06-29 00:17:50', 'Spain', 'Nunavut', '19 Maple Lane', '71993-400', 'once a birds shines one sandwich reads', 'default_image.png', 0, 0, '640285388', 'rafaya42@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2013-09-29 16:28:50', '1960-01-02 15:29:49'),
(46, 'Alan', 'Quilez', 'alaui43', 'woman', '2008-04-12 06:30:29', 'United Kingdom', 'Castile and León', '20 Valley Lane', '31961-791', 'once a birds run loudly a friend fly softly or a sandwich fly slowly', 'default_image.png', 0, 0, '190356952', 'alaqui43@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2003-01-17 00:53:16', '2021-07-11 18:06:50'),
(47, 'Raquel', 'McLure', 'raqcl44', 'prefer not to say', '1974-09-17 05:09:06', 'Australia', 'Saskatchewan', '60 Main Street', '71119-404', 'as a house ate softly the birds sleeps', 'default_image.png', 0, 1, '294354863', 'raqmcl44@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2006-11-06 04:30:56', '2003-09-23 16:37:09'),
(48, 'Rafael', 'Velarte', 'rafel45', 'man', '1999-02-19 01:46:20', 'United Kingdom', 'Nunavut', '42 Oak Avenue', '12115', 'even though one birds barks one sandwich is and one sandwich reads', 'default_image.png', 0, 1, '621557940', 'rafvel45@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1981-03-28 17:52:37', '1981-06-22 07:43:02'),
(49, 'Lucas', 'Gómez', 'lucom46', 'woman', '1948-10-01 05:28:43', 'United States', 'Galicia', '54 Main Street', '18381', 'once a sandwich is a book barks loudly', 'default_image.png', 0, 0, '109265928', 'lucgóm46@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1977-08-16 07:43:02', '1949-11-25 22:39:16'),
(50, 'Laura', 'Aznar', 'lauzn47', 'man', '1936-01-13 18:43:10', 'Spain', 'New Brunswick', '6 Oak Avenue', 'WC2N 5DU', 'in order to the friend fly quickly one birds run loudly', 'default_image.png', 0, 0, '849827027', 'lauazn47@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1954-04-16 20:14:45', '1962-12-31 12:29:08'),
(51, 'Mónica', 'García', 'monar48', 'prefer not to say', '1959-11-20 11:19:35', 'Norway', 'Madrid', '47 Skyline Drive', '18641', 'so that a book fly one book ate and a friend shines', 'default_image.png', 0, 0, '653558370', 'móngar48@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1972-09-24 22:10:03', '1951-11-30 00:22:40'),
(52, 'Jaime', 'Farell', 'jaiar49', 'woman', '1954-04-19 09:01:55', 'Germany', 'Manitoba', '27 Pine Street', '190806', 'when a book shines softly the sandwich reads', 'default_image.png', 0, 1, '838018725', 'jaifar49@gmail.net', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1945-07-11 14:15:40', '1981-02-25 23:27:13');

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
