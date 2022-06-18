-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2022 at 12:24 PM
-- Server version: 5.7.37-log
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genpharma`
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
(1, 'Payment', 'electric bill', 'june bill 2022', 'Cash', '', '', NULL, '5000', 'U392', '1655056800');

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

--
-- Dumping data for table `closing`
--

INSERT INTO `closing` (`id`, `date`, `opening_balance`, `cash_in`, `cash_out`, `cash_in_hand`, `closing_balance`, `adjustment`, `entry_id`) VALUES
(1, '2022/06/13', '100000', '0', '0', '100000', '100000', '0', 'U392');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(128) NOT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'ACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(46, 'C907497', 'Kabirul Haque', NULL, 'm.dipu.it@brbhospital.com', 'Regular', '7762804', '01613003112', 'pallabi', '', NULL, '5', '', '', '1655078400'),
(47, 'C495664', 'kalam', NULL, 'kalam@gmail.com', 'Regular', '9757556', '09123456789', 'dhaka', '', NULL, '7', '', '', '1655164800'),
(48, 'C555966', 'karima', NULL, 'k@kk.com', 'Regular', '6423978', '12456789087', 'fghjjkkh', '', NULL, '10', '', '', '1655164800');

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
(27, 'C907497', '133', '88', '45'),
(28, 'C495664', '223', '223', '0'),
(29, 'C555966', '0', '0', '0');

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
(35, 'U392', '2022/06/06', '1654482033', '0', 'ADMIN', '1'),
(36, 'U392', '2022/06/06', '1654536641', '1654536671', 'ADMIN', ''),
(37, 'U392', '2022/06/10', '1654824843', '0', 'ADMIN', '1'),
(38, 'U392', '2022/06/11', '1654912080', '0', 'ADMIN', '1'),
(39, 'U392', '2022/06/12', '1655043250', '0', 'ADMIN', '1'),
(40, 'U392', '2022/06/13', '1655089733', '0', 'ADMIN', '1'),
(41, 'U392', '2022/06/13', '1655127402', '0', 'ADMIN', '1'),
(42, 'U392', '2022/06/14', '1655223701', '1655223760', 'ADMIN', ''),
(43, 'U392', '2022/06/14', '1655223766', '0', 'ADMIN', '1'),
(44, 'U392', '2022/06/17', '1655471933', '1655472365', 'ADMIN', ''),
(45, 'U392', '2022/06/17', '1655472481', '0', 'ADMIN', '1'),
(46, 'U392', '2022/06/18', '1655520162', '1655522743', 'ADMIN', ''),
(47, 'U409', '2022/06/18', '1655522751', '0', 'ADMIN', '1');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` bigint(20) NOT NULL,
  `product_id` varchar(64) DEFAULT NULL,
  `supplier_id` varchar(64) DEFAULT NULL,
  `batch_no` varchar(256) DEFAULT NULL,
  `product_name` varchar(64) DEFAULT NULL,
  `generic_name` varchar(64) DEFAULT NULL,
  `strength` varchar(64) DEFAULT NULL,
  `form` varchar(64) DEFAULT NULL,
  `box_size` varchar(64) DEFAULT NULL,
  `trade_price` varchar(64) DEFAULT NULL,
  `vat` float NOT NULL DEFAULT '0',
  `mrp` varchar(64) DEFAULT NULL,
  `box_price` varchar(64) DEFAULT NULL,
  `product_details` varchar(512) DEFAULT NULL,
  `side_effect` varchar(512) DEFAULT NULL,
  `expire_date` varchar(64) DEFAULT '09/07/2030',
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

