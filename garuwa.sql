-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2019 at 11:16 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garuwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(8) UNSIGNED ZEROFILL NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `location` varchar(255) NOT NULL,
  `truckSize` varchar(30) NOT NULL,
  `station` varchar(100) NOT NULL,
  `localgovt` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `date_registered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `location`, `truckSize`, `station`, `localgovt`, `password`, `date_registered`) VALUES
(00000001, 'Aminu', '0801234567', 'Bulangu', '', '', '', '', '2019-01-26 08:16:29'),
(00000002, 'bulangu', '9876543', 'bulangu', '', '', '', '', '2019-01-26 08:33:53'),
(00000003, 'kano', '09876543', 'kano', '5', 'kano', 'kano', 'kano', '2019-01-26 08:40:25'),
(00000004, 'Ibrahim Hassan Muhammad', '08123251038', 'Umguwa Uku', '14', 'Al-Ansar', 'Tarauni', 'password?okay', '2019-01-26 10:21:41'),
(00000005, 'Ibarhim Hassan Muhammad', '08123251038', 'Unguwa Uku', '14', 'Al-Ansar', 'Tarauni', 'password.password.password', '2019-01-26 11:10:24'),
(00000006, 'Bulangu', '-09876543', 'Bulangu', '56', 'Bulangu', 'Bulangu', 'Bulangu', '2019-01-27 11:02:33'),
(00000007, 'BUlangu', '9876543', 'BUlangu', '98', 'BUlangu', 'BUlangu', 'BUlangu', '2019-01-27 12:01:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(8) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
