-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 11:44 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `category_extern`
--

CREATE TABLE `category_extern` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_extern`
--

INSERT INTO `category_extern` (`id`, `Name`, `Score`) VALUES
('1', 'Participarea la un training extern FR/Grants related', 50),
('2', 'Aducerea de carti de vizita din evenimente de networking', 25);

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

-- --------------------------------------------------------

--
-- Table structure for table `category_grants`
--

CREATE TABLE `category_grants` (
  `id` varchar(10) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_grants`
--

INSERT INTO `category_grants` (`id`, `Name`, `Score`) VALUES
('1', 'Research de granturi', 20),
('2', 'Scriere/Pregatire granturi', 125),
('3', 'Feedback granturi', 10),
('4', 'Coordonator WG', 350),
('5', 'Membru activ in echipa de WG', 50),
('6', 'Task extra pe Granturi', 100),
('7', 'Realizarea unui mentorat pe Granturi', 150);

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

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `Nume` varchar(255) DEFAULT NULL,
  `Departament` int(11) DEFAULT NULL,
  `Extern` int(11) DEFAULT NULL,
  `EchipeFR` int(11) DEFAULT NULL,
  `Granturi` int(11) DEFAULT NULL,
  `International` int(11) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `Nume`, `Departament`, `Extern`, `EchipeFR`, `Granturi`, `International`, `Title`, `Score`, `Gender`) VALUES
(1, 'Random-Gregore Bestanul', 0, 0, 0, 0, 0, 'BABY LION', 0, 'male'),
(2, 'Dan Banateanul', 0, 0, 0, 0, 0, 'BABY LION', 0, 'female'),
(3, 'Don-Dolarul Donalteanu', 0, 0, 0, 0, 0, 'BABY LION', 0, 'male'),
(4, 'Peny-Penibilool Duck', 0, 0, 0, 0, 0, 'BABY LION', 0, 'male'),
(5, 'Eu-Cel Leu', 0, 0, 0, 0, 0, 'BABY LION', 0, 'female'),
(6, 'Leotz Nutz', 0, 0, 0, 0, 0, 'BABY LION', 0, 'female');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Approved` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `Member` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `Category_Table` varchar(255) DEFAULT NULL,
  `Task` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  `Date` varchar(255) DEFAULT NULL,
  `Time` varchar(255) DEFAULT NULL,
  `Action` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `AddedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `Member`, `Category`, `Category_Table`, `Task`, `Score`, `Date`, `Time`, `Action`, `Status`, `AddedBy`) VALUES
