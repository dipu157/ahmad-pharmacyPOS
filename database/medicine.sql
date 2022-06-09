-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 09, 2022 at 12:55 PM
-- Server version: 5.7.28-log
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacypos`
--

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` bigint(20) NOT NULL,
  `product_id` varchar(64) DEFAULT NULL,
  `supplier_id` varchar(64) DEFAULT NULL,
  `batch_no` varchar(256) DEFAULT NULL,
  `product_name` varchar(164) DEFAULT NULL,
  `generic_name` varchar(164) DEFAULT NULL,
  `strength` varchar(64) DEFAULT NULL,
  `form` varchar(64) DEFAULT NULL,
  `box_size` varchar(64) DEFAULT NULL,
  `trade_price` varchar(64) DEFAULT NULL,
  `mrp` varchar(64) DEFAULT NULL,
  `box_price` varchar(64) DEFAULT NULL,
  `product_details` varchar(512) DEFAULT NULL,
  `side_effect` varchar(512) DEFAULT NULL,
  `expire_date` varchar(64) DEFAULT NULL,
  `instock` int(128) DEFAULT NULL,
  `w_discount` varchar(128) DEFAULT NULL,
  `product_image` varchar(256) DEFAULT NULL,
  `short_stock` int(128) DEFAULT NULL,
  `favourite` enum('1','0') NOT NULL DEFAULT '0',
  `date` varchar(256) DEFAULT NULL,
  `discount` enum('YES','NO') NOT NULL DEFAULT 'YES',
  `sale_qty` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `product_id`, `supplier_id`, `batch_no`, `product_name`, `generic_name`, `strength`, `form`, `box_size`, `trade_price`, `mrp`, `box_price`, `product_details`, `side_effect`, `expire_date`, `instock`, `w_discount`, `product_image`, `short_stock`, `favourite`, `date`, `discount`, `sale_qty`) VALUES
(7711, 'P24017', '103', '1154517177', 'Avolac 400 ml', 'avolac', '', 'Suspension', '6', '200', '250', '1500.00', NULL, '', '28/11/2029', 0, NULL, 'P24017.png', 2, '1', '1662422400', 'YES', NULL),
(7712, 'P19801', '103', '1154517177', 'Avolac 200 ml', 'avolac', '200', 'Suspension', '6', '100', '140', '840.00', NULL, '', '28/11/2029', 0, NULL, 'P19801.png', 2, '1', '1662422400', 'YES', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7713;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

