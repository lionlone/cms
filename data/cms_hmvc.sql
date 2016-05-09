-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2016 at 02:43 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_hmvc`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_groups_users`
--

CREATE TABLE `cms_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_groups_users`
--

INSERT INTO `cms_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`) VALUES
(1, 1, 1, 1, '0'),
(3, 2, 0, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `checknum` varchar(40) COLLATE utf8_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `idsite`, `safemode`, `safekey`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '{SSHA}at4WDkiDrwMSv6mEI4nfHHlILNdPY3J0', 'nguyentrongtuan.st@gmail.com', 'Tuấn', 'Nguyễn Trọng', '', '', 0, '', 1462373793, 'cau hoi bi mat', 'tra loi', '', 0, 1, '1', 1, '577fe04a65809f30a8542bce3d3562fb', 1462586134, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/55.2.116 Chrome/49.2.2623.116 Safari/537.36', '', 0, 0, ''),
(2, 4, 'administrator', '200ceb26807d6bf99fd6f4f0d1ca54d4', '{SSHA}9wDZonJCN5GxFKPLTLe2mASteJBTUUVp', 'botxabong009@gmail.com', 'A', 'Nguyễn Trọng', '', '', 0, NULL, 1462586024, 'cau hoi bao mat', 'tra loi cau hoi', '', 0, 1, '', 1, '57640ce66016a45eb26368e7a3501513', 1462586325, '::1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/55.2.116 Chrome/49.2.2623.116 Safari/537.36', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_users_openid`
--

CREATE TABLE `cms_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_users_question`
--

CREATE TABLE `cms_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users_question`
--

INSERT INTO `cms_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285),
(8, 'What is the first name of your favorite uncle?', 'en', 1, 1274841115, 1274841115),
(9, 'whe-re did you meet your spouse', 'en', 2, 1274841123, 1274841123),
(10, 'What is your oldest cousin&#039;s name?', 'en', 3, 1274841131, 1274841131),
(11, 'What is your youngest child&#039;s username?', 'en', 4, 1274841142, 1274841142),
(12, 'What is your oldest child&#039;s username?', 'en', 5, 1274841150, 1274841150),
(13, 'What is the first name of your oldest niece?', 'en', 6, 1274841158, 1274841158),
(14, 'What is the first name of your oldest nephew?', 'en', 7, 1274841167, 1274841167),
(15, 'What is the first name of your favorite aunt?', 'en', 8, 1274841175, 1274841175),
(16, 'whe-re did you spend your honeymoon?', 'en', 9, 1274841183, 1274841183);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_groups_users`
--
ALTER TABLE `cms_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `cms_users_openid`
--
ALTER TABLE `cms_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `cms_users_question`
--
ALTER TABLE `cms_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_users_question`
--
ALTER TABLE `cms_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
