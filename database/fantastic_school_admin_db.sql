-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 06:14 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fantastic_school_admin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `AccountNumber` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `Name`, `AccountNumber`) VALUES
(0, 'Bank of America', '00000132254545'),
(1, 'Equity Bank', '351672718822'),
(2, 'KCB Bank', '98262891719');

-- --------------------------------------------------------

--
-- Table structure for table `classattendance`
--

CREATE TABLE `classattendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `Subject` int(10) UNSIGNED NOT NULL,
  `Student` int(10) UNSIGNED NOT NULL,
  `RegNo` int(10) UNSIGNED DEFAULT NULL,
  `Class` int(10) UNSIGNED DEFAULT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL,
  `Attended` varchar(40) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classattendance`
--

INSERT INTO `classattendance` (`id`, `Subject`, `Student`, `RegNo`, `Class`, `Stream`, `Attended`, `Date`) VALUES
(0, 1, 1, 1, 1, 1, '1', '2018-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `Name`) VALUES
(0, '12'),
(1, 'Form One'),
(2, 'Form Two');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Date` date NOT NULL,
  `Details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `Name`, `Date`, `Details`) VALUES
(0, 'Bootcamp', '2018-07-30', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec maximus sollicitudin quam, vitae iaculis est pretium quis. Aliquam eget sapien odio. Sed erat augue, sollicitudin nec justo vel, dictum elementum nisi. Nunc augue ligula, bibendum egestas elit vel, egestas blandit velit. Donec tincidunt scelerisque lorem vel luctus. Phasellus eu tincidunt tellus, non tincidunt risus. Cras at eros orci. Proin sit amet malesuada mauris. Nunc massa velit, pellentesque id mi quis, efficitur semper dui.</p><br class="Apple-interchange-newline">');

-- --------------------------------------------------------

--
-- Table structure for table `examcategories`
--

CREATE TABLE `examcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examcategories`
--

INSERT INTO `examcategories` (`id`, `Name`) VALUES
(1, 'End Term 1');

-- --------------------------------------------------------

--
-- Table structure for table `examresults`
--

CREATE TABLE `examresults` (
  `id` int(10) UNSIGNED NOT NULL,
  `student` int(10) UNSIGNED NOT NULL,
  `RegNo` int(10) UNSIGNED DEFAULT NULL,
  `Class` int(10) UNSIGNED DEFAULT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL,
  `Category` int(10) UNSIGNED DEFAULT NULL,
  `Subject` int(10) UNSIGNED DEFAULT NULL,
  `Marks` int(11) NOT NULL,
  `Term` int(10) UNSIGNED NOT NULL,
  `AcademicYear` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feescollection`
--

CREATE TABLE `feescollection` (
  `id` int(10) UNSIGNED NOT NULL,
  `Student` int(10) UNSIGNED NOT NULL,
  `Class` int(10) UNSIGNED DEFAULT NULL,
  `Session` int(10) UNSIGNED NOT NULL,
  `PaidAmount` int(11) NOT NULL,
  `Balance` int(10) UNSIGNED DEFAULT NULL,
  `Branch` int(10) UNSIGNED NOT NULL,
  `Date` date DEFAULT NULL,
  `Remarks` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feescollection`
--

INSERT INTO `feescollection` (`id`, `Student`, `Class`, `Session`, `PaidAmount`, `Balance`, `Branch`, `Date`, `Remarks`) VALUES
(0, 0, 0, 1, 11000, 0, 1, '2018-07-30', 'Paid'),
(1, 1, 1, 1, 1000, 1, 1, '2018-05-02', NULL),
(2, 1, 1, 1, 3000, 1, 2, '2018-05-03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

CREATE TABLE `hostels` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hostels`
--

INSERT INTO `hostels` (`id`, `Name`, `Status`) VALUES
(0, 'Demo', 'Available'),
(1, 'Reez', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `membership_grouppermissions`
--

CREATE TABLE `membership_grouppermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `groupID` int(11) DEFAULT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_grouppermissions`
--

INSERT INTO `membership_grouppermissions` (`permissionID`, `groupID`, `tableName`, `allowInsert`, `allowView`, `allowEdit`, `allowDelete`) VALUES
(1, 2, 'students', 1, 3, 3, 3),
(2, 2, 'feescollection', 1, 3, 3, 3),
(3, 2, 'branch', 1, 3, 3, 3),
(4, 2, 'teachers', 1, 3, 3, 3),
(5, 2, 'subjects', 1, 3, 3, 3),
(6, 2, 'classes', 1, 3, 3, 3),
(7, 2, 'streams', 1, 3, 3, 3),
(8, 2, 'hostels', 1, 3, 3, 3),
(9, 2, 'timetable', 1, 3, 3, 3),
(10, 2, 'events', 1, 3, 3, 3),
(11, 2, 'notices', 1, 3, 3, 3),
(12, 2, 'examresults', 1, 3, 3, 3),
(13, 2, 'parents', 1, 3, 3, 3),
(14, 2, 'examcategories', 1, 3, 3, 3),
(15, 2, 'sessions', 1, 3, 3, 3),
(16, 2, 'studentcategories', 1, 3, 3, 3),
(17, 2, 'classattendance', 1, 3, 3, 3),
(18, 2, 'fee_structure', 1, 3, 3, 3),
(19, 2, 'fee_structure', 1, 3, 3, 3),
(20, 2, 'fee_structure', 1, 3, 3, 3),
(21, 2, 'schoolmoney', 1, 3, 3, 3),
(40, 3, 'students', 0, 3, 0, 0),
(41, 3, 'feescollection', 0, 3, 0, 0),
(42, 3, 'branch', 1, 3, 0, 0),
(43, 3, 'teachers', 0, 3, 0, 0),
(44, 3, 'subjects', 0, 3, 0, 0),
(45, 3, 'classes', 0, 3, 0, 0),
(46, 3, 'streams', 0, 3, 0, 0),
(47, 3, 'hostels', 0, 3, 0, 0),
(48, 3, 'timetable', 0, 3, 0, 0),
(49, 3, 'events', 1, 3, 0, 0),
(50, 3, 'notices', 0, 3, 0, 0),
(51, 3, 'examresults', 0, 3, 0, 0),
(52, 3, 'parents', 0, 3, 0, 0),
(53, 3, 'examcategories', 0, 3, 0, 0),
(54, 3, 'sessions', 0, 3, 0, 0),
(55, 3, 'studentcategories', 0, 3, 0, 0),
(56, 3, 'classattendance', 0, 3, 0, 0),
(57, 3, 'schoolmoney', 0, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_groups`
--

CREATE TABLE `membership_groups` (
  `groupID` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `description` text,
  `allowSignup` tinyint(4) DEFAULT NULL,
  `needsApproval` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_groups`
--

INSERT INTO `membership_groups` (`groupID`, `name`, `description`, `allowSignup`, `needsApproval`) VALUES
(1, 'anonymous', 'Anonymous group created automatically on 2018-05-02', 0, 0),
(2, 'Admins', 'Admin group created automatically on 2018-05-02', 0, 1),
(3, 'users', 'all test users', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `membership_userpermissions`
--

CREATE TABLE `membership_userpermissions` (
  `permissionID` int(10) UNSIGNED NOT NULL,
  `memberID` varchar(20) NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `allowInsert` tinyint(4) DEFAULT NULL,
  `allowView` tinyint(4) NOT NULL DEFAULT '0',
  `allowEdit` tinyint(4) NOT NULL DEFAULT '0',
  `allowDelete` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `membership_userrecords`
--

CREATE TABLE `membership_userrecords` (
  `recID` bigint(20) UNSIGNED NOT NULL,
  `tableName` varchar(100) DEFAULT NULL,
  `pkValue` varchar(255) DEFAULT NULL,
  `memberID` varchar(20) DEFAULT NULL,
  `dateAdded` bigint(20) UNSIGNED DEFAULT NULL,
  `dateUpdated` bigint(20) UNSIGNED DEFAULT NULL,
  `groupID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_userrecords`
--

INSERT INTO `membership_userrecords` (`recID`, `tableName`, `pkValue`, `memberID`, `dateAdded`, `dateUpdated`, `groupID`) VALUES
(1, 'classes', '1', 'admin', 1525280850, 1525280850, 2),
(2, 'classes', '2', 'admin', 1525280867, 1525280867, 2),
(3, 'streams', '1', 'admin', 1525280880, 1525280880, 2),
(4, 'streams', '2', 'admin', 1525280893, 1525280893, 2),
(5, 'branch', '1', 'admin', 1525280912, 1525280912, 2),
(6, 'branch', '2', 'admin', 1525280926, 1525280926, 2),
(7, 'sessions', '1', 'admin', 1525280952, 1586073892, 2),
(8, 'fee_structure', '1', 'admin', 1525281199, 1525281199, 2),
(9, 'students', '1', 'admin', 1525281461, 1597674025, 2),
(10, 'feescollection', '1', 'admin', 1525281522, 1525306950, 2),
(11, 'hostels', '1', 'admin', 1525281663, 1525281663, 2),
(12, 'subjects', '1', 'admin', 1525294277, 1525294277, 2),
(13, 'schoolmoney', '1', 'admin', 1525306280, 1525306280, 2),
(14, 'examcategories', '1', 'admin', 1525310012, 1525310012, 2),
(15, 'feescollection', '2', 'admin', 1525314888, 1525314888, 2),
(0, 'classattendance', '0', 'admin', 1532241827, 1532241827, 2),
(0, 'schoolmoney', '0', 'admin', 1532945263, 1532945263, 2),
(0, 'classes', '0', 'admin', 1532945290, 1532945290, 2),
(0, 'studentcategories', '0', 'admin', 1532945324, 1532945324, 2),
(0, 'parents', '0', 'admin', 1532945398, 1532945398, 2),
(0, 'students', '0', 'admin', 1532945405, 1532945405, 2),
(0, 'teachers', '0', 'admin', 1532956950, 1532956950, 2),
(0, 'subjects', '0', 'admin', 1532956992, 1532956992, 2),
(0, 'notices', '0', 'admin', 1532957308, 1532957308, 2),
(0, 'hostels', '0', 'admin', 1532957327, 1532957327, 2),
(0, 'feescollection', '0', 'admin', 1532957665, 1532957665, 2),
(0, 'branch', '0', 'admin', 1532957704, 1532957704, 2),
(0, 'events', '0', 'admin', 1532958930, 1532958930, 2);

-- --------------------------------------------------------

--
-- Table structure for table `membership_users`
--

CREATE TABLE `membership_users` (
  `slno` int(11) NOT NULL,
  `memberID` varchar(20) NOT NULL,
  `passMD5` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `signupDate` date DEFAULT NULL,
  `groupID` int(10) UNSIGNED DEFAULT NULL,
  `isBanned` tinyint(4) DEFAULT NULL,
  `isApproved` tinyint(4) DEFAULT NULL,
  `custom1` text,
  `custom2` text,
  `custom3` text,
  `custom4` text,
  `comments` text,
  `pass_reset_key` varchar(100) DEFAULT NULL,
  `pass_reset_expiry` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `membership_users`
--

INSERT INTO `membership_users` (`slno`, `memberID`, `passMD5`, `email`, `signupDate`, `groupID`, `isBanned`, `isApproved`, `custom1`, `custom2`, `custom3`, `custom4`, `comments`, `pass_reset_key`, `pass_reset_expiry`) VALUES
(1, 'admin', 'af359ab8f3da5f33ffa01f6736e8c02d', 'ronniengoda@gmail.com', '2018-05-02', 2, 0, 1, '', '', '', '', 'Admin member created automatically on 2018-05-02\r\nRecord updated automatically on 2018-05-03', NULL, NULL),
(2, 'guest', NULL, NULL, '2018-05-02', 1, 0, 1, NULL, NULL, NULL, NULL, 'Anonymous member created automatically on 2018-05-02', NULL, NULL),
(3, 'kelvin', '81dc9bdb52d04dc20036dbd8313ed055', 'petersunny6789@gmail.com', '2018-05-03', 3, 0, 1, '', '', '', '', 'member signed up through the registration form.', '5a752b270892f68a8af6ae2c7dde852c', 1586161033),
(4, 'harry', 'd3915844cde56f2dccfd24c7d34d12f0', 'harry@den.com', '2018-07-05', 3, 0, 1, '', '', '', '', 'member signed up through the registration form.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Date` date NOT NULL,
  `Details` text NOT NULL,
  `Posted_By` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `Name`, `Date`, `Details`, `Posted_By`) VALUES
(0, 'Spirng Carnival', '2018-07-30', 'To inform all the students about the Spring Carnival Event which is going to be held on school premises. All the students are requested to take part in different activities. For more details contact RTE.', 'admin'),
(0, 'Lockdown', '2020-04-05', 'On the occasion of the lockdown, the school will remain closed until further notification form government.', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Phone` varchar(40) NOT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `HomeAddress` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`id`, `Name`, `Phone`, `Email`, `HomeAddress`) VALUES
(0, 'Demo', '123456789', NULL, 'demo'),
(0, 'Shanthveer', '9342223238', NULL, 'Basavanagar Part-1st, Haliyal Road Dharw'),
(0, 'Roopa', '9380747126', 'petsuns@gmail.com', 'Basavanagar Part-1st, Haliyal Road Dharw'),
(0, 'Rahul', '1212121212', 'Rahul@gmail.com', 'Kyarkoppa Dharwad');

-- --------------------------------------------------------

--
-- Table structure for table `schoolmoney`
--

CREATE TABLE `schoolmoney` (
  `id` int(10) UNSIGNED NOT NULL,
  `Class` int(10) UNSIGNED NOT NULL,
  `Particulars` text NOT NULL,
  `Total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schoolmoney`
--

INSERT INTO `schoolmoney` (`id`, `Class`, `Particulars`, `Total`) VALUES
(1, 1, 'All fees-15000', '15000.00'),
(0, 2, 'demo', '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `Year` varchar(40) NOT NULL,
  `Term` varchar(40) NOT NULL,
  `status` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `Year`, `Term`, `status`) VALUES
(1, '2018', '2', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `streams`
--

CREATE TABLE `streams` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `streams`
--

INSERT INTO `streams` (`id`, `Name`) VALUES
(1, 'East'),
(2, 'Central');

-- --------------------------------------------------------

--
-- Table structure for table `studentcategories`
--

CREATE TABLE `studentcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `studentcategories`
--

INSERT INTO `studentcategories` (`id`, `Name`) VALUES
(0, 'Demo');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `FullName` varchar(40) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `DOB` date NOT NULL,
  `Photo` varchar(40) DEFAULT NULL,
  `RegNo` varchar(40) NOT NULL,
  `Class` int(10) UNSIGNED NOT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL,
  `Hostel` int(10) UNSIGNED DEFAULT NULL,
  `DOJ` date NOT NULL,
  `Category` int(10) UNSIGNED DEFAULT NULL,
  `AcademicYear` int(10) UNSIGNED NOT NULL,
  `TotalFees` int(10) UNSIGNED NOT NULL,
  `AdvanceFees` int(11) NOT NULL,
  `Balance` int(11) DEFAULT NULL,
  `Parent` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `FullName`, `Gender`, `DOB`, `Photo`, `RegNo`, `Class`, `Stream`, `Hostel`, `DOJ`, `Category`, `AcademicYear`, `TotalFees`, `AdvanceFees`, `Balance`, `Parent`) VALUES
(1, 'Ramesh', 'Male', '1916-01-18', NULL, 'IEBC/2017', 1, 2, 1, '2018-05-02', NULL, 1, 1, 10500, 4500, NULL),
(0, 'Harry Den', 'Male', '1996-02-05', NULL, '852', 0, 2, 1, '2018-07-30', 0, 1, 1, 500, 3500, 0),
(0, 'Christine Gray', 'Female', '1997-04-17', '04619000_1532957454.jpg', '123', 0, 2, 0, '2018-07-30', 0, 1, 0, 5000, 3500, 0),
(0, 'Johnny Doe', 'Male', '1996-03-16', '68070100_1532957566.png', '80', 0, 1, 1, '2018-07-30', 0, 1, 1, 6000, 3500, 0),
(0, 'Bruno Den', 'Male', '1996-12-18', '24894200_1532957631.png', '366', 0, 2, 1, '2018-07-30', 0, 1, 1, 2000, 3500, 0),
(0, 'William Carter', 'Male', '1996-09-15', '08808400_1532959007.png', '852', 0, 2, 0, '2018-07-30', 0, 1, 0, 1500, 13500, 0),
(0, 'Peter', 'Male', '1989-07-06', '09474800_1586073952.png', '07u11026', 1, 2, 1, '2020-01-01', 0, 1, 1, 5000, 10000, NULL),
(0, 'Aishwarya', 'Female', '2000-02-04', '84491300_1591767466.png', '07u11027', 1, 2, 0, '2020-06-10', 0, 1, 1, 5000, 10000, 0),
(0, 'Peter Sunny', 'Male', '1999-07-07', '95192900_1597674211.jpg', '07U11027', 0, 2, 0, '2020-08-17', 0, 1, 1, 10000, 5000, 0),
(0, 'Aishwarya', 'Female', '1999-05-14', NULL, '121212r1', 1, 2, 0, '2020-08-27', 0, 1, 1, 5000, 10000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `Name`) VALUES
(1, 'Tec 104'),
(0, 'Database'),
(0, 'Java'),
(0, 'Data Structure with C');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `Age` int(11) NOT NULL,
  `Phone` varchar(40) NOT NULL,
  `Email` varchar(80) DEFAULT NULL,
  `StaffNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `Name`, `Gender`, `Age`, `Phone`, `Email`, `StaffNumber`) VALUES
(0, 'John Doe', 'Male', 29, '7531598522', 'johndoe@gmail.com', 12),
(0, 'Benedict Cober', 'Male', 33, '1597534560', 'iambenedict@mail.com', 13);

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(10) UNSIGNED NOT NULL,
  `Time_Table` varchar(40) NOT NULL,
  `Class` int(10) UNSIGNED NOT NULL,
  `Stream` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classattendance`
--
ALTER TABLE `classattendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Subject` (`Subject`),
  ADD KEY `Student` (`Student`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examcategories`
--
ALTER TABLE `examcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examresults`
--
ALTER TABLE `examresults`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student` (`student`),
  ADD KEY `Category` (`Category`),
  ADD KEY `Subject` (`Subject`),
  ADD KEY `Term` (`Term`);

--
-- Indexes for table `feescollection`
--
ALTER TABLE `feescollection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Student` (`Student`),
  ADD KEY `Session` (`Session`),
  ADD KEY `Branch` (`Branch`);

--
-- Indexes for table `hostels`
--
ALTER TABLE `hostels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_grouppermissions`
--
ALTER TABLE `membership_grouppermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_groups`
--
ALTER TABLE `membership_groups`
  ADD PRIMARY KEY (`groupID`);

--
-- Indexes for table `membership_userpermissions`
--
ALTER TABLE `membership_userpermissions`
  ADD PRIMARY KEY (`permissionID`);

--
-- Indexes for table `membership_userrecords`
--
ALTER TABLE `membership_userrecords`
  ADD UNIQUE KEY `tableName_pkValue` (`tableName`,`pkValue`),
  ADD KEY `pkValue` (`pkValue`),
  ADD KEY `tableName` (`tableName`),
  ADD KEY `memberID` (`memberID`),
  ADD KEY `groupID` (`groupID`);

--
-- Indexes for table `membership_users`
--
ALTER TABLE `membership_users`
  ADD PRIMARY KEY (`slno`),
  ADD KEY `groupID` (`groupID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `membership_users`
--
ALTER TABLE `membership_users`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
