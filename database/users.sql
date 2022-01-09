-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 11:51 AM
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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
