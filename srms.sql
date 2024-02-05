-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 10:48 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'niha', '1234qwer', '2023-11-30 11:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'student', '1234qwer', '2023-11-30 11:12:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(13, '1st semester', 1, '2023', '2023-11-11 02:02:14', NULL),
(14, '2nd semester', 2, '2019', '2023-11-11 02:02:25', NULL),
(16, '3rd semester', 3, '2019', '2023-11-11 02:02:37', NULL),
(17, '4th semester', 4, '2020', '2023-11-11 02:02:48', NULL),
(18, '5th semster', 5, '2020', '2023-11-11 02:03:04', NULL),
(19, '6th semester', 6, '2020', '2023-11-11 02:03:13', NULL),
(21, '7th semester', 7, '2021', '2023-11-11 02:03:23', NULL),
(22, '8th semester', 8, '2021', '2023-11-11 02:03:33', NULL),
(23, '9th semester', 9, '2021', '2023-11-11 02:03:40', NULL),
(24, '10th semester', 10, '2022', '2023-11-11 02:03:56', NULL),
(26, '11th semester', 11, '2022', '2023-11-11 02:03:56', NULL),
(27, '12th semester', 12, '2022', '2023-11-11 02:03:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(2, 'Notice regarding result Delearation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Adipiscing elit ut aliquam purus. Vel risus commodo viverra maecenas. Et netus et malesuada fames ac turpis egestas sed. Cursus eget nunc scelerisque viverra mauris in aliquam sem fringilla. Ornare arcu odio ut sem nulla pharetra diam. Vel pharetra vel turpis nunc eget lorem dolor sed. Velit ut tortor pretium viverra suspendisse. In ornare quam viverra orci sagittis eu. Viverra tellus in hac habitasse. Donec massa sapien faucibus et molestie. Libero justo laoreet sit amet cursus sit amet dictum. Dignissim diam quis enim lobortis scelerisque fermentum dui.\r\n\r\nEget nulla facilisi etiam dignissim. Quisque non tellus orci ac. Amet cursus sit amet dictum sit amet justo donec. Interdum velit euismod in pellentesque massa. Condimentum lacinia quis vel eros donec ac odio. Magna eget est lorem ipsum dolor. Bibendum at varius vel pharetra vel turpis nunc eget lorem. Pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet. Maecenas accumsan lacus vel facilisis volutpat est velit egestas dui. Massa tincidunt dui ut ornare lectus sit amet est placerat. Nisi quis eleifend quam adipiscing vitae.', '2022-01-01 14:34:58'),
(3, 'Test Notice', 'This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  This is for testing purposes only.  ', '2022-01-01 14:48:32'),
(5, 'niha', 'tufjtyfujtfjufyuj', '2023-11-09 13:35:16'),
(7, 'notice', 'tis is the notice', '2023-12-20 05:40:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(28, 9, 24, 18, 92, '2023-11-11 02:18:48', NULL),
(29, 9, 24, 26, 65, '2023-11-11 02:18:48', NULL),
(30, 9, 24, 23, 65, '2023-11-11 02:18:49', NULL),
(31, 9, 24, 17, 88, '2023-11-11 02:18:49', NULL),
(32, 9, 24, 24, 82, '2023-11-11 02:18:49', NULL),
(33, 9, 24, 19, 78, '2023-11-11 02:18:49', NULL),
(34, 9, 24, 22, 62, '2023-11-11 02:18:49', NULL),
(35, 9, 24, 21, 50, '2023-11-11 02:18:49', NULL),
(36, 9, 24, 20, 95, '2023-11-11 02:18:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(9, 'Sumaita Binte Hossain Niha', '01', 'niha@gmail.com', 'Female', '2006-10-15', 24, '2023-11-11 02:17:28', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(40, 13, 17, 1, '2023-11-11 02:12:31', NULL),
(41, 13, 18, 1, '2023-11-11 02:12:37', NULL),
(42, 13, 19, 1, '2023-11-11 02:12:43', NULL),
(43, 13, 21, 1, '2023-11-11 02:12:51', NULL),
(44, 24, 17, 1, '2023-11-11 02:12:57', NULL),
(45, 24, 18, 1, '2023-11-11 02:13:02', NULL),
(46, 24, 19, 1, '2023-11-11 02:13:08', NULL),
(47, 24, 20, 1, '2023-11-11 02:13:48', NULL),
(48, 24, 21, 1, '2023-11-11 02:14:00', NULL),
(49, 24, 22, 1, '2023-11-11 02:14:19', NULL),
(50, 24, 23, 1, '2023-11-11 02:14:24', NULL),
(51, 24, 24, 1, '2023-11-11 02:14:28', NULL),
(52, 24, 26, 1, '2023-11-11 02:14:34', NULL),
(53, 13, 17, 1, '2023-12-19 06:39:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(17, 'Introduction to computer system', 'CSE-1111', '2023-11-11 02:06:16', NULL),
(18, 'Introduction to computer system lab', 'CSE-1112', '2023-11-11 02:06:27', NULL),
(19, 'Math-I', 'MAT-1117', '2023-11-11 02:06:52', NULL),
(20, 'Structured programming language c', 'CSE-1231', '2023-11-11 02:06:52', NULL),
(21, 'Structured programming language C lab', 'CSE-1232\r\n', '2023-11-11 02:07:08', NULL),
(22, 'Physics-I', 'PHY-1139\r\n', '2023-11-11 02:10:13', NULL),
(23, 'Physics-II', 'Phy-1259', '2023-11-11 02:10:28', NULL),
(24, 'Math-II', 'MAT-1257', '2023-11-11 02:11:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