INSERT INTO `medicine` (`id`, `product_id`, `supplier_id`, `batch_no`, `product_name`, `generic_name`, `strength`, `form`, `box_size`, `trade_price`, `vat`, `mrp`, `box_price`, `product_details`, `side_effect`, `expire_date`, `instock`, `w_discount`, `product_image`, `short_stock`, `favourite`, `date`, `discount`, `sale_qty`) VALUES
(386, 'P2416', 'S31018', '712784470', 'Napa Rapid', 'paracetamol', '500 mg', 'Tablet', '270', '0.70', 0.05, '.80', '216.00', NULL, '', '2030-10-19', 700, '10', NULL, 0, '0', NULL, 'YES', '170'),
(387, 'P34459', 'S31018', '822094670', 'Alcet', 'alcetpppp', '200 mg', 'Tablet', '200', '2.80', 0.3, '3', '600.00', NULL, '', '10/07/2030', 700, '10', NULL, 10, '0', NULL, 'YES', '20'),
(388, 'P2466', 'S31018', '619941112', 'Alcet', 'alcet', '500 mg', 'Tablet', '100', '1.20', 0.2, '2.00', '200.00', NULL, '', '2030-10-19', 300, NULL, NULL, 10, '0', NULL, 'YES', NULL),
(389, 'P3843', 'S26841', '1072859147', 'mackjon', 'mackjon', '400 mg', 'Tablet', '200', '8', 0.5, '10', '2000.00', NULL, '', '2030-10-19', 130, '10', NULL, 20, '0', NULL, 'YES', '70'),
(390, 'P24848', 'S28717', '1087108128', 'mackpro', 'mackpro', '400 mg', 'Tablet', '400', '7', 0.4, '10', '4000.00', NULL, '', '2030-10-19', 90, NULL, NULL, 50, '1', NULL, 'YES', '10'),
(391, 'P23237', 'S28717', '586976708', 'jingalaa', 'jingshen', '200 mg', 'Eye Drop', '500', '45', 1, '50', '25000.00', NULL, '', '2030-10-19', 95, NULL, NULL, 32, '1', NULL, 'YES', '5'),
(392, 'P45039', 'S28717', '903909460', 'optimox', 'optithum', '200 ml', 'Eye Drop', '12', '180', 5, '200', '2400.00', NULL, '', '2030-10-19', 93, NULL, NULL, 10, '1', NULL, 'YES', '7'),
(393, 'P21097', 'S36170', '833307845', 'Acipro', 'acipro', '500', 'Tablet', '20', '10', 2, '15', '300.00', NULL, '', '2030-10-19', 10, '10', NULL, 50, '0', NULL, 'YES', NULL),
(394, 'P20708', 'S28717', '955166981', 'acifix', 'acifix', '200', 'Tablet', '200', '15', 1, '20', '4000.00', NULL, '', '2030-10-19', 0, NULL, NULL, 50, '1', NULL, 'YES', NULL),
(395, 'P9988', 'S36170', '763055272', 'Dilriva Unicap DPI', 'na', '0', 'Tablet', '30', '6', 1.04, '7', '210.00', NULL, 'na', '2030-10-19', 0, NULL, NULL, 50, '1', NULL, 'YES', NULL),
(396, 'P9985', 'S36170', '268681783', 'Erasprin', 'erasprin', '75 mg', 'Tablet', '100', '0.43', 0.075, '1', '100.00', NULL, '', '2030-10-19', 0, NULL, NULL, 50, '1', NULL, 'YES', NULL);

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
  `total_amount` varchar(12) NOT NULL,
  `net_payable` varchar(64) DEFAULT NULL,
  `entry_date` varchar(64) DEFAULT NULL,
  `entry_id` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `p_id`, `sid`, `invoice_no`, `pur_date`, `pur_details`, `total_discount`, `total_amount`, `net_payable`, `entry_date`, `entry_id`) VALUES
