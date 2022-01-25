-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 05:52 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `code`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(9, 'sd', 'dsd', '   fd     ', '', '2022-01-22 19:36:24', '2022-01-22 19:37:09'),
(10, 'fdg', 'ghfjgh', '        gvgh', 'Active', '2022-01-24 12:43:20', '2022-01-24 12:43:20'),
(11, 'jhgjy', 'hbh', '        hjgjh', 'Inactive', '2022-01-24 12:45:10', '2022-01-24 12:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `mobile`, `email`, `address`, `status`, `created_at`, `updated_at`) VALUES
(6, 'qqqq', 'qqqqq', 'qq@q', 'qqqq', '', '2022-01-25 14:33:52', '2022-01-25 15:17:33'),
(7, 'qqqq', 'ww', 'ww@ww', 'ww', 'Active', '2022-01-25 14:37:36', '2022-01-25 14:37:36'),
(8, 'da', 'ada', 'ada2@ad', 'asa', 'Active', '2022-01-25 14:44:02', '2022-01-25 14:44:02'),
(9, 'mjb', 'hb', 'farhana@gmail.com', 'bh', 'Active', '2022-01-25 14:54:51', '2022-01-25 14:54:51'),
(10, 'tttt', 'jb', 'farhana.ht@gmail.com', 'hb', 'Active', '2022-01-25 15:10:02', '2022-01-25 15:10:02'),
(11, 'ttt', 'tttt', 'dftamana@gmail.com', 'ttttttttttt', '', '2022-01-25 15:10:32', '2022-01-25 15:14:15'),
(12, 'asdwasdad', 'sdad', 'ada2@ad', 'ada', 'Active', '2022-01-25 15:17:55', '2022-01-25 15:17:55'),
(13, 'fdf', '242343', '2018200000036@seu.edu.bd', 'dd', 'Inactive', '2022-01-25 16:50:16', '2022-01-25 16:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `catagory` varchar(255) NOT NULL,
  `stock` varchar(255) NOT NULL,
  `purchase_price` varchar(255) NOT NULL,
  `sell_price` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `catagory`, `stock`, `purchase_price`, `sell_price`, `status`, `created_at`, `updated_at`) VALUES
(2, '7', 'dsd', 'gvgh', 'jbj', 'hh', '', '2022-01-21 10:30:02', '2022-01-25 15:36:22'),
(3, '7', '1', 'hhvg', '', '7', 'Active', '2022-01-21 10:32:26', '2022-01-21 10:32:26'),
(4, '7', '1', 'hhvg', '', '7', 'Active', '2022-01-21 10:32:54', '2022-01-21 10:32:54'),
(5, '7', '1', 'hhvg', '', '7', 'Active', '2022-01-21 10:34:42', '2022-01-21 10:34:42'),
(6, 'jk', 'rrrrlkjhgfdfghjk', 'gvgh', 'hhj', 'dfsfd', 'Active', '2022-01-21 10:43:13', '2022-01-25 13:31:35'),
(7, 'jbj', 'rrrrlkjhgfdfghjk', 'nhbb', 'hh', 'vv', 'Active', '2022-01-25 09:43:11', '2022-01-25 10:14:50'),
(8, 'Fahana Habib Tamanna', 'rrrrlkjhgfdfghjk', 'nmb', 'nmb nmb nmb', 'nmbmnbmn', 'Active', '2022-01-25 13:39:35', '2022-01-25 13:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `mobile`, `email`, `address`, `status`, `created_at`, `updated_at`) VALUES
(2, 'fsf', 'sfsf', 'gg@df.fs', 'gg', 'Active', '2022-01-22 19:37:53', '2022-01-22 19:37:53'),
(3, 'bhb', 'nbn', 'nnbh@gf.hg', 'jbj', 'Active', '2022-01-25 14:32:45', '2022-01-25 14:32:45'),
(4, 'hvgh', 'nvn', 'farhana.ht@gmail.com', 'gfrdrtsyrer', '', '2022-01-25 15:34:36', '2022-01-25 15:34:36'),
(5, 'hhjvh', '242343', 'farhana.ht@gmail.com', 'fdfgdgfhjj', 'Inactive', '2022-01-25 15:37:21', '2022-01-25 15:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fahana Habib Tamanna', '', '123', 'Active', '2022-01-20 08:04:15', '2022-01-20 08:04:15'),
(2, 'Fahana Habib Tamanna', 'tamanna@gmail.com', '123', 'Active', '2022-01-20 08:13:10', '2022-01-20 08:13:10'),
(3, '', 'bvagd@ggf.sd', '123', 'Active', '2022-01-20 08:47:01', '2022-01-20 08:47:01'),
(4, '', '', '', 'Active', '2022-01-20 19:18:47', '2022-01-20 19:18:47'),
(5, '', '', '', 'Active', '2022-01-22 17:54:02', '2022-01-22 17:54:02'),
(6, '', '', '', 'Active', '2022-01-22 19:17:56', '2022-01-22 19:17:56'),
(7, '', '', '', 'Active', '2022-01-24 09:45:34', '2022-01-24 09:45:34'),
(8, '', '', '', 'Active', '2022-01-24 12:48:21', '2022-01-24 12:48:21'),
(9, '', '', '', 'Active', '2022-01-24 12:48:30', '2022-01-24 12:48:30'),
(10, '', 'tamanna@gmail.com', '123', 'Active', '2022-01-24 12:53:08', '2022-01-24 12:53:08'),
(11, '', 'tamanna@gmail.com', '123', 'Active', '2022-01-25 07:19:18', '2022-01-25 07:19:18'),
(12, 'roksana', 'roksana@gmail.com', '123', 'Active', '2022-01-25 07:56:46', '2022-01-25 07:56:46'),
(13, '', 'roksana@gmail.com', '123', 'Active', '2022-01-25 08:00:43', '2022-01-25 08:00:43'),
(14, 'Fahana Habib Tamanna', 'tamanna@gmail.com', '123', 'Active', '2022-01-25 09:26:21', '2022-01-25 09:26:21'),
(15, '', 'tamanna@gmail.com', '123', 'Active', '2022-01-25 09:26:39', '2022-01-25 09:26:39'),
(16, '', '', '', 'Active', '2022-01-25 15:18:49', '2022-01-25 15:18:49'),
(17, '', 'tamanna@gmail.com', '123', 'Active', '2022-01-25 16:10:46', '2022-01-25 16:10:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
