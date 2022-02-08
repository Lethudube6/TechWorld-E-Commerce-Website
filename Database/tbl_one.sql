-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2020 at 05:02 PM
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
-- Table structure for table `tbl_one`
--

CREATE TABLE `tbl_one` (
  `id` int(11) NOT NULL,
  `Firstname` text NOT NULL,
  `Lastname` text NOT NULL,
  `Email` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_one`
--

INSERT INTO `tbl_one` (`id`, `Firstname`, `Lastname`, `Email`, `password`) VALUES
(5, 'lee', 'laa', 'lee@gmail.com', '5afc27341c9959574b76d9f391916e36'),
(6, 'John', 'Down', 'john@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(7, 'Tom', 'Up ', 'tom@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(8, 'Leon', 'Edwards', 'leon@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(9, 'Jordan', 'Pickford', 'jordan@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(10, 'Tony', 'Golf', 'tony@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(11, 'Umi', 'Reed', 'umi@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(12, 'Edwards', 'Hopkins', 'edwards@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(13, 'Ed', 'Reed', 'ed@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(14, 'Bobby ', 'Lash', 'bobby@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(15, 'Peyton', 'Barber', 'peyton@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(16, 'Russell', 'Wilson', 'russell@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(17, 'Colin', 'Meet', 'colin@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(18, 'David', 'Bowie', 'david@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(19, 'Gareth', 'Smith', 'gareth@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(20, 'James', 'Reed', 'james@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(21, 'Dave', 'Rennies', 'dave@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(22, 'Dominic ', 'Lewis', 'dominic@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(23, 'Joan', 'Mir', 'joan@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(24, 'Calvin', 'Lewis', 'calvin@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(25, 'Mike', 'Kean', 'mike@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(26, 'Harry', 'Kane', 'harry@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(27, 'Andreas', 'Gomes', 'andreas@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(28, 'Tory', 'Lanes', 'tory@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(29, 'Adam', 'lanes', 'adam@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(30, 'Peter', 'Dean', 'peter@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(31, 'Frank', 'Gomes', 'frank@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(33, 'Lucas', 'Moura', 'lucas@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(34, 'Kai', 'Hartez', 'kai@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(37, 'Alan', 'Mina', 'alan@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(38, 'Ricard', 'James', 'ricard@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(40, 'Mose', 'Kean', 'mose@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(47, 'Dot', 'black', 'dot@gmail.com', 'e91ed295e878e5ca688b40bdcf65e8b5'),
(48, 'bee', 'bee', 'bee@gmail.com', '1fae8b0b2b573948bc21c132acead04d'),
(49, 'tee', 'tee', 'tee@gmail.com', '82159c5b69e16f08478372c2b4343ba9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_one`
--
ALTER TABLE `tbl_one`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_one`
--
ALTER TABLE `tbl_one`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
