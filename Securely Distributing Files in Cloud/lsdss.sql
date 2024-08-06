-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2022 at 01:19 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lsdss`
--
CREATE DATABASE IF NOT EXISTS `lsdss` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lsdss`;

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `fid` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `time_` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `uid`, `uname`, `fid`, `fname`, `time_`) VALUES
(1, '1', 'Raghu', '1', 'Java.txt', '2022-02-18 23:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `filereqtoowner`
--

CREATE TABLE IF NOT EXISTS `filereqtoowner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `oid` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `faccesspolicy` varchar(45) NOT NULL,
  `uaccesspolicy` varchar(45) NOT NULL,
  `uaccesspolicy1` varchar(45) NOT NULL,
  `umail` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `filereqtoowner`
--

INSERT INTO `filereqtoowner` (`id`, `fid`, `fname`, `uid`, `uname`, `oid`, `time`, `faccesspolicy`, `uaccesspolicy`, `uaccesspolicy1`, `umail`, `status`) VALUES
(1, '1', 'Java.txt', '1', 'Raghu', '1', '2022-02-18 23:00:25.0', '1', 'sports', 'sports', 'msraghu960@gmail.com', 'sended');

-- --------------------------------------------------------

--
-- Table structure for table `filerequest`
--

CREATE TABLE IF NOT EXISTS `filerequest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `oid` varchar(45) NOT NULL,
  `oname` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `faccesspolicy` varchar(45) NOT NULL,
  `uaccesspolicy` varchar(45) NOT NULL,
  `uaccesspolicy1` varchar(45) NOT NULL,
  `umail` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `fileupload`
--

CREATE TABLE IF NOT EXISTS `fileupload` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(45) NOT NULL,
  `content` longblob NOT NULL,
  `owner` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `secret_key` varchar(1000) NOT NULL,
  `public_key` varchar(1000) NOT NULL,
  `oid` varchar(45) NOT NULL,
  `des` longtext NOT NULL,
  `accesspolicy` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fileupload`
--

INSERT INTO `fileupload` (`id`, `filename`, `content`, `owner`, `time`, `secret_key`, `public_key`, `oid`, `des`, `accesspolicy`) VALUES
(1, 'Java.txt', 0x4a446a776971726c6b646470323563366e7654664154574b48443135432f5a7959694a757569494e506e513d, 'abhinay', '2022-02-18 23:00:25', '+OsmZ0t87Xd+oQoCc09+eQ==', 'JKv2k4C25ySIF1pGAJ5BD2VQolyKDVjbbt946BGvZW8=', '1', 'ss', '1');

-- --------------------------------------------------------

--
-- Table structure for table `oreg`
--

CREATE TABLE IF NOT EXISTS `oreg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `gen` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `contactnumber` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `pkey` varchar(1000) NOT NULL,
  `skey` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oreg`
--

INSERT INTO `oreg` (`id`, `name`, `pass`, `mail`, `gen`, `dob`, `contactnumber`, `state`, `country`, `status`, `pkey`, `skey`) VALUES
(1, 'abhinay', '123456', 'abhinay0703@gmail.com', 'Male', '2022-02-19', '9874563210', 'telangana', 'india', 'Granted', 'JKv2k4C25ySIF1pGAJ5BD2VQolyKDVjbbt946BGvZW8=', 'Waiting');

-- --------------------------------------------------------

--
-- Table structure for table `revocation`
--

CREATE TABLE IF NOT EXISTS `revocation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` varchar(45) NOT NULL,
  `oname` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `umail` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ureg`
--

CREATE TABLE IF NOT EXISTS `ureg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL DEFAULT '',
  `pass` varchar(45) NOT NULL DEFAULT '',
  `mail` varchar(45) NOT NULL DEFAULT '',
  `gen` varchar(45) NOT NULL DEFAULT '',
  `dob` varchar(45) NOT NULL DEFAULT '',
  `contactnumber` varchar(45) NOT NULL DEFAULT '',
  `state` varchar(45) NOT NULL DEFAULT '',
  `country` varchar(45) NOT NULL DEFAULT '',
  `status` varchar(45) NOT NULL,
  `akey` varchar(100) NOT NULL,
  `accessattribute` varchar(45) NOT NULL,
  `accessattribute1` varchar(45) NOT NULL,
  `sk` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `ureg`
--

INSERT INTO `ureg` (`id`, `name`, `pass`, `mail`, `gen`, `dob`, `contactnumber`, `state`, `country`, `status`, `akey`, `accessattribute`, `accessattribute1`, `sk`) VALUES
(1, 'Raghu', '123456', 'msraghu960@gmail.com', 'Male', '2022-02-19', '9874563211', 'telangana', 'india', 'Granted', 'XWu6DmAzD1ITcIAJxWqRUZo/xW6XAAOVa6Lma1zdW2GJJSpQl9fUJg==', 'sports', 'sports', 'UID0048');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
