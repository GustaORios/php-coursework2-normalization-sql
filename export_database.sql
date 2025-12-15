-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2025 at 02:48 AM
-- Server version: 8.0.44
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coursework2`
--

-- --------------------------------------------------------

--
-- Table structure for table `DEPARTMENT`
--

CREATE TABLE `DEPARTMENT` (
  `Deptcode` bigint NOT NULL,
  `Deptname` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `Deptlocation` varchar(60) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `DEPARTMENT`
--

INSERT INTO `DEPARTMENT` (`Deptcode`, `Deptname`, `Deptlocation`) VALUES
(1, 'Sales', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'London'),
(4, 'HR', 'New York');

-- --------------------------------------------------------

--
-- Table structure for table `EMPLOYEE`
--

CREATE TABLE `EMPLOYEE` (
  `Empno` bigint NOT NULL,
  `Name` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `Job` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `hiredate` date NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `Deptcode` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `EMPLOYEE`
--

INSERT INTO `EMPLOYEE` (`Empno`, `Name`, `Job`, `hiredate`, `salary`, `Deptcode`) VALUES
(1, 'Alice Johnson', 'Sales Representative', '2020-01-15', 60000.00, 1),
(2, 'Bob Smith', 'Software Developer', '2019-05-20', 85000.00, 2),
(3, 'Charlie Brown', 'Accountant', '2021-11-10', 70000.00, 3),
(4, 'David Lee', 'HR Specialist', '2022-08-01', 55000.00, 4),
(5, 'Eva Martinez', 'Sales Manager', '2018-03-25', 95000.00, 1),
(6, 'Frank Wilson', 'Data Analyst', '2020-10-01', 75000.00, 2),
(7, 'Grace Hall', 'Financial Analyst', '2023-01-05', 68000.00, 3),
(8, 'Henry Adams', 'Recruiter', '2021-04-12', 58000.00, 4),
(9, 'Ivy King', 'Sales Representative', '2023-09-17', 62000.00, 1),
(10, 'Jack Green', 'Senior Developer', '2017-12-01', 110000.00, 2),
(11, 'Karen Baker', 'Auditor', '2022-02-14', 72000.00, 3),
(12, 'Liam Scott', 'HR Manager', '2019-07-07', 80000.00, 4),
(13, 'Mia Chen', 'Sales Representative', '2024-01-22', 61000.00, 1),
(14, 'Noah White', 'System Administrator', '2018-11-11', 80000.00, 2),
(15, 'Olivia Clark', 'Tax Specialist', '2020-06-30', 74000.00, 3),
(16, 'Peter Evans', 'HR Assistant', '2023-05-01', 50000.00, 4),
(17, 'Quinn Taylor', 'Sales Representative', '2020-03-10', 64000.00, 1),
(18, 'Ryan Harris', 'Software Developer', '2021-02-28', 90000.00, 2),
(19, 'Sarah Lewis', 'Controller', '2019-09-09', 100000.00, 3),
(20, 'Tom Robinson', 'HR Specialist', '2022-12-15', 56000.00, 4),
(21, 'Uma Torres', 'Sales Representative', '2021-07-01', 63000.00, 1),
(22, 'Victor Perez', 'Network Engineer', '2019-04-04', 88000.00, 2),
(23, 'Wendy Kim', 'Financial Analyst', '2023-03-13', 69000.00, 3),
(24, 'Xavier Ross', 'Recruiter', '2020-11-20', 60000.00, 4),
(25, 'Yara Silva', 'Sales Representative', '2022-04-05', 65000.00, 1),
(26, 'Zane Miller', 'Technical Writer', '2021-10-10', 70000.00, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DEPARTMENT`
--
ALTER TABLE `DEPARTMENT`
  ADD PRIMARY KEY (`Deptcode`),
  ADD UNIQUE KEY `Deptname` (`Deptname`);

--
-- Indexes for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD PRIMARY KEY (`Empno`),
  ADD KEY `Deptcode_fk` (`Deptcode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `DEPARTMENT`
--
ALTER TABLE `DEPARTMENT`
  MODIFY `Deptcode` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  MODIFY `Empno` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `EMPLOYEE`
--
ALTER TABLE `EMPLOYEE`
  ADD CONSTRAINT `Deptcode_fk` FOREIGN KEY (`Deptcode`) REFERENCES `DEPARTMENT` (`Deptcode`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
