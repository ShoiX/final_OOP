-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 30, 2018 at 01:17 AM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrer`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment_units`
--

CREATE TABLE `apartment_units` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `unit_type` int(11) NOT NULL,
  `monthly_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apartment_units`
--

INSERT INTO `apartment_units` (`id`, `unit_name`, `description`, `unit_type`, `monthly_rate`) VALUES
(1, '302', '1 bedroom Apartment for Rent in Kamuning\r\n\r\nBedspace/ Room Rental for Daily Weekly Monthly\r\nRooms for Groups (4,7,10)\r\nHostel in Kamuning Quezon City\r\n154 K-1st Street., Kamuning, Quezon City\r\nWalk-ins allowed\r\n', 1, 14000),
(2, '555', 'AVAILABLE UNTIL POSTED\r\nReady for occupancy. For viewing, just look for CORA.\r\n\r\nPhp10,000 per month. FIXED PRICE\r\n1 bedroom unit with aircon slot', 1, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `username`, `password`, `contact_number`, `address`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `apartment_id` int(11) NOT NULL,
  `image_filename` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `firstname`, `lastname`, `birthdate`, `contact_no`, `apartment_id`, `image_filename`, `status`) VALUES
(1, 'Jerryco', 'Alaba', '1998-01-10', '09484334669', 1, '', 1),
(2, 'Alaba', 'Jerryco', '1998-01-12', '09484334669', 2, '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment_units`
--
ALTER TABLE `apartment_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartment_units`
--
ALTER TABLE `apartment_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
