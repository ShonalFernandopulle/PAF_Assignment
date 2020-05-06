-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 02:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `channeling`
--

-- --------------------------------------------------------

--
-- Table structure for table `cappointment`
--

CREATE TABLE `cappointment` (
  `AppointmentID` int(11) NOT NULL,
  `AppointmentDate` varchar(30) NOT NULL,
  `AppointmentTime` varchar(30) NOT NULL,
  `AppointmentCategory` varchar(30) NOT NULL,
  `AppointmentDoctor` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cappointment`
--

INSERT INTO `cappointment` (`AppointmentID`, `AppointmentDate`, `AppointmentTime`, `AppointmentCategory`, `AppointmentDoctor`) VALUES
(2, '10/04/2020', '10.30AM', 'Heart', 'Dr.Kavee'),
(3, 'sffdgdfsdf', 'fgrtjty', 'dgrthj', 'dgtj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cappointment`
--
ALTER TABLE `cappointment`
  ADD PRIMARY KEY (`AppointmentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cappointment`
--
ALTER TABLE `cappointment`
  MODIFY `AppointmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
