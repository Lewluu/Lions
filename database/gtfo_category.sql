-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 09:44 AM
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
-- Database: `gtfo_category`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `Name`, `Score`) VALUES
(1, 'Secretar Departament', 250),
(2, 'Realizare Mentorat FR', 100),
(3, 'Realizarea de research cpy pentru FR LBG extra evenimente/sediu', 25),
(4, 'Curatare HubSpot', 100),
(5, 'Contactarea unei cpy pentru FR LBG extra', 10),
(6, 'Raspuns pozitiv cpy pentru FR LBG extra', 50),
(7, 'Coordonator Departament FR', 500),
(8, 'Participarea la o sesiune de FR din sediu/zi(seara) tematica', 10);

-- --------------------------------------------------------

--
-- Table structure for table `extern`
--

CREATE TABLE `extern` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extern`
--

INSERT INTO `extern` (`id`, `Name`, `Score`) VALUES
('1', 'Participarea la un training extern FR/Grants related', 50),
('2', 'Aducerea de carti de vizita din evenimente de networking', 25);

-- --------------------------------------------------------

--
-- Table structure for table `frteams`
--

CREATE TABLE `frteams` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `frteams`
--

INSERT INTO `frteams` (`id`, `Name`, `Score`) VALUES
('1', 'Responsabil de FR la un eveniment', 200),
('2', 'Sunat 10 cpy pentru un eveniment', 25),
('3', 'O intalnire pentru un eveniment', 25),
('4', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50),
('5', 'Un raspuns pozitiv pentru cpy tehnica', 75),
('6', 'Un raspuns pozitiv pentru o cpy barter/educational', 50),
('7', 'Mass email-ing la un eveniment', 150),
('8', 'Participarea la o sesiune dedicata de sunat din sediu', 10);

-- --------------------------------------------------------

--
-- Table structure for table `grants`
--

CREATE TABLE `grants` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grants`
--

INSERT INTO `grants` (`id`, `Name`, `Score`) VALUES
('1', 'Research de granturi', 20),
('2', 'Scriere/Pregatire granturi', 125),
('3', 'Feedback granturi', 10),
('4', 'Coordonator WG', 350),
('5', 'Membru activ in echipa de WG', 50),
('6', 'Task extra pe Granturi', 100),
('7', 'Realizarea unui mentorat pe Granturi', 150);

-- --------------------------------------------------------

--
-- Table structure for table `international`
--

CREATE TABLE `international` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `international`
--

INSERT INTO `international` (`id`, `Name`, `Score`) VALUES
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
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extern`
--
ALTER TABLE `extern`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frteams`
--
ALTER TABLE `frteams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grants`
--
ALTER TABLE `grants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `international`
--
ALTER TABLE `international`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
