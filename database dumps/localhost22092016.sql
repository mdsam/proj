-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 22, 2016 at 04:10 PM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ci_series`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `contents` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `title`, `author`, `contents`) VALUES
(1, 'My First Post', 'Jeffrey Way', 'The Quick Brown Fox Jump Over The Lazy Dog'),
(2, 'Another Post', 'Madhusudan', 'The Madhu Sudan Post'),
(3, 'Yet Another Post', 'Nimish Prabhu', 'Nimish Prabhi  Post Working Now'),
(4, 'Final Post Goes Here', 'Tejas Raikar', 'Tejas Raikar Post Going Here');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `title`) VALUES
(1, 'SomeTitle'),
(2, 'AnotherTitle');

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(11) NOT NULL,
  `lastname` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `firstname`, `lastname`) VALUES
(1, 'First User', 'First Name'),
(2, 'Second User', 'Second Name'),
(3, 'Third User', 'Third Name');
--
-- Database: `dd`
--

-- --------------------------------------------------------

--
-- Table structure for table `dd_tracker`
--

CREATE TABLE IF NOT EXISTS `dd_tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) NOT NULL,
  `rid` int(11) NOT NULL,
  `ticketid` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `oid` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `dateline` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `loginid` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `comdateline` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `commid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `dd_tracker`
--

INSERT INTO `dd_tracker` (`id`, `domain`, `rid`, `ticketid`, `pin`, `oid`, `status`, `dateline`, `loginid`, `comment`, `comdateline`, `commid`) VALUES
(1, 'Domain1', 0, '', '', '', '', '2016-09-21 15:15:06', '', '', '2016-08-18 14:58:34', 'admin'),
(2, 'uzb.xxx', 643348, 'SJS-677-98997', 'Yes', ' 67756197', '', '2016-08-18 14:59:28', '', 'uzb.xxx ', '2016-08-18 14:59:28', 'admin'),
(3, 'plusonetix.com', 14898623, 'EOX-676-48612', 'Yes', '', ' Within AGP,PIN confirmed', '2016-09-20 14:59:40', '', 'comment by mee', '2016-09-20 14:59:40', ''),
(4, 'Domain4', 0, '', '', '', '', '2016-09-21 15:15:03', '', '', '2016-09-20 15:03:12', ''),
(5, 'Domain5', 0, '', '', '', '', '2016-09-21 15:14:57', '', '', '0000-00-00 00:00:00', ''),
(6, 'myticketdate.com', 14898623, 'EOX-676-48612', 'Yes', '', 'Within AGP', '2016-08-11 11:38:26', '', '14898623', '2016-08-11 11:38:26', 'admin'),
(7, 'Domain7', 0, '', '', '', '', '2016-08-11 11:34:42', '', '"Domain in AGP . Report for .XXX Domain Names Total Registrations:        13 Total Deletions:        3 Net Registrations:        10 Deletion Percentage:        30% . Start of the month You can go ahead with the Deletion."', '2016-08-11 11:34:42', 'admin'),
(8, 'Domain8', 0, 'sd', 'sd', 'sd', 'sd', '2016-08-11 11:32:27', '', 'yeh admin drwa comme hai for id 73 ke liye nitesh.k', '2016-08-11 11:31:38', 'admin'),
(9, 'Domain9', 0, 'sad', 'ads', 'sad', 'ads', '2016-08-11 11:34:04', '', 'doman ka comment', '2016-08-11 11:34:04', 'admin'),
(10, 'Domain10', 0, 'sad', 'sad', 'sad', 'asd', '2016-08-11 11:32:35', '', 'yeh admin drwa comme hai for id 10 ke liye', '2016-08-11 11:29:00', 'admin'),
(71, 'Domain71', 0, '', '', '', '', '2016-09-21 15:14:52', 'admin', '', '2016-08-11 11:17:21', ''),
(72, 'Domain72', 0, '', '', '', '', '2016-09-21 15:14:49', 'admin', '', '2016-08-11 11:15:23', ''),
(73, 'mehmood.com', 24685, 'QWY-706-17602', 'No', '064565', 'Under AGP', '2016-08-11 11:29:46', 'admin', 'yeh admin drwa comme hai for id 10 ke liye', '2016-08-11 11:29:46', 'admin'),
(76, 'Domaiadd.com', 1256685, 'BHH-191-30198', 'No', '646', 'Within AGP,PIN confirmed', '2016-08-16 15:21:56', 'admin', '"Report for .COM Domain Names Total Registrations:        45981 Total Deletions:        2764 Net Registrations:        43217 Deletion Percentage:        6%    Proceed with Deletion"', '2016-08-16 15:21:56', 'admin'),
(101, 'mem.com', 2565, 'IAW-547-94027', 'Yes', '1266', 'Under AGP', '2016-09-21 15:14:47', '', '', '2016-09-21 15:14:09', ''),
(102, 'as', 0, '', '', '', '', '2016-09-21 15:14:44', '', '', '2016-09-21 15:13:22', ''),
(105, 'mehmoods.net', 2554, '655', '26', '22', '222', '2016-09-21 14:44:41', 'mehmood.k', 'comment by nitesh', '2016-09-21 08:54:28', 'admin'),
(106, 'sath.com', 29, 'EKP-878-64773', 'Yes', '59965', 'Under AGP', '2016-09-21 16:13:09', '', '2016-09-21 20:36:22 ', '2016-09-21 16:13:09', 'mehmood.k'),
(107, 'domain.com', 0, '', '', '', '', '2016-09-21 15:08:50', '', '', '0000-00-00 00:00:00', ''),
(110, '', 0, '', '', '', '', '2016-09-21 15:53:59', 'mehmood.k', '', '0000-00-00 00:00:00', ''),
(111, '', 0, '', '', '', '', '2016-09-21 15:54:11', 'mehmood.k', '', '0000-00-00 00:00:00', ''),
(112, '', 0, '', '', '', '', '2016-09-21 15:54:32', 'mehmood.k', '', '0000-00-00 00:00:00', ''),
(113, '', 0, '', '', '', '', '2016-09-21 15:55:19', 'mehmood.k', '', '0000-00-00 00:00:00', ''),
(114, '', 0, '', '', '', '', '2016-09-21 15:56:20', 'mehmood.k', '', '0000-00-00 00:00:00', ''),
(115, 'sessiontest', 0, 'sad', '85547', '', 'dsd', '2016-09-21 15:57:01', 'mehmood.k', '', '0000-00-00 00:00:00', ''),
(116, '1', 2, '3', '4', '5', '6', '2016-09-21 16:37:17', 'mehmood.k', '123', '2016-09-21 16:37:17', 'mehmood.k'),
(117, 'as', 0, 'dddddd', '', '', '', '2016-09-21 16:17:00', 'mehmood.k', 'dsds', '2016-09-21 16:39:03', 'mehmood.k');

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE IF NOT EXISTS `mst_admin` (
  `loginid` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`loginid`, `pass`) VALUES
('pgdca', 'pgdca'),
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE IF NOT EXISTS `mst_user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `email`) VALUES
(16, 'admin', 'admin', 'admin', 'mehmood.k@endurance.com'),
(18, 'nitesh.k', 'nitesh.k', 'nitesh.k', 'nitesh.k@endurance.com'),
(19, 'sameer.d', 'sameer.d', 'sameer.d', 'sameer.d@endurance.com'),
(20, 'nimish.p', 'nimish.p', 'nimish.p', 'nimish.p@endurance.com'),
(21, NULL, 'mushir.a', 'mushir.a', 'mushir.a@endurance.com'),
(22, 'jay.s', 'jay.s', 'jay.s', 'jay.s@endurance.com'),
(31, '007', '007', '007', '007@007.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE IF NOT EXISTS `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1);
--
-- Database: `faceback`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE IF NOT EXISTS `admin_info` (
  `Username` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`Username`, `Password`) VALUES
('e11543f2bca901ba1eb5836f36fd73e6', '8f84f98771ffd568b6e26c27ab83a4d3');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feedback_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `feedback_txt` varchar(120) NOT NULL,
  `star` varchar(1) NOT NULL,
  `Date` varchar(30) NOT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `user_id`, `feedback_txt`, `star`, `Date`) VALUES
(2, 8, 'Thanks Rohan', '5', '30-9-2013 11:34');

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE IF NOT EXISTS `group_chat` (
  `chat_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `chat_txt` text NOT NULL,
  `time` varchar(30) NOT NULL,
  PRIMARY KEY (`chat_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`chat_id`, `user_id`, `chat_txt`, `time`) VALUES
