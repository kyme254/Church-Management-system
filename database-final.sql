-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2017 at 02:00 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chms`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `assetsid` int(100) NOT NULL,
  `assetsdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assetsitem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assetsamount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assetsverifiedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assetsnote` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assetsmonth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `assetsyear` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`assetsid`, `assetsdate`, `assetsitem`, `assetsamount`, `assetsverifiedby`, `assetsnote`, `assetsmonth`, `assetsyear`, `cdate`) VALUES
(3, '09/02/2017', 'Fans (100 Peices)', '5000', 'Pastor', '', 'February', '2017', ''),
(4, '18/02/2017', 'Projector', '30000', 'Pa', '', 'February', '2017', ''),
(5, '14/02/2017', 'A Computer', '200000', 'Pastor', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>', 'February', '2017', '15th September, 2017'),
(6, '29/06/2017', 'Computer', '10000', '', 'Note Something', 'June', '2017', '29 June 2017'),
(7, '29/06/2017', 'Printer', '10000', '', 'Note Something', 'June', '2017', '29 June 2017'),
(8, '29/06/2017', 'Camera', '10000', '', 'Note Something', 'June', '2017', '29 June 2017'),
(9, '29/06/2017', 'Photo Copyer', '15000', '', 'Note Something', 'June', '2017', '29 June 2017'),
(10, '29/06/2017', 'Telephone', '10000', '', 'Note Something', 'June', '2017', '29 June 2017'),
(11, '29/06/2017', 'Phone', '150', '', 'Note Something', 'June', '2017', '29 June 2017');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attenid` int(100) NOT NULL,
  `userid` int(100) NOT NULL,
  `time` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `grouptype` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attenid`, `userid`, `time`, `type`, `grouptype`, `status`, `month`, `year`) VALUES
(51, 2, '29/11/2017', 'Family Prayer Meeting', 'chorus', 'present', '11', '2017'),
(52, 3, '29/11/2017', 'Family Prayer Meeting', 'chorus', 'present', '11', '2017'),
(53, 3, '26/11/2017', 'Family Prayer Meeting', 'member', 'Present', '11', '2017'),
(54, 4, '26/11/2017', 'Family Prayer Meeting', 'member', 'Present', '11', '2017'),
(55, 5, '26/11/2017', 'Family Prayer Meeting', 'member', 'Present', '11', '2017'),
(56, 4, '26/11/2017', 'Family Prayer Meeting', 'committee', 'Present', '11', '2017'),
(57, 5, '26/11/2017', 'Family Prayer Meeting', 'committee', 'Present', '11', '2017'),
(58, 7, '26/11/2017', 'Family Prayer Meeting', 'committee', 'Present', '11', '2017'),
(59, 8, '26/11/2017', 'Family Prayer Meeting', 'committee', 'Present', '11', '2017'),
(60, 9, '26/11/2017', 'Family Prayer Meeting', 'committee', 'Present', '11', '2017'),
(61, 5, '26/11/2017', 'Family Prayer Meeting', 'pastor', 'Present', '11', '2017'),
(62, 2, '26/11/2017', 'Family Prayer Meeting', 'chorus', 'Present', '11', '2017'),
(63, 3, '26/11/2017', 'Family Prayer Meeting', 'chorus', 'Present', '11', '2017'),
(64, 2, '26/11/2017', 'Family Prayer Meeting', 'clan', 'Present', '11', '2017'),
(65, 3, '26/11/2017', 'Family Prayer Meeting', 'clan', 'Present', '11', '2017'),
(66, 3, '10-12-2017', 'Family Prayer Meeting', 'member', 'Present', '12', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `attendancetype`
--

CREATE TABLE `attendancetype` (
  `attendancetypeid` int(100) NOT NULL,
  `attendancetype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendancetype`
--

INSERT INTO `attendancetype` (`attendancetypeid`, `attendancetype`) VALUES
(1, 'Family Prayer Meeting');

-- --------------------------------------------------------

--
-- Table structure for table `chorus`
--

CREATE TABLE `chorus` (
  `chorusid` int(100) NOT NULL,
  `profileimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bpdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marriagedate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `socialstatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chorus`
--

