-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 10:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ainextgen`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_detail`
--

CREATE TABLE `contact_detail` (
  `id` int(11) NOT NULL,
  `type` varchar(99) NOT NULL,
  `value` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_detail`
--

INSERT INTO `contact_detail` (`id`, `type`, `value`) VALUES
(1, 'Call Us', '+91-9934393700'),
(2, 'Email Us', 'info@ainextgeninfotech.com'),
(4, 'Address', 'WTT, Sector 16, Noida'),
(5, 'Open Hours', '9:00AM - 06:00PM');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `phone`, `email`, `message`, `created_date`) VALUES
(1575, 'Sabrina Avis', '2164146371', 'sabrinaavis619@gmail.com', 'I am very interested and I would love to get to know you better and how everything works!', '2021-07-04 11:46:08'),
(1584, 'rajkumar', '9666919230', 'rajkumar.kunde007@gmail.com', 'manual and automation testing', '2021-09-15 13:29:12'),
(1588, 'Ravi Verma', '+917000173166', 'rv7566657073@gmail.com', 'Diploma mechanical engineering job', '2021-09-18 07:53:49'),
(1589, 'Abhishek Mishra', '7607049157', 'abhkmishra1193a@gmail.com', 'NA', '2021-09-26 02:23:14'),
(1590, 'kundan ', '9934393700', 'kundankapoor108@gmai.com', 'hi', '2021-10-02 08:49:38'),
(1591, 'kundan ', '9934393700', 'kundankapoor108@gmai.com', 'hi', '2021-10-02 08:49:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_detail`
--
ALTER TABLE `contact_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_detail`
--
ALTER TABLE `contact_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1592;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
