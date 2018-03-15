-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2018 at 06:23 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bolt_del`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent`
--

CREATE TABLE `agent` (
  `agent_usrname` varchar(30) NOT NULL,
  `agent_email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `locale` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent`
--

INSERT INTO `agent` (`agent_usrname`, `agent_email`, `password`, `locale`) VALUES
('DUK', 'duk@hotmail.com', 'duk', ''),
('Pranav', 'allankipranav@gmail.com', 'pranav', ''),
('Psy', 'psy@123', 'psy', ''),
('Kokku', 'kokku@76', 'kokku', 'TPG'),
('sravanth', 'sraavanth@gmail.com', '123', 'bvrm'),
('sravanth', 'sraavanth@gmail.com', '123', 'bvrm'),
('sravanth', 'sraavanth@gmail.com', '123', 'bvrm');

-- --------------------------------------------------------

--
-- Table structure for table `deldetails`
--

CREATE TABLE `deldetails` (
  `delivery_date` date NOT NULL,
  `products` text NOT NULL,
  `dest` text NOT NULL,
  `locality` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deldetails`
--

INSERT INTO `deldetails` (`delivery_date`, `products`, `dest`, `locality`) VALUES
('2018-02-12', 'asd', 'VCHCDF', ''),
('2018-02-08', 'asd', 'asd', 'TPG'),
('2018-02-08', 'cxv', 'vzc', 'TPG'),
('2018-02-14', 'zcfdzf', 'fgdd', 'TPG'),
('2018-02-21', 'dfs', 'df', 'TPG'),
('0000-00-00', '', '', 'TPG'),
('0000-00-00', '', '', 'TPG'),
('0000-00-00', '', '', 'TPG'),
('0000-00-00', '', '', 'TPG');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `del_usrname` varchar(30) NOT NULL,
  `del_email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`del_usrname`, `del_email`, `password`) VALUES
('ARpit', 'arpit@123', 'arp');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
