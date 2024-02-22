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
(1, 'Hyundai', 'Altima', 'Hyundai Altima', '2024-02-22 00:37:58', NULL, 0, 0, 'gray', '1977', 4, 2, 940, 'manual', 465009, 'electric', '€', 5.5, 'V6', 'RWD', 'Russia', 302839, 'Wagon', 'Yukon', 79.62, 6.96, '3208-VQJ', 'ECO', '2014-03-03 14:04:08', '2024-02-22 00:37:58', 'when the sandwich fly one friend sleeps slowly or the friend ate slowly', 2),
(2, 'Chevrolet', 'Corvette', 'Chevrolet Bolt EV Corvette', NULL, NULL, 0, 0, 'white', '1990', 2, 3, 694, 'manual', 896779, 'hybrid', '£', 3.4, 'I4', 'RWD', 'United Kingdom', 4389346, 'SUV', 'British Columbia', 59.04, 5.79, '8745-PGT', 'ECO', '2013-10-20 14:24:17', NULL, 'while one house sleeps loudly one book reads', 2),
(3, 'Honda', 'S60', 'Honda S60', '2024-02-22 00:38:09', NULL, 0, 0, 'green', '2000', 4, 4, 1072, 'automatic', 921529, 'electric', '$', 3.9, 'W12', 'AWD', 'Russia', 818390, 'Sedan', 'Madrid', 87.02, 8.17, '0298-TRN', '0', '2011-10-05 12:51:05', '2024-02-22 00:38:09', 'unless one house fly brightly a friend fly quickly', 1),
(4, 'Nissan', 'Golf', 'Nissan Golf', '2024-02-22 00:38:09', NULL, 0, 0, 'purple', '2015', 3, 2, 71, 'automatic', 8913, 'electric', '£', 10, 'I5', 'RWD', 'Norway', 3583426, 'Hatchback', 'Nova Scotia', 93.09, 6.42, '0806-WMR', 'B', '2011-11-19 01:13:53', '2024-02-22 00:38:09', 'whenever one house fly quickly one car ate slowly', 1),
(5, 'Chevrolet', 'F-150', 'Chevrolet F-150', '2024-02-22 00:38:09', NULL, 0, 0, 'yellow', '1961', 3, 4, 1257, 'manual', 317677, 'petrol', '£', 3.7, 'V12', 'FWD', 'South Korea', 1265321, 'Truck', 'Newfoundland and Labrador', 64.38, 9.12, '8863-SLC', 'C', '2023-07-24 05:47:51', '2024-02-22 00:38:09', 'before one car shines brightly the sandwich barks', 2),
(6, 'Honda', 'S60', 'Honda S60', '2024-02-22 00:38:09', NULL, 0, 0, 'red', '1976', 5, 5, 351, 'automatic', 1208320, 'electric', '€', 8.4, 'I5', 'RWD', 'Japan', 1004933, 'Convertible', 'Basque Country', 102.76, 9.12, '2356-IQV', 'C', '2022-09-29 21:26:41', '2024-02-22 00:38:09', 'while a book shines brightly the cat ate', 1),
(7, 'Chevrolet', 'Civic', 'Chevrolet Civic', '2024-02-22 00:38:09', NULL, 0, 0, 'green', '1926', 5, 5, 1185, 'manual', 60920, 'petrol', '€', 3.3, 'I3', 'RWD', 'France', 3689858, 'SUV', 'Valencia', 45.93, 9.03, '9198-NCI', 'B', '2017-08-13 05:08:07', '2024-02-22 00:38:09', 'when the car ate one friend shines slowly and a sun barks softly', 1),
(8, 'Kia', 'F-150', 'Kia F-150', '2024-02-22 00:38:09', NULL, 0, 0, 'green', '1931', 6, 4, 1007, 'automatic', 1094050, 'hybrid', '$', 5, 'W12', 'AWD', 'Norway', 1242127, 'Sedan', 'Catalonia', 61.76, 9.95, '4275-DPV', 'B', '2020-01-26 10:16:01', '2024-02-22 00:38:09', 'until the house fly one sandwich is', 2),
(9, 'Hyundai', 'CX-5', 'Hyundai CX-5', '2024-02-22 00:38:09', NULL, 0, 0, 'yellow', '1998', 6, 3, 1273, 'automatic', 620285, 'petrol', '€', 8, 'V6', 'FWD', 'Canada', 4559772, 'Hatchback', 'Castile and León', 32.65, 6.34, '9408-XFK', 'ECO', '2013-09-19 12:23:56', '2024-02-22 00:38:09', 'because a book reads slowly the friend barks', 1),
(10, 'Hyundai', 'Civic', 'Hyundai Civic', '2024-02-22 00:38:09', NULL, 0, 0, 'black', '2001', 5, 4, 248, 'manual', 110204, 'petrol', '£', 6.1, 'W12', 'AWD', 'Japan', 428536, 'Truck', 'Andalusia', 24.4, 8.22, '9697-EMQ', '0', '2023-06-23 22:08:42', '2024-02-22 00:38:09', 'where one cat sleeps brightly the car fly softly or a sun sleeps', 2),
(11, 'Hyundai', 'F-150', 'Hyundai F-150', '2024-02-22 00:38:09', NULL, 0, 0, 'orange', '1961', 5, 5, 1439, 'manual', 397078, 'electric', '£', 9, 'I3', 'FWD', 'Sweden', 3352101, 'Van', 'New Brunswick', 88.92, 8.31, '6692-KEU', 'C', '2012-01-14 00:08:35', '2024-02-22 00:38:09', 'unless one friend reads a house is slowly and one house barks slowly', 1),
(12, 'Acura', 'MDX', 'Acura MDX', NULL, NULL, 0, 0, 'blue', '2001', 5, 2, 185, 'manual', 100000, 'gasoline', '€', 7.2, '3.0L V6', 'rwd', 'Spain', 33000, 'sedan', 'Valencia', 120, 5.5, 'ABC123', 'C', '2024-02-21 23:38:13', NULL, 'El BMW Serie 3 E46 no es solo un coche, es una pieza de la historia automovilística que combina a la perfección rendimiento, lujo y fiabilidad. Diseñado para aquellos que aprecian la conducción pura, este modelo se ha convertido en un favorito tanto para entusiastas como para aquellos que buscan un vehículo premium versátil.', 1),
(13, 'Chevrolet', 'Soul', 'Chevrolet Soul', '2024-02-22 00:54:18', NULL, 0, 0, 'yellow', '1971', 5, 4, 693, 'automatic', 444314, 'petrol', '$', 2.5, 'W12', 'AWD', 'Russia', 1660237, 'Convertible', 'Galicia', 108.07, 5.91, '6865-JZI', 'C', '2014-12-27 22:59:45', '2024-02-22 00:54:18', 'even if the birds run the dog reads', 1),
(14, 'Volvo', '3 Series', 'Volvo 3 Series', '2024-02-22 00:54:18', NULL, 0, 0, 'green', '1964', 8, 4, 1447, 'automatic', 222849, 'electric', '$', 9.3, 'V8', 'AWD', 'Australia', 1296794, 'Convertible', 'Alberta', 50.25, 9.12, '9007-EPL', 'B', '2014-11-22 10:05:25', '2024-02-22 00:54:18', 'because one sandwich run loudly a sun barks', 2),
(15, 'Volkswagen', 'S60', 'Volkswagen S60', '2024-02-22 00:54:18', NULL, 0, 0, 'green', '1958', 4, 4, 589, 'automatic', 536065, 'electric', '£', 9.7, 'I4', 'FWD', 'Turkey', 3202159, 'Hatchback', 'Newfoundland and Labrador', 29.96, 6.79, '8232-KRS', '0', '2013-11-28 13:06:15', '2024-02-22 00:54:18', 'while one cat fly slowly a house ate and one house sleeps', 1),
(16, 'Ford', 'A4', 'Ford A4', '2024-02-22 00:54:18', NULL, 0, 0, 'green', '1997', 4, 3, 668, 'automatic', 1464771, 'electric', '$', 8.7, 'W12', 'RWD', 'China', 4711972, 'SUV', 'Galicia', 77.81, 8.21, '0011-NBX', 'ECO', '2017-10-08 07:17:09', '2024-02-22 00:54:18', 'unless a birds shines a sandwich is', 1),
(17, 'Mercedes-Benz', 'F-150', 'Mercedes-Benz F-150', '2024-02-22 00:54:19', NULL, 0, 0, 'gray', '1942', 4, 2, 659, 'manual', 989919, 'petrol', '$', 5.4, 'V10', 'AWD', 'Brazil', 3016212, 'Coupe', 'Ontario', 72.63, 7.25, '5345-IUL', 'C', '2022-07-17 04:56:42', '2024-02-22 00:54:19', 'once a dog ate brightly a house reads and one car shines quickly', 2),
(18, 'Volkswagen', 'CX-5', 'Volkswagen CX-5', '2024-02-22 00:54:19', NULL, 0, 0, 'purple', '1982', 5, 5, 1129, 'manual', 595954, 'electric', '¥', 2.5, 'V6', 'RWD', 'India', 4586970, 'Sedan', 'Madrid', 104.69, 7.71, '0594-IJY', '0', '2019-06-21 20:54:03', '2024-02-22 00:54:19', 'so that the sandwich sleeps slowly one sandwich reads', 1),
(19, 'Volkswagen', 'Model 3', 'Volkswagen Model 3', '2024-02-22 00:54:19', NULL, 0, 0, 'yellow', '1952', 4, 4, 1495, 'automatic', 399186, 'petrol', '$', 9, 'V10', 'FWD', 'Norway', 2410960, 'Van', 'Yukon', 84.82, 5.84, '1064-PNY', 'B', '2022-04-01 02:58:31', '2024-02-22 00:54:19', 'whether the car shines softly the birds run and the dog run brightly', 2),
(20, 'Ford', 'A4', 'Ford A4', '2024-02-22 00:54:19', NULL, 0, 0, 'green', '1971', 4, 4, 1218, 'manual', 1365399, 'gasoline', '€', 4.2, 'I3', 'AWD', 'Mexico', 3500048, 'Truck', 'Ontario', 70.55, 7.51, '1128-NOP', 'C', '2023-03-29 04:49:53', '2024-02-22 00:54:19', 'if a sun ate a cat ate', 2),
(21, 'Mazda', 'F-150', 'Mazda F-150', '2024-02-22 00:54:19', NULL, 0, 0, 'red', '1964', 2, 2, 638, 'automatic', 695281, 'gasoline', '€', 3.7, 'I3', 'RWD', 'Japan', 1779597, 'Coupe', 'Northwest Territories', 39.31, 6.26, '5523-TQJ', '0', '2016-02-27 07:17:41', '2024-02-22 00:54:19', 'once the car shines loudly the sun run brightly', 2),
(22, 'Volkswagen', 'CX-5', 'Volkswagen CX-5', '2024-02-22 00:54:19', NULL, 0, 0, 'gray', '1991', 3, 3, 81, 'automatic', 982161, 'petrol', '£', 9, 'W12', 'RWD', 'Canada', 4510417, 'Sedan', 'Saskatchewan', 64, 8.15, '2147-ZNA', 'C', '2019-12-24 13:14:29', '2024-02-22 00:54:19', 'after the book sleeps the sandwich reads quickly', 1);

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
(897, '/media/image1.jpg', 3),
(898, '/media/image10.jpg', 3),
(899, '/media/image8.jpeg', 3),
(900, '/media/image1.jpg', 3),
(901, '/media/image9.jpg', 3),
(902, '/media/image5.jpg', 3),
(903, '/media/image8.jpeg', 3),
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
(987, '/media/image3.jpg', 22);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=988;

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
