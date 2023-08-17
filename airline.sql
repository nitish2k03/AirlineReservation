-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2023 at 12:46 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--
create database airline;
use airline;
CREATE TABLE `cities` (
  `city` varchar(20) NOT NULL,
  `cityCode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`city`, `cityCode`) VALUES
('Amritsar', 'ATQ'),
('Bengaluru', 'BLR'),
('Mumbai', 'BOM'),
('New Delhi', 'DEL'),
('Hyderabad', 'HYD'),
('Jaipur', 'JAI'),
('Chennai', 'MAA');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `fCode` varchar(20) NOT NULL,
  `Airlines` varchar(50) NOT NULL,
  `Src` varchar(50) NOT NULL,
  `Dest` varchar(50) NOT NULL,
  `Duration` varchar(25) NOT NULL,
  `EconomyPrice` int(10) NOT NULL,
  `PremEcoPrice` int(10) NOT NULL,
  `BusinessPrice` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`fCode`, `Airlines`, `Src`, `Dest`, `Duration`, `EconomyPrice`, `PremEcoPrice`, `BusinessPrice`) VALUES
('6E - 136', 'Indigo', 'BOM', 'MAA', '2 hr', 2977, 6851, 13730),
('6E - 163', 'Indigo', 'HYD', 'BOM', '1 hr 35 min', 3329, 7656, 15313),
('6E - 2034', 'Indigo', 'ATQ', 'JAI', '4 hr 30 min', 9284, 21535, 42706),
('6E - 2098', 'Indigo', 'MAA', 'DEL', '2 hr 50 min', 5278, 12179, 24278),
('6E - 2205', 'Indigo', 'JAI', 'ATQ', '6 hr 10 min', 4571, 10513, 21026),
('6E - 373', 'Indigo', 'JAI', 'BLR', '2 hr 25 min', 5426, 12479, 24958),
('6E - 471', 'Indigo', 'JAI', 'HYD', '1 hr 55 min', 4751, 10929, 21858),
('6E - 5039', 'Indigo', 'BLR', 'DEL', '2 hr 50 min', 5364, 12337, 24674),
('6E - 5098', 'Indigo', 'BOM', 'JAI', '1 hr 35 min', 3259, 7495, 14990),
('6E - 5293', 'Indigo', 'BLR', 'BOM', '1 hr 50 min', 2850, 6555, 13110),
('6E - 5325', 'Indigo', 'BOM', 'ATQ', '2 hr 25 min', 6979, 16051, 32103),
('6E - 5381', 'Indigo', 'MAA', 'BOM', '1 hr 50 min', 3010, 6932, 13846),
('6E - 569', 'Indigo', 'JAI', 'MAA', '2 hr 30 min', 10191, 23439, 46878),
('6E - 6309', 'Indigo', 'MAA', 'HYD', '1 hr 20 min', 2918, 6711, 13422),
('6E - 6316', 'Indigo', 'MAA', 'ATQ', '5 hr 50 min', 7451, 17137, 34273),
('6E - 6412', 'Indigo', 'MAA', 'JAI', '2 hr 30 min', 6772, 15575, 31150),
('6E - 645', 'Indigo', 'ATQ', 'BLR', '3 hr', 6993, 16083, 32167),
('6E - 668', 'Indigo', 'HYD', 'MAA', '1 hr 10 min', 3850, 8855, 17710),
('6E - 6907', 'Indigo', 'HYD', 'ATQ', '6 hr 10 min', 6260, 14398, 28790),
('6E - 774', 'Indigo', 'DEL', 'HYD', '2 hr 10 min', 4754, 10934, 21868),
('6E - 797', 'Indigo', 'BLR', 'ATQ', '3 hr 5 min', 9988, 22972, 45944),
('6E - 913', 'Indigo', 'HYD', 'JAI', '2 hr', 4842, 11136, 22273),
('AI - 454', 'Air India', 'ATQ', 'BOM', '2 hr 40 min', 7441, 17114, 34228),
('AI - 542', 'Air India', 'ATQ', 'HYD', '5 hr 10 min', 6192, 14241, 28483),
('AI - 563', 'AIr India', 'MAA', 'BLR', '1 hr 10 min', 2139, 4919, 9838),
('AI - 564', 'Air India', 'BLR', 'MAA', '1 hr', 2321, 5338, 10676),
('AI - 615', 'Air India', 'BOM', 'HYD', '1 hr 30 min', 2654, 6104, 12208),
('AI - 803', 'Air India', 'DEL', 'BLR', '2 hr 40 min', 5235, 12040, 23557),
('I5 - 670', 'Air Asia', 'JAI', 'BOM', ' 1 hr 25 min', 3691, 8232, 16647),
('I5 - 769', 'Air Asia', 'JAI', 'DEL', '50 min', 1971, 4533, 9066),
('I5 - 788', 'Air Asia', 'DEL', 'JAI', '45 min', 3244, 7461, 14922),
('I5 - 941', 'Air Asia', 'BLR', 'JAI', '2 hr 45 min', 5597, 12873, 25746),
('QP - 1306', 'Akasa Air', 'BOM', 'BLR', '1 hr 35 min', 2525, 5807, 11615),
('QP - 1407', 'Akasa Air', 'HYD', 'DEL', '2 hr 20 min', 4979, 11451, 22903),
('QP - 1480', 'Akasa Air', 'BLR', 'HYD', '1 hr 10 min', 2476, 5699, 11389),
('QP - 1483', 'Akasa Air', 'HYD', 'BLR', '1 hr 10 min', 2542, 5846, 11693),
('SG - 158', 'SpiceJet', 'BOM', 'DEL', '2 hr 15 min', 4744, 10911, 21822),
('UK - 691', 'Vistara', 'DEL', 'ATQ', '1 hr 15 min', 3019, 6932, 13864),
('UK - 692', 'Vistara', 'ATQ', 'MAA', '4 hr 55 min', 9852, 22659, 45319),
('UK - 694', 'Vistara', 'ATQ', 'DEL', '1 hr 15 min', 3451, 7937, 15874),
('UK - 835', 'Vistara', 'DEL', 'MAA', '2 hr 45 min', 5660, 13018, 26036),
('UK - 941', 'Vistara', 'DEL', 'BOM', '2 hr 10 min', 4400, 10120, 20240);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `username` varchar(255) NOT NULL,
  `passw` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`username`, `passw`) VALUES
('admin', 'admin'),
('nitish', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `passengerinfo`
--

CREATE TABLE `passengerinfo` (
  `PNR` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Age` int(5) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `PassportNo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengerinfo`
--

INSERT INTO `passengerinfo` (`PNR`, `Name`, `Age`, `Gender`, `PassportNo`) VALUES
(5628544, 'Nitish', 21, 'Male', '546545'),
(5628544, 'Tanush', 24, 'Male', '545455'),
(5628545, 'Rohan', 55, 'Male', '566464'),
(5628546, 'skhvsbh', 55, 'Male', '65864'),
(5628546, 'scnjk', 22, 'Male', '56858'),
(5628546, 'djncj', 22, 'Male', '65135');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `PNR` int(20) NOT NULL,
  `fCode` varchar(20) NOT NULL,
  `Class` varchar(30) NOT NULL,
  `Amount` int(20) NOT NULL,
  `BookingDate` varchar(20) NOT NULL,
  `travelDate` varchar(20) NOT NULL,
  `DeptTime` varchar(20) NOT NULL,
  `totalPassengers` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`PNR`, `fCode`, `Class`, `Amount`, `BookingDate`, `travelDate`, `DeptTime`, `totalPassengers`) VALUES
(5628544, 'QP - 1480', 'Business', 22778, '27-Jul-23', '29-Jul-23', '05:00 PM', 2),
(5628545, 'AI - 615', 'Premium Economy', 6104, '29-Jul-23', '30-Jul-23', '05:00 PM', 1),
(5628546, 'I5 - 941', 'Economy', 16791, '30-Jul-23', '30-Jul-23', '01:00 AM', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cityCode`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`fCode`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`PNR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
