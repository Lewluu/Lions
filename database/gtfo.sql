-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 09:43 AM
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
(2, 'Dan Banateanul', 0, 0, 250, 0, 0, 'BABY LION', 250, 'female'),
(3, 'Don-Dolarul Donalteanu', 0, 0, 50, 350, 1000, 'BABY LION', 1400, 'male'),
(4, 'Peny-Penibilool Duck', 0, 0, 0, 0, 0, 'BABY LION', 0, 'male');

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

INSERT INTO `scores` (`id`, `Member`, `Category`, `Task`, `Score`, `Date`, `Time`, `Action`, `Status`, `AddedBy`) VALUES
(1, 'Don-Dolarul Donalteanu', 'EchipeFR', 'Completarea HubSpot-ului pe intreaga durata a procesului de FR la evenimentul respectiv', 50, '16.09.2021', '02:43:33pm', 'Adaugare', 'Checked', 'Admin'),
(2, 'Don-Dolarul Donalteanu', 'International', 'Participare beRICHER', 500, '16.09.2021', '02:43:54pm', 'Adaugare', 'Checked', 'Admin'),
(3, 'Don-Dolarul Donalteanu', 'International', 'Participare beRICHER', 500, '16.09.2021', '02:43:54pm', 'Adaugare', 'Checked', 'Admin'),
(4, 'Don-Dolarul Donalteanu', 'Granturi', 'Coordonator WG', 350, '16.09.2021', '02:44:05pm', 'Adaugare', 'Checked', 'Admin'),
(5, 'Dan Banateanul', 'International', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Unchecked', 'User'),
(6, 'Dan Banateanul', 'International', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Unchecked', 'User'),
(7, 'Dan Banateanul', 'International', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Unchecked', 'User'),
(8, 'Dan Banateanul', 'International', 'Participare beRICHER', 500, '17.09.2021', '11:31:45am', 'Adaugare', 'Unchecked', 'User'),
(9, 'Dan Banateanul', 'Granturi', 'Task extra pe Granturi', 100, '17.09.2021', '11:32:10am', 'Adaugare', 'Unchecked', 'User');

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
  `Score1` int(11) DEFAULT NULL,
  `Score2` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `Name`, `Score1`, `Score2`) VALUES
(1, 'BABY LION', 0, 250),
(2, 'TEEN LION', 251, 550),
(3, 'YOUNG LION', 551, 850),
(4, 'PAPA LION', 851, 1250),
(5, 'MAMA LION', 851, 1250),
(6, 'KING LION', 1250, 0);

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
