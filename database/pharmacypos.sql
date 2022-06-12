-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2022 at 02:19 AM
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
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(14) NOT NULL,
  `amount` varchar(64) DEFAULT NULL,
  `due` varchar(64) DEFAULT NULL,
  `paid` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_report`
--

CREATE TABLE `accounts_report` (
  `id` int(14) NOT NULL,
  `transection_type` varchar(128) DEFAULT NULL,
  `transection_name` varchar(128) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `mtype` varchar(128) DEFAULT NULL,
  `cheque` varchar(128) DEFAULT NULL,
  `issuedate` varchar(128) DEFAULT NULL,
  `bankid` varchar(128) DEFAULT NULL,
  `amount` varchar(128) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_report`
--

INSERT INTO `accounts_report` (`id`, `transection_type`, `transection_name`, `description`, `mtype`, `cheque`, `issuedate`, `bankid`, `amount`, `entry_id`, `date`) VALUES
(26, 'Payment', 'dsfsf', 'sdfsdf', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(27, 'Receipt', 'dfgfdgd', 'sdfds', 'Cash', '', '', '1', '1000', 'U392', '1522778400'),
(28, 'Payment', 'fgdfds', 'fgdgfd', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(29, 'Payment', 'fgfdg', 'sdfsd', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(30, 'Payment', 'xfsdf', 'dsfs', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(31, 'Payment', 'fdsfs', 'sfs', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(32, 'Payment', 'fdsfs', 'sfs', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(33, 'Payment', 'fdgdfgd', 'dfssf', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(34, 'Payment', 'fsfs', 'dsfds', 'Cash', '', '', '1', '', 'U392', '1522778400'),
(35, 'Payment', 'ghgf', 'fsd', 'Cash', '', '', '1', NULL, 'U392', '1522778400'),
(36, 'Payment', 'dasda', 'dfdsfs', 'Cash', '', '', '1', NULL, 'U392', '1522778400'),
(37, 'Payment', 'dsadsa', 'asdas', 'Cash', '', '', '1', '1000', 'U392', '1522778400'),
(38, 'Receipt', 'sdfsdfs', 'sdfds', 'Cash', '', '', '1', '1000', 'U392', '1522778400'),
(39, 'Payment', 'fsdfs', 'sdffsd', 'Cash', '', '', '1', '1000', 'U392', '1522778400');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `id` int(11) NOT NULL,
  `name` varchar(333) NOT NULL,
  `email` varchar(333) NOT NULL,
  `contact` varchar(333) NOT NULL,
  `address` varchar(333) NOT NULL,
  `hospital_name` varchar(333) NOT NULL,
  `notes` varchar(333) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(14) NOT NULL,
  `bank_name` varchar(256) DEFAULT NULL,
  `account_name` varchar(256) DEFAULT NULL,
  `account_number` varchar(512) DEFAULT NULL,
  `branch` varchar(512) DEFAULT NULL,
  `signature` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `closing`
--

CREATE TABLE `closing` (
  `id` int(14) NOT NULL,
  `date` varchar(128) DEFAULT NULL,
  `opening_balance` varchar(128) DEFAULT NULL,
  `cash_in` varchar(128) DEFAULT NULL,
  `cash_out` varchar(128) DEFAULT NULL,
  `cash_in_hand` varchar(128) DEFAULT NULL,
  `closing_balance` varchar(128) DEFAULT NULL,
  `adjustment` varchar(128) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(128) NOT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `status`) VALUES
(1, 'ACI', 'ACTIVE'),
(2, 'Aristopharma', 'ACTIVE'),
(3, 'Global', 'ACTIVE'),
(4, 'Beximco', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(14) NOT NULL,
  `c_id` varchar(64) DEFAULT NULL,
  `c_name` varchar(256) DEFAULT NULL,
  `pharmacy_name` varchar(256) DEFAULT NULL,
  `c_email` varchar(256) DEFAULT NULL,
  `c_type` enum('Regular','Wholesale') NOT NULL DEFAULT 'Regular',
  `barcode` varchar(512) DEFAULT NULL,
  `cus_contact` varchar(64) DEFAULT NULL,
  `c_address` varchar(512) DEFAULT NULL,
  `c_note` varchar(512) DEFAULT NULL,
  `c_img` varchar(128) DEFAULT NULL,
  `regular_discount` varchar(64) DEFAULT NULL,
  `target_amount` varchar(64) DEFAULT NULL,
  `target_discount` varchar(64) DEFAULT NULL,
  `entrydate` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `c_id`, `c_name`, `pharmacy_name`, `c_email`, `c_type`, `barcode`, `cus_contact`, `c_address`, `c_note`, `c_img`, `regular_discount`, `target_amount`, `target_discount`, `entrydate`) VALUES
(39, 'C18234336', 'test customer', '', 'test@test.com', 'Regular', '3351359', '01613003112', 'pallabi', '', 'C18234336.png', '5', '', '', '1654560000'),
(40, 'C233279', 'Kabirul Haque', '', 'm.dipu.it@brbhospital.com', 'Regular', '8799889', '01613003113', 'pallabi', '', 'C233279.jpg', '0', '', '0', '1654560000'),
(41, 'C12150346', 'amirul Haque', '', 'dipu.it@brbhospital.com', 'Regular', '3426598', '01613003117', 'pallabi', '', 'C12150346.png', '', '', '', '1654560000'),
(42, 'C628456', 'Maria Khanom', NULL, 't@brbhospital.com', 'Regular', '8036453', '01617003112', 'pallabi', '', 'C628456.jpg', '5', '', '', '1654560000');

-- --------------------------------------------------------

--
-- Table structure for table `customer_ledger`
--

CREATE TABLE `customer_ledger` (
  `id` int(14) NOT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  `total_balance` varchar(64) DEFAULT NULL,
  `total_paid` varchar(64) NOT NULL,
  `total_due` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_ledger`
--

INSERT INTO `customer_ledger` (`id`, `customer_id`, `total_balance`, `total_paid`, `total_due`) VALUES
(20, 'C18234336', '0', '0', '0'),
(21, 'C233279', '30', '30', '0'),
(22, 'C12150346', '0', '0', '0'),
(23, 'C628456', '371', '370', '1');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `contact` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fire_service`
--

CREATE TABLE `fire_service` (
  `id` int(11) NOT NULL,
  `name` varchar(223) NOT NULL,
  `email` varchar(223) NOT NULL,
  `contact` varchar(223) NOT NULL,
  `address` varchar(223) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `contact` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(14) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL,
  `login` varchar(64) DEFAULT NULL,
  `logout` varchar(64) DEFAULT NULL,
  `counter` varchar(64) DEFAULT NULL,
  `status` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `em_id`, `date`, `login`, `logout`, `counter`, `status`) VALUES
(35, 'U392', '2022/06/07', '1654592739', '0', 'ADMIN', '1'),
(36, 'U392', '2022/06/09', '1654771964', '0', 'ADMIN', '1'),
(37, 'U392', '2022/06/11', '1654963816', '0', 'ADMIN', '1'),
(38, 'U392', '2022/06/12', '1654997782', '0', 'ADMIN', '1'),
(39, 'U392', '2022/06/12', '1654997784', '0', 'ADMIN', '1');

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
(7712, 'P19801', '103', '1154517177', 'Avolac 200 ml', 'avolac', '200', 'Suspension', '6', '100', '140', '840.00', NULL, '', '28/11/2029', 0, NULL, 'P19801.png', 2, '1', '1662422400', 'YES', NULL),
(7713, 'P415', '113', '470009343', 'Sergel', 'esomeprazol', '20 mg', 'Tablet', '500', '6.00', '7.00', '3500.00', NULL, '', '09/07/2022', 555, NULL, NULL, 10, '0', NULL, 'YES', '45'),
(7714, 'P32174', '116', '698716953', 'Amoxil', 'Amoxicilin', '200 mg', 'Tablet', '100', '23.8', '25', '2500.00', NULL, '', '09/07/2022', 376, NULL, NULL, 10, '0', NULL, 'YES', '24'),
(7715, 'P11009', '108', '190392434', 'ACIP', 'ACIPHIN', '200 mg', 'Tablet', '200', '10', '12', '2400.00', NULL, '', '08/07/2022', 0, NULL, NULL, 50, '0', NULL, 'YES', NULL),
(7716, 'P22300', '113', '983494269', 'ACIP', 'ACIPHIN', '200 mg', 'Tablet', '200', '10', '12', '2400.00', NULL, '', '08/07/2022', 385, NULL, NULL, 50, '0', NULL, 'YES', '15'),
(7717, 'P29732', '111', '511068260', 'Napa', 'paracetamol', '500 mg', 'Tablet', '500', '1.80', '2.00', '1000.00', NULL, '', '11/06/2022', 0, NULL, NULL, 50, '0', NULL, 'YES', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `id` int(14) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `contact` varchar(256) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(14) NOT NULL,
  `p_id` varchar(64) DEFAULT NULL,
  `sid` varchar(64) DEFAULT NULL,
  `invoice_no` varchar(64) DEFAULT NULL,
  `pur_date` varchar(64) DEFAULT NULL,
  `pur_details` varchar(64) DEFAULT NULL,
  `total_discount` varchar(64) DEFAULT NULL,
  `gtotal_amount` varchar(64) DEFAULT NULL,
  `entry_date` varchar(64) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `p_id`, `sid`, `invoice_no`, `pur_date`, `pur_details`, `total_discount`, `gtotal_amount`, `entry_date`, `entry_id`) VALUES
(1, 'P5496748', '116', '1254', '1654732800', '', NULL, '90', '1654711200', 'U392'),
(2, 'P508423', '116', '101', '1654905600', '', NULL, '4760', '1654884000', 'U392'),
(3, 'P8283408', '113', '102', '1654905600', '', NULL, '6000', '1654884000', 'U392'),
(4, 'P9782391', '116', '103', '1654905600', '', NULL, '2380', '1654884000', 'U392'),
(5, 'P93287', '116', '104', '1654905600', '', NULL, '1190', '1654884000', 'U392'),
(6, 'P399856', '116', '105', '1654905600', '', NULL, '1190', '1654884000', 'U392'),
(7, 'P4349422', '113', '106', '1654905600', '', NULL, '800', '1654884000', 'U392'),
(8, 'P7977993', '113', '107', '1654905600', '', NULL, '800', '1654884000', 'U392');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE `purchase_history` (
  `ph_id` int(14) NOT NULL,
  `pur_id` varchar(128) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `supp_id` varchar(64) DEFAULT NULL,
  `qty` varchar(128) DEFAULT NULL,
  `supplier_price` varchar(128) DEFAULT NULL,
  `discount` varchar(128) DEFAULT NULL,
  `expire_date` varchar(128) DEFAULT NULL,
  `total_amount` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`ph_id`, `pur_id`, `mid`, `supp_id`, `qty`, `supplier_price`, `discount`, `expire_date`, `total_amount`) VALUES
(1, 'P5496748', 'P48026', '116', '50', '1.80', NULL, '1730829600', '90'),
(2, 'P508423', 'P32174', '116', '200', '23.8', NULL, '1662487200', '4760'),
(3, 'P8283408', 'P415', '113', '500', '6.00', NULL, '1662487200', '3000'),
(4, 'P8283408', 'P22300', '113', '300', '10', NULL, '1659808800', '3000'),
(5, 'P9782391', 'P32174', '116', '100', '23.8', NULL, '1662487200', '2380'),
(6, 'P93287', 'P32174', '116', '50', '23.8', NULL, '1662487200', '1190'),
(7, 'P399856', 'P32174', '116', '50', '23.8', NULL, '1662487200', '1190'),
(8, 'P4349422', 'P415', '113', '50', '6.00', NULL, '1662487200', '300'),
(9, 'P4349422', 'P22300', '113', '50', '10', NULL, '1659808800', '500'),
(10, 'P7977993', 'P415', '113', '50', '6.00', NULL, '1662487200', '300'),
(11, 'P7977993', 'P22300', '113', '50', '10', NULL, '1659808800', '500');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `id` int(14) NOT NULL,
  `r_id` varchar(64) DEFAULT NULL,
  `pur_id` varchar(64) DEFAULT NULL,
  `sid` varchar(64) DEFAULT NULL,
  `invoice_no` varchar(128) DEFAULT NULL,
  `return_date` varchar(128) DEFAULT NULL,
  `total_deduction` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return_details`
--

CREATE TABLE `purchase_return_details` (
  `id` int(14) NOT NULL,
  `r_id` varchar(128) DEFAULT NULL,
  `pur_id` varchar(128) DEFAULT NULL,
  `supp_id` varchar(64) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `return_qty` varchar(64) DEFAULT NULL,
  `deduction_amount` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(14) NOT NULL,
  `sale_id` varchar(64) DEFAULT NULL,
  `cus_id` varchar(64) DEFAULT NULL,
  `total_discount` varchar(64) DEFAULT NULL,
  `total_amount` varchar(64) DEFAULT NULL,
  `paid_amount` varchar(64) DEFAULT NULL,
  `due_amount` varchar(64) DEFAULT NULL,
  `invoice_no` varchar(128) DEFAULT NULL,
  `create_date` varchar(128) DEFAULT NULL,
  `monthyear` varchar(64) DEFAULT NULL,
  `entryid` varchar(64) DEFAULT NULL,
  `counter` varchar(64) DEFAULT NULL,
  `pay_status` enum('Hold','Pay') NOT NULL DEFAULT 'Pay',
  `sales_time` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_id`, `cus_id`, `total_discount`, `total_amount`, `paid_amount`, `due_amount`, `invoice_no`, `create_date`, `monthyear`, `entryid`, `counter`, `pay_status`, `sales_time`) VALUES
(1, 'S8804768', 'C233279', '0', '15', '15', '0', '10939954', '1654711200', '2022-06', 'U392', 'ADMIN', 'Pay', '1654772419'),
(2, 'S3674553', 'C233279', '0', '15', '15', '0', '38765857', '1654711200', '2022-06', 'U392', 'ADMIN', 'Pay', '1654772423'),
(3, 'S7497259', 'WalkIn', '0', '315', '315', '0', '29719003', '1654970400', '2022-06', 'U392', 'ADMIN', 'Pay', '1654974386'),
(4, 'S2744169', 'WalkIn', '0', '70', '70', '0', '44265830', '1654970400', '2022-06', 'U392', 'ADMIN', 'Pay', '1654974430'),
(5, 'S7136297', 'WalkIn', '0', '125', '125', '0', '22150708', '1654970400', '2022-06', 'U392', 'ADMIN', 'Pay', '1654975023'),
(6, 'S2060728', 'WalkIn', '0', '50', '50', '0', '42877417', '1654970400', '2022-06', 'U392', 'ADMIN', 'Pay', '1654975043'),
(7, 'S3590961', 'WalkIn', '0', '50', '50', '0', '32984330', '1654970400', '2022-06', 'U392', 'ADMIN', 'Pay', '1654975063'),
(8, 'S5583173', 'WalkIn', '0', '35', '35', '0', '41674569', '1654970400', '2022-06', 'U392', 'ADMIN', 'Pay', '1654975096'),
(9, 'S8377331', 'WalkIn', '0', '60', '60', '0', '47657236', '1654970400', '2022-06', 'U392', 'ADMIN', 'Pay', '1654975233'),
(10, 'S4918610', 'C628456', '20', '371', '370', '1', '13841693', '1654970400', '2022-06', 'U392', 'ADMIN', 'Pay', '1654998916');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `sd_id` int(14) NOT NULL,
  `sale_id` varchar(128) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `cartoon` varchar(128) DEFAULT NULL,
  `qty` varchar(128) DEFAULT NULL,
  `rate` varchar(128) DEFAULT NULL,
  `supp_rate` varchar(128) NOT NULL,
  `total_price` varchar(128) DEFAULT NULL,
  `discount` varchar(128) DEFAULT NULL,
  `total_discount` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`sd_id`, `sale_id`, `mid`, `cartoon`, `qty`, `rate`, `supp_rate`, `total_price`, `discount`, `total_discount`) VALUES
(1, 'S8804768', 'P48026', NULL, '5', '', '', '15', '0', NULL),
(2, 'S3674553', 'P48026', NULL, '5', '', '', '15', '0', NULL),
(3, 'S7497259', 'P22300', NULL, '10', '', '', '120', '0', NULL),
(4, 'S7497259', 'P32174', NULL, '5', '', '', '125', '0', NULL),
(5, 'S7497259', 'P415', NULL, '10', '', '', '70', '0', NULL),
(6, 'S2744169', 'P415', NULL, '10', '', '', '70', '0', NULL),
(7, 'S7136297', 'P32174', NULL, '5', '', '', '125', '0', NULL),
(8, 'S2060728', 'P32174', NULL, '2', '', '', '50', '0', NULL),
(9, 'S3590961', 'P32174', NULL, '2', '', '', '50', '0', NULL),
(10, 'S5583173', 'P415', NULL, '5', '', '', '35', '0', NULL),
(11, 'S8377331', 'P22300', NULL, '5', '', '', '60', '0', NULL),
(12, 'S4918610', 'P415', NULL, '20', '', '', '133', '7', NULL),
(13, 'S4918610', 'P32174', NULL, '10', '', '', '237.5', '12.5', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales_return`
--

CREATE TABLE `sales_return` (
  `id` int(14) NOT NULL,
  `sr_id` varchar(128) DEFAULT NULL,
  `cus_id` varchar(128) DEFAULT NULL,
  `sale_id` varchar(128) DEFAULT NULL,
  `invoice_no` varchar(256) DEFAULT NULL,
  `return_date` varchar(128) DEFAULT NULL,
  `total_deduction` varchar(128) DEFAULT NULL,
  `total_amount` varchar(128) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL,
  `counter` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sales_return_details`
--

CREATE TABLE `sales_return_details` (
  `id` int(14) NOT NULL,
  `sr_id` varchar(128) DEFAULT NULL,
  `mid` varchar(128) DEFAULT NULL,
  `r_qty` varchar(128) DEFAULT NULL,
  `r_total` varchar(128) DEFAULT NULL,
  `r_deduction` varchar(128) DEFAULT NULL,
  `date` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `sitelogo` varchar(128) DEFAULT NULL,
  `sitetitle` varchar(256) DEFAULT NULL,
  `description` text,
  `copyright` varchar(128) DEFAULT NULL,
  `contact` varchar(128) DEFAULT NULL,
  `currency` varchar(128) DEFAULT NULL,
  `symbol` varchar(64) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `sitelogo`, `sitetitle`, `description`, `copyright`, `contact`, `currency`, `symbol`, `email`, `address`) VALUES
(1, 'Ahmad Pharma', 'airline.PNG', 'Ahmad Pharma', 'Ahmad Pharma Bangladesh', 'Genit Bangladesh', '01779883969', 'TK', 'TK', 'ahmad@gmail.com', 'South Banasree');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(14) NOT NULL,
  `s_id` varchar(64) DEFAULT NULL,
  `s_name` varchar(256) DEFAULT NULL,
  `s_email` varchar(256) DEFAULT NULL,
  `s_note` varchar(512) DEFAULT NULL,
  `s_phone` varchar(128) DEFAULT NULL,
  `s_address` varchar(512) NOT NULL,
  `s_img` varchar(256) DEFAULT NULL,
  `entrydate` varchar(128) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `s_id`, `s_name`, `s_email`, `s_note`, `s_phone`, `s_address`, `s_img`, `entrydate`, `status`) VALUES
(74, '102', ' OTHERS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(75, '103', ' ARISTOPHARMA LTD ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(76, '104', ' OPSONIN PHARMA LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(77, '105', ' SUN PHARMACEUTICAL (BANGLADESH) LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(78, '106', ' JAYSON PHARMACEUTICALS LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(79, '107', ' BEACON PHARMACEUTICALS LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(80, '108', ' ACI LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(81, '109', ' ACME LABORATORIES LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(82, '110', ' INCEPTA PHARMACEUTICALS LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(83, '111', ' SQUARE PHARMACEUTICALS LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(84, '112', ' DRUG INTERNATIONAL LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(85, '113', ' HEALTHCARE DISTRIBUTION COMPANY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(86, '114', ' ORION PHARMA LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(87, '115', ' POPULAR PHARMACEUTICALS LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(88, '116', ' BEXIMCO PHARMACEUTICALS LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(89, '117', ' RENATA LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(90, '118', ' THE PEOPLES CARE LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(91, '119', ' ASIA PACIFIC MEDICALS LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(92, '120', ' TRANSCOM DISTRIBUTION COM. LTD (SK+F) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(93, '121', ' ZUELLIG PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(94, '122', ' AIM MEDICAL SERVICES ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(95, '123', ' AMANAT SHAH SURGICALS-3 ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(96, '124', ' AHSAN MEDICAL HALL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(97, '125', ' PHARMACIL LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(98, '126', ' MAYNUL & ALI SURGICAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(99, '127', ' AQUAMARINE DISTRIBUTION LTD. (SANOFI) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(100, '128', ' JBC (JAPAN-BANGLA-CHINA) CORPORATION ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(101, '129', ' CITY OVERSEAS LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(102, '130', ' R. M. S ENTERPRISE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(103, '131', ' BN CORPORATION ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(104, '132', ' JMI SYRINGES & MEDICAL DEVICES LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(105, '133', ' THE IBN SINA PHARMACEUTICAL INDUSTRY LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(106, '134', ' ABC ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(107, '135', ' MAXIM TRADE PVT. LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(108, '136', ' BIOPHARMA LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(109, '137', ' UNIMED & UNIHEALTH MANUFACTURERS LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(110, '138', ' ORION INFUSION LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(111, '139', ' RADIANT PHARMACEUTICALS LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(112, '140', ' NUVISTA CONSUMER HEALTHCARE LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(113, '141', ' General Pharmaceuticals Ltd ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(114, '142', ' THE ALIPH ENTERPRISE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(115, '143', ' PLASMA PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(116, '144', ' M/S. JAHAN PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(117, '145', ' AGLOW INTERNATIONAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(118, '146', ' Lazz pharma Ltd ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(119, '147', ' LABAID SPECIALIZED HOSPITAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(120, '148', ' LILAC (PRIVATE) LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(121, '149', ' AJANTA TRADING CORPORATION ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(122, '150', ' BARISAL SURGICAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(123, '151', ' SWADESH ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(124, '152', ' ABIR PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(125, '153', ' MEDISENSOR TECHNOLOGY INCORPORATED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(126, '154', ' SAMORITA HOSPITAL LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(127, '155', ' HOPE MEDICARE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(128, '156', ' INSTITUTE OF PUBLIC HEALTH (IPH) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(129, '157', ' THE DIAGNOSIS LABORATORY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(130, '158', ' PRODIGY SYNDICATE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(131, '159', ' M. I. INTERNATIONAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(132, '160', ' SPECIAL CARE PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(133, '161', ' HYEIMPEX INTERNATIONAL (PVT.) LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(134, '162', ' KRISH PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(135, '163', ' JANATA TRADERS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(136, '164', ' IN-PATIENT RETURN ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(137, '165', ' Pharmacy ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(138, '166', ' Pharmacy ( Comfort Tower) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(139, '167', ' PATHAN PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(140, '168', ' LAB SCIENCE PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(141, '169', ' LABAID CARDIAC HOSPITAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(142, '170', ' PHARMA PLUS SURGICAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(143, '171', ' AYAN MEDICINE CORNER ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(144, '172', ' Ayan Medicine Corner M ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(145, '173', ' ISMI PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(146, '174', ' DELTA MEDICAL CORPORATION ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(147, '175', ' FRIENDS PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(148, '176', ' SWISS PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(149, '177', ' DHAKA MEDICAL SUPPLY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(150, '178', ' BANGLADESH MEDICAL INSTRUMENTS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(151, '179', ' M/S PROMA ENTERPRISE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(152, '180', ' AQUAMARINE DISTRIBUTION LTD. (Nuvista) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(153, '181', ' COSMO SURGICAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(154, '182', ' BISMILLAH S M INDUSTRIES ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(155, '183', ' Gonosasthya Pharmaceuticals Limited ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(156, '184', ' INTERNATIONAL BRANDS LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(157, '185', ' MEDICAD ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(158, '186', ' SQUARE TOILETRIES LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(159, '187', ' Masumder Pharma ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(160, '188', ' SOCIAL MARKETING COMPANY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(161, '189', ' M/S DELTA MEDICAL CORPORATION ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(162, '190', ' M/S ATIQ SURGICAL & MEDICAL STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(163, '191', ' R.K PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(164, '192', ' CENTRAL SURGICAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(165, '193', ' AMIN DRUG STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(166, '194', ' RAJDHANI PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(167, '195', ' OPSO SALINE LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(168, '196', ' POPULAR INFUSION LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(169, '197', ' ZAS GLOVES & INSTRUMENTS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(170, '198', ' Transcom Distribution Com.Ltd (Novo Nordisk) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(171, '199', ' STAR MEDICAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(172, '200', ' ZUELLING PHARMA (NOVARTIS BANGLADESH LTD.) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(173, '201', ' Transcom Distribution Com.Ltd (Servire) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(174, '202', ' UNIMED LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(175, '203', ' DESH PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(176, '204', ' DELONIX INTERNATIONAL (PVT).LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(177, '205', ' MOHAMMAD ENTERPRIZE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(178, '206', ' M.S SURGICAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(179, '207', ' M/S GAZIPUR MEDICINE CENTRE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(180, '208', ' ASIAN PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(181, '209', ' MEDICO ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(182, '210', ' R.A.INTERNATIONAL TECHNOLOGY LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(183, '211', ' PROVA MEDI CARE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(184, '212', ' BEST ONE PHARMA AND DEPARTMENTAL STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(185, '213', ' ZITU ENTERPRISE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(186, '214', ' THE ACME LABORATORIES LTD. --> ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(187, '215', ' MOHIUDDIN AND BROTHERS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(188, '216', ' FARAZ MEDECINE MART ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(189, '217', ' MASUM PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(190, '218', ' AL-RAJI PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(191, '219', ' M/S  PANNA KAWSER DRUG ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(192, '220', ' JANSIN HEALTH PRODUCTS (Pvt) LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(193, '221', ' SHEBA MEDICAL AGENCY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(194, '222', ' ATIB PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(195, '223', ' ALYMPIA........ ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(196, '224', ' BUSHRA PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(197, '225', ' SOBUJ DRUG HOUSE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(198, '226', ' ABC PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(199, '227', ' PENCIL POINT ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(200, '228', ' SANOFI-AVENTIS BANGLADESH LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(201, '229', ' HAQUE GENERAL STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(202, '230', ' AUDRI TRADE INTERNATIONAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(203, '231', ' ZUELLIG PHARMA (GSK) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(204, '232', ' SABAR DWA STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(205, '233', ' KAMAL BROTHERS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(206, '234', ' INSTITUTE OF PUBLIC HEALTH ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(207, '235', ' BIOMED PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(208, '236', ' GREEN  LIFE HOSPITAL LTD ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(209, '237', ' KASHEM DRUGS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(210, '238', ' NIPRO JMI PHARMA LTD ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(211, '239', ' ZISKA PHARMACEUTICALS LTD ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(212, '240', ' HEALTH CARE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(213, '241', ' COTTON MART INTERNATIONAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(214, '242', ' MADINA PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(215, '243', ' HAQUE MEDICURE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(216, '244', ' ANWER KHAN MODERN HOSPITAL LTD ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(217, '245', ' LABAID PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(218, '246', ' VAM & COMPANY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(219, '247', ' The Green Pharma ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(220, '248', ' UNITED HEALTH CARE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(221, '249', ' SARKER PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(222, '250', ' M/S OHUSHUDHALOY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(223, '251', ' T & T ENTERPRIZE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(224, '252', ' M/S BUSHARA TRDERS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(225, '253', ' M/S MOMTAZ STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(226, '254', ' POLY PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(227, '255', ' MUNDI PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(228, '256', ' R.M.S ENTERPRISE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(229, '257', ' VAI VAI OUSHOD BITAN ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(230, '258', ' M/S. NEAMAT PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(231, '259', ' M/S MAHABUB STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(232, '260', ' PROXIMO HEALTH SOLUCION ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(233, '261', ' ALI PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(234, '262', ' ALIF PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(235, '263', ' IPD PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(236, '264', ' M/S.RAZZAK STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(237, '265', ' AFTAB AGENCY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(238, '266', ' SANOFI BANGLADESH LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(239, '267', ' FUCHSIA HEALTH CARE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(240, '268', ' M/S HASAN STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(241, '269', ' SURGI-GLO HOUSE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(242, '270', ' GAZI MEDICAL HALL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(243, '271', ' INTERNATIONAL AGENCIES (BD.) LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(244, '272', ' M/S. TAPOSH DRUG HOUSE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(245, '273', ' M/S.PANNA KAWSER DRUG ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(246, '274', ' BISMILLAH MEDICAL CARE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(247, '275', ' HAZI GOLAM ROBANNI ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(248, '276', ' B.M.TRADE INTERNATIONAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(249, '277', ' LABMED PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(250, '278', ' M/S.TAPOSH DRUG HOUSE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(251, '279', ' SHEBA PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(252, '280', ' UNITED DRUG STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(253, '281', ' M/S HAFIZ TRADING ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(254, '282', ' G.S.SURGICAL CENTRE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(255, '283', ' FAHAD TRADERS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(256, '284', ' Techno Drugs Ltd ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(257, '285', ' T.S.T ENTERPRISE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(258, '286', ' RADIANT EXPORT IMPORT ENTERPRISE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(259, '287', ' RADIANT BUSINESS CONSORTIUM LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(260, '288', ' S.S CORPORATION ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(261, '289', ' M/S.M.D.CHEMICALS. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(262, '290', ' DUBAI PLAZ ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(263, '291', ' Sabuj Drug House ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(264, '292', ' ABUL KHAIR MILK PRODUCTS LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(265, '293', ' S. N. M TRADING ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(266, '294', ' RAZZAK STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(267, '295', ' ABUL KHAIR & COMPANY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(268, '296', ' S N M TRADING ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(269, '297', ' M/S KAMAL TRADERS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(270, '298', ' INCEPTA HYGIENE AND HOSPICARE LTD ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(271, '299', ' POPULAR HEALTH CARE LTD ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(272, '300', ' Popular Health Care Limited ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(273, '301', ' M/S.MAKBUL STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(274, '302', ' SMART DISTRIBUTION PVT LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(275, '303', ' ANANDA BAZAR ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(276, '304', ' Sylhet Pharma ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(277, '305', ' SYNERGY BIO CARE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(278, '306', ' MEDRX LIFE SCIENCE LTD. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(279, '307', ' M/S ATIQ SURGICAL MEDICAL STORE. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(280, '308', ' ATIQ SURGICAL MEDICAL STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(281, '309', ' HEALTH & HOPE SPECIALIZED HOSPITAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(282, '310', ' NISHAT MONIRA SULTANA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(283, '311', ' COMFORT PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(284, '312', ' HIMEL GENERAL STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(285, '313', ' RABBI PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(286, '314', ' NEW ABIR PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(287, '315', ' G.A COMPANY LTD. (Gaco Pharmaceuticals) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(288, '316', ' ZAS CORPORATION ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(289, '317', ' ZIHAD GENERAL STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(290, '318', ' KAMAL SURGICAL STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(291, '319', ' AKS PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(292, '320', ' AL SAMI DRUG HOUSE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(293, '321', ' SRS TRADE INTERNATIONAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(294, '322', ' RELIANCE SOLUTIONS LIMITED. ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(295, '323', ' BEXIMCO PHARMA (NUVISTA PHARMA LTD.) ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(296, '324', ' ACCESS MEDICAL SERVICES ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(297, '325', ' BROTHERS ENTERPRISE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(298, '326', ' JULPAHAR BANGLADESH ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(299, '327', ' NUVISTA PHARMA LTD ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(300, '328', ' BISMILLAH PHARMACY ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(301, '329', ' LABAID PHARMACEUTICALS LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(302, '330', ' SODESH PHARMA ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(303, '331', ' UNIMED HEALTH CARE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(304, '332', ' S.R SURGICAL ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(305, '333', ' LAZZ PHARMA LTD ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(306, '334', ' MEDINAM ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(307, '335', ' DELTA PHARMA LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(308, '336', ' PACIFIC PHARMACEUTICALS LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(309, '337', ' BIORX LIMITED ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(310, '338', ' BONA ENTERPRISE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(311, '339', ' BISMILLAH STORE ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(312, '340', ' M/S NEXT G ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(313, '341', ' S.A. TRADERS ', NULL, NULL, NULL, 'Dhaka', NULL, NULL, 'Active'),
(314, '342', 'Test supplier', 'testsupp@test.com', '', '0145612314', 'dhaka', 'S35522.png', '06-07-2022', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_ledger`
--

CREATE TABLE `supplier_ledger` (
  `id` int(14) NOT NULL,
  `supplier_id` varchar(256) DEFAULT NULL,
  `total_amount` varchar(256) DEFAULT NULL,
  `total_paid` varchar(256) DEFAULT NULL,
  `total_due` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_ledger`
--

INSERT INTO `supplier_ledger` (`id`, `supplier_id`, `total_amount`, `total_paid`, `total_due`) VALUES
(59, 'S35522', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_product`
--

CREATE TABLE `supplier_product` (
  `sp_id` int(14) NOT NULL,
  `pro_id` varchar(64) DEFAULT NULL,
  `sup_id` varchar(64) DEFAULT NULL,
  `sup_price` varchar(64) DEFAULT NULL,
  `sup_date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supp_account`
--

CREATE TABLE `supp_account` (
  `id` int(14) NOT NULL,
  `supplier_id` varchar(64) DEFAULT NULL,
  `pur_id` varchar(128) DEFAULT NULL,
  `total_amount` varchar(64) DEFAULT NULL,
  `paid_amount` varchar(64) DEFAULT NULL,
  `due_amount` varchar(256) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supp_account`
--

INSERT INTO `supp_account` (`id`, `supplier_id`, `pur_id`, `total_amount`, `paid_amount`, `due_amount`, `date`) VALUES
(1, '116', 'P5496748', '90', '90', '0', '06/09/2022'),
(2, '116', 'P508423', '4760', '2000', '2760', ''),
(3, '113', 'P8283408', '6000', '4000', '2000', '06/11/2022'),
(4, '116', 'P9782391', '2380', '1000', '1380', '06/11/2022'),
(5, '116', 'P93287', '1190', '1000', '190', ''),
(6, '116', 'P399856', '1190', '500', '690', ''),
(7, '113', 'P4349422', '800', '200', '600', ''),
(8, '113', 'P7977993', '800', '500', '300', '');

-- --------------------------------------------------------

--
-- Table structure for table `supp_payment`
--

CREATE TABLE `supp_payment` (
  `id` int(14) NOT NULL,
  `supp_id` varchar(64) DEFAULT NULL,
  `pur_id` varchar(64) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `bank_id` int(14) DEFAULT NULL,
  `cheque_no` varchar(128) DEFAULT NULL,
  `issue_date` varchar(64) DEFAULT NULL,
  `receiver_name` varchar(128) DEFAULT NULL,
  `receiver_contact` varchar(128) DEFAULT NULL,
  `paid_amount` varchar(64) DEFAULT NULL,
  `date` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supp_payment`
--

INSERT INTO `supp_payment` (`id`, `supp_id`, `pur_id`, `type`, `bank_id`, `cheque_no`, `issue_date`, `receiver_name`, `receiver_contact`, `paid_amount`, `date`) VALUES
(1, '116', 'P5496748', 'Cash', NULL, NULL, NULL, 'monir', '', '90', '06/09/2022'),
(2, '116', 'P508423', 'Credit', NULL, NULL, NULL, '', '', '2000', ''),
(3, '113', 'P8283408', 'Credit', NULL, NULL, NULL, 'saleh', 'healthcare', '4000', '06/11/2022'),
(4, '116', 'P9782391', 'Credit', NULL, NULL, NULL, 'bex', '01746554654', '1000', '06/11/2022'),
(5, '116', 'P93287', 'Credit', NULL, NULL, NULL, '', '', '1000', ''),
(6, '116', 'P399856', 'Credit', NULL, NULL, NULL, '', '', '500', ''),
(7, '113', 'P4349422', 'Credit', NULL, NULL, NULL, '', '', '200', ''),
(8, '113', 'P7977993', 'Credit', NULL, NULL, NULL, '', '', '500', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(14) NOT NULL,
  `em_id` varchar(64) DEFAULT NULL,
  `em_name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `em_role` enum('SALESMAN','ADMIN','MANAGER') NOT NULL DEFAULT 'SALESMAN',
  `em_contact` varchar(128) DEFAULT NULL,
  `em_address` varchar(512) DEFAULT NULL,
  `em_image` varchar(256) DEFAULT NULL,
  `em_details` varchar(512) DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE',
  `em_entrydate` varchar(64) DEFAULT NULL,
  `em_ip` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `em_id`, `em_name`, `email`, `password`, `em_role`, `em_contact`, `em_address`, `em_image`, `em_details`, `status`, `em_entrydate`, `em_ip`) VALUES
(24, 'U392', 'nawjesh', 'admin@gmail.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'ADMIN', '01723177901', 'egrvrevge rgret', 'U3921.jpg', 'erer treter r gefgfdfg dfs', 'ACTIVE', '0', '::1'),
(25, 'U134', 'Nawjesh', 'example@example.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'MANAGER', '01723177901', 'Kolabagan', 'U134.jpg', 'Nawjesh jahan soyeb', 'ACTIVE', '0', '::1'),
(26, 'U310', 'Nawjesh', 'nawjeshbd@gmail.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', 'SALESMAN', '01723177901', 'egrvrevge rgret', NULL, 'dfgfdgfdg fdg df', 'ACTIVE', '0', '27.147.206.105');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_report`
--
ALTER TABLE `accounts_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `closing`
--
ALTER TABLE `closing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_ledger`
--
ALTER TABLE `customer_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fire_service`
--
ALTER TABLE `fire_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`sd_id`);

--
-- Indexes for table `sales_return`
--
ALTER TABLE `sales_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_product`
--
ALTER TABLE `supplier_product`
  ADD PRIMARY KEY (`sp_id`);

--
-- Indexes for table `supp_account`
--
ALTER TABLE `supp_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supp_payment`
--
ALTER TABLE `supp_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_report`
--
ALTER TABLE `accounts_report`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `closing`
--
ALTER TABLE `closing`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `customer_ledger`
--
ALTER TABLE `customer_ledger`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7718;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `ph_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sd_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sales_return`
--
ALTER TABLE `sales_return`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_return_details`
--
ALTER TABLE `sales_return_details`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
  MODIFY `sp_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supp_account`
--
ALTER TABLE `supp_account`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supp_payment`
--
ALTER TABLE `supp_payment`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

