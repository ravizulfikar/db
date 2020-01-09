-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2020 at 09:55 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datakom-pijar`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun_user`
--

CREATE TABLE `akun_user` (
  `nama_pengguna` varchar(50) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_tugas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun_user`
--

INSERT INTO `akun_user` VALUES('Bastomi', 'admin', 'serangg@gmail.com', '12345', 'Pria', '1992-08-25', 'DPMPTSP');
INSERT INTO `akun_user` VALUES('Ketoprak', 'teknisi', 'ketoprak@gmail.com', '12345', 'Pria', '1990-05-20', 'JAKBAR');
INSERT INTO `akun_user` VALUES('Lontong', 'teknisi', 'lontong@gmail.com', '12345', 'Pria', '1995-10-10', 'JAKTIM');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `npm` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` VALUES(1, 1, 10000353, 'Admin GC', 'Banjarmasin', '2018-01-01', 'L', 'TI', '2019-10-07 01:07:15', '2019-10-07 01:07:15');
INSERT INTO `anggota` VALUES(2, 2, 10000375, 'User GC', 'Banjarmasin', '2019-01-01', 'L', 'TI', '2019-10-07 01:07:15', '2019-10-07 01:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengarang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `penerbit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` enum('rak1','rak2','rak3') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` VALUES(1, 'Belajar Pemrograman Java', '9920392749', 'Abdul Kadir', 'PT. Restu Ibu', 2018, 20, 'Buku Pertama Belajar Pemrograman Java Utk Pemula', 'rak1', 'buku_java.jpg', '2019-10-07 01:07:15', '2019-10-17 15:49:54');
INSERT INTO `buku` VALUES(2, 'Pemrograman Android', '9920395559', 'Muhammad Nurhidayat', 'PT. Restu Guru', 2018, 14, 'Jurus Rahasia Menguasai Pemrograman Android', 'rak2', 'jurus_rahasia.jpg', '2019-10-07 01:07:15', '2019-10-07 01:07:15');
INSERT INTO `buku` VALUES(3, 'Android Application', '9920392000', 'Dina Aulia', 'PT. Restu Ayah', 2018, 5, 'Buku Pertama Belajar Pemrograman Java Utk Pemula', 'rak2', 'create_your.jpg', '2019-10-07 01:07:15', '2019-10-12 09:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `data_ip`
--

CREATE TABLE `data_ip` (
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kode_jkt` varchar(10) DEFAULT NULL,
  `id_lokasi` char(10) NOT NULL,
  `ta1` varchar(50) DEFAULT NULL,
  `ta2` varchar(50) DEFAULT NULL,
  `ta3` varchar(50) DEFAULT NULL,
  `ta4` varchar(50) DEFAULT NULL,
  `ipaddress` text NOT NULL DEFAULT '\'0.0.0.0\'',
  `provider` varchar(2) NOT NULL,
  `id` int(11) NOT NULL,
  `spdtdown` float UNSIGNED NOT NULL,
  `spdtup` float UNSIGNED NOT NULL,
  `testmydown` float UNSIGNED NOT NULL,
  `testmyup` float UNSIGNED NOT NULL,
  `spjktdown` float UNSIGNED NOT NULL,
  `spjktup` float UNSIGNED NOT NULL,
  `status_acc` tinyint(1) DEFAULT 0,
  `catatan` text NOT NULL DEFAULT 'Tidak ada catatan khusus.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_ip`
--

INSERT INTO `data_ip` VALUES('2019-11-06 10:31:09', '2019-11-17 16:55:09', 'JAKTIM', 'KELPMR', NULL, NULL, NULL, NULL, '557.666.9.9', 'D', 1, 54, 4, 56, 5, 65, 6, 2, 'jjjjjjj79');
INSERT INTO `data_ip` VALUES('2019-11-07 01:06:38', '2019-11-22 02:29:51', 'JAKTIM', 'KELUKU', NULL, NULL, NULL, NULL, '8887888', 'D', 2, 76, 6, 67, 7, 87, 9, 2, 'yyyyyy kjk kjkfjd kjkdj dkfjdkfj kjkjdkjf \r\ndkfjdkjf\r\nkdjkfjd\r\nkjfdkjfkd\r\nkjdkfjd\r\nkdjfkdj\r\nkdjfkj\r\nkdjfkj\r\nkdjfk\r\nkdjfkdjfk kjkjkjkj kjkjkjkj jkjkjk jkjkj jkjkj kjkjkj kjkjkj kjkj kjk jkj kj kj k jk jk jj kj kjj kjk jk jk jk jk jkj');
INSERT INTO `data_ip` VALUES('2019-11-07 09:23:44', '2019-11-27 12:02:34', 'JAKBAR', 'KELCBT', '-', '-', '-', '-', '4567', 'L', 4, 234, 34, 235, 34, 123, 32, 0, 'b.bbbbbbbb4');
INSERT INTO `data_ip` VALUES('2019-11-07 09:59:57', '2019-11-22 06:21:53', 'JAKBAR', 'KELKKA', '-', '-', '-', '-', '192.9.9.9', 'D', 5, 76, 7, 76, 7, 98, 9, 1, 'kkkkl.llll.pppp');
INSERT INTO `data_ip` VALUES('2019-11-08 15:40:37', '2019-11-22 06:21:49', 'JAKUT', 'KELSKP', '-', '-', '-', '-', '192.11.8.219', 'L', 6, 87, 7, 78, 8, 99, 8, 0, 'yesssss');
INSERT INTO `data_ip` VALUES('2019-11-10 13:47:17', '2019-11-22 06:21:39', 'JAKUT', 'KELSKP', '-', '-', '-', '-', '192.177.9.9', 'L', 7, 87, 8, 99, 9, 78, 5, 0, 'makan nasi biar kenyang');
INSERT INTO `data_ip` VALUES('2019-11-19 09:27:20', '2019-11-27 12:25:00', 'JAKBAR', 'KELKPK', 'ahmad bastomi', '-', '-', '-', '192.168.9.80', 'L', 8, 34, 56, 43, 76, 33, 8, 2, 'apa nih kok jkt48:\r\n\r\n1. mencoba\r\n2. tahu\r\n3. tidur\r\n8.ooo\r\n\r\n9.iiii');
INSERT INTO `data_ip` VALUES('2019-11-19 09:37:00', '2019-11-24 07:24:27', 'JAKBAR', 'KELDKB', '-', '-', '-', '-', '555.99.99.23', 'D', 11, 87, 8, 66, 7, 97, 3, 0, 'lllklklklkop');
INSERT INTO `data_ip` VALUES('2019-11-23 11:35:53', '2019-11-24 06:34:20', 'JAKBAR', 'KELCBT', 'harimau88', 'ahmad bastomi', '-', '-', '122.444.555.666', 'D', 14, 99, 9, 88, 8, 55, 5, 0, 'habis makan box co, enaaakkk\r\n\r\nasik\r\n\r\njoss');
INSERT INTO `data_ip` VALUES('2019-11-29 09:33:50', '2019-11-29 09:36:56', 'JAKBAR', 'KELKPK', 'Si User', 'ahmad bastomi', '-', '-', '192.168.98.123', 'L', 15, 23, 10, 78, 20, 0, 0, 2, 'Jaringan kadang putus.');
INSERT INTO `data_ip` VALUES('2019-11-29 09:53:35', '2019-11-29 09:55:56', 'JAKBAR', 'KELKPK', 'Si User', 'harimau88', '-', '-', '192.160.3.3', 'D', 16, 30, 10, 13, 5, 20, 10, 2, 'komputer kadang putus jaringannya');
INSERT INTO `data_ip` VALUES('2019-12-03 05:23:50', '2019-12-03 05:29:44', 'JAKBAR', 'KELGLD', 'Ade Komarudin', 'Jodi Setiawan', '-', '-', '10.30.219.12', 'D', 17, 9.55, 9.63, 9.6, 9.3, 0, 0, 2, 'Check dan monitoring jaringan kelurahan Glodok, dgn status jaringan seperti diatas dan terdapat pc sebanyak 3 pc, 1 pc dan status antrian stabil. \r\nkemudian kondisi pelayanan aman dan nyaman.');
INSERT INTO `data_ip` VALUES('2019-12-03 06:42:46', '2019-12-03 07:07:22', 'JAKBAR', 'KECTMS', 'Jodi Setiawan', 'Ade Komarudin', '-', '-', '192.168.10.110', 'L', 18, 33.54, 5.06, 6.3, 5.1, 0, 0, 2, 'troubleshooting dan monitoring jaringan Kecamatan. Taman Sari Jakarta Barat,\r\ndengan ada nya, 7 Komputer pada bagian BO dan 4 pada bagian FO.\r\nDengan kecepatan download serta upload seperti data di atas.');
INSERT INTO `data_ip` VALUES('2019-12-03 06:56:11', '2019-12-03 07:07:12', 'JAKBAR', 'KECTMS', 'Jodi Setiawan', 'Ade Komarudin', '-', '-', '10.30.60.45', 'D', 19, 9.68, 9.99, 8.5, 1.7, 0, 0, 2, 'untuk pelayanan tidak ada kendala.');
INSERT INTO `data_ip` VALUES('2020-01-03 07:14:09', '2020-01-03 07:14:09', 'JAKBAR', 'KECGPT', 'harimau88', 'jajal asek', '-', '-', 'asdadasd', 'L', 20, 8.9, 8.9, 8.9, 8.9, 8.9, 8.9, 0, 'asdasdasdada');

-- --------------------------------------------------------

--
-- Table structure for table `kode_wilayah`
--

CREATE TABLE `kode_wilayah` (
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kode_jkt` varchar(10) NOT NULL,
  `area_kec` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `kode_area` varchar(5) NOT NULL,
  `kode_lokasi` varchar(10) NOT NULL,
  `status_kjg` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kode_wilayah`
--

INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:43:37', 'JAKBAR', 'CENGKARENG', 'KECAMATAN CENGKARENG', 'CKR', 'KECCKR', 1);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKUT', 'CILINCING', 'KECAMATAN CILINCING', 'CLC', 'KECCLC', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-02 08:12:26', '2020-01-02 08:12:26', 'JAKTIM', 'DUREN SAWIT', 'KECAMATAN DUREN SAWIT', 'DST', 'KECDST', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'GROGOL PETAMBURAN', 'KECAMATAN GROGOL PETAMBURAN', 'GPT', 'KECGPT', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 07:07:26', '2019-12-26 07:07:26', 'JAKTIM', 'JATINEGARA', 'KECAMATAN JATINEGARA', 'JTR', 'KECJTR', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:09:22', '2019-12-26 03:09:22', 'JAKBAR', 'KEMBANGAN', 'KECAMATAN KEMBANGAN', 'KBG', 'KECKBG', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 02:50:16', '2019-12-26 02:50:16', 'JAKBAR', 'KEBON JERUK', 'KECAMATAN KEBON JERUK', 'KBJ', 'KECKBJ', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 02:29:25', '2019-12-26 02:29:25', 'JAKBAR', 'KALIDERES', 'KECAMATAN KALIDERES', 'KLD', 'KECKLD', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-03 01:30:57', '2020-01-03 01:30:57', 'JAKTIM', 'KRAMAT JATI', 'KECAMATAN KRAMAT JATI', 'KMT', 'KECKMT', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKTIM', 'MATRAMAN', 'KECAMATAN MATRAMAN', 'MTR', 'KECMTR', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 06:54:20', '2019-12-26 06:54:20', 'JAKTIM', 'PULO GADUNG', 'KECAMATAN PULO GADUNG', 'PGD', 'KECPGD', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:01:40', '2019-12-26 04:01:40', 'JAKBAR', 'PALMERAH', 'KECAMATAN PALMERAH', 'PLM', 'KECPLM', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:22:10', '2019-12-26 04:22:10', 'JAKBAR', 'TAMBORA', 'KECAMATAN TAMBORA', 'TBR', 'KECTBR', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'TAMAN SARI', 'KECAMATAN TAMAN SARI', 'TMS', 'KECTMS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:46:23', '2019-12-26 04:46:23', 'JAKBAR', 'TAMBORA', 'KELURAHAN ANGKE', 'TBR', 'KELAKG', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 07:14:42', '2019-12-26 07:14:42', 'JAKTIM', 'JATINEGARA', 'KELURAHAN BIDARACINA', 'JTR', 'KELBDC', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-03 01:38:09', '2020-01-03 01:38:09', 'JAKTIM', 'KRAMAT JATI', 'KELURAHAN BALEKAMBANG', 'KMT', 'KELBKB', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 07:11:14', '2019-12-26 07:11:14', 'JAKTIM', 'JATINEGARA', 'KELURAHAN BALI MESTER', 'JTR', 'KELBLM', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-03 01:36:45', '2020-01-03 01:36:45', 'JAKTIM', 'KRAMAT JATI', 'KELURAHAN BATU AMPAR', 'KMT', 'KELBTA', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 09:23:08', '2019-12-26 09:23:08', 'JAKTIM', 'JATINEGARA', 'KELURAHAN CIPINANG BESAR SELATAN', 'JTR', 'KELCBS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'CENGKARENG', 'KELURAHAN CENGKARENG BARAT', 'CKR', 'KELCBT', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 07:51:30', '2019-12-26 07:51:30', 'JAKTIM', 'JATINEGARA', 'KELURAHAN CIPINANG BESAR UTARA', 'JTR', 'KELCBU', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'CENGKARENG', 'KELURAHAN CENGKARENG TIMUR', 'CKR', 'KELCKT', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKUT', 'CILINCING', 'KELURAHAN CILINCING', 'CLC', 'KELCLC', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-03 01:50:25', '2020-01-03 01:50:25', 'JAKTIM', 'KRAMAT JATI', 'KELURAHAN CILILITAN', 'KMT', 'KELCLT', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 09:24:52', '2019-12-26 09:24:52', 'JAKTIM', 'JATINEGARA', 'KELURAHAN CIPINANG MUARA', 'JTR', 'KELCMA', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 07:15:49', '2019-12-26 07:15:49', 'JAKTIM', 'JATINEGARA', 'KELURAHAN CIPINANG CEMPEDAK', 'JTR', 'KELCPC', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 06:59:34', '2019-12-26 06:59:34', 'JAKTIM', 'PULO GADUNG', 'KELURAHAN CIPINANG', 'PGD', 'KELCPN', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-03 01:49:12', '2020-01-03 01:49:12', 'JAKTIM', 'KRAMAT JATI', 'KELURAHAN CAWANG', 'KMT', 'KELCWG', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'CENGKARENG', 'KELURAHAN DURI KOSAMBI', 'CKR', 'KELDKB', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-03 01:47:46', '2020-01-03 01:47:46', 'JAKTIM', 'KRAMAT JATI', 'KELURAHAN DUKUH', 'KMT', 'KELDKH', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 02:51:42', '2019-12-26 02:51:42', 'JAKBAR', 'KEBON JERUK', 'KELURAHAN DURI KEPA', 'KBJ', 'KELDKP', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:41:41', '2019-12-26 04:41:41', 'JAKBAR', 'TAMBORA', 'KELURAHAN DURI SELATAN', 'TBR', 'KELDSL', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-02 08:15:09', '2020-01-02 08:15:09', 'JAKTIM', 'DUREN SAWIT', 'KELURAHAN DUREN SAWIT', 'DST', 'KELDST', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:40:30', '2019-12-26 04:40:30', 'JAKBAR', 'TAMBORA', 'KELURAHAN DURI UTARA', 'TBR', 'KELDSU', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'TAMAN SARI', 'KELURAHAN GLODOK', 'TMS', 'KELGLD', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'GROGOL PETAMBURAN', 'KELURAHAN GROGOL', 'GPT', 'KELGRG', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'GROGOL PETAMBURAN', 'KELURAHAN JELAMBAR BARU', 'GPT', 'KELJBB', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:36:49', '2019-12-26 04:36:49', 'JAKBAR', 'TAMBORA', 'KELURAHAN JEMBATAN LIMA', 'TBR', 'KELJBL', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:45:12', '2019-12-26 04:45:12', 'JAKBAR', 'TAMBORA', 'KELURAHAN JEMBATAN BESI', 'TBR', 'KELJBS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:40:41', '2019-12-26 03:40:41', 'JAKBAR', 'KEMBANGAN', 'KELURAHAN JOGLO', 'KBG', 'KELJGL', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'GROGOL PETAMBURAN', 'KELURAHAN JELAMBAR', 'GPT', 'KELJLB', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 06:56:59', '2019-12-26 06:56:59', 'JAKTIM', 'PULO GADUNG', 'KELURAHAN JATI', 'PGD', 'KELJTI', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 07:00:33', '2019-12-26 07:00:33', 'JAKTIM', 'PULO GADUNG', 'KELURAHAN JATINEGARA KAUM', 'PGD', 'KELJTK', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:57:52', '2019-12-26 03:57:52', 'JAKBAR', 'PALMERAH', 'KELURAHAN JATIPULO', 'PLM', 'KELJTO', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:02:00', '2019-12-26 03:02:00', 'JAKBAR', 'KEBON JERUK', 'KELURAHAN KEBON JERUK', 'KBJ', 'KELKBJ', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKTIM', 'MATRAMAN', 'KELURAHAN KEBON MANGGIS', 'MTR', 'KELKBM', 1);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:53:00', '2019-12-26 03:53:00', 'JAKBAR', 'PALMERAH', 'KELURAHAN KOTA BAMBU SELATAN', 'PLM', 'KELKBS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:17:41', '2019-12-26 03:17:41', 'JAKBAR', 'KEMBANGAN', 'KELURAHAN KEMBANGAN UTARA', 'KBG', 'KELKBU', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-02 08:19:32', '2020-01-02 08:19:32', 'JAKTIM', 'DUREN SAWIT', 'KELURAHAN KLENDER', 'DST', 'KELKDR', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 02:58:20', '2019-12-26 02:58:20', 'JAKBAR', 'KEBON JERUK', 'KELURAHAN KEDOYA SELATAN', 'KBJ', 'KELKDS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 02:59:22', '2019-12-26 02:59:22', 'JAKBAR', 'KEBON JERUK', 'KELURAHAN KEDOYA UTARA', 'KBJ', 'KELKDU', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:07:47', '2019-12-26 04:07:47', 'JAKBAR', 'TAMAN SARI', 'KELURAHAN KEAGUNGAN', 'TMS', 'KELKGN', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:00:40', '2019-12-26 04:00:40', 'JAKBAR', 'PALMERAH', 'KELURAHAN KEMANGGISAN', 'PLM', 'KELKGS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'CENGKARENG', 'KELURAHAN KEDAUNG KALI ANGKE', 'CKR', 'KELKKA', 1);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKUT', 'CILINCING', 'KELURAHAN KALI BARU', 'CLC', 'KELKLB', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 02:44:03', '2019-12-26 02:44:03', 'JAKBAR', 'KALIDERES', 'KELURAHAN KALIDERES', 'KLD', 'KELKLD', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:43:37', '2019-12-26 04:43:37', 'JAKBAR', 'TAMBORA', 'KELURAHAN KALI ANYAR', 'TBR', 'KELKLY', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 02:36:34', '2019-12-26 02:36:34', 'JAKBAR', 'KALIDERES', 'KELURAHAN KAMAL', 'KLD', 'KELKML', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-03 01:34:45', '2020-01-03 01:34:45', 'JAKTIM', 'KRAMAT JATI', 'KELURAHAN KRAMAT JATI', 'KMT', 'KELKMT', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:04:35', '2019-12-26 03:04:35', 'JAKBAR', 'KEBON JERUK', 'KELURAHAN KELAPA DUA', 'KBJ', 'KELKPD', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 06:56:20', '2019-12-26 06:56:20', 'JAKTIM', 'PULO GADUNG', 'KELURAHAN KAYU PUTIH', 'PGD', 'KELKPH', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'CENGKARENG', 'KELURAHAN KAPUK', 'CKR', 'KELKPK', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 07:13:52', '2019-12-26 07:13:52', 'JAKTIM', 'JATINEGARA', 'KELURAHAN KAMPUNG MELAYU', 'JTR', 'KELKPM', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:39:02', '2019-12-26 04:39:02', 'JAKBAR', 'TAMBORA', 'KELURAHAN KRENDANG', 'TBR', 'KELKRD', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:08:24', '2019-12-26 04:08:24', 'JAKBAR', 'TAMAN SARI', 'KELURAHAN KRUKUT', 'TMS', 'KELKRK', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:16:36', '2019-12-26 03:16:36', 'JAKBAR', 'KEMBANGAN', 'KELURAHAN KEMBANGAN SELATAN', 'KBG', 'KELKSN', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:52:17', '2019-12-26 03:52:17', 'JAKBAR', 'PALMERAH', 'KELURAHAN KOTA BAMBU UTARA', 'PLM', 'KELKUA', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKTIM', 'MATRAMAN', 'KELURAHAN KAYU MANIS', 'MTR', 'KELKYM', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:11:53', '2019-12-26 04:11:53', 'JAKBAR', 'TAMAN SARI', 'KELURAHAN MANGGA BESAR', 'TMS', 'KELMGB', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-02 08:17:49', '2020-01-02 08:17:49', 'JAKTIM', 'DUREN SAWIT', 'KELURAHAN MALAKA JAYA', 'DST', 'KELMLK', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-02 08:18:56', '2020-01-02 08:18:56', 'JAKTIM', 'DUREN SAWIT', 'KELURAHAN MALAKA SARI', 'DST', 'KELMLS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:09:59', '2019-12-26 04:09:59', 'JAKBAR', 'TAMAN SARI', 'KELURAHAN MAPHAR', 'TMS', 'KELMPH', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKUT', 'CILINCING', 'KELURAHAN MARUNDA', 'CLC', 'KELMRD', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:41:59', '2019-12-26 03:41:59', 'JAKBAR', 'KEMBANGAN', 'KELURAHAN MERUYA SELATAN', 'KBG', 'KELMRS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:37:57', '2019-12-26 03:37:57', 'JAKBAR', 'KEMBANGAN', 'KELURAHAN MERUYA UTARA', 'KBG', 'KELMRU', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-02 08:13:49', '2020-01-02 08:13:49', 'JAKTIM', 'DUREN SAWIT', 'KELURAHAN PONDOK BAMBU', 'DST', 'KELPDB', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-02 08:15:59', '2020-01-02 08:15:59', 'JAKTIM', 'DUREN SAWIT', 'KELURAHAN PONDOK KELAPA', 'DST', 'KELPDK', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 02:42:33', '2019-12-26 02:42:33', 'JAKBAR', 'KALIDERES', 'KELURAHAN PEGADUNGAN', 'KLD', 'KELPDN', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 07:01:02', '2019-12-26 07:01:02', 'JAKTIM', 'PULO GADUNG', 'KELURAHAN PULO GADUNG', 'PGD', 'KELPGD', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:32:19', '2019-12-26 04:32:19', 'JAKBAR', 'TAMBORA', 'KELURAHAN PEKOJAN', 'TBR', 'KELPKJ', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-02 08:16:48', '2020-01-02 08:16:48', 'JAKTIM', 'DUREN SAWIT', 'KELURAHAN PONDOK KOPI', 'DST', 'KELPKP', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:58:34', '2019-12-26 03:58:34', 'JAKBAR', 'PALMERAH', 'KELURAHAN PALMERAH', 'PLM', 'KELPLM', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKTIM', 'MATRAMAN', 'KELURAHAN PAL MERIAM', 'MTR', 'KELPMR', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:07:02', '2019-12-26 04:07:02', 'JAKBAR', 'TAMAN SARI', 'KELURAHAN PINANGSIA', 'TMS', 'KELPNS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 06:58:27', '2019-12-26 06:58:27', 'JAKTIM', 'PULO GADUNG', 'KELURAHAN PISANGAN TIMUR', 'PGD', 'KELPST', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKTIM', 'MATRAMAN', 'KELURAHAN PISANGAN BARU', 'MTR', 'KELPSU', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'CENGKARENG', 'KELURAHAN RAWA BUAYA', 'CKR', 'KELRBY', 1);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:31:29', '2019-12-26 04:31:29', 'JAKBAR', 'TAMBORA', 'KELURAHAN ROA MALAKA', 'TBR', 'KELRMK', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKUT', 'CILINCING', 'KELURAHAN ROROTAN', 'CLC', 'KELRRT', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 07:17:19', '2019-12-26 07:17:19', 'JAKTIM', 'JATINEGARA', 'KELURAHAN RAWA BUNGA', 'JTR', 'KELRWB', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 06:57:45', '2019-12-26 06:57:45', 'JAKTIM', 'PULO GADUNG', 'KELURAHAN RAWAMANGUN', 'PGD', 'KELRWM', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:03:54', '2019-12-26 03:03:54', 'JAKBAR', 'KEBON JERUK', 'KELURAHAN SUKABUMI SELATAN', 'KBJ', 'KELSBS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:03:05', '2019-12-26 03:03:05', 'JAKBAR', 'KEBON JERUK', 'KELURAHAN SUKABUMI UTARA', 'KBJ', 'KELSBU', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKUT', 'CILINCING', 'KELURAHAN SUKAPURA', 'CLC', 'KELSKP', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:50:09', '2019-12-26 03:50:09', 'JAKBAR', 'PALMERAH', 'KELURAHAN SLIPI', 'PLM', 'KELSLP', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 02:44:52', '2019-12-26 02:44:52', 'JAKBAR', 'KALIDERES', 'KELURAHAN SEMANAN', 'KLD', 'KELSMN', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKUT', 'CILINCING', 'KELURAHAN SEMPER TIMUR', 'CLC', 'KELSMT', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKUT', 'CILINCING', 'KELURAHAN SEMPER BARAT', 'CLC', 'KELSPB', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 03:39:14', '2019-12-26 03:39:14', 'JAKBAR', 'KEMBANGAN', 'KELURAHAN SRENGSENG', 'KBG', 'KELSRG', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:30:18', '2019-12-26 04:30:18', 'JAKBAR', 'TAMBORA', 'KELURAHAN TAMBORA', 'TBR', 'KELTBR', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-25 03:43:15', 'JAKBAR', 'GROGOL PETAMBURAN', 'KELURAHAN TANJUNG DUREN SELATAN', 'GPT', 'KELTDS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'GROGOL PETAMBURAN', 'KELURAHAN TANJUNG DUREN UTARA', 'GPT', 'KELTDU', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-03 01:46:43', '2020-01-03 01:46:43', 'JAKTIM', 'KRAMAT JATI', 'KELURAHAN TENGAH', 'KMT', 'KELTGH', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:10:35', '2019-12-26 04:10:35', 'JAKBAR', 'TAMAN SARI', 'KELURAHAN TANGKI', 'TMS', 'KELTGK', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 02:39:05', '2019-12-26 02:39:05', 'JAKBAR', 'KALIDERES', 'KELURAHAN TEGAL ALUR', 'KLD', 'KELTGL', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'GROGOL PETAMBURAN', 'KELURAHAN TOMANG', 'GPT', 'KELTMG', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:09:00', '2019-12-26 04:09:00', 'JAKBAR', 'TAMAN SARI', 'KELURAHAN TAMAN SARI', 'TMS', 'KELTMS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-26 04:24:54', '2019-12-26 04:24:54', 'JAKBAR', 'TAMBORA', 'KELURAHAN TANAH SEREAL', 'TBR', 'KELTNS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKTIM', 'MATRAMAN', 'KELURAHAN UTAN KAYU SELATAN', 'MTR', 'KELUKS', 0);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKTIM', 'MATRAMAN', 'KELURAHAN UTAN KAYU UTARA', 'MTR', 'KELUKU', 1);
INSERT INTO `kode_wilayah` VALUES('2019-12-25 06:41:50', '2019-12-24 19:42:45', 'JAKBAR', 'GROGOL PETAMBURAN', 'KELURAHAN WIJAYA KUSUMA', 'GPT', 'KELWJK', 0);
INSERT INTO `kode_wilayah` VALUES('2020-01-03 07:42:59', '2020-01-03 07:46:08', 'MPP', 'MAL PELAYANAN PUBLIK', 'Mal Pelayanan Publik Provinsi DKI Jakarta', 'MPP', 'MPP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kota_adm`
--

CREATE TABLE `kota_adm` (
  `namakota` varchar(30) NOT NULL,
  `kodekota` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota_adm`
--

INSERT INTO `kota_adm` VALUES('JAKARTA PUSAT', 'JAKPUS');
INSERT INTO `kota_adm` VALUES('JAKARTA BARAT', 'JAKBAR');
INSERT INTO `kota_adm` VALUES('JAKARTA SELATAN', 'JAKSEL');
INSERT INTO `kota_adm` VALUES('JAKARTA TIMUR', 'JAKTIM');
INSERT INTO `kota_adm` VALUES('JAKARTA UTARA', 'JAKUT');
INSERT INTO `kota_adm` VALUES('MAL PELAYANAN PUBLIK', 'MPP');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` VALUES(1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES(2, '2018_06_17_070037_create_anggotas_table', 1);
INSERT INTO `migrations` VALUES(3, '2018_06_17_130244_create_bukus_table', 1);
INSERT INTO `migrations` VALUES(4, '2018_06_18_014155_create_transaksis_table', 1);
INSERT INTO `migrations` VALUES(5, '2020_01_03_155112_create_troublempp_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `status_dua`
--

CREATE TABLE `status_dua` (
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_dua`
--

INSERT INTO `status_dua` VALUES(0);
INSERT INTO `status_dua` VALUES(1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wilayah`
--

CREATE TABLE `tbl_wilayah` (
  `id` int(15) NOT NULL,
  `walikota` varchar(255) NOT NULL,
  `kel` varchar(255) NOT NULL,
  `kec` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wilayah`
--

INSERT INTO `tbl_wilayah` VALUES(1, 'jak', 'tu', 'tr', '2019-10-23 15:27:26', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_transaksi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `buku_id` int(10) UNSIGNED NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` enum('pinjam','kembali') COLLATE utf8mb4_unicode_ci NOT NULL,
  `ket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` VALUES(1, 'TR00001', 2, 3, '2019-10-07', '2019-10-12', 'kembali', 'cuma 1 hari', '2019-10-07 04:18:41', '2019-10-12 09:35:42');
INSERT INTO `transaksi` VALUES(2, 'TR00002', 2, 1, '2019-10-12', '2019-10-17', 'kembali', 'bentar saja', '2019-10-12 09:47:17', '2019-10-17 15:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `troublempp`
--

CREATE TABLE `troublempp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ta1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ta2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ta3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ta4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lantai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bagian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hari_kerja` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_kerja` date NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permasalahan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_permasalahan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solusi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ttd` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemohon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vkasatpel` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vkasubag` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_verify` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `troublempp`
--

INSERT INTO `troublempp` VALUES(15, '16', '17', '-', '-', '1', 'CRO', 'Rabu', '2020-01-08', '123123', 'Komputer user tidak bisa menggunakan internet karena masalah proxy', 'Jaringan', 'Cek Proxy di komputer. pasang proxy 10.15.3.20 port 80. test ping, test google. done', NULL, 'Amel', 'Amel', '----', 'mengetahui Kasatpel Infrastruktur dan Jaringan PSTIK DPMPTSP Provinsi DKI Jakarta. Didit Karyadi. NIP : 198207092010011020. Tanggal Approv : 2020-01-08. Pekerjaan Atas ID 15 Tanggal 2020-01-08 Lantai 1 bagian CRO nama pemohon Amel nip ----', 'mengetahui Kasubbag. Tata Usaha PSTIK Prov. DKI Jakarta. DR. Darmawan Apriyadi, S.T, M.T. NIP : 198504132010011023. Tanggal Approv : 2020-01-08. Pekerjaan Atas ID 15 Tanggal 2020-01-08 Lantai 1 bagian CRO nama pemohon Amel nip ----', 'http://192.168.0.100:8000/trouble/print/15', '2', '2020-01-08 01:06:28', '2020-01-08 14:09:45');
INSERT INTO `troublempp` VALUES(16, '16', '18', '-', '-', '2', 'Konsultasi', 'Rabu', '2020-01-08', '', 'Printer di Bagian konsultasi tidak bisa menceteak dokumen ke printer yang sudah di share dari komputer server.', 'Printer', 'Cek IP Printer server/komputer sebagai server. test ping. reconnect printer. dengan ip 10.40.112.xxx done', NULL, 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAADICAYAAADGFbfiAAAgAElEQVR4Xu2dfeg2WV3GL/WPLMtyqYwIzRJ1UygrElPWrMAwqQRXon9MDDIMtizQv9oMCkViM8TeqK1MEq2spLAMTLSQXrRACyvblgjWEG1jLSlt47PPXPucZ373y8zc83Jm5jpwc9+/55k5c871PXOu83053/MQpQSBIBAEgkAQGIDAQwbck1uCQBAIAkEgCCgEkkEQBIJAEAgCgxAIgQyCLTcFgSAQBIJACCRjIAgEgSAQBAYhEAIZBFtuCgJBIAgEgRBIxkAQCAJBIAgMQiAEMgi23BQEgkAQCAIhkIyBIBAEgkAQGIRACGQQbLkpCASBIBAEQiAZA0EgCASBIDAIgRDIINhyUxAIAkEgCIRAMgaCQBAIAkFgEAIhkEGw5aYgEASCQBAIgWQMBIEgEASCwCAEQiCDYMtNQSAIBIEgEALJGAgCQSAIBIFBCIRABsGWm4JAEAgCQSAEkjEQBIJAEAgCgxAIgQyCLTcFgSAQBIJACCRjIAgEgSAQBAYhEAIZBFtuCgJBIAgEgRBIxkAQCAJBIAgMQiAEMgi23BQEgkAQCAIhkIyBIBAEgkAQGITAlgjkCyR9uaTP74AE/f6X5tPh8lwSBIJAEAgCbQRqJ5CvaQjB5OBviILCt3+3+3ZvQRDcx+cYufyHpL9pKuA35MJ3+e93h3DyAgWBIBAEriNQA4E8U9K3SIIsPNHz26WcuJnkPbF7kue6odrENxXPKcmIdrgN/PtjW4PG7YCk7mra5Ha4fSYw/k4JAkEgCGwOgRoI5K2SPtQg+6fN91BCmFJAJan4902SHlloQSbANuG4XSaeNumVmg7EY21oyv6k7iAQBILARQgsSSCfI+mTkm6X9BMX9aLem63FQCwUa1n8LjWeQ1pOm2Ta5BqTWr1yT8uCwC4QWJJA7pf0Kkk/vguku3eybT6zj8fmNvuFXKO1NX9by3l390fmyiAQBIJAfwSWJBBaC4k8W5JX1/17sN87rMGYcKzdlARjUgFffv9tzGP7HTDpeRAYG4GlCeRrJb1/7E6lvgcQQGMxyfi3fTMmFLQVNJX4XDJogkAQ6I3A0gRyq6TvlfTHkn4vYbK95TfkBsgELcWfr24qgVQgEj7RVIYgm3uCwM4QWJpADDd+kB+SdKek14VIZh+FJaHw+1kFqZhY0FQSkjy7aPLAIFAvArUQiBH6Lkk/I+kDDZHEN7Lc2DGpWGNBU8GPgoZSkspyLbz2ZNqJac4Rbw42KDefcl07NNxjy0EHaF0hyKWlmeevCoHaCKQkEkxbONl/V9KvrQrV7TbWZOJvJm4mYGTEBI2WwvcUBUJAM8Kv4+cfy0JwyfPLPTmHiMd13yzp1fEfXQJ17l07ArUSiHFlVQmRvKjRTDBvZZVYz6hzBFhJLJB+W0s5JbMyaqydmuYJTVe/8UTKGqPhDZhtAjiEVntTqP1AQ5DF/JpxOQS53LN6BGonEAPMxAKRMFG9q9FIplrprl6oC3cAWZXmLyLtPirpHkkfk/TQZvd+uamyT5NNFGUk2VhRZM4k0EWz+YykNzbmM8YiRBJNuY8kc+3qEVgLgZRA86JCJvGT1DX8vKq3PwKCuKUhjC4tPeSDeLKkj0h6R+N3qTHFjQNASNQZIuki6VyzGQTWSCAGHxIhcusTzcrvVzcjlfo7wgodf0SpaZxqtcmh3C3/hZJIZ0M+MepBu2RRsMZNj5AnRHJbAwIaERtkY26tfyynhRcgsGYCKf0kEAl2bCK4Yka4YECcuJUIue8sNiieIwyIAFLvY16CSEonOX9jsoR4cNTXHilFe+kzY5FxyCInJQhsFoEtEIiF41UgK9m3xU8yypglyugZkp7SpNo/Vqk3HkIaTPRjrrytnVjbwUkPofCsGnfR0040KcpTexLoKEJLJUFgLgS2RCAlkaCR8IFIiJDpswqeC/van4NJhkzJhwqEYbIoU9TP0ScWCmXUF6t92lIToaCFEDkYLWSOEZFnLIbAFgmkBBMTAhMhhz6R+TcbE7sPNbSPVxSXk2oG7WJsDaN7i45fiXkNUuGDM9vkRpuXKLSHxQvlcRPujVmib3lmEHgQga0TiDvKxAKRECGUcMtuLwAr/ZdI+ryVpdyn3Uzg9tmY9Ob2jWFqo/xw45vrhnquCgIrQmAvBGKR4KCFQCAU8m4xqWQ/yYoG7ICmQiRookSNQSZzmTR5FkEHH5b0pAHtzi1BoHoE9kYgFohXqZAJUT5zTSrVD4gNNxCZl6HfU0fsvVbSjzZ4xpm+4YG1567tlUBKmcdPsr83oG3SxFcyZuQYiDprAr9zaNr+xtguehwCuS5mTB1EbuGEZXU6xaSyi0G1ok7apImpCZkTaDFWKQnkxc3+kLHqTj1BoAoEQiBXxdCeVJIor4qhOmkjSpk7OeKlDyz3g0BM1JsSBDaFQAjkuDidwBETlxM4Jgx4U8P/SmdKIkEbvTRyC7MYGi3aLBpuShDYFAIhkG7iLP0kbBK7dGLp9tRctRQCY4V9s+Dw6Y5515aSZp47GQIZ1P2gLScWR/GM7Xzt16JcPSUCpbzZz0Fobp9S7uZPJFYf5HLtKhAIgQwTU2nqQCPJOe7DcFzLXT5quW9Gg5JAEom1FmmnnZ0RCIF0hurghewtwFYeP8llOK7lbpsySZaIRnJuEypaqlO8h0DWIuW0szMCIZDOUJ290JvUSGEx9Sa1s43JBZMiwKIB7YJ8V0RYHSMSEk36uNy8a5OKJJUvgUAG9fioYzeHTLy3IOlSxse4hhqtfWLecjaDkkieKek9TUP/XtJX1dDotCEIjIlACGRMNG+sy2HASSs/HcY11OxzaCAS8qt53xByv6NpIM7359fQ2LQhCIyJQAhkTDSP15Uw4HlwXvIpDqz4Zkk/K+ljDaHQpmwkXFIyefZkCIRAJoP2YMWYt9rH7yYMeF4ZTP00jgzwPiHvAQmBTI166l8EgRDIIrA/cO43TlgfPHTKEbtMC/PUSxEg5Bc5RwO5FMncXy0CIZBlRVOmlWfCqXGXO20kkshnkntSPIZcecStfzPO5j76dlnJSs+T9PYQyNJiyPOnRCAEMiW6/ep2NmBMIN6cuIR5C8LA9OIjYiEOCuegE2V06nx5ruV+is03bRToE/U8TNJfN79J+XF3h30V/RBd9uoyGy+YsQ9kCXkui0KevmkEQiD1iZcVPn6SMjz01KQ9Rg+Y+Ak75pn8vrc5V5yJnWdfkkSS/lhrYVKl8PfjJX1Zc8xw2QeexUTLc/lALFP3fwwM23WUBMKphP8dEpkC5tS5JAIhkCXRP/3sKc1b1A1hWMtgQn93k+vJpDEnMpAWbSjNZN6A53bYBEb70GD4oBXVuqovCQQfF/0DczSRNRLinOMhz1oJAiGQdQjKmxMxC9lPci6NRtkz7vPk/BRJX9+s7NmfwGTGd40TsbUX+g/puQ+kSHcptRWb2Gowh7UJhKAJwrnJUsD/hUTW8e6llScQCIGsa3iUmxO9+7k0L9nhzQRVrurpJWYpJq33SXrzyiewkkz47f4eIpaSYOzHmUPqhwiE55pEMBdeYhqcow95RhA4iUAIZL0DxLm3cLr/a3Nw0WOK7kAYaBY2Se1lxcvEbc3FGgsYlQUsrK1M5Wc5RiAlidC+PprkekdrWr5JBEIg6xErk6Kjozwxlq3/P0n/LOmNkn49E9MVwZbE4t9tYikd+JdGhp0iEBqHKRI/D+eEpASBVSIQAqlXbA6nxdThCa9sLXZ+Jjl/MNVwLbb2TyQjcGfBth34/H2IWMqosC6mp5JASP2O76MsyBftg4g7yCQlCKwOgRBIXSJzpI5Jo906ztZm8sI0dcr0UWYE5trsdO8vZ2t55XfpYzGhIAdkQhRbWUoCefERkoBU0CqjhfSXT+6oAIEQyPJCMGng0/CmPbfKWgYk0Pc4VepglWtfSa073ZeXQPcW2Hlvp31bWzGp2N9krYNMvIfkx/0cTpXDprrLIFdWhEAIZDlhvKgxOaFtlAXSYLLBrDGm45vn8GEvQo7hHVfuJaFACu09LL8l6TcaLaUdLm0NBqJPCQKrQiAEMq+4WMFCHNi92zmlME8xsQ/RNPr0wqHATFjRSvog1+/a8jyQj0p6dHO7CQOzF2HFyIEx8ah+1efqILA8AiGQeWTApH17owE4VxRPRtuANPgsEc7p9PLeoMhhSEu0Yx4pzPuU50r6g+aR3y7p7xoTpXf/W0u5T9LnSnq9pJ8O/vMKKU+7DIEQyGX4nbvbxNE2T0AcREvVEn1T+kocwYVGVOPu9HOY1/L/pRP9mA/EZMLiwqXUUHDMh9BrkWjacQWBEMg0g+IYcWCywLFaC3Ec6n07ggutZExfzDSI11nr/U2zzh0ohTmLCC/CffGhOKkl/2ZCwbQJoYTU65T1LlsVAhlX7MeIgxcfjaPL/oFxWzS8trZW4hxcmcC6Y8rk7xMKTznJGRtoIY9raRzWUPh2enznLmNMrWk8dUctV64GgRDIOKLaEnEcQoRVsVPMv605sjWT1/mxA0ZM/Ez2TmV/6K7vlvQmSa+U9NoT1VKH9wjhQ4HMvS8o5q7z8sgVIyMQArkM0FOmKibcrU2yTjHPatoHX3H+d+z0h8cRWhsRVuCDdnGsfJ2kv5L0/ZJ+seOQtCyspSAPn93CuMOHlRIEJkUgBDIM3lMaBz6OqUNxh7V63Lt88BVkQmZgJstMWjdibNMU/3rqXbPD/Zyv5JQEkYe1E+rD/+I0N8glJD/u+E9tZwZ1ALqKwNZNVUNlzsQFkSQc+DiBsM/jmP/IBPIGSS8bKoTWfW1zl7UTO+NHekyq2TMC0UC6ST/E0R0nn+2ecOBrpHpnAx35ro5Fs9mEhcZAWpOxS9vcRXRXfCdjo7zD+kIgp4WO89gbAMsrCcfFPLEHU9XQ18LhwBDKXh3v5V6QU/mubOqaikDaMmRcW0NBa7R2gj8rIdtDR/wO7wuBHBb6MeJYYzju0sPaq1+IhMihIUfyLt2Hoc/vQiC3SnpL84A+TvShbWrf5xMd7T9BO3Hyzuw7GQvljdYTAjksWDKklplxQxzjvAB7y8N1jkBeKunnGmjvkPTycWC+qJa2duJTLXkHop1cBO32bg6BXJUpkxxJBimc8PeSDYbj1jCSnR2YSdYmrq1NUDbfgXfbB1KSyz2Snizp4zUIptUGayZ8E9nlLNGJuKtQWHM3KQRyFXEmMSe6O+X4nFtWW32eTVzsm8F8Qhj0VsJOyzDedhRWOc5YpPzKCgRchgrjO7F2krxpKxDeFE0MgdyIKpPXbc0/4VDMGQ1TjLrjdWI+AfOt7C05tg+kTPVOrjH+XmNBK7lZ0nMa7YR3BlJJups1SnNAm0Mg10ErzQ33Nud15EUYMKhGuqW9t2SNEUJMphzgVaYyKU2kWxpnWyP/kYbxtqsJgVyXrxPf8VJjn96aPX6tI3nNSR1tpiq12dJ0deys9LXKyu0u/VvOUtA+M37tfUz7sxP9wTFQOjRJqe2zrDNI6kKgTOrIxIT5p+Z8Y07n7jFVmq7OJVisC/lhrWmHcCOrHA8wDMsq74oGck0spfkqmFQ5VK80Cj+J95ZgKqrtNEXIjnBwCpsIMYdCekyqaLn8/57yU7UTcSKzNZol1/F2zNTKTJbXgC5TTgSTmQbfSI+p9TTFclFCJl7IxMcZHzuhcCRIqq/G0VxoZEl5U724jjcwk+U1bEoTVvtQnxWLd3dNb59bwip3qf0KjsD6oKRPFxtTaQ/kknL93WMBR7ABe0xq0yQjpxMIhECug2N79d5Xh1t5YRwOvNS5JT4LhM2BNzWgkkONxUqi+66OMrQzNBI+bCwltf2eTHyrfO9CINfF5uiYNcflr3IQTtxozCVM2mgENpdge5+6vE/S04qHhDy6IV4SCeldeB9DuN2wm/2qEMh1yL1ihEjYgZ6yPQScIRhTFw5tzElTRHFR//uLKMeQR/+xBPFD+pi2CHdO5uv+GE5+RwjkOsSl0/PU4T+TCyUPmAUBn1sytokL0xkrZzvMf1vS92UVPVimkD6LO4IQCIeOWWswlOPfGAK5jikvPCYOyi2S3jM+3KmxQgTKDMFMUpcczVvu83BX846NI3T2ZnG+PCSCjFIqQCCD+0Yh2JF+6vCfCsSWJkyEgA9ZsomLzX5dTVxlHrVPSnpEo3WgzaaMgwByKbWR+EbGwXVwLSGQG6FjQJIRNrvRBw+pzdzoXFw+BOuUM/e9kp7R9PxuSa+U9JutHFibAaaCjkDW+EZ4T+MbWVAgIZAbwWe1SZpqQghx4KUEgXLTGyYuZ5wFGfwdPynpSxuYvMcDn8cvSfqwpCcFwkkQgOAhEkJ+IZKUBRAIgYRAFhh2q32kNyo+V9JnSXpk0RPO8+BcD4p9IT8v6QdW29v6Gw65QyIEQrB/Kw72mWUWArkRcO8e3kOiu5mH2iYeB4EQYYWvxOVjkl4t6ZeLSCtrsvGlzSN2b0DkOyateTB/4CkhkBvBdk6s7AWZcRCu4FGsdG9vHTDGIoMFB6te+0swcb1T0puaPuX9mk+4kDtaIHtusot9JtwzwG8Eusygmr0gMw3Cyh9TnipIU00ch6Kz0ExeI+kbJH1E0gtyrsys0nViTWTGRtHsG5kY/hDIVYB9sNRWD/uZeEhtpnq0UbQOtA8KKdiZmM6dFeNwXkwpJOYkqq/GdPObEdSBjpREcmcSNE4n6hDIVWw9AbDCxIadsi8E2sRB7wnhhTy67DvwAoR0OJhCHcVFvewzcobgnHg5/biCSJCbTdPJ9Dsy5iGQq4CWZ1Z7EhgZ9lRXGQKYnthXwETjFCQ0kbBcHLNdo3s8dtgLYs2l7ComUh/3imbCpjjCgrvWXxlsq2lOm0jwkXRZDKymg0s1NARyGHlH0ZRnWS8lozx3fASY3Nnv453nJWlgqkJLQBPtqyU4fLfLuKENXA9pkUInZDK+nNs1ImdvQuQbIkm5AIEQyGHwcsDUBYOq4luZtHGuHtIO0DYgDj5DV6fciybT90wZayV8E8llM1c0k2kGk/ePOMtAiGQgziGQ48BFCxk4qCq+rYyyI9wTGfMZY++Ak3GiwZQaTV84HBIMEaEBObljyKQvkuev9zkxbEQkaKZr3rPzNe/kihDIcUFHC9nmSwCJMBkP1TKOoWJHbRfzVVdkqRNCCZl0RWzYdU6Lcldj1gqRdMQxBHIaqHskPTq5sTqOpn1f5hMt+5qvuqDmsFQIBbOLTW2Y3cYmwi7t2eo1RGzhlyL0N472DlIOgZwGyatKXlJi+vOydhhUO7zEprFLzVddoCuTO2J6CZl0Qa37NZA1ZkOCLHIS4hncQiCnAWIwYe4g5DIbC7u/hHu70schz53FGeKymaskkznOfN+6jH0SImYt3v34oA5IPARy/jXwxkIGEFpIShAoESgd84yPpSYan/eOPd8bFh3NFYkNQ8D7RzgJEfMWGxFTCgRCIOeHQ7mxMFrIebz2doVDd8d0nl+KocOCmfgwu5Zmrkvr3uP9PgmR/TrRRkIgvd8BTxLRQnpDt+kbmKg50AjfBwuN2nxkrKBNJkRymUwgu0Qa9R+aaCG3RRu5Dlw0kG6DqAzpjRbSDbOtXwVhsOmPSXoNY6IdycViiIURZNJ3x/3WZXuqf2gj4IbskXtti4ZZZRMC6Q63NxZGC+mO2ZavdNjuGg8fKxM8EhYcMuk3UiFjSITgml2fhBgC6T5wbK7gjrmjbbq3MlfOgYDPCMF05Y2Jczx3imc4Jxfjm0iukEl3lAmwwc9E1u5danEhkO6DhSu96kRtJVPvUhE3/Vqdq8dEoDRnbu3I2nZYcMjk/MiBeAnjZgMi37sqIZB+4i4njxx72w+7LVxd+j047e7c4VJr7nPIpLv0wAoTNwEV+EV2U0Ig/UXtTWPcufVJpD86277DGmhNIbtzIH6ITJyEknQqKddMmbsjkRBI/6GPA42JBHsxpqzd2j/7Q7fqO7yhlCy+TBZ7LW0ycWgwk+fec3OhoZYRWpsfIyGQYSIuHerJkzUMwzXdZXlz0iBmzPi+rknPZAImRHNRmEBNJnvEiQUm/XeY75rGee+2hkB6Q/bgDV6R+qUhnC9lewiUqUpyxPFx+bZDg7kSTd2mLsKd91JMIqSUYcxstoRALhOt94ZQS/whl2FZ491MBKwkmRynSNNeY5/HaFO5Ax7thP0SezN17UITCYFc9rowsUAi+EMoWaFehmdNdzMBvEPS07Lv52Kx+Ox57zWxdmJz11a1E6eG94bDze1aD4Fc/G48kGuI8D0KNl9IZHMD5XKYVleDo+3+SNK3ra719TbYpi5IhfxcFN4XHy+MI35LvpNSE8FKsam5IQQyzovGJqI7mqpYVcUfMg6uS9Vi8mBlzAJhUy/9UqAeeS74QialIx4CKX0nW8Cf/uATIWpzMyUEMp4oS3/I7xerq/GekJrmQMBpSgjXZVLbwuQ1B25jPMO+ExOKTcNbcMbTNwJviFbbjGM9BDLGsL9WBwPkI5JuaqpkFburXanjQblYTSaPhOsuJoIbHkwEnMnEzngusLmL7zX5TzZHIiGQcV8U2zsdEx8SGRffKWvjaNg7JYU8pkT5srpLMuHMcor9J2gp+E9qT2pYkgjmrFVruCGQywb0sbud8oL/D4lMg/GYtZo8yK7LJFX7JDRm39dc1yH/SemQRzupVZbMCyw0V00iIZBpXh+fF+BVUkhkGpzHqLUkDyaknNQ3Bqrz18E7V2ootgLUHOFlElntmSIhkOkGekhkOmzHqrk8kjbkMRaqddTThVBq0FDwuxHOvEoSCYFMP9jL7L2o0zjWa1Wrp0ejnieU+3e2dq5HPSjX05KSUMoNjTWYvNgGcPsazxgKgcwzwB3d46fx9+vW7kCbB7pJnmKzFZUnRckkEFdfaW0aCmMSEmE8Hlpg0l4+Dm02wMzhXL+IMz4EMt84JyTRNk9Hj0AknC2xiPDn63pVT/KmTxzmuzxFripp1NOYY4TyX5L+okgMyf6g9k557mWHPSlL2oU5lvf7nNUBf+lzmjH5O5Ie0RAG8wb1dy324dFGPuWzGfPn2tH1OQ9cFwLpBdcoFzNpQRwebJ+S9PSxBTtKS7dVCS8h2QJY6SXaaluynaI3JpTvkHSLpK8sHvJpSXwefsGDmdgfKunjDfkcqgqy8uLynJZBAAEFImtrKYfqdr3/Jul/h/pgQiAXjIALbmVwMpH9lKTPbgYJqmsigC4A9cStrOLY48E3LyU28C3lW5oGtf3UyvtI1BaTb/nxpNwViXsk3Sfpkx2tCo+X9E/NWIQgrDH4LHp2rl9yzrq1F2tI1mTKv79I0v8Uh+N17Ws0kF5ITXNxe+Mh2gm+kZRxEADf2xqNjxrZaAZxx2Q4Dr5rqgUyYEJF82dc+FTJriRh05UneiwHT5D0FU348KFVPwtCp2E5ZPo6hZ/nBhK1vmpioLGIvEjSX0p6YZ9nRQPpg9Z015ZOdlYcm8vaOR10R2uGKCAPJor4OxYQwAKPtPkGUjBJ9PEh2GTExG/fgX0J57pzLO1KeZ/rNLGQ9eCcT4JrPzFDgtZbJb2laSzzUSfSCoGcGxbz/T8DkMHCColBawf7fC3YxpOYPIhm8coSjQ4so3VsQ75lLyAJ9lB4AyEEcqpgXvpQc84L19mvcM6/MAQ53mdMpXw7bf2xenjvTVRuS5njiwzflKm1ZwgEInmDpJd16XQIpAtK813jPDmokxQTCaaXTICn5dAmDqLbII74OuYbv3M9iYmZd4TvY8Wre5uQlvYvloRSJoY8h5nb/SWS3tecOc9cMHpElaR/l4RP5OXF8RQn2xcCOSe+Zf6flRT+EFYc5XGgTIpLvwjLIHL8qSGO2iQyXXsgDCLpDmkaEIbPELGfYrqWXF4zfYBUbPqyI79vzZBJ6Xz/jKS3N8EiXRZPPB//zbdK+sHm4WgfaCFnSwjkLESLXuDzESAS59Xi5SA6AzLZc2EywcdhU1U0ju2OBiY5iKPt8GYVjs+Q96HLZLkGhOyzcV/97fe/bx9Kf055r4MKDu0xeamkX+jyoBBIF5TquKatlfynpD+U9OYmuqiOVk7fCu/YBQ8mECYPPjHxTY/93E9gcsOfhTZelr3KnTH+PZLY3OhwY3Ax6XyxpJsvFFKvPVIhkAvRXuh2JtFXSnpi83zn88HZtkV/CS/Lj0hiU9djmjM7HCMf4lhoEE78WFbI7N1pm6v2HBSBtoVGcWpvSBl9Bobg58zEbZHZT+SosK4RZw/WEwKZ+C2YuHoGh89EKCM9MHOZTM6FCU7cxMHV0zf6BFk6Zv/Dkl594eaqwQ3KjbMgwATI3oe2uYoQWzSRPfsAwYSFk9+HPgIxnuBrv8nFZr8QSB8R1H2t/SUMFEjFqVLKbKOQSc1HgB4iDSYOVlwQ4sUDvm4R7rp1jF8iq5gg2+Yqouna/75XsHgHeL+rWBiGQLY7DB0bz2Brq7BWVb2ac+w542HuFV5IY7tjsE/PfuzA5jUCI9A6Yqa8jiRkyjuDZr54CYEsLoJZGuDEcA4ZdEqHLg9v20UdMkgqh4dJ+rPmBcf55v87Va/DBq0p2cYdTaOLNLZ7zXslPaPp3j9IekWjdW63x8N6xvtyl6RH1UCsIZBhQtzKXe1QQfrVTv0wND7dZMLqkUHv8wxK7DCnYZqKeWorI2pYPxgbjBebXRkvOHhTDiOASdebjBfFKASyKPyrfXgZQlgmpit/H+pcaTqb21S2WrB30HD8G+zpoRBFeGqH+Q7gONtFb6h83NkrJ74gBDIxwKk+CASBkwjYJOOLnlqLg7hyud0vCQJZNLAkBFL5KEnzgsDGEfAJkXSTDLA4iVPOIwCBPHuBoJcbWhYCOS+oXBEEgsB0CJRHGSw+IU7XzdFrDoGMDmkqDAJBYG0IEI7KjnNKCKSb9Ah0+UANR5JHA+kmsFwVBILANAh4MowJqzu+ztQ9ZEd696d0uDIE0gGkXBIEgsCkCBDqTYhFosMAAAOiSURBVAgvG1pxoqecRgDHuZOILopVCGRR+PPwIBAEJJHjjPPFyTDtvSAB5jAC7N16Vw0RWDQvBJJhGgSCwJIIeEKkDa9pskwv2Z7an80mQh9EtXhbQyCLiyANCAK7RoAzuDmLm42lONFTjiPgPTMvriUjdQgkwzUIBIElETCBvFXSC5dsyAqejd+DqDWIpIoEkyGQFYyaNDEIbBwBNBCIBAKBSFKuIkCaIJIoOkNxFRiFQKoQQxoRBHaNwNMl/XmTloNVNpNkFSvsiqRC6C6bLvF/LJq+pMQkBFLRCElTgsCOEXi9pOdJemxDHjiLOb62mslyQdlgsnqnJI48eMGC7bjy6BBITdJIW4JAEMDGz0obIqGQ6h8i2Wv2ZkxX7Drn/A+y8FaFQwgkL2wQCAI1IgCR8HlW0zhvntubeYvNlZwo+vwaD9gKgdT46qRNQSAIGAH2iUAknJfugnkLzYSzQ7Zc6Cf9riZstw12CGTLwy99CwLbQcDngONM9m51tBKIBK2ElfpWCqQJcUCcnNrpk0Or618IpDqRpEFBIAicQaBt3uJyyAT/AITCpLuGKC5I8XZJz5T0GUlPbPUbpznkUW1fQiB5V4NAEFgrAtZKIBQ73d0XNJLyA6nUUnCGo2EcOrr33oIIMWFVXUIgVYsnjQsCQaAjAuyPYLXOpGzHe/tWVvKQCtqKNRZW+XOs8GmfzVJEVrlAGBDFn0j64NrClkMgHUdnLgsCQWBVCEAmfNBSmLyJZDpVMH+ZYCCZuy/wq/BcTgw0qfF3SRq0A40I4qheyzgFWghkVe9EGhsEgsAFCDChm1D8m79PpZCHTB7ekMunGlKgCW1C6NIsSAkfDbvtN7FBMgTSRey5JggEgS0jAImYWMrvtl+lLwaYpyAgSAMNZ0uRYg9gEQLpOyRyfRAIAntCAPMTpyT+o6T7enS8qh3jPdrd69IQSC+4cnEQCAJBIAgYgRBIxkIQCAJBIAgMQiAEMgi23BQEgkAQCAIhkIyBIBAEgkAQGIRACGQQbLkpCASBIBAEQiAZA0EgCASBIDAIgRDIINhyUxAIAkEgCIRAMgaCQBAIAkFgEAIhkEGw5aYgEASCQBAIgWQMBIEgEASCwCAEQiCDYMtNQSAIBIEgEALJGAgCQSAIBIFBCIRABsGWm4JAEAgCQSAEkjEQBIJAEAgCgxAIgQyCLTcFgSAQBIJACCRjIAgEgSAQBAYhEAIZBFtuCgJBIAgEgf8HbI4GMhJynJcAAAAASUVORK5CYII=', 'Ria', '----', 'Menyetujui Kasatpel Infrastruktur dan Jaringan PSTIK DPMPTSP Provinsi DKI Jakarta. Didit Karyadi. NIP : 198207092010011020. Tanggal Approv : 2020-01-08. Pekerjaan Atas ID 16 Tanggal 2020-01-08 Lantai 2 bagian Konsultasi nama pemohon Ria nip ----', 'mengetahui Kasubbag. Tata Usaha PSTIK Prov. DKI Jakarta. DR. Darmawan Apriyadi, S.T, M.T. NIP : 198504132010011023. Tanggal Approv : 2020-01-08. Pekerjaan Atas ID 16 Tanggal 2020-01-08 Lantai 2 bagian Konsultasi nama pemohon Ria nip ----', 'http://192.168.0.100:8000/trouble/print/16', '2', '2020-01-08 01:08:43', '2020-01-08 14:22:59');
INSERT INTO `troublempp` VALUES(17, '16', '19', '-', '-', '3', 'Imigrasi', 'Rabu', '2020-01-08', '', 'Komputer Client tidak bisa terhubung ke internet serta terhubung ke QMS Server untuk memanggil Antrian', 'Jaringan', 'Test Ping Server 10.40.111.13, jalankan QMS Client dengan Administrator. done', NULL, 'data:image/png;base64,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', 'Maria', '19798689499789897', 'Menyetujui Kasatpel Infrastruktur dan Jaringan PSTIK DPMPTSP Provinsi DKI Jakarta. Didit Karyadi. NIP : 198207092010011020. Tanggal Approv : 2020-01-08. Pekerjaan Atas ID 17 Tanggal 2020-01-08 Lantai 3 bagian Imigrasi nama pemohon Maria nip 19798689499789897', 'mengetahui Kasubbag. Tata Usaha PSTIK Prov. DKI Jakarta. DR. Darmawan Apriyadi, S.T, M.T. NIP : 198504132010011023. Tanggal Approv : 2020-01-08. Pekerjaan Atas ID 17 Tanggal 2020-01-08 Lantai 3 bagian Imigrasi nama pemohon Maria nip 19798689499789897', 'http://192.168.0.100:8000/trouble/print/17', '2', '2020-01-08 01:10:26', '2020-01-08 14:23:02');
INSERT INTO `troublempp` VALUES(18, '20', '16', '-', '-', '1', 'CRO', 'Rabu', '2020-01-08', '13jhda', 'Tidak Bisa Print', 'Printer', 'Konek Ulang Printer', NULL, 'data:image/png;base64,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', 'CRO', '-----', 'Menyetujui Kasatpel Infrastruktur dan Jaringan PSTIK DPMPTSP Provinsi DKI Jakarta. Didit Karyadi. NIP : 198207092010011020. Tanggal Approv : 2020-01-08. Pekerjaan Atas ID 18 Tanggal 2020-01-08 Lantai 1 bagian CRO nama pemohon CRO nip -----', 'mengetahui Kasubbag. Tata Usaha PSTIK Prov. DKI Jakarta. DR. Darmawan Apriyadi, S.T, M.T. NIP : 198504132010011023. Tanggal Approv : 2020-01-08. Pekerjaan Atas ID 18 Tanggal 2020-01-08 Lantai 1 bagian CRO nama pemohon CRO nip -----', 'http://192.168.0.100:8000/trouble/print/18', '2', '2020-01-08 09:05:17', '2020-01-08 14:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penempatan` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '-',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` VALUES(1, 'Pak Admin', 'Jakarta', 'admin123', '123456@gilacoding.com', '$2y$10$lwqa/MrTr2PieBxK/LSQhOMiJyS1X1hbLkmMo5U7lIzAeQnIxPL7W', '78448-2019-10-07-16-05-31.png', 'admin', 'LwO2rkIbtPplUIspF0Qbx2ST83fXtuiG0mfe49ELS173FAqvVXn01h6tXLAT', '2019-10-07 01:07:14', '2019-10-20 14:24:51');
INSERT INTO `users` VALUES(2, 'Si User', 'JAKBAR', 'user123', '654321@gilacoding.com', '$2y$10$Eyt8oCpXwFkoKiu2aeT.n.dHeXjM.wfApLq0dbxrTZ0b/Yya.j9FO', '27676-2019-10-08-06-54-21.png', 'user', '3dkteFH2YGnYsmc6z52GkB5Hy4bsmFe0zUxekBxNQBBOYinhZxr30FYiajJp', '2019-10-07 01:07:14', '2019-10-20 14:25:15');
INSERT INTO `users` VALUES(4, 'Kucing', 'KELKPK', 'kucing123', 'hdhdhddh@gmail.com', '$2y$10$2N9aIJa/na16wKG7EszeIeaZlq1TVUBsy2N0vr4q3puRSKccRmJNC', '27998-2019-10-08-07-13-44.png', 'kanit', 'Vf9SsAlkcFWkg2zyUvwJTE0wcf0FeKAb4uXxpqcU4lvxKy2eQ8yf6Z0IE8FN', '2019-10-08 00:13:44', '2019-11-24 12:59:47');
INSERT INTO `users` VALUES(5, 'harimau88', 'JAKSEL', 'harimau123', 'harihariharimau@gmail.com', '$2y$10$ecIph3rJk19qbtL0NDt6AeGf6tLCMVTZobt02AC/msIvZjTpu7qiC', '72390-2019-10-08-08-21-20.png', 'user', 'oBy2jUJSCLLHACpuV7uswUKCL5zQmioazVRDMkm6cH8nhY1Tke6hCnlJBwh5', '2019-10-08 01:21:20', '2019-12-25 04:12:41');
INSERT INTO `users` VALUES(8, 'ahmad bastomi', 'JAKUT', 'bastomi123', 'ehem@gmail.com', '$2y$10$JI38U9Pi5aAPflcKHhnYJudOT5P3Ju.qT5PS.3aHXuj4OjRERe.9S', '11972-2019-11-19-17-48-40.JPG', 'user', NULL, '2019-11-19 10:48:40', '2019-11-24 12:46:49');
INSERT INTO `users` VALUES(9, 'jajal asek', 'JAKUT', 'jajal88', 'hahah@gmail.com', '$2y$10$K25VgxqXH2.sOFFsG5jwUOZEBvmZBUIuN.vrUzV3EwETTU/pBOsgW', '77947-2019-11-24-19-49-48.JPG', 'user', 'Eaz3LH4c5m6Fnr39i3iAjapFv9mzxYMnydSqBJmKDyey8jhoZWWWgCNh4aDE', '2019-11-24 12:49:48', '2019-11-24 13:01:03');
INSERT INTO `users` VALUES(11, 'Agus Darmanto', 'KECGPT', 'agus33', 'agus@gmail.com', '$2y$10$/OSVuMN.8QjuPfuufpNvxutSR1v8i.RAm/CqvoP0VyRG7hNsJpA1m', NULL, 'kanit', 'YAsVcSHWlQTRdfZYNSoYxsKSl86F7zXArncPVtDTvXLtH3XeGXk0ne7qZMgy', '2019-12-02 23:46:55', '2019-12-02 23:47:45');
INSERT INTO `users` VALUES(12, 'Ridwan', 'KECTMS', 'ridwan33', 'ridwan@gmail.com', '$2y$10$QdUi4Kh1uK4WAiYjWzbWOuCOvLzR5Wu0Rrbutp/TNTbTksu2h0hLW', NULL, 'kanit', 'qmcBkPpxiaO2UJlVOkD0L0K0WjalH1ZknKVIwcOBRuwiIf53YrTadVUFZdnB', '2019-12-03 03:20:48', '2019-12-03 03:21:14');
INSERT INTO `users` VALUES(13, 'Zainuri', 'KELGLD', 'zainuri33', 'zainuri@gmail.com', '$2y$10$3UoUJhxBIw9aO.UsTyYwx.jz2DYy.bngBx7fL8FsheUYdfGRkcVW2', NULL, 'kanit', 'k4S15Jv1MLcBg4cSVkfvFIX7gm3EXZ4EP1i3tYiEB1eAMUws1NNHyeMXK3p4', '2019-12-03 03:22:20', '2019-12-03 03:22:37');
INSERT INTO `users` VALUES(14, 'Jodi Setiawan', 'JAKBAR', 'jodi33', 'jodi@gmail.com', '$2y$10$NvOa5QZTAgZaenA1aHiEnuHxof5uoS/fXsRd0kcT7SvqjP0U3udu.', NULL, 'user', 'yLd1u126BMGuSZGitRROtJKJZNpl7F84BtLNp5WBr1NeEvtv4XHY345iC8XM', '2019-12-03 03:53:13', '2019-12-03 03:53:27');
INSERT INTO `users` VALUES(16, 'RAVI ZULFIKAR', 'JAKUT', 'ravizulfikar', 'ravizulfikar@gmail.com', '$2y$10$beK9HFQa7vNrp1yTvPEZqO2SJcRPBaokWA.TN9EhC4KHCtRe4.baq', '91840-2020-01-05-14-46-32.png', 'user', '4TyKcCalROd7stdkbMJbQk6IiUchgOxNRKQbzGEXdfndwv4eRPx9mM6ac6Ry', '2020-01-03 07:58:20', '2020-01-05 13:31:16');
INSERT INTO `users` VALUES(17, 'ADE KOMARUDIN', 'JAKBAR', 'adekom', 'adekomarudin@gmail.com', '$2y$10$0EaNGjrhfaVzasTnQpPdkutU9k.Z7WuCOFwxaKcYhWjSBgZJATkK.', NULL, 'user', 'FyGS8wmPS8hpYGUiepmd9YesfAOSuidKuHbU1C0l9SY3WZOvW4pVBimbd7sl', '2020-01-05 13:30:29', '2020-01-08 04:57:31');
INSERT INTO `users` VALUES(18, 'ADITYA', 'JAKSEL', 'aditya', 'aditya@gmail.com', '$2y$10$86Ui6hRbrVPe6jFJyPaub.3G.NF2MpUw97pfgR7Kh88iR9R4AMVzu', NULL, 'user', NULL, '2020-01-05 13:31:41', '2020-01-08 04:57:47');
INSERT INTO `users` VALUES(19, 'JODI SETIAWAN', 'JAKBAR', 'jodiset', 'jodisetiawan@gmail.com', '$2y$10$fsLriOG6/ADanXhA7LSxZulbC3lJZuyTEDRg/T/64alYv2s5c6Utm', NULL, 'user', NULL, '2020-01-05 13:32:10', '2020-01-08 04:58:26');
INSERT INTO `users` VALUES(20, 'FIQRY FEBRIANDRI', 'JAKUT', 'fiqryfeb', 'fiqryfebriandri@gmail.com', '$2y$10$XkXKipNSpuIksy4oC1pyvu.9yZVooTww1NM4t22N1P2nnQlCXkGGO', NULL, 'user', NULL, '2020-01-05 13:32:48', '2020-01-08 04:58:43');
INSERT INTO `users` VALUES(21, 'OKI SETYO NUGROHO', 'JAKPUS', 'okisetyo', 'okisetyonugroho@gmail.com', '$2y$10$djIV3ZTP5nwtjJ78Bpry8ee9mSzps6x1d1gItOyrUKiikT95sd1z2', NULL, 'user', NULL, '2020-01-05 13:33:41', '2020-01-08 04:59:10');
INSERT INTO `users` VALUES(22, 'ANITA HERLIANA', 'JAKTIM', 'anitaher', 'anitaherliana@gmail.com', '$2y$10$FptgIQ7fl2lU0IHPBUJXSeA3CGaoDX2CtTQILOF7ugHK4badm6zOa', NULL, 'user', NULL, '2020-01-05 13:34:10', '2020-01-08 04:58:12');
INSERT INTO `users` VALUES(23, 'ALFIAN', 'JAKPUS', 'alfian', 'alfian@gmail.com', '$2y$10$sPhx0F538O8KKNvjfpCnpeoraSvfJcWuFGKlM6nyBdHhR7rqnztTi', NULL, 'user', 'Wun0xZq9e8jjBD5rdrv142ALOuH2JsGslWdmOKVskSElPJRvJ4ckXuoSzCXi', '2020-01-05 13:34:34', '2020-01-08 04:58:00');
INSERT INTO `users` VALUES(24, 'SUDIMAN SYAH WIDODO', 'JAKTIM', 'sudiman', 'sudimansyahwidodo@gmail.com', '$2y$10$A/6px4CTpWIsIcs8cNBgmO89Ljb91nfl5F4w7C/3T3YGwDjHulZX.', NULL, 'user', NULL, '2020-01-05 13:35:00', '2020-01-08 04:59:48');
INSERT INTO `users` VALUES(25, 'Darmawan Apriyadi', NULL, 'darmawan', 'darmawan@gmail.com', '$2y$10$6bFQUa9/xQ2WbhHCHxhFzeItBG.TSD2TOrwMvpsdUW8XHKl.FschW', NULL, 'admin', '0qXkpZjSZCj5sWF0VKlTomvR1M2ulQksIGBekldlEz45FSchAkMU8faOFUGw', '2020-01-05 16:28:40', '2020-01-07 16:22:56');
INSERT INTO `users` VALUES(26, 'Didit Karyadi', NULL, 'kasatpel', 'kasatpel@gmail.com', '$2y$10$1COh.MEXIf.Cevy2W7k4he3lRejwPSz54OjIQw/lcHcQQYTIwT126', NULL, 'admin', 'fqBK1QTk0B35uwTsko7mlcQhOuYDroF0JBBtDX04nN3y8gaGmIcankr6Zjcf', '2020-01-08 15:45:37', '2020-01-08 15:45:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_user_id_foreign` (`user_id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_ip`
--
ALTER TABLE `data_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kode_wilayah`
--
ALTER TABLE `kode_wilayah`
  ADD PRIMARY KEY (`kode_lokasi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_dua`
--
ALTER TABLE `status_dua`
  ADD PRIMARY KEY (`nilai`);

--
-- Indexes for table `tbl_wilayah`
--
ALTER TABLE `tbl_wilayah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_anggota_id_foreign` (`anggota_id`),
  ADD KEY `transaksi_buku_id_foreign` (`buku_id`);

--
-- Indexes for table `troublempp`
--
ALTER TABLE `troublempp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_ip`
--
ALTER TABLE `data_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_wilayah`
--
ALTER TABLE `tbl_wilayah`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `troublempp`
--
ALTER TABLE `troublempp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_buku_id_foreign` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
