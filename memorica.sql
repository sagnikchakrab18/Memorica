-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 10, 2019 at 02:02 AM
-- Server version: 5.7.26-0ubuntu0.18.04.1
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `memorica`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `data_id` int(11) NOT NULL,
  `data_email` varchar(50) NOT NULL,
  `data_head` varchar(100) NOT NULL,
  `data_body` text NOT NULL,
  `data_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`data_id`, `data_email`, `data_head`, `data_body`, `data_date`) VALUES
(16, 'ajana@gmail.com', 'ff', 'lkghlkjhlkjghkjjhlkhlojhl;jholhjljh;lj;j iuio  u oiu ;pupu            puuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu', '2019-08-04'),
(17, 'ajana@gmail.com', 'gyujkg uyk', ' hilllllllllllllllllllllllllllllllllllllllll', '2019-08-04'),
(18, 'ajana@gmail.com', 'RAJA', 'rajarajarajharaja', '2019-08-04'),
(19, 'ajana@gmail.com', 'leh rara', 'rarararraraarararararrararrararra', '2019-08-04'),
(21, 'ajana@gmail.com', 'hihishj', 'hjsdfahljghdfuigvu', '2019-08-05'),
(22, 'test@live.com', 'kryhj', 'dtjut', '2019-08-05'),
(23, 'test@live.com', '4w6u46e5u', '5eu5eu656', '2019-08-05'),
(24, 'test@live.com', 'ye 65e6ye56', 'y5                  kyooooooooooooooooo', '2019-08-05'),
(25, 'ajana@gmail.com', 'RAJA', 'ghjuyyjhcgyujft7u', '2019-08-05'),
(26, 'test@live.com', 'fdxhfgcuhyftyuht', 'gfdfghgtrfhyrfthftruy', '2019-08-06'),
(27, 'test@live.com', 'ff', 'szgvbxrdghfthfchfrcgrhcfgh', '2019-08-06'),
(29, 'ajana@gmail.com', 'hglkkjh', 'lkjnpohlhbigbugtufurdersztewaewa4ew5a3', '2019-08-06'),
(30, 'test@live.com', 'RAJA', 'iuyhoyi8yhiohj', '2019-08-06'),
(31, 'ajana@gmail.com', 'biswsto', 'kono kotha hobe na bhai.. r kono kotha hobe na...\r\ntai bujhe shune cholo bhai..bujhe chola bhalo..', '2019-08-06'),
(33, 'ajana@gmail.com', 'Tor bap', 'Tor biye debe', '2019-08-07'),
(34, 'sagnik@gmail.com', 'Desperate Story', 'Do you want to know about my desperate story?Here you  go..', '2019-08-07'),
(36, 'test@live.com', 'add re', 'add re baby', '2019-08-07'),
(37, 'test@live.com', 'ra add na', 'add na baby baaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbayyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', '2019-08-07'),
(38, '', 'à¦¸à¦“à¦¦à¦¾ à¦¯à¦–à¦¨ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾à¦°', 'à¦¸à¦“à¦¦à¦¾ à¦¯à¦–à¦¨ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾à¦°\r\n~~~~~~~~~~~~~~\r\nà¦†à¦œà¦•à¦¾à¦² à¦˜à¦°à§‡ à¦˜à¦°à§‡ à¦–à§à¦¬ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾à¦° à¦œà¦¨à§à¦® à¦¹à¦šà§à¦›à§‡,\r\nà¦­à¦¾à¦¬à¦›à¦¿ à¦¯à§‡ à¦•à¦® à¦¦à¦¾à¦®à§‡ à¦•à¦¿à¦›à§ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾ à¦•à¦¿à¦¨à§‡ à¦«à§‡à¦²à¦¿,\r\nà¦ªà§à¦°à¦¤à¦¿à¦­à¦¾ à¦¬à§‡à¦šà§‡ à¦­à¦¾à¦¤ à¦–à¦¾à¦¬à¥¤à¥¤\r\n\"à¦…à¦¶à§à¦¬à¦¥à¦¾à¦®à¦¾ à¦¹à¦¤ à¦‡à¦¤à¦¿ à¦—à¦œ\" à¦¯à¦¦à¦¿ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾ à¦¹à§Ÿ-à¦¤à¦¬à§‡ à¦¶à¦•à§à¦¨à¦¿à¦° à¦ªà¦¾à¦¶à¦¾ à¦†à¦° à¦¦à§à¦°à§Œà¦ªà¦¦à§€à¦° à¦¬à¦¸à§à¦¤à§à¦°à¦¹à¦°à¦£à§‡ à¦†à¦®à¦¿ à¦¯à¦¾ à¦¦à§‡à¦–à¦¿ - à¦¸à§‡à¦Ÿà¦¾à¦“ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾à¥¤à¥¤\r\nà¦²à§‹à¦•à¦œà¦¨ à¦•à¦¾à¦ à¦ à§‹à¦•à¦°à¦¾à¦° à¦®à¦¤ à¦¸à¦®à§€à¦šà§€à¦¨ à¦¨à§Ÿ,\r\nà¦¤à¦¾à¦‡ à¦ à§‹à¦•à§à¦•à¦° à¦¯à§‡à¦–à¦¾à¦¨à§‡ à¦¸à§‡à¦–à¦¾à¦¨à§‡ à¦ªà§œà§‡;\r\nà¦¸à¦®à¦¾à¦²à§‹à¦šà¦¨à¦¾à¦¤à§‡ à¦†à¦¤à§à¦®à¦¾à¦° à¦¤à§à¦·à§à¦Ÿà¦¿,\r\nà¦†à¦®à¦¿ à¦¸à§à¦ªà¦°à§à¦¶à¦•à¦¾à¦¤à¦°-\r\nà¦¤à¦¾à¦‡ à¦…à¦¸à¦® à¦†à¦¤à§à¦®-à¦†à¦²à§‹à¦šà¦¨à¦¾à¦¤à§‡ à¦†à¦®à¦¿ à¦®à§à¦—à§à¦§à¥¤à¥¤\r\nà¦¸à¦®à¦¾à¦œ à¦¯à¦¦à¦¿ à¦°à¦¾à¦¤à§‡ à¦®à§à¦–à§‹à¦¶ à¦¬à§‡à¦à¦§à§‡ à¦˜à§à¦®à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à§‡ -\r\nà¦¤à¦¬à§‡ à¦•à¦¾à¦¬à§à¦¯ à¦¨à¦¾ à¦¹à§Ÿ à¦¨à¦—à§à¦¨ à¦¹à§‹à¦•à¥¤\r\nà¦†à¦®à¦¾à¦° à¦à¦‡ à¦•à¦¾à¦¬à§à¦¯à§‡ à¦¨à¦¾ à¦¹à§Ÿ à¦¸à§‡à¦Ÿà¦¾ à¦¥à¦¾à¦•à§à¦• -\r\nà¦¯à¦¾ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾à¦° à¦¸à¦®à§à¦ªà§‚à¦°à¦• - à¦¬à¦¿à¦¦à§€à¦°à§à¦£ à¦•à¦°à§à¦• \r\nà¦•à¦¿à¦›à§ à¦ªà¦°à¦¿à¦¬à§à¦¯à¦¾à¦ªà§à¦¤ à¦šà¦¿à¦¨à§à¦¤à¦¾à¦¶à§€à¦² à¦…à¦¨à§à¦¤à¦ƒà¦•à¦°à¦¨à¥¤à¥¤\r\nà¦²à§‡à¦–à¦¾à¦²à¦¿à¦–à¦¿ à¦†à¦œ à¦¸à¦®à¦¾à¦œà§‡à¦° à¦®à§à¦– à¦¨à§Ÿ-\r\nà¦¨à§Ÿ à¦¬à¦¾à¦¸à§à¦¤à¦¬à§‡à¦° à¦šà§‚à§œà¦¾à¦¨à§à¦¤ à¦ªà§à¦°à¦¤à¦¿à¦­à§‚à¥¤à¥¤\r\nà¦¸à¦¬à¦Ÿà¦¾à¦‡ à¦¬à¦¾à¦²à¦–à¦¿à¦²à§à¦¯!!', '2019-08-08'),
(39, 'sagnik@gmail.com', 'à¦¸à¦“à¦¦à¦¾ à¦¯à¦–à¦¨ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾à¦°', 'à¦¸à¦“à¦¦à¦¾ à¦¯à¦–à¦¨ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾à¦°\r\n~~~~~~~~~~~~~~\r\nà¦†à¦œà¦•à¦¾à¦² à¦˜à¦°à§‡ à¦˜à¦°à§‡ à¦–à§à¦¬ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾à¦° à¦œà¦¨à§à¦® à¦¹à¦šà§à¦›à§‡,\r\nà¦­à¦¾à¦¬à¦›à¦¿ à¦¯à§‡ à¦•à¦® à¦¦à¦¾à¦®à§‡ à¦•à¦¿à¦›à§ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾ à¦•à¦¿à¦¨à§‡ à¦«à§‡à¦²à¦¿,\r\nà¦ªà§à¦°à¦¤à¦¿à¦­à¦¾ à¦¬à§‡à¦šà§‡ à¦­à¦¾à¦¤ à¦–à¦¾à¦¬à¥¤à¥¤\r\n\"à¦…à¦¶à§à¦¬à¦¥à¦¾à¦®à¦¾ à¦¹à¦¤ à¦‡à¦¤à¦¿ à¦—à¦œ\" à¦¯à¦¦à¦¿ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾ à¦¹à§Ÿ-à¦¤à¦¬à§‡ à¦¶à¦•à§à¦¨à¦¿à¦° à¦ªà¦¾à¦¶à¦¾ à¦†à¦° à¦¦à§à¦°à§Œà¦ªà¦¦à§€à¦° à¦¬à¦¸à§à¦¤à§à¦°à¦¹à¦°à¦£à§‡ à¦†à¦®à¦¿ à¦¯à¦¾ à¦¦à§‡à¦–à¦¿ - à¦¸à§‡à¦Ÿà¦¾à¦“ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾à¥¤à¥¤\r\nà¦²à§‹à¦•à¦œà¦¨ à¦•à¦¾à¦ à¦ à§‹à¦•à¦°à¦¾à¦° à¦®à¦¤ à¦¸à¦®à§€à¦šà§€à¦¨ à¦¨à§Ÿ,\r\nà¦¤à¦¾à¦‡ à¦ à§‹à¦•à§à¦•à¦° à¦¯à§‡à¦–à¦¾à¦¨à§‡ à¦¸à§‡à¦–à¦¾à¦¨à§‡ à¦ªà§œà§‡;\r\nà¦¸à¦®à¦¾à¦²à§‹à¦šà¦¨à¦¾à¦¤à§‡ à¦†à¦¤à§à¦®à¦¾à¦° à¦¤à§à¦·à§à¦Ÿà¦¿,\r\nà¦†à¦®à¦¿ à¦¸à§à¦ªà¦°à§à¦¶à¦•à¦¾à¦¤à¦°-\r\nà¦¤à¦¾à¦‡ à¦…à¦¸à¦® à¦†à¦¤à§à¦®-à¦†à¦²à§‹à¦šà¦¨à¦¾à¦¤à§‡ à¦†à¦®à¦¿ à¦®à§à¦—à§à¦§à¥¤à¥¤\r\nà¦¸à¦®à¦¾à¦œ à¦¯à¦¦à¦¿ à¦°à¦¾à¦¤à§‡ à¦®à§à¦–à§‹à¦¶ à¦¬à§‡à¦à¦§à§‡ à¦˜à§à¦®à¦¿à§Ÿà§‡ à¦¥à¦¾à¦•à§‡ -\r\nà¦¤à¦¬à§‡ à¦•à¦¾à¦¬à§à¦¯ à¦¨à¦¾ à¦¹à§Ÿ à¦¨à¦—à§à¦¨ à¦¹à§‹à¦•à¥¤\r\nà¦†à¦®à¦¾à¦° à¦à¦‡ à¦•à¦¾à¦¬à§à¦¯à§‡ à¦¨à¦¾ à¦¹à§Ÿ à¦¸à§‡à¦Ÿà¦¾ à¦¥à¦¾à¦•à§à¦• -\r\nà¦¯à¦¾ à¦ªà§à¦°à¦¤à¦¿à¦­à¦¾à¦° à¦¸à¦®à§à¦ªà§‚à¦°à¦• - à¦¬à¦¿à¦¦à§€à¦°à§à¦£ à¦•à¦°à§à¦• \r\nà¦•à¦¿à¦›à§ à¦ªà¦°à¦¿à¦¬à§à¦¯à¦¾à¦ªà§à¦¤ à¦šà¦¿à¦¨à§à¦¤à¦¾à¦¶à§€à¦² à¦…à¦¨à§à¦¤à¦ƒà¦•à¦°à¦¨à¥¤à¥¤\r\nà¦²à§‡à¦–à¦¾à¦²à¦¿à¦–à¦¿ à¦†à¦œ à¦¸à¦®à¦¾à¦œà§‡à¦° à¦®à§à¦– à¦¨à§Ÿ-\r\nà¦¨à§Ÿ à¦¬à¦¾à¦¸à§à¦¤à¦¬à§‡à¦° à¦šà§‚à§œà¦¾à¦¨à§à¦¤ à¦ªà§à¦°à¦¤à¦¿à¦­à§‚à¥¤à¥¤\r\nà¦¸à¦¬à¦Ÿà¦¾à¦‡ à¦¬à¦¾à¦²à¦–à¦¿à¦²à§à¦¯!!', '2019-08-08'),
(41, 'paka@gmail.com', 'ff', 'nbhfkugiygpiyhpo9uyp0p98y9o7y9876t87r4we243YTRFUTRFU6ERYWEQA', '2019-08-08'),
(42, 'paka@gmail.com', 'RAJA', 'GC KGFVUJFUTFTFGIFRU6ER45EW6TGITFRUYDFTEDE3W3W2W2332S4ESERFDXREDRT', '2019-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(1) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_pwd` varchar(250) NOT NULL,
  `user_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `dob`, `gender`, `user_email`, `user_pwd`, `user_img`) VALUES
(1, 'testA', 'testB', '2019-08-21', 'm', 'test@live.com', '12345', ''),
(2, 'raja', 'chakraborty', '2019-01-01', 'm', 'ajana@gmail.com', 'yo', ''),
(3, 'Sagnik', 'Chakraborty', '1996-11-26', 'm', 'sagnik@gmail.com', 'yoyo', ''),
(4, 'dwai', 'biswas', '2019-07-29', 'm', 'chudi@gcettb.com', 'dildo', ''),
(5, 'PAKA', 'chakraborty', '1999-09-28', 'm', 'paka@gmail.com', 'p', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`data_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