(1, 8, 'Hello Friends How are you ? ', '30-9-2013 11:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_cover_pic`
--

CREATE TABLE IF NOT EXISTS `user_cover_pic` (
  `cover_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `image` varchar(150) NOT NULL,
  PRIMARY KEY (`cover_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `user_cover_pic`
--

INSERT INTO `user_cover_pic` (`cover_id`, `user_id`, `image`) VALUES
(7, 8, '999584_496501817111249_1587007043_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(7) NOT NULL,
  `job` varchar(100) NOT NULL,
  `school_or_collage` varchar(100) NOT NULL,
  `current_city` varchar(100) NOT NULL,
  `hometown` varchar(100) NOT NULL,
  `relationship_status` varchar(30) NOT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `mobile_no_priority` varchar(10) NOT NULL,
  `website` varchar(100) NOT NULL,
  `Facebook_ID` varchar(100) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `job`, `school_or_collage`, `current_city`, `hometown`, `relationship_status`, `mobile_no`, `mobile_no_priority`, `website`, `Facebook_ID`) VALUES
(8, '', 'vccm', 'Rajkot', 'Rajkot', 'Single', '7600898210', 'Public', 'www.wix.com/amitad1i4/amit', 'www.facebook.com/Amit.000002');

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE IF NOT EXISTS `user_post` (
  `post_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `post_txt` text NOT NULL,
  `post_pic` varchar(150) NOT NULL,
  `post_time` varchar(30) NOT NULL,
  `priority` varchar(8) NOT NULL,
  PRIMARY KEY (`post_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`post_id`, `user_id`, `post_txt`, `post_pic`, `post_time`, `priority`) VALUES
(46, 8, 'Join Faceback', '', '18-9-2013 22:10', 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_comment`
--

CREATE TABLE IF NOT EXISTS `user_post_comment` (
  `comment_id` int(7) NOT NULL AUTO_INCREMENT,
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_post_status`
--

CREATE TABLE IF NOT EXISTS `user_post_status` (
  `status_id` int(7) NOT NULL AUTO_INCREMENT,
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `status` varchar(7) NOT NULL,
  PRIMARY KEY (`status_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_pic`
--

CREATE TABLE IF NOT EXISTS `user_profile_pic` (
  `profile_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `image` varchar(150) NOT NULL,
  PRIMARY KEY (`profile_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_profile_pic`
--

INSERT INTO `user_profile_pic` (`profile_id`, `user_id`, `image`) VALUES
(6, 8, 'my.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_secret_quotes`
--

CREATE TABLE IF NOT EXISTS `user_secret_quotes` (
  `user_id` int(7) NOT NULL,
  `Question1` varchar(50) NOT NULL,
  `Answer1` varchar(20) NOT NULL,
  `Question2` varchar(50) NOT NULL,
  `Answer2` varchar(20) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_secret_quotes`
--

INSERT INTO `user_secret_quotes` (`user_id`, `Question1`, `Answer1`, `Question2`, `Answer2`) VALUES
(8, 'what is the first name of your oldest nephew?', 'OneRaj', 'who is your all-time favorite movie character?', 'Amir Khan');

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE IF NOT EXISTS `user_status` (
  `user_id` int(7) NOT NULL,
  `status` varchar(8) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_status`
--

INSERT INTO `user_status` (`user_id`, `status`) VALUES
(8, 'Offline');

-- --------------------------------------------------------

--
-- Table structure for table `user_warning`
--

CREATE TABLE IF NOT EXISTS `user_warning` (
  `user_id` int(7) NOT NULL,
  `warning_txt` varchar(200) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(7) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Birthday_Date` varchar(11) NOT NULL,
  `FB_Join_Date` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `Name`, `Email`, `Password`, `Gender`, `Birthday_Date`, `FB_Join_Date`) VALUES
(8, 'Amit Dodiya', 'amit.ad1i4@yahoo.com', 'myfaceback', 'Male', '14-1-1994', '18-9-2013 22:10');

-- --------------------------------------------------------

--
-- Table structure for table `users_notice`
--

CREATE TABLE IF NOT EXISTS `users_notice` (
  `notice_id` int(7) NOT NULL AUTO_INCREMENT,
  `user_id` int(7) NOT NULL,
  `notice_txt` varchar(120) NOT NULL,
  `notice_time` varchar(30) NOT NULL,
  PRIMARY KEY (`notice_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD CONSTRAINT `group_chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_cover_pic`
--
ALTER TABLE `user_cover_pic`
  ADD CONSTRAINT `user_cover_pic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post`
--
ALTER TABLE `user_post`
  ADD CONSTRAINT `user_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  ADD CONSTRAINT `user_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_post_comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `user_post` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post_status`
--
ALTER TABLE `user_post_status`
  ADD CONSTRAINT `user_post_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_post_status_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_post` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  ADD CONSTRAINT `user_profile_pic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_secret_quotes`
--
ALTER TABLE `user_secret_quotes`
  ADD CONSTRAINT `user_secret_quotes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_status`
--
ALTER TABLE `user_status`
  ADD CONSTRAINT `user_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_status_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_warning`
--
ALTER TABLE `user_warning`
  ADD CONSTRAINT `user_warning_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `users_notice`
--
ALTER TABLE `users_notice`
  ADD CONSTRAINT `users_notice_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
--
-- Database: `libform`
--

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `Name` varchar(20) NOT NULL,
  `Bookname` varchar(20) NOT NULL,
  `Date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Name`, `Bookname`, `Date`) VALUES
('', '', ''),
('', '', ''),
('ahmed', 'test', '08.10.2014'),
('ahmed', 'test4', 'test'),
('mehmood', '100 personalities', '19.2.2014'),
('directi', 'directi info', '10.10.2014');
--
-- Database: `mehmood`
--

-- --------------------------------------------------------

--
-- Table structure for table `mehmoodtest`
--

CREATE TABLE IF NOT EXISTS `mehmoodtest` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Database: `my_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `dt_tb`
--

CREATE TABLE IF NOT EXISTS `dt_tb` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `dt2` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `dt_tb`
--

INSERT INTO `dt_tb` (`id`, `dt`, `dt2`) VALUES
(1, '2004-10-26 00:00:00', '2005-01-25'),
(2, '2004-05-05 23:56:25', '2005-06-12'),
(3, '2005-12-08 13:20:10', '2005-06-06'),
(4, '2003-05-26 00:00:00', '2007-12-18'),
(5, '2007-12-18 00:00:00', '2003-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Age` varchar(100) NOT NULL,
  `Hometown` varchar(100) NOT NULL,
  `Job` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User Table For Testing';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `FirstName`, `LastName`, `Age`, `Hometown`, `Job`) VALUES
(1, 'Peter', 'Griffin', '41', 'Quahog', 'Brewery'),
(2, 'Lois', 'Griffin', '40', 'Newport', 'Piano Teacher'),
(3, 'Joseph', 'Swanson', '39', 'Quahog', 'Police Officer'),
(4, 'Glenn', 'Quagmire', '41', 'Quahog', 'Pilot');
--
-- Database: `mydb_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `demotable1`
--

CREATE TABLE IF NOT EXISTS `demotable1` (
  `id` int(11) NOT NULL,
  `product` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `onemoretestcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Database: `myshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_title` text NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Dell'),
(3, 'Nokia'),
(4, 'Sony'),
(5, 'IPads');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Laptops'),
(2, 'Computer'),
(3, 'Mobiles'),
(4, 'Cameras'),
(5, 'Tablets');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keyword` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `brand_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `product_keyword`, `status`) VALUES
(5, 1, 2, '2015-01-20', 'DELL Inspiron', 'dell inpiron.jpg', '', '', 1000, '<p>Dell Inspiron ..Feel the change</p>', 'laptops, dell', 'On'),
(6, 4, 4, '2015-01-20', 'Camera', 'kodak.jpg', '', '', 4000, '<p>East and West Kodak is best</p>', 'camera, kodak', 'On'),
(7, 3, 3, '2015-01-20', 'Mobiles', 'lumia.jpg', '', '', 6000, '<p>lumia 520</p>', 'mobiles, nokia, lumia', 'On'),
(8, 1, 1, '2015-01-20', 'Hp Laptops Elite Class', 'hpelite.jpg', '', '', 40000, '<p>HPELITE Class Laptop Use it...!</p>', 'laptop, hp', 'On'),
(9, 5, 4, '2015-01-20', 'Sony Tablets Pro', 'tab3.jpg', '', '', 1000, '<p>Sony Tablets..Amazing Feature Etc</p>', 'tablets, sony', 'On'),
(10, 4, 4, '2015-01-20', 'Sony DSLR 20226', 'sonycamera.jpg', '', '', 5000, '<p>SONY DSLR CAMERA..picture like never before</p>', 'dslr, camera', 'On'),
(11, 2, 2, '2015-01-21', 'Dell Core2Duo', 'comp1.jpg', '', '', 11000, '<p>Dell Core2Duo Super Fast Computer Eexperiance</p>', 'cor2duo, computer', 'On');
--
-- Database: `php_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `A`
--

CREATE TABLE IF NOT EXISTS `A` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `A`
--

INSERT INTO `A` (`id`, `name`) VALUES
(1, 'Pirate'),
(2, 'Monkey '),
(3, 'Ninja'),
(4, 'Spaghetti');

-- --------------------------------------------------------

--
-- Table structure for table `B`
--

CREATE TABLE IF NOT EXISTS `B` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `B`
--

INSERT INTO `B` (`id`, `name`) VALUES
(1, 'Rutabaga'),
(2, 'Pirate'),
(3, 'Darth Vader'),
(4, 'Ninja');

-- --------------------------------------------------------

--
-- Table structure for table `Persons`
--

CREATE TABLE IF NOT EXISTS `Persons` (
  `FirstName` char(30) DEFAULT NULL,
  `LastName` char(30) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Persons`
--

INSERT INTO `Persons` (`FirstName`, `LastName`, `Age`) VALUES
('Sameer', 'Deshpande', 24),
('Nimish', 'Prabhu', 28),
('Madhusudan', 'Shastri', 28),
('Tejas', 'Raikar', 21),
('Tejas', 'Raikar', 21),
('Tejas', 'Raikar', 21),
('Tejas', 'Raikar', 21),
('Tejas', 'Raikar', 21);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE IF NOT EXISTS `data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hits_count`
--

CREATE TABLE IF NOT EXISTS `hits_count` (
  `count` int(11) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hits_count`
--

INSERT INTO `hits_count` (`count`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `hits_ip`
--

CREATE TABLE IF NOT EXISTS `hits_ip` (
  `ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hits_ip`
--

INSERT INTO `hits_ip` (`ip`) VALUES
(''),
('127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `names`
--

CREATE TABLE IF NOT EXISTS `names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `names`
--

INSERT INTO `names` (`id`, `name`) VALUES
(1, 'Alex Garret'),
(2, 'Dale Garret'),
(3, 'Billy Garret'),
(4, 'Craig Malcolm'),
(5, 'Alex Malcolm'),
(6, 'Dale Malcolm');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE IF NOT EXISTS `temp` (
  `code` varchar(65) NOT NULL,
  `username` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`code`, `username`, `email`, `password`) VALUES
('01', 'user01', 'user01@demosite.com', '123'),
('02', 'user02', 'user02@demosite.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `surname` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `firstname`, `surname`) VALUES
(1, 'alex', '5f4dcc3b5aa765d61d8327deb882cf99', 'Alex', 'Garret'),
(2, 'Billy', '5f4dcc3b5aa765d61d8327deb882cf99', 'Billy', 'Garret'),
(3, 'root', 'ebc308f979e135f40483eec4b35feea1', 'root', 'sir'),
(4, 'dale', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(5, 'chris', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(6, 'test', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(7, '', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(8, 'jay', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(9, 'josh', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(10, 'sa', 'd41d8cd98f00b204e9800998ecf8427e', '', ''),
(11, 'justin', 'ebc308f979e135f40483eec4b35feea1', 'justin', 'thomas'),
(12, 'md', 'ebc308f979e135f40483eec4b35feea1', 'md', 'ali'),
(13, 'Nimish', '5f4dcc3b5aa765d61d8327deb882cf99', 'Nimish', 'Prabhu'),
(14, '  Mehmood', 'ebc308f979e135f40483eec4b35feea1', 'Mehmood', 'Khan'),
(15, ' user01 ', 'ebc308f979e135f40483eec4b35feea1', 'user', '01'),
(16, ' madhu', 'ebc308f979e135f40483eec4b35feea1', 'madhu', 'sudan'),
(17, 'user02', 'ebc308f979e135f40483eec4b35feea1', 'user', '02'),
(18, 'alia.a', 'wss', 'alia', 'bhatt'),
(19, 'ahmed.k', 'wss', 'ahmed', 'khan'),
(22, 'd', 'd', 'd', 'd'),
(23, 'e', 'e', 'e', 'e'),
(24, 'f', 'f', 'f', 'f'),
(25, 'chhaya.s', 'wss', 'chhaya', 'soni'),
(26, 'pratik.k', 'password', 'pratik', 'jagdishwala'),
(27, 'madhusudan.s', 'password', 'madhu', 'shastri'),
(32, 'this ', 'is', 'the', 'second time'),
(33, 'retest', 'test', 'test', 're'),
(34, 'hdsjd', 'snds', 'skldjs', 'sdkjs'),
(35, 'khasi', 'kha', 'kha', 'kha');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(65) NOT NULL,
  `username` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=18 ;

--
-- Dumping data for table `pma_column_info`
--

INSERT INTO `pma_column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`) VALUES
(1, 'dd', 'dd_tracker', 'id', '', '', '_', ''),
(2, 'dd', 'dd_tracker', 'domain name', '', '', '_', ''),
(3, 'dd', 'dd_tracker', 'rid', '', '', '_', ''),
(4, 'dd', 'dd_tracker', 'ticketid', '', '', '_', ''),
(5, 'dd', 'dd_tracker', 'pin', '', '', '_', ''),
(6, 'dd', 'dd_tracker', 'oid', '', '', '_', ''),
(7, 'dd', 'dd_tracker', 'status', '', '', '_', ''),
(8, 'dd', 'dd_tracker', 'comment', '', '', '_', ''),
(9, 'dd', 'dd_tracker', 'comment2', '', '', '_', ''),
(12, 'dd', 'dd_tracker', 'Additional Comment', '', '', '_', ''),
(11, 'dd', 'dd_tracker', 'domain', '', '', '_', ''),
(13, 'dd', 'dd_tracker', 'Other Comment', '', '', '_', ''),
(14, 'dd', 'dd_tracker', 'dateline', '', '', '_', ''),
(15, 'dd', 'dd_tracker', 'comdateline', '', '', '_', ''),
(16, 'dd', 'dd_tracker', 'loginid', '', '', '_', ''),
(17, 'dd', 'dd_tracker', 'commid', '', '', '_', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"dd","table":"dd_tracker"},{"db":"dd","table":"mst_tracker"},{"db":"dd","table":"mst_user"},{"db":"dd","table":"mst_admin"},{"db":"dd","table":"mst_useranswer"},{"db":"dd","table":"dtracker"},{"db":"quiz","table":"mst_user"},{"db":"quiz","table":"mst_subject"},{"db":"repmydb","table":"orders"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE IF NOT EXISTS `mst_admin` (
  `loginid` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`loginid`, `pass`) VALUES
('pgdca', 'pgdca');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE IF NOT EXISTS `mst_question` (
  `que_id` int(5) NOT NULL AUTO_INCREMENT,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(1) DEFAULT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(16, 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2),
(17, 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3),
(18, 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1),
(19, 9, 'Which of the follwing contexts are available in the add watch window?', 'Project', 'Module', 'Procedure', 'All', 4),
(20, 9, 'Which window will allow you to halt the execution of your code when a variable changes?', 'The call stack window', 'The immedite window', 'The locals window', 'The watch window', 4),
(22, 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2),
(23, 9, 'How can you print the object name associated with the last VB  error to the Immediate window?', 'Debug.Print Err.Number', 'Debug.Print Err.Source', 'Debug.Print Err.Description', 'Debug.Print Err.LastDLLError', 2),
(24, 9, 'What function does the TabStop property on a command button perform?', 'It determines whether the button can get the focus', 'If set to False it disables the Tabindex property.', 'It determines the order in which the button will receive the focus', 'It determines if the access key swquence can be used', 1),
(25, 10, 'You application creates an instance of a form. What is the first event that will be triggered in the from?', 'Load', 'GotFocus', 'Instance', 'Initialize', 4),
(26, 10, 'Which of the following is Hungarian notation for a menu?', 'Menu', 'Men', 'mnu', 'MN', 3),
(27, 10, 'You are ready to run your program to see if it works.Which key on your keyboard will start the program?', 'F2', 'F3', 'F4', 'F5', 4),
(28, 10, 'Which of the following snippets of code will unload a form named frmFo0rm from memory?', 'Unload Form', 'Unload This', 'Unload Me', 'Unload', 3),
(29, 10, 'You want the text in text box named txtMyText to read My Text.In which property will you place this string?', 'Caption', 'Text', 'String', 'None of the above', 2),
(30, 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0),
(31, 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE IF NOT EXISTS `mst_result` (
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`login`, `test_id`, `test_date`, `score`) VALUES
('raj', 8, '0000-00-00', 3),
('raj', 9, '0000-00-00', 3),
('raj', 8, '0000-00-00', 1),
('ashish', 10, '0000-00-00', 3),
('ashish', 9, '0000-00-00', 2),
('ashish', 10, '0000-00-00', 0),
('raj', 8, '0000-00-00', 0),
('ankur', 11, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE IF NOT EXISTS `mst_subject` (
  `sub_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(1, 'VB'),
(2, 'Oracle'),
(3, 'Java'),
(4, 'PHP'),
(5, 'Computer Fundamental'),
(6, 'Networking'),
(7, 'mysql'),
(8, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE IF NOT EXISTS `mst_test` (
  `test_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(8, 1, 'VB Basic Test', '3'),
(9, 1, 'Essentials of VB', '5'),
(10, 1, 'Creating User Services', '5'),
(11, 7, 'function', '5'),
(12, 8, 'Basic', '10');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE IF NOT EXISTS `mst_user` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(1, 'raj', 'raj', 'Rajen', 'limbdi', 'limbdi', 9999, 'raj@yahoo.com'),
(12, 'ashish', 'shah', 'ashish', 'laskdjf', 'S''nagar', 228585, 'ashish@yahoo.com'),
(14, 'Dhaval123', 'a', 'a', 'a', 'a', 0, 'dhaval@yahoo.com'),
(15, 'test', 'test', 'Test K', 'test', 'test', 988, 'test@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE IF NOT EXISTS `mst_useranswer` (
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(50) DEFAULT NULL,
  `ans2` varchar(50) DEFAULT NULL,
  `ans3` varchar(50) DEFAULT NULL,
  `ans4` varchar(50) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What  Default Data Type ?', 'String', 'Variant', 'Integer', 'Boolear', 2, 1),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'What is Default Form Border Style ?', 'Fixed Single', 'None', 'Sizeable', 'Fixed Diaglog', 3, 3),
('2b8e3337837b82112def8d3e2f42f26e', 8, 'Which is not type of Control ?', 'text', 'lable', 'checkbox', 'option button', 1, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 4),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 3),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 2),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1),
('idjir9pcq2d07764us8rdiq9n5', 11, 'how to use date( ) in mysql ?', 'now( )', 'today( )', 'date( )', 'time( )', 0, 1);
--
-- Database: `repmydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categoryid` int(60) NOT NULL,
  `categoryname` varchar(60) NOT NULL,
  `description` varchar(120) NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `categoryname`, `description`) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood', 'Seaweed and fish');

-- --------------------------------------------------------

--
-- Table structure for table `custbkp`
--

CREATE TABLE IF NOT EXISTS `custbkp` (
  `customerid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custbkp`
--

INSERT INTO `custbkp` (`customerid`) VALUES
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerid` int(60) NOT NULL,
  `customername` varchar(60) NOT NULL,
  `contactname` varchar(60) NOT NULL,
  `address` varchar(120) NOT NULL,
  `city` varchar(60) NOT NULL,
  `postalcode` int(60) NOT NULL,
  `country` int(60) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `customername`, `contactname`, `address`, `city`, `postalcode`, `country`) VALUES
(0, '', '', '', '', 0, 0),
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', 12209, 0),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', 5021, 0),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', 5023, 0),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 0, 0),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 0, 0),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', 68306, 0),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', 67000, 0),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', 28023, 0),
(9, 'Bon app''', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', 13008, 0),
(10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 0, 0),
(11, 'B''s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 0, 0),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', 1010, 0),
(13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', 5022, 0),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', 3012, 0),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', 5432, 0),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', 0, 0),
(17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', 52066, 0),
(18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', 44000, 0),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 0, 0),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', 8010, 0),
(21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', 5442, 0),
(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', 28034, 0),
(23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', 59000, 0),
(24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 0, 0),
(25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', 80805, 0),
(26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', 44000, 0),
(27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', 10100, 0),
(28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Jardim das rosas n. 32', 'Lisboa', 1675, 0),
(29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', 8022, 0),
(30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', 41101, 0),
(31, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', 4876, 0),
(32, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', 97403, 0),
(33, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', 1081, 0),
(34, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', 5454, 0),
(35, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 5022, 0),
(36, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', 97827, 0),
(37, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', 0, 0),
(38, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 0, 0),
(39, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', 14776, 0),
(40, 'La corne d''abondance', 'Daniel Tonini', '67, avenue de l''Europe', 'Versailles', 78000, 0),
(41, 'La maison d''Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', 31000, 0),
(42, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 0, 0),
(43, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', 99362, 0),
(44, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M.', 60528, 0),
(45, 'Let''s Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', 94117, 0),
(46, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 3508, 0),
(47, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 4980, 0),
(48, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', 97219, 0),
(49, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', 24100, 0),
(50, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 0, 0),
(51, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 0, 0),
(52, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', 4179, 0),
(53, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 0, 0),
(54, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', 1010, 0),
(55, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', 99508, 0),
(56, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', 50739, 0),
(57, 'Paris spécialités', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', 75012, 0),
(58, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', 5033, 0),
(59, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', 5020, 0),
(60, 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da saúde n. 58', 'Lisboa', 1756, 0),
(61, 'Que Delícia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', 2389, 0),
(62, 'Queen Cozinha', 'Lúcia Carvalho', 'Alameda dos Canàrios, 891', 'São Paulo', 5487, 0),
(63, 'QUICK-Stop', 'Horst Kloss', 'Taucherstraße 10', 'Cunewalde', 1307, 0),
(64, 'Rancho grande', 'Sergio Gutiérrez', 'Av. del Libertador 900', 'Buenos Aires', 1010, 0),
(65, 'Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', 87110, 0),
(66, 'Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', 42100, 0),
(67, 'Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', 2389, 0),
(68, 'Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Genève', 1203, 0),
(69, 'Romero y tomillo', 'Alejandra Camino', 'Gran Vía, 1', 'Madrid', 28001, 0),
(70, 'Santé Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', 4110, 0),
(71, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', 83720, 0),
(72, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 0, 0),
(73, 'Simons bistro', 'Jytte Petersen', 'Vinbæltet 34', 'København', 1734, 0),
(74, 'Spécialités du monde', 'Dominique Perrier', '25, rue Lauriston', 'Paris', 75016, 0),
(75, 'Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', 82520, 0),
(76, 'Suprêmes délices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 0, 0),
(77, 'The Big Cheese', 'Liz Nixon', '89 Jefferson Way Suite 2', 'Portland', 97201, 0),
(78, 'The Cracker Box', 'Liu Wong', '55 Grizzly Peak Rd.', 'Butte', 59801, 0),
(79, 'Toms Spezialitäten', 'Karin Josephs', 'Luisenstr. 48', 'Münster', 44087, 0),
(80, 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Avda. Azteca 123', 'México D.F.', 5033, 0),
(81, 'Tradição Hipermercados', 'Anabela Domingues', 'Av. Inês de Castro, 414', 'São Paulo', 5634, 0),
(82, 'Trail''s Head Gourmet Provisioners', 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', 98034, 0),
(83, 'Vaffeljernet', 'Palle Ibsen', 'Smagsløget 45', 'Århus', 8200, 0),
(84, 'Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lyon', 69004, 0),
(85, 'Vins et alcools Chevalier', 'Paul Henriot', '59 rue de l''Abbaye', 'Reims', 51100, 0),
(86, 'Die Wandernde Kuh', 'Rita Müller', 'Adenauerallee 900', 'Stuttgart', 70563, 0),
(87, 'Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', 90110, 0),
(88, 'Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', 8737, 0),
(89, 'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', 98128, 0),
(90, 'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', 21240, 0),
(91, 'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `demo`
--

CREATE TABLE IF NOT EXISTS `demo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(50) NOT NULL,
  `Secondname` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `demo`
--

INSERT INTO `demo` (`ID`, `Firstname`, `Secondname`) VALUES
(1, 'test', ''),
(2, 'test', ''),
(3, 'test', ''),
(4, 'test2', ''),
(5, 'Mehmood', 'Khan'),
(6, 'chaddi ', 'ryan'),
(7, 'test', 'test2'),
(8, 'Khan', 'Ahmed'),
(9, 'Drop', '12.15'),
(10, '', ''),
(11, '', ''),
(12, '', ''),
(13, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `employess`
--

CREATE TABLE IF NOT EXISTS `employess` (
  `employeeid` int(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `birthdate` int(60) NOT NULL,
  `contact` int(60) NOT NULL,
  `notes` int(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employess`
--

INSERT INTO `employess` (`employeeid`, `lastname`, `firstname`, `birthdate`, `contact`, `notes`) VALUES
(1, 'Davolio', 'Nancy', 1968, 0, 0),
(2, 'Fuller', 'Andrew', 1952, 0, 0),
(3, 'Leverling', 'Janet', 1963, 0, 0),
(4, 'Peacock', 'Margaret', 1958, 0, 0),
(5, 'Buchanan', 'Steven', 1955, 0, 0),
(6, 'Suyama', 'Michael', 1963, 0, 0),
(7, 'King', 'Robert', 1960, 0, 0),
(8, 'Callahan', 'Laura', 1958, 0, 0),
(9, 'Dodsworth', 'Anne', 1969, 0, 0),
(10, 'West', 'Adam', 1928, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
  `orderid` int(60) NOT NULL,
  `orderno` int(60) NOT NULL,
  `productid` int(60) NOT NULL,
  `quantity` int(60) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderid`, `orderno`, `productid`, `quantity`) VALUES
(1, 10248, 11, 12),
(2, 10248, 42, 10),
(3, 10248, 72, 5),
(4, 10249, 14, 9),
(5, 10249, 51, 40),
(6, 10250, 41, 10),
(7, 10250, 51, 35),
(8, 10250, 65, 15),
(9, 10251, 22, 6),
(10, 10251, 57, 15),
(11, 10251, 65, 20),
(12, 10252, 20, 40),
(13, 10252, 33, 25),
(14, 10252, 60, 40),
(15, 10253, 31, 20),
(16, 10253, 39, 42),
(17, 10253, 49, 40),
(18, 10254, 24, 15),
(19, 10254, 55, 21),
(20, 10254, 74, 21),
(21, 10255, 2, 20),
(22, 10255, 16, 35),
(23, 10255, 36, 25),
(24, 10255, 59, 30),
(25, 10256, 53, 15),
(26, 10256, 77, 12),
(27, 10257, 27, 25),
(28, 10257, 39, 6),
(29, 10257, 77, 15),
(30, 10258, 2, 50),
(31, 10258, 5, 65),
(32, 10258, 32, 6),
(33, 10259, 21, 10),
(34, 10259, 37, 1),
(35, 10260, 41, 16),
(36, 10260, 57, 50),
(37, 10260, 62, 15),
(38, 10260, 70, 21),
(39, 10261, 21, 20),
(40, 10261, 35, 20),
(41, 10262, 5, 12),
(42, 10262, 7, 15),
(43, 10262, 56, 2),
(44, 10263, 16, 60),
(45, 10263, 24, 28),
(46, 10263, 30, 60),
(47, 10263, 74, 36),
(48, 10264, 2, 35),
(49, 10264, 41, 25),
(50, 10265, 17, 30),
(51, 10265, 70, 20),
(52, 10266, 12, 12),
(53, 10267, 40, 50),
(54, 10267, 59, 70),
(55, 10267, 76, 15),
(56, 10268, 29, 10),
(57, 10268, 72, 4),
(58, 10269, 33, 60),
(59, 10269, 72, 20),
(60, 10270, 36, 30),
(61, 10270, 43, 25),
(62, 10271, 33, 24),
(63, 10272, 20, 6),
(64, 10272, 31, 40),
(65, 10272, 72, 24),
(66, 10273, 10, 24),
(67, 10273, 31, 15),
(68, 10273, 33, 20),
(69, 10273, 40, 60),
(70, 10273, 76, 33),
(71, 10274, 71, 20),
(72, 10274, 72, 7),
(73, 10275, 24, 12),
(74, 10275, 59, 6),
(75, 10276, 10, 15),
(76, 10276, 13, 10),
(77, 10277, 28, 20),
(78, 10277, 62, 12),
(79, 10278, 44, 16),
(80, 10278, 59, 15),
(81, 10278, 63, 8),
(82, 10278, 73, 25),
(83, 10279, 17, 15),
(84, 10280, 24, 12),
(85, 10280, 55, 20),
(86, 10280, 75, 30),
(87, 10281, 19, 1),
(88, 10281, 24, 6),
(89, 10281, 35, 4),
(90, 10282, 30, 6),
(91, 10282, 57, 2),
(92, 10283, 15, 20),
(93, 10283, 19, 18),
(94, 10283, 60, 35),
(95, 10283, 72, 3),
(96, 10284, 27, 15),
(97, 10284, 44, 21),
(98, 10284, 60, 20),
(99, 10284, 67, 5),
(100, 10285, 1, 45),
(101, 10285, 40, 40),
(102, 10285, 53, 36),
(103, 10286, 35, 100),
(104, 10286, 62, 40),
(105, 10287, 16, 40),
(106, 10287, 34, 20),
(107, 10287, 46, 15),
(108, 10288, 54, 10),
(109, 10288, 68, 3),
(110, 10289, 3, 30),
(111, 10289, 64, 9),
(112, 10290, 5, 20),
(113, 10290, 29, 15),
(114, 10290, 49, 15),
(115, 10290, 77, 10),
(116, 10291, 13, 20),
(117, 10291, 44, 24),
(118, 10291, 51, 2),
(119, 10292, 20, 20),
(120, 10293, 18, 12),
(121, 10293, 24, 10),
(122, 10293, 63, 5),
(123, 10293, 75, 6),
(124, 10294, 1, 18),
(125, 10294, 17, 15),
(126, 10294, 43, 15),
(127, 10294, 60, 21),
(128, 10294, 75, 6),
(129, 10295, 56, 4),
(130, 10296, 11, 12),
(131, 10296, 16, 30),
(132, 10296, 69, 15),
(133, 10297, 39, 60),
(134, 10297, 72, 20),
(135, 10298, 2, 40),
(136, 10298, 36, 40),
(137, 10298, 59, 30),
(138, 10298, 62, 15),
(139, 10299, 19, 15),
(140, 10299, 70, 20),
(141, 10300, 66, 30),
(142, 10300, 68, 20),
(143, 10301, 40, 10),
(144, 10301, 56, 20),
(145, 10302, 17, 40),
(146, 10302, 28, 28),
(147, 10302, 43, 12),
(148, 10303, 40, 40),
(149, 10303, 65, 30),
(150, 10303, 68, 15),
(151, 10304, 49, 30),
(152, 10304, 59, 10),
(153, 10304, 71, 2),
(154, 10305, 18, 25),
(155, 10305, 29, 25),
(156, 10305, 39, 30),
(157, 10306, 30, 10),
(158, 10306, 53, 10),
(159, 10306, 54, 5),
(160, 10307, 62, 10),
(161, 10307, 68, 3),
(162, 10308, 69, 1),
(163, 10308, 70, 5),
(164, 10309, 4, 20),
(165, 10309, 6, 30),
(166, 10309, 42, 2),
(167, 10309, 43, 20),
(168, 10309, 71, 3),
(169, 10310, 16, 10),
(170, 10310, 62, 5),
(171, 10311, 42, 6),
(172, 10311, 69, 7),
(173, 10312, 28, 4),
(174, 10312, 43, 24),
(175, 10312, 53, 20),
(176, 10312, 75, 10),
(177, 10313, 36, 12),
(178, 10314, 32, 40),
(179, 10314, 58, 30),
(180, 10314, 62, 25),
(181, 10315, 34, 14),
(182, 10315, 70, 30),
(183, 10316, 41, 10),
(184, 10316, 62, 70),
(185, 10317, 1, 20),
(186, 10318, 41, 20),
(187, 10318, 76, 6),
(188, 10319, 17, 8),
(189, 10319, 28, 14),
(190, 10319, 76, 30),
(191, 10320, 71, 30),
(192, 10321, 35, 10),
(193, 10322, 52, 20),
(194, 10323, 15, 5),
(195, 10323, 25, 4),
(196, 10323, 39, 4),
(197, 10324, 16, 21),
(198, 10324, 35, 70),
(199, 10324, 46, 30),
(200, 10324, 59, 40),
(201, 10324, 63, 80),
(202, 10325, 6, 6),
(203, 10325, 13, 12),
(204, 10325, 14, 9),
(205, 10325, 31, 4),
(206, 10325, 72, 40),
(207, 10326, 4, 24),
(208, 10326, 57, 16),
(209, 10326, 75, 50),
(210, 10327, 2, 25),
(211, 10327, 11, 50),
(212, 10327, 30, 35),
(213, 10327, 58, 30),
(214, 10328, 59, 9),
(215, 10328, 65, 40),
(216, 10328, 68, 10),
(217, 10329, 19, 10),
(218, 10329, 30, 8),
(219, 10329, 38, 20),
(220, 10329, 56, 12),
(221, 10330, 26, 50),
(222, 10330, 72, 25),
(223, 10331, 54, 15),
(224, 10332, 18, 40),
(225, 10332, 42, 10),
(226, 10332, 47, 16),
(227, 10333, 14, 10),
(228, 10333, 21, 10),
(229, 10333, 71, 40),
(230, 10334, 52, 8),
(231, 10334, 68, 10),
(232, 10335, 2, 7),
(233, 10335, 31, 25),
(234, 10335, 32, 6),
(235, 10335, 51, 48),
(236, 10336, 4, 18),
(237, 10337, 23, 40),
(238, 10337, 26, 24),
(239, 10337, 36, 20),
(240, 10337, 37, 28),
(241, 10337, 72, 25),
(242, 10338, 17, 20),
(243, 10338, 30, 15),
(244, 10339, 4, 10),
(245, 10339, 17, 70),
(246, 10339, 62, 28),
(247, 10340, 18, 20),
(248, 10340, 41, 12),
(249, 10340, 43, 40),
(250, 10341, 33, 8),
(251, 10341, 59, 9),
(252, 10342, 2, 24),
(253, 10342, 31, 56),
(254, 10342, 36, 40),
(255, 10342, 55, 40),
(256, 10343, 64, 50),
(257, 10343, 68, 4),
(258, 10343, 76, 15),
(259, 10344, 4, 35),
(260, 10344, 8, 70),
(261, 10345, 8, 70),
(262, 10345, 19, 80),
(263, 10345, 42, 9),
(264, 10346, 17, 36),
(265, 10346, 56, 20),
(266, 10347, 25, 10),
(267, 10347, 39, 50),
(268, 10347, 40, 4),
(269, 10347, 75, 6),
(270, 10348, 1, 15),
(271, 10348, 23, 25),
(272, 10349, 54, 24),
(273, 10350, 50, 15),
(274, 10350, 69, 18),
(275, 10351, 38, 20),
(276, 10351, 41, 13),
(277, 10351, 44, 77),
(278, 10351, 65, 10),
(279, 10352, 24, 10),
(280, 10352, 54, 20),
(281, 10353, 11, 12),
(282, 10353, 38, 50),
(283, 10354, 1, 12),
(284, 10354, 29, 4),
(285, 10355, 24, 25),
(286, 10355, 57, 25),
(287, 10356, 31, 30),
(288, 10356, 55, 12),
(289, 10356, 69, 20),
(290, 10357, 10, 30),
(291, 10357, 26, 16),
(292, 10357, 60, 8),
(293, 10358, 24, 10),
(294, 10358, 34, 10),
(295, 10358, 36, 20),
(296, 10359, 16, 56),
(297, 10359, 31, 70),
(298, 10359, 60, 80),
(299, 10360, 28, 30),
(300, 10360, 29, 35),
(301, 10360, 38, 10),
(302, 10360, 49, 35),
(303, 10360, 54, 28),
(304, 10361, 39, 54),
(305, 10361, 60, 55),
(306, 10362, 25, 50),
(307, 10362, 51, 20),
(308, 10362, 54, 24),
(309, 10363, 31, 20),
(310, 10363, 75, 12),
(311, 10363, 76, 12),
(312, 10364, 69, 30),
(313, 10364, 71, 5),
(314, 10365, 11, 24),
(315, 10366, 65, 5),
(316, 10366, 77, 5),
(317, 10367, 34, 36),
(318, 10367, 54, 18),
(319, 10367, 65, 15),
(320, 10367, 77, 7),
(321, 10368, 21, 5),
(322, 10368, 28, 13),
(323, 10368, 57, 25),
(324, 10368, 64, 35),
(325, 10369, 29, 20),
(326, 10369, 56, 18),
(327, 10370, 1, 15),
(328, 10370, 64, 30),
(329, 10370, 74, 20),
(330, 10371, 36, 6),
(331, 10372, 20, 12),
(332, 10372, 38, 40),
(333, 10372, 60, 70),
(334, 10372, 72, 42),
(335, 10373, 58, 80),
(336, 10373, 71, 50),
(337, 10374, 31, 30),
(338, 10374, 58, 15),
(339, 10375, 14, 15),
(340, 10375, 54, 10),
(341, 10376, 31, 42),
(342, 10377, 28, 20),
(343, 10377, 39, 20),
(344, 10378, 71, 6),
(345, 10379, 41, 8),
(346, 10379, 63, 16),
(347, 10379, 65, 20),
(348, 10380, 30, 18),
(349, 10380, 53, 20),
(350, 10380, 60, 6),
(351, 10380, 70, 30),
(352, 10381, 74, 14),
(353, 10382, 5, 32),
(354, 10382, 18, 9),
(355, 10382, 29, 14),
(356, 10382, 33, 60),
(357, 10382, 74, 50),
(358, 10383, 13, 20),
(359, 10383, 50, 15),
(360, 10383, 56, 20),
(361, 10384, 20, 28),
(362, 10384, 60, 15),
(363, 10385, 7, 10),
(364, 10385, 60, 20),
(365, 10385, 68, 8),
(366, 10386, 24, 15),
(367, 10386, 34, 10),
(368, 10387, 24, 15),
(369, 10387, 28, 6),
(370, 10387, 59, 12),
(371, 10387, 71, 15),
(372, 10388, 45, 15),
(373, 10388, 52, 20),
(374, 10388, 53, 40),
(375, 10389, 10, 16),
(376, 10389, 55, 15),
(377, 10389, 62, 20),
(378, 10389, 70, 30),
(379, 10390, 31, 60),
(380, 10390, 35, 40),
(381, 10390, 46, 45),
(382, 10390, 72, 24),
(383, 10391, 13, 18),
(384, 10392, 69, 50),
(385, 10393, 2, 25),
(386, 10393, 14, 42),
(387, 10393, 25, 7),
(388, 10393, 26, 70),
(389, 10393, 31, 32),
(390, 10394, 13, 10),
(391, 10394, 62, 10),
(392, 10395, 46, 28),
(393, 10395, 53, 70),
(394, 10395, 69, 8),
(395, 10396, 23, 40),
(396, 10396, 71, 60),
(397, 10396, 72, 21),
(398, 10397, 21, 10),
(399, 10397, 51, 18),
(400, 10398, 35, 30),
(401, 10398, 55, 120),
(402, 10399, 68, 60),
(403, 10399, 71, 30),
(404, 10399, 76, 35),
(405, 10399, 77, 14),
(406, 10400, 29, 21),
(407, 10400, 35, 35),
(408, 10400, 49, 30),
(409, 10401, 30, 18),
(410, 10401, 56, 70),
(411, 10401, 65, 20),
(412, 10401, 71, 60),
(413, 10402, 23, 60),
(414, 10402, 63, 65),
(415, 10403, 16, 21),
(416, 10403, 48, 70),
(417, 10404, 26, 30),
(418, 10404, 42, 40),
(419, 10404, 49, 30),
(420, 10405, 3, 50),
(421, 10406, 1, 10),
(422, 10406, 21, 30),
(423, 10406, 28, 42),
(424, 10406, 36, 5),
(425, 10406, 40, 2),
(426, 10407, 11, 30),
(427, 10407, 69, 15),
(428, 10407, 71, 15),
(429, 10408, 37, 10),
(430, 10408, 54, 6),
(431, 10408, 62, 35),
(432, 10409, 14, 12),
(433, 10409, 21, 12),
(434, 10410, 33, 49),
(435, 10410, 59, 16),
(436, 10411, 41, 25),
(437, 10411, 44, 40),
(438, 10411, 59, 9),
(439, 10412, 14, 20),
(440, 10413, 1, 24),
(441, 10413, 62, 40),
(442, 10413, 76, 14),
(443, 10414, 19, 18),
(444, 10414, 33, 50),
(445, 10415, 17, 2),
(446, 10415, 33, 20),
(447, 10416, 19, 20),
(448, 10416, 53, 10),
(449, 10416, 57, 20),
(450, 10417, 38, 50),
(451, 10417, 46, 2),
(452, 10417, 68, 36),
(453, 10417, 77, 35),
(454, 10418, 2, 60),
(455, 10418, 47, 55),
(456, 10418, 61, 16),
(457, 10418, 74, 15),
(458, 10419, 60, 60),
(459, 10419, 69, 20),
(460, 10420, 9, 20),
(461, 10420, 13, 2),
(462, 10420, 70, 8),
(463, 10420, 73, 20),
(464, 10421, 19, 4),
(465, 10421, 26, 30),
(466, 10421, 53, 15),
(467, 10421, 77, 10),
(468, 10422, 26, 2),
(469, 10423, 31, 14),
(470, 10423, 59, 20),
(471, 10424, 35, 60),
(472, 10424, 38, 49),
(473, 10424, 68, 30),
(474, 10425, 55, 10),
(475, 10425, 76, 20),
(476, 10426, 56, 5),
(477, 10426, 64, 7),
(478, 10427, 14, 35),
(479, 10428, 46, 20),
(480, 10429, 50, 40),
(481, 10429, 63, 35),
(482, 10430, 17, 45),
(483, 10430, 21, 50),
(484, 10430, 56, 30),
(485, 10430, 59, 70),
(486, 10431, 17, 50),
(487, 10431, 40, 50),
(488, 10431, 47, 30),
(489, 10432, 26, 10),
(490, 10432, 54, 40),
(491, 10433, 56, 28),
(492, 10434, 11, 6),
(493, 10434, 76, 18),
(494, 10435, 2, 10),
(495, 10435, 22, 12),
(496, 10435, 72, 10),
(497, 10436, 46, 5),
(498, 10436, 56, 40),
(499, 10436, 64, 30),
(500, 10436, 75, 24),
(501, 10437, 53, 15),
(502, 10438, 19, 15),
(503, 10438, 34, 20),
(504, 10438, 57, 15),
(505, 10439, 12, 15),
(506, 10439, 16, 16),
(507, 10439, 64, 6),
(508, 10439, 74, 30),
(509, 10440, 2, 45),
(510, 10440, 16, 49),
(511, 10440, 29, 24),
(512, 10440, 61, 90),
(513, 10441, 27, 50),
(514, 10442, 11, 30),
(515, 10442, 54, 80),
(516, 10442, 66, 60),
(517, 10443, 11, 6),
(518, 10443, 28, 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(60) NOT NULL,
  `customerid` int(60) NOT NULL,
  `employeeid` int(60) NOT NULL,
  `orderdate` int(60) NOT NULL,
  `shipperid` int(60) NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `employeeid`, `orderdate`, `shipperid`) VALUES
(10248, 90, 5, 1995, 3),
(10249, 81, 6, 1996, 1),
(10250, 34, 4, 1996, 2),
(10251, 84, 3, 1996, 1),
(10252, 76, 4, 1996, 2),
(10253, 34, 3, 1996, 2),
(10254, 14, 5, 1996, 2),
(10255, 68, 9, 1996, 3),
(10256, 88, 3, 1996, 2),
(10257, 35, 4, 1996, 3),
(10258, 20, 1, 1996, 1),
(10259, 13, 4, 1996, 3),
(10260, 55, 4, 1996, 1),
(10261, 61, 4, 1996, 2),
(10262, 65, 8, 1996, 3),
(10263, 20, 9, 1996, 3),
(10264, 24, 6, 1996, 3),
(10265, 7, 2, 1996, 1),
(10266, 87, 3, 1996, 3),
(10267, 25, 4, 1996, 1),
(10268, 33, 8, 1996, 3),
(10269, 89, 5, 1996, 1),
(10270, 87, 1, 1996, 1),
(10271, 75, 6, 1996, 2),
(10272, 65, 6, 1996, 2),
(10273, 63, 3, 1996, 3),
(10274, 85, 6, 1996, 1),
(10275, 49, 1, 1996, 1),
(10276, 80, 8, 1996, 3),
(10277, 52, 2, 1996, 3),
(10278, 5, 8, 1996, 2),
(10279, 44, 8, 1996, 2),
(10280, 5, 2, 1996, 1),
(10281, 69, 4, 1996, 1),
(10282, 69, 4, 1996, 1),
(10283, 46, 3, 1996, 3),
(10284, 44, 4, 1996, 1),
(10285, 63, 1, 1996, 2),
(10286, 63, 8, 1996, 3),
(10287, 67, 8, 1996, 3),
(10288, 66, 4, 1996, 1),
(10289, 11, 7, 1996, 3),
(10290, 15, 8, 1996, 1),
(10291, 61, 6, 1996, 2),
(10292, 81, 1, 1996, 2),
(10293, 80, 1, 1996, 3),
(10294, 65, 4, 1996, 2),
(10295, 85, 2, 1996, 2),
(10296, 46, 6, 1996, 1),
(10297, 7, 5, 1996, 2),
(10298, 37, 6, 1996, 2),
(10299, 67, 4, 1996, 2),
(10300, 49, 2, 1996, 2),
(10301, 86, 8, 1996, 2),
(10302, 76, 4, 1996, 2),
(10303, 30, 7, 1996, 2),
(10304, 80, 1, 1996, 2),
(10305, 55, 8, 1996, 3),
(10306, 69, 1, 1996, 3),
(10307, 48, 2, 1996, 2),
(10308, 2, 7, 1996, 3),
(10309, 37, 3, 1996, 1),
(10310, 77, 8, 1996, 2),
(10311, 18, 1, 1996, 3),
(10312, 86, 2, 1996, 2),
(10313, 63, 2, 1996, 2),
(10314, 65, 1, 1996, 2),
(10315, 38, 4, 1996, 2),
(10316, 65, 1, 1996, 3),
(10317, 48, 6, 1996, 1),
(10318, 38, 8, 1996, 2),
(10319, 80, 7, 1996, 3),
(10320, 87, 5, 1996, 3),
(10321, 38, 3, 1996, 2),
(10322, 58, 7, 1996, 3),
(10323, 39, 4, 1996, 1),
(10324, 71, 9, 1996, 1),
(10325, 39, 1, 1996, 3),
(10326, 8, 4, 1996, 2),
(10327, 24, 2, 1996, 1),
(10328, 28, 4, 1996, 3),
(10329, 75, 4, 1996, 2),
(10330, 46, 3, 1996, 1),
(10331, 9, 9, 1996, 1),
(10332, 51, 3, 1996, 2),
(10333, 87, 5, 1996, 3),
(10334, 84, 8, 1996, 2),
(10335, 37, 7, 1996, 2),
(10336, 60, 7, 1996, 2),
(10337, 25, 4, 1996, 3),
(10338, 55, 4, 1996, 3),
(10339, 51, 2, 1996, 2),
(10340, 9, 1, 1996, 3),
(10341, 73, 7, 1996, 3),
(10342, 25, 4, 1996, 2),
(10343, 44, 4, 1996, 1),
(10344, 89, 4, 1996, 2),
(10345, 63, 2, 1996, 2),
(10346, 65, 3, 1996, 3),
(10347, 21, 4, 1996, 3),
(10348, 86, 4, 1996, 2),
(10349, 75, 7, 1996, 1),
(10350, 41, 6, 1996, 2),
(10351, 20, 1, 1996, 1),
(10352, 28, 3, 1996, 3),
(10353, 59, 7, 1996, 3),
(10354, 58, 8, 1996, 3),
(10355, 4, 6, 1996, 1),
(10356, 86, 6, 1996, 2),
(10357, 46, 1, 1996, 3),
(10358, 41, 5, 1996, 1),
(10359, 72, 5, 1996, 3),
(10360, 7, 4, 1996, 3),
(10361, 63, 1, 1996, 2),
(10362, 9, 3, 1996, 1),
(10363, 17, 4, 1996, 3),
(10364, 19, 1, 1996, 1),
(10365, 3, 3, 1996, 2),
(10366, 29, 8, 1996, 2),
(10367, 83, 7, 1996, 3),
(10368, 20, 2, 1996, 2),
(10369, 75, 8, 1996, 2),
(10370, 14, 6, 1996, 2),
(10371, 41, 1, 1996, 1),
(10372, 62, 5, 1996, 2),
(10373, 37, 4, 1996, 3),
(10374, 91, 1, 1996, 3),
(10375, 36, 3, 1996, 2),
(10376, 51, 1, 1996, 2),
(10377, 72, 1, 1996, 3),
(10378, 24, 5, 1996, 3),
(10379, 61, 2, 1996, 1),
(10380, 37, 8, 1996, 3),
(10381, 46, 3, 1996, 3),
(10382, 20, 4, 1996, 1),
(10383, 4, 8, 1996, 3),
(10384, 5, 3, 1996, 3),
(10385, 75, 1, 1996, 2),
(10386, 21, 9, 1996, 3),
(10387, 70, 1, 1996, 2),
(10388, 72, 2, 1996, 1),
(10389, 10, 4, 1996, 2),
(10390, 20, 6, 1996, 1),
(10391, 17, 3, 1996, 3),
(10392, 59, 2, 1996, 3),
(10393, 71, 1, 1996, 3),
(10394, 36, 1, 1996, 3),
(10395, 35, 6, 1996, 1),
(10396, 25, 1, 1996, 3),
(10397, 60, 5, 1996, 1),
(10398, 71, 2, 1996, 3),
(10399, 83, 8, 1996, 3),
(10400, 19, 1, 1997, 3),
(10401, 65, 1, 1997, 1),
(10402, 20, 8, 1997, 2),
(10403, 20, 4, 1997, 3),
(10404, 49, 2, 1997, 1),
(10405, 47, 1, 1997, 1),
(10406, 62, 7, 1997, 1),
(10407, 56, 2, 1997, 2),
(10408, 23, 8, 1997, 1),
(10409, 54, 3, 1997, 1),
(10410, 10, 3, 1997, 3),
(10411, 10, 9, 1997, 3),
(10412, 87, 8, 1997, 2),
(10413, 41, 3, 1997, 2),
(10414, 21, 2, 1997, 3),
(10415, 36, 3, 1997, 1),
(10416, 87, 8, 1997, 3),
(10417, 73, 4, 1997, 3),
(10418, 63, 4, 1997, 1),
(10419, 68, 4, 1997, 2),
(10420, 88, 3, 1997, 1),
(10421, 61, 8, 1997, 1),
(10422, 27, 2, 1997, 1),
(10423, 31, 6, 1997, 3),
(10424, 51, 7, 1997, 2),
(10425, 41, 6, 1997, 2),
(10426, 29, 4, 1997, 1),
(10427, 59, 4, 1997, 2),
(10428, 66, 7, 1997, 1),
(10429, 37, 3, 1997, 2),
(10430, 20, 4, 1997, 1),
(10431, 10, 4, 1997, 2),
(10432, 75, 3, 1997, 2),
(10433, 60, 3, 1997, 3),
(10434, 24, 3, 1997, 2),
(10435, 16, 8, 1997, 2),
(10436, 7, 3, 1997, 2),
(10437, 87, 8, 1997, 1),
(10438, 79, 3, 1997, 2),
(10439, 51, 6, 1997, 3),
(10440, 71, 4, 1997, 2),
(10441, 55, 3, 1997, 2),
(10442, 20, 3, 1997, 2),
(10443, 66, 8, 1997, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `productid` int(60) NOT NULL,
  `productname` varchar(60) NOT NULL,
  `supplierid` int(60) NOT NULL,
  `categoryid` int(60) NOT NULL,
  `unit` varchar(60) NOT NULL,
  `price` int(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `productname`, `supplierid`, `categoryid`, `unit`, `price`) VALUES
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10),
(4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22),
(5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21),
(6, 'Grandma''s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25),
(7, 'Uncle Bob''s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30),
(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40),
(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97),
(10, 'Ikura', 4, 8, '12 - 200 ml jars', 31),
(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21),
(12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38),
(13, 'Konbu', 6, 8, '2 kg box', 6),
(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23),
(15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 16),
(16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17),
(17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39),
(18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 63),
(19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9),
(20, 'Sir Rodney''s Marmalade', 8, 3, '30 gift boxes', 81),
(21, 'Sir Rodney''s Scones', 8, 3, '24 pkgs. x 4 pieces', 10),
(22, 'Gustaf''s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21),
(23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9),
(24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 5),
(25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14),
(26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31),
(27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 44),
(28, 'Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 46),
(29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 124),
(30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 26),
(31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 13),
(32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32),
(33, 'Geitost', 15, 4, '500 g', 3),
(34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14),
(35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18),
(36, 'Inlagd Sill', 17, 8, '24 - 250 g jars', 19),
(37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26),
(38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 264),
(39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18),
(40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18),
(41, 'Jack''s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 10),
(42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14),
(43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46),
(44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19),
(45, 'Røgede sild', 21, 8, '1k pkg.', 10),
(46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12),
(47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 10),
(48, 'Chocolade', 22, 3, '10 pkgs.', 13),
(49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20),
(50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16),
(51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53),
(52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7),
(53, 'Perth Pasties', 24, 6, '48 pieces', 33),
(54, 'Tourtière', 25, 6, '16 pies', 7),
(55, 'Pâté chinois', 25, 6, '24 boxes x 2 pies', 24),
(56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38),
(57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 20),
(58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13),
(59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55),
(60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34),
(61, 'Sirop d''érable', 29, 2, '24 - 500 ml bottles', 29),
(62, 'Tarte au sucre', 29, 3, '48 pies', 49),
(63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 44),
(64, 'Wimmers gute Semmelknödel', 12, 5, '20 bags x 4 pieces', 33),
(65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21),
(66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17),
(67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14),
(68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 13),
(69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36),
(70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15),
(71, 'Fløtemysost', 15, 4, '10 - 500 g pkgs.', 22),
(72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 35),
(73, 'Röd Kaviar', 17, 8, '24 - 150 g jars', 15),
(74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10),
(75, 'Rhönbräu Klosterbier', 12, 1, '24 - 0.5 l bottles', 8),
(76, 'Lakkalikööri', 23, 1, '500 ml', 18),
(77, 'Original Frankfurter grüne Soße', 12, 2, '12 boxes', 13);

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE IF NOT EXISTS `shippers` (
  `shipperid` int(60) NOT NULL,
  `shippername` varchar(60) NOT NULL,
  `phone` int(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`shipperid`, `shippername`, `phone`) VALUES
(1, 'Speedy Express', 0),
(2, 'United Package', 0),
(3, 'Federal Shipping', 0);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `supplierid` int(60) NOT NULL,
  `suppliername` varchar(120) NOT NULL,
  `contactname` varchar(120) NOT NULL,
  `address` varchar(120) NOT NULL,
  `city` int(60) NOT NULL,
  `postalcode` int(60) NOT NULL,
  `country` int(60) NOT NULL,
  `phone` int(60) NOT NULL,
  PRIMARY KEY (`supplierid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplierid`, `suppliername`, `contactname`, `address`, `city`, `postalcode`, `country`, `phone`) VALUES
(1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 0, 0, 0, 0),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 0, 70117, 0, 0),
(3, 'Grandma Kelly''s Homestead', 'Regina Murphy', '707 Oxford Rd.', 0, 48104, 0, 0),
(4, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 0, 100, 0, 0),
(5, 'Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Calle del Rosal 4', 0, 33007, 0, 0),
(6, 'Mayumi''s', 'Mayumi Ohno', '92 Setsuko Chuo-ku', 0, 545, 0, 0),
(7, 'Pavlova, Ltd.', 'Ian Devling', '74 Rose St. Moonie Ponds', 0, 3058, 0, 0),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', '29 King''s Way', 0, 0, 0, 0),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Kaloadagatan 13', 0, 0, 0, 31),
(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Av. das Americanas 12.890', 0, 5442, 0, 0),
(11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Tiergartenstraße 5', 0, 10785, 0, 0),
(12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Bogenallee 51', 0, 60439, 0, 0),
(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Frahmredder 112a', 0, 27478, 0, 0),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Viale Dante, 75', 0, 48100, 0, 0),
(15, 'Norske Meierier', 'Beate Vileid', 'Hatlevegen 5', 0, 1320, 0, 0),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', '3400 - 8th Avenue Suite 210', 0, 97101, 0, 0),
(17, 'Svensk Sjöföda AB', 'Michael Björn', 'Brovallavägen 231', 0, 0, 0, 8),
(18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', '203, Rue des Francs-Bourgeois', 0, 75004, 0, 0),
(19, 'New England Seafood Cannery', 'Robb Merchant', 'Order Processing Dept. 2100 Paul Revere Blvd.', 0, 2134, 0, 0),
(20, 'Leka Trading', 'Chandra Leka', '471 Serangoon Loop, Suite #402', 0, 512, 0, 555),
(21, 'Lyngbysild', 'Niels Petersen', 'Lyngbysild Fiskebakken 10', 0, 2800, 0, 43844108),
(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Verkoop Rijnweg 22', 0, 9999, 0, 0),
(23, 'Karkki Oy', 'Anne Heikkonen', 'Valtakatu 12', 0, 53120, 0, 0),
(24, 'G''day, Mate', 'Wendy Mackenzie', '170 Prince Edward Parade Hunter''s Hill', 0, 2042, 0, 0),
(25, 'Ma Maison', 'Jean-Guy Lauzon', '2960 Rue St. Laurent', 0, 0, 0, 0),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Via dei Gelsomini, 153', 0, 84100, 0, 0),
(27, 'Escargots Nouveaux', 'Marie Delamare', '22, rue H. Voiron', 0, 71300, 0, 8557),
(28, 'Gai pâturage', 'Eliane Noz', 'Bat. B 3, rue des Alpes', 0, 74000, 0, 3876),
(29, 'Forêts d''érables', 'Chantal Goulet', '148 rue Chasseur', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t1`
--

CREATE TABLE IF NOT EXISTS `t1` (
  `s1` int(11) DEFAULT NULL,
  `s2` char(5) DEFAULT NULL,
  `s3` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t1`
--

INSERT INTO `t1` (`s1`, `s2`, `s3`) VALUES
(1, '1', 1),
(2, '2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `titi`
--

CREATE TABLE IF NOT EXISTS `titi` (
  `col1` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `titi`
--

INSERT INTO `titi` (`col1`) VALUES
(3);
--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `domo`
--

CREATE TABLE IF NOT EXISTS `domo` (
  `orderid` varchar(20) DEFAULT NULL,
  `domainname` varchar(20) DEFAULT NULL,
  `customerid` varchar(35) DEFAULT NULL,
  `customer_emailaddress` varchar(35) DEFAULT NULL,
  `resellerid` varchar(10) DEFAULT NULL,
  `reseller_emailaddress` varchar(35) DEFAULT NULL,
  `parentkey` varchar(35) DEFAULT NULL,
  `currentstatus` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ad_username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department_id` int(11) unsigned NOT NULL DEFAULT '0',
  `tickets_username` varchar(255) NOT NULL DEFAULT '',
  `chats_username` varchar(255) NOT NULL DEFAULT '',
  `calls_username` varchar(255) DEFAULT NULL,
  `calls_ext` int(5) unsigned NOT NULL DEFAULT '0',
  `photo_path` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`ad_username`,`department_id`),
  KEY `department_id` (`department_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37662 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `ad_username`, `name`, `department_id`, `tickets_username`, `chats_username`, `calls_username`, `calls_ext`, `photo_path`, `is_admin`) VALUES
(1, 'abhijit.r', '', 1, 'abhijit.r@directi.com', 'abhijit.r', 'abhijit.r', 7661, NULL, 1),
(55, 'abhishek.j', '', 1, 'abhishek.j@directi.com', 'abhishek.j', 'Abhishek John', 0, NULL, 0),
(65, 'adley.l', '', 1, 'adley.l@directi.com', 'adley.l', 'Adley', 2092, NULL, 0),
(109, 'ajesh.n', '', 2, 'ajesh.n@directi.com', 'ajesh.n', 'ajesh.n', 2710, NULL, 0),
(64, 'akshay.bo', '', 2, 'akshay.bo@directi.com', 'akshay.bo', 'Akshay', 2506, NULL, 0),
(49, 'alfred.j', '', 1, 'alfred.j@directi.com', 'alfred.j', 'Alfred John', 2048, NULL, 0),
(86, 'alisha.d', '', 1, 'alisha.d@directi.com', 'alisha.d', 'Alisha.d', 2029, NULL, 0),
(17, 'aman.m', '', 3, 'aman.m@directi.com', 'aman.m', 'aman.m', 2001, NULL, 1),
(79, 'ambarish.t', '', 1, 'ambarish.t@directi.com', 'ambarish.t', '', 2089, NULL, 1),
(46, 'amey.d', '', 1, 'amey.d@directi.com', 'amey.d', 'amey.d', 2018, NULL, 0),
(111, 'ameya.n', '', 1, 'ameya.n@directi.com', 'ameya.n', 'ameya.n', 2015, NULL, 0),
(37661, 'amit.ku', '', 1, 'amit.ku@directi.com', 'amit.ku', 'amit.ku', 2122, NULL, 0),
(4, 'amit.l', '', 1, 'amit.l@directi.com', 'amit.l', 'amit.l', 2017, NULL, 0),
(88, 'amit.si', '', 1, 'amit.si@directi.com', 'amit.si', 'amit.si', 2091, NULL, 0),
(74, 'amod.m', '', 1, 'amod.m@directi.com', 'amod.m', 'Amod Mallya', 2106, NULL, 0),
(113, 'ankita.w', '', 1, 'ankita.w@directi.com', 'ankita.w', 'ankita.w', 2007, NULL, 0),
(75, 'ankur.p', '', 1, 'ankur.p@directi.com', 'ankur.p', 'Ankur Palankar', 2103, NULL, 0);
--
-- Database: `testrep`
--

-- --------------------------------------------------------

--
-- Table structure for table `testreptable`
--

CREATE TABLE IF NOT EXISTS `testreptable` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DOB` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Database: `widget_corp`
--

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` int(11) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `subject_id`, `menu_name`, `position`, `visible`, `content`) VALUES
(1, 1, 'History', 1, 1, 'This is company history..'),
(2, 1, 'Our Mission', 2, 1, 'Our corporate mission statement is...'),
(3, 2, 'Widget 2000', 1, 1, 'The Widget 200 is a great products');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(30) NOT NULL,
  `position` int(3) NOT NULL,
  `visible` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `menu_name`, `position`, `visible`) VALUES
(1, 'About Widget Corp', 1, 1),
(2, 'Products', 2, 1),
(3, 'Services', 3, 1),
(4, 'Misc', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `hash_password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
