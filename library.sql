-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2015 at 07:03 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `BookId` int(11) NOT NULL,
  `bookName` varchar(30) DEFAULT NULL,
  `IsbnNo` varchar(10) DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `AuthorName` varchar(30) DEFAULT NULL,
  `Edition` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6747 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BookId`, `bookName`, `IsbnNo`, `CategoryId`, `AuthorName`, `Edition`) VALUES
(999, 'Quirky Southern Fiction', '120', 45234, 'dfsd', '2st'),
(4534, 'Man Of Darkness', '567', 1, NULL, '4th'),
(6746, 'Companion Of The Banished', '563', NULL, NULL, '3rd');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE IF NOT EXISTS `borrow` (
  `BorrowId` int(11) NOT NULL,
  `edition` varchar(20) NOT NULL,
  `IssueDate` date DEFAULT NULL,
  `RerurnDate` date DEFAULT NULL,
  `Fine` decimal(4,0) DEFAULT NULL,
  `BookId` int(11) DEFAULT NULL,
  `title` varchar(30) NOT NULL,
  `userId` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3529 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`BorrowId`, `edition`, `IssueDate`, `RerurnDate`, `Fine`, `BookId`, `title`, `userId`) VALUES
(1100, '1st', '2015-08-07', '2015-08-12', '20', 999, 'Quirky Southern Fiction', '3'),
(3512, '4th', '2015-08-06', '2015-08-20', NULL, 4534, 'Man Of Darkness', '12345'),
(3513, '', NULL, NULL, NULL, 999, '', '3'),
(3514, '1st', NULL, NULL, NULL, 999, 'Quirky Southern Fiction', '3'),
(3515, '4th', NULL, NULL, NULL, 4534, 'Man Of Darkness', '3'),
(3516, '3rd', NULL, NULL, NULL, 6746, 'Companion Of The Banished', '3'),
(3517, '1st', NULL, NULL, NULL, 999, 'Quirky Southern Fiction', '3'),
(3518, '4th', NULL, NULL, NULL, 4534, 'Man Of Darkness', '3'),
(3519, '3rd', NULL, NULL, NULL, 6746, 'Companion Of The Banished', '3'),
(3520, '4th', NULL, NULL, NULL, 4534, 'Man Of Darkness', '12345'),
(3521, '3rd', '0000-00-00', NULL, NULL, 6746, 'Companion Of The Banished', '12345'),
(3522, '3rd', '2015-08-08', NULL, NULL, 6746, 'Companion Of The Banished', '12345'),
(3523, '1st', '2015-08-08', '2015-08-15', NULL, 999, 'Quirky Southern Fiction', '12345'),
(3524, '2st', '2015-08-09', '2015-08-16', NULL, 999, 'Quirky Southern Fiction', 'admin'),
(3525, '2st', '2015-08-09', '2015-08-16', NULL, 999, 'Quirky Southern Fiction', '3'),
(3526, '4th', '2015-08-09', '2015-08-16', NULL, 4534, 'Man Of Darkness', '1'),
(3527, '4th', '2015-08-09', '2015-08-16', NULL, 4534, 'Man Of Darkness', '12345'),
(3528, '2st', '2015-08-09', '2015-08-16', NULL, 999, 'Quirky Southern Fiction', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `StudentId` varchar(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `About` varchar(300) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Name`, `Email`, `Password`, `StudentId`, `Gender`, `About`) VALUES
(1, 'rayhan', 'rayhanuddin55@gmail.com', 'asd', '3', 'aer', 'asefa'),
(2, 'Shariar sarzu', 's.t.sarzu@yahoo.com', '54321', '12345', 'male', 'deginer'),
(3, NULL, NULL, 'admin', 'admin', NULL, NULL),
(4, 'anjan', 'anjan@gmail.com', '12345', '123', 'male', 'ghcvhmj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BookId`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`BorrowId`), ADD KEY `BookId_idx` (`BookId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BookId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6747;
--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `BorrowId` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3529;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrow`
--
ALTER TABLE `borrow`
ADD CONSTRAINT `BookId` FOREIGN KEY (`BookId`) REFERENCES `book` (`BookId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
