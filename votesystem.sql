-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2021 at 04:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'Nawin', '$2y$10$fLK8s7ZDnM.1lE7XMP.J6OuPbQ.DPUVKBo7rENnQY7gYq0xAzsKJy', 'Nawin', 'krishna', 'facebook-profile-image.jpeg', '2020-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(20, 8, 'BJP', 'BJP', 'bjp.jpg', 'BJP'),
(21, 8, 'ADMK', 'ADMK', 'admk.jpg', 'admk'),
(22, 8, 'DMK', 'DMK', 'dmk.jpg', 'dmk'),
(23, 8, 'AGRI', 'AGRI', 'semon.jpg', 'aagri'),
(24, 8, 'NOTA', 'NOTA', 'OIP (2).jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'Chief Minister', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(6, 'TplR9heI3r8Fqk7', '$2y$10$IjQKItKQ8ymayQL8fQxBfOjFirfdMg7QgxvRCr9f6zdkVRto4rEZ2', 'Nekha', 'KS', '1200px-Elsevier_logo_2019.svg.png'),
(7, 'AX8fkwrxDy3hpKM', '$2y$10$v5V8ajJOsUAENyoEXIbCXe16WlYhckfFwJUMWvfzgxFJQXUcEfAfS', 'Murugappan', 'M', 'bull.png'),
(8, 'VUikZIKyX4fj18p', '$2y$10$su1gDa4bvbr5ce.AyfV3G.RdBUQnzadNdmUJLZ57FFe144h6k.xjO', 'Natraaj', 'kumar', 'cybersecurity-masthead.jpg.pc-adaptive.full.medium.jpeg'),
(9, '732cZkBXlqg9sve', '$2y$10$jqieMjNRsY4vvi/DPFsN/ewBt8NgHN/wzxCQgujCaG2MxI3ISZ6aq', 'Nawinkrishna', 'AS', 'bt.jpeg'),
(10, 'TZXVGQk7JeqL8fl', '$2y$10$yb3WhlJv68yrIa5zpdk.A.5/yxQ5msARwXFi6nXVUi.V1zFxdXNq2', 'Naresh', 'kumar', 'loke.jpg'),
(11, 'PmjGlShUsNVt8rO', '$2y$10$d8lK5//hWiRH.aNbCZGHyemNfxI.1l752psHj1A58m44hmjHpkLde', 'mahesh', 'kumar', 'ii.jpg'),
(12, '5jXNF2z9TQwHuxE', '$2y$10$aC/Zg7cwPqhF5Mvr.BiYu.Lo4uOY/pI7G4.JpnsxtY4z7ALPrPW/m', 'vicky', 'go', 'th.jpg'),
(13, 'S6KuR8hTHxrgt4L', '$2y$10$Mz4y.sT8NILxat5bgIVN4eWgvFuCcYv5VKtUFyutzXjGQv1Hj/BwG', 'prakash', 'D', 'bjp.jpg'),
(14, 'vITy3E7riupkQwb', '$2y$10$hkvApXm8Rv4kw6Tcm90FN.9431G76g1G06qHm5Y7527NtJqniuNbK', 'lal', 'prakash', 'wp2691479.jpg'),
(15, 'MyrVYE95bvZtiKp', '$2y$10$/lAbulseTZKYuExp8UdzVOLPUct.2TGkKyHco8XHExJUASgx8j/0m', 'Mukash', 's', 'ii.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(103, 13, 20, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
