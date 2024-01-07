SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- Database: `allmotors`
CREATE DATABASE IF NOT EXISTS `allmotors` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `allmotors`;

-- Table structure for table `car`
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
  `id_owner` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `chat`
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL,
  `creation_date` datetime NOT NULL,
  `notifications` int(11) NOT NULL,
  `id_user_one` bigint(20) NOT NULL,
  `id_user_two` bigint(20) NOT NULL,
  `deleted_by` bigint(20) NOT NULL,
  `id_car` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `message`
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL,
  `content` varchar(2048) NOT NULL,
  `sent_time` datetime NOT NULL,
  `is_liked` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL,
  `id_sender` bigint(20) NOT NULL,
  `id_recipient` bigint(20) NOT NULL,
  `id_chat` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_chat`),
  CONSTRAINT `fk_message_chat`
    FOREIGN KEY (`id_chat`) REFERENCES `chat` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `user`
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
  `last_connection` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insert data into `user` table (sample data)
INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `gender`, `birthdate`, `country`, `province`, `address`, `postal_code`, `description`, `profile_picture`, `rating`, `status`, `phone`, `email`, `password`, `role`, `member_since`, `last_connection`) VALUES
(1, 'Fernando', 'Alonso', 'ElNano', 'Man', '2022-02-24 04:25:00', 'Spain', 'Asturias', 'Calle Nano 33', '53033', 'Test description', 'default_image.png', 0, 1, '633974333', 'nano@gmail.com', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 1, '1996-07-15 15:35:07', '1936-02-15 00:37:41'),
(2, 'Carlos', 'Sainz', 'carlossainz', 'Man', '1991-05-16 16:56:24', 'Spain', 'Madrid', 'Calle Sainz 55', '53055', 'Test description', 'default_image.png', 0, 1, '655974455', 'sainz@gmail.com', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '2019-02-06 02:54:17', '1969-08-30 01:11:21');

COMMIT;
