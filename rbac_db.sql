-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 18, 2026 at 11:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rbac_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`) VALUES
(1, 'pavan@gmail.com', '$2a$10$DO1DnNTQgKDX5km5yJ2WP.oFS1Qvg4ejgNVB0OWl3AQPqWPLt3hDS', 'pavan'),
(2, 'admin@gmail.com', '$2a$10$44YyH0Dd4f3Saob71zEvV.HXZf3t1k6NGv1yFEFgXNgIA/97SgkHi', 'admin'),
(3, 'cor@gmail.com', '$2a$10$TsqtWTUfSho3ILQXF8Zamu1aCNFmaVEqW0f6IGyOqYiE9/1AuN.T2', 'Cordinator'),
(4, 'eng@gmail.com', '$2a$10$O/T8NOTrYwUdxIcnH6zFOOsgKgC2polt97DbCWlol9ISZ8eI61DEG', 'Engineer'),
(5, 'dra@gmail.com', '$2a$10$UYdcZ3dsOQfoAQzP./iYV.g7c9ouvHo5vUmZEzOIXf1oOoqJzMuAa', 'Drafter'),
(6, 'finl@gmail.com', '$2a$10$aKqJum7THdCFwZTK/AN3uumHmB1GzPnh.I/Bfn2/cs/qjvy7vyUDK', 'FInalizer'),
(7, 'sam@gmail.com', '$2a$10$38OLI71dzeROf9eoesxlp.qPMmA550Rzy4Sfr6i1uEwg3Djm0xSgu', 'Sam'),
(8, 'sam1@gmail.com', '$2a$10$qwYx5a9yg86CZQ57APK4Le.FVn2icVtcVcIunJSZZmbVp4lNSPTX2', 'Sam1'),
(9, 'sam2@gmail.com', '$2a$10$3SlNj6pcuqzvQD1DFtn/U.opKfWRRF/FmJnNTleP3.HipVzy0w56a', 'Sam2'),
(10, 'sam3@gmail.com', '$2a$10$/QHSmcEI2XkhDtfzGpEUceYGQ8MWEIWoYfLcvfqXQppiC6VoxbVbe', '3'),
(11, 'haj@gmail.com', '$2a$10$GP4Wo0POINAe4mx2RrkHo.djH6IsiuCsc44t9Do4.51Kuud27pWV6', 'Haj');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `roles` enum('ADMIN','COORDINATOR','DRAFTER','ENGINEER','FINALIZER') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `roles`) VALUES
(1, 'ADMIN'),
(2, 'ADMIN'),
(3, 'COORDINATOR'),
(4, 'ENGINEER'),
(5, 'DRAFTER'),
(6, 'FINALIZER'),
(7, 'FINALIZER'),
(8, 'FINALIZER'),
(9, 'FINALIZER'),
(10, 'FINALIZER'),
(11, 'FINALIZER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD KEY `FKhfh9dx7w3ubf1co1vdev94g3f` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
