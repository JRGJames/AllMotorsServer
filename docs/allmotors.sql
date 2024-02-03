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
(16, 'Nissan', 'Model 3', '2024-02-02 23:14:18', NULL, 0, 0, 'Gray', '1992', 4, 4, 589, 'Manual', 196525, 'Gasoline', '¥', 6, 'I4', 'FWD', 'Japan', 2315002, 'Convertible', 'Yukon', 19.36, 8.27, '3254-HPQ', 'ECO', '2011-12-07 17:55:24', '2024-02-02 23:14:18', 'if one house shines slowly a friend sleeps brightly but one book shines', 2);

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
(148, '/media/image4.jpg', 16);

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
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rated_user` (`id_rated_user`),
  ADD KEY `id_rating_user` (`id_rating_user`);

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
-- AUTO_INCREMENT for table `rating`
--

ALTER TABLE `rating`
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
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`id_rated_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`id_rating_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
