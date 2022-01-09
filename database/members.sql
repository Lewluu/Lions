-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 11:49 AM
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
(1, 'Random-Gregore Bestanul', 0, 0, 0, 0, 0, 'BABY LION', 0, 'male'),
(2, 'Dan Banateanul', 0, 0, 0, 0, 0, 'BABY LION', 0, 'female'),
(3, 'Don-Dolarul Donalteanu', 0, 0, 0, 0, 0, 'BABY LION', 0, 'male'),
(4, 'Peny-Penibilool Duck', 0, 0, 0, 0, 0, 'BABY LION', 0, 'male'),
(5, 'Eu-Cel Leu', 0, 0, 0, 0, 0, 'BABY LION', 0, 'female'),
(6, 'Leotz Nutz', 0, 0, 0, 0, 0, 'BABY LION', 0, 'female');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
