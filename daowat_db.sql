-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2022 at 07:33 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daowat_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `user_pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daowat`
--

CREATE TABLE `daowat` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `date_added` date NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(32) NOT NULL,
  `photos` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daowat_comments`
--

CREATE TABLE `daowat_comments` (
  `id` int(11) NOT NULL,
  `daowat_body` text NOT NULL,
  `date_added` date NOT NULL,
  `time` datetime NOT NULL,
  `daowat_by` varchar(32) NOT NULL,
  `daowat_to` varchar(32) NOT NULL,
  `opened` varchar(3) NOT NULL DEFAULT 'no',
  `daowat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dwt_likes`
--

CREATE TABLE `dwt_likes` (
  `id` int(11) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `dwt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emoticons`
--

CREATE TABLE `emoticons` (
  `id` int(11) NOT NULL,
  `chars` text NOT NULL,
  `photos` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `user_from` varchar(32) NOT NULL,
  `user_to` varchar(32) NOT NULL,
  `time` datetime NOT NULL,
  `opened` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `user_from`, `user_to`, `time`, `opened`) VALUES
(142, 'maroof', 'zaid123', '2022-02-02 00:59:38', 'yes'),
(143, 'zaid123', 'maroof', '2022-02-02 01:01:54', 'no'),
(144, 'fazil123', 'zaid123', '2022-02-02 01:04:09', 'no'),
(145, 'fazil123', 'maroof', '2022-02-02 01:06:08', 'no'),
(146, 'geetesh', 'fazil123', '2022-02-02 01:07:42', 'no'),
(147, 'geetesh', 'zaid123', '2022-02-02 01:07:49', 'no'),
(148, 'geetesh', 'maroof', '2022-02-02 01:07:57', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `daowat_body` text NOT NULL,
  `date_added` date NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(255) NOT NULL,
  `user_posted_to` varchar(255) NOT NULL,
  `share_post` int(11) NOT NULL,
  `daowat_post` int(11) NOT NULL,
  `daowat_give` tinyint(1) NOT NULL DEFAULT '0',
  `discription` text NOT NULL,
  `photos` text NOT NULL,
  `newsfeedshow` tinyint(1) NOT NULL DEFAULT '1',
  `report` tinyint(1) NOT NULL DEFAULT '0',
  `note` tinyint(1) NOT NULL DEFAULT '0',
  `note_privacy` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `daowat_body`, `date_added`, `post_time`, `added_by`, `user_posted_to`, `share_post`, `daowat_post`, `daowat_give`, `discription`, `photos`, `newsfeedshow`, `report`, `note`, `note_privacy`) VALUES
(1, '', 'hello', '2022-02-01', '2022-02-01 17:39:42', 'maroof', 'maroof', 0, 0, 1, '', '', 1, 0, 0, ''),
(2, '', '', '2022-02-01', '2022-02-01 17:40:25', 'maroof', 'maroof', 0, 0, 0, 'changed his profile picture.', 'maroof/1643737225.jpg', 1, 0, 0, ''),
(3, '', '??', '2022-02-01', '2022-02-01 18:16:01', 'maroof', 'maroof', 0, 0, 1, '', '', 1, 0, 0, ''),
(4, '', '', '2022-02-01', '2022-02-01 18:16:32', 'maroof', 'maroof', 0, 0, 0, 'updated his cover photo.', 'maroof/1643739392.jpg', 1, 0, 0, ''),
(5, '', '', '2022-02-01', '2022-02-01 20:03:11', 'zaid123', 'zaid123', 0, 0, 0, 'changed his profile picture.', 'zaid123/1643745791.jpeg', 1, 0, 0, ''),
(6, '', '', '2022-02-01', '2022-02-01 20:05:40', 'fazil123', 'fazil123', 0, 0, 0, 'changed his profile picture.', 'fazil123/1643745940.jpeg', 1, 0, 0, ''),
(7, '', '', '2022-02-01', '2022-02-01 20:09:15', 'geetesh', 'geetesh', 0, 0, 0, 'changed his profile picture.', 'geetesh/1643746155.jpeg', 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `date_added` date NOT NULL,
  `time` datetime NOT NULL,
  `posted_by` varchar(255) NOT NULL,
  `posted_to` varchar(255) NOT NULL,
  `opened` varchar(3) NOT NULL DEFAULT 'no',
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_body`, `date_added`, `time`, `posted_by`, `posted_to`, `opened`, `post_id`) VALUES
(1, 'v.nice', '2022-02-01', '2022-02-01 22:40:42', 'maroof', 'maroof', 'yes', 2),
(2, 'v.nice', '2022-02-01', '2022-02-01 23:12:03', 'maroof', 'maroof', 'yes', 1),
(3, 'Good', '2022-02-01', '2022-02-02 00:45:53', 'zaid123', 'maroof', 'yes', 4),
(4, 'Handsome boy', '2022-02-01', '2022-02-02 01:04:28', 'fazil123', 'zaid123', 'no', 5),
(5, 'Looking Good', '2022-02-01', '2022-02-02 01:09:48', 'geetesh', 'fazil123', 'no', 6),
(6, 'Best One', '2022-02-01', '2022-02-02 01:10:03', 'geetesh', 'zaid123', 'no', 5);

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` int(11) NOT NULL,
  `user_name` varchar(15) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `user_name`, `post_id`) VALUES
(1, 'maroof', 1),
(2, 'maroof', 2),
(3, 'maroof', 4),
(4, 'zaid123', 4),
(5, 'fazil123', 5),
(6, 'geetesh', 6),
(7, 'geetesh', 5),
(8, 'geetesh', 4),
(9, 'geetesh', 2),
(10, 'geetesh', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pvt_messages`
--

