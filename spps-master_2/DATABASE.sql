-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 16, 2024 at 12:48 AM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u263018807_sppmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `bebas`
--

CREATE TABLE `bebas` (
  `bebas_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `payment_payment_id` int(11) DEFAULT NULL,
  `bebas_bill` decimal(10,0) DEFAULT NULL,
  `bebas_total_pay` decimal(10,0) DEFAULT 0,
  `bebas_input_date` timestamp NULL DEFAULT NULL,
  `bebas_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bebas_pay`
--

CREATE TABLE `bebas_pay` (
  `bebas_pay_id` int(11) NOT NULL,
  `bebas_bebas_id` int(11) DEFAULT NULL,
  `bebas_pay_number` varchar(100) DEFAULT NULL,
  `bebas_pay_bill` decimal(10,0) DEFAULT NULL,
  `bebas_pay_desc` varchar(100) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `bebas_pay_input_date` date DEFAULT NULL,
  `bebas_pay_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `bulan` (
  `bulan_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `payment_payment_id` int(11) DEFAULT NULL,
  `month_month_id` int(11) DEFAULT NULL,
  `bulan_bill` decimal(10,0) DEFAULT NULL,
  `bulan_status` tinyint(1) DEFAULT 0,
  `bulan_number_pay` varchar(100) DEFAULT NULL,
  `bulan_date_pay` date DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `bulan_input_date` timestamp NULL DEFAULT NULL,
  `bulan_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, '1A'),
(2, '1B'),
(3, '1C'),
(4, '2A'),
(5, '2B'),
(6, '2C'),
(7, '3A'),
(8, '3B'),
(9, '3C'),
(10, '4A'),
(11, '4B'),
(12, '5'),
(13, '6');

-- --------------------------------------------------------

--
-- Table structure for table `debit`
--

CREATE TABLE `debit` (
  `debit_id` int(11) NOT NULL,
  `debit_date` date DEFAULT NULL,
  `debit_desc` varchar(100) DEFAULT NULL,
  `debit_value` decimal(10,0) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `debit_input_date` timestamp NULL DEFAULT NULL,
  `debit_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `debit`
--

INSERT INTO `debit` (`debit_id`, `debit_date`, `debit_desc`, `debit_value`, `user_user_id`, `debit_input_date`, `debit_last_update`) VALUES
(1, '2019-09-22', 'Internet', 150000, 1, '2019-09-22 10:55:13', '2019-09-22 10:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `info` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `information_id` int(11) NOT NULL,
  `information_title` varchar(100) DEFAULT NULL,
  `information_desc` text DEFAULT NULL,
  `information_img` varchar(255) DEFAULT NULL,
  `information_publish` tinyint(1) DEFAULT 0,
  `user_user_id` int(11) DEFAULT NULL,
  `information_input_date` timestamp NULL DEFAULT NULL,
  `information_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`information_id`, `information_title`, `information_desc`, `information_img`, `information_publish`, `user_user_id`, `information_input_date`, `information_last_update`) VALUES
(1, 'Pelunasan Biaya Prakerin kelas XI Semua Jurusan', '<p>Mohon bagi semua siswa kelas XI semua jurusan untuk segera melunasi Biaya Prakerin yang akan segera di laksanakan akhir bulan ini.</p>', 'Pelunasan_Biaya_Prakerin_kelas_XI_Semua_Jurusan1.jpg', 1, 1, '2019-09-18 22:50:06', '2019-09-18 22:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `kredit`
--

CREATE TABLE `kredit` (
  `kredit_id` int(11) NOT NULL,
  `kredit_date` date DEFAULT NULL,
  `kredit_desc` varchar(100) DEFAULT NULL,
  `kredit_value` decimal(10,0) DEFAULT NULL,
  `user_user_id` int(11) DEFAULT NULL,
  `kredit_input_date` timestamp NULL DEFAULT NULL,
  `kredit_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kredit`
--

INSERT INTO `kredit` (`kredit_id`, `kredit_date`, `kredit_desc`, `kredit_value`, `user_user_id`, `kredit_input_date`, `kredit_last_update`) VALUES
(1, '2019-09-22', 'SPP', 100000, 1, '2019-09-22 10:54:41', '2019-09-22 10:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `letter`
--

CREATE TABLE `letter` (
  `letter_id` int(11) NOT NULL,
  `letter_number` varchar(100) DEFAULT NULL,
  `letter_month` int(11) DEFAULT NULL,
  `letter_year` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `letter`
--

INSERT INTO `letter` (`letter_id`, `letter_number`, `letter_month`, `letter_year`) VALUES
(1, '00001', 9, '2019'),
(2, '00002', 9, '2019'),
(3, '00001', 7, '2024'),
(4, '00002', 7, '2024');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `log_date` timestamp NULL DEFAULT NULL,
  `log_action` varchar(45) DEFAULT NULL,
  `log_module` varchar(45) DEFAULT NULL,
  `log_info` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `log_date`, `log_action`, `log_module`, `log_info`, `user_id`) VALUES
(1, '2019-09-18 22:27:08', 'Tambah', 'Tahun Ajaran', 'ID:null;Title:2019/2020', NULL),
(2, '2019-09-18 22:29:51', 'Tambah', 'Student', 'ID:1;Name:Mahmud Al Fauzi', 1),
(3, '2019-09-18 22:37:06', 'Tambah', 'Jenis Pembayaran', 'ID:null;Title:', NULL),
(4, '2019-09-18 22:39:41', 'Sunting', 'Student', 'ID:1;Name:Mahmud Al Fauzi', 1),
(5, '2019-09-18 22:50:07', 'Tambah', 'Pengeluaran', 'ID:null;Title:<p>Mohon bagi semua siswa kelas XI semua jurusan untuk segera melunasi Biaya Prakerin yang akan segera di laksanakan akhir bulan ini.</p>', NULL),
(6, '2019-09-18 22:52:20', 'Sunting', 'Pengeluaran', 'ID:null;Title:<p>Mohon bagi semua siswa kelas XI semua jurusan untuk segera melunasi Biaya Prakerin yang akan segera di laksanakan akhir bulan ini.</p>', NULL),
(7, '2019-09-20 23:05:32', 'Tambah', 'user', 'ID:2;Name:Ops', 1),
(8, '2019-09-20 23:06:36', 'Hapus', 'user', 'ID:2;Title:Ops', 1),
(9, '2019-09-20 23:11:33', 'Tambah', 'user', 'ID:3;Name:Ops', 1),
(10, '2024-04-26 17:31:48', 'Sunting', 'Tahun Ajaran', 'ID:null;Title:2023/2024', NULL),
(11, '2024-07-08 11:09:18', 'Reset Password', 'Pengguna', 'ID:null;Title:', 1),
(12, '2024-07-13 23:11:18', 'Tambah', 'Jenis Pembayaran', 'ID:null;Title:', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log_trx`
--

CREATE TABLE `log_trx` (
  `log_trx_id` int(11) NOT NULL,
  `student_student_id` int(11) DEFAULT NULL,
  `bulan_bulan_id` int(11) DEFAULT NULL,
  `bebas_pay_bebas_pay_id` int(11) DEFAULT NULL,
  `log_trx_input_date` timestamp NULL DEFAULT NULL,
  `log_trx_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `log_trx`
--

INSERT INTO `log_trx` (`log_trx_id`, `student_student_id`, `bulan_bulan_id`, `bebas_pay_bebas_pay_id`, `log_trx_input_date`, `log_trx_last_update`) VALUES
(1, 1, NULL, NULL, '2019-09-18 22:41:29', '2019-09-18 22:41:29'),
(2, 1, NULL, NULL, '2019-09-22 11:17:31', '2019-09-22 11:17:31'),
(3, 1, NULL, NULL, '2024-07-13 23:05:48', '2024-07-13 23:05:48'),
(4, 59, NULL, NULL, '2024-07-13 23:13:32', '2024-07-13 23:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `majors_id` int(11) NOT NULL,
  `majors_name` varchar(100) DEFAULT NULL,
  `majors_short_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`majors_id`, `majors_name`, `majors_short_name`) VALUES
(1, 'Sekolah Dasar', 'SD');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`month_id`, `month_name`) VALUES
(1, 'Juli'),
(2, 'Agustus'),
(3, 'September'),
(4, 'Oktober'),
(5, 'November'),
(6, 'Desember'),
(7, 'Januari'),
(8, 'Februari'),
(9, 'Maret'),
(10, 'April'),
(11, 'Mei'),
(12, 'Juni');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` enum('BEBAS','BULAN') DEFAULT NULL,
  `period_period_id` int(11) DEFAULT NULL,
  `pos_pos_id` int(11) DEFAULT NULL,
  `payment_input_date` timestamp NULL DEFAULT NULL,
  `payment_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `period_period_id`, `pos_pos_id`, `payment_input_date`, `payment_last_update`) VALUES
(1, 'BULAN', 1, 1, '2019-09-18 22:37:06', '2019-09-18 22:37:06'),
(2, 'BULAN', 1, 2, '2024-07-13 23:11:18', '2024-07-13 23:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE `period` (
  `period_id` int(11) NOT NULL,
  `period_start` year(4) DEFAULT NULL,
  `period_end` year(4) DEFAULT NULL,
  `period_status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `period`
--

INSERT INTO `period` (`period_id`, `period_start`, `period_end`, `period_status`) VALUES
(1, '2023', '2024', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `pos_id` int(11) NOT NULL,
  `pos_name` varchar(100) DEFAULT NULL,
  `pos_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pos`
--

INSERT INTO `pos` (`pos_id`, `pos_name`, `pos_description`) VALUES
(1, 'SPP', 'Sumbangan Siswa'),
(2, 'SPP BULANAN', 'PEMBAYARAN BULANAN SISWA');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(255) DEFAULT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`, `setting_last_update`) VALUES
(1, 'setting_school', 'SEKOLAH DASAR ISLAM TERPADU ASY-SYAFI’IYAH', '2019-09-18 22:23:49'),
(2, 'setting_address', 'Jln. Raya Sindang Awat RT.001/012 Ds. Leuwigoong', '2019-09-18 22:23:49'),
(3, 'setting_phone', '0', '2019-09-18 22:23:49'),
(4, 'setting_district', 'Leuwigoong', '2019-09-18 22:23:49'),
(5, 'setting_city', 'Garut Provinsi', '2019-09-18 22:23:49'),
(6, 'setting_logo', 'SEKOLAH_DASAR_ISLAM_TERPADU_ASY-SYAFI’IYAH.png', '2019-09-18 22:23:49'),
(7, 'setting_level', 'senior', '2019-09-18 22:23:49'),
(8, 'setting_user_sms', '-', '2019-09-18 22:23:49'),
(9, 'setting_pass_sms', 'password', '2019-09-18 22:23:49'),
(10, 'setting_sms', 'N', '2019-09-18 22:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_nis` varchar(45) DEFAULT NULL,
  `student_nisn` varchar(45) DEFAULT NULL,
  `student_password` varchar(100) DEFAULT NULL,
  `student_full_name` varchar(255) DEFAULT NULL,
  `student_gender` enum('L','P') DEFAULT NULL,
  `student_born_place` varchar(45) DEFAULT NULL,
  `student_born_date` date DEFAULT NULL,
  `student_img` varchar(255) DEFAULT NULL,
  `student_phone` varchar(45) DEFAULT NULL,
  `student_hobby` varchar(100) DEFAULT NULL,
  `student_address` text DEFAULT NULL,
  `student_name_of_mother` varchar(255) DEFAULT NULL,
  `student_name_of_father` varchar(255) DEFAULT NULL,
  `student_parent_phone` varchar(45) DEFAULT NULL,
  `class_class_id` int(11) DEFAULT NULL,
  `majors_majors_id` int(11) DEFAULT NULL,
  `student_status` tinyint(1) DEFAULT 1,
  `student_input_date` timestamp NULL DEFAULT NULL,
  `student_last_update` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_nis`, `student_nisn`, `student_password`, `student_full_name`, `student_gender`, `student_born_place`, `student_born_date`, `student_img`, `student_phone`, `student_hobby`, `student_address`, `student_name_of_mother`, `student_name_of_father`, `student_parent_phone`, `class_class_id`, `majors_majors_id`, `student_status`, `student_input_date`, `student_last_update`) VALUES
(1, '119200001', '9956573698', 'af5e7eeac40eeeee5fc7192de5359f5029e4cc4e', 'Mahmud Al Fauzi', 'L', 'Sukabumi', '1989-01-17', 'Mahmud_Al_Fauzi.jpg', '08562050812', '', '', '', '', '08562050813', 1, 1, 1, '2019-09-18 22:29:51', '2019-09-22 11:25:26'),
(2, '201706001', '12096398', 'bb6e1b0b9d23b69f8632365b9b27d63b4c47f14a', 'Sofie Giska Nuraudila', 'P', 'Bogor', '1994-12-31', NULL, '0816299081', 'Menyanyi', 'Bogor', 'Ibu 1', 'Ayah 1', '0816299081', 1, 1, 1, '2019-09-20 23:10:05', '2019-09-20 23:10:05'),
(3, '201706002', '12096399', 'c2a8f0897e401c4b6e9da78c4fe4d3ab6f618468', 'Sofie Giska Nuraudilu', 'L', 'Sukabumi', '1995-09-09', NULL, '0816299082', 'Menyanyi', 'Bogor', 'Ibu 2', 'Ayah 2', '0816299082', 2, 1, 1, '2019-09-20 23:10:05', '2019-09-20 23:10:05'),
(4, '1', '2123.00.002', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Adhwa Fajri Putri Maryam', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 2', 'Ayah 2', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(5, '2', '2123.00.003', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Adnan Rayshifa Nurdinyah', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 3', 'Ayah 3', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(6, '3', '2123.00.004', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Aila Shakila Azzahra', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 4', 'Ayah 4', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(7, '4', '2123.00.005', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Akmal Permana Al-Paruq', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 5', 'Ayah 5', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(8, '5', '2123.00.006', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Alvaro Basya Keitaro Zahid', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 6', 'Ayah 6', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(9, '6', '2123.00.007', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Ameera Anjay', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 7', 'Ayah 7', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(10, '7', '2123.00.008', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Anahita Fauziyyah Shazfa', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 8', 'Ayah 8', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(11, '8', '2123.00.009', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Arsenio Kayvan Saputra', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 9', 'Ayah 9', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(12, '9', '2123.00.010', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Arsyila Nahda Abqoriah', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 10', 'Ayah 10', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(13, '10', '2123.00.011', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Ashkar Willem Nugraha', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 11', 'Ayah 11', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(14, '11', '2123.00.012', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Ayasha Putri Rahayu', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 12', 'Ayah 12', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(15, '12', '2123.00.013', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Azrina Rafania Alzan', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 13', 'Ayah 13', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(16, '13', '2123.00.014', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Fakhira Tsaniah Irviani', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 14', 'Ayah 14', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(17, '14', '2123.00.015', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Intan Divia Septriasa R', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 15', 'Ayah 15', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(18, '15', '2123.00.016', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'M Hafiz Choirul Rizki', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 16', 'Ayah 16', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(19, '16', '2123.00.017', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Muhammad Almauza Kawakibi', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 17', 'Ayah 17', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(20, '17', '2123.00.018', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Narumi Aulia Pinesa', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 18', 'Ayah 18', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(21, '18', '2123.00.019', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Nazeeha Sholihah', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 19', 'Ayah 19', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(22, '19', '2123.00.020', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Prabu Bintang Daimy Nuriman', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 20', 'Ayah 20', '0', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(23, '20', '2123.00.021', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Gina Salwa Salsabil', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 21', 'Ayah 21', '1', 1, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(24, '21', '2123.00.022', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Aleea Azni Fayola', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 22', 'Ayah 22', '2', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(25, '22', '2123.00.023', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Adriyan Marta Sen', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 23', 'Ayah 23', '3', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(26, '23', '2123.00.024', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Aina Shakilla Zahran', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 24', 'Ayah 24', '4', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(27, '24', '2123.00.025', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Al Fatih Mumtaz Rabbani', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 25', 'Ayah 25', '5', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(28, '25', '2123.00.026', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Alkahfi Hendrayana', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 26', 'Ayah 26', '6', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(29, '26', '2123.00.027', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Arriza Waffa Nur Muhammad', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 27', 'Ayah 27', '7', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(30, '27', '2123.00.028', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Gibran Al Fariq', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 28', 'Ayah 28', '8', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(31, '28', '2123.00.029', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Hikmah Qur\'anilah Cahaya Idil Fitroh', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 29', 'Ayah 29', '9', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(32, '29', '2123.00.030', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Intan Widuri', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 30', 'Ayah 30', '10', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(33, '30', '2123.00.031', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Mauza Moch Zain Akram', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 31', 'Ayah 31', '11', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(34, '31', '2123.00.032', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Muhammad Fathan Alfafa', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 32', 'Ayah 32', '12', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(35, '32', '2123.00.033', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Nabila Mouza Irawan', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 33', 'Ayah 33', '13', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(36, '33', '2123.00.034', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Narendra Erabbani Hartanto', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 34', 'Ayah 34', '14', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(37, '34', '2123.00.035', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Neng Syakira Nurlatifa', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 35', 'Ayah 35', '15', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(38, '35', '2123.00.036', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Rizieq Alfredo Ibrahim', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 36', 'Ayah 36', '16', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(39, '36', '2123.00.037', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Rizky Toyyib Permana', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 37', 'Ayah 37', '17', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(40, '37', '2123.00.038', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Rizqi Abdul Qodir', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 38', 'Ayah 38', '18', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(41, '38', '2123.00.039', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Robi Mardiansyah', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 39', 'Ayah 39', '19', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(42, '39', '2123.00.040', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Shofi Al Qudsiyah', 'P', '.', '1994-12-10', NULL, '', '', '', 'Ibu 40', 'Ayah 40', '20', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(43, '40', '2123.00.041', 'ba195e7419dd0b6f643fb92149b7f2b27fcd2799', 'Thalita Olivia Putri Saputra', 'L', '.', '1994-12-10', NULL, '', '', '', 'Ibu 41', 'Ayah 41', '21', 2, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(44, '41', '2123.00.042', '720a47034f164bffa3faef3de5516310f8f76bb5', 'Al Sultan Putra Mulyadi', 'L', '.', '1994-12-11', NULL, '', '', '', 'Ibu 42', 'Ayah 42', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(45, '42', '2123.00.043', 'd3bfa412adbe64e427734f132d400906107d30d7', 'Ameera Shabira Aluna Hutama', 'P', '.', '1994-12-12', NULL, '', '', '', 'Ibu 43', 'Ayah 43', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(46, '43', '2123.00.044', '0753efda080f0a575cc9a10b71f7d813ec0e0d0c', 'Azka Alghazali Ramadhan', 'L', '.', '1994-12-13', NULL, '', '', '', 'Ibu 44', 'Ayah 44', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(47, '44', '2123.00.045', 'bc7701de45c45116b207016e5eac3ef891de04b6', 'Devannya Shaqueena Habibi', 'P', '.', '1994-12-14', NULL, '', '', '', 'Ibu 45', 'Ayah 45', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(48, '45', '2123.00.046', 'a5fa63af262e16f0c9ef46abf9f105ca195561fa', 'Dwi Arsyil Maulana', 'L', '.', '1994-12-15', NULL, '', '', '', 'Ibu 46', 'Ayah 46', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(49, '46', '2123.00.047', '6ad63eaedcea2dd0cd6eb74a61735ae242c088cd', 'Gibran Rasyid Ardana', 'L', '.', '1994-12-16', NULL, '', '', '', 'Ibu 47', 'Ayah 47', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(50, '47', '2123.00.048', '4c0abffe61f1d16133ca391f665b431d5b42bd36', 'Hanna Khumaira Althafunnisa', 'P', '.', '1994-12-17', NULL, '', '', '', 'Ibu 48', 'Ayah 48', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(51, '48', '2123.00.049', 'fa07f0260c77054fe996770bdd26f1aa0ef593f5', 'Husna Humairo Asy\'syifa', 'P', '.', '1994-12-18', NULL, '', '', '', 'Ibu 49', 'Ayah 49', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(52, '49', '2123.00.050', '6879af5ea30f1fb2dfcf5e051ecc38f0fcfb6b61', 'Lian Shafwan Nabil', 'L', '.', '1994-12-19', NULL, '', '', '', 'Ibu 50', 'Ayah 50', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(53, '50', '2123.00.051', '6449a8405a1c33b8a31352572f42d3f22c13752b', 'Mahesa Berry Zahrana', 'P', '.', '1994-12-20', NULL, '', '', '', 'Ibu 51', 'Ayah 51', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(54, '51', '2123.00.052', '23b1bc6b7c36d5b96b93eba84e180170a5d5411b', 'Meisya Berry Azahra', 'L', '.', '1994-12-21', NULL, '', '', '', 'Ibu 52', 'Ayah 52', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(55, '52', '2123.00.053', 'c04dd3d2c9e5ad80bb705f76d2e5ea01f011c299', 'Muhamad Nazril Abyan Pratama', 'L', '.', '1994-12-22', NULL, '', '', '', 'Ibu 53', 'Ayah 53', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(56, '53', '2123.00.054', '380d6b2feddd2bc304037680d00b47061005870c', 'Muhammad Alfariz Atilla', 'L', '.', '1994-12-23', NULL, '', '', '', 'Ibu 54', 'Ayah 54', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(57, '54', '2123.00.055', 'c7a4554cddd369c57850ede01011155f8c64c9be', 'Muhammad Azhar Nawawi', 'L', '.', '1994-12-24', NULL, '', '', '', 'Ibu 55', 'Ayah 55', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(58, '55', '2123.00.056', '8069dc312f8a59cb7e68c1fbb399057fec6efeaf', 'Muhammad Syakur Salman Mualid', 'L', '.', '1994-12-25', NULL, '', '', '', 'Ibu 56', 'Ayah 56', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(59, '56', '2123.00.057', 'f28d70be5a437d2cfbae15b42c210b2134f77707', 'Nafisha Khairu Nida', 'P', '.', '1994-12-26', NULL, '', '', '', 'Ibu 57', 'Ayah 57', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(60, '57', '2123.00.058', '1bd18416945844ccd2fcad2161d4cf6170f32e5b', 'Razieq Azdika', 'L', '.', '1994-12-27', NULL, '', '', '', 'Ibu 58', 'Ayah 58', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(61, '58', '2123.00.059', 'fb81418791c889f2d650875bc7293fb99cd2915b', 'Saila Novandra Putri Suryana', 'P', '.', '1994-12-28', NULL, '', '', '', 'Ibu 59', 'Ayah 59', '0', 3, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(62, '59', '2123.00.060', 'a389afbb1e5f41736bda0ebd0afe1598cc04f2f1', 'Abidzar Gibran Hibatillah Husen', 'L', '', '1994-12-29', NULL, '', '', '', 'Ibu 60', 'Ayah 60', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(63, '60', '2123.00.061', 'b5eeeeb07a021a1c18ad038628824544810b5dd6', 'Adzqya Mumtaza Gerar', 'P', '', '1994-12-30', NULL, '', '', '', 'Ibu 61', 'Ayah 61', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(64, '61', '2123.00.062', 'bb6e1b0b9d23b69f8632365b9b27d63b4c47f14a', 'Afdillah Nur Falaq', 'L', '', '1994-12-31', NULL, '', '', '', 'Ibu 62', 'Ayah 62', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(65, '62', '2123.00.063', '25646d6f594b3b9a03c162f4de463925c8088409', 'Afira Alimah Alawiyah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 63', 'Ayah 63', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(66, '63', '2123.00.064', '25646d6f594b3b9a03c162f4de463925c8088409', 'Afkar Adi Pratama', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 64', 'Ayah 64', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(67, '64', '2123.00.065', '25646d6f594b3b9a03c162f4de463925c8088409', 'Asep Saepul Wizard', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 65', 'Ayah 65', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(68, '65', '2123.00.066', '25646d6f594b3b9a03c162f4de463925c8088409', 'Daffa Muhammad Azki', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 66', 'Ayah 66', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(69, '66', '2123.00.067', '25646d6f594b3b9a03c162f4de463925c8088409', 'Dzaky Muazzam Ash-Shidiq', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 67', 'Ayah 67', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(70, '67', '2123.00.068', '25646d6f594b3b9a03c162f4de463925c8088409', 'Fitria Ramadhan', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 68', 'Ayah 68', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(71, '68', '2123.00.069', '25646d6f594b3b9a03c162f4de463925c8088409', 'Hafsa Nadira Alkhumaira', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 69', 'Ayah 69', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(72, '69', '2123.00.070', '25646d6f594b3b9a03c162f4de463925c8088409', 'Jean Princes', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 70', 'Ayah 70', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(73, '70', '2123.00.071', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Fakhrie Fathurrahman', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 71', 'Ayah 71', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(74, '71', '2123.00.072', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Sabar Shidqi Mughni', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 72', 'Ayah 72', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(75, '72', '2123.00.073', '25646d6f594b3b9a03c162f4de463925c8088409', 'Nadzira Tsamrotul Qalbi', '', '', '0000-00-00', NULL, '', '', '', 'Ibu 73', 'Ayah 73', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(76, '73', '2123.00.074', '25646d6f594b3b9a03c162f4de463925c8088409', 'Naura Deka Latisha', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 74', 'Ayah 74', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(77, '74', '2123.00.075', '25646d6f594b3b9a03c162f4de463925c8088409', 'Naura Zahwa Saputri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 75', 'Ayah 75', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(78, '75', '2123.00.076', '25646d6f594b3b9a03c162f4de463925c8088409', 'Nazifa Yumna Alfiah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 76', 'Ayah 76', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(79, '76', '2123.00.077', '25646d6f594b3b9a03c162f4de463925c8088409', 'Raisya Dwi Putri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 77', 'Ayah 77', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(80, '77', '2123.00.078', '25646d6f594b3b9a03c162f4de463925c8088409', 'Raka Abdul Aziz', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 78', 'Ayah 78', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(81, '78', '2123.00.079', '25646d6f594b3b9a03c162f4de463925c8088409', 'Ramada Pangestu', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 79', 'Ayah 79', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(82, '79', '2123.00.080', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rima Muna Azka Miharja', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 80', 'Ayah 80', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(83, '80', '2123.00.081', '25646d6f594b3b9a03c162f4de463925c8088409', 'Sofyan Fahri', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 81', 'Ayah 81', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(84, '81', '2123.00.082', '25646d6f594b3b9a03c162f4de463925c8088409', 'Syahdan Rizki Fadilah', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 82', 'Ayah 82', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(85, '82', '2123.00.083', '25646d6f594b3b9a03c162f4de463925c8088409', 'Syaheeryani Putri Zahira', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 83', 'Ayah 83', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(86, '83', '2123.00.084', '25646d6f594b3b9a03c162f4de463925c8088409', 'Wafa Zakiah Nisa Ramadani', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 84', 'Ayah 84', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(87, '84', '2123.00.085', '25646d6f594b3b9a03c162f4de463925c8088409', 'Zahra Izzaty Salamy', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 85', 'Ayah 85', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(88, '85', '2123.00.086', '25646d6f594b3b9a03c162f4de463925c8088409', 'Nesya Pramudita Hendriani', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 86', 'Ayah 86', '0', 4, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(89, '86', '2123.00.087', '25646d6f594b3b9a03c162f4de463925c8088409', 'Abdilah Syahir Putra', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 87', 'Ayah 87', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(90, '87', '2123.00.088', '25646d6f594b3b9a03c162f4de463925c8088409', 'Abdullah Khairul Azzam', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 88', 'Ayah 88', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(91, '88', '2123.00.089', '25646d6f594b3b9a03c162f4de463925c8088409', 'Adzkia Hilya Nafisah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 89', 'Ayah 89', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(92, '89', '2123.00.090', '25646d6f594b3b9a03c162f4de463925c8088409', 'Al Hafidz Shiddiq Amrullah', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 90', 'Ayah 90', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(93, '90', '2123.00.091', '25646d6f594b3b9a03c162f4de463925c8088409', 'Alifa Nur Rohimah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 91', 'Ayah 91', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(94, '91', '2123.00.092', '25646d6f594b3b9a03c162f4de463925c8088409', 'Anindya Nathania Mulyana', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 92', 'Ayah 92', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(95, '92', '2123.00.093', '25646d6f594b3b9a03c162f4de463925c8088409', 'Delisha Salsabila Ismail', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 93', 'Ayah 93', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(96, '93', '2123.00.094', '25646d6f594b3b9a03c162f4de463925c8088409', 'Dixen Rahim Firdaus', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 94', 'Ayah 94', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(97, '94', '2123.00.095', '25646d6f594b3b9a03c162f4de463925c8088409', 'Fahmi Aditya Pratama', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 95', 'Ayah 95', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(98, '95', '2123.00.096', '25646d6f594b3b9a03c162f4de463925c8088409', 'Faranisya D\'Queendra', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 96', 'Ayah 96', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(99, '96', '2123.00.097', '25646d6f594b3b9a03c162f4de463925c8088409', 'Khansya Aulia Putri Janwar', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 97', 'Ayah 97', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(100, '97', '2123.00.098', '25646d6f594b3b9a03c162f4de463925c8088409', 'Moh Asyraf Haidar As-Sarbini', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 98', 'Ayah 98', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(101, '98', '2123.00.099', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Rehan Saputra', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 99', 'Ayah 99', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(102, '99', '2123.00.100', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhmmad Shihab Al-Gibran', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 100', 'Ayah 100', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(103, '100', '2123.00.101', '25646d6f594b3b9a03c162f4de463925c8088409', 'Nabil Ali Rabbani', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 101', 'Ayah 101', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(104, '101', '2123.00.102', '25646d6f594b3b9a03c162f4de463925c8088409', 'Nadzira Iskandar Putri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 102', 'Ayah 102', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(105, '102', '2123.00.103', '25646d6f594b3b9a03c162f4de463925c8088409', 'Qanita Nailah Aminah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 103', 'Ayah 103', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(106, '103', '2123.00.104', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rajwa Aidan Syahmi', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 104', 'Ayah 104', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(107, '104', '2123.00.105', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rasya Muhammad Athaya', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 105', 'Ayah 105', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(108, '105', '2123.00.106', '25646d6f594b3b9a03c162f4de463925c8088409', 'Sakira Thalita Putri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 106', 'Ayah 106', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(109, '106', '2123.00.107', '25646d6f594b3b9a03c162f4de463925c8088409', 'Salsabila Nadifa', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 107', 'Ayah 107', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(110, '107', '2123.00.108', '25646d6f594b3b9a03c162f4de463925c8088409', 'Shakila Shohwatul Hobibal Qolbi', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 108', 'Ayah 108', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(111, '108', '2123.00.109', '25646d6f594b3b9a03c162f4de463925c8088409', 'Syauqi Irham Faozan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 109', 'Ayah 109', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(112, '109', '2123.00.110', '25646d6f594b3b9a03c162f4de463925c8088409', 'Tsabit Nur Maulana', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 110', 'Ayah 110', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(113, '110', '2123.00.111', '25646d6f594b3b9a03c162f4de463925c8088409', 'Zavier Firdaus Mubaroq', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 111', 'Ayah 111', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(114, '111', '2123.00.112', '25646d6f594b3b9a03c162f4de463925c8088409', 'Zidan Zianska Ramdani', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 112', 'Ayah 112', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(115, '112', '2123.00.113', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Rasyid Ulum\'mudin', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 113', 'Ayah 113', '0', 5, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(116, '113', '2123.00.114', '25646d6f594b3b9a03c162f4de463925c8088409', 'Adzkia Faiza Emery', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 114', 'Ayah 114', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(117, '114', '2123.00.115', '25646d6f594b3b9a03c162f4de463925c8088409', 'Alexandria Kaila Akram', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 115', 'Ayah 115', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(118, '115', '2123.00.116', '25646d6f594b3b9a03c162f4de463925c8088409', 'Aliqa Urwatun Nafisah Alfiandri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 116', 'Ayah 116', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(119, '116', '2123.00.117', '25646d6f594b3b9a03c162f4de463925c8088409', 'Athar Septian', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 117', 'Ayah 117', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(120, '117', '2123.00.118', '25646d6f594b3b9a03c162f4de463925c8088409', 'Azalea Makailah Putri Andira', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 118', 'Ayah 118', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(121, '118', '2123.00.119', '25646d6f594b3b9a03c162f4de463925c8088409', 'Challysta Gavaputri Suhendrik', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 119', 'Ayah 119', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(122, '119', '2123.00.120', '25646d6f594b3b9a03c162f4de463925c8088409', 'Edelweis Harumi Ufairah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 120', 'Ayah 120', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(123, '120', '2123.00.121', '25646d6f594b3b9a03c162f4de463925c8088409', 'Elinda Nur Ain', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 121', 'Ayah 121', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(124, '121', '2123.00.122', '25646d6f594b3b9a03c162f4de463925c8088409', 'Gieva Excie Afiday Sugianto', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 122', 'Ayah 122', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(125, '122', '2123.00.123', '25646d6f594b3b9a03c162f4de463925c8088409', 'M. Khalifi Putra Setiawan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 123', 'Ayah 123', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(126, '123', '2123.00.124', '25646d6f594b3b9a03c162f4de463925c8088409', 'Maira Refanda Alawyah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 124', 'Ayah 124', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(127, '124', '2123.00.125', '25646d6f594b3b9a03c162f4de463925c8088409', 'Mikha Arkhania Azzahra', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 125', 'Ayah 125', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(128, '125', '2123.00.126', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhamad Bagas Slamet', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 126', 'Ayah 126', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(129, '126', '2123.00.127', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhamad Julio Vanchour Sidik', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 127', 'Ayah 127', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(130, '127', '2123.00.128', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Mahesdeif', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 128', 'Ayah 128', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(131, '128', '2123.00.129', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Ridho Januar', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 129', 'Ayah 129', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(132, '129', '2123.00.130', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Sabiqul Khoir', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 130', 'Ayah 130', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(133, '130', '2123.00.131', '25646d6f594b3b9a03c162f4de463925c8088409', 'Nadine Navalia Hendri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 131', 'Ayah 131', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(134, '131', '2123.00.132', '25646d6f594b3b9a03c162f4de463925c8088409', 'Pradipta Khenzie Alkhalifi', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 132', 'Ayah 132', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(135, '132', '2123.00.133', '25646d6f594b3b9a03c162f4de463925c8088409', 'Razqa Alfarizi Amin', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 133', 'Ayah 133', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(136, '133', '2123.00.134', '25646d6f594b3b9a03c162f4de463925c8088409', 'Sastra Wahyu Hatala', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 134', 'Ayah 134', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(137, '134', '2123.00.135', '25646d6f594b3b9a03c162f4de463925c8088409', 'Sauqi Rakana Rahman', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 135', 'Ayah 135', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(138, '135', '2123.00.136', '25646d6f594b3b9a03c162f4de463925c8088409', 'Syakilla Al Mahyra', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 136', 'Ayah 136', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(139, '136', '2123.00.137', '25646d6f594b3b9a03c162f4de463925c8088409', 'Zidane Arjuna Munawar', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 137', 'Ayah 137', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(140, '137', '2123.00.138', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Rasya Ardani', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 138', 'Ayah 138', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(141, '138', '2123.00.139', '25646d6f594b3b9a03c162f4de463925c8088409', 'Zian Aksal Budi Raharjo', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 139', 'Ayah 139', '0', 6, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(142, '139', '2123.00.140', '25646d6f594b3b9a03c162f4de463925c8088409', 'Ahmad Aufa Maulana', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 140', 'Ayah 140', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(143, '140', '2123.00.141', '25646d6f594b3b9a03c162f4de463925c8088409', 'Anisa Najwa Wijaya', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 141', 'Ayah 141', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(144, '141', '2123.00.142', '25646d6f594b3b9a03c162f4de463925c8088409', 'Aryanti Dewi Pertiwi', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 142', 'Ayah 142', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(145, '142', '2123.00.143', '25646d6f594b3b9a03c162f4de463925c8088409', 'Balqis El Haura Ahmad', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 143', 'Ayah 143', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(146, '143', '2123.00.144', '25646d6f594b3b9a03c162f4de463925c8088409', 'Cahaya Mahardika Kurniawan', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 144', 'Ayah 144', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(147, '144', '2123.00.145', '25646d6f594b3b9a03c162f4de463925c8088409', 'Firza Hasna Syadira', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 145', 'Ayah 145', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(148, '145', '2123.00.146', '25646d6f594b3b9a03c162f4de463925c8088409', 'Gevin Naufal Bravian', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 146', 'Ayah 146', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(149, '146', '2123.00.147', '25646d6f594b3b9a03c162f4de463925c8088409', 'Ghaisan Dzikri Alkalifi', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 147', 'Ayah 147', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(150, '147', '2123.00.148', '25646d6f594b3b9a03c162f4de463925c8088409', 'Kindia Augi', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 148', 'Ayah 148', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(151, '148', '2123.00.149', '25646d6f594b3b9a03c162f4de463925c8088409', 'M Rasyid Shidiq Akbar', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 149', 'Ayah 149', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(152, '149', '2123.00.150', '25646d6f594b3b9a03c162f4de463925c8088409', 'Moch. Wahdan S.R', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 150', 'Ayah 150', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(153, '150', '2123.00.151', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhamad Haikal Ramadhan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 151', 'Ayah 151', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(154, '151', '2123.00.152', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhamad Rafa Aprilio', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 152', 'Ayah 152', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(155, '152', '2123.00.153', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Adzkan Rasyid Ramadhan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 153', 'Ayah 153', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(156, '153', '2123.00.154', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Arkhan Ramadhan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 154', 'Ayah 154', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(157, '154', '2123.00.155', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Azmy', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 155', 'Ayah 155', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(158, '155', '2123.00.156', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Irvan Arsyad', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 156', 'Ayah 156', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(159, '156', '2123.00.157', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Nur Faiq', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 157', 'Ayah 157', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(160, '157', '2123.00.158', '25646d6f594b3b9a03c162f4de463925c8088409', 'Nadia Hasna Adawiyah Sidik', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 158', 'Ayah 158', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(161, '158', '2123.00.159', '25646d6f594b3b9a03c162f4de463925c8088409', 'Qirania Maheswari', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 159', 'Ayah 159', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(162, '159', '2123.00.160', '25646d6f594b3b9a03c162f4de463925c8088409', 'Riska Dwi Putri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 160', 'Ayah 160', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(163, '160', '2123.00.161', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rully Dwi Sarip Alfarizi', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 161', 'Ayah 161', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(164, '161', '2123.00.162', '25646d6f594b3b9a03c162f4de463925c8088409', 'Sabrina Zakiyah Amaliah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 162', 'Ayah 162', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(165, '162', '2123.00.163', '25646d6f594b3b9a03c162f4de463925c8088409', 'Shaveera Alesha Azzahra', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 163', 'Ayah 163', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(166, '163', '2123.00.164', '25646d6f594b3b9a03c162f4de463925c8088409', 'Siti Zahira Syarafana', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 164', 'Ayah 164', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(167, '164', '2123.00.165', '25646d6f594b3b9a03c162f4de463925c8088409', 'Zipara Eliana Putri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 165', 'Ayah 165', '0', 7, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(168, '165', '2123.00.166', '25646d6f594b3b9a03c162f4de463925c8088409', 'Adzkia Hanifah Ilyas', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 166', 'Ayah 166', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(169, '166', '2123.00.167', '25646d6f594b3b9a03c162f4de463925c8088409', 'Adiba Bari\'atul Muhfimah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 167', 'Ayah 167', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(170, '167', '2123.00.168', '25646d6f594b3b9a03c162f4de463925c8088409', 'Ahmad Afkar Nawawi', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 168', 'Ayah 168', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(171, '168', '2123.00.169', '25646d6f594b3b9a03c162f4de463925c8088409', 'Alka Nayendra Pramana', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 169', 'Ayah 169', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(172, '169', '2123.00.170', '25646d6f594b3b9a03c162f4de463925c8088409', 'Arsya Santun Kinanti', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 170', 'Ayah 170', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(173, '170', '2123.00.171', '25646d6f594b3b9a03c162f4de463925c8088409', 'Azmi Alfaris Maulana', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 171', 'Ayah 171', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(174, '171', '2123.00.172', '25646d6f594b3b9a03c162f4de463925c8088409', 'Elfira Naura Salam', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 172', 'Ayah 172', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(175, '172', '2123.00.173', '25646d6f594b3b9a03c162f4de463925c8088409', 'Gibran Muhamad Ardhan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 173', 'Ayah 173', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(176, '173', '2123.00.174', '25646d6f594b3b9a03c162f4de463925c8088409', 'Hanifah Rahmania', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 174', 'Ayah 174', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(177, '174', '2123.00.175', '25646d6f594b3b9a03c162f4de463925c8088409', 'Helna Nur Fitriani', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 175', 'Ayah 175', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(178, '175', '2123.00.176', '25646d6f594b3b9a03c162f4de463925c8088409', 'Indri Tresna Ayu', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 176', 'Ayah 176', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(179, '176', '2123.00.177', '25646d6f594b3b9a03c162f4de463925c8088409', 'Jihan Makaila Fakhira', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 177', 'Ayah 177', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(180, '177', '2123.00.178', '25646d6f594b3b9a03c162f4de463925c8088409', 'Khanza Azka Aqilla', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 178', 'Ayah 178', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(181, '178', '2123.00.179', '25646d6f594b3b9a03c162f4de463925c8088409', 'Khenzie Aldric Pratama', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 179', 'Ayah 179', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(182, '179', '2123.00.180', '25646d6f594b3b9a03c162f4de463925c8088409', 'Moch Daniel Lutfi Abidin', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 180', 'Ayah 180', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(183, '180', '2123.00.181', '25646d6f594b3b9a03c162f4de463925c8088409', 'Mochamad Azka Farell Mudzaki', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 181', 'Ayah 181', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(184, '181', '2123.00.182', '25646d6f594b3b9a03c162f4de463925c8088409', 'Dzikry Al Baihaqi', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 182', 'Ayah 182', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(185, '182', '2123.00.183', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhamad Belam Udarojat', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 183', 'Ayah 183', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(186, '183', '2123.00.184', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhamad Luthfi Raihan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 184', 'Ayah 184', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(187, '184', '2123.00.185', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Ghani Haidar', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 185', 'Ayah 185', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(188, '185', '2123.00.186', '25646d6f594b3b9a03c162f4de463925c8088409', 'Naufal M. Alvaro', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 186', 'Ayah 186', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(189, '186', '2123.00.187', '25646d6f594b3b9a03c162f4de463925c8088409', 'Neysa Majidah Latif', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 187', 'Ayah 187', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(190, '187', '2123.00.188', '25646d6f594b3b9a03c162f4de463925c8088409', 'Salma Naura Fredella', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 188', 'Ayah 188', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(191, '188', '2123.00.189', '25646d6f594b3b9a03c162f4de463925c8088409', 'Shabil Hudan Solihansyah', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 189', 'Ayah 189', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(192, '189', '2123.00.190', '25646d6f594b3b9a03c162f4de463925c8088409', 'Adiska Rarasati', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 190', 'Ayah 190', '0', 8, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(193, '190', '2123.00.191', '25646d6f594b3b9a03c162f4de463925c8088409', 'Adhia Raffa Fatina', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 191', 'Ayah 191', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(194, '191', '2123.00.192', '25646d6f594b3b9a03c162f4de463925c8088409', 'Anisa Destiani', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 192', 'Ayah 192', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(195, '192', '2123.00.193', '25646d6f594b3b9a03c162f4de463925c8088409', 'Aqeela Farzana Queen', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 193', 'Ayah 193', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(196, '193', '2123.00.194', '25646d6f594b3b9a03c162f4de463925c8088409', 'Bilal Mochamad Fathir', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 194', 'Ayah 194', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(197, '194', '2123.00.195', '25646d6f594b3b9a03c162f4de463925c8088409', 'Darin Maulida', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 195', 'Ayah 195', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(198, '195', '2123.00.196', '25646d6f594b3b9a03c162f4de463925c8088409', 'Fauzyan Permana Saputra', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 196', 'Ayah 196', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(199, '196', '2123.00.197', '25646d6f594b3b9a03c162f4de463925c8088409', 'Fayyadh Zulfadhli Ihsan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 197', 'Ayah 197', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(200, '197', '2123.00.198', '25646d6f594b3b9a03c162f4de463925c8088409', 'M. Ibas Algifari', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 198', 'Ayah 198', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(201, '198', '2123.00.199', '25646d6f594b3b9a03c162f4de463925c8088409', 'M. Raffa Azka Putra', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 199', 'Ayah 199', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(202, '199', '2123.00.200', '25646d6f594b3b9a03c162f4de463925c8088409', 'Maisyara Sauqia Rachman', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 200', 'Ayah 200', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(203, '200', '2123.00.201', '25646d6f594b3b9a03c162f4de463925c8088409', 'Mega Wahyuni', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 201', 'Ayah 201', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(204, '201', '2123.00.202', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Alfatih Musadad', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 202', 'Ayah 202', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(205, '202', '2123.00.203', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Alvin Ibrahim', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 203', 'Ayah 203', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(206, '203', '2123.00.204', '25646d6f594b3b9a03c162f4de463925c8088409', 'Nesya Aulia Putri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 204', 'Ayah 204', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(207, '204', '2123.00.205', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rafa Faiza', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 205', 'Ayah 205', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(208, '205', '2123.00.206', '25646d6f594b3b9a03c162f4de463925c8088409', 'Raisya Qaila Azzahra', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 206', 'Ayah 206', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(209, '206', '2123.00.207', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rendra Zihadnudin', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 207', 'Ayah 207', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(210, '207', '2123.00.208', '25646d6f594b3b9a03c162f4de463925c8088409', 'Sakila Amalia', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 208', 'Ayah 208', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(211, '208', '2123.00.209', '25646d6f594b3b9a03c162f4de463925c8088409', 'Salman Haerul Umam', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 209', 'Ayah 209', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(212, '209', '2123.00.210', '25646d6f594b3b9a03c162f4de463925c8088409', 'Sultan Maulid Muhamad Noer', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 210', 'Ayah 210', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(213, '210', '2123.00.211', '25646d6f594b3b9a03c162f4de463925c8088409', 'Syamil Sya\'bani', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 211', 'Ayah 211', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(214, '211', '2123.00.212', '25646d6f594b3b9a03c162f4de463925c8088409', 'Syehan Aji Arifin', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 212', 'Ayah 212', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(215, '212', '2123.00.213', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rama Septian Hermansyah', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 213', 'Ayah 213', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(216, '213', '2123.00.214', '25646d6f594b3b9a03c162f4de463925c8088409', 'Imam Al-Qusyairi', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 214', 'Ayah 214', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(217, '214', '2123.00.215', '25646d6f594b3b9a03c162f4de463925c8088409', 'Mochmad Nabhan Al Gufron', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 215', 'Ayah 215', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(218, '215', '2123.00.216', '25646d6f594b3b9a03c162f4de463925c8088409', 'M Rasyid Shidiq Akbar', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 216', 'Ayah 216', '0', 9, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(219, '216', '2123.00.217', '25646d6f594b3b9a03c162f4de463925c8088409', 'Altyo Berry Pratama', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 217', 'Ayah 217', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(220, '217', '2123.00.218', '25646d6f594b3b9a03c162f4de463925c8088409', 'Alya Widia', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 218', 'Ayah 218', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(221, '218', '2123.00.219', '25646d6f594b3b9a03c162f4de463925c8088409', 'Daffa Al Tirta', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 219', 'Ayah 219', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(222, '219', '2123.00.220', '25646d6f594b3b9a03c162f4de463925c8088409', 'Dimas Cahaya Herlana', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 220', 'Ayah 220', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(223, '220', '2123.00.221', '25646d6f594b3b9a03c162f4de463925c8088409', 'Gilang Faturohman', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 221', 'Ayah 221', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(224, '221', '2123.00.222', '25646d6f594b3b9a03c162f4de463925c8088409', 'Khanaya Tabitha Janwar', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 222', 'Ayah 222', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(225, '222', '2123.00.223', '25646d6f594b3b9a03c162f4de463925c8088409', 'M Robby', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 223', 'Ayah 223', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(226, '223', '2123.00.224', '25646d6f594b3b9a03c162f4de463925c8088409', 'Marissa Hafizatul Hafsa', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 224', 'Ayah 224', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35');
INSERT INTO `student` (`student_id`, `student_nis`, `student_nisn`, `student_password`, `student_full_name`, `student_gender`, `student_born_place`, `student_born_date`, `student_img`, `student_phone`, `student_hobby`, `student_address`, `student_name_of_mother`, `student_name_of_father`, `student_parent_phone`, `class_class_id`, `majors_majors_id`, `student_status`, `student_input_date`, `student_last_update`) VALUES
(227, '224', '2123.00.225', '25646d6f594b3b9a03c162f4de463925c8088409', 'Mikaasya Sudjanaputri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 225', 'Ayah 225', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(228, '225', '2123.00.226', '25646d6f594b3b9a03c162f4de463925c8088409', 'Mochammad Dinan Subhanasyah', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 226', 'Ayah 226', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(229, '226', '2123.00.227', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhamad Baihaqi Al-Khaizan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 227', 'Ayah 227', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(230, '227', '2123.00.228', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Rafif Arkan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 228', 'Ayah 228', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(231, '228', '2123.00.229', '25646d6f594b3b9a03c162f4de463925c8088409', 'Raisha Laila Nur Qodariyah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 229', 'Ayah 229', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(232, '229', '2123.00.230', '25646d6f594b3b9a03c162f4de463925c8088409', 'Ratu Ainun', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 230', 'Ayah 230', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(233, '230', '2123.00.231', '25646d6f594b3b9a03c162f4de463925c8088409', 'Yudhistira Al Yubbia', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 231', 'Ayah 231', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(234, '231', '2123.00.232', '25646d6f594b3b9a03c162f4de463925c8088409', 'Zen Abraham Adnan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 232', 'Ayah 232', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(235, '232', '2123.00.233', '25646d6f594b3b9a03c162f4de463925c8088409', 'Ziran Khoiril Hazwan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 233', 'Ayah 233', '0', 10, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(236, '233', '2123.00.234', '25646d6f594b3b9a03c162f4de463925c8088409', 'Azzizah Cahaya Qonita', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 234', 'Ayah 234', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(237, '234', '2123.00.235', '25646d6f594b3b9a03c162f4de463925c8088409', 'Faisal Lukmanulhakim Asshari', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 235', 'Ayah 235', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(238, '235', '2123.00.236', '25646d6f594b3b9a03c162f4de463925c8088409', 'Wilyan Jaya Pangestu', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 236', 'Ayah 236', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(239, '236', '2123.00.237', '25646d6f594b3b9a03c162f4de463925c8088409', 'Haikal Putra Ikhsan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 237', 'Ayah 237', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(240, '237', '2123.00.238', '25646d6f594b3b9a03c162f4de463925c8088409', 'Inaya Astri Lathifa', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 238', 'Ayah 238', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(241, '238', '2123.00.239', '25646d6f594b3b9a03c162f4de463925c8088409', 'Khanaya Kireina Putri', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 239', 'Ayah 239', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(242, '239', '2123.00.240', '25646d6f594b3b9a03c162f4de463925c8088409', 'Kinnara Amadita Gunawan', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 240', 'Ayah 240', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(243, '240', '2123.00.241', '25646d6f594b3b9a03c162f4de463925c8088409', 'Marwah Nur Oktavia', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 241', 'Ayah 241', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(244, '241', '2123.00.242', '25646d6f594b3b9a03c162f4de463925c8088409', 'Mikiinka Sudjanaputri', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 242', 'Ayah 242', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(245, '242', '2123.00.243', '25646d6f594b3b9a03c162f4de463925c8088409', 'Mj. Azhar Nuriman Ss', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 243', 'Ayah 243', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(246, '243', '2123.00.244', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhamad Maulana', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 244', 'Ayah 244', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(247, '244', '2123.00.245', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Hilman Alparisi', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 245', 'Ayah 245', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(248, '245', '2123.00.246', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Izzan Adzaki', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 246', 'Ayah 246', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(249, '246', '2123.00.247', '25646d6f594b3b9a03c162f4de463925c8088409', 'Nada Fazria Salsabila', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 247', 'Ayah 247', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(250, '247', '2123.00.248', '25646d6f594b3b9a03c162f4de463925c8088409', 'Naufal M. Thomi', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 248', 'Ayah 248', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(251, '248', '2123.00.249', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rahma Aqeela Kuraesin', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 249', 'Ayah 249', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(252, '249', '2123.00.250', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rasya Firas Argana', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 250', 'Ayah 250', '0', 11, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(253, '250', '2122.03.075', '25646d6f594b3b9a03c162f4de463925c8088409', 'Achmad Zakhwan Elfath', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 251', 'Ayah 251', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(254, '251', '2223.04.100', '25646d6f594b3b9a03c162f4de463925c8088409', 'Aqila Layyanah Zahirah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 252', 'Ayah 252', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(255, '252', '2122.03.076', '25646d6f594b3b9a03c162f4de463925c8088409', 'Ilham Maulana', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 253', 'Ayah 253', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(256, '253', '2223.04.101', '25646d6f594b3b9a03c162f4de463925c8088409', 'Irsyad Fawwaaz Ibrahim', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 254', 'Ayah 254', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(257, '254', '2122.03.077', '25646d6f594b3b9a03c162f4de463925c8088409', 'M. Calief Aqilla Saleh', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 255', 'Ayah 255', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(258, '255', '2122.03.078', '25646d6f594b3b9a03c162f4de463925c8088409', 'Mochamad Prabu Dachlan Almadinach', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 256', 'Ayah 256', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(259, '256', '2122.03.079', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Haedar Nashir', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 257', 'Ayah 257', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(260, '257', '2122.03.080', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Irsyad Ali Yusuf', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 258', 'Ayah 258', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(261, '258', '2122.03.081', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Yusya Fawaid Murtiezha', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 259', 'Ayah 259', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(262, '259', '2122.03.082', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Zaheer Al-Faheem Noerzaman', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 260', 'Ayah 260', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(263, '260', '2122.03.083', '25646d6f594b3b9a03c162f4de463925c8088409', 'Nurul Assipa Sintya', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 261', 'Ayah 261', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(264, '261', '2122.03.084', '25646d6f594b3b9a03c162f4de463925c8088409', 'Qaila Shidqia Utamima', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 262', 'Ayah 262', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(265, '262', '2122.03.085', '25646d6f594b3b9a03c162f4de463925c8088409', 'Qila Safira', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 263', 'Ayah 263', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(266, '263', '2223.04.102', '25646d6f594b3b9a03c162f4de463925c8088409', 'Reva Adella', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 264', 'Ayah 264', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(267, '264', '2223.04.103', '25646d6f594b3b9a03c162f4de463925c8088409', 'Resky Aditya Firmansyah', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 265', 'Ayah 265', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(268, '265', '2122.03.086', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rifda Risyadan Syamsudin', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 266', 'Ayah 266', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(269, '266', '2223.04.104', '25646d6f594b3b9a03c162f4de463925c8088409', 'Syahla Khairy Nurlatifah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 267', 'Ayah 267', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(270, '267', '2122.03.087', '25646d6f594b3b9a03c162f4de463925c8088409', 'Tanaya Widjaja Asasmita', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 268', 'Ayah 268', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(271, '268', '2122.03.088', '25646d6f594b3b9a03c162f4de463925c8088409', 'Tubagus Jidan', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 269', 'Ayah 269', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(272, '269', '2122.03.089', '25646d6f594b3b9a03c162f4de463925c8088409', 'Zhikran Putra Munawar', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 270', 'Ayah 270', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(273, '270', '2122.00.090', '25646d6f594b3b9a03c162f4de463925c8088409', 'Saffanah Alifa Irviani', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 271', 'Ayah 271', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(274, '271', '2122.00.091', '25646d6f594b3b9a03c162f4de463925c8088409', 'Wardah Mufidah Kamilah', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 272', 'Ayah 272', '0', 12, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(275, '272', '2122.04.100', '25646d6f594b3b9a03c162f4de463925c8088409', 'Agnia Azka Nur Ramadani', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 273', 'Ayah 273', '0', 13, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(276, '273', '2122.04.090', '25646d6f594b3b9a03c162f4de463925c8088409', 'Almahesya Ahmad', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 274', 'Ayah 274', '0', 13, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(277, '274', '2122.04.091', '25646d6f594b3b9a03c162f4de463925c8088409', 'Aryanti Putri Nurbaiti', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 275', 'Ayah 275', '0', 13, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(278, '275', '2122.04.092', '25646d6f594b3b9a03c162f4de463925c8088409', 'Fhilza Malikha Ramadhani', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 276', 'Ayah 276', '0', 13, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(279, '276', '2122.04.093', '25646d6f594b3b9a03c162f4de463925c8088409', 'Giyan Maulana', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 277', 'Ayah 277', '0', 13, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(280, '277', '2122.04.106', '25646d6f594b3b9a03c162f4de463925c8088409', 'Helmalia Alzahira', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 278', 'Ayah 278', '0', 13, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(281, '278', '2122.04.094', '25646d6f594b3b9a03c162f4de463925c8088409', 'Kirana Reskiya Maulida', 'P', '', '0000-00-00', NULL, '', '', '', 'Ibu 279', 'Ayah 279', '0', 13, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(282, '279', '2122.04.095', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Bivan Syauqie', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 280', 'Ayah 280', '0', 13, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(283, '280', '2122.04.096', '25646d6f594b3b9a03c162f4de463925c8088409', 'Muhammad Zamzam Nurrohman', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 281', 'Ayah 281', '0', 13, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35'),
(284, '281', '2122.04.097', '25646d6f594b3b9a03c162f4de463925c8088409', 'Rasyid Shalahuddin Al\'Afgahani', 'L', '', '0000-00-00', NULL, '', '', '', 'Ibu 282', 'Ayah 282', '0', 13, 1, 1, '2024-06-07 20:24:35', '2024-06-07 20:24:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `user_password` varchar(45) DEFAULT NULL,
  `user_full_name` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) DEFAULT NULL,
  `user_description` text DEFAULT NULL,
  `user_role_role_id` int(11) DEFAULT NULL,
  `user_is_deleted` tinyint(1) DEFAULT 0,
  `user_input_date` timestamp NULL DEFAULT NULL,
  `user_last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_email`, `user_password`, `user_full_name`, `user_image`, `user_description`, `user_role_role_id`, `user_is_deleted`, `user_input_date`, `user_last_update`) VALUES
(1, 'admin@admin.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', NULL, 'Administrator', 1, 0, '2018-01-16 03:19:33', '2018-01-16 03:19:44'),
(3, 'admin123@gmail.com', '7af2d10b73ab7cd8f603937f7697cb5fe432c7ff', 'Ops', 'Ops1.png', 'Operator', 2, 0, '2019-09-20 23:11:33', '2024-07-08 04:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`role_id`, `role_name`) VALUES
(1, 'SUPERUSER'),
(2, 'USER');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bebas`
--
ALTER TABLE `bebas`
  ADD PRIMARY KEY (`bebas_id`),
  ADD KEY `fk_bebas_payment1_idx` (`payment_payment_id`),
  ADD KEY `fk_bebas_student1_idx` (`student_student_id`);

--
-- Indexes for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  ADD PRIMARY KEY (`bebas_pay_id`),
  ADD KEY `fk_bebas_pay_bebas1_idx` (`bebas_bebas_id`),
  ADD KEY `fk_bebas_pay_users1_idx` (`user_user_id`);

--
-- Indexes for table `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`bulan_id`),
  ADD KEY `fk_bulan_payment1_idx` (`payment_payment_id`),
  ADD KEY `fk_bulan_month1_idx` (`month_month_id`),
  ADD KEY `fk_bulan_student1_idx` (`student_student_id`),
  ADD KEY `fk_bulan_users1_idx` (`user_user_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `debit`
--
ALTER TABLE `debit`
  ADD PRIMARY KEY (`debit_id`),
  ADD KEY `fk_jurnal_debit_users1_idx` (`user_user_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`information_id`),
  ADD KEY `fk_information_users1_idx` (`user_user_id`);

--
-- Indexes for table `kredit`
--
ALTER TABLE `kredit`
  ADD PRIMARY KEY (`kredit_id`),
  ADD KEY `fk_jurnal_kredit_users1_idx` (`user_user_id`);

--
-- Indexes for table `letter`
--
ALTER TABLE `letter`
  ADD PRIMARY KEY (`letter_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_g_activity_log_g_user1_idx` (`user_id`);

--
-- Indexes for table `log_trx`
--
ALTER TABLE `log_trx`
  ADD PRIMARY KEY (`log_trx_id`),
  ADD KEY `fk_log_trx_bebas_pay1_idx` (`bebas_pay_bebas_pay_id`),
  ADD KEY `fk_log_trx_bulan1_idx` (`bulan_bulan_id`),
  ADD KEY `fk_log_trx_student1_idx` (`student_student_id`);

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`majors_id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `fk_payment_pos1_idx` (`pos_pos_id`),
  ADD KEY `fk_payment_period1_idx` (`period_period_id`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`period_id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `fk_student_class1_idx` (`class_class_id`),
  ADD KEY `fk_student_majors1_idx` (`majors_majors_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_user_user_role1_idx` (`user_role_role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bebas`
--
ALTER TABLE `bebas`
  MODIFY `bebas_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  MODIFY `bebas_pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bulan`
--
ALTER TABLE `bulan`
  MODIFY `bulan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `debit`
--
ALTER TABLE `debit`
  MODIFY `debit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kredit`
--
ALTER TABLE `kredit`
  MODIFY `kredit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `letter`
--
ALTER TABLE `letter`
  MODIFY `letter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `log_trx`
--
ALTER TABLE `log_trx`
  MODIFY `log_trx_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `majors_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `period`
--
ALTER TABLE `period`
  MODIFY `period_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `pos_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bebas`
--
ALTER TABLE `bebas`
  ADD CONSTRAINT `fk_bebas_payment1` FOREIGN KEY (`payment_payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bebas_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `bebas_pay`
--
ALTER TABLE `bebas_pay`
  ADD CONSTRAINT `fk_bebas_pay_bebas1` FOREIGN KEY (`bebas_bebas_id`) REFERENCES `bebas` (`bebas_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bebas_pay_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `bulan`
--
ALTER TABLE `bulan`
  ADD CONSTRAINT `fk_bulan_month1` FOREIGN KEY (`month_month_id`) REFERENCES `month` (`month_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_bulan_payment1` FOREIGN KEY (`payment_payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bulan_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_bulan_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `debit`
--
ALTER TABLE `debit`
  ADD CONSTRAINT `fk_jurnal_debit_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `information`
--
ALTER TABLE `information`
  ADD CONSTRAINT `fk_information_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `kredit`
--
ALTER TABLE `kredit`
  ADD CONSTRAINT `fk_jurnal_kredit_users1` FOREIGN KEY (`user_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `fk_g_activity_log_g_user1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `log_trx`
--
ALTER TABLE `log_trx`
  ADD CONSTRAINT `fk_log_trx_bebas_pay1` FOREIGN KEY (`bebas_pay_bebas_pay_id`) REFERENCES `bebas_pay` (`bebas_pay_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_log_trx_bulan1` FOREIGN KEY (`bulan_bulan_id`) REFERENCES `bulan` (`bulan_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_log_trx_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_period1` FOREIGN KEY (`period_period_id`) REFERENCES `period` (`period_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_payment_pos1` FOREIGN KEY (`pos_pos_id`) REFERENCES `pos` (`pos_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_class1` FOREIGN KEY (`class_class_id`) REFERENCES `class` (`class_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk_student_majors1` FOREIGN KEY (`majors_majors_id`) REFERENCES `majors` (`majors_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_user_user_role1` FOREIGN KEY (`user_role_role_id`) REFERENCES `user_roles` (`role_id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