(142, 'P5893923', 'S31018', '101', '1655078400', '', NULL, '', '1071', '1655056800', 'U392'),
(143, 'P5755713', 'S31018', '102', '1655078400', '', NULL, '', '315', '1655056800', 'U392'),
(144, 'P3741742', 'S31018', '103', '1655078400', '', NULL, '', '882', '1655056800', 'U392'),
(145, 'P8252800', 'S31018', '105', '1655078400', '', NULL, '', '108', '1655056800', 'U392'),
(146, 'P2820423', 'S31018', '111', '1655078400', '', NULL, '', '108', '1655056800', 'U392'),
(147, 'P5999045', 'S31018', '112', '1655078400', '', NULL, '', '120', '1655056800', 'U392'),
(148, 'P3703751', 'S26841', '145', '1655078400', '', NULL, '', '1440', '1655056800', 'U392'),
(149, 'P5054362', 'S28717', '878986', '1655164800', '', NULL, '', '23200', '1655143200', 'U392'),
(150, 'P20467', 'S36170', '874621', '1655424000', '', NULL, '', '95', '1655402400', 'U392'),
(151, 'P9985115', 'S31018', '77', '1655424000', '', NULL, '', '94', '1655402400', 'U392'),
(152, 'P1567077', 'S26841', '587425', '1655510400', '', '0', '425', '385', '1655488800', 'U409'),
(153, 'P1779352', 'S26841', '852', '1655510400', '', '0', '595', '539', '1655488800', 'U409'),
(154, 'P5796348', 'S31018', '4444', '1655510400', '', '12', '140', '128', '1655488800', 'U409');

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
(262, 'P5893923', 'P2416', 'S31018', '500', '0.70', NULL, '1718215200', '315'),
(263, 'P5893923', 'P34459', 'S31018', '300', '2.80', NULL, '-55778652100', '756'),
(264, 'P5755713', 'P2416', 'S31018', '100', '0.70', NULL, '1718215200', '63'),
(265, 'P5755713', 'P34459', 'S31018', '100', '2.80', NULL, '-55778652100', '252'),
(266, 'P3741742', 'P2416', 'S31018', '200', '0.70', NULL, '1718215200', '126'),
(267, 'P3741742', 'P34459', 'S31018', '300', '2.80', NULL, '-55778652100', '756'),
(268, 'P8252800', 'P2466', 'S31018', '100', '1.20', NULL, '1918576800', '108'),
(269, 'P2820423', 'P2466', 'S31018', '100', '1.20', NULL, '1918576800', '108'),
(270, 'P5999045', 'P2466', 'S31018', '100', '1.20', NULL, '1918576800', '120'),
(271, 'P3703751', 'P3843', 'S26841', '200', '8', NULL, '1918576800', '1440'),
(272, 'P5054362', 'P24848', 'S28717', '100', '7', NULL, '1918576800', '700'),
(273, 'P5054362', 'P23237', 'S28717', '100', '45', NULL, '1918576800', '4500'),
(274, 'P5054362', 'P45039', 'S28717', '100', '180', NULL, '1918576800', '18000'),
(275, 'P20467', 'P21097', 'S36170', '10', '10', NULL, '1918576800', '95'),
(276, 'P9985115', 'P2416', 'S31018', '70', '0.70', NULL, '1918576800', '44'),
(277, 'P9985115', 'P34459', 'S31018', '20', '2.80', NULL, '1917540000', '50');

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

--
-- Dumping data for table `purchase_return`
--

INSERT INTO `purchase_return` (`id`, `r_id`, `pur_id`, `sid`, `invoice_no`, `return_date`, `total_deduction`) VALUES
(1, 'R318785', 'P5054362', 'S28717', '878986', '1655164800', '4500');

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

--
-- Dumping data for table `purchase_return_details`
--

