-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2017 at 12:39 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `addreess` varchar(100) NOT NULL,
  `utype` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `addreess`, `utype`) VALUES
(1, 'admin', 'admin', 'Kathmandu', 1),
(2, 'staff', 'staff', 'gongabu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `bus_no` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `departure_time` varchar(100) NOT NULL,
  `btype` varchar(50) NOT NULL,
  `seats` int(11) NOT NULL,
  `wifi_tv` varchar(50) NOT NULL,
  `snacks` varchar(100) NOT NULL,
  `approx_reach_time` varchar(50) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_phone` varchar(50) NOT NULL,
  `shift` varchar(20) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_data`
--

CREATE TABLE `bus_data` (
  `id` int(11) NOT NULL,
  `busnum` varchar(20) NOT NULL,
  `staffname` varchar(30) NOT NULL,
  `staffphone` varchar(20) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `facility` varchar(30) NOT NULL,
  `bustype` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_data`
--

INSERT INTO `bus_data` (`id`, `busnum`, `staffname`, `staffphone`, `destination`, `facility`, `bustype`, `time`) VALUES
(1, 'BA 1 KA :2015', 'Hari Thapa', '9831542546', 'Kakarvitta', 'Yes', 'AC', '06:30 AM'),
(2, 'BA 2 KA:3578', 'Hira Panna', '98465421515', 'Oklaldhunga', 'Yes', 'Delux', '08:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id` int(11) NOT NULL,
  `date_of_journey` varchar(50) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(11) NOT NULL,
  `departure_time` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `side` varchar(10) NOT NULL,
  `p_phone` varchar(20) NOT NULL,
  `verified_by` varchar(100) NOT NULL,
  `bus_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickett`
--

CREATE TABLE `tickett` (
  `id` int(11) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `c_address` varchar(50) NOT NULL,
  `c_phone` varchar(50) NOT NULL,
  `c_age` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `gender` char(1) NOT NULL,
  `seat` varchar(50) NOT NULL,
  `destination` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickett`
--

INSERT INTO `tickett` (`id`, `c_name`, `c_address`, `c_phone`, `c_age`, `date`, `time`, `gender`, `seat`, `destination`) VALUES
(1, 'Rajan Bista', 'Jhapa-01', '984688725', '22', '2074-01-22', '06:30 AM', 'M', 'X10-X11--X12', 'Muglin'),
(2, 'Ashok Thapa', 'Gangabu-08', '01456865', '21', '2073-03-12', '06:30 PM', 'M', 'B6', 'Halishee'),
(3, 'Anish Rimal', 'Trishuli-04', '0145689', '22', '2074-03-12', '06:30 AM', 'M', 'A1-A2-A3', 'BAzzar'),
(4, 'BIshal Bhandari', 'Balaju-04', '987777777', '22', '2074-03-12', '06:30 AM', 'M', 'A1-A3', 'Okhaldhunga'),
(5, 'Ashok Sapkota', 'Narayani', '9813568923', '22', '2074-04-14', '06:30 AM', 'M', 'A8', 'Jhapa'),
(8, 'Bishal Bhandari', 'Balaju', '01456898', '22', '2074-04-14', '06:30 AM', 'M', 'B6-B8', 'Taplejung'),
(9, '', '', '', '', '', '06:30 AM', 'F', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `time0630`
--

CREATE TABLE `time0630` (
  `id` int(11) NOT NULL,
  `seat` varchar(10) NOT NULL,
  `time` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_data`
--
ALTER TABLE `bus_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickett`
--
ALTER TABLE `tickett`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time0630`
--
ALTER TABLE `time0630`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bus_data`
--
ALTER TABLE `bus_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tickett`
--
ALTER TABLE `tickett`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `time0630`
--
ALTER TABLE `time0630`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
