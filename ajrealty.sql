-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2020 at 07:54 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajrealty`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajrealty_callcenter`
--

CREATE TABLE `ajrealty_callcenter` (
  `sl_no` int(11) NOT NULL,
  `staff_id` varchar(50) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `customer_id` varchar(50) NOT NULL,
  `property_id` varchar(20) DEFAULT NULL,
  `date` date NOT NULL,
  `next_call_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ajrealty_callcenter`
--

INSERT INTO `ajrealty_callcenter` (`sl_no`, `staff_id`, `staff_name`, `customer_id`, `property_id`, `date`, `next_call_date`) VALUES
(1, 'aj_staff5', 'Call_Centre1', 'aj_customer12', 'sl_ph_1', '2020-01-08', '2020-01-23'),
(2, 'aj_staff5', 'Call_Centre1', 'aj_customer13', 'ls_gdw_1', '2020-01-08', '2020-01-09'),
(3, 'aj_staff5', 'Call_Centre1', 'aj_customer14', 'sl_com_1', '2020-01-08', '2020-01-08'),
(4, 'aj_staff5', 'Call_Centre1', 'aj_customer15', 'pr_fl_1', '2020-01-08', '2020-01-09');

-- --------------------------------------------------------

--
-- Table structure for table `ajrealty_customer`
--

CREATE TABLE `ajrealty_customer` (
  `Sl.No` int(11) NOT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `gender` varchar(15) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `alternative_phone` varchar(15) DEFAULT NULL,
  `residence_phone` varchar(15) DEFAULT NULL,
  `office_phone` varchar(15) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `customer_occupation` varchar(100) NOT NULL,
  `customer_address_line1` varchar(300) NOT NULL,
  `customer_address_line2` varchar(300) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `customer_landmark` varchar(100) NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_district` varchar(50) NOT NULL,
  `customer_state` varchar(50) NOT NULL,
  `customer_country` varchar(50) NOT NULL,
  `customer_pincode` varchar(8) NOT NULL,
  `manager_name` varchar(100) NOT NULL,
  `manager_id` varchar(20) NOT NULL,
  `entry_date` datetime NOT NULL,
  `assigned_manager` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ajrealty_customer`
--

INSERT INTO `ajrealty_customer` (`Sl.No`, `customer_id`, `gender`, `customer_name`, `customer_phone`, `alternative_phone`, `residence_phone`, `office_phone`, `customer_email`, `customer_occupation`, `customer_address_line1`, `customer_address_line2`, `street`, `customer_landmark`, `customer_city`, `customer_district`, `customer_state`, `customer_country`, `customer_pincode`, `manager_name`, `manager_id`, `entry_date`, `assigned_manager`) VALUES
(12, 'aj_customer12', 'Male', 'customer A', '7869455611', '', '', '', 'customer1@gmail.com', 'business', 'ventapur', 'sfdsdf', 'asdsd', 'dzxvfcg', 'Dharwad', 'Dharwad', 'Karnataka', 'India', '580001', 'Manager1', 'aj_staff2', '2020-01-08 14:07:15', NULL),
(13, 'aj_customer13', 'Female', 'Customer B', '7892965158', '', '', '', 'customerB@gmail.com', 'Bussiness', 'fgfh', 'ghjgj', 'ghjhh', 'ghjhbjk', 'Ventapur', 'Uttara Kannada', 'Karnataka', 'India', '581320', 'Manager1', 'aj_staff2', '2020-01-08 14:11:47', NULL),
(14, 'aj_customer14', 'Male', 'Customer C', '7349417493', '', '', '', 'CustomerC@gmail.com', 'Bussiness', 'fdgd', 'zdgf', 'sdgfg', 'fhgvh', 'Dharwad', 'Uttara Kannada', 'Karnataka', 'India', '580001', 'Manager1', 'aj_staff2', '2020-01-08 14:18:26', NULL),
(15, 'aj_customer15', 'Female', 'Customer D', '8888888888', '', '', '', 'customerD@gmail.com', 'Bussiness', 'dvdf', 'fghghhg', 'fhgjh', 'ghgjghj', 'dharwad', 'Haveri district', 'Karnataka', 'India', '580001', 'Manager1', 'aj_staff2', '2020-01-08 14:24:04', NULL),
(16, 'aj_customer16', 'Female', 'yfghggggghjg', '7896541230', '', '', '', 'gh@gmail.com', 'fghg', 'hjvdfvn', 'cv cv cv b', 'dfhgfh, fghgyhb', 'dfvfdv', 'dfvdfv', 'Tengnoupal', 'Manipur', 'India', '581320', 'Manager1', 'aj_staff2', '2020-01-08 17:01:52', NULL),
(17, 'aj_customer57', 'Male', 'rfg', '7425896330', '', '', '', 'trg@gmai.com', 'dvvvvvvvv', 'hjvdfvn', 'cv cv cv b', 'dfhgfh, fghgyhb', 'sdsgfg', 'jkmj', 'Changlang', 'Arunachal Pradesh', 'India', '580001', '', '', '2020-01-16 17:49:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ajrealty_remarks`
--

CREATE TABLE `ajrealty_remarks` (
  `Sl.No` int(11) NOT NULL,
  `customer_id` varchar(1000) DEFAULT NULL,
  `property_id` varchar(20) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `staff_name` varchar(100) DEFAULT NULL,
  `remarks` varchar(1000) NOT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ajrealty_remarks`
--

INSERT INTO `ajrealty_remarks` (`Sl.No`, `customer_id`, `property_id`, `role`, `staff_id`, `staff_name`, `remarks`, `entry_date`) VALUES
(1, 'aj_customer12', NULL, 'receptionist', 'aj_staff6', 'Receptionist2', 'New customer registered and met Manager1 (Manager)', '2020-01-08 14:07:15'),
(2, 'aj_customer12', 'sl_ph_1', 'manager', 'aj_staff2', 'Manager1', 'New customer property details', '2020-01-08 14:09:25'),
(3, 'aj_customer12', 'sl_ph_1', NULL, 'aj_staff3', 'Proprietor1', '', '2020-01-08 14:10:14'),
(4, 'aj_customer13', NULL, 'receptionist', 'aj_staff6', 'Receptionist2', 'New customer registered and met Manager1 (Manager)', '2020-01-08 14:11:47'),
(5, 'aj_customer12', 'sl_ph_1', 'call center', 'aj_staff5', 'Call_Centre1', 'attended customer by call center', '2020-01-08 14:13:32'),
(6, 'aj_customer12', 'sl_ph_1', 'receptionist', 'aj_staff6', 'Receptionist2', 'old customer walkin to meet assigned manager', '2020-01-08 14:13:48'),
(7, 'aj_customer13', 'ls_gdw_1', 'manager', 'aj_staff2', 'Manager1', 'New customer property details', '2020-01-08 14:14:24'),
(8, 'aj_customer12', 'sl_ph_1', 'manager', 'aj_staff2', 'Manager1', 'Verified details and inspected', '2020-01-08 14:16:19'),
(9, 'aj_customer13', 'ls_gdw_1', NULL, 'aj_staff3', 'Proprietor1', '', '2020-01-08 14:17:55'),
(10, 'aj_customer14', NULL, 'receptionist', 'aj_staff6', 'Receptionist2', 'New customer registered and met Manager1 (Manager)', '2020-01-08 14:18:26'),
(11, 'aj_customer15', NULL, 'receptionist', 'aj_staff6', 'Receptionist2', 'New customer registered and met Manager1 (Manager)', '2020-01-08 14:24:04'),
(12, 'aj_customer14', 'sl_com_1', 'manager', 'aj_staff2', 'Manager1', 'New customer property details', '2020-01-08 14:28:31'),
(13, 'aj_customer15', 'pr_fl_1', 'manager', 'aj_staff2', 'Manager1', 'New customer property details', '2020-01-08 14:29:10'),
(14, 'aj_customer14', 'sl_com_1', NULL, 'aj_staff3', 'Proprietor1', '', '2020-01-08 14:29:31'),
(15, 'aj_customer15', 'pr_fl_1', NULL, 'aj_staff3', 'Proprietor1', '', '2020-01-08 14:29:43'),
(16, 'aj_customer15', 'pr_fl_1', 'call center', 'aj_staff5', 'Call_Centre1', 'attended by call center', '2020-01-08 14:31:11'),
(17, 'aj_customer14', 'sl_com_1', 'call center', 'aj_staff5', 'Call_Centre1', ' hii   call center part', '2020-01-08 14:31:38'),
(18, 'aj_customer13', 'ls_gdw_1', 'call center', 'aj_staff5', 'Call_Centre1', 'fgdhfjdghfgdshfdsfdfdsfdsfsf', '2020-01-08 14:32:09'),
(19, 'aj_customer13', 'ls_gdw_1', 'receptionist', 'aj_staff6', 'Receptionist2', 'old customer walkin to meet assigned manager', '2020-01-08 14:34:24'),
(20, 'aj_customer13', 'sl_wh_1', 'manager', 'aj_staff2', 'Manager1', 'old customer walkin and taken their new property details', '2020-01-08 14:36:11'),
(21, 'aj_customer15', 'pr_fl_1', 'receptionist', 'aj_staff6', 'Receptionist2', 'old customer walkin to meet assigned manager', '2020-01-08 14:42:06'),
(22, 'aj_customer15', '_agr_1', 'manager', 'aj_staff2', 'Manager1', 'old customer walkin and taken their new property details', '2020-01-08 14:45:23'),
(23, 'aj_customer15', '_agr_1', NULL, 'aj_staff3', 'Proprietor1', '', '2020-01-08 14:50:25'),
(24, 'aj_customer13', 'ls_gdw_1', 'receptionist', 'aj_staff6', 'Receptionist2', 'old customer walkin to meet assigned manager', '2020-01-08 16:17:00'),
(25, 'aj_customer13', 'ls_gdw_1', 'receptionist', 'aj_staff6', 'Receptionist2', 'old customer walkin to meet assigned manager', '2020-01-08 16:24:37'),
(26, 'aj_customer16', NULL, 'receptionist', 'aj_staff6', 'Receptionist2', 'New customer registered and met Manager1 (Manager)', '2020-01-08 17:01:52'),
(27, 'aj_customer13', 'ls_gdw_1', 'receptionist', 'aj_staff6', 'Receptionist2', 'old customer walkin to meet assigned manager', '2020-01-08 17:20:49'),
(28, 'aj_customer57', 'sl_agr_1', 'receptionist', 'aj_staff6 ', 'rfg', 'added new customer with their property details', '2020-01-16 17:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `ajrealty_staffs`
--

CREATE TABLE `ajrealty_staffs` (
  `Sl.No` int(11) NOT NULL,
  `staff_id` varchar(20) DEFAULT NULL,
  `staff_name` varchar(100) NOT NULL,
  `staff_phone` varchar(13) NOT NULL,
  `staff_alternate_phone` varchar(15) DEFAULT NULL,
  `staff_email` varchar(150) NOT NULL,
  `staff_qualification` varchar(100) NOT NULL,
  `staff_experience` varchar(40) NOT NULL,
  `staff_dob` date NOT NULL,
  `staff_joining_date` date NOT NULL,
  `staff_role` varchar(40) NOT NULL,
  `staff_address_line1` varchar(400) NOT NULL,
  `staff_address_line2` varchar(400) DEFAULT NULL,
  `street` varchar(50) DEFAULT NULL,
  `staff_landmark` varchar(100) NOT NULL,
  `staff_city` varchar(50) NOT NULL,
  `staff_district` varchar(50) NOT NULL,
  `staff_state` varchar(50) NOT NULL,
  `staff_country` varchar(50) NOT NULL,
  `staff_pincode` varchar(6) NOT NULL,
  `staff_leaving_date` datetime DEFAULT NULL,
  `entry_date` datetime NOT NULL,
  `staff_image` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ajrealty_staffs`
--

INSERT INTO `ajrealty_staffs` (`Sl.No`, `staff_id`, `staff_name`, `staff_phone`, `staff_alternate_phone`, `staff_email`, `staff_qualification`, `staff_experience`, `staff_dob`, `staff_joining_date`, `staff_role`, `staff_address_line1`, `staff_address_line2`, `street`, `staff_landmark`, `staff_city`, `staff_district`, `staff_state`, `staff_country`, `staff_pincode`, `staff_leaving_date`, `entry_date`, `staff_image`) VALUES
(2, 'aj_staff2', 'Manager1', '8975643210', '8976543210', 'amruta@gmail.com', 'BE', '2 years', '1993-05-02', '2018-01-01', 'Manager', 'bhus galli', 'mangalwar peth', 'raviwar peth', 'near nagareshwar temple', 'dharwad', 'Dharwad', 'Karnataka', 'India', '580001', NULL, '2019-12-27 03:24:58', 'photos/.brainlift_logo.png'),
(3, 'aj_staff3', 'Proprietor1', '8759643210', '', 'radhika@gmail.com', 'be', '2 year', '1995-09-28', '2018-01-01', 'Propriator', 'shivagiri', '', 'shri nagar', 'shivgiri', 'dharwad', 'Dharwad', 'Karnataka', 'India', '580001', NULL, '2019-12-27 03:30:49', 'photos/.brainlift_logo.png'),
(4, 'aj_staff4', 'Receptionist1', '8888844444', '6523987412', 'vhghu@gmail.com', 'MA', '2 Years', '1990-07-07', '2011-05-05', 'Receptionist ', 'hjvdfvn', 'cv cv cv b', 'hjvdfvn, cv cv cv b', 'dfvfdv', 'dfvdfv', 'Guna', 'Madhya Pradesh', 'India', '580001', NULL, '2019-12-27 04:20:53', 'photos/'),
(5, 'aj_staff5', 'Call_Centre1', '6589213001', '', 'riya@gmail.com', 'iti', '1year', '2005-06-09', '2018-06-06', 'Call Center', 'sfdhhfghhf', 'sdfsdf', 'sdfsd', 'fsfdf', 'dfdsf', 'Gadag', 'Karnataka', 'India', '580001', NULL, '2019-12-28 06:34:21', 'photos/logo.jpg'),
(6, 'aj_staff6', 'Receptionist2', '6874593211', '', 'mina@gmail.com', 'BCom', '2 year', '1994-02-09', '2017-11-18', 'Receptionist', 'sggljkljkl', 'gg', 'gg', 'gfgg', 'ggg', 'Dharwad', 'Karnataka', 'India', '580002', NULL, '2019-12-28 06:37:53', 'photos/logo.jpg'),
(7, 'aj_staff7', 'Manager2', '8765482310', '', 'jayasmita@gmail.com', 'BCom', '2 years', '1995-12-28', '2018-07-01', 'Manager', 'Shrimanth building, 1st cross', '', 'malamaddi road', 'opp sanmati hostel', 'dharwad', 'Dharwad', 'Karnataka', 'India', '580001', NULL, '2020-01-03 05:37:25', 'photos/nav_logo.png'),
(8, 'aj_staff8', 'Call_Centre2', '6798543210', '', 'manoj@gmail.com', 'business', '1 year', '1994-06-03', '2019-02-07', 'Call Center', 'adaki oni', '', 'mangal war peth', 'beside nagareshwar temple', 'dharwad', 'Dharwad', 'Karnataka', 'India', '580001', NULL, '2020-01-03 06:30:50', 'photos/logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `ajrealty_survey`
--

CREATE TABLE `ajrealty_survey` (
  `Sl.No` int(11) NOT NULL,
  `property_id` varchar(20) DEFAULT NULL,
  `customer_id` varchar(20) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `staff_name` varchar(50) NOT NULL,
  `property` varchar(60) NOT NULL,
  `type` varchar(50) NOT NULL,
  `property_type` varchar(50) NOT NULL,
  `owner_name` varchar(80) DEFAULT NULL,
  `owner_phone` varchar(15) DEFAULT NULL,
  `owner_email` varchar(100) DEFAULT NULL,
  `office_phone` varchar(15) DEFAULT NULL,
  `residence_phone` varchar(15) DEFAULT NULL,
  `lease_type` varchar(50) DEFAULT NULL,
  `lease_period` varchar(50) DEFAULT NULL,
  `source` varchar(200) NOT NULL,
  `address1` varchar(400) NOT NULL,
  `address2` varchar(300) DEFAULT NULL,
  `street` varchar(200) DEFAULT NULL,
  `landmark` varchar(100) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `inspected` varchar(10) DEFAULT NULL,
  `listed` varchar(10) DEFAULT NULL,
  `hrr_board` varchar(10) DEFAULT NULL,
  `keys_collected` varchar(10) DEFAULT NULL,
  `website_hosting` varchar(10) DEFAULT NULL,
  `servant_qtrs` varchar(50) DEFAULT NULL,
  `entry_date` datetime NOT NULL,
  `property_status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ajrealty_survey`
--

INSERT INTO `ajrealty_survey` (`Sl.No`, `property_id`, `customer_id`, `staff_id`, `staff_name`, `property`, `type`, `property_type`, `owner_name`, `owner_phone`, `owner_email`, `office_phone`, `residence_phone`, `lease_type`, `lease_period`, `source`, `address1`, `address2`, `street`, `landmark`, `city`, `district`, `state`, `country`, `pincode`, `inspected`, `listed`, `hrr_board`, `keys_collected`, `website_hosting`, `servant_qtrs`, `entry_date`, `property_status`) VALUES
(1, 'sl_ph_1', 'aj_customer12', 'aj_staff2', 'Manager1', 'Residential', 'Sale', 'Pent House', 'customer A', '7869455611', 'customer1@gmail.com', '', '', '', '', 'Company,Quickr,', 'ventapur', 'sfdsdf', 'asdsd', 'dzxvfcg', 'Dharwad', 'Dharwad', 'Karnataka', 'India', '580001', 'No', 'No', 'Yes', 'No', 'No', '', '2020-01-08 14:09:25', 0),
(2, 'ls_gdw_1', 'aj_customer13', 'aj_staff2', 'Manager1', 'Commercial', 'Lease', 'Godown', 'Customer B', '7892965158', 'customerB@gmail.com', '', '', 'Net lease', '5 years', 'Company,Paper,', 'fgfh', 'ghjgj', 'ghjhh', 'ghjhbjk', 'Ventapur', 'Uttara', 'Karnataka', 'India', '581320', 'No', 'No', 'Yes', 'Yes', 'No', '', '2020-01-08 14:14:24', 0),
(3, 'sl_com_1', 'aj_customer14', 'aj_staff2', 'Manager1', 'Land', 'Sale', 'Commercial', 'Customer C', '7349417493', 'CustomerC@gmail.com', '', '', '', '', 'HRR Website,Quickr,', 'fdgd', 'zdgf', 'sdgfg', 'fhgvh', 'Dharwad', 'Uttara', 'Karnataka', 'India', '580001', 'No', 'No', 'No', 'Yes', 'No', '', '2020-01-08 14:28:31', 0),
(4, 'pr_fl_1', 'aj_customer15', 'aj_staff2', 'Manager1', 'Residential', 'Purchase', 'Flat', 'Customer D', '8888888888', 'customerD@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2020-01-08 14:29:10', 0),
(5, 'sl_wh_1', 'aj_customer13', 'aj_staff2', 'Manager1', 'Commercial', 'Sale', 'Warehouse', 'Customer B', '7892965158', 'customerB@gmail.com', '', '', '', '', 'HRR Website,Paper,', 'fgfh', 'ghjgj', 'ghjhh', 'ghjhbjk', 'Ventapur', 'Uttara', 'Karnataka', 'India', '581320', 'No', 'No', 'Yes', 'No', 'Yes', '', '2020-01-08 14:36:11', 0),
(6, '_agr_1', 'aj_customer15', 'aj_staff2', 'Manager1', 'Land', 'Rental', 'Agricultural', 'Customer D', '8888888888', 'customerD@gmail.com', '', '', '', '', 'Paper,', 'dvdf', 'fghghhg', 'fhgjh', 'ghgjghj', 'dharwad', 'Haveri', 'Karnataka', 'India', '580001', 'No', 'No', 'No', 'No', 'No', '', '2020-01-08 14:45:23', 0),
(7, 'sl_agr_1', 'aj_customer57', '', '', 'Land', 'Sale', 'Agricultural', 'rfg', '7425896330', 'trg@gmai.com', '', '', '', '', 'Company,Cold Call,', 'hjvdfvn', 'cv cv cv b', 'dfhgfh, fghgyhb', 'sdsgfg', 'jkmj', 'Changlang', 'Arunachal Pradesh', 'India', '580001', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '575', '2020-01-16 17:49:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ajrealty_survey_table2`
--

CREATE TABLE `ajrealty_survey_table2` (
  `Sl.No` int(11) NOT NULL,
  `property_id` varchar(20) DEFAULT NULL,
  `inspection_person_name` varchar(100) DEFAULT NULL,
  `inspection_person_phone` varchar(15) DEFAULT NULL,
  `inspection_person_email` varchar(100) DEFAULT NULL,
  `building_name` varchar(100) DEFAULT NULL,
  `builders_name` varchar(100) DEFAULT NULL,
  `architect_name` varchar(100) DEFAULT NULL,
  `age_of_building` varchar(15) DEFAULT NULL,
  `built_area` varchar(50) DEFAULT NULL,
  `floors_num` varchar(20) DEFAULT NULL,
  `bedrooms` varchar(20) DEFAULT NULL,
  `rooms` varchar(10) DEFAULT NULL,
  `bathrooms` varchar(20) DEFAULT NULL,
  `flooring` varchar(100) DEFAULT NULL,
  `generator` varchar(10) DEFAULT NULL,
  `furnished` varchar(50) DEFAULT NULL,
  `power_supply` varchar(15) DEFAULT NULL,
  `water_facility` varchar(100) DEFAULT NULL,
  `elevators` varchar(50) DEFAULT NULL,
  `garden/terrace` varchar(100) DEFAULT NULL,
  `car_park` varchar(30) DEFAULT NULL,
  `amenties` varchar(700) DEFAULT NULL,
  `total_flats` varchar(20) DEFAULT NULL,
  `price` varchar(30) DEFAULT NULL,
  `sqft_rate` varchar(50) DEFAULT NULL,
  `land_sqft_rate` varchar(50) DEFAULT NULL,
  `land_area` varchar(50) DEFAULT NULL,
  `maintenance` varchar(50) DEFAULT NULL,
  `deposit` varchar(50) DEFAULT NULL,
  `exclusive_list_from` varchar(50) DEFAULT NULL,
  `exclusive_list_to` varchar(50) DEFAULT NULL,
  `remarks` varchar(1000) DEFAULT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ajrealty_survey_table2`
--

INSERT INTO `ajrealty_survey_table2` (`Sl.No`, `property_id`, `inspection_person_name`, `inspection_person_phone`, `inspection_person_email`, `building_name`, `builders_name`, `architect_name`, `age_of_building`, `built_area`, `floors_num`, `bedrooms`, `rooms`, `bathrooms`, `flooring`, `generator`, `furnished`, `power_supply`, `water_facility`, `elevators`, `garden/terrace`, `car_park`, `amenties`, `total_flats`, `price`, `sqft_rate`, `land_sqft_rate`, `land_area`, `maintenance`, `deposit`, `exclusive_list_from`, `exclusive_list_to`, `remarks`, `entry_date`) VALUES
(1, 'sl_ph_1', '', '', '', 'Home', 'Nam', 'Nam', '2', '1400 sqft', '2', '4', '', '4', 'Tiles', 'No', 'Semi', 'Yes', 'Metro,Tanker,', 'No', 'Both', 'Open', '', '', '2000000', '2000', '', '', '', '', '', '', 'Taken property details', '2020-01-08 14:09:25'),
(2, 'ls_gdw_1', 'Jhjhhfgfy', '', '', 'Krishna', '', '', '5', '2600 sqft', '2', '', '2', '1', 'Tiles', 'No', 'Fully', 'Yes', 'Borewell,Tanker,', 'No', 'Terrace', 'Covered', '', '', '5000000', '2500', '', '', '', '500000', '', '', 'New customer property details', '2020-01-08 14:14:24'),
(3, 'sl_com_1', 'Customer c', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '600000000', '', '2000', '2acre', '', '', '', '', 'Land property details', '2020-01-08 14:28:31'),
(4, 'pr_fl_1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '500000', '5000', '', '', '', '', '', '', 'Customer want to purchase flat', '2020-01-08 14:29:10'),
(5, 'sl_wh_1', '', '', '', 'Janu', '', '', '20', '1400 sqft', '2', '', '2', '1', 'Tiles', 'No', 'Semi', 'Yes', 'Tanker,', 'No', 'Both', 'Open', '', '', '550000000', '3000', '', '', '', '', '', '', 'Old customer given new property details', '2020-01-08 14:36:11'),
(6, '_agr_1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '10000000', '', '10000', '10 acre', '', '', '', '', 'Old customer given land property details for rental', '2020-01-08 14:45:23'),
(7, 'sl_agr_1', 'dfghj', '8888555522', 'sda@gmail.com', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8555555588888', '', '7454356', 'dfdfg', 'fghg', '', '', '', 'dgthyjuh tgtgyuy drfdddddddddddddddddddddddddddd', '2020-01-16 17:49:14');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_manager`
--

CREATE TABLE `assigned_manager` (
  `Sl.No` int(11) NOT NULL,
  `assigned_staff_id` varchar(20) NOT NULL,
  `customer_id` varchar(20) DEFAULT NULL,
  `property_id` varchar(20) DEFAULT NULL,
  `entry_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assigned_manager`
--

INSERT INTO `assigned_manager` (`Sl.No`, `assigned_staff_id`, `customer_id`, `property_id`, `entry_date`) VALUES
(1, 'aj_staff2', 'aj_customer12', 'sl_ph_1', '2020-01-08 14:10:14'),
(2, 'aj_staff2', 'aj_customer13', 'ls_gdw_1', '2020-01-08 14:17:55'),
(3, 'aj_staff2', 'aj_customer14', 'sl_com_1', '2020-01-08 14:29:31'),
(4, 'aj_staff2', 'aj_customer15', 'pr_fl_1', '2020-01-08 14:29:43'),
(5, 'aj_staff7', 'aj_customer15', '_agr_1', '2020-01-08 14:50:25');

-- --------------------------------------------------------

--
-- Table structure for table `notification_status`
--

CREATE TABLE `notification_status` (
  `Sl.No` int(11) NOT NULL,
  `customer_id` varchar(1000) DEFAULT NULL,
  `property_id` varchar(20) DEFAULT NULL,
  `assigned_staff_name` varchar(100) DEFAULT NULL,
  `assigned_staff_id` varchar(20) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `role` varchar(50) NOT NULL,
  `status` int(2) NOT NULL,
  `customer` varchar(20) DEFAULT NULL,
  `entry_date` datetime NOT NULL,
  `remark_from` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification_status`
--

INSERT INTO `notification_status` (`Sl.No`, `customer_id`, `property_id`, `assigned_staff_name`, `assigned_staff_id`, `message`, `role`, `status`, `customer`, `entry_date`, `remark_from`) VALUES
(1, 'aj_customer12', NULL, 'Manager1', 'aj_staff2', 'new customer walkin', 'manager', 1, 'new', '2020-01-08 14:07:15', 'receptionist'),
(2, 'aj_customer12', 'sl_ph_1', NULL, NULL, 'new customer survey details', 'propriator', 1, 'new', '2020-01-08 14:09:25', 'manager'),
(3, 'aj_customer12', 'sl_ph_1', 'Manager1', 'aj_staff2', '', 'Manager', 0, NULL, '2020-01-08 14:10:14', 'Propriator'),
(4, 'aj_customer13', NULL, 'Manager1', 'aj_staff2', 'new customer walkin', 'manager', 1, 'new', '2020-01-08 14:11:47', 'receptionist'),
(5, 'aj_customer12', 'sl_ph_1', 'Call_Centre1', 'aj_staff5', 'Proprietor1(Proprietor) assigned new customers to Call_Centre1(call center)', 'call center', 1, NULL, '2020-01-08 14:12:37', 'propriator'),
(6, 'aj_customer12', 'sl_ph_1', NULL, NULL, 'made call and added remark', 'propriator', 1, NULL, '2020-01-08 14:13:32', 'callcenter'),
(7, 'aj_customer12', 'sl_ph_1', 'Manager1', 'aj_staff2', 'old customer walkin', 'manager', 1, 'old', '2020-01-08 14:13:48', 'receptionist'),
(8, 'aj_customer13', 'ls_gdw_1', NULL, NULL, 'new customer survey details', 'propriator', 1, 'new', '2020-01-08 14:14:24', 'manager'),
(9, 'aj_customer12', 'sl_ph_1', NULL, NULL, 'manager wrote remarks for assigned property', 'propriator', 1, 'old', '2020-01-08 14:16:19', 'manager'),
(10, 'aj_customer13', 'ls_gdw_1', 'Manager1', 'aj_staff2', '', 'Manager', 0, NULL, '2020-01-08 14:17:55', 'Propriator'),
(11, 'aj_customer14', NULL, 'Manager1', 'aj_staff2', 'new customer walkin', 'manager', 1, 'new', '2020-01-08 14:18:26', 'receptionist'),
(12, 'aj_customer15', NULL, 'Manager1', 'aj_staff2', 'new customer walkin', 'manager', 1, 'new', '2020-01-08 14:24:04', 'receptionist'),
(13, 'aj_customer14', 'sl_com_1', NULL, NULL, 'new customer survey details', 'propriator', 1, 'new', '2020-01-08 14:28:31', 'manager'),
(14, 'aj_customer15', 'pr_fl_1', NULL, NULL, 'new customer survey details', 'propriator', 1, 'new', '2020-01-08 14:29:10', 'manager'),
(15, 'aj_customer14', 'sl_com_1', 'Manager1', 'aj_staff2', '', 'Manager', 0, NULL, '2020-01-08 14:29:31', 'Propriator'),
(16, 'aj_customer15', 'pr_fl_1', 'Manager1', 'aj_staff2', '', 'Manager', 0, NULL, '2020-01-08 14:29:43', 'Propriator'),
(17, 'aj_customer13', 'ls_gdw_1', 'Call_Centre1', 'aj_staff5', 'Proprietor1(Proprietor) assigned new customers to Call_Centre1(call center)', 'call center', 1, NULL, '2020-01-08 14:30:23', 'propriator'),
(18, 'aj_customer14', 'sl_com_1', 'Call_Centre1', 'aj_staff5', 'Proprietor1(Proprietor) assigned new customers to Call_Centre1(call center)', 'call center', 1, NULL, '2020-01-08 14:30:23', 'propriator'),
(19, 'aj_customer15', 'pr_fl_1', 'Call_Centre1', 'aj_staff5', 'Proprietor1(Proprietor) assigned new customers to Call_Centre1(call center)', 'call center', 1, NULL, '2020-01-08 14:30:23', 'propriator'),
(20, 'aj_customer15', 'pr_fl_1', NULL, NULL, 'made call and added remark', 'propriator', 0, NULL, '2020-01-08 14:31:11', 'callcenter'),
(21, 'aj_customer14', 'sl_com_1', NULL, NULL, 'made call and added remark', 'propriator', 0, NULL, '2020-01-08 14:31:38', 'callcenter'),
(22, 'aj_customer13', 'ls_gdw_1', NULL, NULL, 'made call and added remark', 'propriator', 1, NULL, '2020-01-08 14:32:09', 'callcenter'),
(23, 'aj_customer13', 'ls_gdw_1', 'Manager1', 'aj_staff2', 'old customer walkin', 'manager', 1, 'old', '2020-01-08 14:34:24', 'receptionist'),
(24, 'aj_customer13', 'sl_wh_1', NULL, NULL, 'old customer new property details', 'propriator', 1, 'new', '2020-01-08 14:36:11', 'manager'),
(25, 'aj_customer15', 'pr_fl_1', 'Manager1', 'aj_staff2', 'old customer walkin', 'manager', 1, 'old', '2020-01-08 14:42:06', 'receptionist'),
(26, 'aj_customer15', '_agr_1', NULL, NULL, 'old customer new property details', 'propriator', 1, 'new', '2020-01-08 14:45:23', 'manager'),
(27, 'aj_customer15', '_agr_1', 'Manager2', 'aj_staff7', '', 'Manager', 0, NULL, '2020-01-08 14:50:25', 'Propriator'),
(28, 'aj_customer13', 'ls_gdw_1', 'Manager1', 'aj_staff2', 'old customer walkin', 'manager', 0, 'old', '2020-01-08 16:17:00', 'receptionist'),
(29, 'aj_customer13', 'ls_gdw_1', 'Manager1', 'aj_staff2', 'old customer walkin', 'manager', 0, 'old', '2020-01-08 16:24:37', 'receptionist'),
(30, 'aj_customer16', NULL, 'Manager1', 'aj_staff2', 'new customer walkin', 'manager', 0, 'new', '2020-01-08 17:01:52', 'receptionist'),
(31, 'aj_customer13', 'ls_gdw_1', 'Manager1', 'aj_staff2', 'old customer walkin', 'manager', 0, 'old', '2020-01-08 17:20:49', 'receptionist'),
(32, 'aj_customer57', 'sl_agr_1', NULL, NULL, 'added new customer and their property details', 'propriator', 0, 'new', '2020-01-16 17:49:14', 'receptionist');

-- --------------------------------------------------------

--
-- Table structure for table `real_estate_login`
--

CREATE TABLE `real_estate_login` (
  `Sl.No` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `role` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `otp` varchar(10) DEFAULT NULL,
  `expiry_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `real_estate_login`
--

INSERT INTO `real_estate_login` (`Sl.No`, `user_id`, `role`, `username`, `password`, `email`, `phone`, `created_date`, `otp`, `expiry_date`) VALUES
(2, 'aj_staff3', 'Proprietor', 'proprietor1', '827ccb0eea8a706c4c34a16891f84e7b', 'radhika@gmail.com', '8759643210', '2019-12-27 03:30:49', NULL, NULL),
(3, 'aj_staff2', 'Manager', 'manager1', '827ccb0eea8a706c4c34a16891f84e7b', 'brainliftstaff2@gmail.com', '8975643210', '2019-12-27 03:11:11', '478615', '2020-01-06 10:46:02'),
(5, 'aj_staff5', 'Call Centre', 'call_centre1', '827ccb0eea8a706c4c34a16891f84e7b', 'riya@gmail.com', '6589213000', '2019-12-28 06:34:21', NULL, NULL),
(6, 'aj_staff6', 'Receptionist', 'recep', '12345', 'mina@gmail.com', '6874593210', '2019-12-28 06:37:53', NULL, NULL),
(7, 'aj_staff7', 'Manager', 'manager2', '827ccb0eea8a706c4c34a16891f84e7b', 'jayasmita@gmail.com', '8765482310', '2020-01-03 05:37:25', NULL, NULL),
(8, 'aj_staff8', 'Call Centre', 'call_centre2', '827ccb0eea8a706c4c34a16891f84e7b', 'manoj@gmail.com', '6798543210', '2020-01-03 06:30:50', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajrealty_callcenter`
--
ALTER TABLE `ajrealty_callcenter`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `ajrealty_customer`
--
ALTER TABLE `ajrealty_customer`
  ADD PRIMARY KEY (`Sl.No`);

--
-- Indexes for table `ajrealty_remarks`
--
ALTER TABLE `ajrealty_remarks`
  ADD PRIMARY KEY (`Sl.No`);

--
-- Indexes for table `ajrealty_staffs`
--
ALTER TABLE `ajrealty_staffs`
  ADD PRIMARY KEY (`Sl.No`);

--
-- Indexes for table `ajrealty_survey`
--
ALTER TABLE `ajrealty_survey`
  ADD PRIMARY KEY (`Sl.No`);

--
-- Indexes for table `ajrealty_survey_table2`
--
ALTER TABLE `ajrealty_survey_table2`
  ADD PRIMARY KEY (`Sl.No`);

--
-- Indexes for table `assigned_manager`
--
ALTER TABLE `assigned_manager`
  ADD PRIMARY KEY (`Sl.No`);

--
-- Indexes for table `notification_status`
--
ALTER TABLE `notification_status`
  ADD PRIMARY KEY (`Sl.No`);

--
-- Indexes for table `real_estate_login`
--
ALTER TABLE `real_estate_login`
  ADD PRIMARY KEY (`Sl.No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajrealty_callcenter`
--
ALTER TABLE `ajrealty_callcenter`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ajrealty_customer`
--
ALTER TABLE `ajrealty_customer`
  MODIFY `Sl.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ajrealty_remarks`
--
ALTER TABLE `ajrealty_remarks`
  MODIFY `Sl.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ajrealty_staffs`
--
ALTER TABLE `ajrealty_staffs`
  MODIFY `Sl.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ajrealty_survey`
--
ALTER TABLE `ajrealty_survey`
  MODIFY `Sl.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ajrealty_survey_table2`
--
ALTER TABLE `ajrealty_survey_table2`
  MODIFY `Sl.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `assigned_manager`
--
ALTER TABLE `assigned_manager`
  MODIFY `Sl.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notification_status`
--
ALTER TABLE `notification_status`
  MODIFY `Sl.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `real_estate_login`
--
ALTER TABLE `real_estate_login`
  MODIFY `Sl.No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
