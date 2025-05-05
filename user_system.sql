-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2024 at 01:33 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `email`) VALUES
(1, 'user2', '$2y$10$bI1iLyNQjsSKoo.Bmy1re.//pdyhoZHLPs2IrJisKX4Bk0FoctI.a', 'user', 'modestoelizalde1@gmail.com'),
(2, 'admin', '$2y$10$7HwIgVgYThXMrhSMj5iEy.4fKV.sBohZJwU9EkF0dgMkMBqUe1Kri', 'admin', 'admin@mail.com'),
(3, 'user1', '$2y$10$RqUileuZY5MfUZNC4nnp.eLgSCbpHsIBKagB1LBz6.g2VD41FMhES', 'user', 'akash@gmail.com'),
(4, 'Modesto234', '$2y$10$YsiYWznRiXMLCJ8Qof7fKey2N.5ZcQauj3WDx7dc4fdUoxdXHZbpW', 'user', 'admin@mail.com'),
(5, 'Modesto123', '$2y$10$3izG.G6y1VkK4fB6oVsBOuRcbk8W3obujqeCIJE/s/XbVjW9OZhfa', 'admin', 'admin@gmail.com'),
(6, 'Elizalde12345', '$2y$10$LoiBNaIt2NANi7pt/5Wj6er9qZIgcCndDPBMYepkOtvTt14ome8fS', 'admin', 'admin1@mail.com'),
(7, 'clint', '$2y$10$n2ilhDx2nMz4kC5Y51ui5umMyjHLX0L89q0pXWgzdmJhRy3MQ6Ucm', 'admin', 'clint@gmail.com'),
(8, 'clint', '$2y$10$T/MiUVV2aLTms5RPXNVvbutMEuJlJ8nj5O.2Yay6II1T18AUGLiti', 'admin', 'clint@gmail.com'),
(9, 'admin3', '$2y$10$uwtnA0QLnq4tYBblJKznj.BeU1wTBfm6s/lQgKvvmOJP3cHl.1TR6', 'admin', 'admin1234@mail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