(1, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '30.12.2021', '12:01:58pm', 'Adaugare', 'Checked', 'Admin'),
(2, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '30.12.2021', '12:01:58pm', 'Adaugare', 'Checked', 'Admin'),
(3, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '30.12.2021', '12:01:59pm', 'Adaugare', 'Checked', 'Admin'),
(4, 'Dan Banateanul', 'Departament', 'gtfo.category_department', 'Secretar Departament', 250, '30.12.2021', '12:02:07pm', 'Adaugare', 'Checked', 'Admin'),
(5, 'Dan Banateanul', 'Departament', 'gtfo.category_department', 'Secretar Departament', 250, '30.12.2021', '12:02:07pm', 'Adaugare', 'Checked', 'Admin'),
(6, 'Dan Banateanul', 'Departament', 'gtfo.category_department', 'Secretar Departament', 250, '30.12.2021', '12:02:07pm', 'Adaugare', 'Checked', 'Admin'),
(7, 'Dan Banateanul', 'Departament', 'gtfo.category_department', 'Curatare HubSpot', 100, '30.12.2021', '12:03:24pm', 'Adaugare', 'Checked', 'Admin'),
(8, 'Dan Banateanul', 'Bonus', 'none', 'Bonus score', 1, '30.12.2021', '12:04:33pm', 'Adaugare', 'Checked', 'Admin'),
(9, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '30.12.2021', '12:11:19pm', 'Adaugare', 'Checked', 'Admin'),
(10, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '30.12.2021', '12:11:19pm', 'Adaugare', 'Checked', 'Admin'),
(11, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '30.12.2021', '12:11:19pm', 'Adaugare', 'Checked', 'Admin'),
(12, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '30.12.2021', '12:11:19pm', 'Adaugare', 'Checked', 'Admin'),
(13, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '30.12.2021', '12:11:27pm', 'Adaugare', 'Checked', 'Admin'),
(14, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '30.12.2021', '12:11:27pm', 'Adaugare', 'Checked', 'Admin'),
(15, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '30.12.2021', '12:11:27pm', 'Adaugare', 'Checked', 'Admin'),
(16, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '30.12.2021', '12:12:49pm', 'Adaugare', 'Checked', 'Admin'),
(17, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '30.12.2021', '12:12:49pm', 'Adaugare', 'Checked', 'Admin'),
(18, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '30.12.2021', '12:12:49pm', 'Adaugare', 'Checked', 'Admin'),
(19, 'Dan Banateanul', 'Departament', 'gtfo.category_department', 'Coordonator Departament FR', 500, '30.12.2021', '12:15:23pm', 'Adaugare', 'Checked', 'Admin'),
(20, 'Peny-Penibilool Duck', 'Extern', 'gtfo.category_extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '30.12.2021', '12:29:54pm', 'Adaugare', 'Checked', 'Admin'),
(21, 'Peny-Penibilool Duck', 'Extern', 'gtfo.category_extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '30.12.2021', '12:29:54pm', 'Adaugare', 'Checked', 'Admin'),
(22, 'Peny-Penibilool Duck', 'Extern', 'gtfo.category_extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '30.12.2021', '12:29:54pm', 'Adaugare', 'Checked', 'Admin'),
(23, 'Peny-Penibilool Duck', 'Extern', 'gtfo.category_extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '30.12.2021', '12:29:54pm', 'Adaugare', 'Checked', 'Admin'),
(24, 'Peny-Penibilool Duck', 'Extern', 'gtfo.category_extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '30.12.2021', '12:29:54pm', 'Adaugare', 'Checked', 'Admin'),
(25, 'Peny-Penibilool Duck', 'Extern', 'gtfo.category_extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '30.12.2021', '12:29:54pm', 'Adaugare', 'Checked', 'Admin'),
(26, 'Peny-Penibilool Duck', 'Extern', 'gtfo.category_extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '30.12.2021', '12:29:55pm', 'Adaugare', 'Checked', 'Admin'),
(27, 'Dan Banateanul', 'Granturi', 'gtfo.category_grants', 'Coordonator WG', 350, '30.12.2021', '12:30:16pm', 'Adaugare', 'Checked', 'User'),
(28, 'Dan Banateanul', 'Granturi', 'gtfo.category_grants', 'Coordonator WG', 350, '30.12.2021', '12:30:16pm', 'Adaugare', 'Checked', 'User'),
(29, 'Don-Dolarul Donalteanu', 'Bonus', 'none', 'Bonus score', 10, '30.12.2021', '12:53:22pm', 'Adaugare', 'Checked', 'Admin'),
(30, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Un raspuns pozitiv pentru o cpy barter/educational', 50, '05.01.2022', '10:13:23am', 'Adaugare', 'Checked', 'Admin'),
(31, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Un raspuns pozitiv pentru o cpy barter/educational', 50, '05.01.2022', '10:13:24am', 'Adaugare', 'Checked', 'Admin'),
(32, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Un raspuns pozitiv pentru o cpy barter/educational', 50, '05.01.2022', '10:13:24am', 'Adaugare', 'Checked', 'Admin'),
(33, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Un raspuns pozitiv pentru o cpy barter/educational', 50, '05.01.2022', '10:13:24am', 'Adaugare', 'Checked', 'Admin'),
(34, 'Dan Banateanul', 'EchipeFR', 'gtfo.category_frteams', 'Un raspuns pozitiv pentru o cpy barter/educational', 50, '05.01.2022', '10:13:25am', 'Adaugare', 'Checked', 'Admin'),
(35, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo.category_department', 'Realizare Mentorat FR', 100, '05.01.2022', '10:13:37am', 'Adaugare', 'Checked', 'Admin'),
(36, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo.category_department', 'Realizare Mentorat FR', 100, '05.01.2022', '10:13:37am', 'Adaugare', 'Checked', 'Admin'),
(37, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo.category_department', 'Realizare Mentorat FR', 100, '05.01.2022', '10:13:37am', 'Adaugare', 'Checked', 'Admin'),
(38, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo.category_department', 'Realizare Mentorat FR', 100, '05.01.2022', '10:13:38am', 'Adaugare', 'Checked', 'Admin'),
(39, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo.category_department', 'Realizare Mentorat FR', 100, '05.01.2022', '10:13:38am', 'Adaugare', 'Checked', 'Admin'),
(40, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo.category_department', 'Realizare Mentorat FR', 100, '05.01.2022', '10:13:38am', 'Adaugare', 'Checked', 'Admin'),
(41, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo.category_department', 'Curatare HubSpot', 100, '05.01.2022', '10:13:49am', 'Stergere', 'Checked', 'Admin'),
(42, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo.category_department', 'Curatare HubSpot', 100, '05.01.2022', '10:13:49am', 'Stergere', 'Checked', 'Admin'),
(43, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo.category_department', 'Curatare HubSpot', 100, '05.01.2022', '10:13:49am', 'Stergere', 'Checked', 'Admin'),
(44, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo.category_department', 'Curatare HubSpot', 100, '05.01.2022', '10:13:49am', 'Stergere', 'Checked', 'Admin'),
(45, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '05.01.2022', '10:13:58am', 'Adaugare', 'Checked', 'Admin'),
(46, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '05.01.2022', '10:13:59am', 'Adaugare', 'Checked', 'Admin'),
(47, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '05.01.2022', '10:13:59am', 'Adaugare', 'Checked', 'Admin'),
(48, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '05.01.2022', '10:13:59am', 'Adaugare', 'Checked', 'Admin'),
(49, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '05.01.2022', '10:13:59am', 'Adaugare', 'Checked', 'Admin'),
(50, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'O intalnire pentru un eveniment', 25, '05.01.2022', '10:14:13am', 'Stergere', 'Checked', 'Admin'),
(51, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'O intalnire pentru un eveniment', 25, '05.01.2022', '10:14:14am', 'Stergere', 'Checked', 'Admin'),
(52, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '05.01.2022', '10:14:23am', 'Stergere', 'Checked', 'Admin'),
(53, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '05.01.2022', '10:14:23am', 'Stergere', 'Checked', 'Admin'),
(54, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '05.01.2022', '10:14:23am', 'Stergere', 'Checked', 'Admin'),
(55, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '05.01.2022', '10:14:34am', 'Adaugare', 'Checked', 'Admin'),
(56, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '05.01.2022', '10:14:34am', 'Adaugare', 'Checked', 'Admin'),
(57, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '05.01.2022', '10:14:34am', 'Adaugare', 'Checked', 'Admin'),
(58, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Sunat 10 cpy pentru un eveniment', 25, '05.01.2022', '10:14:42am', 'Stergere', 'Checked', 'Admin'),
(59, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Mass email-ing la un eveniment', 150, '05.01.2022', '10:14:50am', 'Stergere', 'Checked', 'Admin'),
(60, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo.category_frteams', 'Mass email-ing la un eveniment', 150, '05.01.2022', '10:14:50am', 'Stergere', 'Checked', 'Admin'),
(61, 'Don-Dolarul Donalteanu', 'Bonus', 'none', 'Bonus score', 10, '05.01.2022', '10:15:23am', 'Adaugare', 'Checked', 'Admin'),
(62, 'Don-Dolarul Donalteanu', 'Bonus', 'none', 'Bonus score', 500, '05.01.2022', '10:15:30am', 'Adaugare', 'Checked', 'Admin'),
(63, 'Dan Banateanul', 'Extern', 'gtfo.category_extern', 'Participarea la un training extern FR/Grants related', 50, '05.01.2022', '10:21:48am', 'Adaugare', 'Checked', 'User'),
(64, 'Dan Banateanul', 'Extern', 'gtfo.category_extern', 'Participarea la un training extern FR/Grants related', 50, '05.01.2022', '10:21:48am', 'Adaugare', 'Checked', 'User'),
(65, 'Dan Banateanul', 'Granturi', 'gtfo.category_grants', 'Coordonator WG', 350, '05.01.2022', '10:21:55am', 'Adaugare', 'Checked', 'User'),
(66, 'Dan Banateanul', 'Bonus', 'none', 'Bonus score', 5, '05.01.2022', '10:22:00am', 'Adaugare', 'Checked', 'User'),
(67, 'Dan Banateanul', 'Granturi', 'gtfo.category_grants', 'Coordonator WG', 350, '05.01.2022', '10:25:01am', 'Adaugare', 'Checked', 'User'),
(68, 'Dan Banateanul', 'Granturi', 'gtfo.category_grants', 'Coordonator WG', 350, '05.01.2022', '10:25:01am', 'Adaugare', 'Checked', 'User'),
(69, 'Dan Banateanul', 'Bonus', 'none', 'Bonus score', 200, '05.01.2022', '10:31:30am', 'Adaugare', 'Checked', 'Admin'),
(70, 'Random-Gregore Bestanul', 'Bonus', 'none', 'Bonus score', 1300, '05.01.2022', '10:41:21am', 'Adaugare', 'Checked', 'Admin'),
(71, 'Random-Gregore Bestanul', 'Extern', 'gtfo.category_extern', 'Participarea la un training extern FR/Grants related', 50, '05.01.2022', '10:41:32am', 'Adaugare', 'Checked', 'Admin'),
(72, 'Random-Gregore Bestanul', 'Extern', 'gtfo.category_extern', 'Participarea la un training extern FR/Grants related', 50, '05.01.2022', '10:41:32am', 'Adaugare', 'Checked', 'Admin'),
(73, 'Random-Gregore Bestanul', 'Extern', 'gtfo.category_extern', 'Participarea la un training extern FR/Grants related', 50, '05.01.2022', '10:41:32am', 'Adaugare', 'Checked', 'Admin'),
(74, 'Random-Gregore Bestanul', 'Extern', 'gtfo.category_extern', 'Participarea la un training extern FR/Grants related', 50, '05.01.2022', '10:41:32am', 'Adaugare', 'Checked', 'Admin'),
(75, 'Random-Gregore Bestanul', 'Bonus', 'none', 'Bonus score', 1, '05.01.2022', '10:44:22am', 'Adaugare', 'Checked', 'Admin'),
(76, 'Leotz Nutz', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '05.01.2022', '10:52:27am', 'Adaugare', 'Checked', 'Admin'),
(77, 'Leotz Nutz', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '05.01.2022', '10:52:28am', 'Adaugare', 'Checked', 'Admin'),
(78, 'Leotz Nutz', 'EchipeFR', 'gtfo.category_frteams', 'Responsabil de FR la un eveniment', 200, '05.01.2022', '10:52:28am', 'Adaugare', 'Checked', 'Admin'),
(79, 'Leotz Nutz', 'Bonus', 'none', 'Bonus score', 200, '05.01.2022', '10:52:45am', 'Adaugare', 'Checked', 'Admin'),
(80, 'Leotz Nutz', 'Bonus', 'none', 'Bonus score', 400, '05.01.2022', '10:52:52am', 'Adaugare', 'Checked', 'Admin'),
(81, 'Eu-Cel Leu', 'Bonus', 'none', 'Bonus score', 1300, '05.01.2022', '10:53:16am', 'Adaugare', 'Checked', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `scores_admin`
--

CREATE TABLE `scores_admin` (
  `id` int(11) NOT NULL,
  `Member` varchar(255) DEFAULT NULL,
  `Task` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  `Date1` varchar(255) DEFAULT NULL,
  `Date2` varchar(255) DEFAULT NULL,
  `Action` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `scores_user`
--

CREATE TABLE `scores_user` (
  `id` int(11) NOT NULL,
  `Member` varchar(255) DEFAULT NULL,
  `Task` varchar(255) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  `Date1` varchar(255) DEFAULT NULL,
  `Date2` varchar(255) DEFAULT NULL,
  `Action` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Gender` varchar(15) DEFAULT NULL,
  `Score1` int(11) DEFAULT NULL,
  `Score2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `Name`, `Gender`, `Score1`, `Score2`) VALUES
(1, 'BABY LION', 'both', 0, 250),
(2, 'TEEN LION', 'both', 251, 550),
(3, 'YOUNG LION', 'both', 551, 850),
(4, 'PAPA LION', 'male', 851, 1250),
(5, 'MAMA LION', 'female', 851, 1250),
(6, 'FOSSIL LION', 'both', 1250, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Nume` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Parola` varchar(255) DEFAULT NULL,
  `Rol` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Nume`, `username`, `email`, `Parola`, `Rol`) VALUES
(1, 'Iuliu', 'iuliu.popovici', 'iuliu.popovici@bestis.ro', '151a35f71615626fdf49c31b478c6c13', 'Admin'),
(2, 'Generic Best', 'generic.best', 'generic.best@bestis.ro', '7fb166711483f007b7dab8506890aca4', 'User'),
(3, 'Random-Gregore Bestanul', 'random-gregore.bestanul', 'random-gregore.bestanul@bestis.ro', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'User'),
(4, 'Dan Banateanul', 'dan.banateanul', 'dan.banateanul@bestis.ro', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'User'),
(5, 'Don-Dolarul Donalteanu', 'don-dolarul.donalteanu', 'don-dolarul.donalteanu@bestis.ro', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'User'),
(6, 'Peny-Penibilool Duck', 'peny-penibilool.duck', 'peny-penibilool.duck@bestis.ro', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'User'),
(7, 'Eu-Cel Leu', 'eu-cel.leu', 'eu-cel.leu@bestis.ro', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'User'),
(8, 'Leotz Nutz', 'leotz.nutz', 'leotz.nutz@bestis.ro', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_department`
--
ALTER TABLE `category_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_extern`
--
ALTER TABLE `category_extern`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_frteams`
--
ALTER TABLE `category_frteams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_grants`
--
ALTER TABLE `category_grants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_international`
--
ALTER TABLE `category_international`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores_admin`
--
ALTER TABLE `scores_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `scores_user`
--
ALTER TABLE `scores_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_4` (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `id_3` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `scores_admin`
--
ALTER TABLE `scores_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `scores_user`
--
ALTER TABLE `scores_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
