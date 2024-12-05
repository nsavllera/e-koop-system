-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 09:59 AM
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
-- Database: `inventory_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Art Supplies'),
(2, 'Books'),
(3, 'SnacksAndBeverages'),
(4, 'Stationery'),
(5, 'UniformsAndApparel');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) UNSIGNED NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `buy_price` decimal(25,2) DEFAULT NULL,
  `sale_price` decimal(25,2) NOT NULL,
  `categorie_id` int(11) UNSIGNED NOT NULL,
  `media_id` int(11) DEFAULT 0,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `quantity`, `buy_price`, `sale_price`, `categorie_id`, `media_id`, `date`) VALUES
(1, 'drawingpaper', '150', 1.50, 2.00, 1, 0, '2024-05-25 15:52:31'),
(2, 'sketchbook', '65', 8.80, 10.50, 1, 0, '2024-05-25 15:52:31'),
(3, 'coloredpencils', '100', 8.90, 12.40, 1, 0, '2024-05-25 15:52:31'),
(4, 'crayons', '100', 7.30, 9.90, 1, 0, '2024-05-25 15:52:31'),
(5, 'brush', '100', 1.59, 2.30, 1, 0, '2024-05-25 15:52:31'),
(6, 'workbook', '200', 10.90, 12.90, 2, 0, '2024-05-25 15:54:56'),
(7, 'notebook', '200', 2.51, 3.00, 2, 0, '2024-05-25 15:54:56'),
(8, 'planner', '100', 9.65, 15.00, 2, 0, '2024-05-25 15:54:56'),
(9, 'exercisebook', '200', 1.50, 1.80, 2, 0, '2024-05-25 15:54:56'),
(10, 'dictionary', '50', 21.52, 30.00, 2, 0, '2024-05-25 15:54:56'),
(11, 'cookies', '500', 0.30, 0.50, 3, 0, '2024-05-25 15:57:08'),
(12, 'candy', '500', 0.05, 0.10, 3, 0, '2024-05-25 15:57:08'),
(13, 'snacks', '500', 0.40, 0.60, 3, 0, '2024-05-25 15:57:08'),
(14, 'juices', '500', 1.00, 1.30, 3, 0, '2024-05-25 15:57:08'),
(15, 'drinkingwater', '1000', 0.80, 1.00, 3, 0, '2024-05-25 15:57:08'),
(16, 'pens', '300', 0.80, 1.30, 4, 0, '2024-05-25 15:57:41'),
(17, 'pencils', '300', 0.50, 0.80, 4, 0, '2024-05-25 15:57:41'),
(18, 'erasers', '300', 0.40, 0.60, 4, 0, '2024-05-25 15:57:41'),
(19, 'rulers', '300', 0.50, 0.70, 4, 0, '2024-05-25 15:57:41'),
(20, 'protractors', '300', 1.80, 2.30, 4, 0, '2024-05-25 15:57:41'),
(21, 'school uniforms', '100', 40.00, 55.00, 5, 0, '2024-05-25 15:58:05'),
(22, 'cocurricular uniforms', '100', 150.00, 180.00, 5, 0, '2024-05-25 15:58:05'),
(23, 'sportswear', '200', 25.00, 30.00, 5, 0, '2024-05-25 15:58:05'),
(24, 'shoes', '150', 30.00, 40.00, 5, 0, '2024-05-25 15:58:05'),
(25, 'socks', '150', 3.00, 5.00, 5, 0, '2024-05-25 15:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL,
  `image` varchar(255) DEFAULT 'no_image.jpg',
  `status` int(1) NOT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `user_level`, `image`, `status`, `last_login`) VALUES
(1, 'Serena', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 1, 'no_image.png', 1, '2024-05-20 07:50:08'),
(2, 'Aina', 'special', 'ba36b97a41e7faf742ab09bf88405ac04f99599a', 2, 'no_image.png', 1, '2024-05-20 09:09:20'),
(3, 'Wana', 'user', '12dea96fec20593566ab75692c9949596833adc9', 3, 'no_image.png', 1, '2024-05-20 09:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(150) NOT NULL,
  `group_level` int(11) NOT NULL,
  `group_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `group_name`, `group_level`, `group_status`) VALUES
(1, 'Admin', 1, 1),
(2, 'special', 2, 1),
(3, 'User', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `categorie_id` (`categorie_id`),
  ADD KEY `media_id` (`media_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_level` (`user_level`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_level` (`group_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_products` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_level`) REFERENCES `user_groups` (`group_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
