-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2020 at 12:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `itemID` int(11) NOT NULL,
  `Description` text NOT NULL,
  `Price` float(15,2) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`itemID`, `Description`, `Price`, `Quantity`) VALUES
(1, 'Cannon EOS', 36000.00, 1),
(2, 'Sony DSLR', 50000.00, 1),
(3, 'Sony DSLR', 50000.00, 1),
(4, 'Olympus DSLR', 80000.00, 1),
(5, 'Titan Model #301', 13000.00, 1),
(6, 'Titan Model #201', 3000.00, 1),
(7, 'HMT Milan', 8000.00, 1),
(8, 'Favre Lueba #111', 18000.00, 1),
(9, 'Raymond', 1500.00, 1),
(10, 'Charles', 1000.00, 1),
(11, 'HXR', 900.00, 1),
(12, 'Pink', 1200.00, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`itemID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
