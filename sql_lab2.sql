-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 12:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_lab2`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent table`
--

CREATE TABLE `agent table` (
  `id` int(10) NOT NULL,
  `agent_Id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee table`
--

CREATE TABLE `employee table` (
  `id` int(10) NOT NULL,
  `employee_Id` int(10) NOT NULL,
  `employeename` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `complaint status` enum('completed','inprogress','stuck') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user table`
--

CREATE TABLE `user table` (
  `id` int(10) NOT NULL,
  `user_Id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `complaints` varchar(255) NOT NULL,
  `complaint status` enum('closed','incomplete') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent table`
--
ALTER TABLE `agent table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`username`),
  ADD UNIQUE KEY `unique_1` (`email`),
  ADD UNIQUE KEY `unique_2` (`password`),
  ADD UNIQUE KEY `agent_Id` (`agent_Id`);

--
-- Indexes for table `employee table`
--
ALTER TABLE `employee table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`employeename`),
  ADD UNIQUE KEY `unique_1` (`email`),
  ADD UNIQUE KEY `unique_2` (`password`),
  ADD UNIQUE KEY `employee_Id` (`employee_Id`);

--
-- Indexes for table `user table`
--
ALTER TABLE `user table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Unique` (`username`),
  ADD UNIQUE KEY `unique_1` (`email`),
  ADD UNIQUE KEY `unique_2` (`password`),
  ADD UNIQUE KEY `user_Id` (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent table`
--
ALTER TABLE `agent table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee table`
--
ALTER TABLE `employee table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user table`
--
ALTER TABLE `user table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee table`
--
ALTER TABLE `employee table`
  ADD CONSTRAINT `ForeignKey` FOREIGN KEY (`employee_Id`) REFERENCES `agent table` (`id`);

--
-- Constraints for table `user table`
--
ALTER TABLE `user table`
  ADD CONSTRAINT `ForeignKey1` FOREIGN KEY (`user_Id`) REFERENCES `employee table` (`id`),
  ADD CONSTRAINT `ForeignKey2` FOREIGN KEY (`user_Id`) REFERENCES `agent table` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
