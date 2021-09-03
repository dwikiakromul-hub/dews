-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 03:09 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dews`
--

-- --------------------------------------------------------

--
-- Table structure for table `last_online`
--

CREATE TABLE `last_online` (
  `no` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `last_online`
--

INSERT INTO `last_online` (`no`, `id`, `waktu`, `status`) VALUES
(1, 1, '2021-08-17 19:21:22', 1),
(2, 1, '2021-08-17 19:21:22', 1),
(3, 1, '2021-08-17 19:21:22', 1),
(4, 1, '2021-08-17 19:21:22', 1),
(5, 2, '2021-08-17 10:35:08', 1),
(6, 3, '2021-08-17 10:35:39', 1),
(7, 3, '2021-08-17 10:40:08', 1),
(8, 5, '2021-08-16 19:44:46', 1),
(9, 6, '2021-08-17 20:00:28', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `last_online`
--
ALTER TABLE `last_online`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `last_online`
--
ALTER TABLE `last_online`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
