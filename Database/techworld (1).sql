-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 11:10 AM
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
  `Cost Price` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`itemID`, `Description`, `Cost Price`) VALUES
(1, 'Cannon EOS', 36000.00),
(2, 'Sony DSLR', 50000.00),
(3, 'Sony DSLR', 50000.00),
(4, 'Olympus DSLR', 80000.00),
(5, 'Titan Model #301', 13000.00),
(6, 'Titan Model #201', 3000.00),
(7, 'HMT Milan', 8000.00),
(8, 'Favre Lueba #111', 18000.00),
(9, 'Raymond', 1500.00),
(10, 'Charles', 1000.00),
(11, 'HXR', 900.00),
(12, 'Pink', 1200.00);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `Firstname` text NOT NULL,
  `Lastname` text NOT NULL,
  `Email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `Firstname`, `Lastname`, `Email`, `password`) VALUES
(1, 'bee', '', '', '14e1b600b1fd579f47433b88e8d85291'),
(2, 'mon', 'fri', '', '5afc27341c9959574b76d9f391916e36'),
(3, 'night', 'morning', '', '5afc27341c9959574b76d9f391916e36'),
(4, 'bee', 'fri', '', '5afc27341c9959574b76d9f391916e36');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(7, 3, 3, 'Added to cart'),
(8, 3, 4, 'Added to cart'),
(9, 3, 5, 'Added to cart'),
(10, 3, 11, 'Added to cart'),
(11, 1, 9, 'Added to cart'),
(12, 1, 2, 'Added to cart'),
(13, 1, 8, 'Added to cart'),
(17, 0, 0, 'Added to cart');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_items`
--
ALTER TABLE `users_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`item_id`),
  ADD KEY `item_id` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_items`
--
ALTER TABLE `users_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
