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
  `title` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
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

INSERT INTO `car` (`id`, `brand`, `model`, `title`, `date_uploaded`, `status`, `views`, `saves`, `color`, `year`, `seats`, `doors`, `horsepower`, `gearbox`, `distance`, `fuel`, `currency`, `acceleration`, `engine`, `drive`, `bought_in`, `price`, `type`, `location`, `emissions`, `consumption`, `plate`, `dgt_sticker`, `last_itv`, `last_update`, `description`, `id_owner`) VALUES
(1, 'Nissan', 'CX-5', 'Nissan CX-5', '2024-02-07 12:24:44', NULL, 0, 0, 'Black', '1935', 8, 3, 364, 'Automatic', 498501, 'Diesel', '€', 9.4, 'V12', 'RWD', 'South Africa', 1794676, 'Convertible', 'Nunavut', 43.61, 6.25, '0571-BIR', 'C', '2021-08-09 20:05:07', '2024-02-07 12:24:44', 'unless one sandwich sleeps one birds barks brightly but the sun run slowly', 1),
(2, 'Honda', 'F-150', 'Honda F-150', '2024-02-07 12:24:44', NULL, 0, 0, 'Purple', '1972', 6, 5, 1022, 'Manual', 996572, 'Diesel', '¥', 6.3, 'W12', 'FWD', 'Turkey', 421445, 'Truck', 'Northwest Territories', 49.12, 8.75, '2887-KNB', '0', '2015-09-12 13:10:25', '2024-02-07 12:24:44', 'after a birds reads brightly a car sleeps quickly', 2),
(3, 'Chevrolet', '3 Series', 'Chevrolet 3 Series', '2024-02-07 12:24:44', NULL, 0, 0, 'Silver', '1930', 8, 5, 716, 'Automatic', 864128, 'Gasoline', '¥', 8, 'W16', 'FWD', 'United States', 4373502, 'Coupe', 'Andalusia', 42.91, 5.74, '6136-FBI', 'B', '2023-07-02 07:14:12', '2024-02-07 12:24:44', 'where one birds is quickly one book sleeps and the dog ate', 1),
(4, 'Volvo', 'Elantra', 'Volvo Elantra', '2024-02-07 12:24:44', NULL, 0, 0, 'Yellow', '2011', 3, 2, 1469, 'Manual', 346142, 'Electric', '£', 8.5, 'W12', 'FWD', 'India', 2938419, 'Hatchback', 'Nunavut', 19.02, 8.37, '3965-LEB', 'C', '2020-07-10 19:54:05', '2024-02-07 12:24:44', 'because one sandwich run a house ate brightly', 1),
(5, 'Toyota', 'Golf', 'Toyota Golf', '2024-02-07 12:24:44', NULL, 0, 0, 'Green', '1951', 4, 5, 454, 'Manual', 260776, 'Diesel', '£', 4.9, 'I4', 'AWD', 'South Africa', 1717478, 'Truck', 'Valencia', 88.86, 8.14, '3202-BCV', 'C', '2018-02-26 09:53:12', '2024-02-07 12:24:44', 'although the sandwich run a sun run slowly and the dog is softly', 1),
(6, 'Nissan', 'CX-5', 'Nissan CX-5', '2024-02-07 12:24:44', NULL, 0, 0, 'Black', '1962', 2, 3, 1430, 'Manual', 1480585, 'Electric', '$', 9, 'I3', 'RWD', 'Norway', 4271118, 'Hatchback', 'Castile and León', 83.48, 7.98, '2759-RFS', 'C', '2015-08-06 09:40:28', '2024-02-07 12:24:44', 'when a book sleeps the sun sleeps', 1),
(7, 'Honda', 'Model 3', 'Honda Model 3', '2024-02-07 12:24:44', NULL, 0, 0, 'White', '1950', 2, 4, 333, 'Automatic', 946843, 'Gasoline', '£', 7.3, 'I4', 'FWD', 'Italy', 392222, 'Sedan', 'Manitoba', 108.83, 9.97, '5150-ASA', 'C', '2012-12-21 11:48:29', '2024-02-07 12:24:44', 'where the car ate a cat run loudly', 1),
(8, 'Toyota', '3 Series', 'Toyota 3 Series', '2024-02-07 12:24:44', NULL, 0, 0, 'Silver', '1934', 4, 2, 722, 'Automatic', 521566, 'Hybrid', '¥', 3.4, 'W12', 'FWD', 'Spain', 52625, 'Hatchback', 'Nunavut', 54.07, 7.31, '3218-PJJ', 'B', '2012-12-09 02:08:01', '2024-02-07 12:24:44', 'until one dog run softly the book run quickly', 1),
(9, 'Mercedes-Benz', 'Golf', 'Mercedes-Benz Golf', '2024-02-07 12:24:44', NULL, 0, 0, 'Green', '1944', 3, 5, 1461, 'Manual', 612740, 'Diesel', '£', 7.3, 'I5', 'RWD', 'United States', 833627, 'Truck', 'British Columbia', 25.17, 8.87, '4650-XNZ', 'ECO', '2021-10-19 18:02:01', '2024-02-07 12:24:44', 'when a sun shines one sandwich ate slowly', 2),
(10, 'Kia', 'F-150', 'Kia F-150', '2024-02-07 12:24:44', NULL, 0, 0, 'Silver', '1924', 4, 3, 673, 'Automatic', 844293, 'Hybrid', '£', 7.2, 'W16', 'AWD', 'South Africa', 1390763, 'Truck', 'Galicia', 34.15, 8.33, '8201-FMH', '0', '2017-03-11 21:45:39', '2024-02-07 12:24:44', 'so that a birds fly softly one sandwich reads loudly but the dog run quickly', 2);

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
(544, '/media/image2.jpg', 1),
(545, '/media/image2.jpg', 1),
(546, '/media/image6.jpg', 1),
(547, '/media/image2.jpg', 1),
(548, '/media/image10.jpg', 2),
(549, '/media/image3.jpg', 2),
(550, '/media/image10.jpg', 2),
(551, '/media/image9.jpg', 3),
(552, '/media/image8.jpeg', 3),
(553, '/media/image6.jpg', 3),
(554, '/media/image2.jpg', 3),
(555, '/media/image7.jpg', 3),
(556, '/media/image1.jpg', 3),
(557, '/media/image6.jpg', 3),
(558, '/media/image6.jpg', 3),
(559, '/media/image8.jpeg', 4),
(560, '/media/image9.jpg', 5),
(561, '/media/image5.jpg', 5),
(562, '/media/image10.jpg', 5),
(563, '/media/image5.jpg', 5),
(564, '/media/image10.jpg', 5),
(565, '/media/image5.jpg', 5),
(566, '/media/image9.jpg', 5),
(567, '/media/image7.jpg', 6),
(568, '/media/image6.jpg', 6),
(569, '/media/image9.jpg', 7),
(570, '/media/image6.jpg', 7),
(571, '/media/image2.jpg', 7),
(572, '/media/image5.jpg', 8),
(573, '/media/image7.jpg', 8),
(574, '/media/image1.jpg', 8),
(575, '/media/image2.jpg', 8),
(576, '/media/image5.jpg', 8),
(577, '/media/image9.jpg', 9),
(578, '/media/image8.jpeg', 9),
(579, '/media/image2.jpg', 9),
(580, '/media/image5.jpg', 9),
(581, '/media/image8.jpeg', 9),
(582, '/media/image9.jpg', 10),
(583, '/media/image3.jpg', 10),
(584, '/media/image3.jpg', 10);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

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
