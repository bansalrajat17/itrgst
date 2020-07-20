-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 20, 2020 at 12:09 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `return_filing`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer_heading`
--

DROP TABLE IF EXISTS `answer_heading`;
CREATE TABLE IF NOT EXISTS `answer_heading` (
  `ATH_NO` bigint(20) UNSIGNED NOT NULL,
  `ANSWER_NO` bigint(20) UNSIGNED NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`ATH_NO`,`ANSWER_NO`),
  KEY `FK_AH_ANSWER_NO` (`ANSWER_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer_heading`
--

INSERT INTO `answer_heading` (`ATH_NO`, `ANSWER_NO`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 4, '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(2, 4, '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(3, 5, '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(4, 5, '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `answer_table_heading`
--

DROP TABLE IF EXISTS `answer_table_heading`;
CREATE TABLE IF NOT EXISTS `answer_table_heading` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `HEADING` varchar(70) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `NO` (`NO`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer_table_heading`
--

INSERT INTO `answer_table_heading` (`NO`, `HEADING`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 'Particulars A.Y.: 2020-21', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(2, 'Due Date', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(3, 'If ITR Filed', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(4, 'Penalty (Rs.)', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(5, 'Income Tax Slab\r\n(in Rupees)', '2020-06-15 00:00:00', '', '2020-06-15 00:00:00', ''),
(6, 'Tax Rate for Individual Below the Age Of 60 Years', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(7, 'Income Tax Slab', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(8, 'Senior Citizens (between 60 years – 80 years)', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(9, 'Income Tax Slab', '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(10, 'Very Senior Citizens of and above 80 years of age.', '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `ath_aatp`
--

DROP TABLE IF EXISTS `ath_aatp`;
CREATE TABLE IF NOT EXISTS `ath_aatp` (
  `ATH_NO` bigint(20) UNSIGNED NOT NULL,
  `AATP_NO` bigint(20) UNSIGNED NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`ATH_NO`,`AATP_NO`),
  KEY `FK_AATP_AATP_NO` (`AATP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ath_aatp`
--

INSERT INTO `ath_aatp` (`ATH_NO`, `AATP_NO`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 1, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(1, 2, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(1, 3, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(1, 4, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(2, 8, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(2, 9, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(2, 10, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(2, 11, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(3, 5, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(3, 6, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(3, 7, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(4, 12, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(4, 13, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(4, 14, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(5, 15, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(5, 18, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(5, 20, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(5, 21, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(6, 22, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(6, 23, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(6, 25, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(6, 28, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(7, 16, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(7, 19, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(7, 20, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(7, 21, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(8, 22, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(8, 24, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(8, 26, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(8, 29, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(9, 17, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(9, 20, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(9, 21, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(10, 22, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(10, 27, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(10, 30, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `atp_answer_table_point`
--

DROP TABLE IF EXISTS `atp_answer_table_point`;
CREATE TABLE IF NOT EXISTS `atp_answer_table_point` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` text NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atp_answer_table_point`
--

INSERT INTO `atp_answer_table_point` (`NO`, `DESCRIPTION`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 'Individuals, HUF, BOI, AOP (Income Tax Return by Assesse whose Books of Account are not required)', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(2, 'Due date of filing the Income Tax Return by businesses whose Books of Account are not required to be audited', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(3, 'Filing ITR Due Date for (Assessee who are required to furnish report under sec 92E)[TRANSFER PRICING]', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(4, 'Due date of filing the Income Tax Return by businesses whose Books of Account require an audit', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(5, 'after due date of 31 July but on before 31 December of that assessment year (in this case 31 December 2020)', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(6, 'after 31 December but on or before 31 March of the relevant assessment year (in this case from 1 January to 31 March 2021', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(7, 'total income does not exceeds Rs 5,00,000', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(8, '31 July 2020 [3]', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(9, '31 July 2020', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(10, '30 November 2020', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(11, '30 September 2020', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(12, '5,000', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(13, '10,000', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(14, '1,000', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(15, '0 to 2,50,000*', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(16, 'Up to 3,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(17, 'Up to 5,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(18, '2,50,001 to 5,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(19, '3,00,001 to 5,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(20, '5,00,001 to 10,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(21, 'Above 10,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(22, 'Nil', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(23, '5% of total income exceeding 2,50,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(24, '5% of income exceeding 3,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(25, 'Tax Amount of 12,500 for the income up to 5,00,000\r\n+ 20% of total income exceeding 5,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(26, 'Tax Amount of 10,000 for the income up to 5,00,000\r\n+ 20% of total income exceeding 5,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(27, '20% of income exceeding 5,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(28, 'Tax Amount of 1,12,500 for the income up to 10,00,000\r\n+ 30% of total income exceeding 10,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(29, 'Tax Amount of 1,10,000 for the income up to 10,00,000\r\n+ 30% of total income exceeding 10,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(30, 'Tax Amount of 1,00,000 for the income up to 10,00,000\r\n+ 30% of total income exceeding 10,00,000', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `content_point`
--

DROP TABLE IF EXISTS `content_point`;
CREATE TABLE IF NOT EXISTS `content_point` (
  `NO` bigint(20) UNSIGNED NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_point`
--

INSERT INTO `content_point` (`NO`, `DESCRIPTION`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 'A Team of Experienced GST Professionals', '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(2, 'Accurate Collection to reduce Tax', '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(3, 'Human Assistance over Call', '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(4, '100 % Data Security', '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `content_site`
--

DROP TABLE IF EXISTS `content_site`;
CREATE TABLE IF NOT EXISTS `content_site` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `HEAD` text NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `CONTENT_NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_site`
--

INSERT INTO `content_site` (`NO`, `NAME`, `HEAD`, `DESCRIPTION`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 'ABOUT US', 'Now Business will be Easy Safe & Secure!', 'Return Filing is a digital Platform to provide financial services which includes GST return filing, Income Tax return, Accounting & Book keeping and many more. We are a team of highly professional Chartered accountant which focus on to increase productivity of SME’s through providing all financial back end assistance. \r\n\r\nWe at Return Filing, focus on to grow Entrepreneurs through providing best financial services which helps them to start and grow their respective business. Return Filing is a digital platform which includes a team of highly experienced chartered Accountants, and professional which focus on each client as per their business requirement. (To Know More)', '2020-04-26 00:00:00', '', '2020-04-26 00:00:00', ''),
(2, 'OUR MISSION', '', 'To provide digital access to each entrepreneur for their financial services requiremnts. Our main aim is to release work load of back end financial work from their business ', '2020-05-11 00:00:00', '', '2020-05-11 00:00:00', ''),
(3, 'OUR PLAN', '', 'To Achieve our vision, we will be focusing on Expand our Professional Network in each & every city which will help to connect all SME’s to make their business easy.', '2020-05-11 00:00:00', '', '2020-05-11 00:00:00', ''),
(4, 'OUR VISION', '', 'To become reason of Financial Success of Every Entrepreneur though providing End to End Financial Solutions with Affordable, Easy, Safe & Secure digital Platform.', '2020-05-11 00:00:00', '', '2020-05-11 00:00:00', ''),
(5, 'Why Return Filing ?', '', '', '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `cs_cp`
--

DROP TABLE IF EXISTS `cs_cp`;
CREATE TABLE IF NOT EXISTS `cs_cp` (
  `CS_NO` bigint(20) UNSIGNED NOT NULL,
  `CP_NO` bigint(20) UNSIGNED NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`CS_NO`,`CP_NO`),
  KEY `FK_CSCP_CP_NO` (`CP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cs_cp`
--

INSERT INTO `cs_cp` (`CS_NO`, `CP_NO`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(5, 1, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(5, 2, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(5, 3, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', ''),
(5, 4, '2020-06-21 00:00:00', '', '2020-06-21 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `pmpd_package`
--

DROP TABLE IF EXISTS `pmpd_package`;
CREATE TABLE IF NOT EXISTS `pmpd_package` (
  `PM_NO` bigint(20) UNSIGNED NOT NULL,
  `PD_NO` bigint(20) UNSIGNED NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`PM_NO`,`PD_NO`),
  KEY `FK_PMPD_PD_NO` (`PD_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmpd_package`
--

INSERT INTO `pmpd_package` (`PM_NO`, `PD_NO`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 1, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(1, 4, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(2, 2, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(2, 5, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(3, 3, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(3, 6, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `pp_highlight`
--

DROP TABLE IF EXISTS `pp_highlight`;
CREATE TABLE IF NOT EXISTS `pp_highlight` (
  `PACKAGE_NO` bigint(20) UNSIGNED NOT NULL,
  `HIGHLIGHT_NO` bigint(20) UNSIGNED NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`PACKAGE_NO`,`HIGHLIGHT_NO`),
  KEY `FK_PPH_HIGHLIGHT_NO` (`HIGHLIGHT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pp_highlight`
--

INSERT INTO `pp_highlight` (`PACKAGE_NO`, `HIGHLIGHT_NO`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 1, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(1, 2, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(2, 1, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(2, 2, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(2, 3, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(3, 1, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(3, 2, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(3, 3, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(4, 4, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(4, 5, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(4, 8, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(4, 9, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(4, 10, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(5, 4, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(5, 6, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(5, 8, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(5, 9, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(5, 10, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(6, 4, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(6, 7, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(6, 8, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(6, 9, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(6, 10, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `p_highlight`
--

DROP TABLE IF EXISTS `p_highlight`;
CREATE TABLE IF NOT EXISTS `p_highlight` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` text NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_highlight`
--

INSERT INTO `p_highlight` (`NO`, `DESCRIPTION`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 'Business Bank Account Opening', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(2, 'LEDGERS GST Software', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(3, '3 Months Outsourced GST Filing', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(4, 'Gst Registration', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(5, '3 Months GSTR3B Return Filing', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(6, '6 Months GSTR3B Return Filing', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(7, '12 Months GSTR3B Return Filing', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(8, 'Quarterly GSTR1 Return Filing', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(9, 'Email & Call Support', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(10, 'Business Bank Account', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `request_queue`
--

DROP TABLE IF EXISTS `request_queue`;
CREATE TABLE IF NOT EXISTS `request_queue` (
  `REQUEST_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PHONE` varchar(10) NOT NULL,
  `STATUS` varchar(70) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`REQUEST_ID`),
  UNIQUE KEY `PHONE` (`PHONE`),
  UNIQUE KEY `REQUEST_ID` (`REQUEST_ID`),
  UNIQUE KEY `REQUEST_ID_2` (`REQUEST_ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_queue`
--

INSERT INTO `request_queue` (`REQUEST_ID`, `NAME`, `EMAIL`, `PHONE`, `STATUS`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 'rajat', 'bansal', '90597', '', '2020-04-27 13:33:55', '', '2020-04-27 14:00:37', ''),
(2, 'uiui', 'hj', '45', '', '2020-04-27 14:12:15', '', '2020-04-27 14:12:15', ''),
(3, 'uiuighjhg', 'gjgjhg', '78', '', '2020-04-27 14:12:15', '', '2020-04-27 14:12:15', ''),
(26, 'raj', 'rajatb@cdac.in', '9059888950', '', '2020-04-27 18:13:26', '', '2020-04-27 18:13:26', ''),
(27, 'Shubham', 'janban1992@gmail.com', '9599045162', '', '2020-05-02 14:19:57', '', '2020-05-02 14:19:57', ''),
(28, 'Rajat Bansal', 'bansalrajat17@yahoo.in', '9059788950', '', '2020-05-03 14:47:48', '', '2020-05-03 14:47:48', ''),
(29, '', '', '', '', '2020-05-30 11:15:31', '', '2020-05-30 11:15:31', '');

-- --------------------------------------------------------

--
-- Table structure for table `role_master`
--

DROP TABLE IF EXISTS `role_master`;
CREATE TABLE IF NOT EXISTS `role_master` (
  `ROLE_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ROLE_NAME` varchar(40) NOT NULL,
  `ROLE_DESC` varchar(100) NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`ROLE_ID`),
  UNIQUE KEY `ROLE_ID` (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_master`
--

INSERT INTO `role_master` (`ROLE_ID`, `ROLE_NAME`, `ROLE_DESC`, `MODIFIED_BY`, `CREATED_BY`, `MODIFIED_DATE`, `CREATED_DATE`) VALUES
(1, 'ADMINISTRATOR', '', '', '', '2020-05-03 00:00:00', '2020-05-03 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `service_content`
--

DROP TABLE IF EXISTS `service_content`;
CREATE TABLE IF NOT EXISTS `service_content` (
  `NO` bigint(20) UNSIGNED NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `HEAD` text NOT NULL,
  `DESCRITPTION` text NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `service_site`
--

DROP TABLE IF EXISTS `service_site`;
CREATE TABLE IF NOT EXISTS `service_site` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `HEAD` text NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_site`
--

INSERT INTO `service_site` (`NO`, `NAME`, `HEAD`, `DESCRIPTION`, `CREATED_BY`, `CREATED_DATE`, `MODIFIED_BY`, `MODIFIED_DATE`) VALUES
(1, 'ITR-I Filing', 'ITR-1 Form Filing - Income Tax Return', 'Individuals who have earned their Income \r\nfor a Financial Year only through the following means are eligible to fill the ITR-1 SAHAJ form.', '', '2020-04-19 00:00:00', '', '2020-04-19 00:00:00'),
(2, 'ITR-2', 'ITR-2 Form Filing - Income Tax Return\r\n', 'ITR-2 form can be used for filing income tax return of individuals and HUFs who have DIN or income earned from a business entity. File ITR-2 online or download PDF.', '', '2020-04-26 00:00:00', '', '2020-04-26 00:00:00'),
(3, 'ITR-3', 'ITR-3 form can be used for filing income tax return of individuals and HUFs who have income from proprietorship business or profession. File or download ITR-3 return on IndiaFilings.', 'ITR-3 form can be used for filing income tax return of individuals and HUFs who have income from proprietorship business or profession. File or download ITR-3 return on IndiaFilings.', '', '2020-04-26 00:00:00', '', '2020-04-26 00:00:00'),
(4, 'ITR-4', 'ITR 4 SUGAM Form Filing - Income Tax Return', 'ITR-4 form can be used for filing IT return under the Presumptive Taxation Scheme if business turnover is less than Rs.2 crores if professional income is less than Rs.50 lakhs.', '', '2020-04-26 00:00:00', '', '2020-04-26 00:00:00'),
(5, 'ITR-5', 'ITR 5 Form Filing - Income Tax Return', 'ITR-5 form can be used for filing income tax return of partnership firms, LLPs and AOPs. ITR-5 return may require tax audit based on turnover of the business.', '', '2020-04-26 00:00:00', '', '2020-04-26 00:00:00'),
(6, 'ITR-6', 'ITR 6 Form Filing - Income Tax Return', 'ITR-6 form is used for filing income tax return of private limited company, limited company and one person company registered in India. File company tax return on IndiaFilings.', '', '2020-04-26 00:00:00', '', '2020-04-26 00:00:00'),
(7, 'ITR-7', 'ITR 7 Form Filing - Income Tax Return', 'ITR-7 form is used for filing income tax return of charitable trusts, political parties, colleges, universities and scientific research institutions registered in India.', '', '2020-04-26 00:00:00', '', '2020-04-26 00:00:00'),
(11, 'GST Return', 'GST Return Filing', ' is a document which includes details \r\nabout GST invoices & Payments for a specific period of time \r\nincluding the amount of tax paid and collected which is mandatory \r\nfor all entities having GST registration, irrespective of business \r\nactivity', '', '2020-04-26 00:00:00', '', '2020-04-26 00:00:00'),
(12, 'GST Registration', 'GST Registration', 'is an indirect tax (or consumption tax) used in India on the supply of goods and services. It is a comprehensive,multistage,\r\ndestination-based tax: comprehensive because it has subsumed almost all the indirect taxes except a few state taxes', '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ss_benefit`
--

DROP TABLE IF EXISTS `ss_benefit`;
CREATE TABLE IF NOT EXISTS `ss_benefit` (
  `SERVICE_NO` bigint(20) UNSIGNED NOT NULL,
  `BENEFIT_NO` bigint(20) UNSIGNED NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`SERVICE_NO`,`BENEFIT_NO`),
  KEY `FK_SB_BENEFIT_ID` (`BENEFIT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_benefit`
--

INSERT INTO `ss_benefit` (`SERVICE_NO`, `BENEFIT_NO`, `MODIFIED_DATE`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_BY`) VALUES
(11, 1, '2020-05-06 00:00:00', '2020-05-06 00:00:00', '', ''),
(11, 2, '2020-05-06 00:00:00', '2020-05-06 00:00:00', '', ''),
(11, 3, '2020-05-06 00:00:00', '2020-05-06 00:00:00', '', ''),
(11, 4, '2020-05-06 00:00:00', '2020-05-06 00:00:00', '', ''),
(12, 5, '2020-06-07 00:00:00', '2020-06-07 00:00:00', '', ''),
(12, 6, '2020-06-07 00:00:00', '2020-06-07 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ss_document_required`
--

DROP TABLE IF EXISTS `ss_document_required`;
CREATE TABLE IF NOT EXISTS `ss_document_required` (
  `SERVICE_NO` bigint(20) UNSIGNED NOT NULL,
  `DOCUMENT_NO` bigint(20) UNSIGNED NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`SERVICE_NO`,`DOCUMENT_NO`),
  KEY `FK_SSDR_DOCUMENT_ID` (`DOCUMENT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_document_required`
--

INSERT INTO `ss_document_required` (`SERVICE_NO`, `DOCUMENT_NO`, `CREATED_BY`, `CREATED_DATE`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 3, '', '2020-06-14 00:00:00', '2020-06-14 00:00:00', ''),
(1, 4, '', '2020-06-14 00:00:00', '2020-06-14 00:00:00', ''),
(1, 10, '', '2020-06-14 00:00:00', '2020-06-14 00:00:00', ''),
(1, 11, '', '2020-06-14 00:00:00', '2020-06-14 00:00:00', ''),
(11, 1, '', '2020-05-05 00:00:00', '2020-05-05 00:00:00', ''),
(11, 2, '', '2020-05-05 00:00:00', '2020-05-05 00:00:00', ''),
(11, 3, '', '2020-05-05 00:00:00', '2020-05-05 00:00:00', ''),
(11, 4, '', '2020-05-05 00:00:00', '2020-05-05 00:00:00', ''),
(12, 5, '', '2020-06-07 00:00:00', '2020-06-07 00:00:00', ''),
(12, 6, '', '2020-06-07 00:00:00', '2020-06-07 00:00:00', ''),
(12, 7, '', '2020-06-07 00:00:00', '2020-06-07 00:00:00', ''),
(12, 8, '', '2020-06-07 00:00:00', '2020-06-07 00:00:00', ''),
(12, 9, '', '2020-06-07 00:00:00', '2020-06-07 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `ss_eligibility`
--

DROP TABLE IF EXISTS `ss_eligibility`;
CREATE TABLE IF NOT EXISTS `ss_eligibility` (
  `SERVICE_NO` bigint(20) UNSIGNED NOT NULL,
  `ELIGIBILITY_NO` bigint(20) UNSIGNED NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`SERVICE_NO`,`ELIGIBILITY_NO`),
  KEY `ELIGIBILITY_ID` (`ELIGIBILITY_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_eligibility`
--

INSERT INTO `ss_eligibility` (`SERVICE_NO`, `ELIGIBILITY_NO`, `MODIFIED_BY`, `MODIFIED_DATE`, `CREATED_BY`, `CREATED_DATE`) VALUES
(1, 11, '', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00'),
(1, 12, '', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00'),
(1, 13, '', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00'),
(11, 1, '', '2020-05-05 00:00:00', '', '2020-05-05 00:00:00'),
(11, 2, '', '2020-05-05 00:00:00', '', '2020-05-05 00:00:00'),
(12, 3, '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(12, 4, '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(12, 5, '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(12, 6, '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(12, 7, '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(12, 8, '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(12, 9, '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ss_faq`
--

DROP TABLE IF EXISTS `ss_faq`;
CREATE TABLE IF NOT EXISTS `ss_faq` (
  `QUESTION_NO` bigint(20) UNSIGNED NOT NULL,
  `ANSWER_NO` bigint(20) UNSIGNED NOT NULL,
  `SERVICE_NO` bigint(20) UNSIGNED NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`QUESTION_NO`,`ANSWER_NO`,`SERVICE_NO`),
  KEY `FK_FAQ_ANSWER_NO` (`ANSWER_NO`),
  KEY `FK_FAQ_SERVICE_NO` (`SERVICE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_faq`
--

INSERT INTO `ss_faq` (`QUESTION_NO`, `ANSWER_NO`, `SERVICE_NO`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 1, 1, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(2, 2, 1, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(3, 3, 1, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(4, 4, 1, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(5, 5, 1, '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `ss_gst_type`
--

DROP TABLE IF EXISTS `ss_gst_type`;
CREATE TABLE IF NOT EXISTS `ss_gst_type` (
  `RETURN_TYPE` varchar(20) NOT NULL,
  `INCLUDES` varchar(500) NOT NULL,
  `DUE_DATE` varchar(150) NOT NULL,
  `WHEN_TO_FILE` varchar(300) NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` date NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  PRIMARY KEY (`RETURN_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_gst_type`
--

INSERT INTO `ss_gst_type` (`RETURN_TYPE`, `INCLUDES`, `DUE_DATE`, `WHEN_TO_FILE`, `MODIFIED_BY`, `MODIFIED_DATE`, `CREATED_BY`, `CREATED_DATE`) VALUES
('GSTR-1', 'Details of Outward Supply', 'Monthly', '11th of Next Monthclaiming the input tax credit.', '', '2020-05-04', '', '2020-05-04'),
('GSTR-2', 'Details of inward supplies of taxable goods and/or services affected claiming the input tax credit.', 'Monthly', '15th of Next Month', '', '2020-05-04', '', '2020-05-04'),
('GSTR-3', 'Monthly return on the basis of finalization of details of outward supplies and inward supplies along with the payment of tax.', 'Monthly', '20th of Next Month', '', '2020-05-04', '', '2020-05-04'),
('GSTR-3B', 'Simple Return in which summary of outward supplies along with Input Tax Credit is declared  and payment of tax is affected by taxpayer', 'Monthly', '20th of Next Month', '', '2020-05-04', '', '2020-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `ss_package`
--

DROP TABLE IF EXISTS `ss_package`;
CREATE TABLE IF NOT EXISTS `ss_package` (
  `SERVICE_NO` bigint(20) UNSIGNED NOT NULL,
  `PACKAGE_NO` bigint(20) UNSIGNED NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`SERVICE_NO`,`PACKAGE_NO`),
  KEY `FK_SSE_PACKAGE_NO` (`PACKAGE_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_package`
--

INSERT INTO `ss_package` (`SERVICE_NO`, `PACKAGE_NO`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(11, 1, '2020-06-06 00:00:00', '', '2020-06-06 00:00:00', ''),
(11, 2, '2020-06-06 00:00:00', '', '2020-06-06 00:00:00', ''),
(11, 3, '2020-06-06 00:00:00', '', '2020-06-06 00:00:00', ''),
(12, 4, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(12, 5, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(12, 6, '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `ss_stc`
--

DROP TABLE IF EXISTS `ss_stc`;
CREATE TABLE IF NOT EXISTS `ss_stc` (
  `SERVICE_NO` bigint(20) UNSIGNED NOT NULL,
  `STC_NO` bigint(20) UNSIGNED NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`SERVICE_NO`,`STC_NO`),
  KEY `FK_SSSTC_STC_NO` (`STC_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_stc`
--

INSERT INTO `ss_stc` (`SERVICE_NO`, `STC_NO`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 1, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(1, 2, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', ''),
(1, 3, '2020-06-20 00:00:00', '', '2020-06-20 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `stc_heading`
--

DROP TABLE IF EXISTS `stc_heading`;
CREATE TABLE IF NOT EXISTS `stc_heading` (
  `STC_NO` bigint(20) UNSIGNED NOT NULL,
  `ATH_NO` bigint(20) UNSIGNED NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`STC_NO`,`ATH_NO`),
  KEY `FK_SH_ATH_NO` (`ATH_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stc_heading`
--

INSERT INTO `stc_heading` (`STC_NO`, `ATH_NO`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 5, '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(1, 6, '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(2, 7, '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(2, 8, '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(3, 9, '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(3, 10, '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `s_answer`
--

DROP TABLE IF EXISTS `s_answer`;
CREATE TABLE IF NOT EXISTS `s_answer` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ANSWER` text NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_answer`
--

INSERT INTO `s_answer` (`NO`, `ANSWER`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 'Income Tax Return is the form in which assessee files information about his Income and tax thereon to Income Tax Department. The Income Tax Act, 1961, obligates citizens to file returns with the Income Tax Department at the end of every financial year.[2] These returns should be filed before the specified due date.', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(2, 'ITRV can now be verified online using Aadhaar Card or Electronic Verification Code (EVC). The EVC can be generated either via One Time Password sent to email and registered mobile number (if income is less than INR 500,000) or via Net Banking. After online verification Income Tax Assesses is not required to send ITRV to Bangalore CPC', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(3, 'Financial Year is the year or the time period within which income is earned. The assessment year is the year that follows the financial year and it is the period in which tax returns are filed.\r\nExample: Person has earned income in the year January 2019. In this case its Financial Year will be 2018-19 and Assessment Year will be 2019-20 ', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(4, 'Due dates of filing income tax return for FY 2019-20 (AY 2020–21) are as under:', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', ''),
(5, '', '2020-06-13 00:00:00', '', '2020-06-13 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `s_benefit`
--

DROP TABLE IF EXISTS `s_benefit`;
CREATE TABLE IF NOT EXISTS `s_benefit` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `HEAD` text NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `BENEFIT_ID` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_benefit`
--

INSERT INTO `s_benefit` (`NO`, `NAME`, `HEAD`, `DESCRIPTION`, `CREATED_BY`, `CREATED_DATE`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 'Easy Flow of Input Tax Credit', '', '', '', '2020-05-06 00:00:00', '2020-05-06 00:00:00', ''),
(2, 'Simple & Online Procedure', '', '', '', '2020-05-06 00:00:00', '2020-05-06 00:00:00', ''),
(3, 'To improve Compliance Rating', '', '', '', '2020-05-06 00:00:00', '2020-05-06 00:00:00', ''),
(4, 'To Avoid Cascading Effect of Tax', '', '', '', '2020-05-06 00:00:00', '2020-05-06 00:00:00', ''),
(5, 'Take input tax credit', '', '', '', '2020-06-07 00:00:00', '2020-06-07 00:00:00', ''),
(6, 'Make interstate sales without restrictions', '', '', '', '2020-06-07 00:00:00', '2020-06-07 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `s_document_required`
--

DROP TABLE IF EXISTS `s_document_required`;
CREATE TABLE IF NOT EXISTS `s_document_required` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `HEAD` text NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `DOCUMENT_NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_document_required`
--

INSERT INTO `s_document_required` (`NO`, `NAME`, `HEAD`, `DESCRIPTION`, `MODIFIED_BY`, `MODIFIED_DATE`, `CREATED_BY`, `CREATED_DATE`) VALUES
(1, 'GST Certificate', '', '', '', '2020-05-05 00:00:00', '', '2020-05-05 00:00:00'),
(2, 'Log in Credential of Registered Person', '', '', '', '2020-05-05 00:00:00', '', '2020-05-05 00:00:00'),
(3, 'Inward & Outward GST Invoices', '', '', '', '2020-05-05 00:00:00', '', '2020-05-05 00:00:00'),
(4, 'Digital signature of Director in case of LLP/Company Only', '', '', '', '2020-05-05 00:00:00', '', '2020-05-05 00:00:00'),
(5, 'Individual’s or owner’s PAN card', '', '', '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(6, 'Photograph of owner', '', '', '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(7, 'Address proof ( Lease Registration document, Rent agreement, Electricity Bill, Phone Bill)', '', '', '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(8, 'Bank account information', '', '', '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(9, 'Individual’s or owner’s Aadhaar card', '', '', '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(10, 'Pan Card of the Business', '', '', '', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00'),
(11, 'Identity Proof/with photograph', '', '', '', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `s_eligibility`
--

DROP TABLE IF EXISTS `s_eligibility`;
CREATE TABLE IF NOT EXISTS `s_eligibility` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `HEAD` text NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `ID` (`NO`),
  KEY `ID_2` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_eligibility`
--

INSERT INTO `s_eligibility` (`NO`, `NAME`, `HEAD`, `DESCRIPTION`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, '', '', 'Person/Entity Who are registered Under GST.', '2020-05-05 00:00:00', '', '2020-05-05 00:00:00', ''),
(2, '', '', 'Turnover More than 40 Lakhs.', '2020-05-05 00:00:00', '', '2020-05-05 00:00:00', ''),
(3, '', '', 'Individuals registered under the Pre-GST law (i.e., Excise, VAT, Service Tax etc.)', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(4, '', '', 'Businesses with turnover above the threshold limit of Rs. 40 Lakhs* (Rs. 10 Lakhs for North-Eastern States, J&K, Himachal Pradesh and Uttarakhand)', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(5, '', '', 'Casual taxable person / Non-Resident taxable person', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(6, '', '', 'Agents of a supplier & Input service distributor', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(7, '', '', 'Those paying tax under the reverse charge mechanism', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(8, '', '', 'Person who supplies via e-commerce aggregator', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(9, '', '', 'Every e-commerce aggregator', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(10, '', '', 'Person supplying online information and database access or retrieval services from a place outside India to a person in India, other than a registered taxable person', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(11, '', '', 'Through Salary or Pension', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(12, '', '', 'Through One House Property (except in case of losses brought forward from preceding years)', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(13, '', '', 'Through other sources apart from Lottery, Racehorses, Legal Gambling etc. Other sources include FD interest, spousal pension etc.', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `s_package_detail`
--

DROP TABLE IF EXISTS `s_package_detail`;
CREATE TABLE IF NOT EXISTS `s_package_detail` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` text NOT NULL,
  `AMOUNT` double NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_package_detail`
--

INSERT INTO `s_package_detail` (`NO`, `DESCRIPTION`, `AMOUNT`, `CREATED_BY`, `CREATED_DATE`, `MODIFIED_BY`, `MODIFIED_DATE`) VALUES
(1, 'GSTR-9 or GST annual return filing for taxpayers registered under GST Scheme.', 799, '', '2020-06-06 00:00:00', '', '2020-06-06 00:00:00'),
(2, 'GSTR-9 or GST annual return filing for regular taxpayers registered under GST not requiring Audit.', 3899, '', '2020-06-06 00:00:00', '', '2020-06-06 00:00:00'),
(3, 'GSTR-9 or GST annual return filing for regular taxpayers registered under GST along with GST audit.', 5899, '', '2020-06-06 00:00:00', '', '2020-06-06 00:00:00'),
(4, 'Completely managed GST registration service until obtaining GSTIN with Expert Support and 1 year LEDGERS accounting software. Inclusive of all government fee and taxes.', 3999, '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(5, 'Completely managed GST registration service and GST return filing service for 3 months with Expert Support and 1 year LEDGERS accounting software. Inclusive of all government fee and taxes.vernment fee and taxes.', 5999, '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00'),
(6, 'Completely managed GST registration service and GST return filing service for 6 months with Expert Support and 1 year LEDGERS accounting software. Inclusive of all government fee and taxes. software. Inclusive of all government fee and taxes.', 9999, '', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `s_package_master`
--

DROP TABLE IF EXISTS `s_package_master`;
CREATE TABLE IF NOT EXISTS `s_package_master` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_package_master`
--

INSERT INTO `s_package_master` (`NO`, `NAME`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 'BASIC', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(2, 'STANDARD', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', ''),
(3, 'PREMIUM', '2020-06-07 00:00:00', '', '2020-06-07 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `s_question`
--

DROP TABLE IF EXISTS `s_question`;
CREATE TABLE IF NOT EXISTS `s_question` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `QUESTION` text NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_question`
--

INSERT INTO `s_question` (`NO`, `QUESTION`, `CREATED_BY`, `MODIFIED_DATE`, `CREATED_DATE`, `MODIFIED_BY`) VALUES
(1, 'What is ITR?', '', '2020-06-13 00:00:00', '2020-06-13 00:00:00', ''),
(2, 'Verification of ITRV?', '', '2020-06-13 00:00:00', '2020-06-13 00:00:00', ''),
(3, 'What is Financial Year and Assessment Year?', '', '2020-06-13 00:00:00', '2020-06-13 00:00:00', ''),
(4, 'Due date of filings of Returns?', '', '2020-06-13 00:00:00', '2020-06-13 00:00:00', ''),
(5, 'Penalty on Late Filing of ITR?', '', '2020-06-13 00:00:00', '2020-06-13 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `s_tax_computation`
--

DROP TABLE IF EXISTS `s_tax_computation`;
CREATE TABLE IF NOT EXISTS `s_tax_computation` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` text NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_tax_computation`
--

INSERT INTO `s_tax_computation` (`NO`, `DESCRIPTION`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, '(A) In case of every individual (other than resident individual who is of the age of 60 years or more at any time during the financial year 2019-20)', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(2, '(B) In case of resident individual who is of the age of 60 years or more but less than 80 years at any time during the financial year 2019-20 –', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', ''),
(3, '(C) In case of resident individual who is of the age of 80 years or more at any time during the financial year 2019-20 –', '2020-06-14 00:00:00', '', '2020-06-14 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `s_testimonial`
--

DROP TABLE IF EXISTS `s_testimonial`;
CREATE TABLE IF NOT EXISTS `s_testimonial` (
  `NO` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `GIVEN_BY` varchar(30) NOT NULL,
  `DESIGNATION` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(500) NOT NULL,
  `LOGO` varchar(200) NOT NULL,
  `RATING` int(11) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `ID` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_testimonial`
--

INSERT INTO `s_testimonial` (`NO`, `GIVEN_BY`, `DESIGNATION`, `DESCRIPTION`, `LOGO`, `RATING`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
(1, 'Hyundai Noida', 'Company', 'A team of professional with high end services totally satisfied', 'hyundai.png', 4, '2020-05-16 00:00:00', '', '2020-05-16 00:00:00', ''),
(2, 'Indane Gas Hathras', 'Company', 'Helped in managing all financial transactions, Highly responsive team', 'pcc.jpg', 3, '2020-05-16 00:00:00', '', '2020-05-16 00:00:00', ''),
(3, 'Footprints Childcare', 'Company', 'Return Filings remains very helpful in providing all back end services be it filing gst,itr everything. Their notified service helped me to file on time . Will recommend for sure.', 'footprint.jpeg', 2, '2020-05-16 00:00:00', '', '2020-05-16 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

DROP TABLE IF EXISTS `user_master`;
CREATE TABLE IF NOT EXISTS `user_master` (
  `USERNAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `PHONE` varchar(10) NOT NULL,
  `CITY` varchar(30) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`USERNAME`),
  UNIQUE KEY `PHONE` (`PHONE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`USERNAME`, `PASSWORD`, `NAME`, `PHONE`, `CITY`, `ADDRESS`, `CREATED_DATE`, `CREATED_BY`, `MODIFIED_DATE`, `MODIFIED_BY`) VALUES
('bansalrajat17@yahoo.in', 'sp_223908', 'RAJAT BANSAL', '9059788950', 'Hyderabad', '', '2020-04-27 00:00:00', '', '2020-04-27 00:00:00', ''),
('janban1992@gmail.com', 'janban1992', 'SHUBHAM BANSAL', '9599045162', 'Gurugram', '', '2020-05-03 00:00:00', '', '2020-05-03 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `USERNAME` varchar(100) NOT NULL,
  `ROLE_ID` bigint(20) UNSIGNED NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `CREATED_BY` varchar(20) NOT NULL,
  `MODIFIED_DATE` date NOT NULL,
  `MODIFIED_BY` varchar(20) NOT NULL,
  PRIMARY KEY (`USERNAME`,`ROLE_ID`),
  UNIQUE KEY `ROLE_ID` (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_service`
--

DROP TABLE IF EXISTS `user_service`;
CREATE TABLE IF NOT EXISTS `user_service` (
  `EMAIL` varchar(100) NOT NULL,
  `SERVICE_ID` varchar(10) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREAYED_BY` varchar(20) DEFAULT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer_heading`
--
ALTER TABLE `answer_heading`
  ADD CONSTRAINT `FK_AH_ANSWER_NO` FOREIGN KEY (`ANSWER_NO`) REFERENCES `s_answer` (`NO`),
  ADD CONSTRAINT `FK_AH_ATH_NO` FOREIGN KEY (`ATH_NO`) REFERENCES `answer_table_heading` (`NO`);

--
-- Constraints for table `ath_aatp`
--
ALTER TABLE `ath_aatp`
  ADD CONSTRAINT `FK_AATP_AATP_NO` FOREIGN KEY (`AATP_NO`) REFERENCES `atp_answer_table_point` (`NO`),
  ADD CONSTRAINT `FK_ATH_ATH_NO` FOREIGN KEY (`ATH_NO`) REFERENCES `answer_table_heading` (`NO`);

--
-- Constraints for table `cs_cp`
--
ALTER TABLE `cs_cp`
  ADD CONSTRAINT `FK_CSCP_CP_NO` FOREIGN KEY (`CP_NO`) REFERENCES `content_point` (`NO`),
  ADD CONSTRAINT `FK_CSCP_CS_NO` FOREIGN KEY (`CS_NO`) REFERENCES `content_site` (`NO`);

--
-- Constraints for table `pmpd_package`
--
ALTER TABLE `pmpd_package`
  ADD CONSTRAINT `FK_PMPD_PD_NO` FOREIGN KEY (`PD_NO`) REFERENCES `s_package_detail` (`NO`),
  ADD CONSTRAINT `FK_PMPD_PM_NO` FOREIGN KEY (`PM_NO`) REFERENCES `s_package_master` (`NO`);

--
-- Constraints for table `pp_highlight`
--
ALTER TABLE `pp_highlight`
  ADD CONSTRAINT `FK_PPH_HIGHLIGHT_NO` FOREIGN KEY (`HIGHLIGHT_NO`) REFERENCES `p_highlight` (`NO`),
  ADD CONSTRAINT `FK_PPH_PACKAGE_NO` FOREIGN KEY (`PACKAGE_NO`) REFERENCES `s_package_detail` (`NO`);

--
-- Constraints for table `ss_benefit`
--
ALTER TABLE `ss_benefit`
  ADD CONSTRAINT `FK_SB_BENEFIT_NO` FOREIGN KEY (`BENEFIT_NO`) REFERENCES `s_benefit` (`NO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SB_SERVICE_NO` FOREIGN KEY (`SERVICE_NO`) REFERENCES `service_site` (`NO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ss_document_required`
--
ALTER TABLE `ss_document_required`
  ADD CONSTRAINT `FK_SDR_DOCUMENT_NO` FOREIGN KEY (`DOCUMENT_NO`) REFERENCES `s_document_required` (`NO`),
  ADD CONSTRAINT `FK_SDR_SERVICE_NO` FOREIGN KEY (`SERVICE_NO`) REFERENCES `service_site` (`NO`);

--
-- Constraints for table `ss_eligibility`
--
ALTER TABLE `ss_eligibility`
  ADD CONSTRAINT `FK_SSE_ELIGIBILITY_NO` FOREIGN KEY (`ELIGIBILITY_NO`) REFERENCES `s_eligibility` (`NO`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SS_SERVICE_NO` FOREIGN KEY (`SERVICE_NO`) REFERENCES `service_site` (`NO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ss_faq`
--
ALTER TABLE `ss_faq`
  ADD CONSTRAINT `FK_FAQ_ANSWER_NO` FOREIGN KEY (`ANSWER_NO`) REFERENCES `s_answer` (`NO`),
  ADD CONSTRAINT `FK_FAQ_QUESTION_NO` FOREIGN KEY (`QUESTION_NO`) REFERENCES `s_question` (`NO`),
  ADD CONSTRAINT `FK_FAQ_SERVICE_NO` FOREIGN KEY (`SERVICE_NO`) REFERENCES `service_site` (`NO`);

--
-- Constraints for table `ss_package`
--
ALTER TABLE `ss_package`
  ADD CONSTRAINT `FK_SP_SERVICE_NO` FOREIGN KEY (`SERVICE_NO`) REFERENCES `service_site` (`NO`),
  ADD CONSTRAINT `FK_SSE_PACKAGE_NO` FOREIGN KEY (`PACKAGE_NO`) REFERENCES `s_package_detail` (`NO`);

--
-- Constraints for table `ss_stc`
--
ALTER TABLE `ss_stc`
  ADD CONSTRAINT `FK_SSSTC_SS_NO` FOREIGN KEY (`SERVICE_NO`) REFERENCES `service_site` (`NO`),
  ADD CONSTRAINT `FK_SSSTC_STC_NO` FOREIGN KEY (`STC_NO`) REFERENCES `s_tax_computation` (`NO`);

--
-- Constraints for table `stc_heading`
--
ALTER TABLE `stc_heading`
  ADD CONSTRAINT `FK_SH_ATH_NO` FOREIGN KEY (`ATH_NO`) REFERENCES `answer_table_heading` (`NO`),
  ADD CONSTRAINT `FK_SH_STC_NO` FOREIGN KEY (`STC_NO`) REFERENCES `s_tax_computation` (`NO`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FK_UR_ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `role_master` (`ROLE_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_UR_USERNAME` FOREIGN KEY (`USERNAME`) REFERENCES `user_master` (`USERNAME`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
