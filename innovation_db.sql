-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 23, 2020 at 09:10 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `innovation_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tab_attachment`
--

CREATE TABLE `tab_attachment` (
  `attchment_id` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  `attachment_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tab_challenge`
--

CREATE TABLE `tab_challenge` (
  `challenge_id` int(11) NOT NULL,
  `challenge_name` varchar(255) NOT NULL,
  `challenge_desc` longtext NOT NULL,
  `challenge_files` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tab_dept`
--

CREATE TABLE `tab_dept` (
  `dept_id` varchar(10) NOT NULL,
  `dept_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_dept`
--

INSERT INTO `tab_dept` (`dept_id`, `dept_name`) VALUES
('001', 'SALES'),
('006', 'FINANCE'),
('007', 'ACCOUNTING & TAX'),
('008', 'COLLECTION'),
('009', 'PURCHASING'),
('010', 'BUDGET CONTROL'),
('013', 'COMPENSATION & BENEFIT'),
('014', 'LEARNING & DEVELOPMENT'),
('015', 'GENERAL AFFAIR'),
('018', 'TRANSMISSION'),
('019', 'ENGINEERING'),
('021', 'PROGRAMMING OPERATION & SCHEDULLING'),
('022', 'MCR'),
('036', 'TRANSMISSION OPERATION MTI'),
('044', 'S & M OTHERS'),
('045', 'FIN & ACC OTHERS'),
('076', 'SURABAYA - SATU'),
('078', 'CORP COMM & PR'),
('102', 'EAGLE INSTITUTE'),
('103', 'NEWS SECRETARIAT'),
('104', 'NEWS SERVICES'),
('106', 'NEWS OTHERS'),
('113', 'TALENT'),
('115', 'TECHNICAL OPERATION'),
('123', 'MARKETING TOOLS & CREATIVE'),
('126', 'CONTENT & KNOWLEDGE MANAGEMENT'),
('127', 'LEGAL'),
('139', 'OTHERS'),
('146', 'TV JARINGAN MTI'),
('147', 'SALES MEDIA INDONESIA'),
('148', 'HR & GA MTI'),
('149', 'MAINTENANCE & LOGISTIC MTI'),
('150', 'PROJECT DEVELOPMENT MTI'),
('151', 'SEKRETARIAT MTI'),
('159', 'HR LEGAL OTHERS'),
('161', 'SALES MEDCOM'),
('163', 'NEWS PRODUCTION BULLETIN'),
('164', 'NEWS PRODUCTION NON BULETIN'),
('165', 'NEWS GATHERING'),
('167', 'NEWS MEDCOM'),
('168', 'NEWS ENT & SPORT MEDCOM'),
('169', 'NEWS TV SUPP & SOCMED MEDCOM'),
('170', 'MARKETING MEDCOM'),
('171', 'IT MEDCOM'),
('173', 'INDEPTH REPORTING & NON BULLETIN'),
('182', 'LOGISTIC & ASSET MANAGEMENT'),
('183', 'SALES ADMINISTRATION SUPPORT'),
('184', 'MARKETING PLANNING & RESEARCH'),
('187', 'PROMOTION'),
('188', 'SYSTEM & PROCEDURE'),
('190', 'MAINTENANCE TRANSMISSION'),
('191', 'PROJECT TRANSMISSION & SNG'),
('193', 'MARKETING'),
('194', 'MEDIA PARTNERSHIP'),
('195', 'PRODUCTION & CREATIVE'),
('197', 'PROD & DEV OTHERS'),
('198', 'GRAPHIC DEV'),
('201', 'SPECIAL PROJECT'),
('202', 'BOD'),
('203', 'CORPORATE'),
('204', 'PROJECT'),
('206', 'CONTENT & DEV'),
('208', 'MIS'),
('209', 'IT OPERATIONAL'),
('214', 'TRAFFIC'),
('215', 'DIGITAL LIBRARY CENTER'),
('216', 'IT PROJECT'),
('218', 'IT INFRASTRUCTURE'),
('219', 'CREATIVE DEVELOPMENT IDM'),
('220', 'VIDEO PRODUCTION & GRAPHIC IDM'),
('221', 'M.I.C.E & SPECIAL EVENTS IDM'),
('222', 'TECHNICAL & SERVICE SUPPORT IDM'),
('223', 'SALES & MARKETING IDM'),
('224', 'SALES ADMIN IDM'),
('225', 'HR IDM'),
('226', 'GA IDM'),
('227', 'FIN & ACC IDM'),
('228', 'NEWS SECRETARIAT MEDCOM'),
('229', 'FIN & ACC MEDCOM'),
('230', 'HR MEDCOM'),
('231', 'LEGAL MEDCOM'),
('232', 'TRANSMISSION JKT MTI'),
('233', 'DIGITAL PROMOTION'),
('234', 'CREATIVE MEDCOM'),
('235', 'SALES 2'),
('236', 'SALES 3'),
('237', 'SALES 4'),
('238', 'SALES 5'),
('239', 'SALES 6'),
('240', 'SALES 7'),
('241', 'SALES 8'),
('242', 'SALES 9 (CSR & PARTNERSHIP)'),
('243', 'SALES 1'),
('245', 'SALES ONLINE'),
('246', 'PROD & CREATIVE IDM OTHERS'),
('247', 'ADMIN SUPPORT IDM'),
('248', 'MARKETING & BUSINESS DEVELOPMENT IDM'),
('249', 'IT OFFICE & BROADCAST SUPPORT'),
('250', 'IT INFRASTRUCTURE'),
('251', 'MIS'),
('252', 'TECHNICAL OPERATION'),
('253', 'ENGINEERING'),
('254', 'OPERATIONS'),
('255', 'MAINTENANCE'),
('256', 'PROJECT & SNG'),
('257', 'LOGISTIC & ASSET MANAGEMENT'),
('258', 'GENERAL AFFAIRS'),
('259', 'REPORTING & SYSTEM'),
('260', 'ORG DEV & TALENT ACQUISITION'),
('261', 'GENERAL AFFAIRS'),
('262', 'LOGISTIC & ASSET MANAGEMENT'),
('263', 'STRATEGIC PROGRAMMING'),
('264', 'GRAPHICS'),
('265', 'MCR'),
('266', 'DIGITAL LIBRARY CENTER'),
('267', 'NEWS CONTENT ENRICHMENT'),
('268', 'PRODUCTION NON NEWS'),
('269', 'MEDIA SERVICE'),
('270', 'SALES 10 (NON AIRING)'),
('271', 'NEWS RESEARCH CENTER'),
('272', 'MEDIA GROUP NEWS'),
('273', 'INDEPTH REPORTING & NON BULLETIN'),
('274', 'CREATIVE CONTENT & SOCIAL MEDIA'),
('275', 'DIGITAL CREATIVE CONTENT OTHERS'),
('276', 'CONTENT NETWORKING OTHERS'),
('277', 'HR EMPLOYMENT'),
('278', 'MEDIA ACADEMY'),
('279', 'TRADING'),
('280', 'PROMOTION'),
('281', 'MEDIA INDONESIA'),
('282', 'INDOCATEER');

-- --------------------------------------------------------

--
-- Table structure for table `tab_div`
--

CREATE TABLE `tab_div` (
  `div_id` varchar(10) NOT NULL,
  `div_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_div`
--

INSERT INTO `tab_div` (`div_id`, `div_name`) VALUES
('001', 'FIN & ACC'),
('002', 'HR & LEGAL'),
('003', 'PROG & DEV'),
('005', 'NEWS BULLETIN & NON BULLETIN'),
('006', 'SALES'),
('007', 'EAGLE INSTITUTE'),
('011', 'SALES & MARKETING'),
('012', 'MARKETING'),
('013', 'OTHERS'),
('016', 'CORP COMM & PR'),
('017', 'SURABAYA - SATU'),
('018', 'METRO TRANSMISI IND'),
('020', 'SCM'),
('021', 'PROMOTION'),
('022', 'INTERNAL CONTROL'),
('023', 'ENGINEERING'),
('025', 'TRANSMISSION'),
('026', 'PROD & DEV'),
('027', 'BOD'),
('028', 'CORPORATE'),
('029', 'PROJECT'),
('030', 'CKM'),
('032', 'IT'),
('034', 'PROD & CREATIVE IDM'),
('035', 'OPERATION & SUPPORT IDM'),
('036', 'S & M - IDM'),
('038', 'NEWS MEDCOM'),
('039', 'S&M MEDCOM'),
('040', 'IT MEDCOM'),
('041', 'FIN CONTROLLER MEDCOM'),
('042', 'HR & LEGAL MEDCOM'),
('043', 'IT'),
('044', 'ENGINEERING'),
('045', 'TRANSMISSIONS'),
('046', 'SUPPLY CHAIN MANAGEMENT'),
('047', 'SCM'),
('048', 'PRODUCTION & DEVELOPMENT'),
('049', 'MEDIA GROUP NEWS'),
('050', 'DIGITAL CREATIVE CONTENT'),
('051', 'CONTENT NETWORKING'),
('052', 'MEDIA ACADEMY'),
('053', 'MEDIA INDONESIA'),
('054', 'INDOCATEER');

-- --------------------------------------------------------

--
-- Table structure for table `tab_idea`
--

CREATE TABLE `tab_idea` (
  `idea_id` int(11) NOT NULL,
  `challenge_id` int(11) DEFAULT NULL,
  `idea_type` int(11) NOT NULL COMMENT '1 = Program; 2 = Policy; 3= Business; 4 = Technical; 5 = Other',
  `idea_subject` varchar(255) NOT NULL,
  `idea_desc` longtext NOT NULL,
  `idea_detail` longtext NOT NULL,
  `idea_photo` varchar(255) DEFAULT NULL,
  `idea_views` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_date` varchar(255) NOT NULL,
  `edited_by` int(11) DEFAULT NULL,
  `edited_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tab_knowledge`
--

CREATE TABLE `tab_knowledge` (
  `knowledge_id` int(11) NOT NULL,
  `knowledge_subject` varchar(255) NOT NULL,
  `knowledge_desc` longtext NOT NULL,
  `knowledge_photo` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tab_nav`
--

CREATE TABLE `tab_nav` (
  `nav_id` int(11) NOT NULL,
  `nav_name` varchar(255) NOT NULL,
  `nav_ctr` varchar(255) NOT NULL,
  `nav_desc` varchar(255) NOT NULL,
  `nav_thumb` varchar(255) NOT NULL,
  `nav_order` int(11) NOT NULL,
  `is_admin` int(11) NOT NULL COMMENT '0 = No ; 1 = Yes',
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tab_nav`
--

INSERT INTO `tab_nav` (`nav_id`, `nav_name`, `nav_ctr`, `nav_desc`, `nav_thumb`, `nav_order`, `is_admin`, `created_by`, `created_date`, `edited_by`, `edited_date`) VALUES
(2, 'Punya Ide?', 'idea', 'Buat ide baru dan lihat ide lainnya', 'shareanidea.png', 1, 0, 1, '2020-08-20 00:47:53', 1, '2020-08-20 00:47:53'),
(3, 'Persetujuan', 'approval', 'Setuji ide-ide baru', 'Approval.png', 4, 1, 1, '2020-08-20 00:48:25', 1, '2020-08-20 00:48:25'),
(4, 'Daftar Proyek', 'project', 'Daftar proyek-proyek yang sedang dikembangkan', 'ongoingprojects.png', 2, 0, 1, '2020-08-20 01:17:39', 1, '2020-08-20 01:17:39'),
(5, 'Tantangan', 'challenge', 'Unggah tantangan yang kamu miliki', 'challange.png', 5, 1, 1, '2020-08-21 01:32:17', 1, '2020-08-21 01:32:52'),
(6, 'Pengetahuan', 'knowledge', 'Bagi pengetahuan yang kamu miliki', 'pengetahuan.png', 6, 1, 1, '2020-08-21 03:21:00', 1, '2020-08-21 03:21:00'),
(7, 'Artikel Inovasi', 'article', 'Perbanyak wawasanmu tentang inovasi', 'innovation_article.png', 3, 0, 1, '2020-08-21 03:38:31', 1, '2020-08-21 03:38:31'),
(8, 'Tentang', 'about', 'Selengkapnya tentang innovationlab', 'aboutus.png', 7, 0, 1, '2020-08-22 00:26:49', 1, '2020-08-22 00:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `tab_team`
--

CREATE TABLE `tab_team` (
  `team_id` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tab_user`
--

CREATE TABLE `tab_user` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_fname` varchar(255) NOT NULL,
  `user_photo` varchar(255) NOT NULL,
  `user_auth` int(11) NOT NULL COMMENT '0 = User ; 1 = Admin ; 2 = Developer',
  `user_phone` varchar(20) NOT NULL,
  `user_instagram` varchar(255) NOT NULL,
  `div_id` varchar(10) NOT NULL,
  `dept_id` varchar(10) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_user`
--

INSERT INTO `tab_user` (`user_id`, `user_email`, `user_pass`, `user_fname`, `user_photo`, `user_auth`, `user_phone`, `user_instagram`, `div_id`, `dept_id`, `created_date`) VALUES
(9, 'varunadewi@gmail.com', '04a064748dad8aae62a0f5beba739ed6', 'Varuna', '', 1, '', '', '032', '251', '2020-08-23 12:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `tab_user_temp`
--

CREATE TABLE `tab_user_temp` (
  `user_id` int(11) NOT NULL,
  `user_nip` varchar(20) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_fname` varchar(255) NOT NULL,
  `user_dept` varchar(10) NOT NULL,
  `user_auth` int(11) NOT NULL COMMENT '0 = User; 1 = Admin; 2 = Developer',
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_user_temp`
--

INSERT INTO `tab_user_temp` (`user_id`, `user_nip`, `user_email`, `user_pass`, `user_fname`, `user_dept`, `user_auth`, `created_date`) VALUES
(1, '1010422', '', '', 'AGUNG RAKHMAWATY', '007', 0, '2020-08-18 17:15:40'),
(2, '1132278', '', '', 'AS\'AD ARDHAN ROSA ACHMAD', '007', 0, '2020-08-18 17:15:40'),
(3, '1142853', '', '', 'DHIKA SISWANTO', '007', 0, '2020-08-18 17:15:40'),
(4, '1020670', '', '', 'EVI APRIANA', '007', 0, '2020-08-18 17:15:40'),
(5, '1000192', '', '', 'FUAT SANTOSO', '007', 0, '2020-08-18 17:15:40'),
(6, '1142837', '', '', 'JOJO JONARTO', '007', 0, '2020-08-18 17:15:40'),
(7, '1020584', '', '', 'NUNIK AGUSTINAH', '007', 0, '2020-08-18 17:15:40'),
(8, '1152968', '', '', 'PUTRI NOVITASARI', '007', 0, '2020-08-18 17:15:40'),
(9, '1030782', '', '', 'RATNA PRAWITASARI', '007', 0, '2020-08-18 17:15:40'),
(10, '1051084', '', '', 'SAHAT BUDIMAN', '007', 0, '2020-08-18 17:15:40'),
(11, '1203828', '', '', 'JIHAN AISHA KHIRAHLA', '202', 0, '2020-08-18 17:15:40'),
(12, '1051190', '', '', 'AGUSTINUSYUNI ISTIANTO SUBARDI', '010', 0, '2020-08-18 17:15:40'),
(13, '1101724', '', '', 'HESTI ASRIANI', '010', 0, '2020-08-18 17:15:40'),
(14, '1163325', '', '', 'MILA VITRIA NINGSIH', '010', 0, '2020-08-18 17:15:40'),
(15, '1101687', '', '', 'MUGI YUSTAMA', '010', 0, '2020-08-18 17:15:40'),
(16, '1040867', '', '', 'ADITYA SEBASTIAN', '008', 0, '2020-08-18 17:15:40'),
(17, '1040970', '', '', 'ANTONIUS SASMITO', '008', 0, '2020-08-18 17:15:40'),
(18, '1121917', '', '', 'DWI NURHAYATI', '008', 0, '2020-08-18 17:15:40'),
(19, '1020627', '', '', 'SUNTIA PURWATI SARI', '008', 0, '2020-08-18 17:15:41'),
(20, '1051168', '', '', 'TRI MULYANINGRUM', '008', 0, '2020-08-18 17:15:41'),
(21, '1193751', '', '', 'ALTHEA ARIANI PUTRI', '013', 0, '2020-08-18 17:15:41'),
(22, '1111813', '', '', 'HENDI', '013', 0, '2020-08-18 17:15:41'),
(23, '1020533', '', '', 'HERMING OEI', '013', 0, '2020-08-18 17:15:41'),
(24, '1132248', '', '', 'LENNY NALURITA', '013', 0, '2020-08-18 17:15:41'),
(25, '1152993', '', '', 'PINANDITO TUR WICAKSONO', '013', 0, '2020-08-18 17:15:41'),
(26, '1122163', '', '', 'TEGUH WICAKSI', '013', 0, '2020-08-18 17:15:41'),
(27, '1030798', '', '', 'YANTI MARYATI', '013', 0, '2020-08-18 17:15:41'),
(28, '1152996', '', '', 'YENI AMALIA', '013', 0, '2020-08-18 17:15:41'),
(29, '1173474', '', '', 'AZALEA ANIENDITA NATASYA', '078', 0, '2020-08-18 17:15:41'),
(30, '1193756', '', '', 'ELVIRA FITRIAN ALVIONITA', '078', 0, '2020-08-18 17:15:41'),
(31, '1010366', '', '', 'FIFI ALEYDA YAHYA', '078', 0, '2020-08-18 17:15:41'),
(32, '1193772', '', '', 'HENY WAHYU TAMARA DWI LESTARI', '078', 0, '2020-08-18 17:15:41'),
(33, '1153004', '', '', 'MICHELLE CLARESTA JACOB', '078', 0, '2020-08-18 17:15:41'),
(34, '1101658', '', '', 'WIDYANINGRUM SURYA NUGRAHA', '078', 0, '2020-08-18 17:15:41'),
(35, '4193013', '', '', 'ADITYA KURNIAWAN', '203', 0, '2020-08-18 17:15:41'),
(36, '4923409', '', '', 'ALI SADIKIN', '203', 0, '2020-08-18 17:15:41'),
(37, '4110103', '', '', 'AMIR BIN MANAN', '203', 0, '2020-08-18 17:15:41'),
(38, '4193009', '', '', 'ARTYKA ANUGERAH YUNIARTI', '203', 0, '2020-08-18 17:15:41'),
(39, '4183006', '', '', 'ARUM RESTU NASTITI', '203', 0, '2020-08-18 17:15:41'),
(40, '4130605', '', '', 'BAMBANG SUPARJO', '203', 0, '2020-08-18 17:15:41'),
(41, '1193785', '', '', 'DEWI KUSUMA AYU', '203', 0, '2020-08-18 17:15:41'),
(42, '4193010', '', '', 'DINA DWI SANTIA', '203', 0, '2020-08-18 17:15:41'),
(43, '4173004', '', '', 'DONA BAHRI PUTERI', '203', 0, '2020-08-18 17:15:41'),
(44, '4091207', '', '', 'ENDAH SRI RETNO NINGRUM', '203', 0, '2020-08-18 17:15:41'),
(45, '4998149', '', '', 'ENNY SOERYANI', '203', 0, '2020-08-18 17:15:41'),
(46, '4183007', '', '', 'FAHMI ARSY PUTRA', '203', 0, '2020-08-18 17:15:41'),
(47, '4193014', '', '', 'FAHREZA UTAMA', '203', 0, '2020-08-18 17:15:41'),
(48, '4183005', '', '', 'FARAHUTAMA RIPURIO', '203', 0, '2020-08-18 17:15:41'),
(49, '4173003', '', '', 'FIANOSCA RASAT', '203', 0, '2020-08-18 17:15:41'),
(50, '4050102', '', '', 'GATOT SETIAWAN', '203', 0, '2020-08-18 17:15:41'),
(51, '4146001', '', '', 'IIN YUTI MALINDA', '203', 0, '2020-08-18 17:15:41'),
(52, '4183008', '', '', 'IMAS PERMATASARI', '203', 0, '2020-08-18 17:15:41'),
(53, '1030805', '', '', 'ISMADI', '203', 0, '2020-08-18 17:15:41'),
(54, '4993023', '', '', 'JURI HARTANI', '203', 0, '2020-08-18 17:15:41'),
(55, '49502628', '', '', 'KHOIRUL ANISA', '203', 0, '2020-08-18 17:15:41'),
(56, '4137001', '', '', 'MARETA BAYU PATRIA', '203', 0, '2020-08-18 17:15:41'),
(57, '4193011', '', '', 'MEDIANA MUTIA ALFI', '203', 0, '2020-08-18 17:15:41'),
(58, '4123001', '', '', 'NANA', '203', 0, '2020-08-18 17:15:41'),
(59, '4091201', '', '', 'NG LINA', '203', 0, '2020-08-18 17:15:41'),
(60, '4173001', '', '', 'RAHMANSYAH PUTRA', '203', 0, '2020-08-18 17:15:41'),
(61, '4161001', '', '', 'RANTI PRASASTI', '203', 0, '2020-08-18 17:15:41'),
(62, '4161002', '', '', 'ROLLY HARYANTO', '203', 0, '2020-08-18 17:15:41'),
(63, '1153202', '', '', 'SAMESTO NITISASTRO', '203', 0, '2020-08-18 17:15:41'),
(64, '4193016', '', '', 'SANDI UTAMA', '203', 0, '2020-08-18 17:15:41'),
(65, '4070303', '', '', 'SANDRA KIRANA', '203', 0, '2020-08-18 17:15:41'),
(66, '4051101', '', '', 'SARIDUNA EFFENDI', '203', 0, '2020-08-18 17:15:41'),
(67, '4193012', '', '', 'SINDY SAPUTRI', '203', 0, '2020-08-18 17:15:41'),
(68, '4920001', '', '', 'SUGIARTO (CORPORATE)', '203', 0, '2020-08-18 17:15:41'),
(69, '4130204', '', '', 'SUSANTO WIJAYA', '203', 0, '2020-08-18 17:15:41'),
(70, '1000123', '', '', 'SYAFRIWAL', '203', 0, '2020-08-18 17:15:41'),
(71, '4150804', '', '', 'UBAEDI', '203', 0, '2020-08-18 17:15:41'),
(72, '4193015', '', '', 'WILLY DOAN HUTABARAT', '203', 0, '2020-08-18 17:15:41'),
(73, '1153090', '', '', 'ARVI RISTIANI PRATAMI', '274', 0, '2020-08-18 17:15:41'),
(74, '1091594', '', '', 'DENI FAUZAN SAPUTRA', '274', 0, '2020-08-18 17:15:41'),
(75, '1142875', '', '', 'GENTHA PRAYOGGIE WICAKSANA', '274', 0, '2020-08-18 17:15:41'),
(76, '1142826', '', '', 'LENI ANGGRAENI', '274', 0, '2020-08-18 17:15:41'),
(77, '1153034', '', '', 'M. DAMAR YUDHISTIRA', '274', 0, '2020-08-18 17:15:41'),
(78, '1153000', '', '', 'MARGARET PUSPITARINI', '274', 0, '2020-08-18 17:15:41'),
(79, '1142696', '', '', 'RIZKY SAPUTRA SORMIN', '274', 0, '2020-08-18 17:15:41'),
(80, '1183642', '', '', 'WIN MUHAMMAD ADAB', '274', 0, '2020-08-18 17:15:41'),
(81, '1193761', '', '', 'ABDEL RADZEQHY SHAFATHRA', '219', 0, '2020-08-18 17:15:41'),
(82, '1173450', '', '', 'BISMAR RAMADAN', '219', 0, '2020-08-18 17:15:41'),
(83, '1183636', '', '', 'DESKA MAHARDIKA PUTRI', '219', 0, '2020-08-18 17:15:41'),
(84, '1183540', '', '', 'FENIA ADRIATI', '219', 0, '2020-08-18 17:15:41'),
(85, '1173473', '', '', 'INDRA ARIFIN', '219', 0, '2020-08-18 17:15:41'),
(86, '1111896', '', '', 'M. IRFAN FIRDAUZI', '219', 0, '2020-08-18 17:15:41'),
(87, '1193708', '', '', 'VALENTINA DIAN LARASATI', '219', 0, '2020-08-18 17:15:41'),
(88, '1183694', '', '', 'ANNISA ESTI QODARI', '234', 0, '2020-08-18 17:15:41'),
(89, '1132505', '', '', 'DENY TRESNAWAN BUDIMAN', '234', 0, '2020-08-18 17:15:41'),
(90, '1193775', '', '', 'DHENTY FEBRINA SAHARA', '234', 0, '2020-08-18 17:15:41'),
(91, '1142884', '', '', 'GREGORIUS YOHANDI', '234', 0, '2020-08-18 17:15:41'),
(92, '1132606', '', '', 'M. RIZAL', '234', 0, '2020-08-18 17:15:41'),
(93, '1173399', '', '', 'PUTRI ANNISA UTAMI', '234', 0, '2020-08-18 17:15:41'),
(94, '1152931', '', '', 'SYAHMAIDAR', '234', 0, '2020-08-18 17:15:41'),
(95, '1091622', '', '', 'JATI SAVITRI SEKARGATI', '275', 0, '2020-08-18 17:15:41'),
(96, '1010399', '', '', 'GALUH DWI ANGGOROWATI', '266', 0, '2020-08-18 17:15:41'),
(97, '1132588', '', '', 'HARI KUSYANTO', '266', 0, '2020-08-18 17:15:41'),
(98, '6221505', '', '', 'AGUS RAMDAN', '102', 0, '2020-08-18 17:15:41'),
(99, '6231552', '', '', 'BESTINA VIRGIATI', '102', 0, '2020-08-18 17:15:41'),
(100, '1193819', '', '', 'DANIEL RUDI HARYANTO', '102', 0, '2020-08-18 17:15:41'),
(101, '6231728', '', '', 'EKO REJOSO PRABBOWO', '102', 0, '2020-08-18 17:15:41'),
(102, '6231694', '', '', 'ERI KRISTIANA', '102', 0, '2020-08-18 17:15:41'),
(103, '6231857', '', '', 'GILANG AKBAR NOVIANSYAH', '102', 0, '2020-08-18 17:15:41'),
(104, '1111764', '', '', 'TRIA HANDANING', '102', 0, '2020-08-18 17:15:41'),
(105, '6231598', '', '', 'VIRGIANI SALAM', '102', 0, '2020-08-18 17:15:41'),
(106, '1132370', '', '', 'ADHITIYA DWI YULIANTO', '019', 0, '2020-08-18 17:15:41'),
(107, '1040906', '', '', 'ADHITYA BRAMANDITA', '019', 0, '2020-08-18 17:15:41'),
(108, '1000050', '', '', 'ADITYA PRATAMA', '019', 0, '2020-08-18 17:15:41'),
(109, '1010416', '', '', 'ADY SUPRIYANTO', '019', 0, '2020-08-18 17:15:41'),
(110, '1163296', '', '', 'AGUNG NUGRAHA', '019', 0, '2020-08-18 17:15:41'),
(111, '1132368', '', '', 'ALDILA', '019', 0, '2020-08-18 17:15:41'),
(112, '1193735', '', '', 'AWAN SETIAWAN', '019', 0, '2020-08-18 17:15:41'),
(113, '1091600', '', '', 'BAGUS YUS YULIANTO', '019', 0, '2020-08-18 17:15:41'),
(114, '1153212', '', '', 'BAYU ADI SAPUTRO', '019', 0, '2020-08-18 17:15:41'),
(115, '1051106', '', '', 'BERNAT FERRY FERDINAND', '019', 0, '2020-08-18 17:15:41'),
(116, '1122102', '', '', 'DIAN RAHMA WIDIYASTUTI', '019', 0, '2020-08-18 17:15:41'),
(117, '1153206', '', '', 'DWIKO JANWAR', '019', 0, '2020-08-18 17:15:41'),
(118, '1020667', '', '', 'DWINANTO LEGIASMORO', '019', 0, '2020-08-18 17:15:41'),
(119, '1101745', '', '', 'EKA AJI BACHTIAR', '019', 0, '2020-08-18 17:15:41'),
(120, '1132365', '', '', 'ENDRO TRI NUGROHO', '019', 0, '2020-08-18 17:15:41'),
(121, '1132366', '', '', 'GREGORIUS WAHYU ADI NUGRAHA', '019', 0, '2020-08-18 17:15:41'),
(122, '1153209', '', '', 'INNE WULAN SARI', '019', 0, '2020-08-18 17:15:41'),
(123, '1071357', '', '', 'IRWAN SETIAWAN', '019', 0, '2020-08-18 17:15:41'),
(124, '1000243', '', '', 'ISMET NOVIANDI', '019', 0, '2020-08-18 17:15:41'),
(125, '1101747', '', '', 'ISYARAHMAN', '019', 0, '2020-08-18 17:15:41'),
(126, '1000022', '', '', 'JAJA KARJAYA', '019', 0, '2020-08-18 17:15:41'),
(127, '1020553', '', '', 'JUNI LESTARI', '019', 0, '2020-08-18 17:15:41'),
(128, '1153208', '', '', 'M. ARIFIN', '019', 0, '2020-08-18 17:15:41'),
(129, '1111872', '', '', 'PRADITYO AGUS ISPITANTO', '019', 0, '2020-08-18 17:15:41'),
(130, '1101752', '', '', 'RIO RONALDI', '019', 0, '2020-08-18 17:15:41'),
(131, '1010434', '', '', 'SALIM FUAEDI', '019', 0, '2020-08-18 17:15:41'),
(132, '1101753', '', '', 'SAMSUL ARIFIN', '019', 0, '2020-08-18 17:15:41'),
(133, '1040910', '', '', 'SUPRIADI (CER)', '019', 0, '2020-08-18 17:15:41'),
(134, '1132369', '', '', 'YAN ABSHAR SUMARYONO', '019', 0, '2020-08-18 17:15:41'),
(135, '1193721', '', '', 'YULI ALYA', '019', 0, '2020-08-18 17:15:41'),
(136, '1122128', '', '', 'AWAN PANGGIH NUGROHO', '227', 0, '2020-08-18 17:15:41'),
(137, '1183599', '', '', 'DEDE DARMAWAN', '227', 0, '2020-08-18 17:15:41'),
(138, '1173455', '', '', 'EUIS RUMIRIS', '227', 0, '2020-08-18 17:15:41'),
(139, '4164002', '', '', 'NGAKAN MADE JAYENDRIA', '227', 0, '2020-08-18 17:15:41'),
(140, '1183561', '', '', 'ARGIAN BARSANY HARUMAN', '229', 0, '2020-08-18 17:15:41'),
(141, '1051065', '', '', 'EDI YUSMAN', '229', 0, '2020-08-18 17:15:41'),
(142, '1121904', '', '', 'GHANI HAFIYYANTO', '229', 0, '2020-08-18 17:15:41'),
(143, '1173460', '', '', 'INDRA LESMANA', '229', 0, '2020-08-18 17:15:41'),
(144, '1193728', '', '', 'RENITA AYU NINGTYAS', '229', 0, '2020-08-18 17:15:41'),
(145, '1020558', '', '', 'ABDUL ROJIM', '006', 0, '2020-08-18 17:15:41'),
(146, '1020621', '', '', 'ADE TATI ROHATI', '006', 0, '2020-08-18 17:15:41'),
(147, '1142734', '', '', 'ANDRI PUTRI DIANTI', '006', 0, '2020-08-18 17:15:41'),
(148, '1152998', '', '', 'BESTARANI MERTISARI', '006', 0, '2020-08-18 17:15:41'),
(149, '1040965', '', '', 'CAROLINE OCTAVIA', '006', 0, '2020-08-18 17:15:41'),
(150, '1040941', '', '', 'CHRISTINA LILY KUSUMA A', '006', 0, '2020-08-18 17:15:41'),
(151, '1051147', '', '', 'CLEMENS SETIADI', '006', 0, '2020-08-18 17:15:41'),
(152, '1132509', '', '', 'DESANDRI FITRI RIZQIA', '006', 0, '2020-08-18 17:15:41'),
(153, '1193806', '', '', 'DWI RETNO ARIANTY', '006', 0, '2020-08-18 17:15:41'),
(154, '1020570', '', '', 'FERDIAN ZAMAN', '006', 0, '2020-08-18 17:15:41'),
(155, '1122164', '', '', 'HENRY SIRAIT', '006', 0, '2020-08-18 17:15:41'),
(156, '1051048', '', '', 'HERU PRAMONO', '006', 0, '2020-08-18 17:15:41'),
(157, '1142801', '', '', 'KLARA PARAMITASARI', '006', 0, '2020-08-18 17:15:41'),
(158, '1173443', '', '', 'KOMALA SARI', '006', 0, '2020-08-18 17:15:41'),
(159, '1111762', '', '', 'NADIYAH', '006', 0, '2020-08-18 17:15:41'),
(160, '1020543', '', '', 'SULASTRI', '006', 0, '2020-08-18 17:15:41'),
(161, '1132510', '', '', 'SYURAIH MIGUNANI', '006', 0, '2020-08-18 17:15:41'),
(162, '1051094', '', '', 'THERESIA ENDRIYASTUTI', '006', 0, '2020-08-18 17:15:41'),
(163, '5111489', '', '', 'ADANG SUPRIYADI SAPUTRA', '261', 0, '2020-08-18 17:15:41'),
(164, '1173482', '', '', 'ADITYA SEFILAH PUTRA', '261', 0, '2020-08-18 17:15:41'),
(165, '5080174', '', '', 'ALI HAMBALI', '261', 0, '2020-08-18 17:15:41'),
(166, '1020471', '', '', 'ALI HUSIN', '261', 0, '2020-08-18 17:15:41'),
(167, '1040939', '', '', 'AVIT RUSIANTO', '261', 0, '2020-08-18 17:15:41'),
(168, '5121500', '', '', 'BAMBANG SUSILO', '261', 0, '2020-08-18 17:15:41'),
(169, '1111895', '', '', 'CARRERA PATRIA B', '261', 0, '2020-08-18 17:15:41'),
(170, '5081021', '', '', 'DICKY PRIGUNADI', '261', 0, '2020-08-18 17:15:41'),
(171, '6231726', '', '', 'DJUDJU DJUHAENI', '261', 0, '2020-08-18 17:15:41'),
(172, '5111476', '', '', 'EHZA HARMI SAPUTRA', '261', 0, '2020-08-18 17:15:41'),
(173, '1051043', '', '', 'FAHMI IRFANDI', '261', 0, '2020-08-18 17:15:41'),
(174, '1010339', '', '', 'FAJAR SULISTYO', '261', 0, '2020-08-18 17:15:41'),
(175, '5121506', '', '', 'FERIYANSYAH', '261', 0, '2020-08-18 17:15:41'),
(176, '5121503', '', '', 'HADI RIYADI', '261', 0, '2020-08-18 17:15:41'),
(177, '5081025', '', '', 'HARFAN', '261', 0, '2020-08-18 17:15:41'),
(178, '5121563', '', '', 'HERI HAMZAH', '261', 0, '2020-08-18 17:15:41'),
(179, '1132527', '', '', 'HILMAN SYARIF', '261', 0, '2020-08-18 17:15:41'),
(180, '1020536', '', '', 'JUNAEDI (A)', '261', 0, '2020-08-18 17:15:41'),
(181, '1040914', '', '', 'LULIYATUR ROHMAN', '261', 0, '2020-08-18 17:15:41'),
(182, '5111491', '', '', 'MUKHLIS AHMAD', '261', 0, '2020-08-18 17:15:41'),
(183, '5111362', '', '', 'NIRMAN', '261', 0, '2020-08-18 17:15:41'),
(184, '1122022', '', '', 'OLSETER HEIND WONMALY', '261', 0, '2020-08-18 17:15:41'),
(185, '5080181', '', '', 'RACHMAT HIDAYAT', '261', 0, '2020-08-18 17:15:41'),
(186, '1163278', '', '', 'RAZI', '261', 0, '2020-08-18 17:15:41'),
(187, '1132242', '', '', 'RISA RANUM SARI', '261', 0, '2020-08-18 17:15:41'),
(188, '1132353', '', '', 'RIZKY RAHADIYAN', '261', 0, '2020-08-18 17:15:41'),
(189, '1000277', '', '', 'SUGONO', '261', 0, '2020-08-18 17:15:41'),
(190, '5121499', '', '', 'SUHADI (GA)', '261', 0, '2020-08-18 17:15:41'),
(191, '1051150', '', '', 'TEDY ISKANDAR', '261', 0, '2020-08-18 17:15:41'),
(192, '5121505', '', '', 'TRIONO', '261', 0, '2020-08-18 17:15:41'),
(193, '5121502', '', '', 'TRIYANTO', '261', 0, '2020-08-18 17:15:41'),
(194, '5121507', '', '', 'TUGINO', '261', 0, '2020-08-18 17:15:41'),
(195, '1142761', '', '', 'WALINO', '261', 0, '2020-08-18 17:15:41'),
(196, '1010335', '', '', 'ACHMAD RISMUN', '262', 0, '2020-08-18 17:15:41'),
(197, '1020559', '', '', 'ANDY MAULANI', '262', 0, '2020-08-18 17:15:41'),
(198, '1061309', '', '', 'BOYKE SYAHRUL', '262', 0, '2020-08-18 17:15:41'),
(199, '1000066', '', '', 'BUDIMAN', '262', 0, '2020-08-18 17:15:41'),
(200, '1183604', '', '', 'CITRA RIZQI AMANDA', '262', 0, '2020-08-18 17:15:41'),
(201, '1020630', '', '', 'ELDRIN SIMANJUNTAK', '262', 0, '2020-08-18 17:15:41'),
(202, '1030705', '', '', 'HERLINDA', '262', 0, '2020-08-18 17:15:41'),
(203, '1040964', '', '', 'IRAWAN MULYANTO', '262', 0, '2020-08-18 17:15:41'),
(204, '1000043', '', '', 'KOESWANTO', '262', 0, '2020-08-18 17:15:41'),
(205, '1142724', '', '', 'MIKNAF', '262', 0, '2020-08-18 17:15:41'),
(206, '1173413', '', '', 'MUHAMMAD ILHAM AKBAR', '262', 0, '2020-08-18 17:15:41'),
(207, '1081523', '', '', 'RIZKY LEONUGRAHA', '262', 0, '2020-08-18 17:15:41'),
(208, '1030740', '', '', 'RUSMIN NURYADIN', '262', 0, '2020-08-18 17:15:41'),
(209, '1010382', '', '', 'SYAIFUL RIZAL', '262', 0, '2020-08-18 17:15:41'),
(210, '1163321', '', '', 'YOGI ABDI PRIMA', '262', 0, '2020-08-18 17:15:41'),
(211, '1122090', '', '', 'ANDI ANWAR IKHRAM', '198', 0, '2020-08-18 17:15:41'),
(212, '1122082', '', '', 'BAYU AJIE ARIBOWO', '198', 0, '2020-08-18 17:15:41'),
(213, '1121997', '', '', 'BAYU YANU WIRANTO', '198', 0, '2020-08-18 17:15:41'),
(214, '1163298', '', '', 'BIANCA VELLIANIE', '198', 0, '2020-08-18 17:15:41'),
(215, '1091599', '', '', 'DANNI FAIZAL MOCHAMAD', '198', 0, '2020-08-18 17:15:41'),
(216, '1153026', '', '', 'FATHAN ARIEF H', '198', 0, '2020-08-18 17:15:41'),
(217, '1193814', '', '', 'HAFIZ SUDWICAKSONO PRADITYA', '198', 0, '2020-08-18 17:15:41'),
(218, '1153013', '', '', 'M. AVIAN DWI CAHYO', '198', 0, '2020-08-18 17:15:42'),
(219, '1142859', '', '', 'M. IKBAL', '198', 0, '2020-08-18 17:15:42'),
(220, '1122070', '', '', 'M. ROYANDI RAMADHAN', '198', 0, '2020-08-18 17:15:42'),
(221, '1122091', '', '', 'RONI APRIANTO', '198', 0, '2020-08-18 17:15:42'),
(222, '1132628', '', '', 'SATRIYO WIDIYANTO', '198', 0, '2020-08-18 17:15:42'),
(223, '1081539', '', '', 'SEFRI HIDAYAT', '198', 0, '2020-08-18 17:15:42'),
(224, '1132605', '', '', 'SUCI TILAWATI', '198', 0, '2020-08-18 17:15:42'),
(225, '1122165', '', '', 'TATY NUR FITRIANI', '198', 0, '2020-08-18 17:15:42'),
(226, 'A150472', '', '', 'DIMAS SURYANTARA', '148', 0, '2020-08-18 17:15:42'),
(227, '1111801', '', '', 'ADRIANTO MACHRIBIE REKSOHADI P', '277', 0, '2020-08-18 17:15:42'),
(228, '1121967', '', '', 'AGUS GUNA DIATMIKA', '277', 0, '2020-08-18 17:15:42'),
(229, '1020459', '', '', 'AGUS PRAMONO', '277', 0, '2020-08-18 17:15:42'),
(230, '1173472', '', '', 'ANASTASHA YUSTIA NURAINI', '277', 0, '2020-08-18 17:15:42'),
(231, '1010423', '', '', 'ANY JUWITA', '277', 0, '2020-08-18 17:15:42'),
(232, '1173369', '', '', 'ATTOK RINTAWAN', '277', 0, '2020-08-18 17:15:42'),
(233, '1111810', '', '', 'BENNY ADY CHANDRA', '277', 0, '2020-08-18 17:15:42'),
(234, '1142756', '', '', 'BERLIN DEWAN FRIDIARY', '277', 0, '2020-08-18 17:15:42'),
(235, '1111809', '', '', 'CECILIA NEORITA NURYATI', '277', 0, '2020-08-18 17:15:42'),
(236, '1000259', '', '', 'DADI R. SUMAATMADJA', '277', 0, '2020-08-18 17:15:42'),
(237, '1040937', '', '', 'DIDIK SURYANTORO', '277', 0, '2020-08-18 17:15:42'),
(238, '1111808', '', '', 'DR. CHAIRUDIN', '277', 0, '2020-08-18 17:15:42'),
(239, '1111815', '', '', 'DR. D. AMIDI', '277', 0, '2020-08-18 17:15:42'),
(240, '1111811', '', '', 'DR. DHARMADI AGUS', '277', 0, '2020-08-18 17:15:42'),
(241, '1071365', '', '', 'EDI HIDAYAT', '277', 0, '2020-08-18 17:15:42'),
(242, '1163292', '', '', 'ENDANG PRIHATIN', '277', 0, '2020-08-18 17:15:42'),
(243, '1010409', '', '', 'FANNY FIRAWATY', '277', 0, '2020-08-18 17:15:42'),
(244, '1122066', '', '', 'FIRDAUS DAYAT', '277', 0, '2020-08-18 17:15:42'),
(245, '1010433', '', '', 'GUNARDI MULYAWAN', '277', 0, '2020-08-18 17:15:42'),
(246, '1173366', '', '', 'HENDI WIJANARKO', '277', 0, '2020-08-18 17:15:42'),
(247, '1183558', '', '', 'IKE PURWANINGSIH', '277', 0, '2020-08-18 17:15:42'),
(248, '1173365', '', '', 'IKHWAN SAEFULLOH', '277', 0, '2020-08-18 17:15:42'),
(249, '1040891', '', '', 'INA ARDIANTI DEWI HARINI', '277', 0, '2020-08-18 17:15:42'),
(250, '1061259', '', '', 'JEMMY BAGOTA', '277', 0, '2020-08-18 17:15:42'),
(251, '1000005', '', '', 'LESTARY LUHUR', '277', 0, '2020-08-18 17:15:42'),
(252, '1000254', '', '', 'MAHFUDIN', '277', 0, '2020-08-18 17:15:42'),
(253, '1111806', '', '', 'MILA TRIANA', '277', 0, '2020-08-18 17:15:42'),
(254, '1163269', '', '', 'MINA TUGAMINA NINGRUM', '277', 0, '2020-08-18 17:15:42'),
(255, '1010343', '', '', 'MUCHTAR MUKIMIN', '277', 0, '2020-08-18 17:15:42'),
(256, '1101646', '', '', 'NUNIK WIDARTY', '277', 0, '2020-08-18 17:15:42'),
(257, '1163234', '', '', 'PRIORITUS YOTTO PUTERA', '277', 0, '2020-08-18 17:15:42'),
(258, '1173367', '', '', 'REZA SWASONO SARSITO', '277', 0, '2020-08-18 17:15:42'),
(259, '1193707', '', '', 'RISA YULIYANTI', '277', 0, '2020-08-18 17:15:42'),
(260, '1193808', '', '', 'RIZA MAULUDDIN', '277', 0, '2020-08-18 17:15:42'),
(261, '1040825', '', '', 'RONALD SIMON TASLIMAN', '277', 0, '2020-08-18 17:15:42'),
(262, '1193704', '', '', 'RUSTAN', '277', 0, '2020-08-18 17:15:42'),
(263, '1173368', '', '', 'SETYORINI', '277', 0, '2020-08-18 17:15:42'),
(264, '1081475', '', '', 'SJAICHUL ANWAR', '277', 0, '2020-08-18 17:15:42'),
(265, '1081515', '', '', 'SURYO PRATOMO', '277', 0, '2020-08-18 17:15:42'),
(266, '1000268', '', '', 'SWASTI ASTRA', '277', 0, '2020-08-18 17:15:42'),
(267, '1000195', '', '', 'SYAH SABUR', '277', 0, '2020-08-18 17:15:42'),
(268, '1010448', '', '', 'YUNANTO HARIANDJA', '277', 0, '2020-08-18 17:15:42'),
(269, '1183652', '', '', 'ARDHIKA DWI KURNIAPUTRA', '273', 0, '2020-08-18 17:15:42'),
(270, '1173426', '', '', 'ARIE', '273', 0, '2020-08-18 17:15:42'),
(271, '1173360', '', '', 'DHENIM PRIANKA', '273', 0, '2020-08-18 17:15:42'),
(272, '1183649', '', '', 'GARRY SUBEKHI', '273', 0, '2020-08-18 17:15:42'),
(273, '1000270', '', '', 'HADI WINARTO', '273', 0, '2020-08-18 17:15:42'),
(274, '1142809', '', '', 'M. REZA MAHARDDHIKA', '273', 0, '2020-08-18 17:15:42'),
(275, '0140610158', '', '', 'ACHMAD HIRAWAN', '282', 0, '2020-08-18 17:15:42'),
(276, '0141119001', '', '', 'ADE RAHMAN NASUTION', '282', 0, '2020-08-18 17:15:42'),
(277, '0140507105', '', '', 'ADI SUSWANTO', '282', 0, '2020-08-18 17:15:42'),
(278, '0980918001', '', '', 'AGUS ANTONI', '282', 0, '2020-08-18 17:15:42'),
(279, '0100108163', '', '', 'AGUS MUFTI HIDAYAT', '282', 0, '2020-08-18 17:15:42'),
(280, '0980418001', '', '', 'AHMAD FACHRI', '282', 0, '2020-08-18 17:15:42'),
(281, '0980710002', '', '', 'ALFREDDANUS MANURUNG', '282', 0, '2020-08-18 17:15:42'),
(282, '0980412001', '', '', 'ALIYUDIN', '282', 0, '2020-08-18 17:15:42'),
(283, '0980700127', '', '', 'ANANTA RINA', '282', 0, '2020-08-18 17:15:42'),
(284, '0980719002', '', '', 'ANDI', '282', 0, '2020-08-18 17:15:42'),
(285, '0980903005', '', '', 'ANDI APRIANTO', '282', 0, '2020-08-18 17:15:42'),
(286, '0981113001', '', '', 'ANDRIYANSYAH', '282', 0, '2020-08-18 17:15:42'),
(287, '0980320002', '', '', 'ANI KHOIRONI', '282', 0, '2020-08-18 17:15:42'),
(288, '0141196020', '', '', 'ANWAR ILHAM', '282', 0, '2020-08-18 17:15:42'),
(289, '0980118001', '', '', 'ARIANTO', '282', 0, '2020-08-18 17:15:42'),
(290, '0060816348', '', '', 'AULIYA RAHMAT', '282', 0, '2020-08-18 17:15:42'),
(291, '0060802008', '', '', 'BUDI SANTOSO', '282', 0, '2020-08-18 17:15:42'),
(292, 'DWHO098001', '', '', 'DEBY ASROFAH', '282', 0, '2020-08-18 17:15:42'),
(293, '0980412002', '', '', 'DIAN PUSPITASARI', '282', 0, '2020-08-18 17:15:42'),
(294, '0980211004', '', '', 'DIDIWIRIA SALIM', '282', 0, '2020-08-18 17:15:42'),
(295, '0550603031', '', '', 'DODI JAELANI', '282', 0, '2020-08-18 17:15:42'),
(296, '0980220004', '', '', 'EKO PRASETYO', '282', 0, '2020-08-18 17:15:42'),
(297, '0141009147', '', '', 'EKO SUSILO', '282', 0, '2020-08-18 17:15:42'),
(298, '0980713002', '', '', 'ENDANG PUJI WAHYUNI', '282', 0, '2020-08-18 17:15:42'),
(299, '0980615003', '', '', 'EPA RAHMADANI KOTO', '282', 0, '2020-08-18 17:15:42'),
(300, '0140607108', '', '', 'EVA SRIMULINA BANGUN', '282', 0, '2020-08-18 17:15:42'),
(301, '0980415001', '', '', 'FAHLEVY ZULFIKAR', '282', 0, '2020-08-18 17:15:42'),
(302, '0141207116', '', '', 'FERRA CHARSANI HAFIL', '282', 0, '2020-08-18 17:15:42'),
(303, '0980403004', '', '', 'HARIYADI', '282', 0, '2020-08-18 17:15:42'),
(304, '0980709003', '', '', 'HENDRA JAYA', '282', 0, '2020-08-18 17:15:42'),
(305, '0980319003', '', '', 'HERRY PURNOMO', '282', 0, '2020-08-18 17:15:42'),
(306, '0980909001', '', '', 'HUMAN SUDIANTORO PRAYOGO', '282', 0, '2020-08-18 17:15:42'),
(307, '0140309133', '', '', 'I PUTU GEDE WIRAWAN', '282', 0, '2020-08-18 17:15:42'),
(308, '0980299059', '', '', 'IBRAHIM LATIEF', '282', 0, '2020-08-18 17:15:42'),
(309, '0140498048', '', '', 'IGNATIUS BUDIMAN', '282', 0, '2020-08-18 17:15:42'),
(310, '0980109002', '', '', 'INDRA CHAIRUL SALEH', '282', 0, '2020-08-18 17:15:42'),
(311, '0980615004', '', '', 'INDRIYANI RUSTIYANA PERM', '282', 0, '2020-08-18 17:15:42'),
(312, '0980220003', '', '', 'IWAN FACHRUROZI', '282', 0, '2020-08-18 17:15:42'),
(313, '0980304004', '', '', 'KOESMININGSIH', '282', 0, '2020-08-18 17:15:42'),
(314, '0981001168', '', '', 'LIU CAI IE', '282', 0, '2020-08-18 17:15:42'),
(315, '0980120001', '', '', 'LUSY', '282', 0, '2020-08-18 17:15:42'),
(316, '0980319002', '', '', 'META LIMESA', '282', 0, '2020-08-18 17:15:42'),
(317, '0981119805', '', '', 'MOCH. SYAFEI SOEMARTA', '282', 0, '2020-08-18 17:15:42'),
(318, '0140997054', '', '', 'MUH. ABDUL AZAM', '282', 0, '2020-08-18 17:15:42'),
(319, '0980916002', '', '', 'MUHAMMAD ALFIAN', '282', 0, '2020-08-18 17:15:42'),
(320, '0980418002', '', '', 'MUHAMMAD FACHRUDIN', '282', 0, '2020-08-18 17:15:42'),
(321, '0980817001', '', '', 'NADIRA SAKTIA ALI', '282', 0, '2020-08-18 17:15:42'),
(322, '0980320001', '', '', 'NAOMI APRILIA SARAH GULT', '282', 0, '2020-08-18 17:15:42'),
(323, '0140796003', '', '', 'NAULIL AUTHAR', '282', 0, '2020-08-18 17:15:42'),
(324, 'DWHO098002', '', '', 'NURLAILA SANGAJI', '282', 0, '2020-08-18 17:15:42'),
(325, '0981004002', '', '', 'NUSYE EDITHE ZAMSIAR', '282', 0, '2020-08-18 17:15:42'),
(326, '0140512178', '', '', 'R. AFRISIANDI', '282', 0, '2020-08-18 17:15:42'),
(327, '0980220001', '', '', 'R. SISKA YUSTISIA', '282', 0, '2020-08-18 17:15:42'),
(328, '0980519001', '', '', 'REGITA DWI APRILIAN SYAH', '282', 0, '2020-08-18 17:15:42'),
(329, '0980911001', '', '', 'RITA SAHARA', '282', 0, '2020-08-18 17:15:42'),
(330, '0980417001', '', '', 'RONGGO SULISTYO', '282', 0, '2020-08-18 17:15:42'),
(331, '0980411003', '', '', 'ROSA TITISUNDARI', '282', 0, '2020-08-18 17:15:42'),
(332, '0980719003', '', '', 'SABTIO JANUAR', '282', 0, '2020-08-18 17:15:42'),
(333, '0980206001', '', '', 'SAMSURIO SIRINGO RINGO', '282', 0, '2020-08-18 17:15:42'),
(334, '0150310870', '', '', 'SAUT EMMANUEL HUTAPEA', '282', 0, '2020-08-18 17:15:42'),
(335, '0981115002', '', '', 'SILVANIA MARYANTI', '282', 0, '2020-08-18 17:15:42'),
(336, '0551014001', '', '', 'SOBARI', '282', 0, '2020-08-18 17:15:42'),
(337, '0981219002', '', '', 'SOMAT', '282', 0, '2020-08-18 17:15:42'),
(338, '0040895002', '', '', 'SRI MARHAENI', '282', 0, '2020-08-18 17:15:42'),
(339, '0981214001', '', '', 'SUCIONO BUDIAN', '282', 0, '2020-08-18 17:15:42'),
(340, '0140897002', '', '', 'SUGENG TJAHYO PURNOMO', '282', 0, '2020-08-18 17:15:42'),
(341, '0980108001', '', '', 'SUGI HARDANTO', '282', 0, '2020-08-18 17:15:42'),
(342, '0980600111', '', '', 'SUGIANTO', '282', 0, '2020-08-18 17:15:42'),
(343, '0980797037', '', '', 'SUHANDA', '282', 0, '2020-08-18 17:15:42'),
(344, '0980300103', '', '', 'SUPRAYITNO', '282', 0, '2020-08-18 17:15:42'),
(345, '0981112006', '', '', 'SUPRIYANTO', '282', 0, '2020-08-18 17:15:42'),
(346, '0030033011', '', '', 'SURADI', '282', 0, '2020-08-18 17:15:42'),
(347, '0981015002', '', '', 'TEGUH PURWO WASTIANTO', '282', 0, '2020-08-18 17:15:42'),
(348, '0980211002', '', '', 'TRINI SUMARTINI DRA', '282', 0, '2020-08-18 17:15:42'),
(349, '0980914001', '', '', 'URI HARDIYAN', '282', 0, '2020-08-18 17:15:42'),
(350, '0980419001', '', '', 'VINCENSIUS DESTA GALANG', '282', 0, '2020-08-18 17:15:42'),
(351, '0980309005', '', '', 'VITRI', '282', 0, '2020-08-18 17:15:42'),
(352, '0980903077', '', '', 'WALYANTO', '282', 0, '2020-08-18 17:15:42'),
(353, '0980304005', '', '', 'WEBER GUNTER', '282', 0, '2020-08-18 17:15:42'),
(354, '0980719001', '', '', 'WIDYA EKA PUTRA', '282', 0, '2020-08-18 17:15:42'),
(355, '0140509138', '', '', 'Y. MARDIYANTO', '282', 0, '2020-08-18 17:15:42'),
(356, '0980718001', '', '', 'ZULKIFLY KIAY', '282', 0, '2020-08-18 17:15:42'),
(357, '1132376', '', '', 'AFRIANDHY ARDHY SAPUTRA', '218', 0, '2020-08-18 17:15:42'),
(358, '1142744', '', '', 'HAFIZ FADLY AKBAR', '218', 0, '2020-08-18 17:15:42'),
(359, '1122027', '', '', 'JOKO PURNOMO', '218', 0, '2020-08-18 17:15:42'),
(360, '1122136', '', '', 'NICHOLAUS OLA MALUN', '218', 0, '2020-08-18 17:15:43'),
(361, '1193726', '', '', 'NURUL NOVIANA RAFIKA', '218', 0, '2020-08-18 17:15:43'),
(362, '1132375', '', '', 'RIDZKY HIMAWAN', '218', 0, '2020-08-18 17:15:43'),
(363, '1132559', '', '', 'WANDY HANYUDHA', '218', 0, '2020-08-18 17:15:43'),
(364, '1071440', '', '', 'WASPAN ARIFIN', '218', 0, '2020-08-18 17:15:43'),
(365, '1193711', '', '', 'ANDI AZRUL', '171', 0, '2020-08-18 17:15:43'),
(366, '1111884', '', '', 'DWINOTO HANGGRIYONO', '171', 0, '2020-08-18 17:15:43'),
(367, '1183600', '', '', 'GANGSAR WIDIYANTO', '171', 0, '2020-08-18 17:15:43'),
(368, '1153021', '', '', 'LUKMAN NULHAKIM', '171', 0, '2020-08-18 17:15:43'),
(369, '1132551', '', '', 'M. ALI ARAFAT', '171', 0, '2020-08-18 17:15:43'),
(370, '1153112', '', '', 'M. FARID', '171', 0, '2020-08-18 17:15:43'),
(371, '1132561', '', '', 'YOGA EKA ARI PERMANA', '171', 0, '2020-08-18 17:15:43'),
(372, '1020674', '', '', 'ACHMAD RIZKY', '209', 0, '2020-08-18 17:15:43'),
(373, '1183583', '', '', 'AGUNG BINSAR DAMANIK', '209', 0, '2020-08-18 17:15:43'),
(374, '1183584', '', '', 'AGUS MAULANA', '209', 0, '2020-08-18 17:15:43'),
(375, '1173458', '', '', 'ALDIKA AIDIL PUTRA', '209', 0, '2020-08-18 17:15:43'),
(376, '1081495', '', '', 'ALI WACHYUDIN', '209', 0, '2020-08-18 17:15:43'),
(377, '1142728', '', '', 'AMRIYADI ROSIDI', '209', 0, '2020-08-18 17:15:43'),
(378, '1183684', '', '', 'ANDRIAN WAHYU PAHLEVI', '209', 0, '2020-08-18 17:15:43'),
(379, '1203836', '', '', 'ANGGA EMIRISA PUTRA', '209', 0, '2020-08-18 17:15:43'),
(380, '1173466', '', '', 'ARDIAN ARIEF', '209', 0, '2020-08-18 17:15:43'),
(381, '1111894', '', '', 'ARIF PURWADI', '209', 0, '2020-08-18 17:15:43'),
(382, '1183650', '', '', 'ARIF SETYA BUDI', '209', 0, '2020-08-18 17:15:43'),
(383, '1163301', '', '', 'ASEP SOLIHIN', '209', 0, '2020-08-18 17:15:43'),
(384, '1061298', '', '', 'AYUB BAYU MURTI', '209', 0, '2020-08-18 17:15:43'),
(385, '1132255', '', '', 'BIMA ARIFIANTO', '209', 0, '2020-08-18 17:15:43'),
(386, '1153049', '', '', 'BUDI ILHAM MUKHLISIN', '209', 0, '2020-08-18 17:15:43'),
(387, '1101717', '', '', 'DENI NURDIANA', '209', 0, '2020-08-18 17:15:43'),
(388, '1030743', '', '', 'DWI PUDJIASTUTI', '209', 0, '2020-08-18 17:15:43'),
(389, '1193738', '', '', 'FIKRI HAFIZ FADHILLAH', '209', 0, '2020-08-18 17:15:43'),
(390, '1132254', '', '', 'IMAN IMANUDIN', '209', 0, '2020-08-18 17:15:43'),
(391, '1193801', '', '', 'LAURENSIUS WOLO', '209', 0, '2020-08-18 17:15:43'),
(392, '1132558', '', '', 'M. INDRA', '209', 0, '2020-08-18 17:15:43'),
(393, '1121922', '', '', 'M. LAITSULLAH', '209', 0, '2020-08-18 17:15:43'),
(394, '1163353', '', '', 'MOHAMMAD DENNY', '209', 0, '2020-08-18 17:15:43'),
(395, '1020599', '', '', 'NOOR HIDAYATI FUAD', '209', 0, '2020-08-18 17:15:43'),
(396, '1193714', '', '', 'PRAYUDA BAHTERA O CIMI', '209', 0, '2020-08-18 17:15:43'),
(397, '1122160', '', '', 'RIDHO VICKRYAN', '209', 0, '2020-08-18 17:15:43'),
(398, '1173459', '', '', 'RIZKI WIBISONO KRISTIANTO', '209', 0, '2020-08-18 17:15:43'),
(399, '1153030', '', '', 'ROBY PUTRA GUNAWAN', '209', 0, '2020-08-18 17:15:43'),
(400, '1132374', '', '', 'SHOLAHHUDDIN', '209', 0, '2020-08-18 17:15:43'),
(401, '1132525', '', '', 'SURYO HIDAYAT ANDI YUSUF', '209', 0, '2020-08-18 17:15:43'),
(402, '1153047', '', '', 'SYAFRIZAL FAHMI PERMANA', '209', 0, '2020-08-18 17:15:43'),
(403, '1020512', '', '', 'BASUKI WIDIASTO', '014', 0, '2020-08-18 17:15:43'),
(404, '1000073', '', '', 'DEWI SUSPANINGRUM', '014', 0, '2020-08-18 17:15:43'),
(405, '1121985', '', '', 'M. REZA MUHARASY', '014', 0, '2020-08-18 17:15:43'),
(406, '1040836', '', '', 'SAFRIADY', '014', 0, '2020-08-18 17:15:43'),
(407, '1000116', '', '', 'SETIAWAN WIBISONO', '014', 0, '2020-08-18 17:15:43'),
(408, '1020660', '', '', 'TUNG IMAN INDRATI (A ING)', '014', 0, '2020-08-18 17:15:43'),
(409, '1193720', '', '', 'AYUDYA HARFIANTI', '127', 0, '2020-08-18 17:15:43'),
(410, '1183592', '', '', 'DINA GUNAWATI HASANAH', '127', 0, '2020-08-18 17:15:43'),
(411, '1132290', '', '', 'FINZA YUGISTIRA DAS', '127', 0, '2020-08-18 17:15:43'),
(412, '1173442', '', '', 'FITRIA WARDHANI', '127', 0, '2020-08-18 17:15:43'),
(413, '1121898', '', '', 'PUJO SUTRISNO', '127', 0, '2020-08-18 17:15:43'),
(414, '1132617', '', '', 'RADYAN SEPTAMA PASHA', '127', 0, '2020-08-18 17:15:43'),
(415, '1183576', '', '', 'SEKARRESSIE PATHRIA ZHAHARA', '127', 0, '2020-08-18 17:15:43'),
(416, '1203848', '', '', 'WAHYU ADITYO', '127', 0, '2020-08-18 17:15:43'),
(417, '1020625', '', '', 'ARI DHANTO', '283', 0, '2020-08-18 17:15:43'),
(418, '1010443', '', '', 'BUDI SANTOSO', '283', 0, '2020-08-18 17:15:43'),
(419, '1153210', '', '', 'DENNY AGUNG PRATAMA', '283', 0, '2020-08-18 17:15:43'),
(420, '1051059', '', '', 'EDI YANTO', '283', 0, '2020-08-18 17:15:43'),
(421, '1061258', '', '', 'HESA KOMARA', '283', 0, '2020-08-18 17:15:43'),
(422, '1010402', '', '', 'NASRI KOHARUDDIN', '283', 0, '2020-08-18 17:15:43'),
(423, '1173412', '', '', 'RIAN HERLAMBANG', '283', 0, '2020-08-18 17:15:43'),
(424, '1040974', '', '', 'SAROJI', '283', 0, '2020-08-18 17:15:43'),
(425, '1020528', '', '', 'SUDIARSYAH', '283', 0, '2020-08-18 17:15:43'),
(426, '1000211', '', '', 'SUHARTONO', '283', 0, '2020-08-18 17:15:43'),
(427, '1040917', '', '', 'SUPARDI', '283', 0, '2020-08-18 17:15:44'),
(428, '1051053', '', '', 'SURYADI', '283', 0, '2020-08-18 17:15:44'),
(429, '1061246', '', '', 'TRI SUGIARTO', '283', 0, '2020-08-18 17:15:44'),
(430, '1173411', '', '', 'WASIRAN', '283', 0, '2020-08-18 17:15:44'),
(431, '1153211', '', '', 'YUDA DARMANSYAH', '283', 0, '2020-08-18 17:15:44'),
(432, '1193771', '', '', 'AHMAD AKMAL SAID', '221', 0, '2020-08-18 17:15:44'),
(433, '1173448', '', '', 'AN\'AM ABDA\'OE SANI', '221', 0, '2020-08-18 17:15:44'),
(434, '1132256', '', '', 'ARI RIZKI OKTAVIANO', '221', 0, '2020-08-18 17:15:44'),
(435, '1173446', '', '', 'ARYO BAWONO', '221', 0, '2020-08-18 17:15:44'),
(436, '1173449', '', '', 'IBNU MUBARAUQ', '221', 0, '2020-08-18 17:15:44'),
(437, '6221303', '', '', 'M. ZAKARIA RHAZES', '221', 0, '2020-08-18 17:15:44'),
(438, '1153010', '', '', 'R. TRIO SETYO MURDOWO', '221', 0, '2020-08-18 17:15:44'),
(439, '1173534', '', '', 'REDHO AULIA ZANDRA', '221', 0, '2020-08-18 17:15:44'),
(440, '1111860', '', '', 'SYAHRIR AKBAR', '221', 0, '2020-08-18 17:15:44'),
(441, '1010445', '', '', 'TONI SYAH INDRA', '221', 0, '2020-08-18 17:15:44'),
(442, 'A140411', '', '', 'AGUS SUPRIYANTO', '149', 0, '2020-08-18 17:15:44'),
(443, 'A180605', '', '', 'ANANTO AGA MARINDRO', '149', 0, '2020-08-18 17:15:44'),
(444, '1030685', '', '', 'HANNY PARDEDE', '149', 0, '2020-08-18 17:15:44'),
(445, 'A140347', '', '', 'HENRY SEPTIAN', '149', 0, '2020-08-18 17:15:44'),
(446, 'A130235', '', '', 'INDRA SUMARA', '149', 0, '2020-08-18 17:15:44'),
(447, 'A130236', '', '', 'MARWAN - JKT', '149', 0, '2020-08-18 17:15:44'),
(448, '1040920', '', '', 'MUNTAHA', '149', 0, '2020-08-18 17:15:44'),
(449, '1000111', '', '', 'R. ARIA SALAMUN SULAEMAN', '149', 0, '2020-08-18 17:15:44'),
(450, 'A190649', '', '', 'SORAYA RASMANIAR DIAS', '149', 0, '2020-08-18 17:15:44'),
(451, '1020502', '', '', 'TATANG BAYU BUDIANA', '149', 0, '2020-08-18 17:15:44'),
(452, 'A190646', '', '', 'VICTOR ALEXANDER', '149', 0, '2020-08-18 17:15:44'),
(453, '1000203', '', '', 'AGUS MASRIANTO', '193', 0, '2020-08-18 17:15:44'),
(454, '1000077', '', '', 'EKA JAYA AZIS', '193', 0, '2020-08-18 17:15:44'),
(455, '1071443', '', '', 'RIZMAN FEBRIAN', '193', 0, '2020-08-18 17:15:44'),
(456, '1163293', '', '', 'SYARIFAH SORAYA', '193', 0, '2020-08-18 17:15:44'),
(457, '1132531', '', '', 'VIRA NOVIA PUTRI', '193', 0, '2020-08-18 17:15:44'),
(458, '1153106', '', '', 'YUNASDI', '248', 0, '2020-08-18 17:15:44'),
(459, '1193826', '', '', 'ANDRA GUSTIAN PRATAMA', '170', 0, '2020-08-18 17:15:44'),
(460, '1183610', '', '', 'DWIKIE NAUFAL PINASTHIKA', '170', 0, '2020-08-18 17:15:44'),
(461, '1152997', '', '', 'EDWIN PRATAMA', '170', 0, '2020-08-18 17:15:44'),
(462, '1152965', '', '', 'HERFINDO SATRIA GADING', '170', 0, '2020-08-18 17:15:44'),
(463, '1183581', '', '', 'JEANET KARTIKA TURAMBI', '170', 0, '2020-08-18 17:15:44'),
(464, '1030769', '', '', 'KELIK SUPRIHARJO', '170', 0, '2020-08-18 17:15:44'),
(465, '1193825', '', '', 'KURNIA BETI', '170', 0, '2020-08-18 17:15:44'),
(466, '1193827', '', '', 'LA ODE MUHAMMAD AL JABAR MOKADO', '170', 0, '2020-08-18 17:15:44'),
(467, '1183598', '', '', 'MUHAMMAD FAISHAL FARRAS', '170', 0, '2020-08-18 17:15:44'),
(468, '1193817', '', '', 'NURIZZA FITRI DEWANTI', '170', 0, '2020-08-18 17:15:44'),
(469, '1153097', '', '', 'RENI TRI KUSUMA', '170', 0, '2020-08-18 17:15:44'),
(470, '1121909', '', '', 'RIO DASANOF', '170', 0, '2020-08-18 17:15:44'),
(471, '1193776', '', '', 'SHEYLA PUTRI NEVERTARI', '170', 0, '2020-08-18 17:15:44'),
(472, '1193777', '', '', 'YOLANDA RAFLES', '170', 0, '2020-08-18 17:15:44'),
(473, '1101726', '', '', 'ABDILLAH', '184', 0, '2020-08-18 17:15:44'),
(474, '1183695', '', '', 'ADILLA CHANDRA', '184', 0, '2020-08-18 17:15:44'),
(475, '1203852', '', '', 'FERRY RIYANTO', '184', 0, '2020-08-18 17:15:44'),
(476, '1183669', '', '', 'IRSYAD MUHAMMAD FIRDAUS', '184', 0, '2020-08-18 17:15:45'),
(477, '1193740', '', '', 'NOVAL PRAHARA PUTRA', '184', 0, '2020-08-18 17:15:45'),
(478, '1142790', '', '', 'RHEZA PRASETYA', '184', 0, '2020-08-18 17:15:45'),
(479, '1183662', '', '', 'RIFKI PRADIKA ATHORIK', '184', 0, '2020-08-18 17:15:45'),
(480, '1071371', '', '', 'SYAIFUL BAKRI', '184', 0, '2020-08-18 17:15:45'),
(481, '1183659', '', '', 'TAUFIK HIDAYAT', '184', 0, '2020-08-18 17:15:45'),
(482, '1183587', '', '', 'ADITYA FAJAR PRATAMA', '123', 0, '2020-08-18 17:15:45'),
(483, '1163236', '', '', 'ALWIN FEBRIAN', '123', 0, '2020-08-18 17:15:45'),
(484, '1183588', '', '', 'DENY DWI HATMOKO', '123', 0, '2020-08-18 17:15:45'),
(485, '1193701', '', '', 'GERALDUS RYAN ERICKO SUKISMO PUTRA', '123', 0, '2020-08-18 17:15:45'),
(486, '1163258', '', '', 'GLORIA GRACE TANAMA', '123', 0, '2020-08-18 17:15:45'),
(487, '1142783', '', '', 'HANNY SHABRINA', '123', 0, '2020-08-18 17:15:45'),
(488, '1193779', '', '', 'HERY KURNIAWAN', '123', 0, '2020-08-18 17:15:45'),
(489, '1163285', '', '', 'NASIKHUL AMIN AL HAFIZI', '123', 0, '2020-08-18 17:15:45'),
(490, '1183680', '', '', 'SAFIRAH AMALIA ADRYAN', '123', 0, '2020-08-18 17:15:45'),
(491, '1173408', '', '', 'SARAH FAIRUZNISA', '123', 0, '2020-08-18 17:15:45'),
(492, '1122153', '', '', 'YOHANES RENDY SAKSONO PUTRO', '123', 0, '2020-08-18 17:15:45'),
(493, '1173385', '', '', 'ADITYA CHANDRA KUSUMA', '265', 0, '2020-08-18 17:15:45'),
(494, '1132377', '', '', 'AGUSTINUS HERI TRI SURATNO', '265', 0, '2020-08-18 17:15:45'),
(495, '1121972', '', '', 'AGUSTINUS SIGIT PRASETYO', '265', 0, '2020-08-18 17:15:45'),
(496, '1142769', '', '', 'ANGGA TITO PRASETYO', '265', 0, '2020-08-18 17:15:45'),
(497, '1061277', '', '', 'EKO RONDHON SUSTIAWAN', '265', 0, '2020-08-18 17:15:45'),
(498, '1132344', '', '', 'FX. MARTHIN YESNAT', '265', 0, '2020-08-18 17:15:45'),
(499, '1010346', '', '', 'HARTADI KUSDARJATNO', '265', 0, '2020-08-18 17:15:45'),
(500, '1081521', '', '', 'I WAYAN ERIK PERMANA', '265', 0, '2020-08-18 17:15:45'),
(501, '1193734', '', '', 'IMMANUEL BRIAN MOELJONO', '265', 0, '2020-08-18 17:15:45'),
(502, '1061241', '', '', 'IWAN SUPRAYITNO', '265', 0, '2020-08-18 17:15:45'),
(503, '1000285', '', '', 'MOHAN GOZALI', '265', 0, '2020-08-18 17:15:45'),
(504, '1051208', '', '', 'OK MUHAMAD ALI AKBAR', '265', 0, '2020-08-18 17:15:45'),
(505, '1132480', '', '', 'OKKY CARAKA RIZKY', '265', 0, '2020-08-18 17:15:45'),
(506, '1000187', '', '', 'PUPUH ADITYA', '265', 0, '2020-08-18 17:15:45'),
(507, '1142838', '', '', 'RYAN CHRISANDRO', '265', 0, '2020-08-18 17:15:45'),
(508, '1051180', '', '', 'SAEFUDIN', '265', 0, '2020-08-18 17:15:45'),
(509, '1000198', '', '', 'TASKUR RACHMANTO', '265', 0, '2020-08-18 17:15:45'),
(510, '1132253', '', '', 'YOYOK WAHYUDI', '265', 0, '2020-08-18 17:15:45'),
(511, '1081530', '', '', 'ZAINAL ABIDIN (VTR)', '265', 0, '2020-08-18 17:15:45'),
(512, '1132624', '', '', 'AIYUB A', '284', 0, '2020-08-18 17:15:45'),
(513, '1040946', '', '', 'ALFATAH', '284', 0, '2020-08-18 17:15:45'),
(514, '1000059', '', '', 'ASEP AMINUDIN', '284', 0, '2020-08-18 17:15:45'),
(515, '1111885', '', '', 'BACHROZI', '284', 0, '2020-08-18 17:15:45'),
(516, '1030811', '', '', 'BAMBANG SUMANTRI', '284', 0, '2020-08-18 17:15:45'),
(517, '1153196', '', '', 'BOY SURYA AKBAR', '284', 0, '2020-08-18 17:15:45'),
(518, '1010408', '', '', 'DENNY SONOH', '284', 0, '2020-08-18 17:15:45'),
(519, '1081549', '', '', 'DIOTESYA RISNANDAR', '284', 0, '2020-08-18 17:15:45'),
(520, '1010436', '', '', 'ERI SUSANTO', '284', 0, '2020-08-18 17:15:45'),
(521, '1000281', '', '', 'FIRGAN WARDHANI', '284', 0, '2020-08-18 17:15:45'),
(522, '1153195', '', '', 'HARI PRIYADI', '284', 0, '2020-08-18 17:15:45'),
(523, '1030803', '', '', 'HENDRI AVIANTO', '284', 0, '2020-08-18 17:15:45'),
(524, '1000241', '', '', 'IGNATIUS TRI HADMOKO', '284', 0, '2020-08-18 17:15:45'),
(525, '1173481', '', '', 'ISNA WAHYU WIDODO', '284', 0, '2020-08-18 17:15:45'),
(526, '1132350', '', '', 'JUNAEDI (B)', '284', 0, '2020-08-18 17:15:45'),
(527, '1142764', '', '', 'M. SAEKHU', '284', 0, '2020-08-18 17:15:45'),
(528, '1173483', '', '', 'NESHA TRIPUTRA', '284', 0, '2020-08-18 17:15:45'),
(529, '1040839', '', '', 'NUR ALIPPUDIN', '284', 0, '2020-08-18 17:15:45'),
(530, '1153056', '', '', 'ONI HANGGONO', '284', 0, '2020-08-18 17:15:45'),
(531, '1132243', '', '', 'RISZA ADHIPUTRO', '284', 0, '2020-08-18 17:15:45'),
(532, '1153194', '', '', 'SAIFUL BAHRI', '284', 0, '2020-08-18 17:15:46'),
(533, '1122120', '', '', 'SLAMET ASRONI', '284', 0, '2020-08-18 17:15:46'),
(534, '1142776', '', '', 'SLAMET SUGIANTO', '284', 0, '2020-08-18 17:15:46'),
(535, '1132258', '', '', 'SRI TWENA BUDI YUDIANTO', '284', 0, '2020-08-18 17:15:46'),
(536, '1041008', '', '', 'SUHARTO', '284', 0, '2020-08-18 17:15:46'),
(537, '1153054', '', '', 'SUMARTO', '284', 0, '2020-08-18 17:15:46'),
(538, '1121976', '', '', 'SYAMSUDIN WIJAYA', '284', 0, '2020-08-18 17:15:46'),
(539, '1010289', '', '', 'TB ERLAN PERMANA', '284', 0, '2020-08-18 17:15:46'),
(540, '1153197', '', '', 'YURI SAKTI BUANA', '284', 0, '2020-08-18 17:15:46'),
(541, '1020456', '', '', 'ANDI SETIA GUNAWAN', '278', 0, '2020-08-18 17:15:46'),
(542, '1193782', '', '', 'ARI BUDIARTI', '278', 0, '2020-08-18 17:15:46'),
(543, '1111889', '', '', 'ASEP SETIAWAN', '278', 0, '2020-08-18 17:15:46'),
(544, '1040930', '', '', 'HENNY PUSPITASARI', '278', 0, '2020-08-18 17:15:46'),
(545, '1020546', '', '', 'MADY JOAN IVONNE', '278', 0, '2020-08-18 17:15:46'),
(546, '1193783', '', '', 'MUHAMMAD HIDAYAT', '278', 0, '2020-08-18 17:15:46'),
(547, '1010413', '', '', 'NURYADI', '278', 0, '2020-08-18 17:15:46'),
(548, '1000166', '', '', 'RETNO SHANTI RUWYASTUTI', '278', 0, '2020-08-18 17:15:46'),
(549, '1071343', '', '', 'ALDASNI', '272', 0, '2020-08-18 17:15:46'),
(550, '1040948', '', '', 'ANNI IBRIAH', '272', 0, '2020-08-18 17:15:46'),
(551, '4040936', '', '', 'ARIF NUGROHO', '272', 0, '2020-08-18 17:15:46'),
(552, '1091605', '', '', 'AVI PRANANTHA', '272', 0, '2020-08-18 17:15:46'),
(553, '1030707', '', '', 'DIAN ROHAENI', '272', 0, '2020-08-18 17:15:46'),
(554, '1163349', '', '', 'DON BOSCO SELAMUN', '272', 0, '2020-08-18 17:15:46'),
(555, '1193818', '', '', 'ERSTI KAMARATIH', '272', 0, '2020-08-18 17:15:46'),
(556, '1153184', '', '', 'GINA VIRANI', '272', 0, '2020-08-18 17:15:46'),
(557, '1000105', '', '', 'KIOEN MOE', '272', 0, '2020-08-18 17:15:46'),
(558, '1203849', '', '', 'LAILI MUNIR', '272', 0, '2020-08-18 17:15:46'),
(559, '1163260', '', '', 'M. MIRDAL AKIB', '272', 0, '2020-08-18 17:15:46'),
(560, '1132355', '', '', 'MENIEK ANDINI', '272', 0, '2020-08-18 17:15:46'),
(561, '4168001', '', '', 'MUHAMMAD ISLAM', '272', 0, '2020-08-18 17:15:46'),
(562, '1193809', '', '', 'PRIANTO AGUS SURYONO', '272', 0, '2020-08-18 17:15:46'),
(563, '4120001', '', '', 'ROMY ARIF NURFADILAH', '272', 0, '2020-08-18 17:15:46'),
(564, '1000129', '', '', 'VIRGIE BAKER', '272', 0, '2020-08-18 17:15:46'),
(565, '1010338', '', '', 'WAYAN EKA PUTRA KUSWITYA AGUSTIAWAN', '272', 0, '2020-08-18 17:15:46'),
(566, '4814028', '', '', 'A.M ZEN', '281', 0, '2020-08-18 17:15:46'),
(567, '2601753', '', '', 'AAN NURLENAH', '281', 0, '2020-08-18 17:15:46'),
(568, '2907102', '', '', 'AAT ABDUL SATAR', '281', 0, '2020-08-18 17:15:46'),
(569, '2404018', '', '', 'ABDILLAH M. MARZUQI', '281', 0, '2020-08-18 17:15:46'),
(570, '2810078', '', '', 'ABDUL KADIR', '281', 0, '2020-08-18 17:15:46'),
(571, '2106344', '', '', 'ABDUL SYUKUR', '281', 0, '2020-08-18 17:15:46'),
(572, '4012159', '', '', 'ABDULLAH DJUNAEDI', '281', 0, '2020-08-18 17:15:46'),
(573, '6170167', '', '', 'ACHMAD JOKO SARIYANTO', '281', 0, '2020-08-18 17:15:46'),
(574, '2107292', '', '', 'ACHMAD MAULANA', '281', 0, '2020-08-18 17:15:46'),
(575, '2705983', '', '', 'ACHMAD SYAIFUL', '281', 0, '2020-08-18 17:15:46'),
(576, '2507034', '', '', 'ADAM DWI PUTRA', '281', 0, '2020-08-18 17:15:46'),
(577, '2201316', '', '', 'ADANG ISKANDAR', '281', 0, '2020-08-18 17:15:46'),
(578, '6170221', '', '', 'ADANG SUMANTRI', '281', 0, '2020-08-18 17:15:46'),
(579, '2704953', '', '', 'ADE ALAWI', '281', 0, '2020-08-18 17:15:46'),
(580, '2210371', '', '', 'ADE RIAN HARAHAP', '281', 0, '2020-08-18 17:15:46'),
(581, '2180031', '', '', 'ADE RUANETTE NADYA', '281', 0, '2020-08-18 17:15:46'),
(582, '2409614', '', '', 'ADI KUNCORO', '281', 0, '2020-08-18 17:15:46'),
(583, '2902113', '', '', 'ADI MULYADI', '281', 0, '2020-08-18 17:15:46'),
(584, '2503651', '', '', 'ADI PURNOMO', '281', 0, '2020-08-18 17:15:46'),
(585, '2503017', '', '', 'ADIYANTO', '281', 0, '2020-08-18 17:15:46'),
(586, '2103022', '', '', 'AGUNG NUGROHO', '281', 0, '2020-08-18 17:15:46'),
(587, '2402002', '', '', 'AGUNG WIBOWO', '281', 0, '2020-08-18 17:15:46'),
(588, '4012155', '', '', 'AGUS BUDIONO', '281', 0, '2020-08-18 17:15:46'),
(589, '2509076', '', '', 'AGUS EKA SAPTA', '281', 0, '2020-08-18 17:15:46'),
(590, '4012162', '', '', 'AGUS HARYANTO', '281', 0, '2020-08-18 17:15:46'),
(591, '2000041', '', '', 'AGUS IRIANTO', '281', 0, '2020-08-18 17:15:46'),
(592, '2010298', '', '', 'AGUS MULYAWAN', '281', 0, '2020-08-18 17:15:46'),
(593, '2805104', '', '', 'AGUS NURDIN', '281', 0, '2020-08-18 17:15:46'),
(594, '2810083', '', '', 'AGUS SUBECHI', '281', 0, '2020-08-18 17:15:46'),
(595, '2602004', '', '', 'AGUS SUTIAWAN', '281', 0, '2020-08-18 17:15:46'),
(596, '2905127', '', '', 'AGUS TANRA HENDROYONO', '281', 0, '2020-08-18 17:15:46'),
(597, '2106286', '', '', 'AGUS TRIWIBOWO', '281', 0, '2020-08-18 17:15:46'),
(598, '2602769', '', '', 'AGUS WAHYU KRISTIANTO', '281', 0, '2020-08-18 17:15:46'),
(599, '2601748', '', '', 'AGUS WAHYUDI', '281', 0, '2020-08-18 17:15:46'),
(600, '2308521', '', '', 'AHMAD CHAIRUDIN', '281', 0, '2020-08-18 17:15:46'),
(601, '2507691', '', '', 'AHMAD FEBRIANSYAH', '281', 0, '2020-08-18 17:15:46'),
(602, '2603015', '', '', 'AHMAD NGABDIRAN', '281', 0, '2020-08-18 17:15:46'),
(603, '2508067', '', '', 'AHMAD PUNTO', '281', 0, '2020-08-18 17:15:46'),
(604, '2503022', '', '', 'AHMAD SOPIAN', '281', 0, '2020-08-18 17:15:46'),
(605, '4012204', '', '', 'AHMAD TARMIZI', '281', 0, '2020-08-18 17:15:46'),
(606, '2180032', '', '', 'AISHA HAZELIA PRATIWI', '281', 0, '2020-08-18 17:15:46'),
(607, '2609833', '', '', 'AJI SUKARYO', '281', 0, '2020-08-18 17:15:46'),
(608, '2903012', '', '', 'AKHMAD MUSTAIN', '281', 0, '2020-08-18 17:15:46'),
(609, '2502006', '', '', 'AKMAL FAUZI', '281', 0, '2020-08-18 17:15:46'),
(610, '2502631', '', '', 'ALBERTHA F. BURHANNUDIN', '281', 0, '2020-08-18 17:15:46'),
(611, '2511070', '', '', 'ALDY TRIAS PUTRA', '281', 0, '2020-08-18 17:15:46'),
(612, '2301052', '', '', 'ALEX ANINDITO', '281', 0, '2020-08-18 17:15:46'),
(613, '2010055', '', '', 'AMILUHUR NARPATI LAKSONO', '281', 0, '2020-08-18 17:15:46'),
(614, '2002005', '', '', 'AMIRIL HASANUDIN', '281', 0, '2020-08-18 17:15:46'),
(615, '2412050', '', '', 'ANANTO PRABOWO', '281', 0, '2020-08-18 17:15:46'),
(616, '2611041', '', '', 'ANDANI FANZA FLORENT DAC', '281', 0, '2020-08-18 17:15:46'),
(617, '2901004', '', '', 'ANDHI YUDHANTO', '281', 0, '2020-08-18 17:15:46'),
(618, '2502004', '', '', 'ANDHIKA PRASETYO', '281', 0, '2020-08-18 17:15:46'),
(619, '2809076', '', '', 'ANDI NURSANDI', '281', 0, '2020-08-18 17:15:46'),
(620, '4012143', '', '', 'ANDI SUTISNA', '281', 0, '2020-08-18 17:15:46'),
(621, '2812095', '', '', 'ANDREAS M. ZAY', '281', 0, '2020-08-18 17:15:46'),
(622, '4012208', '', '', 'ANDRI KRISTIANTO', '281', 0, '2020-08-18 17:15:46'),
(623, '4012207', '', '', 'ANDRI WIDIYANTO', '281', 0, '2020-08-18 17:15:46'),
(624, '4012170', '', '', 'ANDRIYANTO', '281', 0, '2020-08-18 17:15:46'),
(625, '2803085', '', '', 'ANDRY PRASETYO', '281', 0, '2020-08-18 17:15:46'),
(626, '2180028', '', '', 'ANDY WITANTO', '281', 0, '2020-08-18 17:15:46'),
(627, '2409046', '', '', 'ANGGA NUARI', '281', 0, '2020-08-18 17:15:46'),
(628, '2607808', '', '', 'ANIK RAHAYU', '281', 0, '2020-08-18 17:15:46'),
(629, '2503021', '', '', 'ANNETTE NURLIATI NATALIA', '281', 0, '2020-08-18 17:15:46'),
(630, '2003201', '', '', 'ANTON KUSTEDJA ABDULLAH', '281', 0, '2020-08-18 17:15:46'),
(631, '2106046', '', '', 'ANTONIUS DWI HARSONO', '281', 0, '2020-08-18 17:15:46'),
(632, '2912144', '', '', 'ANWAR', '281', 0, '2020-08-18 17:15:46'),
(633, '6170200', '', '', 'APUL FREDY MUBA', '281', 0, '2020-08-18 17:15:46'),
(634, '2004227', '', '', 'ARI NURANI', '281', 0, '2020-08-18 17:15:46'),
(635, '2705985', '', '', 'ARIEF', '281', 0, '2020-08-18 17:15:46'),
(636, '2507684', '', '', 'ARIEF IBNU SURACHMAN', '281', 0, '2020-08-18 17:15:46'),
(637, '2905022', '', '', 'ARIEF RAMADHI WIBISONO', '281', 0, '2020-08-18 17:15:46'),
(638, '2201320', '', '', 'ARIES WIJAKSENA', '281', 0, '2020-08-18 17:15:46'),
(639, '2310083', '', '', 'ARIUS KRISTIANTO W', '281', 0, '2020-08-18 17:15:46'),
(640, '2412051', '', '', 'ASEP DADANG SUPRIATNA', '281', 0, '2020-08-18 17:15:46'),
(641, '2703931', '', '', 'ASEP HERMAWAN', '281', 0, '2020-08-18 17:15:46'),
(642, '2601745', '', '', 'ASEP KURNIAWAN', '281', 0, '2020-08-18 17:15:46'),
(643, '2112084', '', '', 'ASTRI NOVARIA', '281', 0, '2020-08-18 17:15:46'),
(644, '2180036', '', '', 'ATALYA PUSPA', '281', 0, '2020-08-18 17:15:46'),
(645, '2190010', '', '', 'ATIKAH ISHMAH WINAHYU', '281', 0, '2020-08-18 17:15:46'),
(646, '2705977', '', '', 'AZHARI', '281', 0, '2020-08-18 17:15:46'),
(647, '2190031', '', '', 'BAGUS PRADANA', '281', 0, '2020-08-18 17:15:46'),
(648, '2908138', '', '', 'BAHARMAN', '281', 0, '2020-08-18 17:15:46'),
(649, '2503660', '', '', 'BAHRUDIN', '281', 0, '2020-08-18 17:15:46'),
(650, '2611867', '', '', 'BAHRUN', '281', 0, '2020-08-18 17:15:46'),
(651, '2412060', '', '', 'BAMBANG ANGGONO', '281', 0, '2020-08-18 17:15:47'),
(652, '2312094', '', '', 'BAMBANG IMAM APENDI', '281', 0, '2020-08-18 17:15:47'),
(653, '2308507', '', '', 'BAMBANG IRIANTO', '281', 0, '2020-08-18 17:15:47');
INSERT INTO `tab_user_temp` (`user_id`, `user_nip`, `user_email`, `user_pass`, `user_fname`, `user_dept`, `user_auth`, `created_date`) VALUES
(654, '4012198', '', '', 'BARY FATAHILAH', '281', 0, '2020-08-18 17:15:47'),
(655, '2507042', '', '', 'BASUKI EKA PURNAMA', '281', 0, '2020-08-18 17:15:47'),
(656, '2407031', '', '', 'BAYU WICAKSONO', '281', 0, '2020-08-18 17:15:47'),
(657, '4012064', '', '', 'BAYU WIJAYA', '281', 0, '2020-08-18 17:15:47'),
(658, '4814022', '', '', 'BETI HARNANY', '281', 0, '2020-08-18 17:15:47'),
(659, '2508058', '', '', 'BINTANG KRISANTI', '281', 0, '2020-08-18 17:15:47'),
(660, '2010056', '', '', 'BRIYAN BODO HENDRO K', '281', 0, '2020-08-18 17:15:47'),
(661, '2112085', '', '', 'BUDI ERNANTO', '281', 0, '2020-08-18 17:15:47'),
(662, '2001183', '', '', 'BUDI SETYO WIDODO', '281', 0, '2020-08-18 17:15:47'),
(663, '2403013', '', '', 'BUDI UTOMO', '281', 0, '2020-08-18 17:15:47'),
(664, '2510064', '', '', 'CAHYA MULYANA', '281', 0, '2020-08-18 17:15:47'),
(665, '2180029', '', '', 'CEVI SAMSURI', '281', 0, '2020-08-18 17:15:47'),
(666, '2302058', '', '', 'CHRISTIANI PRATAMA', '281', 0, '2020-08-18 17:15:47'),
(667, '2305485', '', '', 'CRI QANON RIA DEWI', '281', 0, '2020-08-18 17:15:47'),
(668, '2307032', '', '', 'DADANG', '281', 0, '2020-08-18 17:15:47'),
(669, '2908146', '', '', 'DAHLIA TERRY HENANDARI', '281', 0, '2020-08-18 17:15:47'),
(670, '2604017', '', '', 'DANI HERMAWAN', '281', 0, '2020-08-18 17:15:47'),
(671, '2905122', '', '', 'DARMADI', '281', 0, '2020-08-18 17:15:47'),
(672, '2300175', '', '', 'DAROJAT', '281', 0, '2020-08-18 17:15:47'),
(673, '2706999', '', '', 'DARSIM MUHAMMAD AFIF', '281', 0, '2020-08-18 17:15:47'),
(674, '2007241', '', '', 'DECKY R. MANANGKA', '281', 0, '2020-08-18 17:15:47'),
(675, '2000031', '', '', 'DEDE ROHENDI', '281', 0, '2020-08-18 17:15:47'),
(676, '2190026', '', '', 'DEDEN MUHAMAD ROJANI', '281', 0, '2020-08-18 17:15:47'),
(677, '2001184', '', '', 'DEDY', '281', 0, '2020-08-18 17:15:47'),
(678, '2809077', '', '', 'DEDY PRIYANTO', '281', 0, '2020-08-18 17:15:47'),
(679, '2112082', '', '', 'DEKKY SUHENDAR', '281', 0, '2020-08-18 17:15:47'),
(680, '4012154', '', '', 'DEMAN', '281', 0, '2020-08-18 17:15:47'),
(681, '2507046', '', '', 'DENNY PARSAULIAN', '281', 0, '2020-08-18 17:15:47'),
(682, '2604786', '', '', 'DERI DAHURI', '281', 0, '2020-08-18 17:15:47'),
(683, '6170358', '', '', 'DERIYANA', '281', 0, '2020-08-18 17:15:47'),
(684, '2406040', '', '', 'DERO IQBAL MAHENDRA', '281', 0, '2020-08-18 17:15:47'),
(685, '2112313', '', '', 'DESI YASMINI', '281', 0, '2020-08-18 17:15:47'),
(686, '2180021', '', '', 'DESPIAN NURHIDAYAT', '281', 0, '2020-08-18 17:15:47'),
(687, '2103277', '', '', 'DHANNY ADITYA BHARATA', '281', 0, '2020-08-18 17:15:47'),
(688, '2602007', '', '', 'DHARMAWAN', '281', 0, '2020-08-18 17:15:47'),
(689, '2404020', '', '', 'DHIKA KUSUMA WINATA', '281', 0, '2020-08-18 17:15:47'),
(690, '2909167', '', '', 'DIAN DWITRIYUNI', '281', 0, '2020-08-18 17:15:47'),
(691, '2004226', '', '', 'DONATUS OLA PEREDA', '281', 0, '2020-08-18 17:15:47'),
(692, '2105280', '', '', 'DONY TJIPTONUGROHO', '281', 0, '2020-08-18 17:15:47'),
(693, '2509062', '', '', 'DUTA AMARTA', '281', 0, '2020-08-18 17:15:47'),
(694, '4814025', '', '', 'DWI SUNARSIH', '281', 0, '2020-08-18 17:15:47'),
(695, '2610041', '', '', 'DWI TUPANI GUNARWATI', '281', 0, '2020-08-18 17:15:47'),
(696, '4814024', '', '', 'DYAH SIWIYATI', '281', 0, '2020-08-18 17:15:47'),
(697, '2502634', '', '', 'EDDY NINDYO SANTOSO', '281', 0, '2020-08-18 17:15:47'),
(698, '2811088', '', '', 'EDDY SURYANA', '281', 0, '2020-08-18 17:15:47'),
(699, '4012149', '', '', 'EDI MUHTAR', '281', 0, '2020-08-18 17:15:47'),
(700, '2209036', '', '', 'EFAN NUGRAHA', '281', 0, '2020-08-18 17:15:47'),
(701, '2903045', '', '', 'EKA YUNICAR LUSYANTI', '281', 0, '2020-08-18 17:15:47'),
(702, '2008041', '', '', 'EKO PRAYITNO', '281', 0, '2020-08-18 17:15:47'),
(703, '2003221', '', '', 'EKO RAHMAWANTO', '281', 0, '2020-08-18 17:15:47'),
(704, '2901102', '', '', 'EKO SUPRIHATNO', '281', 0, '2020-08-18 17:15:47'),
(705, '2206027', '', '', 'ELPRIDA SIREGAR', '281', 0, '2020-08-18 17:15:47'),
(706, '2603012', '', '', 'ELSA DESY ARIYANTI', '281', 0, '2020-08-18 17:15:47'),
(707, '2404017', '', '', 'ELSHINTA DWI KURNIATI', '281', 0, '2020-08-18 17:15:47'),
(708, '2410042', '', '', 'EMIR CHAIRULLAH', '281', 0, '2020-08-18 17:15:47'),
(709, '6170357', '', '', 'ENDANG HIDAYAT', '281', 0, '2020-08-18 17:15:47'),
(710, '2012324', '', '', 'ENGELIN EFFI YANTI', '281', 0, '2020-08-18 17:15:47'),
(711, '2206353', '', '', 'ENI KARTINAH', '281', 0, '2020-08-18 17:15:47'),
(712, '2706997', '', '', 'ERI JUNIANTO', '281', 0, '2020-08-18 17:15:47'),
(713, '4012145', '', '', 'ERIEZ M. RIZAL', '281', 0, '2020-08-18 17:15:47'),
(714, '2190006', '', '', 'EVITA DWI WARDHANA', '281', 0, '2020-08-18 17:15:47'),
(715, '2190012', '', '', 'F. ADITYA SINTA KURNIA F', '281', 0, '2020-08-18 17:15:47'),
(716, '2510068', '', '', 'FAHMI', '281', 0, '2020-08-18 17:15:47'),
(717, '2508059', '', '', 'FAJAR ALWAFI RAHMAN', '281', 0, '2020-08-18 17:15:47'),
(718, '2504666', '', '', 'FAJAR NURHAMIM', '281', 0, '2020-08-18 17:15:47'),
(719, '2190029', '', '', 'FARHAN RAMADIO', '281', 0, '2020-08-18 17:15:47'),
(720, '2180025', '', '', 'FARHATUN NURFITRIANI', '281', 0, '2020-08-18 17:15:47'),
(721, '2311177', '', '', 'FARID YUDISTONO', '281', 0, '2020-08-18 17:15:47'),
(722, '2180014', '', '', 'FATHURROZAK', '281', 0, '2020-08-18 17:15:47'),
(723, '2190020', '', '', 'FAUSTINUS NUA', '281', 0, '2020-08-18 17:15:47'),
(724, '2804099', '', '', 'FAUZI ZULKARNAEN', '281', 0, '2020-08-18 17:15:47'),
(725, '2101280', '', '', 'FAZRI AL FAUZA', '281', 0, '2020-08-18 17:15:47'),
(726, '2006236', '', '', 'FEBBIE GESA', '281', 0, '2020-08-18 17:15:47'),
(727, '2404016', '', '', 'FEBRINI VALENTIKA', '281', 0, '2020-08-18 17:15:48'),
(728, '2180030', '', '', 'FERDIAN ANANDA MAJNI', '281', 0, '2020-08-18 17:15:48'),
(729, '2502005', '', '', 'FETRY WURYASTI', '281', 0, '2020-08-18 17:15:48'),
(730, '2107365', '', '', 'FIRDAUS DAYAT', '281', 0, '2020-08-18 17:15:48'),
(731, '2190035', '', '', 'FIRHAN AKBARI', '281', 0, '2020-08-18 17:15:48'),
(732, '2200002', '', '', 'FIRMANSYAH', '281', 0, '2020-08-18 17:15:48'),
(733, '2601754', '', '', 'FRANSASTI INDAH PALUPI', '281', 0, '2020-08-18 17:15:48'),
(734, '4012209', '', '', 'FRANSISCO CAROLIO HUTAMA', '281', 0, '2020-08-18 17:15:48'),
(735, '2180009', '', '', 'FRANSISKUS FERDINALDI MA', '281', 0, '2020-08-18 17:15:48'),
(736, '2003211', '', '', 'GADIS FITRI BUDIRINI', '281', 0, '2020-08-18 17:15:48'),
(737, '2190007', '', '', 'GALIH AGUS SAPUTRA', '281', 0, '2020-08-18 17:15:48'),
(738, '2402008', '', '', 'GANA BUANA', '281', 0, '2020-08-18 17:15:48'),
(739, '2510724', '', '', 'GATOT PURNOMO', '281', 0, '2020-08-18 17:15:48'),
(740, '2008258', '', '', 'GAUDENSIUS SUHARDI', '281', 0, '2020-08-18 17:15:48'),
(741, '2108056', '', '', 'GHANI NURCAHYADI', '281', 0, '2020-08-18 17:15:48'),
(742, '2305066', '', '', 'GOLDA EKSA', '281', 0, '2020-08-18 17:15:48'),
(743, '2312047', '', '', 'GUGUN PERMANA', '281', 0, '2020-08-18 17:15:48'),
(744, '2003192', '', '', 'GULIELMUS HERU PRASETYO', '281', 0, '2020-08-18 17:15:48'),
(745, '2909166', '', '', 'GUNAWAN SUHARLI', '281', 0, '2020-08-18 17:15:48'),
(746, '2101009', '', '', 'GURIT ADY SURYO', '281', 0, '2020-08-18 17:15:48'),
(747, '2304484', '', '', 'GUSTAF BERNHARD R.', '281', 0, '2020-08-18 17:15:48'),
(748, '2006033', '', '', 'HAIRUL MUTAKIN', '281', 0, '2020-08-18 17:15:48'),
(749, '4012171', '', '', 'HANAN SUHANAN', '281', 0, '2020-08-18 17:15:48'),
(750, '2909039', '', '', 'HARI UTOMO', '281', 0, '2020-08-18 17:15:48'),
(751, '2509075', '', '', 'HARINI HANDAYANI', '281', 0, '2020-08-18 17:15:48'),
(752, '2904016', '', '', 'HARIS IMRON ARMANI', '281', 0, '2020-08-18 17:15:48'),
(753, '2509723', '', '', 'HARIYADI', '281', 0, '2020-08-18 17:15:48'),
(754, '2508069', '', '', 'HARIYANTO', '281', 0, '2020-08-18 17:15:48'),
(755, '2212050', '', '', 'HARRI CAHYADI', '281', 0, '2020-08-18 17:15:48'),
(756, '2901002', '', '', 'HARTONO YUWONO', '281', 0, '2020-08-18 17:15:48'),
(757, '2504664', '', '', 'HARUN NOOR RASJID', '281', 0, '2020-08-18 17:15:48'),
(758, '2611857', '', '', 'HARYADI', '281', 0, '2020-08-18 17:15:48'),
(759, '2602768', '', '', 'HARYO PRASETYO DWIATMOKO', '281', 0, '2020-08-18 17:15:48'),
(760, '2202008', '', '', 'HAUFAN H. SALENGKE', '281', 0, '2020-08-18 17:15:48'),
(761, '4012053', '', '', 'HELMI FERDIANSYAH', '281', 0, '2020-08-18 17:15:48'),
(762, '4012156', '', '', 'HENDRA PRAMANA P', '281', 0, '2020-08-18 17:15:48'),
(763, '2212049', '', '', 'HENGKI OPERANOKASARI', '281', 0, '2020-08-18 17:15:48'),
(764, '2107294', '', '', 'HENRI SALOMO SIAGIAN', '281', 0, '2020-08-18 17:15:48'),
(765, '2002009', '', '', 'HERMAN RELANI', '281', 0, '2020-08-18 17:15:48'),
(766, '2211045', '', '', 'HERMAN SUSANTO', '281', 0, '2020-08-18 17:15:48'),
(767, '2609837', '', '', 'HERU SUMIYONO', '281', 0, '2020-08-18 17:15:48'),
(768, '2111311', '', '', 'HERYADI', '281', 0, '2020-08-18 17:15:48'),
(769, '2190033', '', '', 'HILDA JULAIKA', '281', 0, '2020-08-18 17:15:48'),
(770, '2101277', '', '', 'HILLARIUS U. GANI', '281', 0, '2020-08-18 17:15:48'),
(771, '2190014', '', '', 'IDA BAGUS SURYA ARI S', '281', 0, '2020-08-18 17:15:48'),
(772, '2212461', '', '', 'IDA FARIDA', '281', 0, '2020-08-18 17:15:48'),
(773, '2308517', '', '', 'IDA SAIDAH', '281', 0, '2020-08-18 17:15:48'),
(774, '2190018', '', '', 'IHFA FIRDAUSYA', '281', 0, '2020-08-18 17:15:48'),
(775, '2307031', '', '', 'IIS ZATNIKA', '281', 0, '2020-08-18 17:15:48'),
(776, '2180039', '', '', 'IKA PUTRIANA SWARI ARIZO', '281', 0, '2020-08-18 17:15:48'),
(777, '2190032', '', '', 'ILHAM ANANDITYA', '281', 0, '2020-08-18 17:15:48'),
(778, '2109001', '', '', 'ILHAM PRIYO WIBOWO', '281', 0, '2020-08-18 17:15:48'),
(779, '2190034', '', '', 'ILMA WULANSARI', '281', 0, '2020-08-18 17:15:48'),
(780, '2012267', '', '', 'INDAH SUSANTI', '281', 0, '2020-08-18 17:15:48'),
(781, '6170169', '', '', 'INDRA', '281', 0, '2020-08-18 17:15:48'),
(782, '2208451', '', '', 'INDRA MAHYUDI', '281', 0, '2020-08-18 17:15:48'),
(783, '2305064', '', '', 'INDRASTUTI', '281', 0, '2020-08-18 17:15:48'),
(784, '2406039', '', '', 'INDRIYANI ASTUTI', '281', 0, '2020-08-18 17:15:48'),
(785, '2506056', '', '', 'INDRIYANINGSIH', '281', 0, '2020-08-18 17:15:48'),
(786, '2181022', '', '', 'INSI NANTIKA JELITA', '281', 0, '2020-08-18 17:15:48'),
(787, '2508061', '', '', 'IRANA SHALINDRA', '281', 0, '2020-08-18 17:15:48'),
(788, '2190015', '', '', 'IRENE KARTIKA UTAMI', '281', 0, '2020-08-18 17:15:48'),
(789, '2607819', '', '', 'IRFAI', '281', 0, '2020-08-18 17:15:48'),
(790, '2610037', '', '', 'IRVAN LIBERTY WILLIAMS', '281', 0, '2020-08-18 17:15:48'),
(791, '2180011', '', '', 'IRWANSYAH', '281', 0, '2020-08-18 17:15:48'),
(792, '2706989', '', '', 'ISHAK BAHTIAR', '281', 0, '2020-08-18 17:15:48'),
(793, '2607812', '', '', 'ISMAR', '281', 0, '2020-08-18 17:15:48'),
(794, '2506678', '', '', 'ISTOYO', '281', 0, '2020-08-18 17:15:48'),
(795, '4012065', '', '', 'IWAN SOFYAN', '281', 0, '2020-08-18 17:15:48'),
(796, '2508708', '', '', 'JAKA BUDI SANTOSA', '281', 0, '2020-08-18 17:15:48'),
(797, '2009288', '', '', 'JAMAL', '281', 0, '2020-08-18 17:15:48'),
(798, '2180026', '', '', 'JAMES ALVIN NUGROHO', '281', 0, '2020-08-18 17:15:48'),
(799, '2308518', '', '', 'JAMILAH', '281', 0, '2020-08-18 17:15:48'),
(800, '2190037', '', '', 'JILLIAN MARCELINA PRISCI', '281', 0, '2020-08-18 17:15:48'),
(801, '2912138', '', '', 'JOHN EDIWARD SARAGIH', '281', 0, '2020-08-18 17:15:48'),
(802, '2903061', '', '', 'JOKO MAWANDOYO', '281', 0, '2020-08-18 17:15:48'),
(803, '2008002', '', '', 'JONG FI KIAN', '281', 0, '2020-08-18 17:15:48'),
(804, '2206347', '', '', 'JONGGI PANGIHUTAN M.', '281', 0, '2020-08-18 17:15:48'),
(805, '2612050', '', '', 'KARMILA INDRIASARI', '281', 0, '2020-08-18 17:15:48'),
(806, '2403221', '', '', 'KARNO', '281', 0, '2020-08-18 17:15:48'),
(807, '2190027', '', '', 'KESYAD JOANDA SATRIA', '281', 0, '2020-08-18 17:15:48'),
(808, '2180034', '', '', 'KHAIRUL ANWAR', '281', 0, '2020-08-18 17:15:48'),
(809, '6170129', '', '', 'KHOIRUL HENDRO P', '281', 0, '2020-08-18 17:15:48'),
(810, '2009254', '', '', 'KISMAN', '281', 0, '2020-08-18 17:15:48'),
(811, '2160043', '', '', 'KURNIAWAN', '281', 0, '2020-08-18 17:15:48'),
(812, '2307496', '', '', 'LESTARI MOERDIJAT', '281', 0, '2020-08-18 17:15:48'),
(813, '2702915', '', '', 'LILI JULIHARTO', '281', 0, '2020-08-18 17:15:48'),
(814, '2204003', '', '', 'LUCHITO SANGSOKO', '281', 0, '2020-08-18 17:15:48'),
(815, '2209037', '', '', 'M RIZKI DARMAWAN SOEROSO', '281', 0, '2020-08-18 17:15:48'),
(816, '2190001', '', '', 'M. ILHAM RAMADHAN AVISEN', '281', 0, '2020-08-18 17:15:48'),
(817, '2190002', '', '', 'M. IQBAL AL MACHMUDI', '281', 0, '2020-08-18 17:15:48'),
(818, '2190013', '', '', 'M. IQBAL TAWAKAL', '281', 0, '2020-08-18 17:15:48'),
(819, '2190038', '', '', 'M. RIYALDI RABUNNAH', '281', 0, '2020-08-18 17:15:48'),
(820, '4012205', '', '', 'M. SETIAWAN ALUN SEGORO', '281', 0, '2020-08-18 17:15:48'),
(821, '2101279', '', '', 'M. SOLEH', '281', 0, '2020-08-18 17:15:48'),
(822, '2705981', '', '', 'MADIH SUPRIYADI', '281', 0, '2020-08-18 17:15:48'),
(823, '2180015', '', '', 'MAKO BADAI BALADEWA', '281', 0, '2020-08-18 17:15:48'),
(824, '2170005', '', '', 'MARDANIH', '281', 0, '2020-08-18 17:15:48'),
(825, '2504036', '', '', 'MARDIANTO', '281', 0, '2020-08-18 17:15:48'),
(826, '2312046', '', '', 'MARIONSANDES NADIN KHAIR', '281', 0, '2020-08-18 17:15:48'),
(827, '2001166', '', '', 'MARJUKI', '281', 0, '2020-08-18 17:15:48'),
(828, '2300187', '', '', 'MARYONO', '281', 0, '2020-08-18 17:15:48'),
(829, '2204420', '', '', 'MATHIAS SEMBIRING', '281', 0, '2020-08-18 17:15:48'),
(830, '2603016', '', '', 'MAULANA ARRASYID', '281', 0, '2020-08-18 17:15:48'),
(831, '2503030', '', '', 'MAULANA DWI SAPUTRA', '281', 0, '2020-08-18 17:15:48'),
(832, '2410048', '', '', 'MEIRISA ISNAENI', '281', 0, '2020-08-18 17:15:48'),
(833, '2190009', '', '', 'MELALUSA SUSTHIRA KHALID', '281', 0, '2020-08-18 17:15:48'),
(834, '2208364', '', '', 'MELI ZUBAEDAH', '281', 0, '2020-08-18 17:15:48'),
(835, '4012061', '', '', 'MIDIAN SARAGIH', '281', 0, '2020-08-18 17:15:48'),
(836, '2190017', '', '', 'MILA OKTAMILA', '281', 0, '2020-08-18 17:15:48'),
(837, '2206350', '', '', 'MIRZA ANDREAS', '281', 0, '2020-08-18 17:15:48'),
(838, '4012203', '', '', 'MOCH. SYAHRULLOH', '281', 0, '2020-08-18 17:15:48'),
(839, '2003206', '', '', 'MOCHAMAD ANWAR SURAHMAN', '281', 0, '2020-08-18 17:15:48'),
(840, '6170360', '', '', 'MOCHAMAD IKHSAN', '281', 0, '2020-08-18 17:15:48'),
(841, '2190023', '', '', 'MOHAMAD FARHAN ZHUHRI', '281', 0, '2020-08-18 17:15:48'),
(842, '2311546', '', '', 'MOHAMAD IRFAN', '281', 0, '2020-08-18 17:15:48'),
(843, '2106342', '', '', 'MOHAMAD YUNUS', '281', 0, '2020-08-18 17:15:48'),
(844, '2810084', '', '', 'MOHAMAD ZAKARIA', '281', 0, '2020-08-18 17:15:48'),
(845, '2601742', '', '', 'MUHAMAD', '281', 0, '2020-08-18 17:15:48'),
(846, '2908140', '', '', 'MUHAMAD FAUZI', '281', 0, '2020-08-18 17:15:48'),
(847, '2702918', '', '', 'MUHAMAD NASIR', '281', 0, '2020-08-18 17:15:48'),
(848, '4012095', '', '', 'MUHAMMAD SAMSUDIN', '281', 0, '2020-08-18 17:15:48'),
(849, '2903115', '', '', 'MUHAMMAD SYAIFULLAH', '281', 0, '2020-08-18 17:15:48'),
(850, '2505669', '', '', 'MUHAMMAD ZULQARNAIN', '281', 0, '2020-08-18 17:15:48'),
(851, '2705970', '', '', 'MULYADI', '281', 0, '2020-08-18 17:15:48'),
(852, '2608021', '', '', 'NADYA GUTHIANA', '281', 0, '2020-08-18 17:15:48'),
(853, '2308508', '', '', 'NALIH', '281', 0, '2020-08-18 17:15:48'),
(854, '2001157', '', '', 'NANA SUTISNA', '281', 0, '2020-08-18 17:15:48'),
(855, '2601005', '', '', 'NEHEMIA NOSEVY KRISTANTO', '281', 0, '2020-08-18 17:15:48'),
(856, '2508700', '', '', 'NGATNO', '281', 0, '2020-08-18 17:15:48'),
(857, '2103028', '', '', 'NIDAM', '281', 0, '2020-08-18 17:15:48'),
(858, '2511073', '', '', 'NITA NURGENITA', '281', 0, '2020-08-18 17:15:48'),
(859, '2507050', '', '', 'NOVI HERNANDO', '281', 0, '2020-08-18 17:15:48'),
(860, '2304063', '', '', 'NOVRIZAL', '281', 0, '2020-08-18 17:15:48'),
(861, '2910172', '', '', 'NUNI KURNIASIH', '281', 0, '2020-08-18 17:15:48'),
(862, '2505027', '', '', 'NUNKY LISTIYANI SOEHARYO', '281', 0, '2020-08-18 17:15:48'),
(863, '2905123', '', '', 'NUR ABDULLAH', '281', 0, '2020-08-18 17:15:48'),
(864, '2411056', '', '', 'NUR AIVANNI FATIMAH', '281', 0, '2020-08-18 17:15:48'),
(865, '4814027', '', '', 'NURANI', '281', 0, '2020-08-18 17:15:48'),
(866, '2604795', '', '', 'NURKANIA ISMONO', '281', 0, '2020-08-18 17:15:48'),
(867, '2006223', '', '', 'NURTJAHYADI', '281', 0, '2020-08-18 17:15:48'),
(868, '2511074', '', '', 'NURUL AROHMAT', '281', 0, '2020-08-18 17:15:48'),
(869, '2511071', '', '', 'NURUL ATIKA', '281', 0, '2020-08-18 17:15:48'),
(870, '2505046', '', '', 'OKKE INFANIA', '281', 0, '2020-08-18 17:15:48'),
(871, '2190004', '', '', 'PAJAR SIDIK', '281', 0, '2020-08-18 17:15:48'),
(872, '2601004', '', '', 'PAMUNGKAS BAYU AJI', '281', 0, '2020-08-18 17:15:48'),
(873, '2007034', '', '', 'PANCA SYURKANI', '281', 0, '2020-08-18 17:15:48'),
(874, '2612052', '', '', 'PANJI ARI MURTI', '281', 0, '2020-08-18 17:15:48'),
(875, '2902029', '', '', 'PATNA BUDI UTAMI', '281', 0, '2020-08-18 17:15:48'),
(876, '2606026', '', '', 'PERMANA PANDEGA JAYA', '281', 0, '2020-08-18 17:15:48'),
(877, '2203019', '', '', 'PHUTUT HERMAWAN HARIYANT', '281', 0, '2020-08-18 17:15:48'),
(878, '2007240', '', '', 'PINTA RAJA DAMANIK', '281', 0, '2020-08-18 17:15:48'),
(879, '4012182', '', '', 'PIUS ERLANGGA', '281', 0, '2020-08-18 17:15:48'),
(880, '2308510', '', '', 'PRIADI', '281', 0, '2020-08-18 17:15:48'),
(881, '2502014', '', '', 'PUTRA ANANDA PURWAPRADAN', '281', 0, '2020-08-18 17:15:48'),
(882, '2406038', '', '', 'PUTRI ANISA YULIANI', '281', 0, '2020-08-18 17:15:48'),
(883, '2504040', '', '', 'PUTRI ROSMALIA OCTAVIYAN', '281', 0, '2020-08-18 17:15:48'),
(884, '2180024', '', '', 'QINTHARA ARABELLA MULYA', '281', 0, '2020-08-18 17:15:48'),
(885, '2510069', '', '', 'RACHMI UTAMI RACHMATYANI', '281', 0, '2020-08-18 17:15:48'),
(886, '2200003', '', '', 'RADE SITUTI', '281', 0, '2020-08-18 17:15:48'),
(887, '2512730', '', '', 'RADEN MUHAMMAD ZEN', '281', 0, '2020-08-18 17:15:48'),
(888, '2180035', '', '', 'RAHMATUL FAJRI', '281', 0, '2020-08-18 17:15:49'),
(889, '2190028', '', '', 'RAISSA LIBRAINA MUNANDAR', '281', 0, '2020-08-18 17:15:49'),
(890, '2206356', '', '', 'RAJA SUHUD V.H.M', '281', 0, '2020-08-18 17:15:49'),
(891, '2910050', '', '', 'RAMDANI', '281', 0, '2020-08-18 17:15:49'),
(892, '2209038', '', '', 'RATIH KUMALA DEWI', '281', 0, '2020-08-18 17:15:49'),
(893, '2301464', '', '', 'RETNO ERNING DYAH', '281', 0, '2020-08-18 17:15:49'),
(894, '2907029', '', '', 'RETNO HEMAWATI', '281', 0, '2020-08-18 17:15:49'),
(895, '2812130', '', '', 'REZA FITARZA ZEES', '281', 0, '2020-08-18 17:15:49'),
(896, '2107051', '', '', 'REZA KURNIAWAN', '281', 0, '2020-08-18 17:15:49'),
(897, '2190036', '', '', 'RHANDY PERMANA', '281', 0, '2020-08-18 17:15:49'),
(898, '4012210', '', '', 'RIANA SEPTIYANI', '281', 0, '2020-08-18 17:15:49'),
(899, '2605021', '', '', 'RICKY JULIAN', '281', 0, '2020-08-18 17:15:49'),
(900, '2504033', '', '', 'RIDHA KUSUMA PERDANA', '281', 0, '2020-08-18 17:15:50'),
(901, '2190003', '', '', 'RIFALDI PUTRA IRIANTO', '281', 0, '2020-08-18 17:15:50'),
(902, '2008243', '', '', 'RIKO ALFONSO', '281', 0, '2020-08-18 17:15:50'),
(903, '2501001', '', '', 'RIKY WISMIRON', '281', 0, '2020-08-18 17:15:50'),
(904, '2809120', '', '', 'RIMBO AFRED', '281', 0, '2020-08-18 17:15:50'),
(905, '2510067', '', '', 'RINALDY', '281', 0, '2020-08-18 17:15:50'),
(906, '2200001', '', '', 'RINTIS MULYANI', '281', 0, '2020-08-18 17:15:50'),
(907, '2601002', '', '', 'RIO OKTO M. WAAS', '281', 0, '2020-08-18 17:15:50'),
(908, '2311090', '', '', 'RIRI PUSPA DESTIANTY', '281', 0, '2020-08-18 17:15:50'),
(909, '2109057', '', '', 'RIYADH RAHMAT FAIRUSZ', '281', 0, '2020-08-18 17:15:50'),
(910, '2711076', '', '', 'RIZA MAULUDDIN', '281', 0, '2020-08-18 17:15:50'),
(911, '2312093', '', '', 'RIZKY NOOR ALAM', '281', 0, '2020-08-18 17:15:50'),
(912, '2504037', '', '', 'RIZKY SEPTIAN', '281', 0, '2020-08-18 17:15:50'),
(913, '2110305', '', '', 'RIZQON FAHRUDIN', '281', 0, '2020-08-18 17:15:50'),
(914, '2206028', '', '', 'ROCKY ELYAS JACOBUS', '281', 0, '2020-08-18 17:15:50'),
(915, '4814021', '', '', 'ROCKY HERWIDIANTO', '281', 0, '2020-08-18 17:15:50'),
(916, '2706529', '', '', 'ROHMAT', '281', 0, '2020-08-18 17:15:50'),
(917, '4012196', '', '', 'ROSMAWATI', '281', 0, '2020-08-18 17:15:50'),
(918, '2909120', '', '', 'ROSMERY CHRISTINA S.', '281', 0, '2020-08-18 17:15:50'),
(919, '2504653', '', '', 'ROY FELIX SORONGAN', '281', 0, '2020-08-18 17:15:50'),
(920, '2104032', '', '', 'RUDY POLYCARPUS', '281', 0, '2020-08-18 17:15:50'),
(921, '2102013', '', '', 'RUGADI TJAHJONO', '281', 0, '2020-08-18 17:15:50'),
(922, '4012201', '', '', 'RUKMI HAPSARI', '281', 0, '2020-08-18 17:15:50'),
(923, '2190022', '', '', 'RUSLAN', '281', 0, '2020-08-18 17:15:50'),
(924, '4012157', '', '', 'RUSLAN RAUF', '281', 0, '2020-08-18 17:15:50'),
(925, '4012200', '', '', 'RUSNANDI', '281', 0, '2020-08-18 17:15:50'),
(926, '2206029', '', '', 'SABAM SINAGA', '281', 0, '2020-08-18 17:15:50'),
(927, '2711077', '', '', 'SADAM BAYONG', '281', 0, '2020-08-18 17:15:50'),
(928, '2612874', '', '', 'SADYO KRISTIARTO', '281', 0, '2020-08-18 17:15:50'),
(929, '4814023', '', '', 'SAEFUL MAHRUF', '281', 0, '2020-08-18 17:15:50'),
(930, '2901105', '', '', 'SAENY ISKANDAR', '281', 0, '2020-08-18 17:15:50'),
(931, '2311087', '', '', 'SAIMIN', '281', 0, '2020-08-18 17:15:50'),
(932, '4012160', '', '', 'SAMSUL HIDAYAT', '281', 0, '2020-08-18 17:15:50'),
(933, '2406037', '', '', 'SARAH NURIATI ABDUL', '281', 0, '2020-08-18 17:15:50'),
(934, '2311541', '', '', 'SARJONO', '281', 0, '2020-08-18 17:15:50'),
(935, '2912143', '', '', 'SARWONO', '281', 0, '2020-08-18 17:15:50'),
(936, '2508697', '', '', 'SATIRI', '281', 0, '2020-08-18 17:15:50'),
(937, '2903069', '', '', 'SELAMAT SARAGIH', '281', 0, '2020-08-18 17:15:50'),
(938, '2106045', '', '', 'SENO ADITYA', '281', 0, '2020-08-18 17:15:50'),
(939, '2001182', '', '', 'SETYO WARDOYO', '281', 0, '2020-08-18 17:15:50'),
(940, '2208061', '', '', 'SHANTY NURPATRIA', '281', 0, '2020-08-18 17:15:50'),
(941, '2609032', '', '', 'SHENY SRI RAHAYU', '281', 0, '2020-08-18 17:15:50'),
(942, '2190030', '', '', 'SHERLY PURNAMA SARI', '281', 0, '2020-08-18 17:15:50'),
(943, '2905128', '', '', 'SHOPI', '281', 0, '2020-08-18 17:15:50'),
(944, '2508055', '', '', 'SIDIK PRAMONO', '281', 0, '2020-08-18 17:15:50'),
(945, '2601747', '', '', 'SIGIT SUPRIYANTO', '281', 0, '2020-08-18 17:15:51'),
(946, '2301462', '', '', 'SIMIN', '281', 0, '2020-08-18 17:15:51'),
(947, '2810086', '', '', 'SISWANTINI SURYANDARI', '281', 0, '2020-08-18 17:15:51'),
(948, '2411053', '', '', 'SITI AMELIA', '281', 0, '2020-08-18 17:15:51'),
(949, '2202009', '', '', 'SITI RETNO WULANDARI', '281', 0, '2020-08-18 17:15:51'),
(950, '2709036', '', '', 'SITI SRI REJEKI', '281', 0, '2020-08-18 17:15:51'),
(951, '2908142', '', '', 'SITRIA HAMID', '281', 0, '2020-08-18 17:15:51'),
(952, '2812093', '', '', 'SOELISTIJONO', '281', 0, '2020-08-18 17:15:51'),
(953, '6170359', '', '', 'SOFYAN', '281', 0, '2020-08-18 17:15:51'),
(954, '2190019', '', '', 'SONDANG JELITA', '281', 0, '2020-08-18 17:15:51'),
(955, '6170356', '', '', 'SONNY PRAMBADI', '281', 0, '2020-08-18 17:15:51'),
(956, '2203404', '', '', 'SRI AMPERAWATI', '281', 0, '2020-08-18 17:15:51'),
(957, '2211047', '', '', 'SRI PURWANDHARI', '281', 0, '2020-08-18 17:15:51'),
(958, '2170007', '', '', 'SRI UTAMI', '281', 0, '2020-08-18 17:15:51'),
(959, '2511072', '', '', 'STEFFI SINJI ARYANA', '281', 0, '2020-08-18 17:15:51'),
(960, '4012052', '', '', 'SUGENG', '281', 0, '2020-08-18 17:15:51'),
(961, '2802083', '', '', 'SUGENG SUMARIYADI', '281', 0, '2020-08-18 17:15:51'),
(962, '2409601', '', '', 'SUKISNO (DIST)', '281', 0, '2020-08-18 17:15:51'),
(963, '2507695', '', '', 'SUKISNO (PROD)', '281', 0, '2020-08-18 17:15:51'),
(964, '2401003', '', '', 'SULAEMAN GOJALI', '281', 0, '2020-08-18 17:15:51'),
(965, '2903070', '', '', 'SULAIMAN BASRI', '281', 0, '2020-08-18 17:15:51'),
(966, '2111396', '', '', 'SUMARDI', '281', 0, '2020-08-18 17:15:51'),
(967, '2810122', '', '', 'SUMARYANTO (FOTO)', '281', 0, '2020-08-18 17:15:51'),
(968, '2909169', '', '', 'SUMINAH SOEDJOTO', '281', 0, '2020-08-18 17:15:51'),
(969, '2301466', '', '', 'SUNARTO', '281', 0, '2020-08-18 17:15:51'),
(970, '2511082', '', '', 'SUNARYO', '281', 0, '2020-08-18 17:15:51'),
(971, '2009284', '', '', 'SUPARNO', '281', 0, '2020-08-18 17:15:51'),
(972, '2201315', '', '', 'SUPRIANTO', '281', 0, '2020-08-18 17:15:51'),
(973, '2903063', '', '', 'SUPRIYADI', '281', 0, '2020-08-18 17:15:51'),
(974, '2101281', '', '', 'SUPRIYANTONI T', '281', 0, '2020-08-18 17:15:51'),
(975, '2409613', '', '', 'SURYA ATMAJA', '281', 0, '2020-08-18 17:15:51'),
(976, '2604784', '', '', 'SURYANI', '281', 0, '2020-08-18 17:15:51'),
(977, '2170008', '', '', 'SURYANI WANDARI PUTRI PE', '281', 0, '2020-08-18 17:15:51'),
(978, '2809116', '', '', 'SUSANTO', '281', 0, '2020-08-18 17:15:51'),
(979, '2208450', '', '', 'SUTARLAN', '281', 0, '2020-08-18 17:15:51'),
(980, '4012106', '', '', 'SUTIKNO', '281', 0, '2020-08-18 17:15:51'),
(981, '2406584', '', '', 'SUWARJI', '281', 0, '2020-08-18 17:15:52'),
(982, '2503031', '', '', 'SWIELIDA ANGGRAITA', '281', 0, '2020-08-18 17:15:52'),
(983, '2211046', '', '', 'SYAILENDRA SURYA KARTIKA', '281', 0, '2020-08-18 17:15:52'),
(984, '2311547', '', '', 'SYAMSU RIZAL', '281', 0, '2020-08-18 17:15:52'),
(985, '2908143', '', '', 'SYARIEF OEBAIDILLAH', '281', 0, '2020-08-18 17:15:52'),
(986, '4012057', '', '', 'TAUFIK', '281', 0, '2020-08-18 17:15:52'),
(987, '2001188', '', '', 'TEDDY SETIADI', '281', 0, '2020-08-18 17:15:52'),
(988, '2712055', '', '', 'TEGUH NIRWAHJUDI', '281', 0, '2020-08-18 17:15:52'),
(989, '2803086', '', '', 'TERBIT VAN THERESIA', '281', 0, '2020-08-18 17:15:52'),
(990, '2307074', '', '', 'TESA OKTIANA SURBAKTI', '281', 0, '2020-08-18 17:15:52'),
(991, '2503016', '', '', 'THALATIE KAPRINA YANI', '281', 0, '2020-08-18 17:15:52'),
(992, '2190016', '', '', 'THANIA ASTAVARIE', '281', 0, '2020-08-18 17:15:52'),
(993, '2190011', '', '', 'THERESYA REMICA YULYANA', '281', 0, '2020-08-18 17:15:52'),
(994, '2103023', '', '', 'THOMAS HARMING SUWARTA', '281', 0, '2020-08-18 17:15:52'),
(995, '2506029', '', '', 'TITI SUPRIATI', '281', 0, '2020-08-18 17:15:52'),
(996, '4012038', '', '', 'TITIN ANGGRAINI', '281', 0, '2020-08-18 17:15:52'),
(997, '4012181', '', '', 'TOHARI', '281', 0, '2020-08-18 17:15:52'),
(998, '2505047', '', '', 'TRI AGRISMAN', '281', 0, '2020-08-18 17:15:52'),
(999, '2190025', '', '', 'TRI SUBARKAH', '281', 0, '2020-08-18 17:15:52'),
(1000, '2202326', '', '', 'TRINANTO HARY PURNOMO', '281', 0, '2020-08-18 17:15:52'),
(1001, '2210040', '', '', 'TRINI SILVIANI', '281', 0, '2020-08-18 17:15:52'),
(1002, '2604785', '', '', 'TRIWINARNO', '281', 0, '2020-08-18 17:15:52'),
(1003, '2606023', '', '', 'TRIYANTO', '281', 0, '2020-08-18 17:15:52'),
(1004, '2509074', '', '', 'TRIYONO', '281', 0, '2020-08-18 17:15:52'),
(1005, '2403224', '', '', 'TUBAGUS BAHRUDI', '281', 0, '2020-08-18 17:15:52'),
(1006, '4012180', '', '', 'TURMAN', '281', 0, '2020-08-18 17:15:52'),
(1007, '2510716', '', '', 'TUTIK SUNARSIH', '281', 0, '2020-08-18 17:15:52'),
(1008, '2180010', '', '', 'TYA AUDRIA ALVIANDHA', '281', 0, '2020-08-18 17:15:52'),
(1009, '2301054', '', '', 'ULFAHRURI ROSDIANA', '281', 0, '2020-08-18 17:15:52'),
(1010, '4012202', '', '', 'UMAR DANI', '281', 0, '2020-08-18 17:15:52'),
(1011, '2510080', '', '', 'USMAN ISKANDAR', '281', 0, '2020-08-18 17:15:52'),
(1012, '2910044', '', '', 'USMAN KANSONG', '281', 0, '2020-08-18 17:15:52'),
(1013, '2601001', '', '', 'VENNESA CAECILIA RUMONDO', '281', 0, '2020-08-18 17:15:52'),
(1014, '2908038', '', '', 'VICKY GUSTIAWAN', '281', 0, '2020-08-18 17:15:52'),
(1015, '2604790', '', '', 'VICTOR JP NABABAN', '281', 0, '2020-08-18 17:15:52'),
(1016, '2305065', '', '', 'WAHYU BIMA PRASETYO', '281', 0, '2020-08-18 17:15:52'),
(1017, '4012023', '', '', 'WAHYU KISWANTO', '281', 0, '2020-08-18 17:15:52'),
(1018, '2508692', '', '', 'WAJITO', '281', 0, '2020-08-18 17:15:52'),
(1019, '2508701', '', '', 'WARINO', '281', 0, '2020-08-18 17:15:52'),
(1020, '2202325', '', '', 'WAWA KARWATI', '281', 0, '2020-08-18 17:15:52'),
(1021, '2603007', '', '', 'WENDY RIZANTO', '281', 0, '2020-08-18 17:15:52'),
(1022, '2508066', '', '', 'WIDHOROSO', '281', 0, '2020-08-18 17:15:52'),
(1023, '2206355', '', '', 'WINDY DYAH INDRIANTARI', '281', 0, '2020-08-18 17:15:52'),
(1024, '2180012', '', '', 'WINDY YANUARI', '281', 0, '2020-08-18 17:15:52'),
(1025, '2904014', '', '', 'WISNU ARTO SUBARI', '281', 0, '2020-08-18 17:15:52'),
(1026, '2709075', '', '', 'YACOBUS Y. EKO NUGROHO', '281', 0, '2020-08-18 17:15:52'),
(1027, '2190024', '', '', 'YAKUB PRYATAMA WIJAYAATM', '281', 0, '2020-08-18 17:15:52'),
(1028, '2405017', '', '', 'YANUARITA ANUGERAHENI WI', '281', 0, '2020-08-18 17:15:52'),
(1029, '2705974', '', '', 'YOGI HERMAWAN', '281', 0, '2020-08-18 17:15:52'),
(1030, '2607027', '', '', 'YOGI PUTRA SATRIO', '281', 0, '2020-08-18 17:15:52'),
(1031, '2190021', '', '', 'YOGIE ADI PAMUNGKAS', '281', 0, '2020-08-18 17:15:52'),
(1032, '2404021', '', '', 'YUDI PRASETIO', '281', 0, '2020-08-18 17:15:52'),
(1033, '2170006', '', '', 'YUDO SUDOKO', '281', 0, '2020-08-18 17:15:52'),
(1034, '2180037', '', '', 'YUNINGSIH HANUM SARI', '281', 0, '2020-08-18 17:15:53'),
(1035, '2507037', '', '', 'ZUBAEDAH HANUM ILYAS', '281', 0, '2020-08-18 17:15:53'),
(1036, '2304018', '', '', 'ZULKIPLI ROHIM', '281', 0, '2020-08-18 17:15:53'),
(1037, '1142657', '', '', 'ARDY YANUS', '269', 0, '2020-08-18 17:15:53'),
(1038, '1132209', '', '', 'BAYU NOERCAHYO', '269', 0, '2020-08-18 17:15:53'),
(1039, '1142655', '', '', 'CHOIRIL CHODRI', '269', 0, '2020-08-18 17:15:53'),
(1040, '1173530', '', '', 'DEDIN SUKMANA', '269', 0, '2020-08-18 17:15:53'),
(1041, '1163227', '', '', 'DESSY HARIYATI', '269', 0, '2020-08-18 17:15:53'),
(1042, '1142911', '', '', 'DIMAS NURDIANTO', '269', 0, '2020-08-18 17:15:53'),
(1043, '1152986', '', '', 'ELISABETH NOVINA ANGGRAINI', '269', 0, '2020-08-18 17:15:53'),
(1044, '1111866', '', '', 'FERNANDO', '269', 0, '2020-08-18 17:15:53'),
(1045, '1152989', '', '', 'HAFIZH LUTHFIRAHMAN', '269', 0, '2020-08-18 17:15:53'),
(1046, '1203834', '', '', 'HENDRO WICAKSONO', '269', 0, '2020-08-18 17:15:53'),
(1047, '1132221', '', '', 'M. ARIEF HUSAIN', '269', 0, '2020-08-18 17:15:53'),
(1048, '1152990', '', '', 'M. KOIRUL ARIFIN', '269', 0, '2020-08-18 17:15:53'),
(1049, '1203851', '', '', 'MARTHA ANASTASIA BULANNA DAMANIK', '269', 0, '2020-08-18 17:15:53'),
(1050, '1000149', '', '', 'MEDO MAULIANZA', '269', 0, '2020-08-18 17:15:53'),
(1051, '1163327', '', '', 'MUHAMMAD ARGAN FADLY', '269', 0, '2020-08-18 17:15:53'),
(1052, '1121990', '', '', 'NICO TRI AFRIYANTO FAJAR', '269', 0, '2020-08-18 17:15:53'),
(1053, '1132471', '', '', 'PIRSA HENING PARAMADINA', '269', 0, '2020-08-18 17:15:53'),
(1054, '1132308', '', '', 'REZKI PRATAMI', '269', 0, '2020-08-18 17:15:53'),
(1055, '1132479', '', '', 'RIZAL ARIFIN HARTONO', '269', 0, '2020-08-18 17:15:53'),
(1056, '1122114', '', '', 'ROLIANO BERNANDO', '269', 0, '2020-08-18 17:15:53'),
(1057, '1132201', '', '', 'SANDI SUNIRJA', '269', 0, '2020-08-18 17:15:53'),
(1058, '1030723', '', '', 'SEPTI PRASETIANINGRUM', '269', 0, '2020-08-18 17:15:53'),
(1059, '1193789', '', '', 'SITI ATIKAH', '269', 0, '2020-08-18 17:15:53'),
(1060, '1132396', '', '', 'SUCI ROHMAYNI', '269', 0, '2020-08-18 17:15:53'),
(1061, '1030810', '', '', 'TRI MULYO', '269', 0, '2020-08-18 17:15:53'),
(1062, '1193773', '', '', 'WEYNAND SIMON', '269', 0, '2020-08-18 17:15:53'),
(1063, '1030712', '', '', 'WILY DHARMAWAN', '269', 0, '2020-08-18 17:15:53'),
(1064, '1010344', '', '', 'YUDHIL ADHA', '269', 0, '2020-08-18 17:15:53'),
(1065, '1193744', '', '', 'YUSA ARWANSYAH', '269', 0, '2020-08-18 17:15:53'),
(1066, '1173422', '', '', 'AGUNG SUSANTO', '208', 0, '2020-08-18 17:15:53'),
(1067, '1153216', '', '', 'ANDRIANI SUASTIYU', '208', 0, '2020-08-18 17:15:53'),
(1068, '1122050', '', '', 'HERMANTO SITUMORANG', '208', 0, '2020-08-18 17:15:53'),
(1069, '1193733', '', '', 'KURNAIN ARSYI RAMADHAN', '208', 0, '2020-08-18 17:15:53'),
(1070, '1193748', '', '', 'SEFTIAN ALFREDO', '208', 0, '2020-08-18 17:15:53'),
(1071, '1193755', '', '', 'VARUNA DEWI', '208', 0, '2020-08-18 17:15:53'),
(1072, '1173393', '', '', 'VINIDY VERDY AGUSTIN', '208', 0, '2020-08-18 17:15:53'),
(1073, '1163238', '', '', 'ADI SETYA WIBOWO', '267', 0, '2020-08-18 17:15:53'),
(1074, '1142855', '', '', 'ADINDA RIZA PUTRI', '267', 0, '2020-08-18 17:15:53'),
(1075, '1111788', '', '', 'ADITYA YUDHA', '267', 0, '2020-08-18 17:15:53'),
(1076, '1173516', '', '', 'ALBERTUS CAHYO UTOMO', '267', 0, '2020-08-18 17:15:53'),
(1077, '1122081', '', '', 'ALVINDO', '267', 0, '2020-08-18 17:15:53'),
(1078, '1183554', '', '', 'ANNIKA RISMA LIANITA', '267', 0, '2020-08-18 17:15:53'),
(1079, '1173512', '', '', 'ARUM PRAFITRI', '267', 0, '2020-08-18 17:15:53'),
(1080, '1173416', '', '', 'BAYU ADJI WIBOWO', '267', 0, '2020-08-18 17:15:53'),
(1081, '1173502', '', '', 'EGA KHANSA ALIFA', '267', 0, '2020-08-18 17:15:53'),
(1082, '1193762', '', '', 'EMYR ZUHRI PAHLEVI', '267', 0, '2020-08-18 17:15:53'),
(1083, '1193702', '', '', 'FADHLY MUHARRAM', '267', 0, '2020-08-18 17:15:53'),
(1084, '1000083', '', '', 'GATOT SETIYONO', '267', 0, '2020-08-18 17:15:53'),
(1085, '1122069', '', '', 'GRIAJENG RUTHJUNITARANI', '267', 0, '2020-08-18 17:15:53'),
(1086, '1142798', '', '', 'HARRY DWICAHYA', '267', 0, '2020-08-18 17:15:53'),
(1087, '1193764', '', '', 'ISNAR SITI SYARIFAH', '267', 0, '2020-08-18 17:15:53'),
(1088, '1173506', '', '', 'IVAN REYNALDI SYAPUTRA', '267', 0, '2020-08-18 17:15:53'),
(1089, '1061249', '', '', 'JOHAN KUSMAYANTO', '267', 0, '2020-08-18 17:15:53'),
(1090, '1153025', '', '', 'JUL ATRIS', '267', 0, '2020-08-18 17:15:53'),
(1091, '1132287', '', '', 'M. ARYA RANGGA WIRANATAKUSUMAH', '267', 0, '2020-08-18 17:15:53'),
(1092, '1153103', '', '', 'M. RIZA SETIAWAN', '267', 0, '2020-08-18 17:15:53'),
(1093, '1193741', '', '', 'MUHAMMAD BASAR NGARINGGOMI', '267', 0, '2020-08-18 17:15:53'),
(1094, '1193763', '', '', 'REIHAN BALQIS', '267', 0, '2020-08-18 17:15:53'),
(1095, '1122032', '', '', 'SANNY AKBAR PRATAMA', '267', 0, '2020-08-18 17:15:53'),
(1096, '1132359', '', '', 'STEVIE GOZA', '267', 0, '2020-08-18 17:15:53'),
(1097, '1071334', '', '', 'TONY SURYANTO', '267', 0, '2020-08-18 17:15:53'),
(1098, '1153191', '', '', 'YOSUA FIRDAUS PALALLO', '267', 0, '2020-08-18 17:15:53'),
(1099, '1153101', '', '', 'ACHMAD FIRDAUS (CONTENT)', '168', 0, '2020-08-18 17:15:53'),
(1100, '1142771', '', '', 'ACHMAD FIRDAUS (REDAKTUR)', '168', 0, '2020-08-18 17:15:53'),
(1101, '1203842', '', '', 'ADRI PRIMA', '168', 0, '2020-08-18 17:15:53'),
(1102, '1132423', '', '', 'AGUSTINUS SHINDU ALPITO', '168', 0, '2020-08-18 17:15:53'),
(1103, '1142794', '', '', 'AHMAD GARUDA', '168', 0, '2020-08-18 17:15:53'),
(1104, '1142802', '', '', 'ALFA SEPTIANO MANDALIKA', '168', 0, '2020-08-18 17:15:53'),
(1105, '1173469', '', '', 'CAHYANDARU KUNCOROJATI', '168', 0, '2020-08-18 17:15:53'),
(1106, '1173514', '', '', 'CECYLIA RURA PATULAK', '168', 0, '2020-08-18 17:15:53'),
(1107, '1152953', '', '', 'EKAWAN RAHARJA', '168', 0, '2020-08-18 17:15:53'),
(1108, '1153198', '', '', 'ELANG RIKI YANUAR', '168', 0, '2020-08-18 17:15:53'),
(1109, '1153044', '', '', 'GERVIN NATHANIEL PURBA', '168', 0, '2020-08-18 17:15:53'),
(1110, '1183637', '', '', 'GREGORIUS GELINO MBEMBOK', '168', 0, '2020-08-18 17:15:53'),
(1111, '1132564', '', '', 'KAUTSAR HALIM ZAMRONI', '168', 0, '2020-08-18 17:15:53'),
(1112, '1153086', '', '', 'LUFTHI ANGGRAENI', '168', 0, '2020-08-18 17:15:53'),
(1113, '1132191', '', '', 'M. BAGUS RACHMANTO', '168', 0, '2020-08-18 17:15:53'),
(1114, '1142830', '', '', 'M. MAMDUH IKHWAN', '168', 0, '2020-08-18 17:15:53'),
(1115, '1132637', '', '', 'NIA DEVIYANA', '168', 0, '2020-08-18 17:15:53'),
(1116, '1142796', '', '', 'PATRICK YOSUA PINARIA', '168', 0, '2020-08-18 17:15:53'),
(1117, '1142898', '', '', 'RENDY RENUKI HARDITO', '168', 0, '2020-08-18 17:15:53'),
(1118, '1061313', '', '', 'RIZKI YANUARDI', '168', 0, '2020-08-18 17:15:53'),
(1119, '1173539', '', '', 'RIZKIE FAUZIAN', '168', 0, '2020-08-18 17:15:53'),
(1120, '1142774', '', '', 'ROSA ANGGREATI', '168', 0, '2020-08-18 17:15:53'),
(1121, '1163313', '', '', 'YATIN SULEHA', '168', 0, '2020-08-18 17:15:53'),
(1122, '1183624', '', '', 'ABDY AZWAR', '165', 0, '2020-08-18 17:15:53'),
(1123, '1193804', '', '', 'ACHMAD FACHROZY DAY', '165', 0, '2020-08-18 17:15:53'),
(1124, '1122000', '', '', 'ADAM ALAMSYAH', '165', 0, '2020-08-18 17:15:53'),
(1125, '1071328', '', '', 'ADE FIRMAN', '165', 0, '2020-08-18 17:15:53'),
(1126, '1020591', '', '', 'ADE PERMANA ABRIAL', '165', 0, '2020-08-18 17:15:53'),
(1127, '1122099', '', '', 'ADI NUGROHO (JOY)', '165', 0, '2020-08-18 17:15:53'),
(1128, '1122002', '', '', 'ADWIN AGUNG K.', '165', 0, '2020-08-18 17:15:53'),
(1129, '1142892', '', '', 'AGRIANI M.', '165', 0, '2020-08-18 17:15:53'),
(1130, '1183567', '', '', 'AGUS TAUFIK', '165', 0, '2020-08-18 17:15:53'),
(1131, '1121924', '', '', 'AHMAD ANGGI HASIBUAN', '165', 0, '2020-08-18 17:15:53'),
(1132, '1193822', '', '', 'AHMAD SAFEII MAARIF', '165', 0, '2020-08-18 17:15:53'),
(1133, '1122023', '', '', 'ALAN INDRA', '165', 0, '2020-08-18 17:15:53'),
(1134, '1173406', '', '', 'ALHADI HABIBI', '165', 0, '2020-08-18 17:15:53'),
(1135, '1183663', '', '', 'AMI NOVITA LESTARI', '165', 0, '2020-08-18 17:15:53'),
(1136, '1183602', '', '', 'ANDRE APRIANTO', '165', 0, '2020-08-18 17:15:53'),
(1137, '1000169', '', '', 'ANDREAS DONIE SURYA BHARATA', '165', 0, '2020-08-18 17:15:53'),
(1138, '1121979', '', '', 'ANDRIE YUDHISTIRA', '165', 0, '2020-08-18 17:15:53'),
(1139, '1193736', '', '', 'ANDROMEDA ARIZAL FATHANO', '165', 0, '2020-08-18 17:15:53'),
(1140, '1132406', '', '', 'ANGGARI DINA ANGGRAINI', '165', 0, '2020-08-18 17:15:53'),
(1141, '1142824', '', '', 'ANGGIE MEIDYANA SETIAWAN', '165', 0, '2020-08-18 17:15:53'),
(1142, '1081532', '', '', 'ANTONIUS MASAKKE', '165', 0, '2020-08-18 17:15:53'),
(1143, '1122093', '', '', 'APRIARTO MUKTIADI', '165', 0, '2020-08-18 17:15:53'),
(1144, '1101675', '', '', 'ARI SETIAWAN', '165', 0, '2020-08-18 17:15:53'),
(1145, '1132592', '', '', 'ARIE JAYUSMAN', '165', 0, '2020-08-18 17:15:53'),
(1146, '1030714', '', '', 'ARIEF FIRMANSYAH', '165', 0, '2020-08-18 17:15:53'),
(1147, '1121920', '', '', 'ARIO ONTOSENO', '165', 0, '2020-08-18 17:15:53'),
(1148, '1121958', '', '', 'ARY NUGROHO SETIAWAN', '165', 0, '2020-08-18 17:15:53'),
(1149, '1000061', '', '', 'AUGUSTEIN LAURENS', '165', 0, '2020-08-18 17:15:53'),
(1150, '1051194', '', '', 'AWAD OSMARBEY', '165', 0, '2020-08-18 17:15:53'),
(1151, '1111775', '', '', 'AWALUDIN', '165', 0, '2020-08-18 17:15:53'),
(1152, '1153110', '', '', 'AYU YUNIA HARSARI', '165', 0, '2020-08-18 17:15:53'),
(1153, '1122004', '', '', 'AYUDIANA ALFIANA', '165', 0, '2020-08-18 17:15:53'),
(1154, '1173490', '', '', 'AZI MU\'AZIDIN', '165', 0, '2020-08-18 17:15:53'),
(1155, '1122005', '', '', 'AZIIZUL HAKIM', '165', 0, '2020-08-18 17:15:53'),
(1156, '1091576', '', '', 'BAYU RAMDHANI', '165', 0, '2020-08-18 17:15:53'),
(1157, '1051109', '', '', 'BAYU YUNANTO', '165', 0, '2020-08-18 17:15:53'),
(1158, '1203850', '', '', 'BERNARD HERMANTO SIAHAAN', '165', 0, '2020-08-18 17:15:53'),
(1159, '1111763', '', '', 'BUDI (SNG)', '165', 0, '2020-08-18 17:15:53'),
(1160, '1061232', '', '', 'CAHYA SUNANDAR', '165', 0, '2020-08-18 17:15:53'),
(1161, '1193815', '', '', 'CHAIRUNNISA NASUTION', '165', 0, '2020-08-18 17:15:53'),
(1162, '1163308', '', '', 'CHANDRA (ACEH)', '165', 0, '2020-08-18 17:15:53'),
(1163, '1183682', '', '', 'DANA MAULANA PANGARIBUAN', '165', 0, '2020-08-18 17:15:53'),
(1164, '1121954', '', '', 'DEDE RIANTO', '165', 0, '2020-08-18 17:15:53'),
(1165, '1183570', '', '', 'DEDI BUDI ARIYANTO', '165', 0, '2020-08-18 17:15:53'),
(1166, '1163335', '', '', 'DEDI SABARA', '165', 0, '2020-08-18 17:15:53'),
(1167, '1163333', '', '', 'DEDY AFRIANSYAH', '165', 0, '2020-08-18 17:15:53'),
(1168, '1193796', '', '', 'DHIANDRA MUGNI BINARA AYU', '165', 0, '2020-08-18 17:15:53'),
(1169, '1183607', '', '', 'DINEVADA BEUTY KUSUMA', '165', 0, '2020-08-18 17:15:53'),
(1170, '1121962', '', '', 'DIRHAMSYAH MAULANA', '165', 0, '2020-08-18 17:15:53'),
(1171, '1010365', '', '', 'DIYAN SRIKANDINI', '165', 0, '2020-08-18 17:15:53'),
(1172, '1010342', '', '', 'DONNY YUSSA', '165', 0, '2020-08-18 17:15:53'),
(1173, '1183605', '', '', 'DWI ARIS SETYA BUDI', '165', 0, '2020-08-18 17:15:53'),
(1174, '1101694', '', '', 'EDWIND GUSWANDHY N', '165', 0, '2020-08-18 17:15:53'),
(1175, '1142699', '', '', 'EDY SURANTA', '165', 0, '2020-08-18 17:15:53'),
(1176, '1183640', '', '', 'EKA SARI ALIA HASIBUAN', '165', 0, '2020-08-18 17:15:53'),
(1177, '1173497', '', '', 'ELSA FEBRINA SILALAHI', '165', 0, '2020-08-18 17:15:53'),
(1178, '1121935', '', '', 'ELVERINA MAHFIROH RAHMAH HIDAYATI', '165', 0, '2020-08-18 17:15:53'),
(1179, '1193710', '', '', 'ELVIRAWATI', '165', 0, '2020-08-18 17:15:53'),
(1180, '1132591', '', '', 'EVA ROSLITA MIAMOREINE RUMBUN', '165', 0, '2020-08-18 17:15:53'),
(1181, '1193705', '', '', 'EYS HERMANSAH', '165', 0, '2020-08-18 17:15:53'),
(1182, '1183665', '', '', 'FADDIKO NAURORA', '165', 0, '2020-08-18 17:15:53'),
(1183, '1163309', '', '', 'FAHMI REZA', '165', 0, '2020-08-18 17:15:53'),
(1184, '1142669', '', '', 'FANI AULIA RINI', '165', 0, '2020-08-18 17:15:53'),
(1185, '1193717', '', '', 'FATMA AYU HUSNASARI', '165', 0, '2020-08-18 17:15:53'),
(1186, '1183689', '', '', 'FEBRIAN AHMAD', '165', 0, '2020-08-18 17:15:54'),
(1187, '1183563', '', '', 'FEBRY SEPTIYAN WICAKSANA', '165', 0, '2020-08-18 17:15:54'),
(1188, '1183566', '', '', 'FIKRI ILHAMSYAH KAMIL', '165', 0, '2020-08-18 17:15:54'),
(1189, '1173501', '', '', 'FIONA YOSEFINA THEOSOZA HUTAPEA', '165', 0, '2020-08-18 17:15:54'),
(1190, '1183564', '', '', 'FIRMAN ADFRIANA', '165', 0, '2020-08-18 17:15:54'),
(1191, '1081544', '', '', 'FIRMAN ANDRIANA', '165', 0, '2020-08-18 17:15:54'),
(1192, '1081479', '', '', 'FIRMANSYAH MARUDIN', '165', 0, '2020-08-18 17:15:54'),
(1193, '1173439', '', '', 'FRANSKA LUKITO GURUSINGA', '165', 0, '2020-08-18 17:15:54'),
(1194, '1183619', '', '', 'GEMA ARINDA TANJUNG', '165', 0, '2020-08-18 17:15:54'),
(1195, '1020581', '', '', 'GIDEON SINAGA', '165', 0, '2020-08-18 17:15:54'),
(1196, '1111776', '', '', 'GILANG KELANA PUTRA', '165', 0, '2020-08-18 17:15:54'),
(1197, '1193793', '', '', 'GLORY NATHA', '165', 0, '2020-08-18 17:15:54'),
(1198, '1142825', '', '', 'HANI HANDAYANTI', '165', 0, '2020-08-18 17:15:54'),
(1199, '1132382', '', '', 'HANINDITO', '165', 0, '2020-08-18 17:15:54'),
(1200, '1142723', '', '', 'HARI IRAWADI', '165', 0, '2020-08-18 17:15:54'),
(1201, '1010367', '', '', 'HARIYADI', '165', 0, '2020-08-18 17:15:54'),
(1202, '1142722', '', '', 'HARRY FADLY', '165', 0, '2020-08-18 17:15:54'),
(1203, '1193798', '', '', 'HARTONO WIRA ARDI KUSUMA JAYA LASE', '165', 0, '2020-08-18 17:15:54'),
(1204, '1163319', '', '', 'HENDRA SAPUTRA', '165', 0, '2020-08-18 17:15:54'),
(1205, '1000087', '', '', 'HENDRI ISMAOEN', '165', 0, '2020-08-18 17:15:54'),
(1206, '1000208', '', '', 'HERMAN HAFSAH', '165', 0, '2020-08-18 17:15:54'),
(1207, '1142810', '', '', 'HERU NAZAR', '165', 0, '2020-08-18 17:15:54'),
(1208, '1132206', '', '', 'HIRWAN ALFIANSYAH', '165', 0, '2020-08-18 17:15:54'),
(1209, '1081545', '', '', 'IHAT SOLIHAT', '165', 0, '2020-08-18 17:15:54'),
(1210, '1193821', '', '', 'ILHAM FACHRUL ROSADI', '165', 0, '2020-08-18 17:15:54'),
(1211, '1051183', '', '', 'IMAM SUWANDI', '165', 0, '2020-08-18 17:15:54'),
(1212, '1111777', '', '', 'IRVAN JANUARI', '165', 0, '2020-08-18 17:15:54'),
(1213, '1183692', '', '', 'ISFAN HARUN RAMDHAN', '165', 0, '2020-08-18 17:15:54'),
(1214, '1142800', '', '', 'ISNAINI EDI RISTIAWAN', '165', 0, '2020-08-18 17:15:54'),
(1215, '1153068', '', '', 'JEANNYFFER WILLYAM', '165', 0, '2020-08-18 17:15:54'),
(1216, '1183690', '', '', 'JESSICA WULANDARI', '165', 0, '2020-08-18 17:15:54'),
(1217, '1010442', '', '', 'JOKO SUHARIYANTO', '165', 0, '2020-08-18 17:15:54'),
(1218, '1142773', '', '', 'JONI RISMANTO', '165', 0, '2020-08-18 17:15:54'),
(1219, '1183544', '', '', 'JOSUA RENO NUGROHO SAPUTRA REKSOSOEBROTO', '165', 0, '2020-08-18 17:15:54'),
(1220, '1020460', '', '', 'KABUL INDRAWAN', '165', 0, '2020-08-18 17:15:54'),
(1221, '1081550', '', '', 'KAMIL', '165', 0, '2020-08-18 17:15:54'),
(1222, '1142705', '', '', 'LAELA ZAHRA', '165', 0, '2020-08-18 17:15:54'),
(1223, '1153172', '', '', 'LEVIE MULIA WARDANA', '165', 0, '2020-08-18 17:15:54'),
(1224, '1183623', '', '', 'LIS PRATIWI', '165', 0, '2020-08-18 17:15:54'),
(1225, '1153048', '', '', 'LIVIA RAMADHANTI', '165', 0, '2020-08-18 17:15:54'),
(1226, '1132536', '', '', 'LUHUR HERTANTO', '165', 0, '2020-08-18 17:15:54'),
(1227, '1020549', '', '', 'M. ALI RABAN', '165', 0, '2020-08-18 17:15:54'),
(1228, '1081571', '', '', 'M. ASMAN', '165', 0, '2020-08-18 17:15:54'),
(1229, '1051125', '', '', 'M. DOLY HARAHAP', '165', 0, '2020-08-18 17:15:54'),
(1230, '1152977', '', '', 'M. FANI MAULANA', '165', 0, '2020-08-18 17:15:54'),
(1231, '1101695', '', '', 'M. FAUZI DJAMAL', '165', 0, '2020-08-18 17:15:54'),
(1232, '1121946', '', '', 'M. ROBBY PRATAMA', '165', 0, '2020-08-18 17:15:54'),
(1233, '1091577', '', '', 'M. YUSUF NURJAMAN', '165', 0, '2020-08-18 17:15:54'),
(1234, '1132593', '', '', 'M. ZUCHAL', '165', 0, '2020-08-18 17:15:54'),
(1235, '1091584', '', '', 'MANSUR ABDUL RAZAK', '165', 0, '2020-08-18 17:15:54'),
(1236, '1183687', '', '', 'MARSELINA TABITA', '165', 0, '2020-08-18 17:15:54'),
(1237, '1142675', '', '', 'MARSHALINA GITAFADILLA', '165', 0, '2020-08-18 17:15:54'),
(1238, '1183571', '', '', 'MAULANA RIDWAN MALIKI', '165', 0, '2020-08-18 17:15:54'),
(1239, '1183616', '', '', 'MERCY WIDJAJA', '165', 0, '2020-08-18 17:15:54'),
(1240, '1153095', '', '', 'MINANTY AYU PRASASTY', '165', 0, '2020-08-18 17:15:54'),
(1241, '1010363', '', '', 'MOH. HAFIZNI', '165', 0, '2020-08-18 17:15:54'),
(1242, '1193699', '', '', 'MUAL TUA H SITUMEANG', '165', 0, '2020-08-18 17:15:54'),
(1243, '1153207', '', '', 'MUGI PAMUNGKAS', '165', 0, '2020-08-18 17:15:54'),
(1244, '1173402', '', '', 'MUHAMMAD HARIS HASIBUAN', '165', 0, '2020-08-18 17:15:54'),
(1245, '1183618', '', '', 'MUHAMMAD REYSA', '165', 0, '2020-08-18 17:15:54'),
(1246, '1101666', '', '', 'MUHARDI', '165', 0, '2020-08-18 17:15:54'),
(1247, '1040854', '', '', 'MUKLIS EFENDI', '165', 0, '2020-08-18 17:15:54'),
(1248, '1132329', '', '', 'MUKTI ALI', '165', 0, '2020-08-18 17:15:54'),
(1249, '1000106', '', '', 'MUNFADLI', '165', 0, '2020-08-18 17:15:54'),
(1250, '1163276', '', '', 'NADINE SALSABILA UTOMO', '165', 0, '2020-08-18 17:15:54'),
(1251, '1122007', '', '', 'NARENDRA WISNU K', '165', 0, '2020-08-18 17:15:54'),
(1252, '1020493', '', '', 'NASRULLAH (ANAS)', '165', 0, '2020-08-18 17:15:54'),
(1253, '1040844', '', '', 'NASRULLOH', '165', 0, '2020-08-18 17:15:54'),
(1254, '1183597', '', '', 'NAUFAL NOOROSA RAGADINI', '165', 0, '2020-08-18 17:15:54'),
(1255, '1163305', '', '', 'NAWAFIL', '165', 0, '2020-08-18 17:15:54'),
(1256, '1132304', '', '', 'NIKEN YULIANA CHRISTIANTI', '165', 0, '2020-08-18 17:15:54'),
(1257, '1193797', '', '', 'NISRINA CANDRA KIRANA', '165', 0, '2020-08-18 17:15:54'),
(1258, '1183683', '', '', 'NOFIA ANDREANA', '165', 0, '2020-08-18 17:15:54'),
(1259, '1000108', '', '', 'NUR BUDI HARYANTO', '165', 0, '2020-08-18 17:15:54'),
(1260, '1183565', '', '', 'NUR IHSANULLAH', '165', 0, '2020-08-18 17:15:54'),
(1261, '1081527', '', '', 'NURHIDAYAT', '165', 0, '2020-08-18 17:15:54'),
(1262, '1111774', '', '', 'NUROHMAN', '165', 0, '2020-08-18 17:15:54'),
(1263, '1163334', '', '', 'NURSAFRI', '165', 0, '2020-08-18 17:15:54'),
(1264, '1121945', '', '', 'PRASETYO PRAYOGO', '165', 0, '2020-08-18 17:15:54'),
(1265, '1183691', '', '', 'PUDJA LESTARI', '165', 0, '2020-08-18 17:15:54'),
(1266, '1091592', '', '', 'PUGUH RONI WIDODO', '165', 0, '2020-08-18 17:15:54'),
(1267, '1142678', '', '', 'PUTRI NURUL ILMI', '165', 0, '2020-08-18 17:15:54'),
(1268, '1051110', '', '', 'R. LUKMAN ARIEF', '165', 0, '2020-08-18 17:15:54'),
(1269, '1173403', '', '', 'RAHMAD', '165', 0, '2020-08-18 17:15:54'),
(1270, '1183661', '', '', 'RAKYAN ADDYTYANALENDRA', '165', 0, '2020-08-18 17:15:54'),
(1271, '1132398', '', '', 'RESDHI WIBAWA', '165', 0, '2020-08-18 17:15:54'),
(1272, '1051135', '', '', 'RICKY DIONARDI', '165', 0, '2020-08-18 17:15:54'),
(1273, '1122112', '', '', 'RIDWAN BIMA SATRIA', '165', 0, '2020-08-18 17:15:54'),
(1274, '1183568', '', '', 'RIFKI ADI PRADANA', '165', 0, '2020-08-18 17:15:54'),
(1275, '1193780', '', '', 'RITA PITRIYANI', '165', 0, '2020-08-18 17:15:54'),
(1276, '1111771', '', '', 'RIYANTO EKO SAPUTRA', '165', 0, '2020-08-18 17:15:54'),
(1277, '1173376', '', '', 'ROBERT PARUS', '165', 0, '2020-08-18 17:15:54'),
(1278, '1040835', '', '', 'ROCHMAD NURWIJAYA', '165', 0, '2020-08-18 17:15:54'),
(1279, '1142745', '', '', 'ROLLY SYAHRUL HASIB', '165', 0, '2020-08-18 17:15:54'),
(1280, '1051127', '', '', 'ROMY DAVID SIAHAAN', '165', 0, '2020-08-18 17:15:54'),
(1281, '1153134', '', '', 'RULIYANTO PAMUNGKAS', '165', 0, '2020-08-18 17:15:54'),
(1282, '1193795', '', '', 'RUTH DIO ADORA MUSTE P.R', '165', 0, '2020-08-18 17:15:54'),
(1283, '1132492', '', '', 'SABAGO VIESAASA', '165', 0, '2020-08-18 17:15:54'),
(1284, '1183606', '', '', 'SABDA MB ROLLE', '165', 0, '2020-08-18 17:15:54'),
(1285, '1051126', '', '', 'SAIFUL BAKHRI RITONGA', '165', 0, '2020-08-18 17:15:54'),
(1286, '1163320', '', '', 'SAIFULLAH', '165', 0, '2020-08-18 17:15:54'),
(1287, '1183688', '', '', 'SANTA CICILIA SINABARIBA', '165', 0, '2020-08-18 17:15:54'),
(1288, '1091598', '', '', 'SATWIKA', '165', 0, '2020-08-18 17:15:54'),
(1289, '1132595', '', '', 'SHINTA NOVITA SARI', '165', 0, '2020-08-18 17:15:54'),
(1290, '1183664', '', '', 'SIDANG DEWANTO', '165', 0, '2020-08-18 17:15:54'),
(1291, '1010318', '', '', 'SIGIT WARDOYO', '165', 0, '2020-08-18 17:15:54'),
(1292, '1173395', '', '', 'SINGGIH NUGROHO', '165', 0, '2020-08-18 17:15:54'),
(1293, '1152925', '', '', 'SITI HUMAIROH BALQIS', '165', 0, '2020-08-18 17:15:54'),
(1294, '1183635', '', '', 'SITI LIYANA RAHMADANI', '165', 0, '2020-08-18 17:15:54'),
(1295, '1153091', '', '', 'SOFIA ZAKIAH', '165', 0, '2020-08-18 17:15:54'),
(1296, '1193698', '', '', 'SOFIYAN', '165', 0, '2020-08-18 17:15:54'),
(1297, '1020587', '', '', 'SUDIRMAN MUSTARY', '165', 0, '2020-08-18 17:15:54'),
(1298, '1071414', '', '', 'SUGIARTO', '165', 0, '2020-08-18 17:15:54'),
(1299, '1000014', '', '', 'SUKIMIN', '165', 0, '2020-08-18 17:15:54'),
(1300, '1153171', '', '', 'SWARI TYASA PUTRI WARDHANI', '165', 0, '2020-08-18 17:15:54'),
(1301, '1071424', '', '', 'SYAFRIZAL', '165', 0, '2020-08-18 17:15:54'),
(1302, '1132590', '', '', 'SYAHDAM ARRAHMAN', '165', 0, '2020-08-18 17:15:54'),
(1303, '1051136', '', '', 'SYALAHUDDIN SYARIF', '165', 0, '2020-08-18 17:15:54');
INSERT INTO `tab_user_temp` (`user_id`, `user_nip`, `user_email`, `user_pass`, `user_fname`, `user_dept`, `user_auth`, `created_date`) VALUES
(1304, '1163304', '', '', 'TASYA MEISHEILLA A.', '165', 0, '2020-08-18 17:15:54'),
(1305, '1081483', '', '', 'TEUKU ABDUL JABBAR', '165', 0, '2020-08-18 17:15:54'),
(1306, '1000151', '', '', 'TOMMY ARDIYANTO', '165', 0, '2020-08-18 17:15:54'),
(1307, '1132421', '', '', 'TRIYANISYA', '165', 0, '2020-08-18 17:15:54'),
(1308, '1173415', '', '', 'TRYPAMA RANDRA LAKSMANA', '165', 0, '2020-08-18 17:15:54'),
(1309, '1040989', '', '', 'UJIYANTO', '165', 0, '2020-08-18 17:15:54'),
(1310, '1020500', '', '', 'USRIZAL PULUNGAN', '165', 0, '2020-08-18 17:15:54'),
(1311, '1183648', '', '', 'VALLENCIA MELVINSY', '165', 0, '2020-08-18 17:15:54'),
(1312, '1183686', '', '', 'VALLENTINA CHELSY MAHARANI', '165', 0, '2020-08-18 17:15:54'),
(1313, '1173424', '', '', 'VERONICA MIRANTY MONIAGA', '165', 0, '2020-08-18 17:15:55'),
(1314, '1183609', '', '', 'WAHYU SIGIT NUGROHO', '165', 0, '2020-08-18 17:15:55'),
(1315, '1020529', '', '', 'WIBOWO', '165', 0, '2020-08-18 17:15:55'),
(1316, '1132594', '', '', 'WIDIYARTO CAHYA ADI', '165', 0, '2020-08-18 17:15:55'),
(1317, '1132566', '', '', 'WIEKE RICESA', '165', 0, '2020-08-18 17:15:55'),
(1318, '1071364', '', '', 'WILLY DATUS NAI', '165', 0, '2020-08-18 17:15:55'),
(1319, '1051113', '', '', 'WURIYANTO', '165', 0, '2020-08-18 17:15:55'),
(1320, '1121950', '', '', 'YAHDIN SYAFRIZAL', '165', 0, '2020-08-18 17:15:55'),
(1321, '1193802', '', '', 'YASMIN ATHANIA KHOTIMAH', '165', 0, '2020-08-18 17:15:55'),
(1322, '1020530', '', '', 'YB. JAROT HARYO BASWENDRO', '165', 0, '2020-08-18 17:15:55'),
(1323, '1132478', '', '', 'YENI AGUSTINA', '165', 0, '2020-08-18 17:15:55'),
(1324, '1122010', '', '', 'YOHANES DON BOSCO', '165', 0, '2020-08-18 17:15:55'),
(1325, '1051140', '', '', 'YUCHRI PRABUDI', '165', 0, '2020-08-18 17:15:55'),
(1326, '1000238', '', '', 'YUDIE RACHMAN', '165', 0, '2020-08-18 17:15:55'),
(1327, '1173499', '', '', 'YUSRIN ZATA LINI', '165', 0, '2020-08-18 17:15:55'),
(1328, '1000133', '', '', 'ZAKARIA', '165', 0, '2020-08-18 17:15:55'),
(1329, '1183549', '', '', 'ZEFANYA SARA SULISTIO', '165', 0, '2020-08-18 17:15:55'),
(1330, '1163287', '', '', 'ABDUL KOHAR', '167', 0, '2020-08-18 17:15:55'),
(1331, '1132643', '', '', 'ACHMAD ZULFIKAR FAZLI', '167', 0, '2020-08-18 17:15:55'),
(1332, '1142806', '', '', 'ADE HAPSARI LESTARINI', '167', 0, '2020-08-18 17:15:55'),
(1333, '1142735', '', '', 'AL ABRAR', '167', 0, '2020-08-18 17:15:55'),
(1334, '1153003', '', '', 'ANGGA BRATADHARMA', '167', 0, '2020-08-18 17:15:55'),
(1335, '1153037', '', '', 'ANGGI TONDI M', '167', 0, '2020-08-18 17:15:55'),
(1336, '1152942', '', '', 'ANNISA AYU ARTANTI', '167', 0, '2020-08-18 17:15:55'),
(1337, '1152949', '', '', 'ARGA SUMANTRI', '167', 0, '2020-08-18 17:15:55'),
(1338, '1153059', '', '', 'ARIF WICAKSONO', '167', 0, '2020-08-18 17:15:55'),
(1339, '1183670', '', '', 'CANDRA YURI NURALAM', '167', 0, '2020-08-18 17:15:55'),
(1340, '1183673', '', '', 'CINDY', '167', 0, '2020-08-18 17:15:55'),
(1341, '1183615', '', '', 'CITRA LARASATI', '167', 0, '2020-08-18 17:15:55'),
(1342, '1153087', '', '', 'DAMANG NAULI LUBIS', '167', 0, '2020-08-18 17:15:55'),
(1343, '1132408', '', '', 'DENY IRWANTO', '167', 0, '2020-08-18 17:15:55'),
(1344, '1132409', '', '', 'DESI ANGRIANI', '167', 0, '2020-08-18 17:15:55'),
(1345, '1173489', '', '', 'DHAIFURRAKHMAN ABAS', '167', 0, '2020-08-18 17:15:55'),
(1346, '1152951', '', '', 'EKO NORDIANSYAH', '167', 0, '2020-08-18 17:15:55'),
(1347, '1173522', '', '', 'FACHRI AUDHIA HAFIEZ', '167', 0, '2020-08-18 17:15:55'),
(1348, '1142845', '', '', 'FAJAR NUGRAHA', '167', 0, '2020-08-18 17:15:55'),
(1349, '1152927', '', '', 'FAUZAN HILAL', '167', 0, '2020-08-18 17:15:55'),
(1350, '1111829', '', '', 'GITHA FARAHDINA', '167', 0, '2020-08-18 17:15:55'),
(1351, '1153040', '', '', 'HARIANTY', '167', 0, '2020-08-18 17:15:55'),
(1352, '1132636', '', '', 'HUSEN MIFTAHUDIN', '167', 0, '2020-08-18 17:15:55'),
(1353, '1183671', '', '', 'ILHAM PRATAMA PUTRA', '167', 0, '2020-08-18 17:15:55'),
(1354, '1152947', '', '', 'ILHAM WIBOWO', '167', 0, '2020-08-18 17:15:55'),
(1355, '1183641', '', '', 'INDRA MAULANA', '167', 0, '2020-08-18 17:15:55'),
(1356, '1173528', '', '', 'INTAN YUNELIA', '167', 0, '2020-08-18 17:15:55'),
(1357, '1173425', '', '', 'JUVEN MARTUA SITOMPUL', '167', 0, '2020-08-18 17:15:55'),
(1358, '1142793', '', '', 'K. YUDHA WIRAKUSUMA', '167', 0, '2020-08-18 17:15:55'),
(1359, '1163340', '', '', 'KANIA SUTISNAWINATA', '167', 0, '2020-08-18 17:15:55'),
(1360, '1173519', '', '', 'KAUTSAR WIDYA PRABOWO', '167', 0, '2020-08-18 17:15:55'),
(1361, '1153089', '', '', 'KHALISHAH NURAMALINA', '167', 0, '2020-08-18 17:15:55'),
(1362, '1183672', '', '', 'KUMARA ANGGITA', '167', 0, '2020-08-18 17:15:55'),
(1363, '1132407', '', '', 'LUKMAN DIAHSARI', '167', 0, '2020-08-18 17:15:55'),
(1364, '1152967', '', '', 'M. ADAM', '167', 0, '2020-08-18 17:15:55'),
(1365, '1142738', '', '', 'M. RODHI AULIA', '167', 0, '2020-08-18 17:15:55'),
(1366, '1173386', '', '', 'M. SHOLAHADHIN AZHAR', '167', 0, '2020-08-18 17:15:55'),
(1367, '1173440', '', '', 'MARCHEILLA ARIESTA', '167', 0, '2020-08-18 17:15:55'),
(1368, '1132413', '', '', 'MEILIKHAH', '167', 0, '2020-08-18 17:15:55'),
(1369, '1153042', '', '', 'MISBAHOL MUNIR', '167', 0, '2020-08-18 17:15:55'),
(1370, '1183675', '', '', 'MUHAMMAD SYAHRUL RAMADHAN', '167', 0, '2020-08-18 17:15:55'),
(1371, '1153160', '', '', 'NUR AJIJAH', '167', 0, '2020-08-18 17:15:55'),
(1372, '1203837', '', '', 'RAHMAD NOTO UTOMO', '167', 0, '2020-08-18 17:15:55'),
(1373, '1173462', '', '', 'RAKA LESTARI', '167', 0, '2020-08-18 17:15:55'),
(1374, '1132411', '', '', 'RENATHA SWASTY MBUI', '167', 0, '2020-08-18 17:15:55'),
(1375, '1173527', '', '', 'SITI YONA HUKMANA', '167', 0, '2020-08-18 17:15:55'),
(1376, '1153135', '', '', 'SOBIH ABDUL WAHID', '167', 0, '2020-08-18 17:15:55'),
(1377, '1153162', '', '', 'SRI YANTI NAINGGOLAN', '167', 0, '2020-08-18 17:15:55'),
(1378, '1132639', '', '', 'SUCI SEDYA UTAMI', '167', 0, '2020-08-18 17:15:55'),
(1379, '1173523', '', '', 'SUNNAHOLOMI HALAKRISPEN', '167', 0, '2020-08-18 17:15:55'),
(1380, '1132581', '', '', 'SURYA PERKASA', '167', 0, '2020-08-18 17:15:55'),
(1381, '1183676', '', '', 'THEOFILUS IFAN SUCIPTO', '167', 0, '2020-08-18 17:15:55'),
(1382, '1153199', '', '', 'WAHYU DWI ANGGORO', '167', 0, '2020-08-18 17:15:55'),
(1383, '1142737', '', '', 'WANDA INDANA', '167', 0, '2020-08-18 17:15:55'),
(1384, '1153016', '', '', 'WANDI YUSUF', '167', 0, '2020-08-18 17:15:55'),
(1385, '1153159', '', '', 'WHISNU MARDIANSYAH', '167', 0, '2020-08-18 17:15:55'),
(1386, '1132200', '', '', 'WIJOKONGKO', '167', 0, '2020-08-18 17:15:55'),
(1387, '1121978', '', '', 'WILLY HARYONO', '167', 0, '2020-08-18 17:15:55'),
(1388, '1132446', '', '', 'YOGI BAYU AJI', '167', 0, '2020-08-18 17:15:55'),
(1389, '1203838', '', '', 'YUAN ABADI', '167', 0, '2020-08-18 17:15:55'),
(1390, '1000228', '', '', 'BUDIYANTO', '106', 0, '2020-08-18 17:15:55'),
(1391, '1193786', '', '', 'CHRISTINE YUNITA SAHULEKA', '106', 0, '2020-08-18 17:15:55'),
(1392, '1193767', '', '', 'MOH. ARIEF SUDITOMO', '106', 0, '2020-08-18 17:15:55'),
(1393, '1163348', '', '', 'NUNUNG SETIYANI', '106', 0, '2020-08-18 17:15:55'),
(1394, '1132506', '', '', 'ACHMAD FADJRI MUSHOFFA', '163', 0, '2020-08-18 17:15:55'),
(1395, '1132439', '', '', 'ADY PRASETYO', '163', 0, '2020-08-18 17:15:55'),
(1396, '1132215', '', '', 'AFRIT WIRA BUANA', '163', 0, '2020-08-18 17:15:55'),
(1397, '1000052', '', '', 'AGUNG MULYANA', '163', 0, '2020-08-18 17:15:55'),
(1398, '1010352', '', '', 'AGUNG PURNAWARMAN BRATA', '163', 0, '2020-08-18 17:15:55'),
(1399, '1153205', '', '', 'AGUS MUNDZIR', '163', 0, '2020-08-18 17:15:55'),
(1400, '1163237', '', '', 'AGUS RAKASIWI', '163', 0, '2020-08-18 17:15:55'),
(1401, '1081476', '', '', 'AHMAD THOFIQ', '163', 0, '2020-08-18 17:15:55'),
(1402, '1193781', '', '', 'AISA AYU FADILA', '163', 0, '2020-08-18 17:15:55'),
(1403, '1122001', '', '', 'AISHA MIADINAR', '163', 0, '2020-08-18 17:15:55'),
(1404, '1040987', '', '', 'AKHMAD DUDDY', '163', 0, '2020-08-18 17:15:55'),
(1405, '1051112', '', '', 'AKHSANUL ATO', '163', 0, '2020-08-18 17:15:55'),
(1406, '1101667', '', '', 'ALI HAMDAN', '163', 0, '2020-08-18 17:15:55'),
(1407, '1132623', '', '', 'ALI IKHWAN', '163', 0, '2020-08-18 17:15:55'),
(1408, '1051107', '', '', 'AMANDA OCTOVINA MANUPUTTY', '163', 0, '2020-08-18 17:15:55'),
(1409, '1121977', '', '', 'AMI LIDIYA MELANROSA', '163', 0, '2020-08-18 17:15:55'),
(1410, '1091595', '', '', 'ANDHINI', '163', 0, '2020-08-18 17:15:55'),
(1411, '1183628', '', '', 'ANGGI YUNIARTI SOFYANA', '163', 0, '2020-08-18 17:15:55'),
(1412, '1132598', '', '', 'ANISYA SYARIA', '163', 0, '2020-08-18 17:15:55'),
(1413, '1000057', '', '', 'ARIES FADHILAH', '163', 0, '2020-08-18 17:15:55'),
(1414, '1132468', '', '', 'ARIES PERMANA PUTRA', '163', 0, '2020-08-18 17:15:55'),
(1415, '1091633', '', '', 'ARTA TIAR SITUMORANG', '163', 0, '2020-08-18 17:15:55'),
(1416, '1193749', '', '', 'ASARELA STEFANIE WEENARTY', '163', 0, '2020-08-18 17:15:55'),
(1417, '1111827', '', '', 'AZELIA TRIFIANA', '163', 0, '2020-08-18 17:15:55'),
(1418, '1040872', '', '', 'BAMBANG HARIYO WICAKSONO', '163', 0, '2020-08-18 17:15:55'),
(1419, '1121926', '', '', 'CHARLEN M. YULIANA', '163', 0, '2020-08-18 17:15:55'),
(1420, '1193723', '', '', 'CHERRIE MARANI', '163', 0, '2020-08-18 17:15:55'),
(1421, '1101671', '', '', 'DANAR WAHYU SAPUTRO', '163', 0, '2020-08-18 17:15:55'),
(1422, '1173429', '', '', 'DAVERTA CHRISTINE', '163', 0, '2020-08-18 17:15:55'),
(1423, '1132404', '', '', 'DAVID GANCAR PRASOJO', '163', 0, '2020-08-18 17:15:55'),
(1424, '1193715', '', '', 'DENI RAMADHAN', '163', 0, '2020-08-18 17:15:55'),
(1425, '1121948', '', '', 'DIAN ARISTIA NINGRUM', '163', 0, '2020-08-18 17:15:55'),
(1426, '1000162', '', '', 'ERIAWAN BUDI SULISTYO', '163', 0, '2020-08-18 17:15:55'),
(1427, '1153006', '', '', 'EVAN JAYAATMAJA', '163', 0, '2020-08-18 17:15:55'),
(1428, '1173390', '', '', 'EVRI RIZQI MONARSHI', '163', 0, '2020-08-18 17:15:55'),
(1429, '1010449', '', '', 'FAUZAN DAHLAN', '163', 0, '2020-08-18 17:15:55'),
(1430, '1163229', '', '', 'FERDI SETIAWAN', '163', 0, '2020-08-18 17:15:55'),
(1431, '1142819', '', '', 'FERDIANSYAH', '163', 0, '2020-08-18 17:15:55'),
(1432, '1193792', '', '', 'FLORY ANGGI PAULINA AMBARITA', '163', 0, '2020-08-18 17:15:55'),
(1433, '1000284', '', '', 'HANDOYO SUSANTO', '163', 0, '2020-08-18 17:15:55'),
(1434, '1193758', '', '', 'HANNY PUSFITA SARI', '163', 0, '2020-08-18 17:15:55'),
(1435, '1010369', '', '', 'HILDA RACHMAWATI', '163', 0, '2020-08-18 17:15:55'),
(1436, '1020596', '', '', 'I MADE NGURAH PUTRA KUSUMA', '163', 0, '2020-08-18 17:15:55'),
(1437, '1121987', '', '', 'INTAN TANITA ADIESTIE', '163', 0, '2020-08-18 17:15:55'),
(1438, '1163286', '', '', 'IRENA PRETIKA WIDAYANTI', '163', 0, '2020-08-18 17:15:55'),
(1439, '1101716', '', '', 'ISKANDAR ZULKARNAIN', '163', 0, '2020-08-18 17:15:55'),
(1440, '1132576', '', '', 'ISMI HANIFAH', '163', 0, '2020-08-18 17:15:55'),
(1441, '1020462', '', '', 'ISWAHYUDI RACHMANTO', '163', 0, '2020-08-18 17:15:55'),
(1442, '1000094', '', '', 'JUAN NASUTION', '163', 0, '2020-08-18 17:15:55'),
(1443, '1000232', '', '', 'KARTINI SRI TJITRA', '163', 0, '2020-08-18 17:15:55'),
(1444, '1111781', '', '', 'KENNORTON HUTASOIT', '163', 0, '2020-08-18 17:15:55'),
(1445, '1071376', '', '', 'LALITA M. GANDAPUTRI', '163', 0, '2020-08-18 17:15:55'),
(1446, '1111770', '', '', 'LARAS PRATIWI', '163', 0, '2020-08-18 17:15:55'),
(1447, '1081541', '', '', 'LIDYA ROTINSULU', '163', 0, '2020-08-18 17:15:55'),
(1448, '1173541', '', '', 'LILIK SUCI CENDRANI', '163', 0, '2020-08-18 17:15:55'),
(1449, '1153017', '', '', 'M. AZHAR', '163', 0, '2020-08-18 17:15:55'),
(1450, '1121940', '', '', 'M. RIDSWAN ZTRYYA MULYA', '163', 0, '2020-08-18 17:15:55'),
(1451, '1193823', '', '', 'MADE RAHAYU SAPTARI DEWI', '163', 0, '2020-08-18 17:15:55'),
(1452, '1132237', '', '', 'MEYDI ANASARI', '163', 0, '2020-08-18 17:15:55'),
(1453, '1163277', '', '', 'MUHAMMAD SANDI FIRDAUS', '163', 0, '2020-08-18 17:15:55'),
(1454, '1132460', '', '', 'NIMAS YULIANINGTYAS', '163', 0, '2020-08-18 17:15:55'),
(1455, '1081504', '', '', 'PRAMONO HARI SUSANTO', '163', 0, '2020-08-18 17:15:55'),
(1456, '1061248', '', '', 'PRIHADI', '163', 0, '2020-08-18 17:15:55'),
(1457, '1173397', '', '', 'PRIMA VIRGINIA', '163', 0, '2020-08-18 17:15:55'),
(1458, '1020494', '', '', 'PRIYO SUSILO BUDI UTOMO', '163', 0, '2020-08-18 17:15:55'),
(1459, '1071375', '', '', 'RACHEL EDWIN MARIMBUNNA', '163', 0, '2020-08-18 17:15:55'),
(1460, '1010351', '', '', 'RAGIL MULYA WIKASTORO', '163', 0, '2020-08-18 17:15:55'),
(1461, '1132266', '', '', 'RAHKASIWI DIMAS SUSANTO', '163', 0, '2020-08-18 17:15:55'),
(1462, '1121931', '', '', 'RENGGI PUTRIMA', '163', 0, '2020-08-18 17:15:55'),
(1463, '1020594', '', '', 'RETNO SRI WAHYUNI', '163', 0, '2020-08-18 17:15:55'),
(1464, '1121937', '', '', 'RHEZA ARDIANSYAH', '163', 0, '2020-08-18 17:15:55'),
(1465, '1020463', '', '', 'RIKA CONDESSY', '163', 0, '2020-08-18 17:15:55'),
(1466, '1142718', '', '', 'RINI ANGGRAINI', '163', 0, '2020-08-18 17:15:55'),
(1467, '1132466', '', '', 'RIZKYA RANNIE SATITI', '163', 0, '2020-08-18 17:15:55'),
(1468, '1122009', '', '', 'ROMI ANDHI PURNOMO', '163', 0, '2020-08-18 17:15:55'),
(1469, '1173401', '', '', 'ROSI SOFIYA FAHMI AL MAHMUD', '163', 0, '2020-08-18 17:15:55'),
(1470, '1163235', '', '', 'RUHUT PARULIAN AMBARITA', '163', 0, '2020-08-18 17:15:55'),
(1471, '1051131', '', '', 'RUMINTANG MARBUN', '163', 0, '2020-08-18 17:15:55'),
(1472, '1132584', '', '', 'SAUZAN', '163', 0, '2020-08-18 17:15:55'),
(1473, '1132523', '', '', 'SELVIANA NAOMI TUMIDA', '163', 0, '2020-08-18 17:15:55'),
(1474, '1121949', '', '', 'SENO ARYANTOMO', '163', 0, '2020-08-18 17:15:55'),
(1475, '1193787', '', '', 'SUDARTONO PHANNOTO', '163', 0, '2020-08-18 17:15:55'),
(1476, '1122159', '', '', 'SUKMA SETIABUDI', '163', 0, '2020-08-18 17:15:55'),
(1477, '1020623', '', '', 'SYAIFUDIN', '163', 0, '2020-08-18 17:15:55'),
(1478, '1122024', '', '', 'SYARIFAH ROSIKHOH HAFIYAH', '163', 0, '2020-08-18 17:15:55'),
(1479, '1122170', '', '', 'TAMI MAULIANA', '163', 0, '2020-08-18 17:15:55'),
(1480, '1163256', '', '', 'TRI SUHARMAN', '163', 0, '2020-08-18 17:15:55'),
(1481, '1111835', '', '', 'VALENTINUS RESSA', '163', 0, '2020-08-18 17:15:55'),
(1482, '1051092', '', '', 'VALIANO LODEWIJK MARTIN HUTABARAT', '163', 0, '2020-08-18 17:15:55'),
(1483, '1132362', '', '', 'WIBOWO SILO AJI', '163', 0, '2020-08-18 17:15:55'),
(1484, '1040931', '', '', 'WINNY CAHYADI WIMPIARSA', '163', 0, '2020-08-18 17:15:55'),
(1485, '1122178', '', '', 'YOHANES STEPHANUS SIAHAINENIA', '163', 0, '2020-08-18 17:15:55'),
(1486, '1030693', '', '', 'YULIAN TRI SAPUTRA', '163', 0, '2020-08-18 17:15:55'),
(1487, '1132470', '', '', 'YULIANI NOORSAFITRI', '163', 0, '2020-08-18 17:15:55'),
(1488, '1071326', '', '', 'YUSRA ISMAIL', '163', 0, '2020-08-18 17:15:55'),
(1489, '1020658', '', '', 'A. WISHNU ARDHI N.', '164', 0, '2020-08-18 17:15:55'),
(1490, '1132547', '', '', 'ADE MULYANA SAMSUDIN', '164', 0, '2020-08-18 17:15:55'),
(1491, '1142654', '', '', 'ADERI PUTRA WICAKSONO', '164', 0, '2020-08-18 17:15:55'),
(1492, '1132615', '', '', 'ADI SUTANTO', '164', 0, '2020-08-18 17:15:55'),
(1493, '1183638', '', '', 'ADY WANSYAH', '164', 0, '2020-08-18 17:15:55'),
(1494, '1132568', '', '', 'AGUNG ADITYA NUGRAHA', '164', 0, '2020-08-18 17:15:55'),
(1495, '1010361', '', '', 'AGUNG JATI WIYONO', '164', 0, '2020-08-18 17:15:55'),
(1496, '1041022', '', '', 'AHMAD IRFAN JUNISETIA', '164', 0, '2020-08-18 17:15:55'),
(1497, '1142815', '', '', 'AJENG SITI ZAKIAH', '164', 0, '2020-08-18 17:15:55'),
(1498, '1193770', '', '', 'AKBAR RAMADHAN', '164', 0, '2020-08-18 17:15:55'),
(1499, '1132597', '', '', 'AKHMAD FAUZY', '164', 0, '2020-08-18 17:15:55'),
(1500, '1173364', '', '', 'AMALINA LUTHFIANI', '164', 0, '2020-08-18 17:15:55'),
(1501, '1163328', '', '', 'ANDHITA NOORYANI SARASATI', '164', 0, '2020-08-18 17:15:55'),
(1502, '1040828', '', '', 'ANDI PURWOKO', '164', 0, '2020-08-18 17:15:55'),
(1503, '1121988', '', '', 'ANGEL VALENTINA', '164', 0, '2020-08-18 17:15:55'),
(1504, '1101744', '', '', 'ARDIAN ABDILA DALIMUNTHE', '164', 0, '2020-08-18 17:15:55'),
(1505, '1122157', '', '', 'ARIAPUTRA EMIR', '164', 0, '2020-08-18 17:15:55'),
(1506, '1132445', '', '', 'ARIFIN EFFENDI', '164', 0, '2020-08-18 17:15:55'),
(1507, '1152921', '', '', 'ATIKA KUSUMAWARDANI', '164', 0, '2020-08-18 17:15:55'),
(1508, '1111790', '', '', 'BAYU PRAYUDANTO', '164', 0, '2020-08-18 17:15:55'),
(1509, '1132416', '', '', 'BIMA ALIMNA KAMIL', '164', 0, '2020-08-18 17:15:55'),
(1510, '1040837', '', '', 'BOWO TRIWIDODO', '164', 0, '2020-08-18 17:15:55'),
(1511, '1132573', '', '', 'BUDI WINAWAN', '164', 0, '2020-08-18 17:15:55'),
(1512, '1000248', '', '', 'CAHYONO SENOAJI', '164', 0, '2020-08-18 17:15:55'),
(1513, '1000224', '', '', 'CHRISTO HANTARIKSO', '164', 0, '2020-08-18 17:15:55'),
(1514, '1153052', '', '', 'CLARA ALVERINA', '164', 0, '2020-08-18 17:15:55'),
(1515, '1030739', '', '', 'DANI WIJAYANTO', '164', 0, '2020-08-18 17:15:55'),
(1516, '1111890', '', '', 'DERLY MAHESA SATYAWIRA', '164', 0, '2020-08-18 17:15:55'),
(1517, '1020523', '', '', 'DESI FITRIANI', '164', 0, '2020-08-18 17:15:55'),
(1518, '1142864', '', '', 'DESTIRA WIJAYANTI', '164', 0, '2020-08-18 17:15:55'),
(1519, '1000074', '', '', 'DEWI VENUS', '164', 0, '2020-08-18 17:15:55'),
(1520, '1132569', '', '', 'DIAN DWI DAMAYANTI', '164', 0, '2020-08-18 17:15:55'),
(1521, '1193807', '', '', 'DINA NOER OKTAVIANI', '164', 0, '2020-08-18 17:15:55'),
(1522, '1040830', '', '', 'DJAYENG SAPUTRO', '164', 0, '2020-08-18 17:15:55'),
(1523, '1183621', '', '', 'DK NENA TANDA', '164', 0, '2020-08-18 17:15:55'),
(1524, '1020506', '', '', 'DWI JUDI HARTANTO', '164', 0, '2020-08-18 17:15:55'),
(1525, '1152923', '', '', 'DWI SEPTIANSYAH', '164', 0, '2020-08-18 17:15:55'),
(1526, '1020525', '', '', 'EDI AHMAT GINTING S', '164', 0, '2020-08-18 17:15:55'),
(1527, '1030756', '', '', 'EDI SUFRIYANTO', '164', 0, '2020-08-18 17:15:55'),
(1528, '1010353', '', '', 'EDY PRASETYO', '164', 0, '2020-08-18 17:15:55'),
(1529, '1193810', '', '', 'ELSI ANISMAR', '164', 0, '2020-08-18 17:15:55'),
(1530, '1010403', '', '', 'ENDRA SUPRIYATNA', '164', 0, '2020-08-18 17:15:55'),
(1531, '1142693', '', '', 'ESTI DWI RAHMAWATI', '164', 0, '2020-08-18 17:15:55'),
(1532, '1173535', '', '', 'ETRIKA RIAMA SIAHAAN', '164', 0, '2020-08-18 17:15:55'),
(1533, '1183590', '', '', 'EUGENIE VINA NOVARINA', '164', 0, '2020-08-18 17:15:55'),
(1534, '1142670', '', '', 'FARIZ IMADUDDIN', '164', 0, '2020-08-18 17:15:55'),
(1535, '1132513', '', '', 'FAUZAN (EDITOR )', '164', 0, '2020-08-18 17:15:55'),
(1536, '1152987', '', '', 'FEBRIANY SANDRIYO', '164', 0, '2020-08-18 17:15:55'),
(1537, '1142914', '', '', 'FERRY FERDINAND', '164', 0, '2020-08-18 17:15:55'),
(1538, '1000081', '', '', 'FITRI FATHIA', '164', 0, '2020-08-18 17:15:55'),
(1539, '1000082', '', '', 'FRANSISCA WULANDARI', '164', 0, '2020-08-18 17:15:55'),
(1540, '1152918', '', '', 'GADIS BIANCA ANINDITHA', '164', 0, '2020-08-18 17:15:55'),
(1541, '1122045', '', '', 'GILANG ARIA SUTELA', '164', 0, '2020-08-18 17:15:55'),
(1542, '1132428', '', '', 'HERRY FITRIADI', '164', 0, '2020-08-18 17:15:55'),
(1543, '1183625', '', '', 'HILARY BERNADETHA RANGAN PASULU', '164', 0, '2020-08-18 17:15:55'),
(1544, '1152970', '', '', 'I MADE WISESA SEGARA S.', '164', 0, '2020-08-18 17:15:55'),
(1545, '1163314', '', '', 'IGNATIUS ELGA CHRISTYANTO', '164', 0, '2020-08-18 17:15:55'),
(1546, '1020616', '', '', 'IMAM BUDI MULYANA', '164', 0, '2020-08-18 17:15:55'),
(1547, '1163350', '', '', 'IRFANDI', '164', 0, '2020-08-18 17:15:55'),
(1548, '1193803', '', '', 'IRMAYANTI', '164', 0, '2020-08-18 17:15:55'),
(1549, '1020520', '', '', 'ISMAIL RABBUL IZZATI', '164', 0, '2020-08-18 17:15:55'),
(1550, '1000093', '', '', 'IWAN RUSLANI SETYOWIBOWO', '164', 0, '2020-08-18 17:15:55'),
(1551, '1010291', '', '', 'JAJANG JAYA ATMAJA', '164', 0, '2020-08-18 17:15:55'),
(1552, '1111831', '', '', 'JATI SULAIMAN', '164', 0, '2020-08-18 17:15:55'),
(1553, '1040832', '', '', 'JOHAN PAHLEVI RANGKUTI', '164', 0, '2020-08-18 17:15:55'),
(1554, '1010347', '', '', 'JULIUS ANTHONY DALUAS', '164', 0, '2020-08-18 17:15:55'),
(1555, '1193725', '', '', 'KARAMINA SAMULO', '164', 0, '2020-08-18 17:15:55'),
(1556, '1020576', '', '', 'M. BERLIANSYAH', '164', 0, '2020-08-18 17:15:55'),
(1557, '1132400', '', '', 'M. NUR ALFIAN', '164', 0, '2020-08-18 17:15:55'),
(1558, '1000101', '', '', 'MAHENDRO WISNU WARDONO', '164', 0, '2020-08-18 17:15:55'),
(1559, '1163262', '', '', 'MARIA FRANSISCA RAHAJENG JIWA PARAMITA', '164', 0, '2020-08-18 17:15:55'),
(1560, '1020547', '', '', 'MAS AD', '164', 0, '2020-08-18 17:15:55'),
(1561, '1142822', '', '', 'MICHAEL GONZALES', '164', 0, '2020-08-18 17:15:55'),
(1562, '1163315', '', '', 'MIRA RACHMALIA PUTRI', '164', 0, '2020-08-18 17:15:55'),
(1563, '1183589', '', '', 'MOH. DZIKRI HENDIKA', '164', 0, '2020-08-18 17:15:55'),
(1564, '1153168', '', '', 'MULKY HAYUN', '164', 0, '2020-08-18 17:15:55'),
(1565, '1142716', '', '', 'NANA JELLIANDA NEPU', '164', 0, '2020-08-18 17:15:55'),
(1566, '1071338', '', '', 'NUR DHIAN SANTOSO', '164', 0, '2020-08-18 17:15:55'),
(1567, '1040840', '', '', 'NURFI YULIANTI', '164', 0, '2020-08-18 17:15:55'),
(1568, '1071382', '', '', 'OTHMAN FIDA RUZGAR', '164', 0, '2020-08-18 17:15:55'),
(1569, '1040932', '', '', 'PAINO', '164', 0, '2020-08-18 17:15:55'),
(1570, '1132542', '', '', 'PANJI IRWANSYAH', '164', 0, '2020-08-18 17:15:55'),
(1571, '1173532', '', '', 'PUTRI OKTAVIANI', '164', 0, '2020-08-18 17:15:55'),
(1572, '1000262', '', '', 'R. ZAELANI', '164', 0, '2020-08-18 17:15:55'),
(1573, '1183629', '', '', 'RAHDHINI IKANINGRUM', '164', 0, '2020-08-18 17:15:55'),
(1574, '1193737', '', '', 'RAMDHANI', '164', 0, '2020-08-18 17:15:55'),
(1575, '1152957', '', '', 'RELLIXS AGUSTIAN', '164', 0, '2020-08-18 17:15:55'),
(1576, '1193746', '', '', 'RENDI MUTAQIN SIDIK', '164', 0, '2020-08-18 17:15:55'),
(1577, '1142876', '', '', 'RIANILA PRATIYO', '164', 0, '2020-08-18 17:15:55'),
(1578, '1132545', '', '', 'RIANTI DWI YANI', '164', 0, '2020-08-18 17:15:55'),
(1579, '1010337', '', '', 'RICO AIRMAS', '164', 0, '2020-08-18 17:15:55'),
(1580, '1020457', '', '', 'RINA RAHMADANI', '164', 0, '2020-08-18 17:15:55'),
(1581, '1122115', '', '', 'ROMANO BIYAN', '164', 0, '2020-08-18 17:15:55'),
(1582, '1132483', '', '', 'RUDI', '164', 0, '2020-08-18 17:15:55'),
(1583, '1121944', '', '', 'S.K BRILLYAN VANDY YANSA', '164', 0, '2020-08-18 17:15:55'),
(1584, '1142647', '', '', 'SARI RIANTIKA DAMAYANTI', '164', 0, '2020-08-18 17:15:55'),
(1585, '1081500', '', '', 'SATRIO PRIYO SAPTIKO', '164', 0, '2020-08-18 17:15:55'),
(1586, '1132472', '', '', 'SHENY LIBELS SOUMOKIL', '164', 0, '2020-08-18 17:15:55'),
(1587, '1183639', '', '', 'SHINTA MASDALENA', '164', 0, '2020-08-18 17:15:55'),
(1588, '1132565', '', '', 'SONY ANGGRIAWAN SIREGAR', '164', 0, '2020-08-18 17:15:55'),
(1589, '1020643', '', '', 'SORAYA ULFA ANGGRAINI NASUTION', '164', 0, '2020-08-18 17:15:55'),
(1590, '1000118', '', '', 'SRI FACHRIANI', '164', 0, '2020-08-18 17:15:55'),
(1591, '1040877', '', '', 'SRI RUSDIYANTO', '164', 0, '2020-08-18 17:15:55'),
(1592, '1152955', '', '', 'ST. MUTHIA ADYANDRA', '164', 0, '2020-08-18 17:15:55'),
(1593, '1030758', '', '', 'SUHADI', '164', 0, '2020-08-18 17:15:55'),
(1594, '1010304', '', '', 'SUPARJANA', '164', 0, '2020-08-18 17:15:55'),
(1595, '1030701', '', '', 'SUSILO SANTOSO UTOMO', '164', 0, '2020-08-18 17:15:55'),
(1596, '1081547', '', '', 'SYARIFUDIN', '164', 0, '2020-08-18 17:15:55'),
(1597, '1132543', '', '', 'TATU MULYANA', '164', 0, '2020-08-18 17:15:55'),
(1598, '1020638', '', '', 'TENGKU FAISAL', '164', 0, '2020-08-18 17:15:55'),
(1599, '1142816', '', '', 'TIA RISKANI PUSPA', '164', 0, '2020-08-18 17:15:55'),
(1600, '1153146', '', '', 'TOMMY YOGA PRAYITNO', '164', 0, '2020-08-18 17:15:55'),
(1601, '1000283', '', '', 'TUBAGUS FAJAR SIDIK', '164', 0, '2020-08-18 17:15:55'),
(1602, '1132490', '', '', 'UCHA FERNANDEZ', '164', 0, '2020-08-18 17:15:55'),
(1603, '1153144', '', '', 'USWATUN HASANAH (EDITOR)', '164', 0, '2020-08-18 17:15:55'),
(1604, '1132443', '', '', 'WAHYU SEPTIAN SYAPUTRA', '164', 0, '2020-08-18 17:15:55'),
(1605, '1020510', '', '', 'WIDIATMOKO', '164', 0, '2020-08-18 17:15:55'),
(1606, '1071423', '', '', 'WIJASENA HARUYAKTI', '164', 0, '2020-08-18 17:15:55'),
(1607, '1111768', '', '', 'WILDAN INDRAWAN', '164', 0, '2020-08-18 17:15:55'),
(1608, '1020678', '', '', 'YAYAN SURYANA', '164', 0, '2020-08-18 17:15:55'),
(1609, '1000178', '', '', 'YOHANES DONBOSKO ADJA', '164', 0, '2020-08-18 17:15:55'),
(1610, '1132544', '', '', 'ZULPIKRI RANGKUTI', '164', 0, '2020-08-18 17:15:55'),
(1611, '1010293', '', '', 'ABDUL MALIK SIREGAR', '271', 0, '2020-08-18 17:15:55'),
(1612, '1132332', '', '', 'ADHE SEPTIAN KHIGANSIH', '271', 0, '2020-08-18 17:15:55'),
(1613, '1132334', '', '', 'ADINDA KHALIL ARRAHMAN', '271', 0, '2020-08-18 17:15:55'),
(1614, '1132333', '', '', 'ARBANY NURUL AINI', '271', 0, '2020-08-18 17:15:55'),
(1615, '1153024', '', '', 'AVIDA VIRYA', '271', 0, '2020-08-18 17:15:55'),
(1616, '1000170', '', '', 'CHRIS MULIA HARI PATRIA', '271', 0, '2020-08-18 17:15:55'),
(1617, '1051210', '', '', 'M. IMAM WIBOWO', '271', 0, '2020-08-18 17:15:55'),
(1618, '1010447', '', '', 'M. SAIKHU', '271', 0, '2020-08-18 17:15:55'),
(1619, '1000185', '', '', 'RICO RIZAL', '271', 0, '2020-08-18 17:15:55'),
(1620, '1000258', '', '', 'YOPIE JAYA', '271', 0, '2020-08-18 17:15:55'),
(1621, '1173380', '', '', 'AKHMAD FAUZI', '103', 0, '2020-08-18 17:15:55'),
(1622, '1132620', '', '', 'ARIP PURWANTO', '103', 0, '2020-08-18 17:15:55'),
(1623, '1142758', '', '', 'AYU BUDIASIH', '103', 0, '2020-08-18 17:15:55'),
(1624, '1000220', '', '', 'DAPOT TAMBUNAN', '103', 0, '2020-08-18 17:15:55'),
(1625, '1081450', '', '', 'EKO PRASETYO (SEKRED)', '103', 0, '2020-08-18 17:15:55'),
(1626, '1173381', '', '', 'GHILMAN HAFIDZ', '103', 0, '2020-08-18 17:15:55'),
(1627, '1132515', '', '', 'HAWA ANUGRAH KUSHADIANTI', '103', 0, '2020-08-18 17:15:55'),
(1628, '1153008', '', '', 'JANE LATIFANY SRIADI', '103', 0, '2020-08-18 17:15:55'),
(1629, '1142910', '', '', 'LADY OCTORA', '103', 0, '2020-08-18 17:15:55'),
(1630, '1183626', '', '', 'LAGAN RIZKY DHEWANDY', '103', 0, '2020-08-18 17:15:55'),
(1631, '1152958', '', '', 'MEILINA KARTIKA DEWI', '103', 0, '2020-08-18 17:15:55'),
(1632, '1000261', '', '', 'NATA SAPUTRA', '103', 0, '2020-08-18 17:15:55'),
(1633, '1010444', '', '', 'NOER CHOLIS', '103', 0, '2020-08-18 17:15:55'),
(1634, '1132557', '', '', 'NOVIANI', '103', 0, '2020-08-18 17:15:55'),
(1635, '1020600', '', '', 'NOVITA DEWI SEKARASIH', '103', 0, '2020-08-18 17:15:55'),
(1636, '1010340', '', '', 'NURHASAN', '103', 0, '2020-08-18 17:15:55'),
(1637, '1193709', '', '', 'RATIH MELITA PURWANINGTYAS', '103', 0, '2020-08-18 17:15:55'),
(1638, '1132524', '', '', 'RIFQY HIDAYAT', '103', 0, '2020-08-18 17:15:55'),
(1639, '1132518', '', '', 'RISKY KURNIAWAN', '103', 0, '2020-08-18 17:15:55'),
(1640, '1132548', '', '', 'RIZKY ILHAM SURYADI', '103', 0, '2020-08-18 17:15:55'),
(1641, '1000256', '', '', 'RUSTAM', '103', 0, '2020-08-18 17:15:55'),
(1642, '1132526', '', '', 'SEVIANA', '103', 0, '2020-08-18 17:15:55'),
(1643, '1000119', '', '', 'SRI SAYEKTI', '103', 0, '2020-08-18 17:15:55'),
(1644, '1142865', '', '', 'WINARYO', '103', 0, '2020-08-18 17:15:55'),
(1645, '1010334', '', '', 'WONO MULYANTO', '103', 0, '2020-08-18 17:15:55'),
(1646, '1193759', '', '', 'ZECKY PRIMADONA', '103', 0, '2020-08-18 17:15:55'),
(1647, '1193713', '', '', 'PITTHAULY HAOMASAN', '228', 0, '2020-08-18 17:15:55'),
(1648, '1132184', '', '', 'RANI NURAINI', '228', 0, '2020-08-18 17:15:55'),
(1649, '1173537', '', '', 'ADINDA AZALIA', '260', 0, '2020-08-18 17:15:55'),
(1650, '1142727', '', '', 'ADYATMA BUNGA LESTARININGBUDI', '260', 0, '2020-08-18 17:15:55'),
(1651, '1183551', '', '', 'ANGIE VENIA FAMINA', '260', 0, '2020-08-18 17:15:55'),
(1652, '1122130', '', '', 'DINAH MEDINAH AL RUSTAM', '260', 0, '2020-08-18 17:15:55'),
(1653, '1122131', '', '', 'DITA PERMANA PUTRI', '260', 0, '2020-08-18 17:15:55'),
(1654, '1193820', '', '', 'ERIZA NURAVIA', '260', 0, '2020-08-18 17:15:55'),
(1655, '1061262', '', '', 'ISMU WARDHANI', '260', 0, '2020-08-18 17:15:55'),
(1656, '1122113', '', '', 'ROHMAH EKASARI', '260', 0, '2020-08-18 17:15:55'),
(1657, '1183698', '', '', 'TEDDY', '260', 0, '2020-08-18 17:15:55'),
(1658, '1041009', '', '', 'LINDA NIRMALA', '246', 0, '2020-08-18 17:15:55'),
(1659, '1153114', '', '', 'TRIANA SARI', '246', 0, '2020-08-18 17:15:55'),
(1660, '1000054', '', '', 'AGUS MULYADI', '197', 0, '2020-08-18 17:15:55'),
(1661, '1132453', '', '', 'NAMIROTUSYARIFAH', '197', 0, '2020-08-18 17:15:55'),
(1662, '1132465', '', '', 'ADE IRAWAN BUDI AGUNG WIBOWO', '268', 0, '2020-08-18 17:15:55'),
(1663, '1163259', '', '', 'ADHVIDYA', '268', 0, '2020-08-18 17:15:55'),
(1664, '1111892', '', '', 'AGUSTINUS LEOWARDI', '268', 0, '2020-08-18 17:15:55'),
(1665, '1041011', '', '', 'ANASTASIA KRISTI', '268', 0, '2020-08-18 17:15:55'),
(1666, '1193791', '', '', 'ASEP SAEPULOH', '268', 0, '2020-08-18 17:15:55'),
(1667, '1132462', '', '', 'BAIQ ROFIDHA RAHMAMUTIA', '268', 0, '2020-08-18 17:15:55'),
(1668, '1111887', '', '', 'CAROLINA MUSTIKA SETYASTUTI', '268', 0, '2020-08-18 17:15:55'),
(1669, '1121989', '', '', 'CINDY AMALIA', '268', 0, '2020-08-18 17:15:55'),
(1670, '1132444', '', '', 'DAMIEN ANINDITA HIMAWAN', '268', 0, '2020-08-18 17:15:55'),
(1671, '1132432', '', '', 'DANU ARIANTO', '268', 0, '2020-08-18 17:15:55'),
(1672, '1132401', '', '', 'DIAN RATNASARI', '268', 0, '2020-08-18 17:15:55'),
(1673, '1132430', '', '', 'E. ARUM DIAN PRAWESTI', '268', 0, '2020-08-18 17:15:55'),
(1674, '1122135', '', '', 'ERIK SETIABUDI', '268', 0, '2020-08-18 17:15:55'),
(1675, '1000079', '', '', 'ERWIN SETIAWAN', '268', 0, '2020-08-18 17:15:55'),
(1676, '1111844', '', '', 'FAIZAL ARDHIANSYAH', '268', 0, '2020-08-18 17:15:55'),
(1677, '1203845', '', '', 'FAJAR YUSUF ARIFIANTO', '268', 0, '2020-08-18 17:15:55'),
(1678, '1142913', '', '', 'GALIH MAULANA', '268', 0, '2020-08-18 17:15:55'),
(1679, '1193790', '', '', 'GILANG RAMADYA PRAKASA', '268', 0, '2020-08-18 17:15:55'),
(1680, '1030708', '', '', 'HARI RIYADI', '268', 0, '2020-08-18 17:15:55'),
(1681, '1132502', '', '', 'HEGAR LAURA', '268', 0, '2020-08-18 17:15:55'),
(1682, '1193745', '', '', 'IFAN ZULKARNAEN', '268', 0, '2020-08-18 17:15:55'),
(1683, '1203835', '', '', 'INDAH PUSPITA SARI', '268', 0, '2020-08-18 17:15:55'),
(1684, '1193743', '', '', 'JATI SHERAWIDIANTI', '268', 0, '2020-08-18 17:15:55'),
(1685, '1142820', '', '', 'MILA KUMALASARI', '268', 0, '2020-08-18 17:15:55'),
(1686, '1193750', '', '', 'MUHAMMAD GALIH WAHID HAKIM', '268', 0, '2020-08-18 17:15:55'),
(1687, '1153170', '', '', 'NI WAYAN PRIMAYANTI', '268', 0, '2020-08-18 17:15:55'),
(1688, '1173505', '', '', 'NOFRIZA YUDDIE', '268', 0, '2020-08-18 17:15:55'),
(1689, '1193774', '', '', 'NOVISKA ISRIL', '268', 0, '2020-08-18 17:15:55'),
(1690, '1000226', '', '', 'PUJI RAHAYU', '268', 0, '2020-08-18 17:15:55'),
(1691, '1173509', '', '', 'RANDY DWI PUTRA', '268', 0, '2020-08-18 17:15:55'),
(1692, '1132399', '', '', 'RATNA PRAMULIA HASTININGRUM', '268', 0, '2020-08-18 17:15:55'),
(1693, '1132458', '', '', 'RESTU MAULANI', '268', 0, '2020-08-18 17:15:55'),
(1694, '1142652', '', '', 'ROBBY DIANA', '268', 0, '2020-08-18 17:15:55'),
(1695, '1030704', '', '', 'ROJIH', '268', 0, '2020-08-18 17:15:55'),
(1696, '1132282', '', '', 'SENNY ANGGRENI', '268', 0, '2020-08-18 17:15:55'),
(1697, '1203843', '', '', 'SITI PATIMAH', '268', 0, '2020-08-18 17:15:55'),
(1698, '1142912', '', '', 'SUKMAWATI', '268', 0, '2020-08-18 17:15:55'),
(1699, '1142683', '', '', 'SYUKRI NUR EFFENDI', '268', 0, '2020-08-18 17:15:55'),
(1700, '1142760', '', '', 'TIA FITRIYYAH', '268', 0, '2020-08-18 17:15:55'),
(1701, '1173513', '', '', 'TRIFIKA PRIHARTANTO WIJAYA', '268', 0, '2020-08-18 17:15:55'),
(1702, '1203844', '', '', 'VINNY SILVIA ALVIONITA', '268', 0, '2020-08-18 17:15:55'),
(1703, '1071381', '', '', 'WAWAN IRAWAN', '268', 0, '2020-08-18 17:15:55'),
(1704, '1193765', '', '', 'YERIMIA LEO PRABOWO', '268', 0, '2020-08-18 17:15:55'),
(1705, '1132236', '', '', 'YUDONO', '268', 0, '2020-08-18 17:15:55'),
(1706, '1153119', '', '', 'ALFONSUS OKI TINDARANA', '021', 0, '2020-08-18 17:15:55'),
(1707, '1163331', '', '', 'ANGGA WIDIANSYAH', '021', 0, '2020-08-18 17:15:55'),
(1708, '1142872', '', '', 'BAHTIAR FITRIAN', '021', 0, '2020-08-18 17:15:55'),
(1709, '1010420', '', '', 'BERLIANA NENSY YUSLINA', '021', 0, '2020-08-18 17:15:55'),
(1710, '1040955', '', '', 'BUDY SOELISTYA', '021', 0, '2020-08-18 17:15:55'),
(1711, '1030801', '', '', 'CINDEIZA IRNAMANTI', '021', 0, '2020-08-18 17:15:55'),
(1712, '1121915', '', '', 'DAUD TUNGGUL H. SIAHAAN', '021', 0, '2020-08-18 17:15:55'),
(1713, '1000200', '', '', 'DEVY OCTOVIA SETIOWATI', '021', 0, '2020-08-18 17:15:55'),
(1714, '1111783', '', '', 'DEWI ERLIANAWATI', '021', 0, '2020-08-18 17:15:55'),
(1715, '1132629', '', '', 'FARIZ ARDIYANSYAH', '021', 0, '2020-08-18 17:15:55'),
(1716, '1111785', '', '', 'FAUZAN (SIRDESK)', '021', 0, '2020-08-18 17:15:55'),
(1717, '1010411', '', '', 'HERI SULISTYOWATI', '021', 0, '2020-08-18 17:15:55'),
(1718, '1142870', '', '', 'HERMAWAN', '021', 0, '2020-08-18 17:15:55'),
(1719, '1101653', '', '', 'JAJAT MARDIANSYAH', '021', 0, '2020-08-18 17:15:55'),
(1720, '1121980', '', '', 'M. REZCKY RAMADHAN', '021', 0, '2020-08-18 17:15:55'),
(1721, '1132339', '', '', 'NOVAN SETIAWAN', '021', 0, '2020-08-18 17:15:55'),
(1722, '1000255', '', '', 'NURUDIN SISWADI HARSONO', '021', 0, '2020-08-18 17:15:55'),
(1723, '1142886', '', '', 'PENI SEPTARA WATI', '021', 0, '2020-08-18 17:15:55'),
(1724, '1010313', '', '', 'RICKY HENDRA NAINGGOLAN', '021', 0, '2020-08-18 17:15:55'),
(1725, '1132386', '', '', 'SANDRO MANALU', '021', 0, '2020-08-18 17:15:55'),
(1726, '1142706', '', '', 'SANDY DUNGGIO', '021', 0, '2020-08-18 17:15:55'),
(1727, '1000174', '', '', 'SITI NAJAH', '021', 0, '2020-08-18 17:15:55'),
(1728, '1111799', '', '', 'SUSANTI RAHARTO', '021', 0, '2020-08-18 17:15:55'),
(1729, '1163343', '', '', 'SYARAFINA', '021', 0, '2020-08-18 17:15:55'),
(1730, '1101682', '', '', 'TETTY FATIMAH RAHMANIA', '021', 0, '2020-08-18 17:15:55'),
(1731, '1142690', '', '', 'TITO ANDRO PRADIPTA', '021', 0, '2020-08-18 17:15:55'),
(1732, '1010400', '', '', 'VERONICA RAHELLENA REPI', '021', 0, '2020-08-18 17:15:55'),
(1733, '1142689', '', '', 'YODHA PRASETIA', '021', 0, '2020-08-18 17:15:55'),
(1734, '1132346', '', '', 'ZABDIEL ADI KUSUMA', '021', 0, '2020-08-18 17:15:55'),
(1735, '990716010', '', '', 'ABDUL ROHMAN', '204', 0, '2020-08-18 17:15:55'),
(1736, '990815078', '', '', 'ACEP KURNIAWAN', '204', 0, '2020-08-18 17:15:55'),
(1737, '6231921', '', '', 'ACHMAD SHOFI', '204', 0, '2020-08-18 17:15:55'),
(1738, '6231964', '', '', 'ADAMI RAI NUSA INSANI', '204', 0, '2020-08-18 17:15:55'),
(1739, '6231907', '', '', 'ADHYRA RAMADIANI', '204', 0, '2020-08-18 17:15:55'),
(1740, '990815054', '', '', 'ADJI PANGRUKTI', '204', 0, '2020-08-18 17:15:55'),
(1741, '6231998', '', '', 'ADRIANTO', '204', 0, '2020-08-18 17:15:55'),
(1742, '990418003', '', '', 'AFFAN', '204', 0, '2020-08-18 17:15:55'),
(1743, '990815100', '', '', 'AGNES ISNA YUDIANTO', '204', 0, '2020-08-18 17:15:55'),
(1744, '990815048', '', '', 'AGUNG SEPTIANA', '204', 0, '2020-08-18 17:15:55'),
(1745, '6231179', '', '', 'AHMAD GHAZALI', '204', 0, '2020-08-18 17:15:55'),
(1746, '990417002', '', '', 'AI PARIDAH', '204', 0, '2020-08-18 17:15:55'),
(1747, '5131622', '', '', 'AJI YUDHA RUKMANA', '204', 0, '2020-08-18 17:15:55'),
(1748, '2211921', '', '', 'AKBAR RIFALDI', '204', 0, '2020-08-18 17:15:55'),
(1749, '6231919', '', '', 'ALNARDO SUDIRJO', '204', 0, '2020-08-18 17:15:55'),
(1750, '990815047', '', '', 'ALVIN WAHYUDI', '204', 0, '2020-08-18 17:15:55'),
(1751, '6231141', '', '', 'ALYA APRILIANA', '204', 0, '2020-08-18 17:15:55'),
(1752, '990815108', '', '', 'AMINUDIN', '204', 0, '2020-08-18 17:15:55'),
(1753, '5131663', '', '', 'AMINUDIN', '204', 0, '2020-08-18 17:15:55'),
(1754, '5171831', '', '', 'ANDERIYANTO', '204', 0, '2020-08-18 17:15:55'),
(1755, '6231833', '', '', 'ANDI SURYA NUSA', '204', 0, '2020-08-18 17:15:55'),
(1756, '991017001', '', '', 'ANIS NUR AZIZAH', '204', 0, '2020-08-18 17:15:55'),
(1757, '6231999', '', '', 'ANTONIA KLAUDIA KARIKO', '204', 0, '2020-08-18 17:15:55'),
(1758, '6231947', '', '', 'APRILLIA IKAWATI', '204', 0, '2020-08-18 17:15:55'),
(1759, '6231161', '', '', 'ARIF PRADA', '204', 0, '2020-08-18 17:15:55'),
(1760, '6231865', '', '', 'ARLIN NURSOPHIANA', '204', 0, '2020-08-18 17:15:55'),
(1761, '990815093', '', '', 'ARMANTO', '204', 0, '2020-08-18 17:15:55'),
(1762, '6231971', '', '', 'ARSYAN PRAWIRA', '204', 0, '2020-08-18 17:15:55'),
(1763, '990815081', '', '', 'ASDI ROHMATULLAH', '204', 0, '2020-08-18 17:15:55'),
(1764, '990815095', '', '', 'ASEP CHAERUDIN', '204', 0, '2020-08-18 17:15:55'),
(1765, '990815094', '', '', 'ASYARI', '204', 0, '2020-08-18 17:15:55'),
(1766, '6231993', '', '', 'AURSELY PHILIA LIANDO', '204', 0, '2020-08-18 17:15:55'),
(1767, '6231994', '', '', 'AZMY GILANG MUHARROM', '204', 0, '2020-08-18 17:15:55'),
(1768, '991015001', '', '', 'BAMBANG WIJONARKO', '204', 0, '2020-08-18 17:15:55'),
(1769, '6231979', '', '', 'BENEDIKTUS AJI ANDANDI', '204', 0, '2020-08-18 17:15:55'),
(1770, '6515053', '', '', 'BUDI SANTOSO', '204', 0, '2020-08-18 17:15:55'),
(1771, '6231938', '', '', 'CAESA PUTRI DESTYA', '204', 0, '2020-08-18 17:15:55'),
(1772, '6231915', '', '', 'CATUR RACHMAT HIDAYAT', '204', 0, '2020-08-18 17:15:55'),
(1773, '6515057', '', '', 'DANY WAHYUDI', '204', 0, '2020-08-18 17:15:55'),
(1774, '990815084', '', '', 'DARMA WIKISANA', '204', 0, '2020-08-18 17:15:55'),
(1775, '6231950', '', '', 'DEA WULAN DIANI', '204', 0, '2020-08-18 17:15:55'),
(1776, '6231917', '', '', 'DEBORA STEVANI', '204', 0, '2020-08-18 17:15:55'),
(1777, '990815090', '', '', 'DEDE HERMANSYAH', '204', 0, '2020-08-18 17:15:55'),
(1778, '991216003', '', '', 'DEDE RIVKI', '204', 0, '2020-08-18 17:15:55'),
(1779, '990815053', '', '', 'DEDIH', '204', 0, '2020-08-18 17:15:55'),
(1780, '6416010', '', '', 'DESILIANA', '204', 0, '2020-08-18 17:15:55'),
(1781, '6231155', '', '', 'DESY NOVIYANTI', '204', 0, '2020-08-18 17:15:55'),
(1782, '6231128', '', '', 'DEVIANA IKA PUTRI', '204', 0, '2020-08-18 17:15:55'),
(1783, '6231899', '', '', 'DEVY ANGGITA', '204', 0, '2020-08-18 17:15:55'),
(1784, '6231944', '', '', 'DEWI INDAH SUHARTI', '204', 0, '2020-08-18 17:15:55'),
(1785, '6231928', '', '', 'DIAH FITRI AMALIA', '204', 0, '2020-08-18 17:15:56'),
(1786, '6231984', '', '', 'DINAR RANIWIHARTI', '204', 0, '2020-08-18 17:15:56'),
(1787, '990719005', '', '', 'DWI MEILINA', '204', 0, '2020-08-18 17:15:56'),
(1788, '6231975', '', '', 'DWIHERDIANTHO', '204', 0, '2020-08-18 17:15:56'),
(1789, '6231939', '', '', 'DWYA APRILYANTO', '204', 0, '2020-08-18 17:15:56'),
(1790, '6231884', '', '', 'EDGAR NURHAKIM', '204', 0, '2020-08-18 17:15:56'),
(1791, '990219001', '', '', 'EDI KURNIAWAN', '204', 0, '2020-08-18 17:15:56'),
(1792, '6231845', '', '', 'EDI KURNIAWAN', '204', 0, '2020-08-18 17:15:56'),
(1793, '6231176', '', '', 'EGA HAWA ARI MELATI', '204', 0, '2020-08-18 17:15:56'),
(1794, '6231980', '', '', 'ELGA PANJI PRATAMA', '204', 0, '2020-08-18 17:15:56'),
(1795, '6416015', '', '', 'ERLYNDA', '204', 0, '2020-08-18 17:15:56'),
(1796, '6231885', '', '', 'FADILLA IRNA KAROMAH', '204', 0, '2020-08-18 17:15:56'),
(1797, '990815102', '', '', 'FADLI ROKHMAN', '204', 0, '2020-08-18 17:15:56'),
(1798, '6231175', '', '', 'FAHMI ADITYA SUDJANA', '204', 0, '2020-08-18 17:15:56'),
(1799, '6231986', '', '', 'FAJAR ANGGI RANTAMA', '204', 0, '2020-08-18 17:15:56'),
(1800, '6231153', '', '', 'FAJAR IRSYAD FATURACHMAN', '204', 0, '2020-08-18 17:15:56'),
(1801, '6515061', '', '', 'FAJAR RIZKI', '204', 0, '2020-08-18 17:15:56'),
(1802, '990815079', '', '', 'FAUZI RIDWAN', '204', 0, '2020-08-18 17:15:56'),
(1803, '6231156', '', '', 'FERA RAHMATUN NAZILLAH', '204', 0, '2020-08-18 17:15:56'),
(1804, '5171839', '', '', 'FIKRI AGUSTIAN', '204', 0, '2020-08-18 17:15:56'),
(1805, '6231126', '', '', 'FIRAS SHIRAT DINIKA', '204', 0, '2020-08-18 17:15:56'),
(1806, '6231127', '', '', 'FITRIA MAHARANI', '204', 0, '2020-08-18 17:15:56'),
(1807, '6416017', '', '', 'FRANSISCA XAVERIA', '204', 0, '2020-08-18 17:15:56'),
(1808, '6231963', '', '', 'FRIDA ADESTYA', '204', 0, '2020-08-18 17:15:56'),
(1809, '6231989', '', '', 'GHAILAN ALDI MASYIQI', '204', 0, '2020-08-18 17:15:56'),
(1810, '6231135', '', '', 'GHINA TRESNA SORAYA', '204', 0, '2020-08-18 17:15:56'),
(1811, '6231902', '', '', 'GINA INDRAJATI KARTIKA', '204', 0, '2020-08-18 17:15:56'),
(1812, '5131694', '', '', 'HERRY HAMZAH', '204', 0, '2020-08-18 17:15:56'),
(1813, '5181842', '', '', 'HERU KURNIAWAN', '204', 0, '2020-08-18 17:15:56'),
(1814, '5161767', '', '', 'HERU PRASTYO', '204', 0, '2020-08-18 17:15:56'),
(1815, '6231102', '', '', 'HERU SUSANTO', '204', 0, '2020-08-18 17:15:56'),
(1816, '6231960', '', '', 'IBNU MALIK ARRAYSID', '204', 0, '2020-08-18 17:15:56'),
(1817, '6231995', '', '', 'ICHSAN FEBRIANSYAH', '204', 0, '2020-08-18 17:15:56'),
(1818, '6416011', '', '', 'IGO UDIONO', '204', 0, '2020-08-18 17:15:56'),
(1819, '990118002', '', '', 'IMOETHIA PRAYANTHY', '204', 0, '2020-08-18 17:15:56'),
(1820, '990815105', '', '', 'INDRIYANI', '204', 0, '2020-08-18 17:15:56'),
(1821, '5131681', '', '', 'IRWAN WINARMAN', '204', 0, '2020-08-18 17:15:56'),
(1822, '6231909', '', '', 'IS HARYANTO', '204', 0, '2020-08-18 17:15:56'),
(1823, '6231957', '', '', 'IVAN KAMARULLAH HERIANTO', '204', 0, '2020-08-18 17:15:56'),
(1824, '990815062', '', '', 'JAENAL ABIDIN', '204', 0, '2020-08-18 17:15:56'),
(1825, '990815074', '', '', 'JAJANG NURDIN', '204', 0, '2020-08-18 17:15:56'),
(1826, '990815031', '', '', 'JAJAT SUPRAJAT', '204', 0, '2020-08-18 17:15:56'),
(1827, '6515059', '', '', 'JAJAT SUPRAJAT', '204', 0, '2020-08-18 17:15:56'),
(1828, '990418005', '', '', 'JAMALLUDIN', '204', 0, '2020-08-18 17:15:56'),
(1829, '6231328', '', '', 'JOHAN TANAKA', '204', 0, '2020-08-18 17:15:56'),
(1830, '6231959', '', '', 'JOSHUA DANIEL LONDAH', '204', 0, '2020-08-18 17:15:56'),
(1831, '6231881', '', '', 'JULIA ELQISTI HARIANTI', '204', 0, '2020-08-18 17:15:56'),
(1832, '990617013', '', '', 'KABUL BUDIYONO', '204', 0, '2020-08-18 17:15:56'),
(1833, '5171832', '', '', 'KANAFI', '204', 0, '2020-08-18 17:15:56'),
(1834, '6231177', '', '', 'KATARINA JILIAN', '204', 0, '2020-08-18 17:15:56'),
(1835, '6231914', '', '', 'KEN AYU LIONTIA AGUSTIN', '204', 0, '2020-08-18 17:15:56'),
(1836, '5151717', '', '', 'KHAFY', '204', 0, '2020-08-18 17:15:56'),
(1837, '990815050', '', '', 'LAROJI', '204', 0, '2020-08-18 17:15:56'),
(1838, '6231187', '', '', 'LAWAMAHNUR', '204', 0, '2020-08-18 17:15:56'),
(1839, '6231983', '', '', 'LEAH ALEXIS LALOAN', '204', 0, '2020-08-18 17:15:56'),
(1840, '6231930', '', '', 'LUSIYANA ANDRIYANI', '204', 0, '2020-08-18 17:15:56'),
(1841, '6231925', '', '', 'M ARDIANSYAH', '204', 0, '2020-08-18 17:15:56'),
(1842, '6231691', '', '', 'M. IRVAN', '204', 0, '2020-08-18 17:15:56'),
(1843, '5181846', '', '', 'M. MUHAIMIN', '204', 0, '2020-08-18 17:15:56'),
(1844, '990815060', '', '', 'MAHFUZ', '204', 0, '2020-08-18 17:15:56'),
(1845, '6231976', '', '', 'MARIA DIANITA PROSPERIANI', '204', 0, '2020-08-18 17:15:56'),
(1846, '6231333', '', '', 'MARIA LADY CAROLINE', '204', 0, '2020-08-18 17:15:56'),
(1847, '5161811', '', '', 'MASWAN', '204', 0, '2020-08-18 17:15:56'),
(1848, '6231953', '', '', 'MAULANA QODRAT', '204', 0, '2020-08-18 17:15:56'),
(1849, '6416014', '', '', 'MEGAWATI', '204', 0, '2020-08-18 17:15:56'),
(1850, '990618003', '', '', 'MESSIANI GRACINA', '204', 0, '2020-08-18 17:15:56'),
(1851, '991016004', '', '', 'MILLI RUSWANDI', '204', 0, '2020-08-18 17:15:56'),
(1852, '6231969', '', '', 'MOCHAMAD ALI AKBAR', '204', 0, '2020-08-18 17:15:56'),
(1853, '6231170', '', '', 'MOHAMMAD GALIH RACHMAN', '204', 0, '2020-08-18 17:15:56'),
(1854, '6231883', '', '', 'MOHAMMAD REYNALDI', '204', 0, '2020-08-18 17:15:56'),
(1855, '6231168', '', '', 'MOHAMMAD SAIFUL ROHMAN', '204', 0, '2020-08-18 17:15:56'),
(1856, '990717003', '', '', 'MONICA ANGELLA', '204', 0, '2020-08-18 17:15:56'),
(1857, '990815032', '', '', 'MUH. WICAKSONO', '204', 0, '2020-08-18 17:15:56'),
(1858, '6515058', '', '', 'MUH. WICAKSONO', '204', 0, '2020-08-18 17:15:56'),
(1859, '6231973', '', '', 'MUHAMAD FACHRUL ALATAS', '204', 0, '2020-08-18 17:15:56'),
(1860, '6231955', '', '', 'MUHAMAD HARIANTO', '204', 0, '2020-08-18 17:15:56'),
(1861, '5181849', '', '', 'MUHAMAD IQBAL', '204', 0, '2020-08-18 17:15:56'),
(1862, '990518003', '', '', 'MUHAMAD IRFAN', '204', 0, '2020-08-18 17:15:56'),
(1863, '6231890', '', '', 'MUHAMAD REZZA KOSASIH', '204', 0, '2020-08-18 17:15:56'),
(1864, '5151742', '', '', 'MUHAMMAD ABDUH', '204', 0, '2020-08-18 17:15:56'),
(1865, '6231948', '', '', 'MUHAMMAD ADNAN', '204', 0, '2020-08-18 17:15:56'),
(1866, '6231967', '', '', 'MUHAMMAD FAKHRI', '204', 0, '2020-08-18 17:15:56'),
(1867, '990516003', '', '', 'MUHAMMAD HAFID NURAIN', '204', 0, '2020-08-18 17:15:56'),
(1868, '5101148', '', '', 'MUHAMMAD IDRIS ARDIANSYAH', '204', 0, '2020-08-18 17:15:56'),
(1869, '6231131', '', '', 'MUHAMMAD ZAINUL MAFAKHIR', '204', 0, '2020-08-18 17:15:56'),
(1870, '6231985', '', '', 'MUHAQIQ NIZHAN', '204', 0, '2020-08-18 17:15:56'),
(1871, '990417001', '', '', 'MULYATI', '204', 0, '2020-08-18 17:15:56'),
(1872, '6231820', '', '', 'MULYATI', '204', 0, '2020-08-18 17:15:56'),
(1873, '6231942', '', '', 'MUTIARA ANNISA', '204', 0, '2020-08-18 17:15:56'),
(1874, '6231166', '', '', 'NADIRA ESTA OETAMA', '204', 0, '2020-08-18 17:15:56'),
(1875, '6231926', '', '', 'NADYA ULFHA RIZKIA', '204', 0, '2020-08-18 17:15:56'),
(1876, '991016005', '', '', 'NANA SURYANA', '204', 0, '2020-08-18 17:15:56'),
(1877, '6231937', '', '', 'NATALIA SURYANINGSIH', '204', 0, '2020-08-18 17:15:56'),
(1878, '990815052', '', '', 'NAWAN', '204', 0, '2020-08-18 17:15:56'),
(1879, '6231991', '', '', 'NINDYA REFA TIRTANANDA', '204', 0, '2020-08-18 17:15:56'),
(1880, '6231798', '', '', 'NOPAN PAULINA', '204', 0, '2020-08-18 17:15:56'),
(1881, '6231981', '', '', 'NOURI ALDILA', '204', 0, '2020-08-18 17:15:56'),
(1882, '990815027', '', '', 'NOVI', '204', 0, '2020-08-18 17:15:56'),
(1883, '6231992', '', '', 'NOVITA PUTRI', '204', 0, '2020-08-18 17:15:56'),
(1884, '990815231', '', '', 'NOVITA SARI', '204', 0, '2020-08-18 17:15:56'),
(1885, '991217001', '', '', 'NUR AZMAN SAFRIANSYAH', '204', 0, '2020-08-18 17:15:56'),
(1886, '6231929', '', '', 'NURWIBOWO WICAKSONO', '204', 0, '2020-08-18 17:15:56'),
(1887, '6231171', '', '', 'ODI SETIAWAN', '204', 0, '2020-08-18 17:15:56'),
(1888, '6231864', '', '', 'OKI SANTOSO', '204', 0, '2020-08-18 17:15:56'),
(1889, '6231174', '', '', 'PANJI PANGESTU', '204', 0, '2020-08-18 17:15:56'),
(1890, '5181850', '', '', 'PARLINDUNGAN HUTAPEA', '204', 0, '2020-08-18 17:15:56'),
(1891, '6231138', '', '', 'PATRIC VICENZO', '204', 0, '2020-08-18 17:15:56'),
(1892, '6231150', '', '', 'PHOOBY KAMARATIH', '204', 0, '2020-08-18 17:15:56'),
(1893, '5131658', '', '', 'PURWANTO', '204', 0, '2020-08-18 17:15:56'),
(1894, '6231946', '', '', 'PUTRI WULANDARI', '204', 0, '2020-08-18 17:15:56'),
(1895, '6231862', '', '', 'RAFID AFIF HAERZI', '204', 0, '2020-08-18 17:15:56'),
(1896, '6231988', '', '', 'RAFLI ADITIA', '204', 0, '2020-08-18 17:15:56'),
(1897, '6231133', '', '', 'RAKA RADITYO', '204', 0, '2020-08-18 17:15:56'),
(1898, '6231935', '', '', 'RANDINI AYU PUTERI', '204', 0, '2020-08-18 17:15:56'),
(1899, '6231974', '', '', 'RANGGA ANDIKA', '204', 0, '2020-08-18 17:15:56'),
(1900, '990516001', '', '', 'RATNA NOVITA SARI', '204', 0, '2020-08-18 17:15:56'),
(1901, '6231760', '', '', 'RATU HEDA FARICHAD', '204', 0, '2020-08-18 17:15:56'),
(1902, '6231137', '', '', 'RENDI PRATAMA', '204', 0, '2020-08-18 17:15:56'),
(1903, '6231888', '', '', 'RENO FERDIAN', '204', 0, '2020-08-18 17:15:56'),
(1904, '6231849', '', '', 'RESSA RAMADANTY', '204', 0, '2020-08-18 17:15:56'),
(1905, '6231163', '', '', 'REVI MAHARANI', '204', 0, '2020-08-18 17:15:56'),
(1906, '990815237', '', '', 'RIANA', '204', 0, '2020-08-18 17:15:56'),
(1907, '990815025', '', '', 'RIDWAN SYAFEI', '204', 0, '2020-08-18 17:15:56'),
(1908, '6231824', '', '', 'RIESTYA APRICILLA', '204', 0, '2020-08-18 17:15:56'),
(1909, '6231178', '', '', 'RIMAWATI ESTHER', '204', 0, '2020-08-18 17:15:56'),
(1910, '5191877', '', '', 'RISKY SAOSA KARESI', '204', 0, '2020-08-18 17:15:56'),
(1911, '5181843', '', '', 'RIYANSYAH', '204', 0, '2020-08-18 17:15:56'),
(1912, '6231101', '', '', 'RIZKE KRISTIANI HARAHAP', '204', 0, '2020-08-18 17:15:56'),
(1913, '6231103', '', '', 'RIZKY ANDREASARI', '204', 0, '2020-08-18 17:15:56'),
(1914, '6231160', '', '', 'RIZKY BAGUS DHERMAWAN', '204', 0, '2020-08-18 17:15:56'),
(1915, '990815038', '', '', 'ROMAN', '204', 0, '2020-08-18 17:15:56'),
(1916, '6515052', '', '', 'ROMDHONI', '204', 0, '2020-08-18 17:15:56'),
(1917, '990815064', '', '', 'ROMDONI', '204', 0, '2020-08-18 17:15:56'),
(1918, '6231149', '', '', 'RONA MARINA NISAASARI', '204', 0, '2020-08-18 17:15:56'),
(1919, '6231844', '', '', 'RUDI HERMAWAN', '204', 0, '2020-08-18 17:15:56'),
(1920, '6231690', '', '', 'RUSMAYANI', '204', 0, '2020-08-18 17:15:56'),
(1921, '6231158', '', '', 'SANDRA ODILIFIA', '204', 0, '2020-08-18 17:15:56'),
(1922, '5131684', '', '', 'SANIMAN', '204', 0, '2020-08-18 17:15:56'),
(1923, '990815056', '', '', 'SITI FATMAWATI', '204', 0, '2020-08-18 17:15:56'),
(1924, '990616002', '', '', 'SOLIHIN', '204', 0, '2020-08-18 17:15:56'),
(1925, '6231162', '', '', 'SONY MARCIANO', '204', 0, '2020-08-18 17:15:56'),
(1926, '6416008', '', '', 'SUDIYANTO', '204', 0, '2020-08-18 17:15:56'),
(1927, '6321730', '', '', 'SUMIATI', '204', 0, '2020-08-18 17:15:56'),
(1928, '990815022', '', '', 'SUPENDI', '204', 0, '2020-08-18 17:15:56'),
(1929, '990118006', '', '', 'SYAMSUL BAHRI', '204', 0, '2020-08-18 17:15:56'),
(1930, '6231951', '', '', 'TANTRA WIDYA LAKSANA', '204', 0, '2020-08-18 17:15:56'),
(1931, '6231896', '', '', 'TIAS DINIRA UTAMI', '204', 0, '2020-08-18 17:15:56'),
(1932, '6231943', '', '', 'TIO PRASETIO', '204', 0, '2020-08-18 17:15:56'),
(1933, '6231692', '', '', 'TITI RUKITI', '204', 0, '2020-08-18 17:15:56'),
(1934, '6231316', '', '', 'TRIKO PRASIGIT', '204', 0, '2020-08-18 17:15:56'),
(1935, '5171834', '', '', 'UJANG AFIF SYAEFULLAH', '204', 0, '2020-08-18 17:15:56'),
(1936, '990518005', '', '', 'UJANG SUPRIATNA', '204', 0, '2020-08-18 17:15:56'),
(1937, '990716008', '', '', 'UMAR', '204', 0, '2020-08-18 17:15:56'),
(1938, '990518004', '', '', 'UNTUNG SELAMET HIDAYATULLAH', '204', 0, '2020-08-18 17:15:56'),
(1939, '6231165', '', '', 'UTARI RAHADI PRATIWI', '204', 0, '2020-08-18 17:15:56'),
(1940, '990815117', '', '', 'UUS USPIMAN', '204', 0, '2020-08-18 17:15:56'),
(1941, '6231916', '', '', 'VANIA RIVANTI ASMARA', '204', 0, '2020-08-18 17:15:56'),
(1942, '990815046', '', '', 'WAHYU AIRUDIN', '204', 0, '2020-08-18 17:15:56'),
(1943, '990815070', '', '', 'WAHYU PUSPITA DEWI', '204', 0, '2020-08-18 17:15:56');
INSERT INTO `tab_user_temp` (`user_id`, `user_nip`, `user_email`, `user_pass`, `user_fname`, `user_dept`, `user_auth`, `created_date`) VALUES
(1944, '990815026', '', '', 'WAWAN SETIAWAN', '204', 0, '2020-08-18 17:15:56'),
(1945, '6231148', '', '', 'WILDA PUSPA PRATIWI', '204', 0, '2020-08-18 17:15:56'),
(1946, '6231164', '', '', 'YOENIDZAR BAYANULLAH', '204', 0, '2020-08-18 17:15:56'),
(1947, '990815043', '', '', 'YOGA PRASETYO', '204', 0, '2020-08-18 17:15:56'),
(1948, '6231970', '', '', 'YUKE MARYAM FADILLAH', '204', 0, '2020-08-18 17:15:56'),
(1949, '990815069', '', '', 'YULI NURANIH', '204', 0, '2020-08-18 17:15:56'),
(1950, '6231147', '', '', 'YUNI YULI YANTI', '204', 0, '2020-08-18 17:15:56'),
(1951, '5181848', '', '', 'YUNINGSIH', '204', 0, '2020-08-18 17:15:56'),
(1952, '6231159', '', '', 'ZAEININA SHINTYA', '204', 0, '2020-08-18 17:15:56'),
(1953, '990815051', '', '', 'ZAENAL', '204', 0, '2020-08-18 17:15:56'),
(1954, '990815033', '', '', 'ZAINURI', '204', 0, '2020-08-18 17:15:56'),
(1955, '6515060', '', '', 'ZAINURI', '204', 0, '2020-08-18 17:15:56'),
(1956, '990815065', '', '', 'ZALDI', '204', 0, '2020-08-18 17:15:56'),
(1957, 'A130237', '', '', 'AGUNG DARMAWAN', '150', 0, '2020-08-18 17:15:56'),
(1958, 'A140409', '', '', 'ANGGA SETYA PRATAMA', '150', 0, '2020-08-18 17:15:56'),
(1959, 'A140419', '', '', 'BAGUS IMAN JUDIESANTO', '150', 0, '2020-08-18 17:15:56'),
(1960, '1000063', '', '', 'BAMBANG EKO TJAHJO', '150', 0, '2020-08-18 17:15:56'),
(1961, 'A130234', '', '', 'KARUNIA SARI', '150', 0, '2020-08-18 17:15:56'),
(1962, '1122048', '', '', 'RIFQI AJI WIDARSO', '150', 0, '2020-08-18 17:15:56'),
(1963, '1040958', '', '', 'SURANTO', '150', 0, '2020-08-18 17:15:56'),
(1964, '1000048', '', '', 'ABDUL MUKTI ANWAR', '191', 0, '2020-08-18 17:15:56'),
(1965, '1000049', '', '', 'ACHMAD SHAIFY', '191', 0, '2020-08-18 17:15:56'),
(1966, '1051069', '', '', 'AGUS SUPRIYADI', '191', 0, '2020-08-18 17:15:56'),
(1967, '1010388', '', '', 'AGUS YUMAWAN', '191', 0, '2020-08-18 17:15:56'),
(1968, '1010387', '', '', 'ALEXANDER SUSANTO', '191', 0, '2020-08-18 17:15:56'),
(1969, '1132363', '', '', 'AMRI SAPTO NUGROHO', '191', 0, '2020-08-18 17:15:56'),
(1970, '1132530', '', '', 'ANTON FARDIANSYAH', '191', 0, '2020-08-18 17:15:56'),
(1971, '1051193', '', '', 'BAMBANG ISDIYANTO', '191', 0, '2020-08-18 17:15:56'),
(1972, '1000071', '', '', 'DANANG MOYO HARJANTO', '191', 0, '2020-08-18 17:15:56'),
(1973, '1010378', '', '', 'DENY SISWANTO', '191', 0, '2020-08-18 17:15:56'),
(1974, '1132364', '', '', 'ENDAR TRI PUTRANTO', '191', 0, '2020-08-18 17:15:56'),
(1975, '1000139', '', '', 'ENED JUNED', '191', 0, '2020-08-18 17:15:56'),
(1976, '1132367', '', '', 'ERI SUBADRA', '191', 0, '2020-08-18 17:15:56'),
(1977, '1020550', '', '', 'FADJRAN SYAMSI LUBIS', '191', 0, '2020-08-18 17:15:56'),
(1978, '1132336', '', '', 'GHIFAR FATHURRAHMAN', '191', 0, '2020-08-18 17:15:56'),
(1979, '1173480', '', '', 'GILANG PRATAMA', '191', 0, '2020-08-18 17:15:56'),
(1980, '1020475', '', '', 'HERRY WISNU ANDHIKA', '191', 0, '2020-08-18 17:15:56'),
(1981, '1010425', '', '', 'IGN. SINDHU ANDRI SAHARDO', '191', 0, '2020-08-18 17:15:56'),
(1982, '1000286', '', '', 'ISMAIL FAHMI', '191', 0, '2020-08-18 17:15:56'),
(1983, '1051071', '', '', 'JOEL SYAFRIL', '191', 0, '2020-08-18 17:15:56'),
(1984, '1000141', '', '', 'JONI ZEIN', '191', 0, '2020-08-18 17:15:56'),
(1985, '1000214', '', '', 'MADYONO', '191', 0, '2020-08-18 17:15:56'),
(1986, '1041027', '', '', 'MULYADI', '191', 0, '2020-08-18 17:15:56'),
(1987, '1000276', '', '', 'MURJAYA SAPUTRA', '191', 0, '2020-08-18 17:15:56'),
(1988, '1030722', '', '', 'NANA SURYANA', '191', 0, '2020-08-18 17:15:56'),
(1989, '1000143', '', '', 'NUR BENNY SUKRISTIYANTONO', '191', 0, '2020-08-18 17:15:56'),
(1990, '1153093', '', '', 'PANJI JALU PRATAMA', '191', 0, '2020-08-18 17:15:56'),
(1991, '1132337', '', '', 'REZA NOVAYANSHA RUKMAYA', '191', 0, '2020-08-18 17:15:56'),
(1992, '1000282', '', '', 'RIDWAN', '191', 0, '2020-08-18 17:15:56'),
(1993, '1173479', '', '', 'RIVAYANTO', '191', 0, '2020-08-18 17:15:56'),
(1994, '1000279', '', '', 'ROSPATI', '191', 0, '2020-08-18 17:15:56'),
(1995, '1000267', '', '', 'RUSLI ACHMAD', '191', 0, '2020-08-18 17:15:56'),
(1996, '1000216', '', '', 'SAYED AZHAR', '191', 0, '2020-08-18 17:15:56'),
(1997, '1132372', '', '', 'SUKMA RELIGIADI', '191', 0, '2020-08-18 17:15:56'),
(1998, '1030724', '', '', 'SUWARNO', '191', 0, '2020-08-18 17:15:56'),
(1999, '1122116', '', '', 'TEGUH ARIF KRISTIYANTO', '191', 0, '2020-08-18 17:15:56'),
(2000, '1051035', '', '', 'WALUYO', '191', 0, '2020-08-18 17:15:56'),
(2001, '1010391', '', '', 'YOUFETA DEVY', '191', 0, '2020-08-18 17:15:56'),
(2002, '1193752', '', '', 'ABDUL RACHMAN TAMIN', '280', 0, '2020-08-18 17:15:56'),
(2003, '1193727', '', '', 'ADE KURNIAWAN', '280', 0, '2020-08-18 17:15:56'),
(2004, '1132442', '', '', 'AHMAD FURQON', '280', 0, '2020-08-18 17:15:56'),
(2005, '1081513', '', '', 'AJI JATMIKO', '280', 0, '2020-08-18 17:15:56'),
(2006, '1183546', '', '', 'ANDI SAPUTRA', '280', 0, '2020-08-18 17:15:56'),
(2007, '1132644', '', '', 'ANHAR', '280', 0, '2020-08-18 17:15:56'),
(2008, '1193747', '', '', 'ARDHIYANSYAH DEWANTORO', '280', 0, '2020-08-18 17:15:56'),
(2009, '1142885', '', '', 'ARISTA AFRIANTI', '280', 0, '2020-08-18 17:15:56'),
(2010, '1132434', '', '', 'BOWI ARDI BARKAH', '280', 0, '2020-08-18 17:15:56'),
(2011, '1101758', '', '', 'CITRA SUCI RIANIE', '280', 0, '2020-08-18 17:15:56'),
(2012, '1132250', '', '', 'CORY FRANSISKA PUTRI', '280', 0, '2020-08-18 17:15:56'),
(2013, '1091621', '', '', 'FARAH DINA', '280', 0, '2020-08-18 17:15:56'),
(2014, '1193753', '', '', 'HARSODO WIDHASTOMO', '280', 0, '2020-08-18 17:15:56'),
(2015, '1132373', '', '', 'HERLINA AGUSTIN', '280', 0, '2020-08-18 17:15:56'),
(2016, '1122038', '', '', 'IRMI LUQMANSARI', '280', 0, '2020-08-18 17:15:56'),
(2017, '1132604', '', '', 'KLAUS STEFANO NAINGGOLAN', '280', 0, '2020-08-18 17:15:56'),
(2018, '1111861', '', '', 'M. IRFAN', '280', 0, '2020-08-18 17:15:56'),
(2019, '1121983', '', '', 'MAULANI PRATIWI', '280', 0, '2020-08-18 17:15:56'),
(2020, '1183620', '', '', 'MAYANG ULFAH NARIMANDA', '280', 0, '2020-08-18 17:15:56'),
(2021, '1203841', '', '', 'MUHAMMAD ARIEF RAHMAN', '280', 0, '2020-08-18 17:15:56'),
(2022, '1193757', '', '', 'MUHAMMAD IQROM', '280', 0, '2020-08-18 17:15:56'),
(2023, '1173488', '', '', 'NAILA HAKAMIHYA MAQAMAH', '280', 0, '2020-08-18 17:15:56'),
(2024, '1132249', '', '', 'SANG AYU MADE NURSANTI W', '280', 0, '2020-08-18 17:15:56'),
(2025, '1203846', '', '', 'WANIAH', '280', 0, '2020-08-18 17:15:56'),
(2026, '1183547', '', '', 'YUNITA ANGGRAENI', '280', 0, '2020-08-18 17:15:56'),
(2027, '1132497', '', '', 'ARI AKBAR FILARDI', '009', 0, '2020-08-18 17:15:56'),
(2028, '1193742', '', '', 'CURTIS SYARIEF', '009', 0, '2020-08-18 17:15:56'),
(2029, '1122124', '', '', 'MUTISAH ARIESNA', '009', 0, '2020-08-18 17:15:56'),
(2030, '1071345', '', '', 'SURYONO', '009', 0, '2020-08-18 17:15:56'),
(2031, '1122150', '', '', 'WAHID ABDULLAH', '009', 0, '2020-08-18 17:15:56'),
(2032, '1122137', '', '', 'YB. HARTANTYO AGUNG KRISTIYONO', '009', 0, '2020-08-18 17:15:56'),
(2033, '1132419', '', '', 'ASTRI FRANSISKA', '001', 0, '2020-08-18 17:15:56'),
(2034, '1000065', '', '', 'BOY IRWAN NOYA', '001', 0, '2020-08-18 17:15:56'),
(2035, '1061307', '', '', 'HANDRY PULUNGAN', '001', 0, '2020-08-18 17:15:56'),
(2036, '1010418', '', '', 'ISABELLA DIART', '001', 0, '2020-08-18 17:15:56'),
(2037, '1010426', '', '', 'LINDAWATI', '001', 0, '2020-08-18 17:15:56'),
(2038, '1040938', '', '', 'REVILINO REZA MUAJA', '001', 0, '2020-08-18 17:15:56'),
(2039, '1051155', '', '', 'YASMIN A. HADI', '001', 0, '2020-08-18 17:15:56'),
(2040, '1020514', '', '', 'YULI MARDIANA', '001', 0, '2020-08-18 17:15:56'),
(2041, '1173453', '', '', 'AFIF ISWARDHANA BARMANSYAH', '223', 0, '2020-08-18 17:15:56'),
(2042, '2311540', '', '', 'FITRIANA SAIFUL BACHRI', '223', 0, '2020-08-18 17:15:56'),
(2043, '1193812', '', '', 'IGA PUTRI ADIPATI', '223', 0, '2020-08-18 17:15:56'),
(2044, '1173451', '', '', 'MAS MUHAMMAD SHAUMA RAMADHAN', '223', 0, '2020-08-18 17:15:56'),
(2045, '1193811', '', '', 'RAMADITA ALAMANDA', '223', 0, '2020-08-18 17:15:56'),
(2046, '1183647', '', '', 'REZI ROVELLY', '223', 0, '2020-08-18 17:15:56'),
(2047, '1173445', '', '', 'SAIPUDDIN SUKRI LUBIS', '223', 0, '2020-08-18 17:15:56'),
(2048, '1173464', '', '', 'YENNI RULITA GINTING', '223', 0, '2020-08-18 17:15:56'),
(2049, '1173447', '', '', 'YOPIE ROY MUNANTO', '223', 0, '2020-08-18 17:15:56'),
(2050, '1183654', '', '', 'FEBRINA FEISY MANONA', '243', 0, '2020-08-18 17:15:56'),
(2051, '1010356', '', '', 'JOHANES WINARKO', '243', 0, '2020-08-18 17:15:56'),
(2052, '1111881', '', '', 'LUSSYANA INDRA DEWI', '243', 0, '2020-08-18 17:15:56'),
(2053, '1153029', '', '', 'OCSA FEBRIAN BAYU VINADA', '243', 0, '2020-08-18 17:15:56'),
(2054, '1142788', '', '', 'RABBY RADINALDI', '243', 0, '2020-08-18 17:15:56'),
(2055, '1153028', '', '', 'RIVAN FEDISAPUTRA', '243', 0, '2020-08-18 17:15:56'),
(2056, '1030794', '', '', 'SYAILINDRA TRAMA SALIM', '243', 0, '2020-08-18 17:15:56'),
(2057, '1183678', '', '', 'DEVINA ARABELLA CHICALI', '270', 0, '2020-08-18 17:15:56'),
(2058, '1111818', '', '', 'KRIS WIJAYANTO', '270', 0, '2020-08-18 17:15:56'),
(2059, '1142709', '', '', 'WINDA RACHMITA', '270', 0, '2020-08-18 17:15:56'),
(2060, '1101742', '', '', 'ARLIANSYAH', '235', 0, '2020-08-18 17:15:56'),
(2061, '1000249', '', '', 'AULIA ARRIANA', '235', 0, '2020-08-18 17:15:56'),
(2062, '1000088', '', '', 'HENI RINAWATI', '235', 0, '2020-08-18 17:15:56'),
(2063, '1122145', '', '', 'IHSAN HASWINDI', '235', 0, '2020-08-18 17:15:56'),
(2064, '1132284', '', '', 'MATIAS BIMO SURATNO', '235', 0, '2020-08-18 17:15:56'),
(2065, '1203830', '', '', 'TRI GANDARUM WINASTUTI', '235', 0, '2020-08-18 17:15:56'),
(2066, '1051087', '', '', 'YAYAN PERMANA', '235', 0, '2020-08-18 17:15:56'),
(2067, '1051060', '', '', 'BERNARDUS HUDIORO PRASETYO', '236', 0, '2020-08-18 17:15:56'),
(2068, '1183633', '', '', 'CEMARA RATIH DEWANGGA', '236', 0, '2020-08-18 17:15:56'),
(2069, '1153125', '', '', 'FENY MUTIA ARDINI', '236', 0, '2020-08-18 17:15:56'),
(2070, '1183658', '', '', 'SAID REZA FAHLEVI', '236', 0, '2020-08-18 17:15:56'),
(2071, '1183578', '', '', 'STANLY SURYA', '236', 0, '2020-08-18 17:15:56'),
(2072, '1122154', '', '', 'T.M TOMMY HIKMAT SASTRADIWIRJA', '236', 0, '2020-08-18 17:15:56'),
(2073, '1111850', '', '', 'YUNDA RISA CAHYANTI', '236', 0, '2020-08-18 17:15:56'),
(2074, '1173515', '', '', 'ACHMAD PANJI PURNOMO', '237', 0, '2020-08-18 17:15:56'),
(2075, '1153138', '', '', 'ATIAH AYUNI', '237', 0, '2020-08-18 17:15:56'),
(2076, '1041024', '', '', 'CICELY HUNJAYA', '237', 0, '2020-08-18 17:15:56'),
(2077, '1183579', '', '', 'DIDI RIZALDHI', '237', 0, '2020-08-18 17:15:56'),
(2078, '1183668', '', '', 'IMAM MAULANA', '237', 0, '2020-08-18 17:15:56'),
(2079, '1142785', '', '', 'JULIANA SOPUTRA', '237', 0, '2020-08-18 17:15:56'),
(2080, '1111804', '', '', 'JULIUS CAESAR', '237', 0, '2020-08-18 17:15:56'),
(2081, '1183573', '', '', 'MICHA YERRO', '237', 0, '2020-08-18 17:15:56'),
(2082, '1121910', '', '', 'STEFANUS HUTANIJAYA', '237', 0, '2020-08-18 17:15:56'),
(2083, '1122061', '', '', 'WINDU WICAKSONO', '237', 0, '2020-08-18 17:15:56'),
(2084, '1183574', '', '', 'ANDIKA GUSTI RIADI', '238', 0, '2020-08-18 17:15:56'),
(2085, '1183585', '', '', 'ANNISA JULIA MUKMININ', '238', 0, '2020-08-18 17:15:56'),
(2086, '1101704', '', '', 'E. RIFKY DRAJAT H', '238', 0, '2020-08-18 17:15:56'),
(2087, '1132328', '', '', 'ERLINDA TRIANA', '238', 0, '2020-08-18 17:15:56'),
(2088, '1101757', '', '', 'IKA FERLY', '238', 0, '2020-08-18 17:15:56'),
(2089, '1183677', '', '', 'MEGA NURUL HIDAYATI', '238', 0, '2020-08-18 17:15:56'),
(2090, '1183667', '', '', 'YUNDHIYA ADI NUGROHO', '238', 0, '2020-08-18 17:15:56'),
(2091, '1071341', '', '', 'YUNITA', '238', 0, '2020-08-18 17:15:56'),
(2092, '1183553', '', '', 'YUSTIA KHOLIFAH SANDRA', '238', 0, '2020-08-18 17:15:56'),
(2093, '1051220', '', '', 'ADITIYAWARMAN', '239', 0, '2020-08-18 17:15:56'),
(2094, '1203832', '', '', 'CLIFF STEPHANUS CASIDI', '239', 0, '2020-08-18 17:15:56'),
(2095, '1193769', '', '', 'DWINANTO PUTRA', '239', 0, '2020-08-18 17:15:56'),
(2096, '1132426', '', '', 'FIRDA NINDYA SAPTARI', '239', 0, '2020-08-18 17:15:56'),
(2097, '1010292', '', '', 'RATU NUR HASANAH', '239', 0, '2020-08-18 17:15:56'),
(2098, '1122059', '', '', 'TAOFIK RANGGA GUMELAR', '239', 0, '2020-08-18 17:15:56'),
(2099, '1051221', '', '', 'TRI KURNIAWATI', '239', 0, '2020-08-18 17:15:56'),
(2100, '1163337', '', '', 'ADITYA ARIF BUDIANTO', '240', 0, '2020-08-18 17:15:56'),
(2101, '1071362', '', '', 'PRIBADI PRABOWO R.', '240', 0, '2020-08-18 17:15:56'),
(2102, '1153043', '', '', 'TETI APRIYANTI', '240', 0, '2020-08-18 17:15:56'),
(2103, '1203840', '', '', 'THALIA RAHMATIA PUTRI', '240', 0, '2020-08-18 17:15:56'),
(2104, '1121911', '', '', 'TRI SULISTYO YUNARTO', '240', 0, '2020-08-18 17:15:56'),
(2105, '1051124', '', '', 'VIVI FADJARWATI', '240', 0, '2020-08-18 17:15:56'),
(2106, '1122138', '', '', 'ADHE MAHARDIKA POETRA', '241', 0, '2020-08-18 17:15:56'),
(2107, '1020646', '', '', 'ARIES HERMAWANTI', '241', 0, '2020-08-18 17:15:56'),
(2108, '1183685', '', '', 'NINA NOVIANTARI', '241', 0, '2020-08-18 17:15:56'),
(2109, '1153002', '', '', 'RIZKY AHMAD NUGRAHA', '241', 0, '2020-08-18 17:15:56'),
(2110, '1173357', '', '', 'RUDI SANJAYA', '241', 0, '2020-08-18 17:15:56'),
(2111, '1122177', '', '', 'AVELLINA NOVIALY MARTONO', '242', 0, '2020-08-18 17:15:56'),
(2112, '1020521', '', '', 'SOFYAN SAORI', '242', 0, '2020-08-18 17:15:56'),
(2113, '1153032', '', '', 'TRI AJENG PERTIWI', '242', 0, '2020-08-18 17:15:56'),
(2114, '1183552', '', '', 'WIKI ASYANTI PRATIWI', '242', 0, '2020-08-18 17:15:56'),
(2115, '1163311', '', '', 'ANNE PRILIA', '183', 0, '2020-08-18 17:15:56'),
(2116, '1183575', '', '', 'ARNES VICI ZEFITRA', '183', 0, '2020-08-18 17:15:56'),
(2117, '1132499', '', '', 'ASBIANTY PATTY', '183', 0, '2020-08-18 17:15:56'),
(2118, '1132326', '', '', 'BEJO AKBAR MAULANA', '183', 0, '2020-08-18 17:15:56'),
(2119, '1183560', '', '', 'DESI AMBARWATI', '183', 0, '2020-08-18 17:15:56'),
(2120, '1111851', '', '', 'DESY NATALIA SIMARMATA', '183', 0, '2020-08-18 17:15:56'),
(2121, '1132291', '', '', 'DEWI LISTYAWATI', '183', 0, '2020-08-18 17:15:56'),
(2122, '1132246', '', '', 'DIAN MOH. FIRMANSYAH', '183', 0, '2020-08-18 17:15:56'),
(2123, '1030797', '', '', 'EDDY HALIM', '183', 0, '2020-08-18 17:15:56'),
(2124, '1173432', '', '', 'GREGORIUS YUDHO S.W', '183', 0, '2020-08-18 17:15:56'),
(2125, '1030689', '', '', 'HARI NURDIANSYAH', '183', 0, '2020-08-18 17:15:56'),
(2126, '1153178', '', '', 'HERTIARA CITRA MELATI', '183', 0, '2020-08-18 17:15:56'),
(2127, '1153190', '', '', 'KARSTIVAN CUANDRO', '183', 0, '2020-08-18 17:15:56'),
(2128, '1091615', '', '', 'LENNY YUNITA', '183', 0, '2020-08-18 17:15:56'),
(2129, '1071437', '', '', 'M. DANIEL', '183', 0, '2020-08-18 17:15:56'),
(2130, '1101723', '', '', 'M. EFENDI', '183', 0, '2020-08-18 17:15:56'),
(2131, '1071344', '', '', 'M. RAMDAN', '183', 0, '2020-08-18 17:15:56'),
(2132, '1183679', '', '', 'MONTI KRISNANDITYA', '183', 0, '2020-08-18 17:15:56'),
(2133, '1193778', '', '', 'MUHAMAD NAJALUDIN JORDAN', '183', 0, '2020-08-18 17:15:56'),
(2134, '1173372', '', '', 'MUHAMMAD FAUZI RUDIJANTO', '183', 0, '2020-08-18 17:15:56'),
(2135, '1173363', '', '', 'NADYA SYIFADIANTI', '183', 0, '2020-08-18 17:15:56'),
(2136, '1193696', '', '', 'NIAHANIDA ELMINA', '183', 0, '2020-08-18 17:15:56'),
(2137, '1203847', '', '', 'NICHO DWISETYO SAKTI', '183', 0, '2020-08-18 17:15:56'),
(2138, '1030716', '', '', 'PATRIK SIMONDARMANTO', '183', 0, '2020-08-18 17:15:56'),
(2139, '1193716', '', '', 'QONITA LUTFIAH', '183', 0, '2020-08-18 17:15:56'),
(2140, '1163323', '', '', 'RAGIL TIRTA KETIGA', '183', 0, '2020-08-18 17:15:56'),
(2141, '1163299', '', '', 'RAHMAT MOHAMAD NOOR', '183', 0, '2020-08-18 17:15:56'),
(2142, '1203831', '', '', 'REZA SETIA NUGRAHA', '183', 0, '2020-08-18 17:15:56'),
(2143, '1122064', '', '', 'RIA AGUSTIN', '183', 0, '2020-08-18 17:15:56'),
(2144, '1030793', '', '', 'RINA DIANAWATY', '183', 0, '2020-08-18 17:15:56'),
(2145, '1071346', '', '', 'SURAJI', '183', 0, '2020-08-18 17:15:56'),
(2146, '1153189', '', '', 'TASYA RATNA HAPSARI', '183', 0, '2020-08-18 17:15:56'),
(2147, '1000125', '', '', 'TITO SUMARWOTO', '183', 0, '2020-08-18 17:15:56'),
(2148, '1153081', '', '', 'YOSEP SUHARDIN DIRWANTARA', '183', 0, '2020-08-18 17:15:56'),
(2149, '1183593', '', '', 'AHMAD FAJAR MUHARRAM', '161', 0, '2020-08-18 17:15:56'),
(2150, '1193800', '', '', 'ANA PRIMA LARASATI NUGRAHA', '161', 0, '2020-08-18 17:15:56'),
(2151, '1193824', '', '', 'AYU MAHARSI CENDANAWANGI', '161', 0, '2020-08-18 17:15:56'),
(2152, '1193706', '', '', 'CLARA CHINTIA BRAHMANA', '161', 0, '2020-08-18 17:15:56'),
(2153, '1122060', '', '', 'HENDRA W. WICAKSONO', '161', 0, '2020-08-18 17:15:56'),
(2154, '1183586', '', '', 'HERLY FAJAR HARDIYANTO ABDUL RAZAK', '161', 0, '2020-08-18 17:15:56'),
(2155, '1183550', '', '', 'LETTISIA ADISTY', '161', 0, '2020-08-18 17:15:56'),
(2156, '1193788', '', '', 'LINGGA MAHARDHIKKA DYANTORO', '161', 0, '2020-08-18 17:15:56'),
(2157, '1183595', '', '', 'RAISA KHARISMA PERTIWI', '161', 0, '2020-08-18 17:15:56'),
(2158, '1183594', '', '', 'RANTI DWITYASARI', '161', 0, '2020-08-18 17:15:56'),
(2159, '1183596', '', '', 'SARAH NADIA', '161', 0, '2020-08-18 17:15:56'),
(2160, '1152941', '', '', 'SHARON ELVIRE', '161', 0, '2020-08-18 17:15:56'),
(2161, '1153060', '', '', 'SITI KURNIAWATI', '161', 0, '2020-08-18 17:15:56'),
(2162, '1152981', '', '', 'VITA FAUZIAH', '161', 0, '2020-08-18 17:15:56'),
(2163, '1111782', '', '', 'ADI IKHTIAWARMAN', '263', 0, '2020-08-18 17:15:56'),
(2164, '1061254', '', '', 'ADRI TOMO SEMBODO', '263', 0, '2020-08-18 17:15:56'),
(2165, '1142692', '', '', 'AHMAD FADLI', '263', 0, '2020-08-18 17:15:56'),
(2166, '1111766', '', '', 'APRINO KHOTIB', '263', 0, '2020-08-18 17:15:56'),
(2167, '1020517', '', '', 'ARI FASTONO', '263', 0, '2020-08-18 17:15:56'),
(2168, '1163338', '', '', 'BARTOLOMEUS HARRY PRABOWO', '263', 0, '2020-08-18 17:15:56'),
(2169, '1153122', '', '', 'DEVI CARLINAH MARITO', '263', 0, '2020-08-18 17:15:56'),
(2170, '1142841', '', '', 'DEWINTA SWARI', '263', 0, '2020-08-18 17:15:56'),
(2171, '1132351', '', '', 'DHANANG TEDDY KUSUMO', '263', 0, '2020-08-18 17:15:56'),
(2172, '1111849', '', '', 'DIAN HIJRIYANTI', '263', 0, '2020-08-18 17:15:56'),
(2173, '1030795', '', '', 'DODY WIJAYA', '263', 0, '2020-08-18 17:15:56'),
(2174, '1061253', '', '', 'FAJAR RADITYO', '263', 0, '2020-08-18 17:15:56'),
(2175, '1173478', '', '', 'FIQQI FAJAR JULIAN', '263', 0, '2020-08-18 17:15:56'),
(2176, '1020537', '', '', 'FIRDAUS SOPIAN', '263', 0, '2020-08-18 17:15:56'),
(2177, '1153121', '', '', 'GRACE NIVERSARY SIRAIT', '263', 0, '2020-08-18 17:15:56'),
(2178, '1142808', '', '', 'HAPPY IRAWAN', '263', 0, '2020-08-18 17:15:56'),
(2179, '1101683', '', '', 'INDRA HERMAWAN', '263', 0, '2020-08-18 17:15:56'),
(2180, '1121974', '', '', 'INDRI PRADASARI', '263', 0, '2020-08-18 17:15:56'),
(2181, '1020642', '', '', 'ISA BAHRI', '263', 0, '2020-08-18 17:15:56'),
(2182, '1153118', '', '', 'IVO RATIH', '263', 0, '2020-08-18 17:15:56'),
(2183, '1132498', '', '', 'KUNTO WIBISONO', '263', 0, '2020-08-18 17:15:56'),
(2184, '1193739', '', '', 'LILIK WIDIASTUTI', '263', 0, '2020-08-18 17:15:56'),
(2185, '1122026', '', '', 'LUCKY VIRNAWAN', '263', 0, '2020-08-18 17:15:56'),
(2186, '1040976', '', '', 'M. BUDIWAN NASUTION', '263', 0, '2020-08-18 17:15:56'),
(2187, '1020451', '', '', 'M. LATIFUL HUDA', '263', 0, '2020-08-18 17:15:56'),
(2188, '1142813', '', '', 'M. LUTFI ERLANGGA', '263', 0, '2020-08-18 17:15:56'),
(2189, '1000278', '', '', 'M. SUPHIAN UTOYO', '263', 0, '2020-08-18 17:15:56'),
(2190, '1061279', '', '', 'MANGOLOI HASUDUNGAN PANTO', '263', 0, '2020-08-18 17:15:56'),
(2191, '1203829', '', '', 'NADHIA UTAMI', '263', 0, '2020-08-18 17:15:56'),
(2192, '1122180', '', '', 'PRATIWI PUTRI UTAMI', '263', 0, '2020-08-18 17:15:56'),
(2193, '1040855', '', '', 'PURBO SWASONO', '263', 0, '2020-08-18 17:15:56'),
(2194, '1132286', '', '', 'RIDWAN CARLOS', '263', 0, '2020-08-18 17:15:56'),
(2195, '1173361', '', '', 'RIZKY FEBRIAN', '263', 0, '2020-08-18 17:15:56'),
(2196, '1122179', '', '', 'ROSALIA DEWI ARLUSI', '263', 0, '2020-08-18 17:15:56'),
(2197, '1132389', '', '', 'SISWANTO', '263', 0, '2020-08-18 17:15:56'),
(2198, '1030745', '', '', 'SUSANTO', '263', 0, '2020-08-18 17:15:56'),
(2199, '1132635', '', '', 'TRI KUNCORO', '263', 0, '2020-08-18 17:15:56'),
(2200, '1040860', '', '', 'YUNIANTO', '263', 0, '2020-08-18 17:15:56'),
(2201, '3100007', '', '', 'AGUNG SUDERAJAT', '076', 0, '2020-08-18 17:15:56'),
(2202, '3160027', '', '', 'DIRMAN', '076', 0, '2020-08-18 17:15:56'),
(2203, '3090002', '', '', 'EKO HARI WIBOWO', '076', 0, '2020-08-18 17:15:56'),
(2204, '3100006', '', '', 'EUIS FAKHRIYAH', '076', 0, '2020-08-18 17:15:56'),
(2205, '3160028', '', '', 'FIKRI AL FADIN', '076', 0, '2020-08-18 17:15:56'),
(2206, '3120018', '', '', 'HARI PRASETYO (BIRO)', '076', 0, '2020-08-18 17:15:56'),
(2207, '3150024', '', '', 'INDAH RAHMAWATI', '076', 0, '2020-08-18 17:15:56'),
(2208, '3120013', '', '', 'LUKMAN HINDARTO', '076', 0, '2020-08-18 17:15:56'),
(2209, '3120017', '', '', 'M. KHARIS RAMADHANI', '076', 0, '2020-08-18 17:15:56'),
(2210, '3110010', '', '', 'MAHMUD IKHSAN FAUZI', '076', 0, '2020-08-18 17:15:56'),
(2211, '3180029', '', '', 'MONICA FELISITAS GRACIA VIANY', '076', 0, '2020-08-18 17:15:56'),
(2212, '3120014', '', '', 'SUBHAN', '076', 0, '2020-08-18 17:15:56'),
(2213, '3100008', '', '', 'YAKI RAHARDJA', '076', 0, '2020-08-18 17:15:56'),
(2214, '1132241', '', '', 'JESISCA LAURANSIA PINANDITA', '188', 0, '2020-08-18 17:15:56'),
(2215, '1111761', '', '', 'RAINA INDRIASSUCI DAMAYANTI', '188', 0, '2020-08-18 17:15:56'),
(2216, '1020622', '', '', 'SUSANTI', '188', 0, '2020-08-18 17:15:56'),
(2217, '1040889', '', '', 'TONY MARGIYANTO ADI', '188', 0, '2020-08-18 17:15:56'),
(2218, '1010305', '', '', 'TRISILO NUGROHO', '188', 0, '2020-08-18 17:15:56'),
(2219, '1132272', '', '', 'ABDUL KADIRSYAM SALAMPESSY', '113', 0, '2020-08-18 17:15:56'),
(2220, '1153116', '', '', 'ADE MULYA', '113', 0, '2020-08-18 17:15:56'),
(2221, '1173417', '', '', 'AJENG KAMARATIH', '113', 0, '2020-08-18 17:15:56'),
(2222, '1142888', '', '', 'ANA ROSITA', '113', 0, '2020-08-18 17:15:56'),
(2223, '1153007', '', '', 'ANITA S. MANURUNG', '113', 0, '2020-08-18 17:15:56'),
(2224, '1081529', '', '', 'AVIANI MALIK', '113', 0, '2020-08-18 17:15:56'),
(2225, '1040950', '', '', 'CARTIWA', '113', 0, '2020-08-18 17:15:56'),
(2226, '1152917', '', '', 'EVA RATNA HARI PUTRI', '113', 0, '2020-08-18 17:15:56'),
(2227, '1142908', '', '', 'FANNY HINDARTI', '113', 0, '2020-08-18 17:15:56'),
(2228, '1183545', '', '', 'FIRDAUS RAMZIA NOVARI', '113', 0, '2020-08-18 17:15:56'),
(2229, '1173476', '', '', 'FITRIA', '113', 0, '2020-08-18 17:15:56'),
(2230, '1173356', '', '', 'FITRIANTI MEGANTARA', '113', 0, '2020-08-18 17:15:56'),
(2231, '1153094', '', '', 'GINA SARA MELATI', '113', 0, '2020-08-18 17:15:56'),
(2232, '1101731', '', '', 'IQBAL HIMAWAN', '113', 0, '2020-08-18 17:15:56'),
(2233, '1163329', '', '', 'JASSON VALLINO S', '113', 0, '2020-08-18 17:15:56'),
(2234, '1183557', '', '', 'KEVIN BELLAMY EGAN', '113', 0, '2020-08-18 17:15:56'),
(2235, '1163322', '', '', 'KHAMDAN MUSTOFA ALKAFI', '113', 0, '2020-08-18 17:15:56'),
(2236, '1142703', '', '', 'KURNIA SARI', '113', 0, '2020-08-18 17:15:56'),
(2237, '1030787', '', '', 'LEONARD TODOTUA SAMOSIR', '113', 0, '2020-08-18 17:15:56'),
(2238, '1132633', '', '', 'LUFTI ALFANOZA', '113', 0, '2020-08-18 17:15:56'),
(2239, '1163230', '', '', 'MAILINA', '113', 0, '2020-08-18 17:15:56'),
(2240, '1122172', '', '', 'MARIALIZIA ABDULLAH SADIG', '113', 0, '2020-08-18 17:15:56'),
(2241, '1132268', '', '', 'MARVIN SULISTIO', '113', 0, '2020-08-18 17:15:56'),
(2242, '1153186', '', '', 'NAJLA', '113', 0, '2020-08-18 17:15:56'),
(2243, '1020548', '', '', 'NUNUNG ZAENAB', '113', 0, '2020-08-18 17:15:56'),
(2244, '1132533', '', '', 'NURJANAH', '113', 0, '2020-08-18 17:15:56'),
(2245, '1163336', '', '', 'NURUL HUSNA NAILA', '113', 0, '2020-08-18 17:15:56'),
(2246, '1153057', '', '', 'PRILLYCIA MARGARETH OCTAVIA', '113', 0, '2020-08-18 17:15:56'),
(2247, '1142713', '', '', 'PUTRI NAFIANA', '113', 0, '2020-08-18 17:15:56'),
(2248, '1163263', '', '', 'RINA FAJAR SARI', '113', 0, '2020-08-18 17:15:56'),
(2249, '1091624', '', '', 'ROBERT HARIANTO', '113', 0, '2020-08-18 17:15:56'),
(2250, '1183660', '', '', 'RORIE ASY\'ARI', '113', 0, '2020-08-18 17:15:56'),
(2251, '1163294', '', '', 'SITI MIKI HARLINI', '113', 0, '2020-08-18 17:15:56'),
(2252, '1142750', '', '', 'SUHARTONO (B)', '113', 0, '2020-08-18 17:15:56'),
(2253, '1020633', '', '', 'SUMIATI', '113', 0, '2020-08-18 17:15:56'),
(2254, '1153072', '', '', 'SYAZA LUTHFANI UDYAPUTRI', '113', 0, '2020-08-18 17:15:56'),
(2255, '1152999', '', '', 'VERAWANI PURBA', '113', 0, '2020-08-18 17:15:56'),
(2256, '1183631', '', '', 'WAHYU ADHIKA WIWOHO', '113', 0, '2020-08-18 17:15:56'),
(2257, '1142653', '', '', 'WURI HANDAYANI', '113', 0, '2020-08-18 17:15:56'),
(2258, '1081538', '', '', 'YENIE MARYANI', '113', 0, '2020-08-18 17:15:56'),
(2259, '1142712', '', '', 'YESSI SULISTRIANA', '113', 0, '2020-08-18 17:15:56'),
(2260, '1081471', '', '', 'YOHANA MARGARETHA', '113', 0, '2020-08-18 17:15:56'),
(2261, '1153188', '', '', 'YUYUN AFRIANI', '113', 0, '2020-08-18 17:15:56'),
(2262, '1071411', '', '', 'ZACKIA ARFAN', '113', 0, '2020-08-18 17:15:56'),
(2263, '1122021', '', '', 'ZILVIA', '113', 0, '2020-08-18 17:15:56'),
(2264, '1010415', '', '', 'ABDUL MANAP', '115', 0, '2020-08-18 17:15:56'),
(2265, '1152979', '', '', 'ACHADIAT WAHYU RAHARJO', '115', 0, '2020-08-18 17:15:56'),
(2266, '1163253', '', '', 'ACHMAD RIDWAN', '115', 0, '2020-08-18 17:15:56'),
(2267, '1040870', '', '', 'ADI PURWANTO', '115', 0, '2020-08-18 17:15:56'),
(2268, '1121964', '', '', 'ADITYA', '115', 0, '2020-08-18 17:15:56'),
(2269, '1153179', '', '', 'ADITYA HERDIYANSAH NAHRUDIN', '115', 0, '2020-08-18 17:15:56'),
(2270, '1163251', '', '', 'ADITYA PRICHI RAHMADANI', '115', 0, '2020-08-18 17:15:56'),
(2271, '1132538', '', '', 'AGUS KURNIAWAN', '115', 0, '2020-08-18 17:15:56'),
(2272, '1132494', '', '', 'AKHSANITH THORIQ', '115', 0, '2020-08-18 17:15:56'),
(2273, '1010441', '', '', 'ALAMSYAH', '115', 0, '2020-08-18 17:15:56'),
(2274, '1030728', '', '', 'ANDRI ARIANSYAH ISMA', '115', 0, '2020-08-18 17:15:56'),
(2275, '1030780', '', '', 'ANDRI NUGRAHA', '115', 0, '2020-08-18 17:15:56'),
(2276, '1020503', '', '', 'ANDRI SIMANUNGKALIT', '115', 0, '2020-08-18 17:15:56'),
(2277, '1122100', '', '', 'ANGGUNG NASTITI', '115', 0, '2020-08-18 17:15:56'),
(2278, '1111865', '', '', 'ANWAR TRI WIBOWO', '115', 0, '2020-08-18 17:15:56'),
(2279, '1010303', '', '', 'ARGA W WURARAH', '115', 0, '2020-08-18 17:15:56'),
(2280, '1030729', '', '', 'ARI TRIYANTO', '115', 0, '2020-08-18 17:15:56'),
(2281, '1122101', '', '', 'ARIE BUDI PRASETYO', '115', 0, '2020-08-18 17:15:56'),
(2282, '1163252', '', '', 'ARIES RACHMAN', '115', 0, '2020-08-18 17:15:56'),
(2283, '1010299', '', '', 'ARIF RIYADI', '115', 0, '2020-08-18 17:15:56'),
(2284, '1010377', '', '', 'ASEP TRISHADI', '115', 0, '2020-08-18 17:15:56'),
(2285, '1132486', '', '', 'ASMA MARYANA', '115', 0, '2020-08-18 17:15:56'),
(2286, '1122041', '', '', 'AYU ARINDANI', '115', 0, '2020-08-18 17:15:56'),
(2287, '1163254', '', '', 'AZIZ FADILLA', '115', 0, '2020-08-18 17:15:56'),
(2288, '1020498', '', '', 'B. LUCKY PATRICIANTO', '115', 0, '2020-08-18 17:15:56'),
(2289, '1193722', '', '', 'BAHRUL HILMAN FANANI', '115', 0, '2020-08-18 17:15:56'),
(2290, '1040850', '', '', 'BAMBANG WASI JOLODORO', '115', 0, '2020-08-18 17:15:56'),
(2291, '1163250', '', '', 'CAHYA MAULANA NUGRAHA', '115', 0, '2020-08-18 17:15:56'),
(2292, '1000234', '', '', 'CHAERUL', '115', 0, '2020-08-18 17:15:56'),
(2293, '1132343', '', '', 'COK RUDIYANTO', '115', 0, '2020-08-18 17:15:56'),
(2294, '1020640', '', '', 'DAVID ALVIN SONDAKH', '115', 0, '2020-08-18 17:15:56'),
(2295, '1122042', '', '', 'DEDDY UTAMA', '115', 0, '2020-08-18 17:15:57'),
(2296, '1122043', '', '', 'DEDY SETIAWAN', '115', 0, '2020-08-18 17:15:57'),
(2297, '1122044', '', '', 'DESSY SABATINI', '115', 0, '2020-08-18 17:15:57'),
(2298, '1152974', '', '', 'DEWI AJI SETYO BANGUN', '115', 0, '2020-08-18 17:15:57'),
(2299, '1132567', '', '', 'DICKY ARIYANDI WIBOWO', '115', 0, '2020-08-18 17:15:57'),
(2300, '1153173', '', '', 'DIMAS ERFANDHIARY', '115', 0, '2020-08-18 17:15:57'),
(2301, '1122103', '', '', 'DINAR PATHYA', '115', 0, '2020-08-18 17:15:57'),
(2302, '1000197', '', '', 'EKO BUDI TRIYANTO', '115', 0, '2020-08-18 17:15:57'),
(2303, '1000235', '', '', 'EKO TRISWANTO', '115', 0, '2020-08-18 17:15:57'),
(2304, '1132300', '', '', 'FAHRIZAL FALAQ', '115', 0, '2020-08-18 17:15:57'),
(2305, '1173511', '', '', 'FAUZI ALAM ASHARI', '115', 0, '2020-08-18 17:15:57'),
(2306, '1132295', '', '', 'FERDIAN FADILA GUSASI', '115', 0, '2020-08-18 17:15:57'),
(2307, '1030775', '', '', 'FX PURNOMO TRI ANGGORO', '115', 0, '2020-08-18 17:15:57'),
(2308, '1122046', '', '', 'GUSTY PRASETYO UTOMO', '115', 0, '2020-08-18 17:15:57'),
(2309, '1163246', '', '', 'HASBI MA\'ARIEF ASHSIDIQI', '115', 0, '2020-08-18 17:15:57'),
(2310, '1000231', '', '', 'HERI SETIAWAN', '115', 0, '2020-08-18 17:15:57'),
(2311, '1000251', '', '', 'HERMAWAN HIDAYAT', '115', 0, '2020-08-18 17:15:57'),
(2312, '1020571', '', '', 'HERU PURNOMO', '115', 0, '2020-08-18 17:15:57'),
(2313, '1010306', '', '', 'HILALLUDIN', '115', 0, '2020-08-18 17:15:57'),
(2314, '1020552', '', '', 'HUSNI MUBAROK', '115', 0, '2020-08-18 17:15:57'),
(2315, '1000252', '', '', 'ILHAM SUNGKAWA', '115', 0, '2020-08-18 17:15:57'),
(2316, '1122047', '', '', 'IMMANUEL NOVIANTO SIRINGO', '115', 0, '2020-08-18 17:15:57'),
(2317, '1000091', '', '', 'INDA IMANADHI', '115', 0, '2020-08-18 17:15:57'),
(2318, '1132456', '', '', 'INDRA FATRA KUSUMA', '115', 0, '2020-08-18 17:15:57'),
(2319, '1122108', '', '', 'IRDA CHYNTHYA DEWI', '115', 0, '2020-08-18 17:15:57'),
(2320, '1153073', '', '', 'IVAN ARDI OCKTAVIANDRI', '115', 0, '2020-08-18 17:15:57'),
(2321, '1030730', '', '', 'JAMALLUDIN', '115', 0, '2020-08-18 17:15:57'),
(2322, '1132491', '', '', 'JATI NUGROHO', '115', 0, '2020-08-18 17:15:57'),
(2323, '1040846', '', '', 'JENAL ARIFIN', '115', 0, '2020-08-18 17:15:57'),
(2324, '1132482', '', '', 'LEONARD LEFKAS MARIYANTO', '115', 0, '2020-08-18 17:15:57'),
(2325, '1142715', '', '', 'LUKMAN HAKIM', '115', 0, '2020-08-18 17:15:57'),
(2326, '1153078', '', '', 'M. BAYU BURHANNUDIN', '115', 0, '2020-08-18 17:15:57'),
(2327, '1152975', '', '', 'M. FAJRI GUMILANG', '115', 0, '2020-08-18 17:15:57'),
(2328, '1163297', '', '', 'M. HAMDANI (LIGHTING)', '115', 0, '2020-08-18 17:15:57'),
(2329, '1153074', '', '', 'M. INOVAL HWARIZMI', '115', 0, '2020-08-18 17:15:57'),
(2330, '1000041', '', '', 'M. ISNAINI', '115', 0, '2020-08-18 17:15:57'),
(2331, '1010390', '', '', 'M. MAULANA', '115', 0, '2020-08-18 17:15:57'),
(2332, '1153175', '', '', 'M. NURUL HILMAN', '115', 0, '2020-08-18 17:15:57'),
(2333, '1132481', '', '', 'M. REZA PAHLEVI', '115', 0, '2020-08-18 17:15:57'),
(2334, '1163249', '', '', 'MA\'SUM SETIOKO', '115', 0, '2020-08-18 17:15:57'),
(2335, '1000186', '', '', 'MAMAT ROHMAT', '115', 0, '2020-08-18 17:15:57'),
(2336, '1132307', '', '', 'MARGARETHA SARAS WISESANGTI', '115', 0, '2020-08-18 17:15:57'),
(2337, '1122110', '', '', 'MARYAM KANIA RESPATI', '115', 0, '2020-08-18 17:15:57'),
(2338, '1111870', '', '', 'MIFTA FARID', '115', 0, '2020-08-18 17:15:57'),
(2339, '1132298', '', '', 'MUCHTAR ALMAS MUFTI', '115', 0, '2020-08-18 17:15:57'),
(2340, '1040918', '', '', 'MUSTOFA', '115', 0, '2020-08-18 17:15:57'),
(2341, '1132296', '', '', 'NANDA WIBOWO', '115', 0, '2020-08-18 17:15:57'),
(2342, '1142714', '', '', 'NASRUDIN', '115', 0, '2020-08-18 17:15:57'),
(2343, '1132324', '', '', 'NURULITA WIYARNI PUTRI', '115', 0, '2020-08-18 17:15:57'),
(2344, '1173362', '', '', 'OKTORIAN SYAHRIA KUSUMA', '115', 0, '2020-08-18 17:15:57'),
(2345, '1101755', '', '', 'ONNY BOWO TRENGGONO', '115', 0, '2020-08-18 17:15:57'),
(2346, '1000225', '', '', 'PEPEN EFFENDI', '115', 0, '2020-08-18 17:15:57'),
(2347, '1163255', '', '', 'PONDRA IRAWAN', '115', 0, '2020-08-18 17:15:57'),
(2348, '1152980', '', '', 'PRIMA SETIADI HARAHAP', '115', 0, '2020-08-18 17:15:57'),
(2349, '1030771', '', '', 'RACHMAT TRIANANDA', '115', 0, '2020-08-18 17:15:57'),
(2350, '1020542', '', '', 'RAHMAT MADYATMADI', '115', 0, '2020-08-18 17:15:57'),
(2351, '1010404', '', '', 'RAMON NAVARO', '115', 0, '2020-08-18 17:15:57'),
(2352, '1153076', '', '', 'RIFKI FERDIAN WIBOWO', '115', 0, '2020-08-18 17:15:57'),
(2353, '1122049', '', '', 'RIKI ADITYA', '115', 0, '2020-08-18 17:15:57'),
(2354, '1153176', '', '', 'RIZKI FIRMANSYAH', '115', 0, '2020-08-18 17:15:57'),
(2355, '1132495', '', '', 'RIZKY SEPTIAN JASEGA', '115', 0, '2020-08-18 17:15:57'),
(2356, '1163248', '', '', 'SA\'ADUDIN NASIH', '115', 0, '2020-08-18 17:15:57'),
(2357, '1000033', '', '', 'SAFRUDIN', '115', 0, '2020-08-18 17:15:57'),
(2358, '1040885', '', '', 'SAPTO ABDUL RIPAI', '115', 0, '2020-08-18 17:15:57'),
(2359, '1153079', '', '', 'SELVI OCTAVIANI', '115', 0, '2020-08-18 17:15:57'),
(2360, '1163247', '', '', 'SEPTIAN BAYU BAHARI', '115', 0, '2020-08-18 17:15:57'),
(2361, '1000168', '', '', 'SLAMET MUNTOHAR', '115', 0, '2020-08-18 17:15:57'),
(2362, '1010302', '', '', 'SRIYANTO', '115', 0, '2020-08-18 17:15:57'),
(2363, '1020538', '', '', 'SUKARNO', '115', 0, '2020-08-18 17:15:57'),
(2364, '1030772', '', '', 'SUMARNO', '115', 0, '2020-08-18 17:15:57'),
(2365, '1153174', '', '', 'SUPRAYOGO', '115', 0, '2020-08-18 17:15:57'),
(2366, '1030748', '', '', 'SUPRIADI (V TECH)', '115', 0, '2020-08-18 17:15:57'),
(2367, '1071372', '', '', 'SYAMSUL AHMAD', '115', 0, '2020-08-18 17:15:57'),
(2368, '1040886', '', '', 'SYAMSURI 2 (LIGHTING)', '115', 0, '2020-08-18 17:15:57'),
(2369, '1010328', '', '', 'TATAK PARMUDI LAKSONO', '115', 0, '2020-08-18 17:15:57'),
(2370, '1020657', '', '', 'TB. M. IRFI', '115', 0, '2020-08-18 17:15:57'),
(2371, '1132274', '', '', 'TEGUH SUPRIYANTO', '115', 0, '2020-08-18 17:15:57'),
(2372, '1020505', '', '', 'TEUKU RENO CHARLES', '115', 0, '2020-08-18 17:15:57'),
(2373, '1132302', '', '', 'VADILLAH AGUSTIANTO', '115', 0, '2020-08-18 17:15:57'),
(2374, '1122118', '', '', 'VITDRA YONATHA', '115', 0, '2020-08-18 17:15:57'),
(2375, '1163324', '', '', 'WINDA SYARIFAH', '115', 0, '2020-08-18 17:15:57'),
(2376, '1132485', '', '', 'YANUAR TRI AHMADI', '115', 0, '2020-08-18 17:15:57'),
(2377, '1020626', '', '', 'YAYAT HIDAYAT', '115', 0, '2020-08-18 17:15:57'),
(2378, '1163302', '', '', 'YOGI KURNIAWAN', '115', 0, '2020-08-18 17:15:57'),
(2379, '1101754', '', '', 'YOHANES PRASETYO', '115', 0, '2020-08-18 17:15:57'),
(2380, '1020539', '', '', 'YONO SETIADI', '115', 0, '2020-08-18 17:15:57'),
(2381, '1020540', '', '', 'YORRY FIRDAUS', '115', 0, '2020-08-18 17:15:57'),
(2382, '1071431', '', '', 'ANWARI RESMARTYANA', '214', 0, '2020-08-18 17:15:57'),
(2383, '1061266', '', '', 'ARYO DEWANTO', '214', 0, '2020-08-18 17:15:57'),
(2384, '1071388', '', '', 'ELTANIN P. CHAVARY', '214', 0, '2020-08-18 17:15:57'),
(2385, '1183577', '', '', 'EXCELCIUS DEO PRANOTO', '214', 0, '2020-08-18 17:15:57'),
(2386, '1030778', '', '', 'GATOT WIBOWO KUSUMA', '214', 0, '2020-08-18 17:15:57'),
(2387, '1122052', '', '', 'INTAN PERMATASARI', '214', 0, '2020-08-18 17:15:57'),
(2388, '1000227', '', '', 'LIYA FITRIYAH', '214', 0, '2020-08-18 17:15:57'),
(2389, '1030744', '', '', 'M. IVAN DARMAWAN', '214', 0, '2020-08-18 17:15:57'),
(2390, '1111789', '', '', 'M. PIRMAN RAMSYAH', '214', 0, '2020-08-18 17:15:57'),
(2391, '1132285', '', '', 'PANGJA', '214', 0, '2020-08-18 17:15:57'),
(2392, '1163316', '', '', 'SETYO HERNAWAN', '214', 0, '2020-08-18 17:15:57'),
(2393, '1132299', '', '', 'SITI FATIMAH', '214', 0, '2020-08-18 17:15:57'),
(2394, '1000035', '', '', 'TETI SUKARWATI', '214', 0, '2020-08-18 17:15:57'),
(2395, '1183657', '', '', 'THOMAS ALEXANDRO SITOHANG', '214', 0, '2020-08-18 17:15:57'),
(2396, '1173437', '', '', 'VIVI ANNESA', '214', 0, '2020-08-18 17:15:57'),
(2397, 'A170578', '', '', 'ACHMAD YULIANTO PERMANA', '232', 0, '2020-08-18 17:15:57'),
(2398, 'A140422', '', '', 'ADI YUNIANTO', '232', 0, '2020-08-18 17:15:57'),
(2399, '1111863', '', '', 'AGUS PRAMONO', '232', 0, '2020-08-18 17:15:57'),
(2400, 'A140426', '', '', 'DWI ARY ARDIANSYAH', '232', 0, '2020-08-18 17:15:57'),
(2401, 'A180599', '', '', 'ERLIANTO', '232', 0, '2020-08-18 17:15:57'),
(2402, 'A190621', '', '', 'FARJUZY ALFARABI SYAKIR', '232', 0, '2020-08-18 17:15:57'),
(2403, 'A140406', '', '', 'IBNU NUGRAHA', '232', 0, '2020-08-18 17:15:57'),
(2404, 'A190648', '', '', 'ISHAK HIDAYAT', '232', 0, '2020-08-18 17:15:57'),
(2405, 'A140336', '', '', 'ISMAT RACHMATULLAH', '232', 0, '2020-08-18 17:15:57'),
(2406, 'A140424', '', '', 'MENTARI PRIMA AWALLIZA', '232', 0, '2020-08-18 17:15:57'),
(2407, 'A190618', '', '', 'RADAN GITA RADHITA', '232', 0, '2020-08-18 17:15:57'),
(2408, 'A140337', '', '', 'RICO DEODADI GURITNO', '232', 0, '2020-08-18 17:15:57'),
(2409, 'A130239', '', '', 'ABAS NURSABAH', '036', 0, '2020-08-18 17:15:57'),
(2410, 'A130261', '', '', 'ABDI SWANDARU GENI', '036', 0, '2020-08-18 17:15:57'),
(2411, 'A150489', '', '', 'ABDUL ROHIM', '036', 0, '2020-08-18 17:15:57'),
(2412, 'A140378', '', '', 'ABER PERANDI', '036', 0, '2020-08-18 17:15:57'),
(2413, '1020628', '', '', 'ACHMAD ARIFIN', '036', 0, '2020-08-18 17:15:57'),
(2414, 'A190643', '', '', 'ACHMAD JUNAIDI', '036', 0, '2020-08-18 17:15:57'),
(2415, 'A030001', '', '', 'ADE DO HI MUHAMMAD', '036', 0, '2020-08-18 17:15:57'),
(2416, 'A030096', '', '', 'ADE JUNAEDI', '036', 0, '2020-08-18 17:15:57'),
(2417, 'A140403', '', '', 'ADE RAHMAT', '036', 0, '2020-08-18 17:15:57'),
(2418, 'A120227', '', '', 'ADE SUPENDI', '036', 0, '2020-08-18 17:15:57'),
(2419, 'A090160', '', '', 'ADHAM MALIK', '036', 0, '2020-08-18 17:15:57'),
(2420, 'A040142', '', '', 'ADI LADO', '036', 0, '2020-08-18 17:15:57'),
(2421, 'A170579', '', '', 'AFNAN', '036', 0, '2020-08-18 17:15:57'),
(2422, 'A090161', '', '', 'AGUS NASRULLAH', '036', 0, '2020-08-18 17:15:57'),
(2423, 'A130318', '', '', 'AGUS NUR BUDIYANTO', '036', 0, '2020-08-18 17:15:57'),
(2424, 'A030094', '', '', 'AGUS SUGANDA', '036', 0, '2020-08-18 17:15:57'),
(2425, 'A200660', '', '', 'AHLUN NAZAQ', '036', 0, '2020-08-18 17:15:57'),
(2426, 'A120210', '', '', 'AHMAD AL FATAH', '036', 0, '2020-08-18 17:15:57'),
(2427, 'A030059', '', '', 'AHMAD BAYDOWI', '036', 0, '2020-08-18 17:15:57'),
(2428, 'A150507', '', '', 'AHMAD IQBAL', '036', 0, '2020-08-18 17:15:57'),
(2429, 'A140351', '', '', 'AHMAD SANUSI', '036', 0, '2020-08-18 17:15:57'),
(2430, 'A190650', '', '', 'AJI FITRIANTO', '036', 0, '2020-08-18 17:15:57'),
(2431, 'A140363', '', '', 'AKARMIDI', '036', 0, '2020-08-18 17:15:57'),
(2432, 'A130313', '', '', 'AKROMINUDDIN', '036', 0, '2020-08-18 17:15:57'),
(2433, 'A100162', '', '', 'AMIRUDDIN', '036', 0, '2020-08-18 17:15:57'),
(2434, 'A180612', '', '', 'ANDRA SURYA SUKMANELAS', '036', 0, '2020-08-18 17:15:57'),
(2435, 'A140435', '', '', 'ANDRI MANTOVANY', '036', 0, '2020-08-18 17:15:57'),
(2436, 'A190636', '', '', 'ANDRIA', '036', 0, '2020-08-18 17:15:57'),
(2437, 'A130252', '', '', 'ANGGIT BAGUS SUCAHYO', '036', 0, '2020-08-18 17:15:57'),
(2438, '1040909', '', '', 'APIP DWI SUPRIYANTO', '036', 0, '2020-08-18 17:15:57'),
(2439, 'A140437', '', '', 'APIP MULYANA', '036', 0, '2020-08-18 17:15:57'),
(2440, 'A040135', '', '', 'APIT SUPRIATNA', '036', 0, '2020-08-18 17:15:57'),
(2441, 'A030075', '', '', 'ARI BAWONO YUDHO', '036', 0, '2020-08-18 17:15:57'),
(2442, 'A130255', '', '', 'ARIBUT', '036', 0, '2020-08-18 17:15:57'),
(2443, 'A030053', '', '', 'ARIF SUROSO', '036', 0, '2020-08-18 17:15:57'),
(2444, 'A150531', '', '', 'ARIS', '036', 0, '2020-08-18 17:15:57'),
(2445, 'A150532', '', '', 'ARIS MUNANDAR', '036', 0, '2020-08-18 17:15:57'),
(2446, 'A140395', '', '', 'ARIS NUR ROCHIM', '036', 0, '2020-08-18 17:15:57'),
(2447, 'A190638', '', '', 'ARMAN FIKRI JAILANI', '036', 0, '2020-08-18 17:15:57'),
(2448, 'A030035', '', '', 'ARTHUR ROBERD LUSIKOOY', '036', 0, '2020-08-18 17:15:57'),
(2449, 'A170586', '', '', 'ARUJI', '036', 0, '2020-08-18 17:15:57'),
(2450, 'A190631', '', '', 'ASEP NURDIANSYAH', '036', 0, '2020-08-18 17:15:57'),
(2451, 'A150533', '', '', 'ASEP SAEPUDIN', '036', 0, '2020-08-18 17:15:57'),
(2452, 'A130279', '', '', 'ASEP SUNANDAR', '036', 0, '2020-08-18 17:15:57'),
(2453, 'A130262', '', '', 'ASEP YANCEU KUSWOYO', '036', 0, '2020-08-18 17:15:57'),
(2454, 'A140364', '', '', 'ASKAR NURDAM', '036', 0, '2020-08-18 17:15:57'),
(2455, 'A140413', '', '', 'AWALUDIN (MTI)', '036', 0, '2020-08-18 17:15:57'),
(2456, 'A120206', '', '', 'AYIP ROSIDIN', '036', 0, '2020-08-18 17:15:57'),
(2457, 'A100173', '', '', 'BACHTIAR', '036', 0, '2020-08-18 17:15:57'),
(2458, 'A140390', '', '', 'BAGUS EDI HARTONO', '036', 0, '2020-08-18 17:15:57'),
(2459, 'A030101', '', '', 'BAHARUDDIN JUNED', '036', 0, '2020-08-18 17:15:57'),
(2460, 'A100171', '', '', 'BAMBANG WIBOWO', '036', 0, '2020-08-18 17:15:57'),
(2461, 'A180603', '', '', 'BAYU BUDIANTO SIDAURUK', '036', 0, '2020-08-18 17:15:57'),
(2462, 'A030012', '', '', 'BENI AKMAL', '036', 0, '2020-08-18 17:15:57'),
(2463, 'A180601', '', '', 'BENNY SISWANTO', '036', 0, '2020-08-18 17:15:57'),
(2464, 'A130287', '', '', 'BENY AMANAH', '036', 0, '2020-08-18 17:15:57'),
(2465, 'A140452', '', '', 'BERTTY ALBERTTO IRIWADAN', '036', 0, '2020-08-18 17:15:57'),
(2466, 'A030013', '', '', 'BONIFASIUS SARUMAHA', '036', 0, '2020-08-18 17:15:57'),
(2467, 'A140375', '', '', 'BUDI (MTI)', '036', 0, '2020-08-18 17:15:57'),
(2468, 'A150468', '', '', 'BURHANUDDIN SITEPU', '036', 0, '2020-08-18 17:15:57'),
(2469, 'A180613', '', '', 'BUSTAM', '036', 0, '2020-08-18 17:15:57'),
(2470, 'A030050', '', '', 'CANDRA KIRANA', '036', 0, '2020-08-18 17:15:57'),
(2471, 'A120214', '', '', 'CARYONO IBRAHIM', '036', 0, '2020-08-18 17:15:57'),
(2472, 'A150496', '', '', 'CHANDRA JUNIANTO', '036', 0, '2020-08-18 17:15:57'),
(2473, 'A130295', '', '', 'CLIF REZA KIROYAN', '036', 0, '2020-08-18 17:15:57'),
(2474, 'A180608', '', '', 'CUCUK RUDYANSYAH AGAM', '036', 0, '2020-08-18 17:15:57'),
(2475, 'A120198', '', '', 'DAMPRI DWI PRAYOGA', '036', 0, '2020-08-18 17:15:57'),
(2476, 'A130267', '', '', 'DANU PUTRA WARMANDIKA', '036', 0, '2020-08-18 17:15:57'),
(2477, 'A140357', '', '', 'DARMA PANGIHUTAN LUMBAN TOBING', '036', 0, '2020-08-18 17:15:57'),
(2478, 'A160550', '', '', 'DARMAWAN', '036', 0, '2020-08-18 17:15:57'),
(2479, 'A200651', '', '', 'DARRYL GRANT WALALANGI', '036', 0, '2020-08-18 17:15:57'),
(2480, 'A140401', '', '', 'DAVID DAMAU', '036', 0, '2020-08-18 17:15:57'),
(2481, 'A040133', '', '', 'DEDE RACHMAN', '036', 0, '2020-08-18 17:15:57'),
(2482, 'A160552', '', '', 'DEDEN WAHYUDIN', '036', 0, '2020-08-18 17:15:57'),
(2483, 'A130271', '', '', 'DEDI SETIADI', '036', 0, '2020-08-18 17:15:57'),
(2484, 'A150493', '', '', 'DEDI SUTANZA', '036', 0, '2020-08-18 17:15:57'),
(2485, 'A110184', '', '', 'DEKI SEFRIAWAN', '036', 0, '2020-08-18 17:15:57'),
(2486, 'A200652', '', '', 'DELAN KOLY', '036', 0, '2020-08-18 17:15:57'),
(2487, 'A130242', '', '', 'DENI ALI MURDANI', '036', 0, '2020-08-18 17:15:57'),
(2488, 'A140414', '', '', 'DENI DEVICHA', '036', 0, '2020-08-18 17:15:57'),
(2489, 'A140380', '', '', 'DENI HARIYADI', '036', 0, '2020-08-18 17:15:57'),
(2490, 'A120202', '', '', 'DENI SAMSUDIN', '036', 0, '2020-08-18 17:15:57'),
(2491, 'A120212', '', '', 'DESI KURNIAWAN', '036', 0, '2020-08-18 17:15:57'),
(2492, 'A120228', '', '', 'DESU WAHYUDIN', '036', 0, '2020-08-18 17:15:57'),
(2493, 'A030061', '', '', 'DIDIK EKO SETYAWAN', '036', 0, '2020-08-18 17:15:57'),
(2494, 'A120204', '', '', 'DIKI SETIADI', '036', 0, '2020-08-18 17:15:57'),
(2495, 'A030095', '', '', 'DODI SUTARDI', '036', 0, '2020-08-18 17:15:57'),
(2496, 'A170581', '', '', 'DOMINGUS JAN F. PATTY', '036', 0, '2020-08-18 17:15:57'),
(2497, 'A080156', '', '', 'DWI KUNCORO', '036', 0, '2020-08-18 17:15:57'),
(2498, 'A110186', '', '', 'EDI', '036', 0, '2020-08-18 17:15:57'),
(2499, 'A130308', '', '', 'EDI PURNOMO', '036', 0, '2020-08-18 17:15:57'),
(2500, 'A090159', '', '', 'EDI PURNOMO', '036', 0, '2020-08-18 17:15:57'),
(2501, '1030684', '', '', 'EDI PURWANTO', '036', 0, '2020-08-18 17:15:57'),
(2502, 'A170587', '', '', 'EDI SUMANTRI', '036', 0, '2020-08-18 17:15:57'),
(2503, 'A150505', '', '', 'EDWARD ANTO HUTAHAEAN', '036', 0, '2020-08-18 17:15:57'),
(2504, 'A170590', '', '', 'EDY KUSWANTO', '036', 0, '2020-08-18 17:15:57'),
(2505, 'A140404', '', '', 'EDY PURNAMA', '036', 0, '2020-08-18 17:15:57'),
(2506, 'A130250', '', '', 'EDY YUSUF', '036', 0, '2020-08-18 17:15:57'),
(2507, 'A170592', '', '', 'EKKY ZANUARICO PURNAMA', '036', 0, '2020-08-18 17:15:57'),
(2508, 'A140421', '', '', 'ENDI JUWARA', '036', 0, '2020-08-18 17:15:57'),
(2509, 'A040132', '', '', 'ENJANG SOLICHIN', '036', 0, '2020-08-18 17:15:57'),
(2510, 'A120231', '', '', 'EPEN HERYANTO', '036', 0, '2020-08-18 17:15:57'),
(2511, 'A130286', '', '', 'ERIK MANTO BUKIT', '036', 0, '2020-08-18 17:15:57'),
(2512, 'A140370', '', '', 'ERLANDO MARTA', '036', 0, '2020-08-18 17:15:57'),
(2513, 'A150525', '', '', 'ERWAN I', '036', 0, '2020-08-18 17:15:57'),
(2514, 'A030007', '', '', 'ERWIN IBRAHIM', '036', 0, '2020-08-18 17:15:57'),
(2515, 'A150545', '', '', 'FADJRIN WAHYU PRATAMA THAHIR', '036', 0, '2020-08-18 17:15:57'),
(2516, 'A140392', '', '', 'FAISAL', '036', 0, '2020-08-18 17:15:57'),
(2517, 'A150475', '', '', 'FEBBRY CORNELIUS SIMON ALBERTO', '036', 0, '2020-08-18 17:15:57'),
(2518, 'A110185', '', '', 'FEBRIANTO', '036', 0, '2020-08-18 17:15:57'),
(2519, 'A140381', '', '', 'FEBRY ASDIANTO', '036', 0, '2020-08-18 17:15:57'),
(2520, 'A120208', '', '', 'FERI EFENDI', '036', 0, '2020-08-18 17:15:57'),
(2521, 'A030045', '', '', 'FERINANDI HR', '036', 0, '2020-08-18 17:15:57'),
(2522, 'A160554', '', '', 'FIRMANSYAH', '036', 0, '2020-08-18 17:15:57'),
(2523, 'A140379', '', '', 'FRANKY YOHANES', '036', 0, '2020-08-18 17:15:57'),
(2524, 'A190620', '', '', 'FREDRIK NASARANI U TOREY', '036', 0, '2020-08-18 17:15:57'),
(2525, 'A030098', '', '', 'GANDA', '036', 0, '2020-08-18 17:15:57'),
(2526, 'A170596', '', '', 'GEDE SUBAGIADA', '036', 0, '2020-08-18 17:15:57'),
(2527, 'A140325', '', '', 'GLEN SOPACUA', '036', 0, '2020-08-18 17:15:57'),
(2528, 'A130275', '', '', 'GUNADI', '036', 0, '2020-08-18 17:15:57'),
(2529, 'A120229', '', '', 'HABIB GUNAWAN', '036', 0, '2020-08-18 17:15:57'),
(2530, 'A200669', '', '', 'HAIRULLAH', '036', 0, '2020-08-18 17:15:57'),
(2531, 'A130314', '', '', 'HAMDANI', '036', 0, '2020-08-18 17:15:57'),
(2532, 'A140388', '', '', 'HAMDANI (B)', '036', 0, '2020-08-18 17:15:57'),
(2533, 'A030057', '', '', 'HAMDI', '036', 0, '2020-08-18 17:15:57'),
(2534, 'A120207', '', '', 'HAMID BIN BUHASAN', '036', 0, '2020-08-18 17:15:57'),
(2535, 'A190630', '', '', 'HANAFI', '036', 0, '2020-08-18 17:15:57'),
(2536, 'A130293', '', '', 'HANAFIAH', '036', 0, '2020-08-18 17:15:57'),
(2537, '1020669', '', '', 'HARDIANTO', '036', 0, '2020-08-18 17:15:57'),
(2538, 'A030027', '', '', 'HARUN ARRASYID', '036', 0, '2020-08-18 17:15:57'),
(2539, 'A100169', '', '', 'HASILAN WILLEM SAMALLO', '036', 0, '2020-08-18 17:15:57'),
(2540, '1010301', '', '', 'HELGA YUWONO', '036', 0, '2020-08-18 17:15:57'),
(2541, 'A160573', '', '', 'HENDRA', '036', 0, '2020-08-18 17:15:57'),
(2542, 'A140332', '', '', 'HENDRA CIPTA', '036', 0, '2020-08-18 17:15:57'),
(2543, 'A190644', '', '', 'HENDRA FAISAL', '036', 0, '2020-08-18 17:15:57'),
(2544, 'A140350', '', '', 'HENDRA TAUREANS', '036', 0, '2020-08-18 17:15:57'),
(2545, 'A190642', '', '', 'HENDRISYAH PUTRA', '036', 0, '2020-08-18 17:15:57'),
(2546, 'A150504', '', '', 'HERBET HUTAHAEAN', '036', 0, '2020-08-18 17:15:57'),
(2547, 'A120225', '', '', 'HERI AGUSTRIANA', '036', 0, '2020-08-18 17:15:57'),
(2548, 'A030085', '', '', 'HERMAN', '036', 0, '2020-08-18 17:15:57'),
(2549, 'A130260', '', '', 'HERMANTO', '036', 0, '2020-08-18 17:15:57'),
(2550, 'A120205', '', '', 'HERU HAERUL', '036', 0, '2020-08-18 17:15:57'),
(2551, 'A140369', '', '', 'HERU PRATAMA PUTRA', '036', 0, '2020-08-18 17:15:57'),
(2552, 'A160556', '', '', 'HERY AKBAR', '036', 0, '2020-08-18 17:15:57'),
(2553, 'A140394', '', '', 'HERYOUNUS', '036', 0, '2020-08-18 17:15:57'),
(2554, 'A140450', '', '', 'I GDE PRIYARYA WIBAWA', '036', 0, '2020-08-18 17:15:57'),
(2555, 'A140352', '', '', 'I KETUT ADI SUANDA', '036', 0, '2020-08-18 17:15:57'),
(2556, 'A140356', '', '', 'I MADE SUKADO', '036', 0, '2020-08-18 17:15:57'),
(2557, 'A140367', '', '', 'I WAYAN AGUS SUKAYASA', '036', 0, '2020-08-18 17:15:57'),
(2558, 'A140441', '', '', 'I WAYAN BAYU ADNYANA PUTRA', '036', 0, '2020-08-18 17:15:57'),
(2559, '1030691', '', '', 'IDA BAGUS PUTU ARDITA YASA', '036', 0, '2020-08-18 17:15:57'),
(2560, 'A130304', '', '', 'IHRAM ARIFIN', '036', 0, '2020-08-18 17:15:57'),
(2561, 'A150544', '', '', 'ILHAM M. NUR', '036', 0, '2020-08-18 17:15:57'),
(2562, 'A140330', '', '', 'IMAM AKHWAN', '036', 0, '2020-08-18 17:15:57'),
(2563, 'A190634', '', '', 'IRPAN MAULANA', '036', 0, '2020-08-18 17:15:57'),
(2564, 'A140361', '', '', 'IRPAN RAHMADAN', '036', 0, '2020-08-18 17:15:57'),
(2565, 'A140362', '', '', 'ISMALIANDI', '036', 0, '2020-08-18 17:15:57'),
(2566, 'A030070', '', '', 'ISWAN IRAWAN KADIR', '036', 0, '2020-08-18 17:15:57'),
(2567, 'A150539', '', '', 'ITANG SUTIAWAN', '036', 0, '2020-08-18 17:15:57'),
(2568, 'A130257', '', '', 'JAENURI', '036', 0, '2020-08-18 17:15:57'),
(2569, 'A100174', '', '', 'JAM\'ANG DG LIRA', '036', 0, '2020-08-18 17:15:57'),
(2570, 'A140323', '', '', 'JANIYEL SARAGIH', '036', 0, '2020-08-18 17:15:57'),
(2571, 'A140328', '', '', 'JANUAR ANDRIAS KURNIAWAN', '036', 0, '2020-08-18 17:15:57'),
(2572, 'A140343', '', '', 'JASMAN', '036', 0, '2020-08-18 17:15:57'),
(2573, 'A030100', '', '', 'JAYADI', '036', 0, '2020-08-18 17:15:57'),
(2574, 'A040144', '', '', 'JEHESKIEL', '036', 0, '2020-08-18 17:15:57'),
(2575, 'A150523', '', '', 'JHON FICTOR PURBA', '036', 0, '2020-08-18 17:15:57'),
(2576, 'A180604', '', '', 'JHON FRAZER ERIKSON MANIK', '036', 0, '2020-08-18 17:15:57'),
(2577, 'A140373', '', '', 'JONI HIDAYAT', '036', 0, '2020-08-18 17:15:57'),
(2578, 'A140429', '', '', 'JONO MULYANA', '036', 0, '2020-08-18 17:15:57'),
(2579, 'A030117', '', '', 'JOPIE J THENU', '036', 0, '2020-08-18 17:15:57'),
(2580, 'A190623', '', '', 'JOSHUA DWI CAHYANTO', '036', 0, '2020-08-18 17:15:57'),
(2581, 'A140377', '', '', 'JULIA NOVALISA', '036', 0, '2020-08-18 17:15:57'),
(2582, 'A130240', '', '', 'JUNAEDI (SITE CILEGON)', '036', 0, '2020-08-18 17:15:57'),
(2583, '1030789', '', '', 'JUNEDI MALAU', '036', 0, '2020-08-18 17:15:57'),
(2584, 'A040145', '', '', 'JUNIPHER', '036', 0, '2020-08-18 17:15:57'),
(2585, 'A140396', '', '', 'KARNI', '036', 0, '2020-08-18 17:15:57'),
(2586, 'A190637', '', '', 'KASIADI', '036', 0, '2020-08-18 17:15:57'),
(2587, 'A130285', '', '', 'KASMANI', '036', 0, '2020-08-18 17:15:57'),
(2588, 'A100168', '', '', 'KIAGUS MUHAMMAD AZAHARI', '036', 0, '2020-08-18 17:15:57'),
(2589, 'A160557', '', '', 'KIKUK KRISSANTO', '036', 0, '2020-08-18 17:15:57');
INSERT INTO `tab_user_temp` (`user_id`, `user_nip`, `user_email`, `user_pass`, `user_fname`, `user_dept`, `user_auth`, `created_date`) VALUES
(2590, 'A100170', '', '', 'KOLIS SETIYONO', '036', 0, '2020-08-18 17:15:57'),
(2591, 'A150476', '', '', 'LIENGGA  ARI WIDHIYANTO', '036', 0, '2020-08-18 17:15:57'),
(2592, 'A140466', '', '', 'LUKAS RANTE', '036', 0, '2020-08-18 17:15:57'),
(2593, 'A140465', '', '', 'LUKAS SAMBA', '036', 0, '2020-08-18 17:15:57'),
(2594, 'A100163', '', '', 'LUKMAN M.', '036', 0, '2020-08-18 17:15:57'),
(2595, 'A180607', '', '', 'LUKMANA AGUNG SETIAWAN', '036', 0, '2020-08-18 17:15:57'),
(2596, 'A140345', '', '', 'LUKMANNUL HAKIM', '036', 0, '2020-08-18 17:15:57'),
(2597, 'A140346', '', '', 'M. ARDIANSYAH PULUNGAN', '036', 0, '2020-08-18 17:15:57'),
(2598, 'A030099', '', '', 'M. OMAN', '036', 0, '2020-08-18 17:15:57'),
(2599, 'A120217', '', '', 'M. SYAFIIH', '036', 0, '2020-08-18 17:15:57'),
(2600, 'A150527', '', '', 'M. YUSUF KHAN', '036', 0, '2020-08-18 17:15:57'),
(2601, 'A190632', '', '', 'MARIO VITUS DITUBUN', '036', 0, '2020-08-18 17:15:57'),
(2602, 'A190615', '', '', 'MARJITO', '036', 0, '2020-08-18 17:15:57'),
(2603, 'A190614', '', '', 'MARSUDI', '036', 0, '2020-08-18 17:15:57'),
(2604, 'A190656', '', '', 'MARTHEN BATU RANTE', '036', 0, '2020-08-18 17:15:57'),
(2605, 'A190657', '', '', 'MARTINUS PATABANG', '036', 0, '2020-08-18 17:15:57'),
(2606, 'A130303', '', '', 'MARWAN - LHOKSEUMAWE', '036', 0, '2020-08-18 17:15:57'),
(2607, 'A030009', '', '', 'MARWI', '036', 0, '2020-08-18 17:15:57'),
(2608, 'A150487', '', '', 'MARZUKI', '036', 0, '2020-08-18 17:15:57'),
(2609, 'A140348', '', '', 'MASHAP HANAFI', '036', 0, '2020-08-18 17:15:57'),
(2610, 'A140463', '', '', 'MIHARDI RIZANI', '036', 0, '2020-08-18 17:15:57'),
(2611, 'A120221', '', '', 'MIKE CAHYO DURIANTO', '036', 0, '2020-08-18 17:15:57'),
(2612, 'A190616', '', '', 'MISTAR', '036', 0, '2020-08-18 17:15:57'),
(2613, 'A130274', '', '', 'MUH TARSOLEH', '036', 0, '2020-08-18 17:15:57'),
(2614, 'A190635', '', '', 'MUH. ALI', '036', 0, '2020-08-18 17:15:57'),
(2615, 'A140402', '', '', 'MUH. ERI FAJAR', '036', 0, '2020-08-18 17:15:57'),
(2616, 'A030005', '', '', 'MUH. FACHRI ARSJAD', '036', 0, '2020-08-18 17:15:57'),
(2617, 'A110183', '', '', 'MUHADI', '036', 0, '2020-08-18 17:15:57'),
(2618, 'A150471', '', '', 'MUHAMAD JUFRON', '036', 0, '2020-08-18 17:15:57'),
(2619, 'A200662', '', '', 'MUHAMAD MULYA ISMAY HANGGARA', '036', 0, '2020-08-18 17:15:57'),
(2620, 'A120211', '', '', 'MUHAMMAD DRAJAT MAULANA', '036', 0, '2020-08-18 17:15:57'),
(2621, 'A140415', '', '', 'MUHAMMAD FAIZAL FURQON', '036', 0, '2020-08-18 17:15:57'),
(2622, 'A200658', '', '', 'MUHAMMAD HAZALI, ST', '036', 0, '2020-08-18 17:15:57'),
(2623, 'A130256', '', '', 'MUHAMMAD HUSEN', '036', 0, '2020-08-18 17:15:57'),
(2624, 'A160553', '', '', 'MUHAMMAD ROYANI', '036', 0, '2020-08-18 17:15:57'),
(2625, 'A130254', '', '', 'MUHAMMAD TAUFIQURAHMAN', '036', 0, '2020-08-18 17:15:57'),
(2626, 'A160555', '', '', 'MUHAMMAD YANI', '036', 0, '2020-08-18 17:15:57'),
(2627, 'A200665', '', '', 'MUHAMMAD YUSUF SIMATUPANG', '036', 0, '2020-08-18 17:15:57'),
(2628, 'A150530', '', '', 'MUNIR', '036', 0, '2020-08-18 17:15:57'),
(2629, 'A200664', '', '', 'MURSAL', '036', 0, '2020-08-18 17:15:57'),
(2630, 'A140430', '', '', 'MUSTOFA HIDARSAH', '036', 0, '2020-08-18 17:15:57'),
(2631, 'A170584', '', '', 'NASIR', '036', 0, '2020-08-18 17:15:57'),
(2632, 'A030043', '', '', 'NICO PLAMONIA UTAMA', '036', 0, '2020-08-18 17:15:57'),
(2633, 'A180609', '', '', 'NOPRIANTO', '036', 0, '2020-08-18 17:15:57'),
(2634, 'A030011', '', '', 'NOVA NURHALIM', '036', 0, '2020-08-18 17:15:57'),
(2635, 'A030037', '', '', 'NOVREN O.E. OHOIMUAR', '036', 0, '2020-08-18 17:15:57'),
(2636, 'A150526', '', '', 'NUR MUJIANTO', '036', 0, '2020-08-18 17:15:57'),
(2637, 'A170594', '', '', 'NUR PAIZIN', '036', 0, '2020-08-18 17:15:57'),
(2638, 'A160569', '', '', 'OKKY ANUGRAH', '036', 0, '2020-08-18 17:15:57'),
(2639, 'A140329', '', '', 'ORIDINAL SAPUTRA', '036', 0, '2020-08-18 17:15:57'),
(2640, 'A130276', '', '', 'OYO SUHERDI', '036', 0, '2020-08-18 17:15:57'),
(2641, 'A110187', '', '', 'PALIJO', '036', 0, '2020-08-18 17:15:57'),
(2642, 'A130297', '', '', 'PANJI GANTINA MALAU', '036', 0, '2020-08-18 17:15:57'),
(2643, 'A200667', '', '', 'PERINGATAN TELAUMBANUA', '036', 0, '2020-08-18 17:15:57'),
(2644, 'A150510', '', '', 'PIRDAUS NST', '036', 0, '2020-08-18 17:15:57'),
(2645, 'A130269', '', '', 'POPPY IRAWAN', '036', 0, '2020-08-18 17:15:57'),
(2646, 'A150469', '', '', 'PRIADI SURBAKTI', '036', 0, '2020-08-18 17:15:57'),
(2647, 'A130259', '', '', 'PUJIANTO', '036', 0, '2020-08-18 17:15:57'),
(2648, 'A170588', '', '', 'PUPUT BUDI NOGROHO', '036', 0, '2020-08-18 17:15:57'),
(2649, 'A190624', '', '', 'PURNOMO HADI', '036', 0, '2020-08-18 17:15:57'),
(2650, 'A190625', '', '', 'PUTU EKA YUDHA PRASTIKA', '036', 0, '2020-08-18 17:15:57'),
(2651, '1071438', '', '', 'R. KUNTO WIBISONO', '036', 0, '2020-08-18 17:15:57'),
(2652, 'A120219', '', '', 'RADEN ERDI CAHYADI', '036', 0, '2020-08-18 17:15:57'),
(2653, 'A150547', '', '', 'RAFI\'I', '036', 0, '2020-08-18 17:15:57'),
(2654, 'A190627', '', '', 'RAHMAD HIDAYAT', '036', 0, '2020-08-18 17:15:57'),
(2655, 'A140374', '', '', 'RAJALI', '036', 0, '2020-08-18 17:15:57'),
(2656, 'A070154', '', '', 'RAJIYO', '036', 0, '2020-08-18 17:15:57'),
(2657, 'A130301', '', '', 'REGA PRASONTA', '036', 0, '2020-08-18 17:15:57'),
(2658, 'A140335', '', '', 'RIANDANI', '036', 0, '2020-08-18 17:15:57'),
(2659, 'A190639', '', '', 'RICO JUNANDA PUTRA', '036', 0, '2020-08-18 17:15:57'),
(2660, 'A200653', '', '', 'RIDELS HUJBERK GONI', '036', 0, '2020-08-18 17:15:57'),
(2661, 'A120215', '', '', 'RIFAL RIYAN DINATA', '036', 0, '2020-08-18 17:15:57'),
(2662, 'A130296', '', '', 'RIKO ATMAYUANA', '036', 0, '2020-08-18 17:15:57'),
(2663, 'A140333', '', '', 'RINDO MAULANA', '036', 0, '2020-08-18 17:15:57'),
(2664, 'A190617', '', '', 'RIYAN HIDAYAT', '036', 0, '2020-08-18 17:15:57'),
(2665, 'A150518', '', '', 'ROHMAT TAQIYUDIN', '036', 0, '2020-08-18 17:15:57'),
(2666, 'A190645', '', '', 'ROMAS', '036', 0, '2020-08-18 17:15:57'),
(2667, 'A110189', '', '', 'RUBEN RIHI KALE GA', '036', 0, '2020-08-18 17:15:57'),
(2668, 'A180602', '', '', 'RUDI ASMOKO', '036', 0, '2020-08-18 17:15:57'),
(2669, 'A130283', '', '', 'RUDI PRIYANTO', '036', 0, '2020-08-18 17:15:57'),
(2670, 'A170593', '', '', 'SAALLUDIN GHANI', '036', 0, '2020-08-18 17:15:57'),
(2671, 'A200661', '', '', 'SAFRIZAL', '036', 0, '2020-08-18 17:15:57'),
(2672, 'A140334', '', '', 'SAHRONI', '036', 0, '2020-08-18 17:15:57'),
(2673, 'A150511', '', '', 'SAHRUL EFENDI', '036', 0, '2020-08-18 17:15:57'),
(2674, 'A200668', '', '', 'SAIFUL AZWANI', '036', 0, '2020-08-18 17:15:57'),
(2675, 'A130284', '', '', 'SAMSUDIN', '036', 0, '2020-08-18 17:15:57'),
(2676, 'A030073', '', '', 'SANDI CAHYONO', '036', 0, '2020-08-18 17:15:57'),
(2677, 'A140434', '', '', 'SANNIP HASIBUAN', '036', 0, '2020-08-18 17:15:57'),
(2678, 'A200663', '', '', 'SANTO MORENO NAIBAHO', '036', 0, '2020-08-18 17:15:57'),
(2679, 'A150512', '', '', 'SAPRIL GUNAWAN', '036', 0, '2020-08-18 17:15:57'),
(2680, 'A030042', '', '', 'SARTO', '036', 0, '2020-08-18 17:15:57'),
(2681, 'A150494', '', '', 'SARWAN, ST', '036', 0, '2020-08-18 17:15:57'),
(2682, 'A140339', '', '', 'SILVISTER MAZMUR DOMINGGO', '036', 0, '2020-08-18 17:15:57'),
(2683, 'A150522', '', '', 'SINLIT SIONG SINAGA', '036', 0, '2020-08-18 17:15:57'),
(2684, 'A130302', '', '', 'SOFIYAN', '036', 0, '2020-08-18 17:15:57'),
(2685, 'A130292', '', '', 'SOPIAN (LAMPUNG)', '036', 0, '2020-08-18 17:15:57'),
(2686, 'A100167', '', '', 'SOPIAN (PALEMBANG)', '036', 0, '2020-08-18 17:15:57'),
(2687, 'A030118', '', '', 'STANLEY', '036', 0, '2020-08-18 17:15:57'),
(2688, 'A140382', '', '', 'SUAJI. HJ', '036', 0, '2020-08-18 17:15:57'),
(2689, 'A200655', '', '', 'SUBARI', '036', 0, '2020-08-18 17:15:57'),
(2690, 'A030039', '', '', 'SUBOWO', '036', 0, '2020-08-18 17:15:57'),
(2691, 'A120209', '', '', 'SUCHA DEWANTORO', '036', 0, '2020-08-18 17:15:57'),
(2692, 'A120195', '', '', 'SUDARTO', '036', 0, '2020-08-18 17:15:57'),
(2693, 'A140376', '', '', 'SUDIRMAN', '036', 0, '2020-08-18 17:15:57'),
(2694, 'A150502', '', '', 'SUDIRMAN SIAHAAN', '036', 0, '2020-08-18 17:15:57'),
(2695, 'A120196', '', '', 'SUGIYO', '036', 0, '2020-08-18 17:15:57'),
(2696, 'A140400', '', '', 'SUHAERI', '036', 0, '2020-08-18 17:15:57'),
(2697, 'A140391', '', '', 'SUHELLI FANDI', '036', 0, '2020-08-18 17:15:57'),
(2698, 'A150519', '', '', 'SUHENDAR', '036', 0, '2020-08-18 17:15:57'),
(2699, 'A130281', '', '', 'SULAEMAN', '036', 0, '2020-08-18 17:15:57'),
(2700, 'A120220', '', '', 'SULKAN', '036', 0, '2020-08-18 17:15:57'),
(2701, 'A030047', '', '', 'SUNARIADI, ST', '036', 0, '2020-08-18 17:15:57'),
(2702, 'A120190', '', '', 'SUPRAT R. ALI BANGSA', '036', 0, '2020-08-18 17:15:57'),
(2703, 'A140397', '', '', 'SUPRIADI', '036', 0, '2020-08-18 17:15:57'),
(2704, 'A150538', '', '', 'SURATMIN', '036', 0, '2020-08-18 17:15:57'),
(2705, 'A030086', '', '', 'SURIANSYAH', '036', 0, '2020-08-18 17:15:57'),
(2706, 'A130253', '', '', 'SUSANTO', '036', 0, '2020-08-18 17:15:57'),
(2707, 'A040008', '', '', 'SUSANTO POLY', '036', 0, '2020-08-18 17:15:57'),
(2708, 'A190619', '', '', 'SUTARDI', '036', 0, '2020-08-18 17:15:57'),
(2709, 'A150548', '', '', 'SUTARJO', '036', 0, '2020-08-18 17:15:57'),
(2710, 'A030052', '', '', 'SUWADI', '036', 0, '2020-08-18 17:15:57'),
(2711, 'A150470', '', '', 'SUYANTO', '036', 0, '2020-08-18 17:15:57'),
(2712, 'A140460', '', '', 'SYAHRANI SALADRI', '036', 0, '2020-08-18 17:15:57'),
(2713, 'A130266', '', '', 'SYAHRI', '036', 0, '2020-08-18 17:15:57'),
(2714, 'A130319', '', '', 'SYAIFUL HAMSYAH', '036', 0, '2020-08-18 17:15:57'),
(2715, 'A100176', '', '', 'SYARIFUDDIN', '036', 0, '2020-08-18 17:15:57'),
(2716, 'A150488', '', '', 'TASLIM', '036', 0, '2020-08-18 17:15:57'),
(2717, 'A030006', '', '', 'TAUFAN LOHO', '036', 0, '2020-08-18 17:15:57'),
(2718, 'A120213', '', '', 'TEGUH BUDI UTOMO', '036', 0, '2020-08-18 17:15:57'),
(2719, 'A200654', '', '', 'THEOPILUS WANMA', '036', 0, '2020-08-18 17:15:57'),
(2720, 'A140420', '', '', 'THOMAS MEI HARTONO', '036', 0, '2020-08-18 17:15:57'),
(2721, 'A130298', '', '', 'TONI AHMAD JAYA', '036', 0, '2020-08-18 17:15:57'),
(2722, 'A030041', '', '', 'TONI PURWANTO', '036', 0, '2020-08-18 17:15:57'),
(2723, 'A030038', '', '', 'UMAR SYARIF HIDAYAT', '036', 0, '2020-08-18 17:15:57'),
(2724, 'A150534', '', '', 'USEP AHMAD YUSUP', '036', 0, '2020-08-18 17:15:57'),
(2725, 'A160551', '', '', 'USEP SUTISNA', '036', 0, '2020-08-18 17:15:57'),
(2726, 'A080157', '', '', 'WAGIYO', '036', 0, '2020-08-18 17:15:57'),
(2727, 'A190633', '', '', 'WAHYU SAMUDRA', '036', 0, '2020-08-18 17:15:57'),
(2728, 'A030023', '', '', 'WAHYUDI PRIBADI', '036', 0, '2020-08-18 17:15:57'),
(2729, 'A130265', '', '', 'WAHYUDIANTO', '036', 0, '2020-08-18 17:15:57'),
(2730, 'A130232', '', '', 'WAHYUDIN', '036', 0, '2020-08-18 17:15:57'),
(2731, 'A120230', '', '', 'WARSITO', '036', 0, '2020-08-18 17:15:57'),
(2732, 'A190622', '', '', 'WAWAN CHROMIANTO', '036', 0, '2020-08-18 17:15:57'),
(2733, 'A180597', '', '', 'WAWAN TRISTIYANTO', '036', 0, '2020-08-18 17:15:57'),
(2734, 'A150486', '', '', 'WIDY NIRWANTO', '036', 0, '2020-08-18 17:15:58'),
(2735, 'A120193', '', '', 'YANU SUSILO', '036', 0, '2020-08-18 17:15:58'),
(2736, 'A180598', '', '', 'YANUARIUS GIGIH NEONBASU', '036', 0, '2020-08-18 17:15:58'),
(2737, '1020653', '', '', 'YANURIYANTO', '036', 0, '2020-08-18 17:15:58'),
(2738, 'A140359', '', '', 'YARINUS WARASI', '036', 0, '2020-08-18 17:15:58'),
(2739, 'A110182', '', '', 'YOFAN HERFIANTO', '036', 0, '2020-08-18 17:15:58'),
(2740, 'A030055', '', '', 'YUDI PURNOMO', '036', 0, '2020-08-18 17:15:58'),
(2741, 'A190626', '', '', 'YUSUF FANJI', '036', 0, '2020-08-18 17:15:58'),
(2742, 'A170577', '', '', 'ZAINI GHONI', '036', 0, '2020-08-18 17:15:58'),
(2743, 'A130277', '', '', 'ZEN FAUZI', '036', 0, '2020-08-18 17:15:58'),
(2744, 'A030056', '', '', 'ZUHARDI AMIEN', '036', 0, '2020-08-18 17:15:58'),
(2745, 'A140368', '', '', 'ZUL AL-OKTARI', '036', 0, '2020-08-18 17:15:58'),
(2746, 'A150517', '', '', 'ZULMI ADRIANSYAH', '036', 0, '2020-08-18 17:15:58'),
(2747, '1183556', '', '', 'BOBBY CHRISTIAN', '220', 0, '2020-08-18 17:15:58'),
(2748, '1183653', '', '', 'DANANDIKA PRAMASTO', '220', 0, '2020-08-18 17:15:58'),
(2749, '1203839', '', '', 'DEYNA', '220', 0, '2020-08-18 17:15:58'),
(2750, '1111805', '', '', 'UCUP AFFANDI', '220', 0, '2020-08-18 17:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `tr_idea`
--

CREATE TABLE `tr_idea` (
  `tr_id` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  `tr_status` int(255) NOT NULL COMMENT '0 = Input ; 1 = Verified; 2 = Approved ; 3 = Rejected',
  `reject_reason` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `edited_by` int(11) DEFAULT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tr_post`
--

CREATE TABLE `tr_post` (
  `post_id` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  `post_type` int(11) NOT NULL COMMENT '0 = Comment ; 1 = Not Comment',
  `post_like` int(11) NOT NULL COMMENT '1 = LIKE ; 2 = DISLIKE',
  `post_message` varchar(255) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tr_score`
--

CREATE TABLE `tr_score` (
  `score_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tr_score`
--

INSERT INTO `tr_score` (`score_id`, `user_id`, `score_count`) VALUES
(1, 5, 10),
(2, 5, 50),
(3, 5, 50),
(4, 1, 10),
(5, 1, 50),
(6, 2, 50),
(7, 9, 10),
(8, 9, 50),
(9, 9, 50),
(10, 9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tr_task`
--

CREATE TABLE `tr_task` (
  `task_id` int(11) NOT NULL,
  `idea_id` int(11) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `task_desc` varchar(255) NOT NULL,
  `task_position` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `edited_by` int(11) NOT NULL,
  `edited_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_attachment`
-- (See below for the actual view)
--
CREATE TABLE `vw_attachment` (
`attchment_id` int(11)
,`idea_id` int(11)
,`attachment_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_challenge`
-- (See below for the actual view)
--
CREATE TABLE `vw_challenge` (
`challenge_id` int(11)
,`challenge_name` varchar(255)
,`challenge_desc` longtext
,`challenge_files` varchar(255)
,`created_by` int(11)
,`created_date` datetime
,`edited_by` int(11)
,`edited_date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_idea`
-- (See below for the actual view)
--
CREATE TABLE `vw_idea` (
`idea_id` int(11)
,`challenge_id` int(11)
,`idea_type` int(11)
,`idea_subject` varchar(255)
,`idea_desc` longtext
,`idea_detail` longtext
,`idea_photo` varchar(255)
,`idea_views` int(11)
,`created_by` int(11)
,`created_date` varchar(255)
,`edited_by` int(11)
,`edited_date` varchar(255)
,`challenge_name` varchar(255)
,`challenge_desc` longtext
,`challenge_files` varchar(255)
,`created_name` varchar(255)
,`edited_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_knowledge`
-- (See below for the actual view)
--
CREATE TABLE `vw_knowledge` (
`knowledge_id` int(11)
,`knowledge_subject` varchar(255)
,`knowledge_desc` longtext
,`knowledge_photo` varchar(255)
,`created_by` int(11)
,`created_date` datetime
,`edited_by` int(11)
,`edited_date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_last_idea`
-- (See below for the actual view)
--
CREATE TABLE `vw_last_idea` (
`tr_id` int(11)
,`idea_id` int(11)
,`tr_status` int(255)
,`reject_reason` varchar(255)
,`created_by` int(11)
,`created_date` datetime
,`edited_by` int(11)
,`edited_date` datetime
,`idea_type` int(11)
,`idea_subject` varchar(255)
,`idea_desc` longtext
,`idea_detail` longtext
,`idea_photo` varchar(255)
,`idea_views` int(11)
,`created_name` varchar(255)
,`challenge_id` int(11)
,`challenge_name` varchar(255)
,`challenge_desc` longtext
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_last_post`
-- (See below for the actual view)
--
CREATE TABLE `vw_last_post` (
`post_id` int(11)
,`idea_id` int(11)
,`post_type` int(11)
,`post_like` int(11)
,`post_message` varchar(255)
,`created_by` int(11)
,`created_date` varchar(255)
,`created_post_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_nav`
-- (See below for the actual view)
--
CREATE TABLE `vw_nav` (
`nav_id` int(11)
,`nav_name` varchar(255)
,`nav_ctr` varchar(255)
,`nav_desc` varchar(255)
,`nav_thumb` varchar(255)
,`nav_order` int(11)
,`is_admin` int(11)
,`created_by` int(11)
,`created_date` datetime
,`edited_by` int(11)
,`edited_date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_post`
-- (See below for the actual view)
--
CREATE TABLE `vw_post` (
`post_id` int(11)
,`idea_id` int(11)
,`post_type` int(11)
,`post_like` int(11)
,`post_message` varchar(255)
,`created_by` int(11)
,`created_date` varchar(255)
,`created_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_task`
-- (See below for the actual view)
--
CREATE TABLE `vw_task` (
`task_id` int(11)
,`idea_id` int(11)
,`task_name` varchar(255)
,`task_desc` varchar(255)
,`task_position` int(11)
,`created_by` int(11)
,`created_date` datetime
,`edited_by` int(11)
,`edited_date` datetime
,`created_name` varchar(255)
,`edited_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_team`
-- (See below for the actual view)
--
CREATE TABLE `vw_team` (
`team_id` int(11)
,`idea_id` int(11)
,`user_id` int(11)
,`position` varchar(255)
,`user_fname` varchar(255)
,`user_photo` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_temp`
-- (See below for the actual view)
--
CREATE TABLE `vw_temp` (
`tr_id` int(11)
,`idea_id` int(11)
,`MaxTrStatus` int(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_temp_post`
-- (See below for the actual view)
--
CREATE TABLE `vw_temp_post` (
`MaxPostId` int(11)
,`idea_id` int(11)
,`MaxCreatedDate` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_tr_score`
-- (See below for the actual view)
--
CREATE TABLE `vw_tr_score` (
`score_id` int(11)
,`user_id` int(11)
,`score_count` int(11)
,`employee_name` varchar(255)
,`employee_dept` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_user`
-- (See below for the actual view)
--
CREATE TABLE `vw_user` (
`user_id` int(11)
,`user_email` varchar(255)
,`user_pass` varchar(255)
,`user_fname` varchar(255)
,`user_photo` varchar(255)
,`user_auth` int(11)
,`user_phone` varchar(20)
,`user_instagram` varchar(255)
,`div_id` varchar(10)
,`dept_id` varchar(10)
,`created_date` datetime
,`div_name` varchar(255)
,`dept_name` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_attachment`
--
DROP TABLE IF EXISTS `vw_attachment`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_attachment`  AS  select `tab_attachment`.`attchment_id` AS `attchment_id`,`tab_attachment`.`idea_id` AS `idea_id`,`tab_attachment`.`attachment_name` AS `attachment_name` from `tab_attachment` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_challenge`
--
DROP TABLE IF EXISTS `vw_challenge`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_challenge`  AS  select `tab_challenge`.`challenge_id` AS `challenge_id`,`tab_challenge`.`challenge_name` AS `challenge_name`,`tab_challenge`.`challenge_desc` AS `challenge_desc`,`tab_challenge`.`challenge_files` AS `challenge_files`,`tab_challenge`.`created_by` AS `created_by`,`tab_challenge`.`created_date` AS `created_date`,`tab_challenge`.`edited_by` AS `edited_by`,`tab_challenge`.`edited_date` AS `edited_date` from `tab_challenge` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_idea`
--
DROP TABLE IF EXISTS `vw_idea`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_idea`  AS  select `ti`.`idea_id` AS `idea_id`,`ti`.`challenge_id` AS `challenge_id`,`ti`.`idea_type` AS `idea_type`,`ti`.`idea_subject` AS `idea_subject`,`ti`.`idea_desc` AS `idea_desc`,`ti`.`idea_detail` AS `idea_detail`,`ti`.`idea_photo` AS `idea_photo`,`ti`.`idea_views` AS `idea_views`,`ti`.`created_by` AS `created_by`,`ti`.`created_date` AS `created_date`,`ti`.`edited_by` AS `edited_by`,`ti`.`edited_date` AS `edited_date`,`tc`.`challenge_name` AS `challenge_name`,`tc`.`challenge_desc` AS `challenge_desc`,`tc`.`challenge_files` AS `challenge_files`,`tu`.`user_fname` AS `created_name`,`tu2`.`user_fname` AS `edited_name` from (((`tab_idea` `ti` left join `tab_challenge` `tc` on(`ti`.`challenge_id` = `tc`.`challenge_id`)) left join `tab_user` `tu` on(`ti`.`created_by` = `tu`.`user_id`)) left join `tab_user` `tu2` on(`ti`.`edited_by` = `tu2`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_knowledge`
--
DROP TABLE IF EXISTS `vw_knowledge`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_knowledge`  AS  select `tab_knowledge`.`knowledge_id` AS `knowledge_id`,`tab_knowledge`.`knowledge_subject` AS `knowledge_subject`,`tab_knowledge`.`knowledge_desc` AS `knowledge_desc`,`tab_knowledge`.`knowledge_photo` AS `knowledge_photo`,`tab_knowledge`.`created_by` AS `created_by`,`tab_knowledge`.`created_date` AS `created_date`,`tab_knowledge`.`edited_by` AS `edited_by`,`tab_knowledge`.`edited_date` AS `edited_date` from `tab_knowledge` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_last_idea`
--
DROP TABLE IF EXISTS `vw_last_idea`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_last_idea`  AS  select `tbl1`.`tr_id` AS `tr_id`,`tbl1`.`idea_id` AS `idea_id`,`tbl1`.`tr_status` AS `tr_status`,`tbl1`.`reject_reason` AS `reject_reason`,`tbl1`.`created_by` AS `created_by`,`tbl1`.`created_date` AS `created_date`,`tbl1`.`edited_by` AS `edited_by`,`tbl1`.`edited_date` AS `edited_date`,`tbl3`.`idea_type` AS `idea_type`,`tbl3`.`idea_subject` AS `idea_subject`,`tbl3`.`idea_desc` AS `idea_desc`,`tbl3`.`idea_detail` AS `idea_detail`,`tbl3`.`idea_photo` AS `idea_photo`,`tbl3`.`idea_views` AS `idea_views`,`tbl4`.`user_fname` AS `created_name`,`tbl3`.`challenge_id` AS `challenge_id`,`tbl5`.`challenge_name` AS `challenge_name`,`tbl5`.`challenge_desc` AS `challenge_desc` from ((((`tr_idea` `tbl1` join `vw_temp` `tbl2` on(`tbl1`.`idea_id` = `tbl2`.`idea_id` and `tbl1`.`tr_status` = `tbl2`.`MaxTrStatus`)) join `tab_idea` `tbl3` on(`tbl1`.`idea_id` = `tbl3`.`idea_id`)) left join `tab_user` `tbl4` on(`tbl1`.`created_by` = `tbl4`.`user_id`)) left join `tab_challenge` `tbl5` on(`tbl3`.`challenge_id` = `tbl5`.`challenge_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_last_post`
--
DROP TABLE IF EXISTS `vw_last_post`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_last_post`  AS  select `tp`.`post_id` AS `post_id`,`tp`.`idea_id` AS `idea_id`,`tp`.`post_type` AS `post_type`,`tp`.`post_like` AS `post_like`,`tp`.`post_message` AS `post_message`,`tp`.`created_by` AS `created_by`,`tp`.`created_date` AS `created_date`,`tu`.`user_fname` AS `created_post_name` from ((`tr_post` `tp` join `vw_temp_post` `vtp` on(`tp`.`idea_id` = `vtp`.`idea_id` and `tp`.`created_date` = `vtp`.`MaxCreatedDate`)) left join `tab_user` `tu` on(`tp`.`created_by` = `tu`.`user_id`)) where `tp`.`post_type` = 0 ;

-- --------------------------------------------------------

--
-- Structure for view `vw_nav`
--
DROP TABLE IF EXISTS `vw_nav`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_nav`  AS  select `tn`.`nav_id` AS `nav_id`,`tn`.`nav_name` AS `nav_name`,`tn`.`nav_ctr` AS `nav_ctr`,`tn`.`nav_desc` AS `nav_desc`,`tn`.`nav_thumb` AS `nav_thumb`,`tn`.`nav_order` AS `nav_order`,`tn`.`is_admin` AS `is_admin`,`tn`.`created_by` AS `created_by`,`tn`.`created_date` AS `created_date`,`tn`.`edited_by` AS `edited_by`,`tn`.`edited_date` AS `edited_date` from `tab_nav` `tn` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_post`
--
DROP TABLE IF EXISTS `vw_post`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_post`  AS  select `tp`.`post_id` AS `post_id`,`tp`.`idea_id` AS `idea_id`,`tp`.`post_type` AS `post_type`,`tp`.`post_like` AS `post_like`,`tp`.`post_message` AS `post_message`,`tp`.`created_by` AS `created_by`,`tp`.`created_date` AS `created_date`,`tu`.`user_fname` AS `created_name` from (`tr_post` `tp` left join `tab_user` `tu` on(`tp`.`created_by` = `tu`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_task`
--
DROP TABLE IF EXISTS `vw_task`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_task`  AS  select `tt`.`task_id` AS `task_id`,`tt`.`idea_id` AS `idea_id`,`tt`.`task_name` AS `task_name`,`tt`.`task_desc` AS `task_desc`,`tt`.`task_position` AS `task_position`,`tt`.`created_by` AS `created_by`,`tt`.`created_date` AS `created_date`,`tt`.`edited_by` AS `edited_by`,`tt`.`edited_date` AS `edited_date`,`tu`.`user_fname` AS `created_name`,`tu2`.`user_fname` AS `edited_name` from ((`tr_task` `tt` join `tab_user` `tu` on(`tt`.`created_by` = `tu`.`user_id`)) join `tab_user` `tu2` on(`tt`.`edited_by` = `tu2`.`user_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_team`
--
DROP TABLE IF EXISTS `vw_team`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_team`  AS  select `tt`.`team_id` AS `team_id`,`tt`.`idea_id` AS `idea_id`,`tt`.`user_id` AS `user_id`,`tt`.`position` AS `position`,`tu`.`user_fname` AS `user_fname`,`tu`.`user_photo` AS `user_photo` from ((`tab_team` `tt` join `tab_user` `tu` on(`tt`.`user_id` = `tu`.`user_id`)) join `tab_idea` `ti` on(`tt`.`idea_id` = `ti`.`idea_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_temp`
--
DROP TABLE IF EXISTS `vw_temp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_temp`  AS  select `tbl2`.`tr_id` AS `tr_id`,`tbl2`.`idea_id` AS `idea_id`,max(`tbl2`.`tr_status`) AS `MaxTrStatus` from `tr_idea` `tbl2` group by `tbl2`.`idea_id` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_temp_post`
--
DROP TABLE IF EXISTS `vw_temp_post`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_temp_post`  AS  select max(`tr_post`.`post_id`) AS `MaxPostId`,`tr_post`.`idea_id` AS `idea_id`,max(`tr_post`.`created_date`) AS `MaxCreatedDate` from `tr_post` where `tr_post`.`post_type` = 0 group by `tr_post`.`idea_id` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_tr_score`
--
DROP TABLE IF EXISTS `vw_tr_score`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_tr_score`  AS  select `ts`.`score_id` AS `score_id`,`ts`.`user_id` AS `user_id`,`ts`.`score_count` AS `score_count`,`tu`.`user_fname` AS `employee_name`,`td`.`dept_name` AS `employee_dept` from ((`tr_score` `ts` join `tab_user` `tu` on(`ts`.`user_id` = `tu`.`user_id`)) left join `tab_dept` `td` on(`tu`.`dept_id` = `td`.`dept_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_user`
--
DROP TABLE IF EXISTS `vw_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_user`  AS  select `tu`.`user_id` AS `user_id`,`tu`.`user_email` AS `user_email`,`tu`.`user_pass` AS `user_pass`,`tu`.`user_fname` AS `user_fname`,`tu`.`user_photo` AS `user_photo`,`tu`.`user_auth` AS `user_auth`,`tu`.`user_phone` AS `user_phone`,`tu`.`user_instagram` AS `user_instagram`,`tu`.`div_id` AS `div_id`,`tu`.`dept_id` AS `dept_id`,`tu`.`created_date` AS `created_date`,`td`.`div_name` AS `div_name`,`td2`.`dept_name` AS `dept_name` from ((`tab_user` `tu` left join `tab_div` `td` on(`tu`.`div_id` = `td`.`div_id`)) left join `tab_dept` `td2` on(`tu`.`dept_id` = `td2`.`dept_id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_attachment`
--
ALTER TABLE `tab_attachment`
  ADD PRIMARY KEY (`attchment_id`);

--
-- Indexes for table `tab_challenge`
--
ALTER TABLE `tab_challenge`
  ADD PRIMARY KEY (`challenge_id`);

--
-- Indexes for table `tab_dept`
--
ALTER TABLE `tab_dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tab_div`
--
ALTER TABLE `tab_div`
  ADD PRIMARY KEY (`div_id`);

--
-- Indexes for table `tab_idea`
--
ALTER TABLE `tab_idea`
  ADD PRIMARY KEY (`idea_id`);

--
-- Indexes for table `tab_knowledge`
--
ALTER TABLE `tab_knowledge`
  ADD PRIMARY KEY (`knowledge_id`);

--
-- Indexes for table `tab_nav`
--
ALTER TABLE `tab_nav`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `tab_team`
--
ALTER TABLE `tab_team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `tab_user`
--
ALTER TABLE `tab_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tab_user_temp`
--
ALTER TABLE `tab_user_temp`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tr_idea`
--
ALTER TABLE `tr_idea`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `tr_post`
--
ALTER TABLE `tr_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tr_score`
--
ALTER TABLE `tr_score`
  ADD PRIMARY KEY (`score_id`);

--
-- Indexes for table `tr_task`
--
ALTER TABLE `tr_task`
  ADD PRIMARY KEY (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_attachment`
--
ALTER TABLE `tab_attachment`
  MODIFY `attchment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tab_challenge`
--
ALTER TABLE `tab_challenge`
  MODIFY `challenge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tab_idea`
--
ALTER TABLE `tab_idea`
  MODIFY `idea_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tab_knowledge`
--
ALTER TABLE `tab_knowledge`
  MODIFY `knowledge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tab_nav`
--
ALTER TABLE `tab_nav`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tab_team`
--
ALTER TABLE `tab_team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tab_user`
--
ALTER TABLE `tab_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tab_user_temp`
--
ALTER TABLE `tab_user_temp`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2751;

--
-- AUTO_INCREMENT for table `tr_idea`
--
ALTER TABLE `tr_idea`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tr_post`
--
ALTER TABLE `tr_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tr_score`
--
ALTER TABLE `tr_score`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tr_task`
--
ALTER TABLE `tr_task`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
