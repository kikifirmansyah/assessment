-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2017 at 09:04 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `area_id` int(11) NOT NULL,
  `area_code` varchar(10) NOT NULL,
  `area_name` varchar(100) NOT NULL,
  `us_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`area_id`, `area_code`, `area_name`, `us_id`, `us_date`) VALUES
(1, 'MLG', 'Malang', 0, '2017-10-06 08:42:54'),
(2, 'CRB', 'Cirebon', 0, '2017-10-06 08:43:57'),
(3, 'TSK', 'Tasikmalaya', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `assessor_result`
--

CREATE TABLE `assessor_result` (
  `ar_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `ar_assessment_date` date NOT NULL,
  `ar_front_photo` varchar(100) NOT NULL,
  `ar_inside_photo` varchar(100) NOT NULL,
  `ar_app_manual` varchar(100) NOT NULL,
  `ar_app_based` varchar(100) NOT NULL,
  `ar_spec_memory` varchar(100) NOT NULL,
  `ar_spec_processor` varchar(100) NOT NULL,
  `ar_operating_system` varchar(100) NOT NULL,
  `ar_antivirus` varchar(100) NOT NULL,
  `ar_printer` varchar(100) NOT NULL,
  `ar_connection` varchar(100) NOT NULL,
  `ar_kendala` varchar(100) NOT NULL,
  `ar_result` varchar(100) NOT NULL,
  `ar_details` varchar(255) NOT NULL,
  `us_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessor_result`
--

INSERT INTO `assessor_result` (`ar_id`, `schedule_id`, `ar_assessment_date`, `ar_front_photo`, `ar_inside_photo`, `ar_app_manual`, `ar_app_based`, `ar_spec_memory`, `ar_spec_processor`, `ar_operating_system`, `ar_antivirus`, `ar_printer`, `ar_connection`, `ar_kendala`, `ar_result`, `ar_details`, `us_id`, `us_date`) VALUES
(16, 1, '2017-10-10', '', '', 'Menggunakan Aplikasi', 'Desktop Based', 'RAM 1 GB', 'Intel Pentium 3-4', 'Windows XP Professional SP2', 'Ada', 'EPSON TM U220', 'Telkomsel', 'Ya, bermasalah', 'Ya', 'test update schedule id and result update', 0, '2017-10-10 08:19:52'),
(17, 3, '2017-10-11', '', '', 'Menggunakan Aplikasi', 'Desktop Based', 'RAM 2 GB', 'Intel i3-i5', 'Windows 7 Home / Professional / Ultimate', 'Ada', 'EPSON TM U220', 'Indosat', 'Tidak Ada', 'Ya', 'test', 0, '2017-10-11 06:23:36'),
(19, 6, '2017-10-16', 'download.png', 'download2.jpg', 'Menggunakan Aplikasi', 'Desktop Based', 'RAM 2 GB', 'Intel Pentium 3-4', 'Windows XP Professional SP2', 'Ada', 'EPSON TM U220', 'Indosat', 'Tidak Ada', 'Ya', 'test', 0, '2017-10-16 12:22:24');

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `distributor_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `distributor_code` varchar(10) NOT NULL,
  `distributor_type` varchar(10) NOT NULL,
  `distributor_name` varchar(255) NOT NULL,
  `sld_name` varchar(255) NOT NULL,
  `sld_tlp` varchar(20) NOT NULL,
  `le_code` varchar(30) NOT NULL,
  `us_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`distributor_id`, `area_id`, `distributor_code`, `distributor_type`, `distributor_name`, `sld_name`, `sld_tlp`, `le_code`, `us_id`, `us_date`) VALUES