INSERT INTO `purchase_return_details` (`id`, `r_id`, `pur_id`, `supp_id`, `mid`, `return_qty`, `deduction_amount`) VALUES
(1, 'R318785', 'P5054362', 'S28717', 'P23237', '100', '4500');

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
(1, 'S1287886', 'WalkIn', '0', '24', '24', '0', '11897795', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655132557'),
(2, 'S9040224', 'C907497', '2', '38', '38', '0', '41140238', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655135201'),
(3, 'S6692848', 'WalkIn', '0', '100', '100', '0', '48139785', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655135447'),
(4, 'S7431329', 'WalkIn', '0', '200', '100', '100', '22147291', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655135837'),
(5, 'S5786173', 'WalkIn', '0', '116', '116', '0', '33796486', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655136159'),
(6, 'S6556137', 'WalkIn', '0', '8', '8', '0', '15238215', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655136199'),
(7, 'S9776845', 'WalkIn', '0', '16', '16', '0', '23337413', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655136413'),
(8, 'S5351212', 'WalkIn', '0', '100', '100', '0', '19633472', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655136514'),
(9, 'S6957504', 'WalkIn', '0', '100', '100', '0', '40583295', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655136594'),
(10, 'S3582127', 'WalkIn', '0', '16', '16', '0', '44326059', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655137792'),
(11, 'S1751923', 'WalkIn', '10', '90', '0', '90', '31424498', '1655056800', '2022-06', 'U392', 'ADMIN', 'Pay', '1655139022'),
(12, 'S656254', 'C495664', '19', '223', '223', '0', '31349512', '1655143200', '2022-06', 'U392', 'ADMIN', 'Pay', '1655224278'),
(13, 'S536323', 'WalkIn', '10', '405', '405', '0', '37653877', '1655143200', '2022-06', 'U392', 'ADMIN', 'Pay', '1655224318'),
(14, 'S8410593', 'C907497', '5', '95', '50', '45', '23796709', '1655143200', '2022-06', 'U392', 'ADMIN', 'Pay', '1655225292'),
(15, 'S6233627', 'WalkIn', '50', '500', '500', '0', '22497904', '1655143200', '2022-06', 'U392', 'ADMIN', 'Pay', '1655225728');

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
(1, 'S1287886', 'P2416', NULL, '30', '', '', '24', '0', NULL),
(2, 'S9040224', 'P2416', NULL, '50', '', '', '38', '2', NULL),
(3, 'S6692848', 'P3843', NULL, '10', '', '', '100', '0', NULL),
(4, 'S7431329', 'P3843', NULL, '20', '', '', '200', '0', NULL),
(5, 'S5786173', 'P2416', NULL, '20', '', '', '16', '0', NULL),
(6, 'S5786173', 'P3843', NULL, '10', '', '', '100', '0', NULL),
(7, 'S6556137', 'P2416', NULL, '10', '', '', '8', '0', NULL),
(8, 'S9776845', 'P2416', NULL, '20', '', '', '16', '0', NULL),
(9, 'S5351212', 'P3843', NULL, '10', '', '', '100', '0', NULL),
(10, 'S6957504', 'P3843', NULL, '10', '', '', '100', '0', NULL),
(11, 'S3582127', 'P2416', NULL, '20', '', '', '16', '0', NULL),
(12, 'S1751923', 'P3843', NULL, '10', '', '', '100', '0', NULL),
(13, 'S656254', 'P34459', NULL, '20', '', '', '55.8', '4.2', NULL),
(14, 'S656254', 'P2416', NULL, '20', '', '', '14.88', '1.12', NULL),
(15, 'S656254', 'P45039', NULL, '1', '', '', '186', '14', NULL),
(16, 'S536323', 'P45039', NULL, '1', '', '', '200', '0', NULL),
(17, 'S536323', 'P23237', NULL, '5', '', '', '250', '0', NULL),
(18, 'S8410593', 'P24848', NULL, '10', '', '', '95', '5', NULL),
(19, 'S6233627', 'P45039', NULL, '5', '', '', '1000', '0', NULL);

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
(1, 'Ahmad Pharma', 'airline.PNG', 'Ahmad Pharma', 'Ahmad  Pharma Bangladesh', 'Genit Bangladesh', '01779883969', 'TK', 'TK', 'ahmadpharma@gmail.com', 'South Banasree, Dhaka-1212.');

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
(84, 'S26841', 'Radiant Pharmaceuticals Ltd', 'm.dipu.it@brbhospital.com', '', '01613003112', 'pallabi', 'S26841.png', '06-13-2022', 'Active'),
(85, 'S31018', 'Beximco pharmaceticals Ltd', 'bex@brbhospital.com', '', '014723625777', 'pp', 'S31018.png', '06-13-2022', 'Active'),
(86, 'S28717', 'ACI pharma', 'aci@brbhospital.com', '', '01613003776', 'pallabi', 'S28717.png', '06-14-2022', 'Active'),
(87, 'S36170', 'Unimed Unihealth Pharmaceuticals Ltd', 'UnimedUnihealth@mail.com', '', '7896541230', '', 'S36170.png', '06-17-2022', 'Active');

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
(69, 'S26841', '2364', '100', '2264'),
(70, 'S31018', '2826', '244', '2582'),
(71, 'S28717', '27700', '0', '27700'),
(72, 'S36170', '95', '0', '95');

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
(45, 'S31018', 'P5893923', '1071', '0', '1071', '06/13/2022'),
(46, 'S31018', 'P5755713', '315', '0', '315', '06/13/2022'),
(47, 'S31018', 'P3741742', '882', '0', '882', '06/13/2022'),
(48, 'S31018', 'P8252800', '108', '0', '108', '06/13/2022'),
(49, 'S31018', 'P2820423', '108', '100', '8', '06/13/2022'),
(50, 'S31018', 'P5999045', '120', '50', '70', '06/13/2022'),
(51, 'S26841', 'P3703751', '1440', '0', '1440', '06/14/2022'),
(52, 'S28717', 'P5054362', '27700', '0', '27700', '06/14/2022'),
(53, 'S36170', 'P20467', '95', '0', '95', '06/17/2022'),
(54, 'S31018', 'P9985115', '94', '94', '0', '06/17/2022'),
(55, 'S26841', 'P1567077', '385', '100', '285', '06/18/2022'),
(56, 'S26841', 'P1779352', '539', '0', '539', '06/18/2022'),
(57, 'S31018', 'P5796348', '128', '0', '128', '');

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
(62, 'S31018', 'P5893923', 'Credit', NULL, NULL, NULL, 'a', '', '0', '06/13/2022'),
(63, 'S31018', 'P5755713', 'Credit', NULL, NULL, NULL, 'a', '', '0', '06/13/2022'),
(64, 'S31018', 'P3741742', 'Credit', NULL, NULL, NULL, 'a', '', '0', '06/13/2022'),
(65, 'S31018', 'P8252800', 'Credit', NULL, NULL, NULL, 'vv', '', '0', '06/13/2022'),
(66, 'S31018', 'P2820423', 'Credit', NULL, NULL, NULL, 'ae', '', '100', '06/13/2022'),
(67, 'S31018', 'P5999045', 'Credit', NULL, NULL, NULL, 'yy', '', '50', '06/13/2022'),
(68, 'S26841', 'P3703751', 'Credit', NULL, NULL, NULL, 'rad', '', '0', '06/14/2022'),
(69, 'S28717', 'P5054362', 'Credit', NULL, NULL, NULL, 'aa', '', '0', '06/14/2022'),
(70, 'S36170', 'P20467', 'Credit', NULL, NULL, NULL, 'jj', '', '0', '06/17/2022'),
(71, 'S31018', 'P9985115', 'Credit', NULL, NULL, NULL, 'ii', '', '94', '06/17/2022'),
(72, 'S26841', 'P1567077', 'Credit', NULL, NULL, NULL, 'rr', '', '100', '06/18/2022'),
(73, 'S26841', 'P1779352', 'Credit', NULL, NULL, NULL, 'yy', '', '0', '06/18/2022'),
(74, 'S31018', 'P5796348', 'Credit', NULL, NULL, NULL, '', '', '0', '');

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
(29, 'U409', 'fateh ahmad', 'fateh@brbhospital.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ADMIN', '01613003999', 'pallabi', NULL, '', 'ACTIVE', '1670284800', '::1'),
(30, 'U427', 'manager', 'manager@gmail.com', 'f35bc30c0ab883785eb8909fe8db729e6e591a9e', 'MANAGER', '1234567890', 'Dhaka', NULL, '', 'ACTIVE', '1670284800', '::1'),
(31, 'U119', 'Sale Man', 'sales@gmail.com', '36242979372ad4ebf65325270a9e9456604241aa', 'SALESMAN', '1234567891', 'Dhaka', NULL, '', 'ACTIVE', '1670284800', '::1'),
(32, 'U288', 'fateh', 't@brbhospital.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ADMIN', '1478523690', 'pallabi', NULL, '', 'ACTIVE', '0', '::1'),
(33, 'U123', 'saleh', 'saleh@mail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'SALESMAN', '0147896352', 'Dhaka', NULL, '', 'ACTIVE', '0', '::1');

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
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `closing`
--
ALTER TABLE `closing`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `customer_ledger`
--
ALTER TABLE `customer_ledger`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

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
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=397;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `ph_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_return_details`
--
ALTER TABLE `purchase_return_details`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `sd_id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `supplier_ledger`
--
ALTER TABLE `supplier_ledger`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `supplier_product`
--
ALTER TABLE `supplier_product`
  MODIFY `sp_id` int(14) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supp_account`
--
ALTER TABLE `supp_account`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `supp_payment`
--
ALTER TABLE `supp_payment`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(14) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
