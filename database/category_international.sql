-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 11:48 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gtfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_international`
--

CREATE TABLE `category_international` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_international`
--

INSERT INTO `category_international` (`id`, `Name`, `Score`) VALUES
('1', 'Abonare lista CRD observer', 10),
('2', 'Abonare lista GD observer', 10),
('3', 'Task CRD/GD', 50),
('4', 'FR in echipa de EBEC/GM', 100),
('5', 'Coordonator proiect CRD/GD related', 500),
('6', 'Participarea la OMuri de la CRD sau GD', 20),
('7', 'Participare beRICHER', 500),
('8', 'CRD/GD delegate la RM', 250);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_international`
--
ALTER TABLE `category_international`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
