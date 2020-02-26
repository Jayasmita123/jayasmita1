-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 23, 2019 at 01:19 PM
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
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sl_no` int(11) NOT NULL,
  `name` text NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `q1` text NOT NULL,
  `q2` text NOT NULL,
  `q3` text NOT NULL,
  `q4` text NOT NULL,
  `message` text NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sl_no`, `name`, `email_id`, `phone_number`, `q1`, `q2`, `q3`, `q4`, `message`, `Date`) VALUES
(43, 'edfghjklsd', 're@gmail.com', 7865432789, '4', '2', '1', '3', '', '2019-09-12'),
(44, 'edfghjkl', 'naveennaik55@gmail.com', 9876543210, '4', '2', '1', '3', '', '2019-09-12'),
(45, 'qwerty', 'he@gmail.com', 7654321890, '4', '2', '0', '3', '', '2019-09-12'),
(46, 'asdfgh', 'naveennai55@gmail.com', 9870543210, '1', '2', '1', '4', 'hjhjhj', '2019-09-12'),
(47, 'jhhjhjjk', 'hh@gmail.com', 8765432545, '4', '3', '0', '2', 'r5tyuiok', '2019-09-12'),
(48, 'Radhika', 'radhika@gmail.com', 6789543210, '4', '3', '1', '3', 'asdfghjkl', '2019-09-13'),
(50, 'js', 'radhia@gmail.com', 9876543210, '2', '2', '1', '3', '', '2019-09-13'),
(51, 'Radhika', 'radha@gmail.com', 9876543219, '2', '3', '0', '2', '', '2019-09-13'),
(52, 'amrut', 'amrutullegaddi@gmail.com', 7204350247, '3', '2', '1', '4', 'good', '2019-09-13'),
(53, 'js', 'rdha@gmail.com', 7209350247, '4', '3', '1', '2', 'dcfvbnm,', '2019-09-13'),
(54, 'ju', 'dha@gmail.com', 7204350947, '1', '2', '1', '2', '', '2019-09-13'),
(55, 'Radhika', 'jr@gmail.com', 7294350247, '4', '2', '1', '1', '', '2019-09-13'),
(56, 'Radka', 'rdhia@gmail.com', 7294350247, '3', '4', '0', '2', 'hhhh', '2019-09-13'),
(57, 'arut', 'navaik55@gmail.com', 9876943219, '3', '2', '1', '1', '', '2019-09-13'),
(58, 'Radhika', 'raa@gmail.com', 9988776655, '4', '2', '1', '2', '', '2019-09-13'),
(59, 'dhika', 'radhiia@gmail.com', 6677889900, '2', '4', '0', '4', 'mm', '2019-09-13'),
(60, 'edfghjkl', 'tllegaddi@gmail.com', 9888543210, '2', '4', '0', '2', '', '2019-09-13'),
(61, 'Radhika', 'hm@gmail.com', 9899543219, '4', '2', '1', '2', 'gggggggggggggggggggggggggggggggg', '2019-09-13'),
(62, 'msdhu', 'masdafs@gmail.com', 9516248732, '2', '2', '1', '3', 'hiiii', '2019-09-13'),
(63, 'poo', 'poo@gmai.com', 6789054321, '4', '4', '1', '4', 'hiiiiii', '2019-09-13'),
(64, 'rani', 'r@gmail.com', 9865774141, '3', '3', '1', '3', 'asasas', '2019-09-13'),
(65, 'namrata', 'jayasmita@gmail.com', 7349417493, '1', '3', '1', '1', 'ghjjj', '2019-09-13'),
(67, 'amrut', 'amrutllegaddi2@gmail.com', 7204350248, '4', '4', '1', '4', 'hiiiiii', '2019-09-13'),
(68, 'edfghjkl', 'radhia@gmail.com', 7204350247, '1', '2', '1', '2', '', '2019-09-13'),
(69, 'jt', 'jt@gmail.com', 6789044444, '4', '3', '1', '3', 'cccccc', '2019-09-13'),
(70, 'amrut', 'radhika@gmail.com', 7204350247, '4', '3', '1', '3', '', '2019-09-13'),
(71, 'jaysmita', 'qazxsw@gmail.com', 8595653525, '1', '2', '1', '3', 'fgbgnhj fghgjn', '2019-12-23'),
(72, 'dd', 'sx@gmail.com', 6235147890, '2', '2', '0', '2', 'xfcvfgvbh', '2019-12-23'),
(73, 'fbghg', 'okm@gmail.com', 6655201465, '1', '2', '1', '1', 'sdffbh', '2019-12-23'),
(74, 'frthyhj', 'uhb@gmail.com', 6325874100, '3', '1', '0', '2', 'ccgbgn', '2019-12-23'),
(75, 'sdsgvvn', 'mnjkk@gmail.com', 8523654100, '2', '2', '0', '2', 'dfgj', '2019-12-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sl_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
