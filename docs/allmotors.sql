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
  `id` bigint NOT NULL,
  `brand` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `views` bigint NOT NULL,
  `saves` bigint NOT NULL,
  `color` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `year` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `seats` int NOT NULL,
  `doors` int NOT NULL,
  `horsepower` int NOT NULL,
  `transmission` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `distance` int NOT NULL,
  `engine` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `plate` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `id` bigint NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `id` bigint NOT NULL,
  `content` varchar(2048) COLLATE utf8mb4_general_ci NOT NULL,
  `sent_time` datetime NOT NULL,
  `is_liked` tinyint(1) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `is_read` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `birthdate` datetime NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `province` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `postal_code` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rating` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `phone` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  `member_since` datetime NOT NULL,
  `last_connection` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `lastname`, `username`, `gender`, `birthdate`, `country`, `province`, `address`, `postal_code`, `description`, `profile_picture`, `rating`, `status`, `phone`, `email`, `password`, `role`, `member_since`, `last_connection`) VALUES
(1, 'Fernando', 'Alonso', 'ElNano', 'Man', '1991-07-01 10:32:19', 'Spain', 'Asturias', 'Calle Nano 33', '53033', 'Test description', 'default_image.png', 0, 1, '633974333', 'nano@gmail.com', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 1, '2009-02-21 15:33:35', '1944-10-08 17:02:22'),
(2, 'Carlos', 'Sainz', 'carlossainz', 'Man', '1938-12-02 21:42:46', 'Spain', 'Madrid', 'Calle Sainz 55', '53055', 'Test description', 'default_image.png', 0, 1, '655974455', 'sainz@gmail.com', 'c6f3ac57944a531490cd39902d0f777715fd005efac9a30622d5f5205e7f6894', 0, '1967-10-10 07:48:51', '1956-02-04 00:41:53');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
