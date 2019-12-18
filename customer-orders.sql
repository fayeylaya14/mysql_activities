-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 08:32 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer-orders`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `custID` int(11) NOT NULL,
  `custFname` varchar(100) NOT NULL,
  `custLname` varchar(100) NOT NULL,
  `custCountry` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`custID`, `custFname`, `custLname`, `custCountry`) VALUES
(1, 'Ariana', 'Grande', 'USA'),
(2, 'Marian', 'Rivera', 'Philippines'),
(3, 'Lee', 'Sung Kyung', 'Korea'),
(4, 'Lalisa', 'Manoban', 'Thailand'),
(5, 'Katherine', 'McPhee', 'USA'),
(6, 'Kim', 'Jennie', 'Korea'),
(7, 'Cassie', 'Mondragon', 'Philippines'),
(8, 'Nicolas', 'Sparks', 'USA'),
(9, 'Catriona Gray', 'Australia', 'USA'),
(10, 'Margarette', 'Bocelli', 'Italy');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `orderName` varchar(100) NOT NULL,
  `orderPurchased` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cust_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `orderName`, `orderPurchased`, `cust_ID`) VALUES
(1, 'Barbie Dolls', '2019-12-17 09:36:16', 2),
(2, 'Barbie Dolls', '2019-12-17 09:36:16', 3),
(3, 'Toy Robots', '2019-12-17 09:39:53', 1),
(4, 'Toy Robots', '2019-12-17 09:39:53', 4),
(5, 'Gloves', '2019-12-17 09:39:53', 1),
(6, 'Dove Cages', '2019-12-17 09:39:53', 9),
(7, 'Dove Cages', '2019-12-17 09:39:53', 10),
(8, 'School Supply Set', '2019-12-18 01:22:07', 5),
(9, 'School Supply Set', '2019-12-18 01:22:07', 6),
(10, 'School Supply Set', '2019-12-18 01:22:07', 9),
(11, 'School Supply Set', '2019-12-18 01:22:07', 8),
(12, 'School Supply Set', '2019-12-18 01:22:07', 1),
(13, 'School Supply Set', '2019-12-18 01:22:07', 7),
(14, 'School Supply Set', '2019-12-18 01:22:07', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`custID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `cust_ID` (`cust_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `custID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cust_ID`) REFERENCES `customers` (`custID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
