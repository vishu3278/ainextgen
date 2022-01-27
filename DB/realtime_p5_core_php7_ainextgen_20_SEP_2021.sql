-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 09:08 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realtime_p5_core_php7_ainextgen`
--

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
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `phone`, `email`, `message`, `created_date`) VALUES
(1540, 'asdas', '5545', 'gg@gmail.com', 'sdfsdf', '2021-05-18 12:05:28'),
(1541, 'asdas', '5545', 'gg@gmail.com', 'sdfsdf', '2021-05-18 12:06:38'),
(1542, 'sd', '54534', 're@gmail.com', 'sf', '2021-05-18 12:07:04'),
(1543, 'sdfs', '424', '43@gmailcom', 'ff', '2021-05-18 12:07:51'),
(1544, 'sdfs', '424', '43@gmailcom', 'ff', '2021-05-18 12:08:12'),
(1545, 'sdf', '234323422', 'sdf@gmail.com', 'sf', '2021-05-18 12:08:55'),
(1546, 'dsad', '312312', 'EWE@GMAIL.COM', 'FDFD', '2021-05-18 12:10:51'),
(1547, 'dsad', '312312', 'EWE@GMAIL.COM', 'FDFD', '2021-05-18 12:16:05'),
(1548, 'werer', '9283434', 'werw@gmail.com', 'wrew', '2021-05-18 12:57:51'),
(1549, 'sdfdfds', 'sdf@gmail.com', 'sdasd', 'sff', '2021-06-23 09:36:28'),
(1550, 'sdfdfds', 'sdf@gmail.com', 'sdasd', 'sff', '2021-06-23 09:39:25'),
(1551, 'sdfdfds', 'sdf@gmail.com', 'sdasd', 'sff', '2021-06-23 09:39:26'),
(1552, 'sdfsf', 'sfdf@gmail.com', 'aa', 'asd', '2021-06-23 09:40:54'),
(1553, 'asd', 'asds@gmail.com', 'dfsf', 'sdfds', '2021-06-23 09:45:20'),
(1554, 'sdff', 'sdfsd', 'dfsdfs', 'sdfdf', '2021-06-23 09:46:23'),
(1555, 'sdff', 'sdfsd', 'dfsdfs', 'sdfdfsdds', '2021-06-23 09:49:58'),
(1556, 'sdf', 'sdffsd', 'dfsfd', 'fs', '2021-06-23 09:50:47'),
(1557, 'asd', 'asdas', 'adsdsads', 'adsads', '2021-06-23 09:55:35'),
(1558, 'adfdssdaas', 'adsds', 'asdsa', 'adsdsa', '2021-06-23 09:56:08'),
(1559, 'sadds', 'adsds', 'adssd', 'asdsa', '2021-06-23 09:57:13'),
(1560, 'sdffds', 'sffsds', 'sdsf', 'sdfd', '2021-06-23 09:58:07'),
(1561, 'dsas', 'dsa', 'asds', 'adsdsd', '2021-06-23 09:58:32'),
(1562, 'sdf', 'sdffsd', 'dfsfd', 'fs', '2021-06-23 10:01:50'),
(1563, 'sdf', 'sdfds', 'dfdfdfsdfs', 'dfsfd', '2021-06-23 10:04:41'),
(1564, 'sdf', 'sdfds', 'dfdfdfsdfs', 'dfsfd', '2021-06-23 10:05:40'),
(1565, 'sdf', 'sdfds', 'dfdfdfsdfs', 'dfsfd', '2021-06-23 10:13:35'),
(1566, 'sdf', 'sdfds', 'dfdfdfsdfs', 'dfsfd', '2021-06-23 10:14:15'),
(1567, 'sdf', 'sdfds', 'dfdfdfsdfs', 'dfsfd', '2021-06-23 10:15:16'),
(1568, 'AS', 'AS', 'asasa', 'saAS', '2021-06-23 10:17:46'),
(1569, 'ss', 'as', 'asd', 'as', '2021-06-25 08:02:36'),
(1570, 'sadsd', '6546456', 'sdfsf', 'csdfsdfss', '2021-06-29 04:18:57'),
(1571, 'sadsd', '6546456', 'sdfsf', 'csdfsdfss', '2021-06-29 04:20:31'),
(1572, 'asds', 'asd', 'asd', 'sadd', '2021-06-29 04:26:09'),
(1573, 'hi', '993123', 'erwer', 'rwere', '2021-06-29 07:00:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1574;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
