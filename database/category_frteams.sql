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
-- Table structure for table `category_frteams`
--

CREATE TABLE `category_frteams` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_frteams`
--

INSERT INTO `category_frteams` (`id`, `Name`, `Score`) VALUES
('1', 'Responsabil de FR la un eveniment', 200),
('2', 'Sunat 10 cpy pentru un eveniment', 25),
('3', 'O intalnire pentru un eveniment', 25),
('4', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50),
('5', 'Un raspuns pozitiv pentru cpy tehnica', 75),
('6', 'Un raspuns pozitiv pentru o cpy barter/educational', 50),
('7', 'Mass email-ing la un eveniment', 150),
('8', 'Participarea la o sesiune dedicata de sunat din sediu', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_frteams`
--
ALTER TABLE `category_frteams`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