INSERT INTO `chorus` (`chorusid`, `profileimage`, `fname`, `lname`, `gender`, `phone`, `email`, `bpdate`, `dob`, `blood`, `position`, `nationality`, `address`, `city`, `country`, `postal`, `cdate`, `facebook`, `twitter`, `googleplus`, `linkedin`, `youtube`, `pinterest`, `instagram`, `whatsapp`, `marriagedate`, `socialstatus`, `family`, `department`, `job`) VALUES
(2, '20171017_092054_861697.jpg', 'Adam', 'Simon', 'Male', '908-773-7785', 'JohnMDejesus@dayrep.com', '28/02/2017', '21/02/2017', 'B+', 'Member', 'USA', '', '', '', '', '17 October 2017', 'https://www.facebook.com/profile', '', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.youtube.com/', 'https://www.pinterest.com/', 'https://www.instagram.com/', '+00000000000', '', '', '', '', ''),
(3, '20171017_092015_407291.jpg', 'Philip', 'Simon', 'Male', '908-773-7785', 'JohnMDejesus@dayrep.com', '28/02/2017', '21/02/2017', 'B+', 'Member', 'USA', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `clan`
--

CREATE TABLE `clan` (
  `clanid` int(100) NOT NULL,
  `profileimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bpdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marriagedate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `socialstatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clan`
--

INSERT INTO `clan` (`clanid`, `profileimage`, `fname`, `lname`, `gender`, `phone`, `email`, `position`, `bpdate`, `dob`, `blood`, `nationality`, `address`, `city`, `country`, `postal`, `cdate`, `facebook`, `twitter`, `googleplus`, `linkedin`, `youtube`, `pinterest`, `instagram`, `whatsapp`, `marriagedate`, `socialstatus`, `family`, `department`, `job`) VALUES
(2, '20171017_091806_655314.jpg', 'Arnold', 'Simon', 'Male', '908-773-7785', 'JohnMDejesus@dayrep.com', 'Member', '17/10/1937', '17/10/1937', 'B+', 'USA', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '20171017_091750_533684.jpg', 'Philip', 'Simon', 'Male', '908-773-7785', 'JohnMDejesus@dayrep.com', 'Member', '22/02/2017', '09/02/2017', 'B+', 'USA', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '20171206_104601_413296.jpg', 'dfgdfgdfg', '', 'Male', 'dfgdfg', '', '', '', '', '', '', '', '', '', '', '6 December 2017', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `committeeid` int(100) NOT NULL,
  `profileimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bpdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `speech` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marriagedate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `socialstatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`committeeid`, `profileimage`, `fname`, `lname`, `phone`, `email`, `position`, `bpdate`, `blood`, `dob`, `nationality`, `speech`, `address`, `city`, `country`, `postal`, `cdate`, `facebook`, `twitter`, `googleplus`, `linkedin`, `youtube`, `pinterest`, `instagram`, `whatsapp`, `marriagedate`, `socialstatus`, `family`, `department`, `job`) VALUES
(4, '20171209_065935_924899.jpg', 'Simon', 'Marma', '1-593-758-5039', 'xnader@xn--qei.usa.cc', 'Minister', '14/02/2017', 'B+', '22/02/2017', 'USA', '', '', '', '', '', '9 December 2017', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '20171209_065913_758513.jpg', 'Anukul', 'Bormon', '01849222542', 'anu@cms.com', 'Marketing Manager', '16/02/2017', 'B+', '16/02/2017', 'Bangladeshi', '', '', 'Savar', 'Bangladesh', '1340', '9 December 2017', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '20171209_065857_197490.jpg', 'David', 'Hal', '01726562944', 'david@cms.com', 'Minister', '14/02/2017', 'B+', '21/02/2017', 'Bengali', '', '', 'Savar', 'Bangladesh', '1340', '9 December 2017', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '20171209_042832_115169.jpg', 'John', 'Hal', '01726562944', 'john@cms.com', 'Minister', '14/02/2017', 'B+', '21/02/2017', 'Bengali', '', '', 'Savar', 'Bangladesh', '1340', '9 December 2017', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, '20171209_042354_554338.jpg', 'Andrew', 'Ben', '1-593-758-5039', 'xnader@xn--qei.usa.cc', 'Minister', '13-02-1981', 'B+', '21-02-1971', 'USA', '<p><span style=\"color: rgb(153, 153, 153); text-align: center;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.</span></p>', '', '', '', '', '9 December 2017', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `departmentid` int(100) NOT NULL,
  `departmentname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `departmentleader` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `departmentcontact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `departmentarea` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `departmentname`, `departmentleader`, `departmentcontact`, `departmentarea`, `description`, `address`, `city`, `country`, `postal`, `cdate`) VALUES
(1, 'English Department 2', 'Simon', '', 'North Side', '', '', '', '', '', '25 November 2017'),
(2, 'Bangla Department', 'Simon', '', 'South Side', '', '', '', '', '', '25 November 2017');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `donationid` int(100) NOT NULL,
  `donationdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donationmonth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donationyear` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donationamount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donationsource` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donationby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donationinfo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donationreceivedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `donationnote` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donationid`, `donationdate`, `donationmonth`, `donationyear`, `donationamount`, `donationsource`, `donationby`, `donationinfo`, `donationreceivedby`, `donationnote`, `cdate`) VALUES
(3, '08/02/2017', 'February', '2017', '50000', 'London Church', 'Paypal', 'Paypal ID 125463215487945', 'Pastor', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.</p>', ''),
(4, '18/02/2017', 'May', '2017', '20000', 'Washington Church', 'Paypal', 'Paypal ID 153465468431', 'Pastor and Cashier ', '', '15th September, 2017'),
(5, '26/06/2017', 'June', '2017', '5000', 'Unknown', 'Bank', 'Cheque No. FBS 2448574', 'Pastor', '<p>New Donation</p>', 'June 26, 2017, 4:18 pm'),
(6, '29/06/2017', 'June', '2017', '10000', 'Londan Church', '', '', '', '', '29 June 2017'),
(7, '29/06/2017', 'June', '2017', '10000', 'Londan Church', '', '', '', '', '29 June 2017'),
(8, '29/06/2017', 'June', '2017', '10000', 'Londan Church', '', '', '', '', '29 June 2017'),
(9, '29/06/2017', 'June', '2017', '15000', 'Londan Church', '', '', '', '', '29 June 2017'),
(10, '29/06/2017', 'June', '2017', '10000', 'Londan Church', '', '', '', '', '29 June 2017'),
(11, '29/06/2017', 'June', '2017', '150', 'Londan Church', '', '', '', '', '29 June 2017');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventid` int(100) NOT NULL,
  `eventimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eventtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eventdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eventtime` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eventlocation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `eventdescription` text COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventid`, `eventimage`, `eventtitle`, `eventdate`, `eventtime`, `eventlocation`, `eventdescription`, `cdate`) VALUES
(3, '20170627_074726_467250.jpeg', 'Family Prayer', '13/05/2017', '15:00', 'Purnima\'s House', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'June 27, 2017, 7:47 am'),
(4, '20170224_054107_217725.jpg', 'Happy New Year', '30/05/2017', '12:00', 'Dhaka AG Church', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '15th September, 2017'),
(5, '20171202_070840_549117.jpg', 'Merry Christmas 2017', '25/12/2017', '12:00 PM', 'Temple, London EC4Y 7BB, UK', '<p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">Christmas is an annual festival commemorating the birth of Jesus Christ, observed most commonly on December 25 as a religious and cultural celebration among billions of people around the world.</span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">Christmas is an annual festival commemorating the birth of Jesus Christ, observed most commonly on December 25 as a religious and cultural celebration among billions of people around the world.</span><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p><p><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">Christmas is an annual festival commemorating the birth of Jesus Christ, observed most commonly on December 25 as a religious and cultural celebration among billions of people around the world.</span><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">Christmas is an annual festival commemorating the birth of Jesus Christ, observed most commonly on December 25 as a religious and cultural celebration among billions of people around the world.</span><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">Christmas is an annual festival commemorating the birth of Jesus Christ, observed most commonly on December 25 as a religious and cultural celebration among billions of people around the world.</span><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\">Christmas is an annual festival commemorating the birth of Jesus Christ, observed most commonly on December 25 as a religious and cultural celebration among billions of people around the world.</span><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 13px;\"><br></span></p>', '2 December 2017');

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `familyid` int(100) NOT NULL,
  `familyname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `familyleader` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `memberquantity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `familycontact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`familyid`, `familyname`, `familyleader`, `memberquantity`, `familycontact`, `address`, `city`, `country`, `postal`, `cdate`) VALUES
(2, 'Halder Family', 'Abraham Halder', '5', '', '', '', '', '', '23 November 2017'),
(3, 'Halder Family', 'Abraham Halder', '', '', '', '', '', '', '23 November 2017'),
(4, 'Halder Family', 'Abraham Halder', '', '', '', '', '', '', '23 November 2017'),
(5, 'Halder Family', 'Abraham Halder', '', '', '', '', '', '', '23 November 2017');

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

CREATE TABLE `funds` (
  `fundsid` int(100) NOT NULL,
  `fundsdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fundsmonth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fundsyear` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fundsamount` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fundstype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `receivedby` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fundssource` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fundsnote` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fundsbalance` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`fundsid`, `fundsdate`, `fundsmonth`, `fundsyear`, `fundsamount`, `fundstype`, `receivedby`, `fundssource`, `fundsnote`, `fundsbalance`, `cdate`) VALUES
(80, '29/07/2017', 'July', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(81, '29/07/2017', 'July', '2017', '5000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(82, '29/07/2017', 'July', '2017', '8000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(83, '29/07/2017', 'July', '2017', '5000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(84, '29/07/2017', 'July', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(85, '29/07/2017', 'July', '2017', '2300', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(86, '29/08/2017', 'August', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(87, '29/08/2017', 'August', '2017', '5000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(88, '29/08/2017', 'August', '2017', '18000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(89, '29/08/2017', 'August', '2017', '4000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(90, '29/08/2017', 'August', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(91, '29/08/2017', 'August', '2017', '3000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(92, '29/09/2017', 'September', '2017', '9000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(93, '29/09/2017', 'September', '2017', '5000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(94, '29/09/2017', 'September', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(95, '29/09/2017', 'September', '2017', '4000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(96, '29/09/2017', 'September', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(97, '29/09/2017', 'September', '2017', '2000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(98, '29/10/2017', 'October', '2017', '9000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(99, '29/10/2017', 'October', '2017', '5000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(100, '29/10/2017', 'October', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(101, '29/10/2017', 'October', '2017', '4000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(102, '29/10/2017', 'October', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(103, '29/10/2017', 'October', '2017', '10000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(104, '29/11/2017', 'November', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(105, '29/11/2017', 'November', '2017', '5000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(106, '29/11/2017', 'November', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(107, '29/11/2017', 'November', '2017', '4000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(108, '29/11/2017', 'November', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(109, '29/11/2017', 'November', '2017', '6000', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(110, '29/12/2017', 'December', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(111, '29/12/2017', 'December', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(112, '29/12/2017', 'December', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(113, '29/01/2017', 'January', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(114, '29/01/2017', 'January', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(115, '29/01/2017', 'January', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(116, '01/03/2017', 'March', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(117, '01/03/2017', 'March', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(118, '01/03/2017', 'March', '2017', '100', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(120, '01/03/2017', 'March', '2017', '500', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(121, '29/03/2017', 'March', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(123, '29/03/2017', 'March', '2017', '100', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(124, '29/03/2017', 'March', '2017', '6500', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(125, '29/04/2017', 'April', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(126, '29/04/2017', 'April', '2017', '6000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(127, '29/04/2017', 'April', '2017', '100', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(128, '29/04/2017', 'April', '2017', '5500', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(129, '29/05/2017', 'May', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(130, '29/05/2017', 'May', '2017', '16000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(131, '29/05/2017', 'May', '2017', '100', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(132, '29/05/2017', 'May', '2017', '5500', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(133, '29/05/2017', 'May', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(134, '29/05/2017', 'May', '2017', '11000', 'Collect', 'John', 'Londan Church', '', '', '5 September 2017'),
(135, '29/05/2017', 'May', '2017', '100', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(136, '29/05/2017', 'May', '2017', '5500', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(137, '29/05/2017', 'May', '2017', '5000', 'Spend', 'John', 'Londan Church', '', '', '5 September 2017'),
(138, '29/06/2017', 'June', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(139, '29/06/2017', 'June', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(140, '29/06/2017', 'June', '2017', '100', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(141, '29/06/2017', 'June', '2017', '5500', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(142, '29/06/2017', 'June', '2017', '500', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(143, '01/03/2017', 'March', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(145, '01/03/2017', 'March', '2017', '100', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(146, '01/03/2017', 'March', '2017', '5500', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(147, '01/03/2017', 'March', '2017', '500', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(148, '01/03/2017', 'March', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(150, '01/03/2017', 'March', '2017', '100', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(151, '01/03/2017', 'March', '2017', '5500', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(152, '01/03/2017', 'March', '2017', '500', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(153, '15/02/2017', 'February', '2017', '5000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(154, '15/02/2017', 'February', '2017', '10000', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(155, '15/02/2017', 'February', '2017', '100', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(156, '15/02/2017', 'February', '2017', '5500', 'Collect', 'John', 'Londan Church', 'Note Something', '', '5 September 2017'),
(157, '15/02/2017', 'February', '2017', '500', 'Spend', 'John', 'Londan Church', 'Note Something', '', '5 September 2017');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `galleryid` int(100) NOT NULL,
  `serialid` int(255) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`galleryid`, `serialid`, `filename`, `cdate`) VALUES
(63, 0, '20171017_092052_724599.jpg', '17 October 2017'),
(64, 0, '20171017_092113_505515.jpg', '17 October 2017'),
(65, 0, '20171017_092126_949481.jpg', '17 October 2017'),
(66, 0, '20171017_092218_495262.jpeg', '17 October 2017'),
(67, 0, '20171017_092231_207548.jpeg', '17 October 2017'),
(68, 0, '20171017_092254_414181.jpeg', '17 October 2017');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberid` int(100) NOT NULL,
  `profileimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bpdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marriagedate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socialstatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberid`, `profileimage`, `fname`, `lname`, `phone`, `email`, `position`, `bpdate`, `blood`, `dob`, `job`, `nationality`, `address`, `city`, `country`, `postal`, `cdate`, `facebook`, `twitter`, `googleplus`, `linkedin`, `youtube`, `pinterest`, `instagram`, `whatsapp`, `marriagedate`, `socialstatus`, `family`, `department`) VALUES
(3, '20171210_124644_224479.jpeg', 'Jackson', '', '908-773-7785', 'JohnMDejesus@dayrep.com', '', '', '', '', '', '', '', '', '', '', '10 December 2017', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '20171210_124923_864944.jpeg', 'Thomas', '', '908-773-7785', 'JohnMDejesus@dayrep.com', '', '', '', '', '', '', '', '', '', '', '10 December 2017', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '20171210_125012_318459.jpeg', 'Philip', '', '908-773-7785', 'JohnMDejesus@dayrep.com', '', '', '', '', '', '', '', '', '', '', '10 December 2017', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '20171210_125049_658936.jpeg', 'Horace', '', '316-531-2034', 'HoraceCWard@teleworm.us', '', '', '', '', '', '', '', '', '', '', '10 December 2017', '', '', '', '', '', '', '', '', '13-12-2017', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuid` int(100) NOT NULL,
  `serialid` int(100) NOT NULL,
  `subserialid` int(100) NOT NULL,
  `menupageid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menuname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menuparentid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menulink` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuid`, `serialid`, `subserialid`, `menupageid`, `menuname`, `menuparentid`, `menulink`, `cdate`) VALUES
(5, 1, 0, '', 'Contibutor', '', '#', ''),
(8, 5, 4, '', 'Member', '5', 'http://localhost/church/home/member', '9 December 2017'),
(10, 5, 5, '', 'Clan', '5', 'http://localhost/church/home/clan', '9 December 2017'),
(11, 5, 6, '', 'Student', '5', 'http://localhost/church/home/school', '9 December 2017'),
(12, 5, 7, '', 'Staff', '5', 'http://localhost/church/home/staff', '9 December 2017'),
(29, 16, 0, '', 'Login', '', 'http://localhost/church/access/login', '9 December 2017'),
(35, 0, 0, '', 'Home', '', 'http://localhost/church', '9 December 2017'),
(36, 5, 2, '', 'Committee', '5', 'http://localhost/church/home/committee', '9 December 2017'),
(37, 5, 3, '', 'Pastor', '5', 'http://localhost/church/home/pastor', '9 December 2017'),
(38, 9, 0, '', 'Events', '', 'http://localhost/church/home/event', '9 December 2017'),
(39, 8, 0, '', 'Sermon', '', 'http://localhost/church/home/sermon', '9 December 2017'),
(40, 10, 0, '', 'Prayer', '', 'http://localhost/church/home/prayer', '9 December 2017'),
(41, 13, 0, '', 'Notice', '', 'http://localhost/church/home/notice', '9 December 2017'),
(42, 12, 0, '', 'Speech', '', 'http://localhost/church/home/speech', '9 December 2017'),
(43, 11, 0, '', 'Seminar', '', 'http://localhost/church/home/seminar', '9 December 2017'),
(45, 14, 0, '', 'Gallery', '', 'http://localhost/church/home/gallery', '9 December 2017');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `noticeid` int(100) NOT NULL,
  `noticetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noticedescription` text COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`noticeid`, `noticetitle`, `noticedescription`, `cdate`) VALUES
(2, 'Prayer For Illness from Fever', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ''),
(3, 'Prayer For Business', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ''),
(4, 'Prayer For Education', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ''),
(5, 'Prayer For Health Test', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '15th September, 2017'),
(7, 'Bla Bla Bla', '<p>asdfsdfsdfasdfsf</p>', '15th September, 2017'),
(8, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(9, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(10, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(11, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `pageid` int(100) NOT NULL,
  `pagetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pageslug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pagecontent` text COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`pageid`, `pagetitle`, `pageslug`, `pagecontent`, `cdate`) VALUES
(1, 'Our Pastor', 'ourpastor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '8 September 2017'),
(2, 'About', 'about', '<p>sdasdasdasdasda</p>', '12 October 2017'),
(3, 'Chart', 'chart', '<h2>What is Lorem Ipsum?</h2><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '15th September, 2017');

-- --------------------------------------------------------

--
-- Table structure for table `pastor`
--

CREATE TABLE `pastor` (
  `pastorid` int(100) NOT NULL,
  `profileimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bpdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `speech` text COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marriagedate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `socialstatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pastor`
--

INSERT INTO `pastor` (`pastorid`, `profileimage`, `fname`, `lname`, `phone`, `email`, `position`, `bpdate`, `blood`, `dob`, `nationality`, `speech`, `address`, `city`, `country`, `postal`, `cdate`, `facebook`, `twitter`, `googleplus`, `linkedin`, `youtube`, `pinterest`, `instagram`, `whatsapp`, `marriagedate`, `socialstatus`, `family`, `department`, `job`) VALUES
(5, '20171017_091530_921286.jpg', 'Josh', 'Baei', '908-773-7785', 'JohnMDejesus@dayrep.com', 'Pastor', '05/02/1980', 'B+', '22/02/2017', 'USA', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged</p>', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, '20171206_075705_584127.jpeg', 'David', 'D. Pettengill', '708-939-3934', 'DavidDPettengill@rhyta.com', 'Senior Pastor', '27-11-2017', '', '', '', '', '', '', '', '', '9 December 2017', '', '', '', '', '', '', '', '', '05-12-2017', '', '', '', ''),
(7, '20171209_070314_873427.jpg', 'Phillip', 'K. Manning', '860-202-6209', 'PhillipKManning@teleworm.us', 'Junior Pastor', '06-12-2017', '', '', '', '', '', '', '', '', '9 December 2017', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '20171209_070539_815271.jpg', 'Jessica', 'J. Byrd', '240-646-5493', '', 'Pastor', '19-12-2017', '', '', '', '', '', '', '', '', '9 December 2017', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `prayer`
--

CREATE TABLE `prayer` (
  `prayerid` int(100) NOT NULL,
  `prayertitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prayerdescription` text COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `prayer`
--

INSERT INTO `prayer` (`prayerid`, `prayertitle`, `prayerdescription`, `cdate`) VALUES
(2, 'Prayer For Illness from Fever', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ''),
(3, 'Prayer For Business', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ''),
(4, 'Prayer For Education', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ''),
(5, 'Prayer For Health', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', ''),
(6, 'Prayer For Church', '<p><strong>Lorem Ipsum</strong><span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '15th September, 2017'),
(7, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(8, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(9, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(10, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(11, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(12, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(13, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(14, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(15, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(16, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(17, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017'),
(18, 'Prayer For Mr. John', 'Lorem Ipsum has been the industry\'s standard dumm', '29 June 2017');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `sectionid` int(100) NOT NULL,
  `serialid` int(100) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shortcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `btntext` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`sectionid`, `serialid`, `title`, `background`, `shortcode`, `content`, `link`, `btntext`, `cdate`) VALUES
(6, 0, 'Welcome To Church', '', '', '<h4>Lorem Ipsum<span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</h4><h4><br>Lorem Ipsum is simply dum text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</h4>', 'home/page/welcome', 'Read More...', '9 December 2017'),
(7, 1, 'Quote', '', '', '<blockquote style=\"text-align: center;\">For God so loved<span class=\"crossreference\" data-link=\"(<a href=&quot;#cen-NIV-26137A&quot; title=&quot;See cross-reference A&quot;>A</a>)\" data-cr=\"#cen-NIV-26137A\" style=\"line-height: 22px; position: relative; vertical-align: top; top: 0px;\"></span>&nbsp;the world that he gave<span class=\"crossreference\" data-link=\"(<a href=&quot;#cen-NIV-26137B&quot; title=&quot;See cross-reference B&quot;>B</a>)\" data-cr=\"#cen-NIV-26137B\" style=\"line-height: 22px; position: relative; vertical-align: top; top: 0px;\"></span>&nbsp;his one and only Son,<span class=\"crossreference\" data-link=\"(<a href=&quot;#cen-NIV-26137C&quot; title=&quot;See cross-reference C&quot;>C</a>)\" data-cr=\"#cen-NIV-26137C\" style=\"line-height: 22px; position: relative; vertical-align: top; top: 0px;\"></span>&nbsp;that whoever believes<span class=\"crossreference\" data-link=\"(<a href=&quot;#cen-NIV-26137D&quot; title=&quot;See cross-reference D&quot;>D</a>)\" data-cr=\"#cen-NIV-26137D\" style=\"line-height: 22px; position: relative; vertical-align: top; top: 0px;\"></span>&nbsp;in him shall not perish but have eternal life.<br><br><h1 class=\"passage-display\" style=\"text-align: center; margin-top: 0px; margin-bottom: 20px; font-size: 14px; font-family: &quot;Helvetica Neue&quot;, Verdana, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(0, 0, 0);\"><span class=\"passage-display-bcv\" style=\"-webkit-font-smoothing: antialiased; font-size: 18px; margin: 0px; display: inline; padding-right: 10px;\">John 3:16</span></h1></blockquote>', 'home/page/quote', 'Read More', '9 December 2017'),
(8, 2, 'Our Mission & Vision', '', '', '<h4><strong>Lorem Ipsum</strong> <span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></h4><h4><span><br></span><strong>Lorem Ipsum</strong> <span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></h4>', '', '', '9 December 2017'),
(9, 5, 'Speech', '', 'speech, speech, desc, speechid, 4', '', '', '', ''),
(12, 4, 'Seminar', '', 'event, seminar, desc,  seminarid, 6', '', '#', 'View More', '6 December 2017'),
(13, 3, 'Sermon', '20171210_012031_949587.jpg', 'event, sermon, desc, sermonid, 4', '', '#', 'View More', '10 December 2017'),
(14, 8, 'Member', '', 'group, member, desc, memberid, 4', '', '#', 'View More', '6 December 2017'),
(15, 6, 'Church Committee', '', 'group, committee, desc, committeeid, 4', '', '#', 'View More', '9 December 2017'),
(16, 7, 'Pastor', '', 'group, pastor, desc, pastorid, 4', '', '#', 'View More', '6 December 2017');

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `seminarid` int(100) NOT NULL,
  `seminarbanner` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seminartitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seminarslogan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seminardescription` text COLLATE utf8_unicode_ci NOT NULL,
  `seminarstart` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seminarend` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seminarlocation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seminar`
--

INSERT INTO `seminar` (`seminarid`, `seminarbanner`, `seminartitle`, `seminarslogan`, `seminardescription`, `seminarstart`, `seminarend`, `seminarlocation`, `cdate`) VALUES
(2, '20171017_094610_884524.jpg', 'Feel Jesus in your heart', 'Lorem Ipsum is simply dummy text of the printing', '<p>Lorem Ipsum<span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t</p>', '10/02/2017', '12/02/2017', 'NY, USA', '17 October 2017'),
(4, '20171210_015831_616262.jpg', 'God loves you', 'What is Lorem Ipsum?', '<h4>Lorem Ipsum<span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t</h4>', '27/03/2017', '27/03/2017', 'Temple, London EC4Y 7BB, UK', '10 December 2017'),
(5, '20171210_015602_144156.jpg', 'Believe in Jesus', 'What is Lorem Ipsum?', '<p>Lorem Ipsum<span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it tLorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t</p>', '27/03/2017', '27/03/2017', 'USA', '10 December 2017'),
(6, '20171210_015236_699065.jpg', 'Growing Up in Jesus', 'What is Lorem Ipsum?', '<p>Lorem Ipsum<span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t</p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t<br></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t<br></p><p>Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t<br></p>', '27/03/2017', '27/03/2017', 'USA', '10 December 2017'),
(7, '20171210_015054_918818.jpg', 'Spread The News Of Jesus', 'What is Lorem Ipsum?', '<p>It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,&nbsp;</p><p>but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus<strong><u>&nbsp;</u></strong></p>', '27/03/2017', '27/03/2017', 'USA', '10 December 2017'),
(8, '20171210_014743_943838.jpg', 'Youth Conference', 'What is Lorem Ipsum?', '<h4><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></h4>', '01-12-2017', '03-12-2017', 'Temple, London EC4Y 7BB, UK', '10 December 2017'),
(9, '20171210_014422_135739.jpg', 'Youth Conference', 'What is Lorem Ipsum?', '<h4><strong style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum</strong><span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></h4>', '01-12-2017', '03-12-2017', 'Temple, London EC4Y 7BB, UK', '10 December 2017');

-- --------------------------------------------------------

--
-- Table structure for table `seminarregistration`
--

CREATE TABLE `seminarregistration` (
  `seminarregid` int(100) NOT NULL,
  `selectedseminarid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profileimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `church` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `churchpastor` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guardian` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guardiancontact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentgateway` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentgatewayinfo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `paymentsenderinfo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seminarregistration`
--

INSERT INTO `seminarregistration` (`seminarregid`, `selectedseminarid`, `profileimage`, `fname`, `lname`, `gender`, `phone`, `email`, `age`, `education`, `church`, `churchpastor`, `guardian`, `guardiancontact`, `nationality`, `paymentgateway`, `paymentgatewayinfo`, `paymentsenderinfo`, `address`, `city`, `country`, `postal`, `cdate`, `facebook`, `twitter`, `googleplus`, `linkedin`, `youtube`, `pinterest`, `instagram`, `whatsapp`) VALUES
(30, '6', '20171017_041700_396594.jpg', 'Anukul', 'Smith', 'Male', '908-773-7785', 'JohnMDejesus@dayrep.com', '22', 'Honours', 'KCC AG Church', 'Ojit Kormoker', 'Simon', '908-773-7785', 'American', 'Credit/Debit Card', '908-773-7785', '908-773-7785', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', ''),
(31, '6', '20171017_041524_601829.jpg', 'John', 'Borman', 'Male', '908-773-7785', 'JohnMDejesus@dayrep.com', '22', 'Honours', 'KCC AG Church', 'Ojit Cruz', 'Simon', '908-773-7785', 'American', 'Bank', '054811649224674', '598746487', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', ''),
(32, '6', '20171017_040854_824414.jpg', 'John M.', 'Dejesus', 'Male', '908-773-7785', 'JohnMDejesus@dayrep.com', '', '', '', '', '', '', '', 'Paypal', '', '', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sermon`
--

CREATE TABLE `sermon` (
  `sermonid` int(100) NOT NULL,
  `sermonbanner` varchar(255) NOT NULL,
  `sermontitle` varchar(255) NOT NULL,
  `sermondate` varchar(255) NOT NULL,
  `sermontime` varchar(255) NOT NULL,
  `sermonlocation` varchar(255) NOT NULL,
  `sermonauthor` varchar(255) NOT NULL,
  `sermonyoutube` varchar(255) NOT NULL,
  `sermonsoundcloud` varchar(255) NOT NULL,
  `sermondescription` text NOT NULL,
  `cdate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sermon`
--

INSERT INTO `sermon` (`sermonid`, `sermonbanner`, `sermontitle`, `sermondate`, `sermontime`, `sermonlocation`, `sermonauthor`, `sermonyoutube`, `sermonsoundcloud`, `sermondescription`, `cdate`) VALUES
(1, '20171210_014021_117671.jpg', 'The God Who Is Rich In Mercy', '25-12-2017', '10:00 AM', 'Temple, London EC4Y 7BB, UK', 'John', 'https://www.youtube.com', 'https://soundcloud.com/', '<h4 style=\"font-family: Ubuntu, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\"><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</h4>', '10 December 2017'),
(2, '20171210_014115_782090.jpg', 'Power Of Transformation', '11-12-2017', '3:30 PM', 'Temple, London EC4Y 7BB, UK', 'John', 'https://www.youtube.com', 'https://soundcloud.com/', '<blockquote style=\"font-family: Ubuntu, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\"><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy&nbsp;text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,&nbsp;when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</blockquote>', '10 December 2017'),
(3, '20171210_014215_449872.jpg', 'The Voice Of The Sign', '01-01-2018', '10:00 AM', 'Temple, London EC4Y 7BB, UK', 'John', 'https://www.youtube.com', 'https://soundcloud.com/', '<h4 style=\"font-family: Ubuntu, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); font-size: 18px;\"><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy&nbsp;text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,&nbsp;when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</h4>', '10 December 2017');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `sliderid` int(100) NOT NULL,
  `serialid` int(255) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`sliderid`, `serialid`, `filename`, `cdate`) VALUES
(27, 0, '20171210_013359_326215.jpg', '10 December 2017'),
(28, 0, '20171210_013421_854249.jpg', '10 December 2017'),
(29, 0, '20171210_013457_635316.jpg', '10 December 2017'),
(30, 0, '20171210_013514_343355.jpg', '10 December 2017'),
(31, 0, '20171210_013627_937663.jpg', '10 December 2017');

-- --------------------------------------------------------

--
-- Table structure for table `speech`
--

CREATE TABLE `speech` (
  `speechid` int(100) NOT NULL,
  `profileimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `speech` text COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `speech`
--

INSERT INTO `speech` (`speechid`, `profileimage`, `fname`, `lname`, `position`, `speech`, `cdate`, `facebook`, `twitter`, `googleplus`, `linkedin`, `youtube`, `pinterest`, `instagram`, `whatsapp`) VALUES
(4, '20171016_095601_529785.jpg', 'John M.', 'Dejesus', 'Senior Pastor', '<p>Lorem Ipsum<span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '16 October 2017', '', '', '', '', '', '', '', ''),
(5, '20171016_095525_624378.jpg', 'Mark Cornel', 'Wally', 'Senior Pastor', '<p>Lorem Ipsum<span>&nbsp;</span>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '16 October 2017', '', '', '', '', '', '', '', ''),
(6, '20171016_095329_115976.jpg', 'Joseph S.', 'Johnson', 'Pastor', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '16 October 2017', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffid` int(100) NOT NULL,
  `profileimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bpdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marriagedate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socialstatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `profileimage`, `fname`, `lname`, `gender`, `phone`, `email`, `position`, `bpdate`, `blood`, `dob`, `marriagedate`, `socialstatus`, `job`, `family`, `department`, `nationality`, `address`, `city`, `country`, `postal`, `cdate`, `facebook`, `twitter`, `googleplus`, `linkedin`, `youtube`, `pinterest`, `instagram`, `whatsapp`) VALUES
(1, '20171017_092322_322886.jpg', 'Philip', 'Duke', 'Male', '908-773-7785', 'JohnMDejesus@dayrep.com', 'Senior Pastor', '05/11/1985', 'B+', '05/11/1985', '', '', '', '', '', 'USA', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', ''),
(6, '20171017_092528_892078.jpg', 'Alan', 'Harper', 'Male', '908-773-7785', 'JohnMDejesus@dayrep.com', 'Member', '17/10/1937', 'AB+', '17/10/1937', '', '', '', '', '', 'USA', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', ''),
(7, '20171017_092722_462681.jpg', 'Alex', 'Cruz', 'Male', '908-773-7785', 'JohnMDejesus@dayrep.com', 'Member', '17/10/1995', 'AB+', '17/10/1995', '', '', '', '', '', 'American', '', 'New York', 'USA', '', '17 October 2017', '', '', '', '', '', '', '', ''),
(8, '20171017_092922_635574.jpg', 'Emily', 'Cyrus', 'Female', '908-773-7785', 'JohnMDejesus@dayrep.com', 'Member', '12/10/1990', 'AB+', '12/10/1990', '', '', '', '', '', 'American', '', 'NY', 'USA', '', '17 October 2017', '', '', '', '', '', '', '', ''),
(9, '', 'dsfsdf', '', 'Male', 'sdfsdf', '', 'sadfsdf', '', '', '', '', '', '', '', '', '', '', '', '', '', '2 December 2017', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sundayschool`
--

CREATE TABLE `sundayschool` (
  `sschoolid` int(100) NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profileimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bpdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guardian` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sclass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marriagedate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `socialstatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `family` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sundayschool`
--

INSERT INTO `sundayschool` (`sschoolid`, `fname`, `lname`, `profileimage`, `gender`, `phone`, `position`, `bpdate`, `guardian`, `age`, `sclass`, `blood`, `dob`, `marriagedate`, `socialstatus`, `job`, `family`, `department`, `nationality`, `address`, `city`, `country`, `postal`, `cdate`, `facebook`, `twitter`, `googleplus`, `linkedin`, `youtube`, `pinterest`, `instagram`, `whatsapp`) VALUES
(4, 'Philip', 'Simon', '20171017_093306_151256.jpg', 'Male', '021584678', '', '20/03/2017', 'Matthew Alex', '13', '2nd Session', 'B+', '15/03/2017', '', '', '', '', '', 'USA', '', 'NY', 'USA', '', '17 October 2017', '', '', '', '', '', '', '', ''),
(5, 'John', 'Mendis', '20171017_093603_943271.jpg', 'Male', '908-773-7785', 'member', '13/01/1995', 'Philip', '12', '2nd Session', 'AB+', '20/02/1995', '', '', '', '', '', 'American', '', 'NY', 'USA', '', '17 October 2017', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(100) NOT NULL,
  `userstatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profileimage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mediaIdentifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bpdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `blood` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms_and_condition` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdate` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `userstatus`, `username`, `profileimage`, `fname`, `lname`, `phone`, `email`, `password`, `mediaIdentifier`, `position`, `bpdate`, `blood`, `dob`, `nationality`, `about`, `address`, `city`, `country`, `postal`, `terms_and_condition`, `cdate`, `facebook`, `twitter`, `googleplus`, `linkedin`, `youtube`, `pinterest`, `instagram`, `whatsapp`) VALUES
(152, 'Active', 'johnsmith', '20171017_093821_438451.jpg', 'John', 'Smith', '908-773-7785', 'admin@site.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'Admin', '13/09/2017', '', '', '', '', '', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', ''),
(153, 'Active', 'miltonfields', '20171017_093925_806732.jpg', 'Milton', 'Fields', '908-773-7785', 'user@site.com', 'e10adc3949ba59abbe56e057f20f883e', '', 'Subscriber', '', '', '', '', '', '', '', '', '', '', '17 October 2017', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `websitebasic`
--

CREATE TABLE `websitebasic` (
  `basicid` int(11) NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mapapi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `churchtime` text COLLATE utf8_unicode_ci NOT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `googleplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `copyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `verify` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `websitebasic`
--

INSERT INTO `websitebasic` (`basicid`, `favicon`, `logo`, `title`, `tag`, `currency`, `map`, `mapapi`, `email`, `color`, `churchtime`, `about`, `contact`, `address`, `city`, `country`, `postal`, `facebook`, `twitter`, `linkedin`, `googleplus`, `youtube`, `pinterest`, `instagram`, `whatsapp`, `copyright`, `verify`) VALUES
(1, '20171210_013811_617894.png', '20171210_013811_6178941.png', 'Church', 'Let\'s Spread The News Of Jesus', 'USD', 'Episcopal church in New York City, New York', 'AIzaSyAIB2KNkAf47At1Tlp5PCYFA7518OZhJ64', 'admin@site.com', '#50a3f0', '<p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', '<p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown&', '<p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown ', '<p><span style=\"text-align: justify;\">Lorem Ipsum</span><span style=\"text-align: justify;\">&nbsp;is simply dummied text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s when an unknown ', 'New York', 'USA', '1000', 'https://www.facebook.com/onezeroart/', '#', '#', '#', '#', '#', '#', '#', '<p>&nbsp;<br></p>', '334e9738-e6c7-419b-b884-f3ee2c9fb89v');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`assetsid`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attenid`);

--
-- Indexes for table `attendancetype`
--
ALTER TABLE `attendancetype`
  ADD PRIMARY KEY (`attendancetypeid`);

--
-- Indexes for table `chorus`
--
ALTER TABLE `chorus`
  ADD PRIMARY KEY (`chorusid`);

--
-- Indexes for table `clan`
--
ALTER TABLE `clan`
  ADD PRIMARY KEY (`clanid`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`committeeid`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`donationid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`familyid`);

--
-- Indexes for table `funds`
--
ALTER TABLE `funds`
  ADD PRIMARY KEY (`fundsid`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`galleryid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberid`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuid`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`noticeid`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`pageid`);

--
-- Indexes for table `pastor`
--
ALTER TABLE `pastor`
  ADD PRIMARY KEY (`pastorid`);

--
-- Indexes for table `prayer`
--
ALTER TABLE `prayer`
  ADD PRIMARY KEY (`prayerid`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`sectionid`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`seminarid`);

--
-- Indexes for table `seminarregistration`
--
ALTER TABLE `seminarregistration`
  ADD PRIMARY KEY (`seminarregid`);

--
-- Indexes for table `sermon`
--
ALTER TABLE `sermon`
  ADD PRIMARY KEY (`sermonid`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`sliderid`);

--
-- Indexes for table `speech`
--
ALTER TABLE `speech`
  ADD PRIMARY KEY (`speechid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffid`);

--
-- Indexes for table `sundayschool`
--
ALTER TABLE `sundayschool`
  ADD PRIMARY KEY (`sschoolid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `websitebasic`
--
ALTER TABLE `websitebasic`
  ADD PRIMARY KEY (`basicid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `assetsid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attenid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `attendancetype`
--
ALTER TABLE `attendancetype`
  MODIFY `attendancetypeid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chorus`
--
ALTER TABLE `chorus`
  MODIFY `chorusid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clan`
--
ALTER TABLE `clan`
  MODIFY `clanid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `committeeid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `departmentid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `donationid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `familyid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `funds`
--
ALTER TABLE `funds`
  MODIFY `fundsid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `galleryid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `noticeid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `pageid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pastor`
--
ALTER TABLE `pastor`
  MODIFY `pastorid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `prayer`
--
ALTER TABLE `prayer`
  MODIFY `prayerid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `sectionid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `seminarid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `seminarregistration`
--
ALTER TABLE `seminarregistration`
  MODIFY `seminarregid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `sermon`
--
ALTER TABLE `sermon`
  MODIFY `sermonid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `sliderid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `speech`
--
ALTER TABLE `speech`
  MODIFY `speechid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sundayschool`
--
ALTER TABLE `sundayschool`
  MODIFY `sschoolid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `websitebasic`
--
ALTER TABLE `websitebasic`
  MODIFY `basicid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
