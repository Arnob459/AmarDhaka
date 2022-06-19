-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 09:15 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amar_dhaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `approve` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `pass`, `name`, `email`, `phone`, `approve`) VALUES
('a11', '1234', 'sabbir hossain', 'sabbir@gmail.com', '01611111111', 1),
('a123', '1234', 'fgxfx', 'ddds', 'ffxx', 1),
('a12345', '1234', 'nnnnn', 'eeeeeeee', '65456', 0),
('a12347', '1234', 'nnnnn', 'eeeeeeee', '65456', 1),
('a212', '1234', 'ddfdf gfddf', 'sabbir@gmail.com', '65618976752', 1),
('aa123', '1234', 'sabbir hh', 'hahhg@gamil.com', '12345678900', 0);

-- --------------------------------------------------------

--
-- Table structure for table `assignven`
--

CREATE TABLE `assignven` (
  `pid` varchar(255) NOT NULL,
  `vid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignven`
--

INSERT INTO `assignven` (`pid`, `vid`) VALUES
('p11', 'v10'),
('p11', 'v11'),
('p11', 'v10'),
('p10', 'v13'),
('p10', 'v100'),
('p100', 'v200');

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `cid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) NOT NULL,
  `approve` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`cid`, `name`, `pass`, `address`, `phone`, `approve`) VALUES
('c11', 'kjjhhj sdd', '1234', 'dhaka', '786387126', 1),
('c12', 'hvhjhhj sdd', '1234', 'dhaka', '786387126', 1),
('c13', 'dgdhvhjhhj sdd', '1234', 'dhaka', '786387126', 1),
('c14', 'ryrvhjhhj sdd', '1234', 'dhaka', '786387126', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `eid` varchar(255) NOT NULL,
  `deg` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `nid` varchar(255) NOT NULL,
  `approve` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`eid`, `deg`, `password`, `phone`, `nid`, `approve`) VALUES
('e104', 'Clark', '123456', '2147483647', '1111111111111', 1),
('e11', 'senior manager', '123456', '777777777', '55555555', 1),
('e15', 'junior', '123456', '2147483647', '111111111111', 0);

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE `problem` (
  `pid` varchar(255) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`pid`, `problem`, `location`, `date`) VALUES
('p10', 'water logging', 'adabor', '0000-00-00 00:00:00.000000'),
('p11', 'road constraction', 'mirpur', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `ven`
--

CREATE TABLE `ven` (
  `vid` varchar(100) NOT NULL,
  `vname` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `approve` int(10) NOT NULL DEFAULT 0,
  `location` varchar(255) NOT NULL,
  `phone` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ven`
--

INSERT INTO `ven` (`vid`, `vname`, `password`, `approve`, `location`, `phone`) VALUES
('v11', 'kjjhhj sdd', '1234', 1, 'dhaka', 2147483647),
('v12', 'kjjhhj sdd', '1234', 1, 'dhaka', 2147483647),
('v13', 'scfk jjhhj sdd', '1234', 1, 'dhaka', 2147483647),
('v14', 'scfk jjhhj sdd', '1234', 0, 'dhaka', 2147483647),
('v15', 'scfk jjhhj sdd', '1234', 1, 'dhaka', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `aid` (`aid`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD UNIQUE KEY `eid` (`eid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
