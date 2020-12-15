-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2020 at 04:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `ajaxcurd`
--

CREATE TABLE `ajaxcurd` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `dob` varchar(55) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ajaxcurd`
--

INSERT INTO `ajaxcurd` (`id`, `firstname`, `lastname`, `email`, `mobile`, `dob`) VALUES
(10, 'prem', 'Singh', 'hunny345686@yahoo.in', '9501915449', '2020-12-09'),
(9, 'amit', 'Singh', 'hunny345686@yahoo.in', '9501915449', '2020-12-09');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(250) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `modifid` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `parent`, `created`, `modifid`, `is_active`, `is_delete`) VALUES
(5, 'chaines', NULL, '2020-02-08 02:08:58', '2020-02-08 02:08:58', 1, 0),
(4, 'INDIAN', NULL, '2020-02-08 02:06:14', '2020-02-08 02:06:14', 1, 0),
(11, 'south indian', 4, '2020-02-09 02:27:16', '2020-02-09 02:29:19', 1, 0),
(12, 'chawmean', 5, '2020-02-09 02:27:52', '2020-02-09 02:29:45', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `datatable`
--

CREATE TABLE `datatable` (
  `id` int(11) NOT NULL,
  `fname` varchar(55) NOT NULL,
  `lname` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `gender` varchar(55) NOT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datatable`
--

INSERT INTO `datatable` (`id`, `fname`, `lname`, `email`, `gender`, `dob`) VALUES
(101, 'prem', 'singh', 'hunny345686@gmail.com', 'male', '2020-12-02');

-- --------------------------------------------------------

--
-- Table structure for table `php_task`
--

CREATE TABLE `php_task` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `know_tech` varchar(255) NOT NULL,
  `compname` varchar(255) NOT NULL,
  `joining_date` varchar(255) NOT NULL,
  `compcity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `php_task`
--

INSERT INTO `php_task` (`id`, `username`, `qualification`, `know_tech`, `compname`, `joining_date`, `compcity`) VALUES
(1, 'Prem Singh', 'BCA', 'Php ,Java Script', 'kindlbit,tech m', '2008-01-16,2016-10-12', ' chd,mohali'),
(2, 'amit', 'MCA', 'Java,Python', 'cora', '2016-10-18', ' bangloru'),
(3, 'rahul kumar', 'B.Tech', 'Php ,Python', 'data,infosys', '2020-11-04,2020-11-04', ' mumbai,pune'),
(4, 'rohit sharma', 'M.Tech', 'Php ,Java Script,Java,Python,Dot Net', 'mysql,php', '2020-10-27,2020-10-31', ' delhi,noida'),
(5, 'rohit sharma', 'M.Tech', 'Php ,Java Script,Java,Python,Dot Net', 'php', '2020-10-31', ' noida'),
(6, 'ashok mehra', 'M.Tech', 'Php ,Java Script,Java', 'java script,database', '2020-11-26,2020-11-24', ' chd,mohali'),
(7, 'akhil ', 'MCA', 'Php ,Java Script,Java', 'codeigniter', '2020-11-11', ' chd'),
(8, 'anil sharma', 'B.Tech', 'Php,Java Script,Java,Python,Dot Net', 'sriramTech,ustechno,nevitech,', '2020-10-27,2020-10-27,2020-11-14,', ' chd,mohali,pkl,'),
(9, 'ravi thakur', 'MCA', 'Java Script,Java,Python,Dot Net', 'ustechno,', '2020-10-27,', ' chd,'),
(10, 'raj kumar', 'MCA', 'Php', 'ustechno', '', ' mohali');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `Department` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `duration` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `msg` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ajaxcurd`
--
ALTER TABLE `ajaxcurd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datatable`
--
ALTER TABLE `datatable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `php_task`
--
ALTER TABLE `php_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ajaxcurd`
--
ALTER TABLE `ajaxcurd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `datatable`
--
ALTER TABLE `datatable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `php_task`
--
ALTER TABLE `php_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
