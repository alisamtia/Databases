-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2023 at 07:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alitest`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cid` int(11) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cid`, `city`) VALUES
(1, 'Lahor'),
(2, 'Layyah'),
(3, 'Multan');

-- --------------------------------------------------------

--
-- Table structure for table `cola2`
--

CREATE TABLE `cola2` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `city` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cola2`
--

INSERT INTO `cola2` (`id`, `name`, `age`, `gender`, `phone`, `city`) VALUES
(1, 'Ram Kumar', 19, 'M', 3081074466, '1'),
(2, 'Sarita Kumari', 22, 'F', 3081074466, '2'),
(3, 'Salman Khan', 20, 'M', 3081074466, '1'),
(4, 'Juhi Chawla', 18, 'F', 3081074466, '3'),
(5, 'Anil Kapoor', 22, 'M', 3081074466, '1'),
(6, 'John Abraham', 21, 'M', 3081074466, '2'),
(7, 'Shahid Kapoor', 20, 'M', 3081074466, '1'),
(8, 'Ram Kumar', 19, 'M', 3081074466, '1'),
(9, 'Sarita Kumari', 22, 'F', 3081074466, '2'),
(10, 'Salman Khan', 20, 'M', 3081074466, '1'),
(11, 'Juhi Chawla', 18, 'F', 3081074466, '3'),
(12, 'Anil Kapoor', 22, 'M', 3081074466, '1'),
(13, 'John Abraham', 21, 'M', 3081074466, '2'),
(14, 'Shahid Kapoor', 20, 'M', 3081074466, '1');

-- --------------------------------------------------------

--
-- Table structure for table `collage`
--

CREATE TABLE `collage` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL CHECK (`age` >= 18),
  `gender` varchar(10) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `city` varchar(10) NOT NULL DEFAULT 'layyah'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collage`
--

INSERT INTO `collage` (`id`, `name`, `age`, `gender`, `phone`, `city`) VALUES
(1, 'Ali samtia', 23, 'Male', 3081074466, 'layyah'),
(2, 'Ali Samtia', 25, 'M', 3032462636, 'layyah'),
(3, 'noman', 20, 'M', 4032462636, 'Lahor'),
(4, 'Ahmed', 21, 'M', 5032462636, 'Multan'),
(5, 'Alia', 19, 'F', 3632462636, 'Layyah'),
(6, 'Aoun', 30, 'M', 3732462636, 'Layyah'),
(7, 'Basit', 25, 'M', 9032462636, 'Layyah'),
(9, 'Arhid ali', 23, 'M', 9342462636, 'layyah');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `crid` int(11) NOT NULL,
  `couse` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `percentage` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `citys` int(20) DEFAULT NULL,
  `courses` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `percentage`, `age`, `gender`, `citys`, `courses`) VALUES
(1, 'Ram Kumar', 45, 13, 'M', 1, ''),
(2, 'Sarita Kumari', 56, 21, 'F', 2, ''),
(3, 'Salman Khan', 62, 20, 'M', 1, ''),
(4, 'Juhi Chawla', 47, 18, 'F', 3, ''),
(5, 'Anil Kapoor', 74, 22, 'M', 1, ''),
(6, 'John Abraham', 64, 21, 'M', 2, ''),
(7, 'Shahid Kapoor', 52, 20, 'M', 1, '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_d`
-- (See below for the actual view)
--
CREATE TABLE `student_d` (
`id` int(11)
,`name` varchar(30)
,`percentage` int(11)
,`age` int(11)
,`gender` varchar(1)
,`citys` int(20)
,`courses` varchar(30)
,`cid` int(11)
,`city` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `student_d`
--
DROP TABLE IF EXISTS `student_d`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_d`  AS SELECT `s`.`id` AS `id`, `s`.`name` AS `name`, `s`.`percentage` AS `percentage`, `s`.`age` AS `age`, `s`.`gender` AS `gender`, `s`.`citys` AS `citys`, `s`.`courses` AS `courses`, `c`.`cid` AS `cid`, `c`.`city` AS `city` FROM (`students` `s` join `city` `c` on(`s`.`citys` = `c`.`cid`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cola2`
--
ALTER TABLE `cola2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collage`
--
ALTER TABLE `collage`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`crid`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city` (`citys`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cola2`
--
ALTER TABLE `cola2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `crid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`citys`) REFERENCES `city` (`cid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
