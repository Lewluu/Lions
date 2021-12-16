-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2021 at 11:38 AM
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
(1, 'Random-Gregore Bestanul', 1800, 0, 1225, 4210, 3950, 'FOSSIL LION', 11185, 'male'),
(2, 'Dan Banateanul', 900, 0, 0, 2100, 0, 'FOSSIL LION', 3000, 'female'),
(3, 'Don-Dolarul Donalteanu', 600, 0, 275, 800, 0, 'FOSSIL LION', 1675, 'male'),
(4, 'Peny-Penibilool Duck', 0, 25, 1600, 90, 0, 'FOSSIL LION', 1715, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Approved` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `Email`, `Approved`) VALUES
(1, 'bilzerian.bossul@bestis.ro', 'NO'),
(2, 'stan-castan.costel@bestis.ro', 'NO'),
(3, 'morosanca-mariuca.nelea@bestis.ro', 'NO'),
(4, 'dana.budeanu@bestis.ro', 'NO');

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
(1, 'Don-Dolarul Donalteanu', 'EchipeFR', 'gtfo_category.frteams', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '16.09.2021', '02:43:33pm', 'Adaugare', 'Checked', 'Admin'),
(2, 'Don-Dolarul Donalteanu', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '16.09.2021', '02:43:54pm', 'Adaugare', 'Checked', 'Admin'),
(3, 'Don-Dolarul Donalteanu', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '16.09.2021', '02:43:54pm', 'Adaugare', 'Checked', 'Admin'),
(4, 'Don-Dolarul Donalteanu', 'Granturi', 'gtfo_category.grants', 'Coordonator WG', 350, '16.09.2021', '02:44:05pm', 'Adaugare', 'Checked', 'Admin'),
(5, 'Dan Banateanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Checked', 'User'),
(6, 'Dan Banateanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Checked', 'User'),
(7, 'Dan Banateanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Checked', 'User'),
(8, 'Dan Banateanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Checked', 'User'),
(9, 'Dan Banateanul', 'Granturi', 'gtfo_category.grants', 'Task extra pe Granturi', 100, '17.09.2021', '11:32:10am', 'Adaugare', 'Checked', 'User'),
(10, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo_category.frteams', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '10.11.2021', '12:07:30pm', 'Adaugare', 'Checked', 'Admin'),
(11, 'Dan Banateanul', 'Bonus', 'none', 'Bonus score', 10, '19.11.2021', '10:21:00am', 'Adaugare', 'Checked', 'User'),
(12, 'Dan Banateanul', 'Bonus', 'none', 'Bonus score', 10, '19.11.2021', '10:21:03am', 'Adaugare', 'Checked', 'User'),
(13, 'Dan Banateanul', 'Bonus', 'none', 'Bonus score', 1, '20.11.2021', '10:24:28am', 'Adaugare', 'Checked', 'Admin'),
(14, 'Dan Banateanul', 'Bonus', 'none', 'Bonus score', 10, '20.11.2021', '10:24:37am', 'Adaugare', 'Checked', 'Admin'),
(15, 'Don-Dolarul Donalteanu', 'Extern', 'gtfo_category.extern', 'Participarea la un training extern FR/Grants related', 50, '20.11.2021', '10:45:30am', 'Adaugare', 'Checked', 'User'),
(16, 'Don-Dolarul Donalteanu', 'Extern', 'gtfo_category.extern', 'Participarea la un training extern FR/Grants related', 50, '20.11.2021', '10:45:30am', 'Adaugare', 'Checked', 'User'),
(17, 'Don-Dolarul Donalteanu', 'Extern', 'gtfo_category.extern', 'Participarea la un training extern FR/Grants related', 50, '20.11.2021', '10:45:30am', 'Adaugare', 'Checked', 'User'),
(18, 'Don-Dolarul Donalteanu', 'International', 'gtfo_category.international', 'Coordonator proiect CRD/GD related', 500, '20.11.2021', '10:45:36am', 'Adaugare', 'Checked', 'User'),
(19, 'Don-Dolarul Donalteanu', 'International', 'gtfo_category.international', 'Coordonator proiect CRD/GD related', 500, '20.11.2021', '10:45:36am', 'Adaugare', 'Checked', 'User'),
(20, 'Don-Dolarul Donalteanu', 'International', 'gtfo_category.international', 'Coordonator proiect CRD/GD related', 500, '20.11.2021', '10:45:43am', 'Adaugare', 'Checked', 'User'),
(21, 'Don-Dolarul Donalteanu', 'Bonus', 'none', 'Bonus score', 1, '20.11.2021', '10:45:45am', 'Adaugare', 'Checked', 'User'),
(22, 'Don-Dolarul Donalteanu', 'Bonus', 'none', 'Bonus score', 5, '20.11.2021', '10:45:47am', 'Adaugare', 'Checked', 'User'),
(23, 'Don-Dolarul Donalteanu', 'Bonus', 'none', 'Bonus score', 1, '20.11.2021', '10:45:48am', 'Adaugare', 'Checked', 'User'),
(24, 'Don-Dolarul Donalteanu', 'Bonus', 'none', 'Bonus score', 1, '20.11.2021', '11:49:31am', 'Adaugare', 'Checked', 'Admin'),
(25, 'Peny-Penibilool Duck', 'International', 'gtfo_category.international', 'CRD/GD delegate la RM', 250, '20.11.2021', '12:09:44pm', 'Adaugare', 'Checked', 'Admin'),
(26, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '20.11.2021', '12:10:30pm', 'Adaugare', 'Checked', 'Admin'),
(27, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '20.11.2021', '12:15:11pm', 'Adaugare', 'Checked', 'Admin'),
(28, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '20.11.2021', '12:15:11pm', 'Adaugare', 'Checked', 'Admin'),
(29, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '20.11.2021', '12:15:31pm', 'Adaugare', 'Checked', 'Admin'),
(30, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '20.11.2021', '12:16:48pm', 'Adaugare', 'Checked', 'Admin'),
(31, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '20.11.2021', '12:17:11pm', 'Adaugare', 'Checked', 'Admin'),
(32, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Participare beRICHER', 500, '20.11.2021', '12:18:53pm', 'Adaugare', 'Checked', 'Admin'),
(33, 'Dan Banateanul', 'EchipeFR', 'gtfo_category.frteams', 'Responsabil de FR la un eveniment', 200, '20.11.2021', '12:26:07pm', 'Adaugare', 'Checked', 'Admin'),
(34, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Responsabil de FR la un eveniment', 200, '20.11.2021', '12:32:34pm', 'Adaugare', 'Checked', 'Admin'),
(35, 'Random-Gregore Bestanul', 'Extern', 'gtfo_category.extern', 'Participarea la un training extern FR/Grants related', 50, '16.12.2021', '09:52:09am', 'Adaugare', 'Checked', 'Admin'),
(36, 'Random-Gregore Bestanul', 'Extern', 'gtfo_category.extern', 'Participarea la un training extern FR/Grants related', 50, '16.12.2021', '09:52:09am', 'Adaugare', 'Checked', 'Admin'),
(37, 'Random-Gregore Bestanul', 'Extern', 'gtfo_category.extern', 'Participarea la un training extern FR/Grants related', 50, '16.12.2021', '09:52:09am', 'Adaugare', 'Checked', 'Admin'),
(38, 'Peny-Penibilool Duck', 'Departament', 'gtfo_category.department', 'Contactarea unei cpy pentru FR LBG extra', 10, '16.12.2021', '09:52:25am', 'Adaugare', 'Checked', 'Admin'),
(39, 'Peny-Penibilool Duck', 'Departament', 'gtfo_category.department', 'Contactarea unei cpy pentru FR LBG extra', 10, '16.12.2021', '09:52:25am', 'Adaugare', 'Checked', 'Admin'),
(40, 'Peny-Penibilool Duck', 'Departament', 'gtfo_category.department', 'Contactarea unei cpy pentru FR LBG extra', 10, '16.12.2021', '09:52:25am', 'Adaugare', 'Checked', 'Admin'),
(41, 'Peny-Penibilool Duck', 'Departament', 'gtfo_category.department', 'Contactarea unei cpy pentru FR LBG extra', 10, '16.12.2021', '09:52:25am', 'Adaugare', 'Checked', 'Admin'),
(42, 'Peny-Penibilool Duck', 'Departament', 'gtfo_category.department', 'Contactarea unei cpy pentru FR LBG extra', 10, '16.12.2021', '09:52:25am', 'Adaugare', 'Checked', 'Admin'),
(43, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '09:52:36am', 'Adaugare', 'Checked', 'Admin'),
(44, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '09:52:36am', 'Adaugare', 'Checked', 'Admin'),
(45, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '09:52:36am', 'Adaugare', 'Checked', 'Admin'),
(46, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '09:52:36am', 'Adaugare', 'Checked', 'Admin'),
(47, 'Peny-Penibilool Duck', 'Extern', 'gtfo_category.extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '16.12.2021', '09:52:44am', 'Adaugare', 'Checked', 'Admin'),
(48, 'Peny-Penibilool Duck', 'Extern', 'gtfo_category.extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '16.12.2021', '09:52:44am', 'Adaugare', 'Checked', 'Admin'),
(49, 'Dan Banateanul', 'Departament', 'gtfo_category.department', 'Secretar Departament', 250, '16.12.2021', '09:52:53am', 'Adaugare', 'Checked', 'Admin'),
(50, 'Dan Banateanul', 'Departament', 'gtfo_category.department', 'Secretar Departament', 250, '16.12.2021', '09:52:53am', 'Adaugare', 'Checked', 'Admin'),
(51, 'Dan Banateanul', 'International', 'gtfo_category.international', 'FR in echipa de EBEC/GM', 100, '16.12.2021', '09:53:05am', 'Adaugare', 'Checked', 'Admin'),
(52, 'Dan Banateanul', 'International', 'gtfo_category.international', 'FR in echipa de EBEC/GM', 100, '16.12.2021', '09:53:05am', 'Adaugare', 'Checked', 'Admin'),
(53, 'Dan Banateanul', 'International', 'gtfo_category.international', 'FR in echipa de EBEC/GM', 100, '16.12.2021', '09:53:05am', 'Adaugare', 'Checked', 'Admin'),
(54, 'Dan Banateanul', 'International', 'gtfo_category.international', 'FR in echipa de EBEC/GM', 100, '16.12.2021', '09:53:05am', 'Adaugare', 'Checked', 'Admin'),
(55, 'Random-Gregore Bestanul', 'Extern', 'gtfo_category.extern', 'Participarea la un training extern FR/Grants related', 50, '16.12.2021', '10:23:51am', 'Stergere', 'Checked', 'Admin'),
(56, 'Random-Gregore Bestanul', 'Extern', 'gtfo_category.extern', 'Participarea la un training extern FR/Grants related', 50, '16.12.2021', '10:23:51am', 'Stergere', 'Checked', 'Admin'),
(57, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Responsabil de FR la un eveniment', 200, '16.12.2021', '10:32:33am', 'Stergere', 'Checked', 'User'),
(58, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Responsabil de FR la un eveniment', 200, '16.12.2021', '10:32:33am', 'Stergere', 'Checked', 'User'),
(59, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Responsabil de FR la un eveniment', 200, '16.12.2021', '10:32:33am', 'Stergere', 'Checked', 'User'),
(60, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Coordonator Departament FR', 500, '16.12.2021', '11:49:41am', 'Stergere', 'Checked', 'Admin'),
(61, 'Random-Gregore Bestanul', 'Extern', 'gtfo_category.extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '16.12.2021', '11:51:13am', 'Adaugare', 'Checked', 'User'),
(62, 'Random-Gregore Bestanul', 'Extern', 'gtfo_category.extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '16.12.2021', '11:51:13am', 'Adaugare', 'Checked', 'User'),
(63, 'Random-Gregore Bestanul', 'Extern', 'gtfo_category.extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '16.12.2021', '11:51:13am', 'Adaugare', 'Checked', 'User'),
(64, 'Random-Gregore Bestanul', 'Extern', 'gtfo_category.extern', 'Aducerea de carti de vizita din evenimente de networking', 25, '16.12.2021', '11:51:13am', 'Adaugare', 'Checked', 'User'),
(65, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Responsabil de FR la un eveniment', 200, '16.12.2021', '11:51:21am', 'Adaugare', 'Checked', 'User'),
(66, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Responsabil de FR la un eveniment', 200, '16.12.2021', '11:51:21am', 'Adaugare', 'Checked', 'User'),
(67, 'Random-Gregore Bestanul', 'Granturi', 'gtfo_category.grants', 'Coordonator WG', 350, '16.12.2021', '11:51:26am', 'Adaugare', 'Checked', 'User'),
(68, 'Random-Gregore Bestanul', 'Granturi', 'gtfo_category.grants', 'Coordonator WG', 350, '16.12.2021', '11:51:26am', 'Adaugare', 'Checked', 'User'),
(69, 'Random-Gregore Bestanul', 'Granturi', 'gtfo_category.grants', 'Coordonator WG', 350, '16.12.2021', '11:51:26am', 'Adaugare', 'Checked', 'User'),
(70, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '11:51:32am', 'Adaugare', 'Checked', 'User'),
(71, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '11:51:32am', 'Adaugare', 'Checked', 'User'),
(72, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '11:51:32am', 'Adaugare', 'Checked', 'User'),
(73, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '11:51:32am', 'Adaugare', 'Checked', 'User'),
(74, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Raspuns pozitiv cpy pentru FR LBG extra', 50, '16.12.2021', '11:51:49am', 'Adaugare', 'Checked', 'User'),
(75, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Raspuns pozitiv cpy pentru FR LBG extra', 50, '16.12.2021', '11:51:49am', 'Adaugare', 'Checked', 'User'),
(76, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Raspuns pozitiv cpy pentru FR LBG extra', 50, '16.12.2021', '11:51:49am', 'Adaugare', 'Checked', 'User'),
(77, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Raspuns pozitiv cpy pentru FR LBG extra', 50, '16.12.2021', '11:51:49am', 'Adaugare', 'Checked', 'User'),
(78, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '16.12.2021', '11:51:56am', 'Adaugare', 'Checked', 'User'),
(79, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '16.12.2021', '11:51:56am', 'Adaugare', 'Checked', 'User'),
(80, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '16.12.2021', '11:51:56am', 'Adaugare', 'Checked', 'User'),
(81, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Task CRD/GD', 50, '16.12.2021', '11:52:02am', 'Adaugare', 'Checked', 'User'),
(82, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Task CRD/GD', 50, '16.12.2021', '11:52:02am', 'Adaugare', 'Checked', 'User'),
(83, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Task CRD/GD', 50, '16.12.2021', '11:52:02am', 'Adaugare', 'Checked', 'User'),
(84, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '16.12.2021', '11:52:09am', 'Adaugare', 'Checked', 'User'),
(85, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '16.12.2021', '11:52:09am', 'Adaugare', 'Checked', 'User'),
(86, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Coordonator Departament FR', 500, '16.12.2021', '11:52:17am', 'Adaugare', 'Checked', 'User'),
(87, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Coordonator Departament FR', 500, '16.12.2021', '11:52:17am', 'Adaugare', 'Checked', 'User'),
(88, 'Random-Gregore Bestanul', 'Departament', 'gtfo_category.department', 'Coordonator Departament FR', 500, '16.12.2021', '11:52:17am', 'Adaugare', 'Checked', 'User'),
(89, 'Random-Gregore Bestanul', 'Granturi', 'gtfo_category.grants', 'Feedback granturi', 10, '16.12.2021', '11:52:37am', 'Adaugare', 'Checked', 'User'),
(90, 'Dan Banateanul', 'Granturi', 'gtfo_category.grants', 'Coordonator WG', 350, '16.12.2021', '11:53:02am', 'Adaugare', 'Checked', 'Admin'),
(91, 'Dan Banateanul', 'Granturi', 'gtfo_category.grants', 'Coordonator WG', 350, '16.12.2021', '11:53:02am', 'Adaugare', 'Checked', 'Admin'),
(92, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(93, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(94, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(95, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(96, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(97, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(98, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(99, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(100, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(101, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(102, 'Random-Gregore Bestanul', 'EchipeFR', 'gtfo_category.frteams', 'Sunat 10 cpy pentru un eveniment', 25, '16.12.2021', '11:53:15am', 'Adaugare', 'Checked', 'Admin'),
(103, 'Random-Gregore Bestanul', 'Granturi', 'gtfo_category.grants', 'Coordonator WG', 350, '16.12.2021', '11:53:24am', 'Adaugare', 'Checked', 'Admin'),
(104, 'Random-Gregore Bestanul', 'Granturi', 'gtfo_category.grants', 'Coordonator WG', 350, '16.12.2021', '11:53:24am', 'Adaugare', 'Checked', 'Admin'),
(105, 'Random-Gregore Bestanul', 'Granturi', 'gtfo_category.grants', 'Coordonator WG', 350, '16.12.2021', '11:53:24am', 'Adaugare', 'Checked', 'Admin'),
(106, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'FR in echipa de EBEC/GM', 100, '16.12.2021', '11:53:34am', 'Adaugare', 'Checked', 'Admin'),
(107, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'FR in echipa de EBEC/GM', 100, '16.12.2021', '11:53:34am', 'Adaugare', 'Checked', 'Admin'),
(108, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Coordonator proiect CRD/GD related', 500, '16.12.2021', '11:53:47am', 'Adaugare', 'Checked', 'Admin'),
(109, 'Random-Gregore Bestanul', 'International', 'gtfo_category.international', 'Coordonator proiect CRD/GD related', 500, '16.12.2021', '11:53:47am', 'Adaugare', 'Checked', 'Admin'),
(110, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo_category.frteams', 'Responsabil de FR la un eveniment', 200, '16.12.2021', '11:53:58am', 'Adaugare', 'Checked', 'Admin'),
(111, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo_category.frteams', 'Responsabil de FR la un eveniment', 200, '16.12.2021', '11:53:58am', 'Adaugare', 'Checked', 'Admin'),
(112, 'Peny-Penibilool Duck', 'EchipeFR', 'gtfo_category.frteams', 'Responsabil de FR la un eveniment', 200, '16.12.2021', '11:53:58am', 'Adaugare', 'Checked', 'Admin'),
(113, 'Peny-Penibilool Duck', 'Granturi', 'gtfo_category.grants', 'Feedback granturi', 10, '16.12.2021', '11:54:08am', 'Adaugare', 'Checked', 'Admin'),
(114, 'Peny-Penibilool Duck', 'Granturi', 'gtfo_category.grants', 'Feedback granturi', 10, '16.12.2021', '11:54:08am', 'Adaugare', 'Checked', 'Admin'),
(115, 'Peny-Penibilool Duck', 'Granturi', 'gtfo_category.grants', 'Feedback granturi', 10, '16.12.2021', '11:54:08am', 'Adaugare', 'Checked', 'Admin'),
(116, 'Don-Dolarul Donalteanu', 'EchipeFR', 'gtfo_category.frteams', 'O intalnire pentru un eveniment', 25, '16.12.2021', '11:54:21am', 'Adaugare', 'Checked', 'Admin'),
(117, 'Don-Dolarul Donalteanu', 'EchipeFR', 'gtfo_category.frteams', 'O intalnire pentru un eveniment', 25, '16.12.2021', '11:54:21am', 'Adaugare', 'Checked', 'Admin'),
(118, 'Don-Dolarul Donalteanu', 'EchipeFR', 'gtfo_category.frteams', 'O intalnire pentru un eveniment', 25, '16.12.2021', '11:54:21am', 'Adaugare', 'Checked', 'Admin'),
(119, 'Don-Dolarul Donalteanu', 'EchipeFR', 'gtfo_category.frteams', 'O intalnire pentru un eveniment', 25, '16.12.2021', '11:54:21am', 'Adaugare', 'Checked', 'Admin'),
(120, 'Don-Dolarul Donalteanu', 'Granturi', 'gtfo_category.grants', 'Task extra pe Granturi', 100, '16.12.2021', '11:54:35am', 'Adaugare', 'Checked', 'Admin'),
(121, 'Don-Dolarul Donalteanu', 'Granturi', 'gtfo_category.grants', 'Task extra pe Granturi', 100, '16.12.2021', '11:54:35am', 'Adaugare', 'Checked', 'Admin'),
(122, 'Don-Dolarul Donalteanu', 'Granturi', 'gtfo_category.grants', 'Task extra pe Granturi', 100, '16.12.2021', '11:54:35am', 'Adaugare', 'Checked', 'Admin'),
(123, 'Dan Banateanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '11:55:26am', 'Adaugare', 'Checked', 'Admin'),
(124, 'Dan Banateanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '11:55:26am', 'Adaugare', 'Checked', 'Admin'),
(125, 'Dan Banateanul', 'Departament', 'gtfo_category.department', 'Curatare HubSpot', 100, '16.12.2021', '11:55:26am', 'Adaugare', 'Checked', 'Admin'),
(126, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo_category.department', 'Realizare Mentorat FR', 100, '16.12.2021', '11:55:39am', 'Adaugare', 'Checked', 'Admin'),
(127, 'Don-Dolarul Donalteanu', 'Departament', 'gtfo_category.department', 'Realizare Mentorat FR', 100, '16.12.2021', '11:55:39am', 'Adaugare', 'Checked', 'Admin');

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

--
-- Dumping data for table `scores_admin`
--

INSERT INTO `scores_admin` (`id`, `Member`, `Task`, `Score`, `Date1`, `Date2`, `Action`, `Status`) VALUES
(1, 'Don-Dolarul Donalteanu', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '16.09.2021', '02:43:33pm', 'Adaugare', 'Unchecked'),
(2, 'Don-Dolarul Donalteanu', 'Participare beRICHER', 500, '16.09.2021', '02:43:54pm', 'Adaugare', 'Unchecked'),
(3, 'Don-Dolarul Donalteanu', 'Participare beRICHER', 500, '16.09.2021', '02:43:54pm', 'Adaugare', 'Unchecked'),
(4, 'Don-Dolarul Donalteanu', 'Coordonator WG', 350, '16.09.2021', '02:44:05pm', 'Adaugare', 'Unchecked');

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

--
-- Dumping data for table `scores_user`
--

INSERT INTO `scores_user` (`id`, `Member`, `Task`, `Score`, `Date1`, `Date2`, `Action`, `Status`) VALUES
(1, 'Dan Banateanul', 'Mass email-ing la un eveniment', 150, '17.09.2021', '11:16:02am', 'Adaugare', 'Unchecked'),
(2, 'Dan Banateanul', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Unchecked'),
(3, 'Dan Banateanul', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Unchecked'),
(4, 'Dan Banateanul', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Unchecked'),
(5, 'Dan Banateanul', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Unchecked'),
(6, 'Dan Banateanul', 'Task extra pe Granturi', 100, '17.09.2021', '11:32:10am', 'Adaugare', 'Unchecked');

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
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
(6, 'FOSSIL LION', 'both', 1251, 5000);

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
(6, 'Peny-Penibilool Duck', 'peny-penibilool.duck', 'peny-penibilool.duck@bestis.ro', 'e67c10a4c8fbfc0c400e047bb9a056a1', 'User');

--
-- Indexes for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `scores_admin`
--
ALTER TABLE `scores_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `scores_user`
--
ALTER TABLE `scores_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
