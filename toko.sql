-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2016 at 03:46 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` tinyint(1) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `due_date` datetime NOT NULL,
  `status` enum('paid','unpaid','canceled','expired') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `date`, `due_date`, `status`) VALUES
(7, '2016-10-07 17:04:06', '2016-10-08 17:04:06', 'unpaid'),
(8, '2016-10-08 05:29:43', '2016-10-09 05:29:43', 'unpaid'),
(9, '2016-10-08 17:54:58', '2016-10-09 17:54:58', 'unpaid'),
(10, '2016-10-08 18:18:11', '2016-10-09 18:18:11', 'unpaid'),
(11, '2016-10-14 04:45:07', '2016-10-15 04:45:07', 'unpaid'),
(12, '2016-10-14 12:10:13', '2016-10-15 12:10:13', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `invoice_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `qty` int(3) NOT NULL,
  `price` int(9) NOT NULL,
  `options` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `product_id`, `product_name`, `qty`, `price`, `options`) VALUES
(1, 1, 1, 'Baju', 1, 79000, ''),
(2, 1, 3, 'Topi', 1, 80000, ''),
(3, 2, 5, 'Dasi', 1, 77500, ''),
(4, 3, 1, 'Baju', 1, 79000, ''),
(5, 3, 2, 'Sandal Casual', 1, 35000, ''),
(6, 4, 2, 'Sandal Casual', 1, 35000, ''),
(7, 5, 2, 'Sandal Casual', 1, 35000, ''),
(8, 6, 1, 'Baju', 1, 79000, ''),
(9, 6, 2, 'Sandal Casual', 1, 35000, ''),
(10, 6, 3, 'Topi', 1, 80000, ''),
(11, 6, 4, 'Sepatu', 1, 240000, ''),
(12, 6, 5, 'Dasi', 1, 77500, ''),
(13, 6, 6, 'Celana Panjang', 1, 200000, ''),
(14, 6, 7, 'Celana Pendek', 1, 150000, ''),
(15, 6, 8, 'Sepatu Futsal', 1, 350000, ''),
(16, 7, 1, 'Baju', 1, 79000, ''),
(17, 7, 2, 'Sandal Casual', 1, 35000, ''),
(18, 7, 3, 'Topi', 1, 80000, ''),
(19, 7, 8, 'Sepatu Futsal', 1, 350000, ''),
(20, 8, 1, 'Baju', 1, 79000, ''),
(21, 8, 2, 'Sandal Casual', 1, 35000, ''),
(22, 10, 1, 'Baju', 1, 79000, ''),
(23, 10, 2, 'Sandal Casual', 1, 35000, ''),
(24, 10, 3, 'Topi', 1, 80000, ''),
(25, 10, 4, 'Kaos', 1, 50000, ''),
(26, 11, 1, 'Baju', 1, 79000, ''),
(27, 11, 2, 'Sandal Casual', 1, 35000, ''),
(28, 11, 3, 'Topi', 1, 80000, ''),
(29, 12, 1, 'Baju', 1, 79000, ''),
(30, 12, 2, 'Sandal Casual', 1, 35000, '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` int(9) NOT NULL,
  `stock` int(3) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `image`) VALUES
(1, 'Baju', 'Baju Kemeja', 79000, 5, '542.jpg'),
(2, 'Sandal Casual', 'Sandal Jepit Casual', 35000, 10, '312618_011.jpg'),
(3, 'Topi', 'Topi Casual', 80000, 12, '91qz+oNEDIL._SL1500__.jpg'),
(4, 'Kaos', 'Kaos Inwepo', 50000, 1, 'kaos.png'),
(5, 'Dasi', 'Dasi Formal', 77500, 1, 'Platinum-Ties-Mens-Red-Power-Tie-Necktie-P14034714.jpg'),
(6, 'Celana Panjang', 'Chino', 200000, 3, 'celana_panjang.jpg'),
(7, 'Celana Pendek', 'Jeans', 150000, 4, 'celana_pendek.jpg'),
(8, 'Sepatu Futsal', 'Specs', 350000, 1, 'sepatu_futsal.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `toko_sessions`
--

CREATE TABLE `toko_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko_sessions`
--

INSERT INTO `toko_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('8fd19afdc7a3a4683d90038351e6574e', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36', 1478918330, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `group`) VALUES
(1, 'admin', 'inwepo@gmail.com', 'admin', 1),
(12, 'yunan', 'yunan@gmail.com', 'yunan', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toko_sessions`
--
ALTER TABLE `toko_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
