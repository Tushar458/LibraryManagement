-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2022 at 10:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(60) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminName`, `password`, `username`, `email`, `photo`) VALUES
(1, 'Ritik Panchal', 'Ritik123', 'Ritik_pcl', 'ritikpcl@gmail.com', '2086_1527169280.png');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` int(11) NOT NULL,
  `bookTitle` varchar(150) NOT NULL,
  `author` varchar(60) NOT NULL,
  `ISBN` varchar(30) NOT NULL,
  `bookCopies` varchar(10) NOT NULL,
  `publisherName` varchar(60) NOT NULL,
  `available` varchar(10) NOT NULL,
  `categories` varchar(30) NOT NULL,
  `callNumber` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `bookTitle`, `author`, `ISBN`, `bookCopies`, `publisherName`, `available`, `categories`, `callNumber`) VALUES
(5, 'How to Become a Billionaire', 'James Flitch', '1900-124-3242', '30', 'Robert Muller', 'YES', 'Morals', '0902334'),
(6, 'Oliver Twist', 'Charles Dickey', '123-423-4-13', '12', 'African Books.Inc', 'YES', 'Fairy Tail', '0216230.'),
(7, 'Death of a million starts', 'Breakthrough', '123', '3', 'Rexxon', 'YES', '123', '12');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrowId` int(11) NOT NULL,
  `memberName` varchar(255) NOT NULL,
  `roll_no` varchar(30) DEFAULT NULL,
  `bookName` varchar(255) NOT NULL,
  `borrowDate` varchar(20) NOT NULL,
  `returnDate` varchar(20) NOT NULL,
  `bookId` int(2) NOT NULL,
  `borrowStatus` int(2) NOT NULL,
  `fine` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrowId`, `memberName`, `roll_no`, `bookName`, `borrowDate`, `returnDate`, `bookId`, `borrowStatus`, `fine`) VALUES
(1, 'Susheet', '2K20/SE/139', 'Oliver Twist', '23-03-2022', '29-04-2022', 6, 0, '50');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsId` int(11) NOT NULL,
  `announcement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`newsId`, `announcement`) VALUES
(1, 'Introduction to MySql book has been added,Please checkout!');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentId` int(11) NOT NULL,
  `roll_no` varchar(30) DEFAULT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dept` varchar(60) NOT NULL,
  `numOfBooks` int(11) NOT NULL,
  `moneyOwed` varchar(20) NOT NULL,
  `photo` text NOT NULL,
  `phoneNumber` varchar(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentId`, `roll_no`, `password`, `username`, `email`, `dept`, `numOfBooks`, `moneyOwed`, `photo`, `phoneNumber`, `name`) VALUES
(1, '2K20/SE/107', '1234', 'rpcl', 'ritik@gmail.com', 'Software Engineering', 2, '1500', '4477_1526321327.jpeg', '08124579655', 'Ritik'),
(2, '2K20/SE/139', '12345', 'Sch', 'susheet@gmail.com', 'Software Engineering', 2, '1234', '2093_1531223199.jpeg', '08124578966', 'Susheet');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowId`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrowId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