CREATE TABLE `pvt_messages` (
  `id` int(11) NOT NULL,
  `user_from` varchar(255) NOT NULL,
  `user_to` varchar(255) NOT NULL,
  `msg_body` text NOT NULL,
  `date` date NOT NULL,
  `msg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `opened` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pvt_messages`
--

INSERT INTO `pvt_messages` (`id`, `user_from`, `user_to`, `msg_body`, `date`, `msg_time`, `opened`, `user_id`) VALUES
(1, 'zaid123', 'maroof', 'Hello', '2022-02-01', '0000-00-00 00:00:00', 'yes', 0),
(2, 'maroof', 'zaid123', 'Hi', '2022-02-01', '0000-00-00 00:00:00', 'yes', 0),
(3, 'geetesh', 'zaid123', 'Hello Zaid Saeed', '2022-02-01', '0000-00-00 00:00:00', 'no', 0),
(4, 'geetesh', 'fazil123', 'Hello Fazil Hanif', '2022-02-01', '0000-00-00 00:00:00', 'no', 0),
(5, 'geetesh', 'maroof', 'Hello Maroof', '2022-02-01', '0000-00-00 00:00:00', 'yes', 0),
(6, 'geetesh', 'maroof', 'Hi', '2022-02-01', '0000-00-00 00:00:00', 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `birthday` date NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` text NOT NULL,
  `hometown` text NOT NULL,
  `sign_up_date` date NOT NULL,
  `activated` enum('0','1') NOT NULL,
  `confirmCode` int(11) NOT NULL DEFAULT '0',
  `blocked_user` enum('0','1') NOT NULL DEFAULT '0',
  `bio` text NOT NULL,
  `queote` text NOT NULL,
  `profile_pic` text NOT NULL,
  `cover_pic` text NOT NULL,
  `friend_array` text NOT NULL,
  `closed` varchar(3) NOT NULL DEFAULT 'no',
  `relationship` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `pub_email` varchar(255) NOT NULL,
  `company` text NOT NULL,
  `position` text NOT NULL,
  `school` text NOT NULL,
  `concentration` text NOT NULL,
  `nick_name` varchar(32) NOT NULL,
  `verify_id` varchar(3) NOT NULL DEFAULT 'no',
  `pass_question` text NOT NULL,
  `pass_ans` text NOT NULL,
  `chatOnlineTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `username`, `email`, `password`, `gender`, `birthday`, `country`, `city`, `hometown`, `sign_up_date`, `activated`, `confirmCode`, `blocked_user`, `bio`, `queote`, `profile_pic`, `cover_pic`, `friend_array`, `closed`, `relationship`, `mobile`, `pub_email`, `company`, `position`, `school`, `concentration`, `nick_name`, `verify_id`, `pass_question`, `pass_ans`, `chatOnlineTime`) VALUES
(68, 'Maroof Sangi', 'maroof', 'maroofahmed231@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', '0000-00-00', '', '', '', '2022-01-30', '1', 149176, '0', '', '', 'maroof/1643737225.jpg', 'maroof/1643739392.jpg', '', 'no', '', '', '', '', '', 'Ned University', 'CIS', '', 'no', '', '', '2022-02-02 06:32:48'),
(69, 'Zaid Saeed', 'zaid123', 'bdata036@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', '0000-00-00', '', '', '', '2022-02-01', '1', 0, '0', '', '', 'zaid123/1643745791.jpeg', '', '', 'no', '', '', '', '', '', '', '', '', 'no', '', '', '2022-02-01 20:03:19'),
(70, 'Fazil Hanif', 'fazil123', 'fazil123@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', '0000-00-00', '', '', '', '2022-02-01', '1', 0, '0', '', '', 'fazil123/1643745940.jpeg', '', '', 'no', '', '', '', '', '', '', '', '', 'no', '', '', '2022-02-01 20:06:08'),
(71, 'Geetesh', 'geetesh', 'geetesh121@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '1', '0000-00-00', '', '', '', '2022-02-01', '1', 0, '0', '', '', 'geetesh/1643746155.jpeg', '', '', 'no', '', '', '', '', '', '', '', '', 'no', '', '', '2022-02-02 06:10:54'),
(72, 'Farham Ali', 'farhamm', 'farham12@gmail.com', 'e6f7394319c69ca94573141831de5382', '1', '0000-00-00', '', '', '', '2022-02-02', '1', 0, '0', '', '', '', '', '', 'no', '', '', '', '', '', '', '', '', 'no', '', '', '2022-02-02 06:21:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daowat`
--
ALTER TABLE `daowat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daowat_comments`
--
ALTER TABLE `daowat_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dwt_likes`
--
ALTER TABLE `dwt_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emoticons`
--
ALTER TABLE `emoticons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `daowat`
--
ALTER TABLE `daowat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `daowat_comments`
--
ALTER TABLE `daowat_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dwt_likes`
--
ALTER TABLE `dwt_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emoticons`
--
ALTER TABLE `emoticons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pvt_messages`
--
ALTER TABLE `pvt_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
