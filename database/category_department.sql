-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 11:47 AM
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
-- Table structure for table `category_department`
--

CREATE TABLE `category_department` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_department`
--

INSERT INTO `category_department` (`id`, `Name`, `Score`) VALUES
(1, 'Secretar Departament', 250),
(2, 'Realizare Mentorat FR', 100),
(3, 'Realizarea de research cpy pentru FR LBG extra evenimente/sediu', 25),
(4, 'Curatare HubSpot', 100),
(5, 'Contactarea unei cpy pentru FR LBG extra', 10),
(6, 'Raspuns pozitiv cpy pentru FR LBG extra', 50),
(7, 'Coordonator Departament FR', 500),
(8, 'Participarea la o sesiune de FR din sediu/zi(seara) tematica', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_department`
--
ALTER TABLE `category_department`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