(1, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'IWAN SUSANTO', '085736935077', '350512000500070468', 0, '2017-10-06 09:17:49'),
(3, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'SR MT 3 VICKY', '085736926855', '350510000300070436', 0, '2017-10-10 04:47:31'),
(4, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'IWAN SUSANTO', '085736935077', '350513000500070437', 0, '2017-10-10 04:40:24'),
(5, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'SR MT 3 VICKY', '085736926855', '350517000900070423', 0, '2017-10-10 04:46:42'),
(6, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'SR MT 3 VICKY', '085736926855', '350517000500070473', 0, '2017-10-10 04:45:51'),
(7, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'IWAN SUSANTO', '085736935077', '350517000900070415', 0, '2017-10-10 04:49:58'),
(8, 1, '94421001', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'M. Nurul Taufik', '0', '350716000800403219', 0, '2017-10-10 04:51:11'),
(9, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'Ahmad Septiandy', '0', '350520001400070439', 0, '2017-10-10 04:52:16'),
(10, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Rio', '082257497255', '350708000800108151', 0, '2017-10-10 05:04:32'),
(11, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'IWAN SUSANTO', '085736935077', '350517000900070445', 0, '2017-10-10 05:05:29'),
(12, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Aris', '0', '350707000600108138', 0, '2017-10-10 05:07:18'),
(13, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Aditya', '0', '350714000500108136', 0, '2017-10-10 05:08:38'),
(14, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Edwin', '0', '350703000100088686', 0, '2017-10-10 05:10:03'),
(15, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Yuyun', '0', '350703000100088874', 0, '2017-10-10 05:10:33'),
(16, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Bayu', '0', '350728000200108041', 0, '2017-10-10 05:11:19'),
(17, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Yustinus', '081944911667', '350707000700108074', 0, '2017-10-10 05:12:01'),
(18, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'M. Mashudi', '0', '350707000700108079', 0, '2017-10-10 05:12:47'),
(19, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Prianto', '0', '350704000800108129', 0, '2017-10-10 05:13:35'),
(20, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Faisal', '0', '350707000700108081', 0, '2017-10-10 05:14:09'),
(21, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'M. Mashudi', '0', '350707000700108094', 0, '2017-10-10 05:14:40'),
(22, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Bayu', '0', '350707000700108056', 0, '2017-10-10 05:15:57'),
(23, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Bangun Sucipto', '0', '350730000700106598', 0, '2017-10-10 05:27:57'),
(24, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Faudji', '0', '350726001000758525', 0, '2017-10-10 05:34:46'),
(25, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Eko', '0', '350729000400123516', 0, '2017-10-10 05:35:42'),
(26, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Faudji', '0', '350725001200758526', 0, '2017-10-10 05:36:12'),
(27, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Mulyono', '0', '350728000100123477', 0, '2017-10-10 05:37:42'),
(28, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Zaenal', '0', '350706000800108164', 0, '2017-10-10 05:39:02'),
(29, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Budi', '0', '350706000800108157', 0, '2017-10-10 05:39:56'),
(30, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Aris', '0', '350712000700108168', 0, '2017-10-10 05:40:55'),
(31, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'M. Munir', '0', '351416001400121180', 0, '2017-10-10 05:41:50'),
(32, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'M. Munir', '0', '351417000200121139', 0, '2017-10-10 05:42:24'),
(33, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Zaini Udin', '0', '351410000800121177', 0, '2017-10-10 05:43:35'),
(34, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Yustinus', '081944911667', '350730000300108026', 0, '2017-10-10 05:44:31'),
(35, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Suprayitno', '0', '357303001100123491', 0, '2017-10-10 05:46:24'),
(36, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'Muchlis', '08563522280', '350518001200070471', 0, '2017-10-10 05:47:18'),
(37, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'M. Mashudi', '0', '350728000200108037', 0, '2017-10-10 05:52:29'),
(38, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Aditya', '0', '350713001300108112', 0, '2017-10-10 05:53:19'),
(39, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Oktova', '0', '350730000700123524', 0, '2017-10-10 05:57:18'),
(40, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Putu Suarsana', '0', '350730000900106593', 0, '2017-10-10 05:58:01'),
(41, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Cholid', '0', '350728000200108045', 0, '2017-10-10 05:58:38'),
(42, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Teguh', '0', '351416000200121127', 0, '2017-10-10 05:59:32'),
(43, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Faudji', '0', '357304001000123488', 0, '2017-10-10 06:03:36'),
(44, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Faudji', '0', '357304001000123522', 0, '2017-10-10 06:04:02'),
(45, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Eko', '0', '357301001000959545', 0, '2017-10-10 06:04:36'),
(46, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Faisal', '0', '357301001100108093', 0, '2017-10-10 06:06:16'),
(47, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Anto', '0', '357301001000959554', 0, '2017-10-10 06:07:08'),
(48, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Cholid', '0', '357303000500108021', 0, '2017-10-10 06:08:54'),
(49, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Catur', '0', '357303000600108018', 0, '2017-10-10 06:10:44'),
(50, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Wawan', '0', '357305000200087687', 0, '2017-10-10 06:11:36'),
(51, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Zaenal', '0', '350706001200108122', 0, '2017-10-10 06:13:27'),
(52, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'M. Sodikin', '081553933731', '351417002400121125', 0, '2017-10-10 06:14:12'),
(53, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'IWAN SUSANTO', '085736935077', '350514000100070412', 0, '2017-10-10 06:15:04'),
(54, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Anto', '0', '350710001100758523', 0, '2017-10-10 06:15:32'),
(55, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Wawan', '0', '350728001000123498', 0, '2017-10-10 06:16:02'),
(56, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Budi', '0', '350712000700108161', 0, '2017-10-10 06:16:34'),
(57, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Rio', '082257497255', '350712001100108099', 0, '2017-10-10 06:23:25'),
(58, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Oktova', '0', '357901000400106592', 0, '2017-10-10 06:24:08'),
(59, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'SR MIX 1 SUYADI', '0', '357902000500106622', 0, '2017-10-10 06:25:59'),
(60, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Tatok', '0', '357303000500108034', 0, '2017-10-10 06:26:48'),
(61, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Wawan', '0', '357305000600123475', 0, '2017-10-10 06:27:18'),
(62, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Febri', '0', '357305000300108036', 0, '2017-10-10 06:27:40'),
(63, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Mulyono', '0', '357305000600123509', 0, '2017-10-10 06:28:42'),
(64, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'M. Munir', '0', '351409001100121154', 0, '2017-10-10 06:29:12'),
(65, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Ferry V.', '0', '351420000500121148', 0, '2017-10-10 06:29:50'),
(66, 1, '15131843', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'Purwanto', '0', '351415000500121171', 0, '2017-10-10 06:30:22'),
(67, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Purwanto', '0', '351415000200121170', 0, '2017-10-10 06:31:12'),
(68, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Zaini Udin', '0', '351419000500121159', 0, '2017-10-10 06:31:52'),
(69, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'M. Munir', '0', '351419000700121160', 0, '2017-10-10 06:32:20'),
(70, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Zaini Udin', '0', '351422000700121158', 0, '2017-10-10 06:32:58'),
(71, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Sulis S.', '0', '351417002000121163', 0, '2017-10-10 06:34:14'),
(72, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'M Sodikin', '081553933731', '351417002000121166', 0, '2017-10-10 06:34:53'),
(73, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Sulis S.', '0', '351417002000121165', 0, '2017-10-10 06:35:25'),
(74, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Ferry V.', '0', '351417001300121162', 0, '2017-10-10 06:36:19'),
(75, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Zaini Udin', '0', '351417001300121152', 0, '2017-10-10 06:36:56'),
(76, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'M. Sodikin', '081553933731', '351412000800121145', 0, '2017-10-10 06:37:47'),
(77, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Ferry V.', '0', '351412000800121146', 0, '2017-10-10 06:40:55'),
(78, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Zaini Udin', '0', '351406001100121157', 0, '2017-10-10 06:41:29'),
(79, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Zaini Udin', '0', '351401000500121149', 0, '2017-10-10 06:41:53'),
(80, 1, '15131843', 'LMT', 'CV. Putra Jaya Pandaan LMT', 'Zaini Udin', '0', '351416000900121164', 0, '2017-10-10 06:42:36'),
(81, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'Catur', '0', '357303000300108051', 0, '2017-10-10 06:43:00'),
(82, 1, '15126013', 'LMT', 'PT. Panahmas Ekatama Distrindo Karanglo LMT', 'Mulyono', '0', '357301001100123503', 0, '2017-10-10 06:43:57'),
(83, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'N/A', '0', '357303000200108032', 0, '2017-10-10 07:38:57'),
(84, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'N/A', '0', '357305000300108049', 0, '2017-10-10 07:39:10'),
(85, 1, '15126012', 'LMT', 'PT. Panahmas Ekatama Distrindo Pakisaji LMT', 'N/A', '0', '357303000800123483', 0, '2017-10-10 07:34:54'),
(86, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'N/A', '0', '350712001100108160', 0, '2017-10-10 07:35:20'),
(87, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'N/A', '0', '350713000300108126', 0, '2017-10-10 07:35:40'),
(88, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'N/A', '0', '350714000500108144', 0, '2017-10-10 07:36:14'),
(89, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'N/A', '0', '350706000100108119', 0, '2017-10-10 07:36:42'),
(90, 1, '15221101', 'LMT', 'CV. WAR UNI ABADI TUREN MT', 'N/A', '0', '350712001100108101', 0, '2017-10-10 07:37:00'),
(91, 1, '94434001', 'GT', 'PT. Panahmas Ekatama Distrindo ', 'N/A', '0', '350729000300403070', 0, '2017-10-10 07:35:51'),
(92, 1, '15224518', 'LMT', 'CV. Bumi Arta LMT Blitar', 'N/A', '0', '350515001100070442', 0, '2017-10-10 07:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `implementation_status`
--

CREATE TABLE `implementation_status` (
  `implementation_status_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `live_date` date NOT NULL,
  `live_or_not` varchar(100) NOT NULL,
  `vikrant_or_epos` varchar(100) NOT NULL,
  `us_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `implementation_status`
--

INSERT INTO `implementation_status` (`implementation_status_id`, `outlet_id`, `status_id`, `live_date`, `live_or_not`, `vikrant_or_epos`, `us_id`, `us_date`) VALUES
(1, 2, 4, '2017-10-14', 'Live', 'Vikrant', 0, '2017-10-12 06:42:50'),
(2, 10, 4, '2017-10-02', 'Live', 'Vikrant', 0, '2017-10-12 06:54:36'),
(3, 40, 4, '2017-10-02', 'Live', 'Vikrant', 0, '2017-10-12 07:03:56'),
(4, 41, 4, '2017-09-03', 'Live', 'EPOS', 0, '2017-10-12 07:04:55'),
(5, 22, 4, '2017-09-30', 'Live', 'Vikrant', 0, '2017-10-12 07:05:51'),
(6, 43, 4, '2017-09-30', 'Live', 'Vikrant', 0, '2017-10-12 07:07:58'),
(7, 44, 4, '2017-09-27', 'Live', 'Vikrant', 0, '2017-10-12 07:10:46'),
(8, 45, 4, '2017-10-29', 'Live', 'Vikrant', 0, '2017-10-12 07:11:17'),
(9, 46, 4, '2017-09-26', 'Live', 'Vikrant', 0, '2017-10-12 07:11:40'),
(10, 47, 4, '2017-09-27', 'Live', 'Vikrant', 0, '2017-10-12 07:12:18'),
(11, 48, 4, '2017-09-25', 'Live', 'Vikrant', 0, '2017-10-12 07:13:16'),
(12, 49, 4, '2017-09-25', 'Live', 'Vikrant', 0, '2017-10-12 07:14:20'),
(13, 50, 4, '2017-10-29', 'Live', 'Vikrant', 0, '2017-10-12 07:14:46'),
(14, 51, 4, '2017-09-29', 'Live', 'Vikrant', 0, '2017-10-12 07:15:13'),
(15, 52, 4, '2017-09-22', 'Live', 'Vikrant', 0, '2017-10-12 07:16:02'),
(16, 53, 4, '2017-09-22', 'Live', 'Vikrant', 0, '2017-10-12 07:16:27'),
(18, 55, 4, '2017-09-29', 'Live', 'Vikrant', 0, '2017-10-12 07:17:36'),
(19, 56, 4, '2017-09-29', 'Live', 'Vikrant', 0, '2017-10-12 07:17:55'),
(20, 57, 4, '2017-09-29', 'Live', 'Vikrant', 0, '2017-10-12 07:21:04'),
(21, 58, 4, '2017-09-28', 'Live', 'Vikrant', 0, '2017-10-12 07:21:46'),
(22, 7, 2, '2017-10-02', 'Not', 'Vikrant', 0, '2017-10-12 07:23:01'),
(23, 8, 2, '2017-09-29', 'Not', 'Vikrant', 0, '2017-10-12 07:23:33'),
(24, 9, 2, '2017-09-27', 'Not', 'Vikrant', 0, '2017-10-12 07:24:10'),
(25, 12, 1, '2017-10-02', '', '', 0, '2017-10-12 07:24:45'),
(26, 13, 1, '2017-09-28', '', '', 0, '2017-10-12 07:25:26'),
(27, 14, 1, '2017-10-03', '', '', 0, '2017-10-12 07:25:48'),
(28, 15, 1, '2017-09-25', '', '', 0, '2017-10-12 07:26:09'),
(29, 1, 3, '2017-09-30', '', '', 0, '2017-10-12 07:31:11'),
(31, 3, 3, '2017-09-28', '', '', 0, '2017-10-12 07:33:20'),
(32, 4, 3, '2017-09-27', '', '', 0, '2017-10-12 07:33:59'),
(33, 18, 3, '2017-09-27', '', '', 0, '2017-10-12 07:34:22'),
(34, 6, 3, '2017-09-27', '', '', 0, '2017-10-12 07:34:57'),
(35, 17, 3, '2017-09-28', '', '', 0, '2017-10-12 07:35:20'),
(37, 19, 3, '2017-09-26', '', '', 0, '2017-10-12 07:36:06'),
(38, 20, 3, '2017-09-27', '', '', 0, '2017-10-12 07:36:24'),
(39, 21, 3, '2017-09-25', '', '', 0, '2017-10-12 07:36:43'),
(40, 22, 3, '2017-09-26', '', '', 0, '2017-10-12 07:37:16'),
(41, 23, 3, '2017-09-26', '', '', 0, '2017-10-12 07:38:19'),
(42, 24, 3, '2017-09-26', '', '', 0, '2017-10-12 07:38:56'),
(43, 25, 3, '2017-09-25', '', '', 0, '2017-10-12 07:39:24'),
(44, 26, 3, '2017-09-28', '', '', 0, '2017-10-12 07:40:22'),
(45, 27, 3, '2017-09-28', '', '', 0, '2017-10-12 08:24:41'),
(46, 28, 3, '2017-09-28', '', '', 0, '2017-10-12 08:25:59'),
(47, 29, 3, '2017-09-29', '', '', 0, '2017-10-12 08:26:16'),
(48, 30, 3, '2017-09-27', '', '', 0, '2017-10-12 08:26:52'),
(49, 31, 3, '2017-09-27', '', '', 0, '2017-10-12 08:27:15'),
(50, 37, 3, '2017-09-28', '', '', 0, '2017-10-12 08:27:43'),
(51, 38, 3, '2017-09-28', '', '', 0, '2017-10-12 08:28:01'),
(52, 38, 3, '2017-09-28', '', '', 0, '2017-10-12 08:28:14'),
(53, 39, 3, '2017-09-26', '', '', 0, '2017-10-12 08:29:36'),
(54, 73, 3, '2017-09-28', '', '', 0, '2017-10-12 08:38:29'),
(55, 74, 3, '2017-09-27', '', '', 0, '2017-10-12 08:48:29'),
(56, 91, 3, '2017-09-28', '', '', 0, '2017-10-12 08:49:10'),
(57, 92, 3, '2017-09-27', '', '', 0, '2017-10-12 08:49:32'),
(58, 94, 3, '2017-09-28', '', '', 0, '2017-10-12 08:50:11'),
(59, 16, 5, '2017-10-02', '', '', 0, '2017-10-12 09:14:41'),
(60, 59, 5, '2017-09-30', '', '', 0, '2017-10-12 09:17:05'),
(61, 39, 5, '2017-09-28', '', '', 0, '2017-10-12 09:17:37'),
(62, 61, 5, '2017-09-28', '', '', 0, '2017-10-12 09:21:00'),
(63, 62, 5, '2017-09-26', '', '', 0, '2017-10-12 09:32:41'),
(64, 63, 5, '2017-09-25', '', '', 0, '2017-10-12 09:33:02'),
(65, 64, 5, '2017-09-24', '', '', 0, '2017-10-12 09:33:36'),
(66, 65, 5, '2017-09-26', '', '', 0, '2017-10-12 09:33:57'),
(67, 66, 5, '2017-09-25', '', '', 0, '2017-10-12 09:35:20'),
(68, 67, 5, '2017-09-26', '', '', 0, '2017-10-12 09:35:39'),
(69, 68, 5, '2017-09-26', '', '', 0, '2017-10-12 09:35:56'),
(70, 69, 5, '2017-09-25', '', '', 0, '2017-10-12 09:40:28'),
(71, 70, 5, '2017-09-26', '', '', 0, '2017-10-12 09:41:11'),
(72, 71, 5, '2017-09-27', '', '', 0, '2017-10-12 09:41:40'),
(73, 39, 5, '2017-09-28', '', '', 0, '2017-10-12 10:00:02'),
(75, 11, 6, '2017-10-03', '', '', 0, '2017-10-12 10:00:42'),
(76, 32, 6, '2017-09-27', '', '', 0, '2017-10-12 10:00:56'),
(77, 33, 6, '2017-09-26', '', '', 0, '2017-10-12 10:01:14'),
(78, 34, 6, '2017-09-26', '', '', 0, '2017-10-12 10:17:04'),
(79, 35, 6, '2017-09-25', '', '', 0, '2017-10-12 10:17:26'),
(80, 36, 6, '2017-09-26', '', '', 0, '2017-10-12 10:17:53'),
(81, 75, 6, '2017-09-29', '', '', 0, '2017-10-12 10:18:41'),
(82, 76, 6, '2017-09-29', '', '', 0, '2017-10-12 10:20:50'),
(83, 77, 6, '2017-09-29', '', '', 0, '2017-10-12 10:21:10'),
(84, 78, 6, '2017-09-28', '', '', 0, '2017-10-12 10:21:26'),
(85, 79, 6, '2017-09-27', '', '', 0, '2017-10-12 10:22:00'),
(86, 80, 6, '2017-09-26', '', '', 0, '2017-10-12 10:22:22'),
(87, 81, 6, '2017-09-25', '', '', 0, '2017-10-12 10:22:53'),
(88, 82, 6, '2017-09-25', '', '', 0, '2017-10-12 10:23:07'),
(89, 83, 6, '2017-09-26', '', '', 0, '2017-10-12 10:23:22'),
(90, 84, 6, '2017-09-27', '', '', 0, '2017-10-12 10:23:58'),
(91, 85, 6, '2017-09-24', '', '', 0, '2017-10-12 10:24:21'),
(92, 86, 6, '2017-09-25', '', '', 0, '2017-10-12 10:24:36'),
(93, 87, 6, '2017-09-26', '', '', 0, '2017-10-12 10:24:59'),
(94, 88, 6, '2017-09-25', '', '', 0, '2017-10-12 10:25:35'),
(95, 89, 6, '2017-09-29', '', '', 0, '2017-10-12 10:25:55'),
(96, 89, 6, '2017-09-26', '', '', 0, '2017-10-12 10:26:26'),
(97, 90, 6, '2017-10-03', '', '', 0, '2017-10-12 10:26:53'),
(98, 93, 3, '2017-10-02', '', '', 0, '2017-10-12 11:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `implementor`
--

CREATE TABLE `implementor` (
  `implementor_id` int(11) NOT NULL,
  `implementor_code` varchar(10) NOT NULL,
  `implementor_name` varchar(100) NOT NULL,
  `implementor_address` varchar(255) NOT NULL,
  `implementor_telp` varchar(20) NOT NULL,
  `implementor_tempat_lahir` varchar(100) NOT NULL,
  `implementor_tgl_lahir` date NOT NULL,
  `po_id` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `implementor`
--

INSERT INTO `implementor` (`implementor_id`, `implementor_code`, `implementor_name`, `implementor_address`, `implementor_telp`, `implementor_tempat_lahir`, `implementor_tgl_lahir`, `po_id`, `us_id`, `us_date`) VALUES
(4, 'IMP1', 'Wisnu', 'test', '085624780303', 'Bandung', '2017-10-07', 2, 0, '2017-10-06 11:22:00'),
(5, 'IMP2', 'Robby Situngkir', 'testing', '08888777777', 'Jakarta', '1988-01-01', 2, 0, '2017-10-11 05:58:55'),
(6, 'IMP3', 'Basuki', 'testing', '081331220033', 'Medan', '1991-01-01', 2, 0, '2017-10-11 13:59:16'),
(7, 'IMP4', 'Diki Sandika', 'testing', '085778789999', 'Yogyakarta', '1988-02-02', 2, 0, '2017-10-11 14:00:15'),
(8, 'IMP5', 'Doni Kurniawan', 'testing', '081212123344', 'Sukabumi', '1988-03-03', 2, 0, '2017-10-11 14:01:18'),
(9, 'IMP6', 'Yusuf Nurdiansyah', 'test', '085678789631', 'Bandung', '1988-04-04', 2, 0, '2017-10-11 14:02:16'),
(10, 'EXC1', 'Ari Sulistyono', 'testing executive', '081300112233', 'Bandung', '1988-01-01', 3, 0, '2017-10-16 08:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `log_id` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL,
  `log_action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `md_id` int(11) NOT NULL,
  `md_name` varchar(100) NOT NULL,
  `md_link_name` varchar(100) NOT NULL,
  `md_toggle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`md_id`, `md_name`, `md_link_name`, `md_toggle`) VALUES
(1, 'Dashboard', 'dashboard/', 0),
(2, 'Manage User', '', 0),
(3, 'Master Data', '', 0),
(4, 'Assign Schedule', 'schedule/', 0),
(5, 'Assessment Result', 'assessor_result/', 0),
(6, 'Implementation Status', 'implementation_status/', 0),
(7, 'Report', 'report/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modules_sub`
--

CREATE TABLE `modules_sub` (
  `sub_md_id` int(11) NOT NULL,
  `md_id` int(11) NOT NULL,
  `sub_md_name` varchar(50) NOT NULL,
  `sub_md_link` varchar(50) NOT NULL,
  `parent_sub_id` int(11) NOT NULL,
  `sub_md_sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules_sub`
--

INSERT INTO `modules_sub` (`sub_md_id`, `md_id`, `sub_md_name`, `sub_md_link`, `parent_sub_id`, `sub_md_sort`) VALUES
(1, 3, 'area/', 'Area', 0, 1),
(2, 3, 'distributor/', 'Distributor', 0, 2),
(3, 3, 'outlet/', 'Outlet', 0, 3),
(4, 3, 'implementor/', 'Implementor', 0, 4),
(5, 3, 'status/', 'Status', 0, 5),
(6, 3, 'user/', 'User', 0, 6),
(7, 2, 'manage_user/', 'User', 0, 1),
(8, 2, 'manage_type/', 'Type', 0, 2),
(9, 2, 'manage_privileged/', 'Privileged', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `outlet_id` int(11) NOT NULL,
  `outlet_code` varchar(10) NOT NULL,
  `distributor_code` varchar(10) NOT NULL,
  `outlet_name` varchar(100) NOT NULL,
  `outlet_telp` varchar(20) NOT NULL,
  `outlet_address` varchar(255) NOT NULL,
  `outlet_lat` varchar(20) NOT NULL,
  `outlet_lang` varchar(20) NOT NULL,
  `outlet_kota_kab` varchar(100) NOT NULL,
  `outlet_kecamatan` varchar(100) NOT NULL,
  `us_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`outlet_id`, `outlet_code`, `distributor_code`, `outlet_name`, `outlet_telp`, `outlet_address`, `outlet_lat`, `outlet_lang`, `outlet_kota_kab`, `outlet_kecamatan`, `us_id`, `us_date`) VALUES
(1, 'OLT1', '15224518', 'JS SWALAYAN', '1234567890', 'KEMBAR SELOREJO, JL', '-8.13361122', '112.43161083', 'KAB. BLITAR', 'SELOREJO', 0, '2017-10-10 06:26:04'),
(2, 'OLT2', '15224518', 'ROFIQ', '0', 'SELOPURO, PSR', '-8.14129468', '8.14129468', 'KAB. BLITAR', 'SELOPURO', 0, '2017-10-10 06:24:42'),
(3, 'OLT3', '15224518', 'AVANZA SWALAYAN', '0', 'DOKO, PSR', '-8.08287953', '112.37215028', 'KAB. BLITAR', 'DOKO', 0, '2017-10-10 08:04:22'),
(4, 'OLT4', '15224518', 'DWY, MM', '08563631151', 'PENATARAN, PSR', '-8.01546247', '112.21261703', 'KAB. BLITAR', 'NGLEGOK', 0, '2017-10-10 08:05:44'),
(5, 'OLT5', '15224518', 'GEMILANG TK', '0', 'DAYU, PSR', '-8.03207413', '112.18148549', 'KAB. BLITAR', 'NGLEGOK', 0, '2017-10-10 08:07:58'),
(6, 'OLT6', '15224518', 'SOEN SWALAYAN', '0', 'RAYA PENATARAN, JL', '-8.01742844', '112.21245875', 'KAB. BLITAR', 'NGLEGOK', 0, '2017-10-10 08:09:09'),
(7, 'OLT7', '94421001', 'RISKY', '0', 'PENARUKAN', '-8.13688103', '112.57845611', 'KAB. MALANG', 'KEPANJEN', 0, '2017-10-10 08:10:47'),
(8, 'OLT8', '15224518', 'AMANAH', '082140808219', 'JL. RAYA DANDONG', '-8.09517640', '112.13815460', 'KAB. BLITAR', 'SRENGAT', 0, '2017-10-10 08:11:41'),
(9, 'OLT9', '15126012', 'AVIA / ALEX SOETOPO', '0341364880', 'J.A.SUPRAPTO, Jl. 1B', '-7.97390886', '112.63006211', 'KOTA MALANG', 'KLOJEN', 0, '2017-10-10 08:13:26'),
(10, 'OLT10', '15221101', 'AN NUR', '0', 'TLOGO SARI.PS', '-8.22765785', '112.83535463', 'KAB. MALANG', 'TIRTO YUDO', 0, '2017-10-10 08:14:41'),
(11, 'OLT11', '15224518', 'HIKMAH JAYA', '0342562769', 'RAYA PENATARAN, JL. NO.39', '-8.04844042', '112.21151193', 'KAB. BLITAR', 'NGLEGOK', 0, '2017-10-10 08:16:42'),
(12, 'OLT12', '15221101', 'SENTRAL SARI', '0', 'WONOKOYO, DESA', '-8.21465705', '112.79343679', 'KAB. MALANG', 'DAMPIT', 0, '2017-10-10 08:18:32'),
(13, 'OLT13', '15221101', 'BASMALAH', '0', 'GONDANGLEGI', '-8.17675499', '112.63354746', 'KAB. MALANG', 'GONDANGLEGI', 0, '2017-10-10 08:19:29'),
(14, 'OLT14', '15126012', 'USODHO', '0', 'SBR MANJING KULON', '-8.30217141', '112.49865224', 'KAB. MALANG', 'PAGAK', 0, '2017-10-10 08:21:56'),
(15, 'OLT15', '15126012', 'VIVI', '0', 'SBR MANJING KULON', '-8.30244317', '112.49886275', 'KAB. MALANG', 'PAGAK', 0, '2017-10-10 08:23:07'),
(16, 'OLT16', '15126012', 'ADI BUNGSU', '0', 'RAYA KEPANJEN', '-8.13490113', '112.57894907', 'KAB. MALANG', 'SINGOSARI', 0, '2017-10-10 08:33:52'),
(17, 'OLT17', '15126012', 'WARIS', '0', 'KROMENGAN, RAYA', '-8.12887891', '112.49073910', 'KAB. MALANG', 'DAMPIT', 0, '2017-10-10 08:34:56'),
(18, 'OLT18', '15126012', 'NUSANTARA', '0', 'KEPANJEN RAYA', '-8.13235980', '112.57271585', 'KAB. MALANG', 'DAMPIT', 0, '2017-10-10 08:36:05'),
(19, 'OLT19', '15221101', 'VANI VITA .MM', '0341877863', 'WONOKERT NO. 6-7 PSR', '-8.22599530', '112.59783940', 'KAB. MALANG', 'BANTUR', 0, '2017-10-10 08:37:39'),
(20, 'OLT20', '15126012', 'EKA BARU', '0', 'NGADIREJO', '-8.12857895', '112.51619930', 'KAB. MALANG', 'DAMPIT', 0, '2017-10-10 08:42:29'),
(21, 'OLT21', '15126012', 'SAKINAH', '0', 'WAGIR RAYA', '-8.01088148', '112.59497748', 'KAB. MALANG', 'DAMPIT', 0, '2017-10-10 08:45:02'),
(22, 'OLT22', '15126012', 'SBR REJEKI', '0', 'RAYA KALIPARE', '-8.20681122', '112.46549024', 'KAB. MALANG', 'DAMPIT', 0, '2017-10-10 08:46:04'),
(23, 'OLT23', '15126013', 'SHANIA', '03417346823', 'TIRTO UTOMO, JL. NO.21C', '-7.92531000', '112.59626014', 'KAB. MALANG', 'DAU', 0, '2017-10-10 08:47:19'),
(24, 'OLT24', '15126013', 'KAN JABUNG', '0341421333', 'SUROPATI JL. NO 4-6', '0.00000000', '0.00000000', 'KAB. MALANG', 'JABUNG', 0, '2017-10-10 08:49:05'),
(25, 'OLT25', '15126013', 'NY. MENEER', '0', 'GPA, PERUM', '-7.89487806', '112.60745519', 'KAB. MALANG', 'KARANGPLOSO', 0, '2017-10-10 08:49:48'),
(26, 'OLT26', '15126013', 'KUD PAKIS', '0341453199', 'JL. ASRIKATON 60 PAKIS', '-7.95283887', '112.69170979', 'KAB. MALANG', 'PAKIS', 0, '2017-10-10 08:51:06'),
(27, 'OLT27', '15126013', 'MENTARI', '0341465422', 'RY. SENGKALING, JL. 46', '-7.91743831', '112.58866265', 'KAB. MALANG', 'SINGOSARI', 0, '2017-10-10 08:52:41'),
(28, 'OLT28', '15221101', 'ALIMART', '0', 'SUMBER MANJING WETAN RY', '-8.26350481', '112.69181995', 'KAB. MALANG', 'SUMBERMANJING', 0, '2017-10-10 08:53:45'),
(29, 'OLT29', '15221101', 'RAHMAD AGUNG', '0', 'HARJOKANCARAN, RY', '-8.26296264', '112.70147717', 'KAB. MALANG', 'SUMBERMANJING', 0, '2017-10-10 08:55:01'),
(30, 'OLT30', '15221101', 'OJO LALI / ALIR RISKY', '0', 'HAMID RUSDI, JL', '-8.18781852', '112.69536154', 'KAB. MALANG', 'TUREN', 0, '2017-10-10 09:07:21'),
(31, 'OLT31', '15221101', 'PASTI PAS', '0', 'GATOT SUBROTO, JL', '-8.18462517', '112.69894035', 'KAB. MALANG', 'TUREN', 0, '2017-10-10 09:10:37'),
(32, 'OLT32', '15221101', 'TG', '0', 'TUREN, PASAR SELATAN', '-8.16640490', '112.69157020', 'KAB. MALANG', 'TUREN', 0, '2017-10-10 09:11:14'),
(33, 'OLT33', '15221101', 'A GROSIR KREBET', '0', 'KREBET RY', '-8.09345337', '112.64381138', 'KAB. MALANG', 'BULULAWANG', 0, '2017-10-10 09:12:14'),
(34, 'OLT34', '15221101', 'A GROSIR GONDANGLEGI', '0', 'HAYAM WURUK, JL', '-8.16942480', '112.64016340', 'KAB. MALANG', 'GONDANGLEGI', 0, '2017-10-10 09:13:08'),
(35, 'OLT35', '15221101', 'TUGU MM', '0', 'SITIARJO RAYA', '-8.37948169', '112.67859891', 'KAB. MALANG', 'SUMBERMANJING', 0, '2017-10-10 09:14:00'),
(36, 'OLT36', '15221101', 'LARIS 1', '0341824044', 'TUREN, RAYA', '-8.16551464', '112.69248150', 'KAB. MALANG', 'TUREN', 0, '2017-10-10 09:14:54'),
(37, 'OLT37', '15131843', 'AL-YASINI KOP', '0', 'KANIGORO, RAYA', '-7.67126238', '112.80848672', 'KAB. PASURUAN ', 'REMBANG', 0, '2017-10-10 09:16:10'),
(38, 'OLT38', '15131843', 'AL-YASINI MART', '085855700801', 'ARENG-ARENG', '0.00000000', '0.00000000', 'KAB. PASURUAN ', 'KRATON', 0, '2017-10-10 09:17:45'),
(39, 'OLT39', '15131843', 'NURUL HUDA REMBANG', '0', 'REMBANG', '-7.69205733', '112.63654154', 'KAB. PASURUAN ', 'PRIGEN', 0, '2017-10-10 09:18:28'),
(40, 'OLT40', '94434001', 'DAPUR QUE (LANGSEP)', '0', 'JL ANANAS NO 23, PISANG CANDI\r\n', '-7.98071264', '112.61387738', 'KAB. MALANG', 'KARANGPLOSO', 0, '2017-10-10 09:19:54'),
(41, 'OLT41', '15126012', 'SOLIKAH', '0', 'WONOSARI', '-8.03126498', '112.49479269', 'KAB. MALANG', 'DAU', 0, '2017-10-10 09:20:54'),
(42, 'OLT42', '15224518', 'SB REJEKI', '0', 'SLUMBUNG, PSR. RT 02/01', '-8.01205040', '112.34961268', 'KAB. BLITAR', 'GANDUSARI', 0, '2017-10-10 09:22:07'),
(43, 'OLT43', '15126013', 'BRAWIJAYA', '0341552951', 'MT. HARYONO, JL.169', '-7.94746397', '112.61295790', 'KOTA MALANG', 'KLOJEN', 0, '2017-10-10 09:23:11'),
(44, 'OLT44', '15224518', 'FIZTA', '0', 'SUMBERINGIN, DS', '-8.05744764', '112.15382847', 'KAB. BLITAR', 'SANANKULON', 0, '2017-10-10 09:24:13'),
(45, 'OLT45', '15126012', 'FAMILY GROSIR', '0', 'Ngebruk Kepanjen. JL.Ry. 0341-9511116\r\n', '-8.15016130', '112.51722307', 'KAB. MALANG', 'SINGOSARI', 0, '2017-10-10 09:25:30'),
(46, 'OLT46', '15221101', 'ISTANA BELANJA', '0', 'SIDODADI, RAYA', '-8.07242050', '112.64148970', 'KAB. MALANG', 'BULULAWANG', 0, '2017-10-10 09:31:36'),
(47, 'OLT47', '15126013', 'BSM SWALAYAN', '03417088484', 'RAYA SENGKALING', '-7.91556400', '112.58695080', 'KAB. MALANG', 'DAU', 0, '2017-10-10 09:32:35'),
(48, 'OLT48', '15126013', 'TRIADIN\'S', '0341462580', 'BUMIASRI, RUKO 1-4', '-7.91155709', '112.58213757', 'KAB. MALANG', 'DAU', 0, '2017-10-10 09:33:49'),
(49, 'OLT49', '15126012', 'WAWAN TRI ATMAJAYA / SEA MART', '0341831964', 'Kebon Agung JL. Ry. RukoH-I-J RT22/4 831964\r\n', '-8.02334869', '112.61773488', 'KAB. MALANG', 'SINGOSARI', 0, '2017-10-10 09:35:06'),
(50, 'OLT50', '15131843', 'NGALAH PONPES', '0', 'PONPES NGALAH, JL', '-7.75827310', '112.72861230', 'KAB. PASURUAN ', 'REMBANG', 0, '2017-10-10 09:36:02'),
(51, 'OLT51', '15126013', 'BE-SMART', '0341410178', 'ARAYA BLOK L', '-7.93854755', '112.65445965', 'KOTA MALANG', 'BLIMBING', 0, '2017-10-10 09:37:55'),
(52, 'OLT52', '15126013', 'SWA ETNA', '0', 'TELUK ETNA', '-7.93100125	', '112.65384791', 'KOTA MALANG', 'BLIMBING', 0, '2017-10-10 09:40:51'),
(53, 'OLT53', '15126013', 'MODELLO', '0', 'ABDUL RACHMAN SALEH RAYA\r\n', '-7.94917663', '112.69169846', 'KOTA MALANG', 'KEDUNGKANDANG', 0, '2017-10-10 09:48:51'),
(54, 'OLT54', '15126012', 'WARNA WARNI', '0', 'TUMPEK REJO RY', '-8.23491204', '112.43322188', 'KOTA MALANG', 'KEDUNGKANDANG', 0, '2017-10-10 09:49:45'),
(55, 'OLT55', '15126013', 'BONANZA', '0', 'DANAU BRATAN TIMUR I H 8 F 28\r\n', '-797.824.183', '11.266.840.152', 'KOTA MALANG', 'KEDUNGKANDANG', 0, '2017-10-10 09:58:57'),
(56, 'OLT56', '15126012', 'CV ZUPERMART', '0', 'Tebo Utara. JL. Ry. 15 Bandulan Tlp. 570013\r\n', '-7.98511547', '112.60187692', 'KOTA MALANG', 'KLOJEN', 0, '2017-10-10 09:59:45'),
(57, 'OLT57', '15126012', 'BROMO SWALAYAN', '341578124', 'JL. RAYA SUBER SARI 239B\r\n', '-7.95433478', '112.61068179', 'KOTA MALANG', 'KLOJEN', 0, '2017-10-10 10:00:50'),
(58, 'OLT58', '15126013', 'AL KHAIBAR', '0', 'TATA SURYA, JL 5A DINOYO\r\n', '-7.93547047', '112.60700294', 'KOTA MALANG', 'LOWOKWARU', 0, '2017-10-10 10:01:46'),
(59, 'OLT59', '15221101', 'ABADI MM', '0', 'SM WETAN PS', '-8.26353059', '112.69110621', 'KAB. MALANG', 'SUMBERMANJING', 0, '2017-10-10 10:02:36'),
(60, 'OLT60', '15131843', 'NURUL HUDA, KOPONTREN', '0', 'KRATON', '-7.62182851', '112.85974353', 'KAB. PASURUAN ', 'KRATON', 0, '2017-10-10 10:03:28'),
(61, 'OLT61', '15224518', 'FAMILY', '0', 'RAYA TUMPIK, JL', '-8.10354163', '112.32382295', 'KAB. BLITAR', 'WLINGI', 0, '2017-10-10 10:04:39'),
(62, 'OLT62', '15126013', 'LESTARI MAKMUR', '03417796333', 'WATES. JL.RAYA', '0.00000000', '0.00000000', 'KAB. MALANG', 'PONCOKUSUMO', 0, '2017-10-10 10:06:52'),
(63, 'OLT63', '15126013', 'BEDALI AGUNG', '0341420715', 'BEDALI AGUNG BLOK O NO.1\r\n', '-7.86811336', '112.69493025', 'KAB. MALANG', 'SINGOSARI', 0, '2017-10-10 10:09:20'),
(64, 'OLT64', '15221101', 'AKBAR MINIMARKET', '03417803667', 'TALOK - TUREN', '-8.18481550', '112.69844957', 'KAB. MALANG', 'TUREN', 0, '2017-10-10 10:10:27'),
(65, 'OLT65', '15221101', 'SARI BUANA', '0341824449', 'Panglima Sudirman, Jl 125\r\n', '-8.16666605', '112.69159002', 'KAB. MALANG', 'TUREN', 0, '2017-10-10 10:11:38'),
(66, 'OLT66', '15126013', 'BATU PLAZA', '0341591901', 'GAJAHMADA, JL. NO. 01\r\n', '-7.87035453', '112.52730096', 'KOTA BATU', 'BATU', 0, '2017-10-10 10:12:44'),
(67, 'OLT67', '15126013', 'YOMART', '0', 'SARIMUN, JL. NO. 07', '-7.89210302', '112.54814532', 'KOTA BATU', 'JUNREJO', 0, '2017-10-10 10:13:35'),
(68, 'OLT68', '15126012', 'DIVAS SWALAYAN', '0', 'Kawi Atas JL. No. 12A 0341-562430\r\n', '-7.97507969', '112.61871319', 'KOTA MALANG', 'KLOJEN', 0, '2017-10-10 10:16:43'),
(69, 'OLT69', '15126013', 'AL HIKAM', '08510128989', 'CENGGR AYAM, JL', '-7.94720836', '112.63185222', 'KOTA MALANG', 'LOWOKWARU', 0, '2017-10-10 10:17:50'),
(70, 'OLT70', '15126012', 'TANDON', '0', 'Esbreg JL. 3 Tidar 0341561618\r\n', '-7.96257668', '112.60059693', 'KOTA MALANG', 'LOWOKWARU', 0, '2017-10-10 10:18:32'),
(71, 'OLT71', '15126013', 'AVAN II', '0', 'BENGAWAN SOLO, JL', '-7.96412586', '112.64004605', 'KOTA MALANG', 'LOWOKWARU', 0, '2017-10-10 10:19:17'),
(72, 'OLT72', '15131843', 'NURUL HUDA REMBANG', '0', 'REMBANG', '-7.69205733', '112.63654154', 'KAB. PASURUAN ', 'PRIGEN', 0, '2017-10-10 10:20:12'),
(73, 'OLT73', '15131843', 'TOSERBA SENGON', '0', 'SENGON', '0.00000000', '0.00000000', 'KAB. PASURUAN ', 'PURWOSARI', 0, '2017-10-10 10:20:45'),
(74, 'OLT74', '15131843', 'TOKO NADIN', '0', 'RAYA REJOSO, JL', '-7.68390805', '112.95757447', 'KAB. PASURUAN ', 'REJOSO', 0, '2017-10-10 10:21:34'),
(75, 'OLT75', '15131843', 'ISTANA KADO', '0', 'UNTUNG SURAPATI,Jl. 11-12\r\n', '0.00000000', '0.00000000', 'KAB. PASURUAN ', 'BANGIL', 0, '2017-10-10 10:22:16'),
(76, 'OLT76', '15131843', 'NUSA INDAH', '741410', 'UNTUNG SURAPATI, Jl.No.69\r\n', '0.00000000', '0.00000000', 'KAB. PASURUAN ', 'BANGIL', 0, '2017-10-10 10:23:23'),
(77, 'OLT77', '15131843', 'SIDOGIRITENGGILIS, KOPONTREN', '0', 'RAYA TENGGILIS, Jl.\r\n', '-7.72155950', '112.93209520', 'KAB. PASURUAN ', 'GONDANG WETAN', 0, '2017-10-10 10:24:45'),
(78, 'OLT78', '15131843', 'SIDOGIRIWONOSARI, KOPOONTREN', '0', 'RAYA WONOSARI, Jl.\r\n', '-7.71282722', '112.91603036', 'KAB. PASURUAN ', 'GONDANG WETAN', 0, '2017-10-10 10:26:28'),
(79, 'OLT79', '15131843', 'SIDOGIRITREWUNG, KOPONTREN', '0', 'RAYA TREWUNG, Jl.\r\n', '-7.74047130', '112.99330606', 'KAB. PASURUAN ', 'GRATI', 0, '2017-10-10 10:27:13'),
(80, 'OLT80', '15131843', 'SIDOGIRI GEMBYANG KOPONTREN', '0', 'GEMBYANG', '0.00000000', '0.00000000', 'KAB. PASURUAN ', 'KRATON', 0, '2017-10-10 10:30:26'),
(81, 'OLT81', '15131843', 'SIDOGIRI1, KOPONTREN', '03437511101', 'SIDOGIRI (UNIT 1)\r\n', '0.00000000', '0.00000000', 'KAB. PASURUAN ', 'KRATON', 0, '2017-10-10 10:31:42'),
(82, 'OLT82', '15131843', 'SIDOGIRI12, KOPONTREN', '0', 'SIDOGIRI (UNIT 12)\r\n', '0.00000000', '0.00000000', 'KAB. PASURUAN ', 'KRATON', 0, '2017-10-10 10:33:58'),
(83, 'OLT83', '15131843', 'SIDOGIRI27, KOPONTREN', '085649665488', 'WONOREJO', '0.00000000', '0.00000000', 'KAB. PASURUAN ', 'KRATON', 0, '2017-10-10 10:34:42'),
(84, 'OLT84', '15131843', 'SIDOGIRI3, KOPONTREN', '0', 'Pasar Sidogiri, Jl.\r\n', '0.00000000', '0.00000000', 'KAB. PASURUAN ', 'KRATON', 0, '2017-10-10 10:35:32'),
(85, 'OLT85', '15131843', 'SIDOGIRI LEKOK', '0', 'Lekok, Jl.\r\n', '-7.68596726', '112.98682491', 'KAB. PASURUAN ', 'PANDAAN', 0, '2017-10-10 10:37:00'),
(86, 'OLT86', '15131843', 'SIDOGIRIKEJAYAN, KOP', '0', 'Raya Kejayan-Malang, Jl.\r\n', '0.00000000', '0.00000000', 'KAB. PASURUAN ', 'PANDAAN', 0, '2017-10-10 10:38:01'),
(87, 'OLT87', '15131843', 'SIDOGIRIPASREPAN, KOPONTREN', '0', 'RAYA PASREPAN, Jl.\r\n', '-7.77445969', '112.87830501', 'KAB. PASURUAN', 'PASREPAN', 0, '2017-10-10 10:43:14'),
(88, 'OLT88', '15131843', 'SIDOGIRIBLAWI, KOP', '0', 'Raya Rembang, Jl.\r\n', '-7.64526327', '112.90457035', 'KAB. PASURUAN ', 'PURWODADI', 0, '2017-10-10 10:44:23'),
(89, 'OLT89', '15131843', 'SIDOGIRIREMBANG, KOPONTREN', '0', 'REMBANG', '-7.63977544', '112.80205916', 'KAB. PASURUAN ', 'REMBANG', 0, '2017-10-10 10:45:24'),
(90, 'OLT90', '15126012', 'MITRA MARKET', '03417392125', 'KLAYATAN III NO 10A\r\n', '-8.00437325', '112.61325152', 'KOTA MALANG', 'KLOJEN', 0, '2017-10-10 10:47:56'),
(91, 'OLT91', '15126013', 'BOOM 5000', '0', 'Danau Toba Jl. E9 Swjjr\r\n', '-7.98093022', '112.66187682', 'KOTA MALANG', 'KEDUNGKANDANG', 0, '2017-10-10 10:48:57'),
(92, 'OLT92', '15126012', 'KOPERASI USAHA BRAYA / KOSABRA', '0341551022', 'Surabaya JL. 3 \r\n', '-7.96605637', '112.61776206', 'KOTA MALANG', 'KLOJEN', 0, '2017-10-10 10:50:02'),
(93, 'OLT93', '15126012', 'RAHMA, MM', '0', 'Jl. Kerto Pamuji\r\n', '-7.94923166', '112.61023436', 'KOTA MALANG', 'LOWOKWARU', 0, '2017-10-10 10:50:47'),
(94, 'OLT94', '15224518', 'CITRA AYU', '0', 'BUMIASRI, RUKO I - 4\r\n', '0.00000000', '0.00000000', 'KAB. MALANG', 'BUMIASRI', 0, '2017-10-10 10:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `implementor_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `distributor_id` int(11) NOT NULL,
  `date_assign` date NOT NULL,
  `flag` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `outlet_id`, `implementor_id`, `area_id`, `distributor_id`, `date_assign`, `flag`, `us_id`, `us_date`) VALUES
(1, 1, 4, 1, 1, '2017-10-12', 1, 0, '2017-10-09 00:00:00'),
(3, 2, 4, 1, 3, '2017-10-14', 1, 0, '2017-10-11 06:04:07'),
(5, 9, 7, 1, 10, '2017-10-17', 0, 0, '2017-10-16 09:49:37'),
(6, 7, 5, 1, 8, '2017-10-16', 1, 0, '2017-10-16 11:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL,
  `us_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`, `us_id`, `us_date`) VALUES
(1, 'Agree to be Assessed', 0, '2017-10-10 15:09:07'),
(2, 'Disagree', 0, '0000-00-00 00:00:00'),
(3, 'Expected Go Live', 0, '0000-00-00 00:00:00'),
(4, 'Go Live', 0, '0000-00-00 00:00:00'),
(5, 'Not Meet Specification', 0, '0000-00-00 00:00:00'),
(6, 'To be Confirmed', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `us_id` int(11) NOT NULL,
  `po_id` int(11) NOT NULL,
  `us_name` varchar(100) NOT NULL,
  `us_password` varchar(100) NOT NULL,
  `us_fullname` varchar(100) NOT NULL,
  `us_telp` varchar(20) NOT NULL,
  `implementor_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`us_id`, `po_id`, `us_name`, `us_password`, `us_fullname`, `us_telp`, `implementor_id`, `us_date`) VALUES
(1, 1, 'admin', '3c333ca0974976225dac148dd8b25987', 'Admin', '123456789', 999, '2017-10-13 00:00:00'),
(2, 1, 'kiki', '6ce5a08dadee50a08514a1e2f8917070', 'Kiki Firmansyah', '085624780319', 998, '2017-10-13 00:00:00'),
(3, 2, 'wisnu', '67340a8acc49d521d7fdd25db913bf9d', 'Wisnu', '085624780303', 4, '2017-10-13 00:00:00'),
(4, 3, 'bambang', '3c333ca0974976225dac148dd8b25987', 'Bambang', '081294661655', 997, '2017-10-13 00:00:00'),
(5, 2, 'basuki', '42284486a15e5af09e865661c41877b1', '', '', 6, '2017-10-16 05:58:52'),
(6, 3, 'sulis', '9e39fe12c7c9c968ceabcd0b80d622a7', '', '', 10, '2017-10-16 08:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_access`
--

CREATE TABLE `user_access` (
  `us_md_id` int(11) NOT NULL,
  `us_id` int(11) NOT NULL,
  `md_id` int(11) NOT NULL,
  `sub_md_id` int(11) NOT NULL,
  `us_md_access` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access`
--

INSERT INTO `user_access` (`us_md_id`, `us_id`, `md_id`, `sub_md_id`, `us_md_access`) VALUES
(1, 1, 1, 0, 3),
(3, 1, 3, 1, 3),
(4, 1, 3, 2, 3),
(5, 1, 3, 3, 3),
(6, 1, 3, 4, 3),
(7, 1, 3, 5, 3),
(8, 1, 4, 0, 3),
(9, 1, 5, 0, 3),
(10, 1, 6, 0, 3),
(11, 1, 7, 0, 3),
(12, 3, 4, 0, 2),
(13, 3, 5, 0, 2),
(14, 4, 1, 0, 1),
(15, 4, 7, 0, 1),
(16, 1, 2, 7, 3),
(17, 1, 2, 8, 3),
(18, 1, 2, 9, 3),
(19, 1, 3, 6, 3),
(22, 6, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_position`
--

CREATE TABLE `user_position` (
  `po_id` int(11) NOT NULL,
  `po_position` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_position`
--

INSERT INTO `user_position` (`po_id`, `po_position`) VALUES
(1, 'Administrator'),
(2, 'Implementor'),
(3, 'Executive');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `ut_id` int(11) NOT NULL,
  `ut_name` varchar(50) NOT NULL,
  `ut_acr` varchar(10) NOT NULL,
  `us_id` int(11) NOT NULL,
  `us_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`ut_id`, `ut_name`, `ut_acr`, `us_id`, `us_date`) VALUES
(1, 'Admin', 'adm', 0, '2017-10-13 00:00:00'),
(2, 'Implementor', 'imp', 0, '2017-10-13 00:00:00'),
(3, 'Executive', 'exc', 0, '2017-10-13 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`area_id`);

--
-- Indexes for table `assessor_result`
--
ALTER TABLE `assessor_result`
  ADD PRIMARY KEY (`ar_id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`distributor_id`);

--
-- Indexes for table `implementation_status`
--
ALTER TABLE `implementation_status`
  ADD PRIMARY KEY (`implementation_status_id`);

--
-- Indexes for table `implementor`
--
ALTER TABLE `implementor`
  ADD PRIMARY KEY (`implementor_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`md_id`);

--
-- Indexes for table `modules_sub`
--
ALTER TABLE `modules_sub`
  ADD PRIMARY KEY (`sub_md_id`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`outlet_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`us_id`);

--
-- Indexes for table `user_access`
--
ALTER TABLE `user_access`
  ADD PRIMARY KEY (`us_md_id`);

--
-- Indexes for table `user_position`
--
ALTER TABLE `user_position`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`ut_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `area_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `assessor_result`
--
ALTER TABLE `assessor_result`
  MODIFY `ar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `distributor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `implementation_status`
--
ALTER TABLE `implementation_status`
  MODIFY `implementation_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `implementor`
--
ALTER TABLE `implementor`
  MODIFY `implementor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `md_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `modules_sub`
--
ALTER TABLE `modules_sub`
  MODIFY `sub_md_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `outlet`
--
ALTER TABLE `outlet`
  MODIFY `outlet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_access`
--
ALTER TABLE `user_access`
  MODIFY `us_md_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `user_position`
--
ALTER TABLE `user_position`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `ut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
