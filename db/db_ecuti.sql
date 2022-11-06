-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2022 at 02:34 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ecuti`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_golongan_ruang`
--

CREATE TABLE `tbl_golongan_ruang` (
  `id_gol_ruang` int(11) NOT NULL,
  `nama_gol_ruang` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_golongan_ruang`
--

INSERT INTO `tbl_golongan_ruang` (`id_gol_ruang`, `nama_gol_ruang`) VALUES
(1, 'Tanpa Golongan'),
(2, 'IV/e - Pembina Utama'),
(3, 'IV/d - Pembina Utama Madya'),
(4, 'IV/c - Pembina Utama Muda'),
(5, 'IV/b - Pembina Tingkat I'),
(6, 'IV/a - Pembina'),
(7, 'III/d - Penata Tingkat I'),
(8, 'III/c - Penata'),
(9, 'III/b - Penata Muda Tingkat I'),
(10, 'III/a - Penata Muda'),
(11, 'II/d - Pengatur Tingkat I'),
(12, 'II/c - Pengatur'),
(13, 'II/b - Pengatur Muda Tingkat I'),
(14, 'II/a - Pengatur Muda'),
(15, 'I/d - Juru Tingkat I'),
(16, 'I/c - Juru'),
(17, 'I/b - Juru Muda Tingkat I'),
(18, 'I/a - Juru Muda');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jabatan`
--

CREATE TABLE `tbl_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jabatan`
--

INSERT INTO `tbl_jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'Ketua Pengadilan Banding Tipe A'),
(2, 'Ketua Pengadilan Tingkat Pertama Klas IA Khusus'),
(3, 'Sekretaris Tingkat Pertama Klas IA Khusus, Sekretaris'),
(4, 'Panitera Tingkat Pertama Klas IA Khusus, Panitera'),
(5, 'Wakil Ketua Pengadilan Tingkat Pertama Klas IA Khusus'),
(6, 'Panitera Muda Tingkat Pertama Klas IA Khusus, Panitera Muda Perdata'),
(7, 'Panitera Muda Tingkat Pertama Klas IA Khusus, Panitera Muda Hukum'),
(8, 'Panitera Muda Tingkat Pertama Klas IA Khusus, Panitera Muda Pidana'),
(9, 'Panitera Muda Tingkat Pertama Klas IA Khusus, Panitera Muda Khusus Perikanan'),
(10, 'Hakim Tingkat Pertama'),
(11, 'Kepala Bagian Umum'),
(12, 'Hakim Ad Hoc Perikanan'),
(13, 'Kepala Sub Bagian Perencanaan Teknologi Informasi, Dan Pelaporan'),
(14, 'Kepala Sub Bagian Kepegawaian, Organisasi, Dan Tata Laksana'),
(15, 'Kepala Sub Bagian Tata Usaha Dan Keuangan'),
(16, 'Panitera Pengganti'),
(17, 'Juru Sita'),
(18, 'Pengadministrasi Registrasi Perkara, Panitera Muda Hukum'),
(19, 'Analis Perkara Peradilan, Panitera Muda Perdata'),
(20, 'Analis Perkara Peradilan, Panitera Muda Pidana'),
(21, 'Verifikator Keuangan, Sub Bagian Tata Usaha Dan Keuangan'),
(22, 'Pengadministrasi Hukum, Panitera Muda Perdata'),
(23, 'Pengadministrasi Registrasi Perkara, Panitera Muda Pidana'),
(24, 'Pengelola Perkara, Panitera Muda Pidana'),
(25, 'Pemelihara Sarana Dan Prasarana, Sub Bagian Tata Usaha Dan Keuangan'),
(26, 'Pengadministrasi Hukum, Panitera Muda Pidana'),
(27, 'Pengadministrasi Hukum, Panitera Muda Hukum'),
(28, 'Pengadministrasi Persuratan, Sub Bagian Tata Usaha Dan Keuangan'),
(29, 'Juru Sita Pengganti');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis_pegawai`
--

CREATE TABLE `tbl_jenis_pegawai` (
  `id_jenis_pegawai` int(11) NOT NULL,
  `nama_jenis_pegawai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jenis_pegawai`
--

INSERT INTO `tbl_jenis_pegawai` (`id_jenis_pegawai`, `nama_jenis_pegawai`) VALUES
(1, 'Pejabat Negara'),
(2, 'PNS'),
(3, 'Adhoc'),
(4, 'CPNS'),
(5, 'Honorer'),
(6, 'Militer'),
(7, 'Polri');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_status`
--

CREATE TABLE `tbl_status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_status`
--

INSERT INTO `tbl_status` (`id_status`, `status`) VALUES
(1, 'Aktif'),
(2, 'Tidak Aktif'),
(3, 'Blokir');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit_kerja`
--

CREATE TABLE `tbl_unit_kerja` (
  `id_unit_kerja` int(11) NOT NULL,
  `nama_unit_kerja` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_unit_kerja`
--

INSERT INTO `tbl_unit_kerja` (`id_unit_kerja`, `nama_unit_kerja`) VALUES
(1, 'Kosong (-)'),
(2, 'Pengadilan Tinggi Jakarta'),
(3, 'Ketua'),
(4, 'Wakil Ketua'),
(5, 'Hakim'),
(6, 'Hakim Ad Hoc'),
(7, 'Sekretaris'),
(8, 'Panitera'),
(9, 'Bagian Umum'),
(10, 'Kepaniteraan Pidana'),
(11, 'Kepaniteraan Hukum'),
(12, 'Kepaniteraan Perdata'),
(13, 'Kepaniteraan Perikanan'),
(14, 'Tata Usaha dan Keuangan'),
(15, 'Perencanaan, TI dan Pelaporan'),
(16, 'Kepegawaian, Organisasi dan Tatalaksana'),
(17, 'Panitera Pengganti'),
(18, 'Juru Sita');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nip` char(19) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `jenis_pegawai_id` int(11) NOT NULL,
  `gol_ruang_id` int(11) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `no_telp` varchar(12) DEFAULT NULL,
  `unit_kerja_id` int(11) NOT NULL,
  `jabatan_id` int(11) NOT NULL,
  `photo` varchar(19) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nip`, `nama_lengkap`, `jenis_pegawai_id`, `gol_ruang_id`, `email`, `no_telp`, `unit_kerja_id`, `jabatan_id`, `photo`, `password`, `role_id`, `status_id`) VALUES
(1, '195604051982031005', 'DR.H. Soedarmadji. S.H. M.Hum', 1, 2, NULL, NULL, 2, 1, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 2, 1),
(2, '196203021992121001', 'Tumpal Sagala, S.H., M.H.', 1, 3, NULL, NULL, 3, 2, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 2, 1),
(3, '196810071992121001', 'H. Winarno, S.H., M.H.', 1, 3, NULL, NULL, 4, 5, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(4, '196410081986032001', 'Rosni, S.Sos., M.Pd.', 2, 4, NULL, NULL, 7, 3, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 2, 1),
(5, '196411221985031005', 'Suharis, S.H., M.M.', 2, 5, NULL, NULL, 8, 4, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 2, 1),
(6, '197306161993031004', 'I Gede Renasa, S.H., M.H.', 2, 6, NULL, NULL, 12, 6, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 3, 1),
(7, '196709041989032001', 'Lindawati Serikit, S.H., M.H.', 2, 6, NULL, NULL, 11, 7, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 3, 1),
(8, '198411242009041006', 'Wahyu Gunawan, S.H., M.H.', 2, 7, NULL, NULL, 10, 8, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 3, 1),
(9, '197511162000031002', 'Agus Sofyan, S.H.', 2, 7, NULL, NULL, 13, 9, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 3, 1),
(10, '196112151988032004', 'Erly Soelistyarini, S.H., M.Hum.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(11, '196410151992121001', 'Agung Purbantoro, S.H., M.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(12, '196305231992121001', 'Boko, S.H., M.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(13, '195912211987031007', 'Togi Pardede, S.H., M.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(14, '196412131985031001', 'Suratno, S.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(15, '196511111992121001', 'Purnawan Narsongko, S.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(16, '196107091988031002', 'R Rudi Kindarto, S.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(17, '196303041992121001', 'Mahmuriadin, S.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(18, '196701091992121001', 'Hotnar Simarmata, S.H., M.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(19, '196308061994031005', 'Maryono, S.H., M.Hum.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(20, '196405021992121001', 'H.  Sutaji, S.H., M.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(21, '196503251992121001', 'Tumpanuli Marbun, S.H., M.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(22, '196811181992121001', 'Rianto Adam Pontoh, S.H., M.Hum.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(23, '195901011986121001', 'Lebanus Sinurat, S.H., M.H.', 1, 3, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(24, '196605151996031004', 'Srutopo Mulyono, S.H.', 1, 4, NULL, NULL, 5, 10, NULL, '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(25, '196512311987031032', 'Maskur, S.H.', 1, 4, '', '', 5, 10, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(26, '196708311996031001', 'Rudi Fakhrudin Abbas, S.H.', 1, 4, '', '', 5, 10, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(27, '197006061996031005', 'Budiarto, S.H.', 1, 4, '', '', 5, 10, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(28, '196808291996031002', 'Gede Sunarjana, SH,MH', 1, 4, '', '', 5, 10, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(29, '196904301991031002', 'Edi Junaedi, S.H., M.H.', 1, 4, '', '', 5, 10, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(30, '196910221996031001', 'Aloysius Priharnoto Bayuaji, S.H., M.H.', 1, 4, '', '', 5, 10, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(31, '197205251999031003', 'Dian Erdianto, S.H., M.H.', 1, 5, '', '', 5, 10, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(32, '197707022000121003', 'Deny Riswanto, S.H., M.H.', 1, 5, '', '', 5, 10, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(33, '197410122000031001', 'Benny Octavianus, S.H., M.H.', 1, 5, '', '', 5, 10, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(34, '197805192009122004', 'Yustisia Anas, S.E., M.H.', 2, 7, '', '', 5, 10, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 2, 1),
(35, '1955110902201210016', 'Drs Sutardjo, MSi,.', 3, 1, '', '', 6, 12, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(36, '1957062502201210007', 'Ganjil Sunarto, S.H., M.M.', 3, 1, '', '', 6, 12, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(37, '1976100802202002014', 'Hendra Adi Pramono, S.H., M.H.', 3, 1, '', '', 6, 12, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(38, '197612182006042002', 'Yuyun Rusmulianty, S.E., M.M', 2, 6, '', '', 15, 13, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 3, 1),
(39, '197806122006042003', 'Yuniasih Windadi, S.E.', 2, 7, '', '', 16, 14, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 3, 1),
(40, '198411262012121002', 'H. Abdul Hadi, S.H., M.H.', 2, 8, '', '', 14, 15, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 3, 1),
(41, '197303142001122001', 'Umi Parmini, S.H.,M.H', 2, 4, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 2, 1),
(42, '196212071985031007', 'Parmin, S.H., M.H.', 2, 4, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(43, '196412201987031001', 'Johnson Ricardo Halomoan M, S.H., M.H.', 2, 4, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(44, '196605021986022001', 'Isnaeni Budi Astuti, S.H., M.H.', 2, 4, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(45, '196806231989032001', 'Rustiani, S.H., M.H.', 2, 4, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(46, '197305172006041002', 'Ari Palti Siregar, S.T., S.H., M.H.', 2, 4, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(47, '198011192006032001', 'Asih Noviasari, S.H., M.H.', 2, 4, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(48, '198606262009121002', 'Albert Costan Immanuel Simamora, S.H., M.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(49, '197406192002122003', 'Warih Anjari, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(50, '196902261993031001', 'Budhyawan Kristianto, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(51, '196310311985032002', 'Sukartini, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(52, '196404201987032001', 'Yeti Sulistiati, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(53, '196507091988031001', 'Doly Siregar, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(54, '196606191992031005', 'Benedictus Pereto Ledjab, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(55, '196710111993031007', 'Budi Utoyo, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(56, '196808111989031003', 'Sapto Suprio, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(57, '196905071993031003', 'Juhri, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(58, '197409071998031005', 'Andri Herminanto, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(59, '197704052009122001', 'Hariyanti Paelori, S.H., M.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(60, '197806252002121003', 'Bobi Rahman Siahaan, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(61, '198208312007042001', 'Anita Purwita Sari, SH, MH', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(62, '198608072011012019', 'Mellisa Harahap, S.H., M.Kn.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(63, '198701022009122005', 'Efa Cendrakasih, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(64, '196904171999031004', 'Scharley Polnaya, S.H.', 2, 7, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(65, '197009201992031003', 'David Sidabalok', 2, 8, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(66, '196308271985031005', 'Trisnadi, Sm.Hk.', 2, 8, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(67, '197904192003121002', 'Hendra Gunawan, S.H.', 2, 8, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(68, '198408212006041001', 'Muhammad Ihsan, S.H.', 2, 8, '', '', 17, 16, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(69, '198207022006041001', 'H. Reki Yoza Azer, S.E., M.H.', 2, 6, '', '', 18, 17, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(70, '198001252008052001', 'Ani Khairani Misraini, S.H.', 2, 7, '', '', 18, 18, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(71, '197708262003122004', 'Ariany, S.H.', 2, 8, '', '', 18, 17, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(72, '198602032006041002', 'MICHAEL DANANG DWI HENDRA, S.H. M.H', 2, 8, '', '', 18, 17, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(73, '198708032012121002', 'Esron Partogi, S.H.', 2, 8, '', '', 12, 19, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(74, '199504132022032011', 'Ima Fatimah, S.H', 2, 10, '', '', 10, 20, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(75, '199512162020122009', 'Zahratul Husna, S.E.', 2, 10, '', '', 14, 21, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(76, '196503062014081001', 'Trimada', 2, 12, '', '', 12, 22, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(77, '199209182020121004', 'Rachmat Saputra, A.Md.', 2, 12, '', '', 12, 23, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(78, '199810072022032003', 'Latansa Bela Dinna, A.Md', 2, 12, '', '', 12, 24, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(79, '199809162020121003', 'Cornelius Sidabutar, A.Md.T.', 2, 12, '', '', 14, 25, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(80, '198611272014081001', 'Kamaludin', 2, 14, '', '', 10, 26, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(81, '197109262014081002', 'Sukhadin', 2, 16, '', '', 10, 26, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(82, '196705142012121003', 'Sunaji S', 2, 16, '', '', 11, 27, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(83, '196501042014081001', 'Prihono Budi Pranyoto', 2, 16, '', '', 14, 28, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(84, '196502081984111001', 'Legito, S.H.', 2, 7, '', '', 10, 29, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(85, '198405312009042010', 'Dwi Putri Wijayanthi, S.E.', 2, 7, '', '', 16, 29, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(86, '197302212006041001', 'Sudirman, S.H.', 2, 8, '', '', 13, 29, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(87, '198508162009122006', 'Giventi Handi, S.E., M.H', 2, 8, '', '', 14, 29, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(88, '196702121988031002', 'Supar', 2, 9, '', '', 12, 29, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(89, '197607111999031002', 'Juli Gunawan', 2, 9, '', '', 10, 29, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(90, '198807292009041001', 'Ichwan Nurmansyah', 2, 11, '', '', 14, 29, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(91, '197506172014081001', 'Sartono', 2, 12, '', '', 10, 29, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(92, '198006282014081001', 'Robert Charles', 2, 12, '', '', 11, 29, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1),
(93, '196812022012121002', 'Dongo Sabar Sutrisno', 2, 13, '', '', 10, 29, '', '$2y$10$VwMFTcAo1AzUY3nzqqy.zeBkEQkrcavKEokUGyWlCzDgACW0Al7.y', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_role`
--

CREATE TABLE `tbl_user_role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_role`
--

INSERT INTO `tbl_user_role` (`id_role`, `role`) VALUES
(1, 'Administrator'),
(2, 'Pejabat Berwenang'),
(3, 'Atasan Langsung'),
(4, 'Pegawai');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_token`
--

CREATE TABLE `tbl_user_token` (
  `id_user_token` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_golongan_ruang`
--
ALTER TABLE `tbl_golongan_ruang`
  ADD PRIMARY KEY (`id_gol_ruang`);

--
-- Indexes for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `tbl_jenis_pegawai`
--
ALTER TABLE `tbl_jenis_pegawai`
  ADD PRIMARY KEY (`id_jenis_pegawai`);

--
-- Indexes for table `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tbl_unit_kerja`
--
ALTER TABLE `tbl_unit_kerja`
  ADD PRIMARY KEY (`id_unit_kerja`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `jenis_pegawai_id` (`jenis_pegawai_id`),
  ADD KEY `gol_ruang_id` (`gol_ruang_id`),
  ADD KEY `unit_kerja_id` (`unit_kerja_id`),
  ADD KEY `jabatan_id` (`jabatan_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `tbl_user_token`
--
ALTER TABLE `tbl_user_token`
  ADD PRIMARY KEY (`id_user_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_golongan_ruang`
--
ALTER TABLE `tbl_golongan_ruang`
  MODIFY `id_gol_ruang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_jabatan`
--
ALTER TABLE `tbl_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_jenis_pegawai`
--
ALTER TABLE `tbl_jenis_pegawai`
  MODIFY `id_jenis_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_unit_kerja`
--
ALTER TABLE `tbl_unit_kerja`
  MODIFY `id_unit_kerja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tbl_user_role`
--
ALTER TABLE `tbl_user_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_user_token`
--
ALTER TABLE `tbl_user_token`
  MODIFY `id_user_token` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`gol_ruang_id`) REFERENCES `tbl_golongan_ruang` (`id_gol_ruang`),
  ADD CONSTRAINT `tbl_user_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `tbl_status` (`id_status`),
  ADD CONSTRAINT `tbl_user_ibfk_3` FOREIGN KEY (`jabatan_id`) REFERENCES `tbl_jabatan` (`id_jabatan`),
  ADD CONSTRAINT `tbl_user_ibfk_4` FOREIGN KEY (`role_id`) REFERENCES `tbl_user_role` (`id_role`),
  ADD CONSTRAINT `tbl_user_ibfk_5` FOREIGN KEY (`unit_kerja_id`) REFERENCES `tbl_unit_kerja` (`id_unit_kerja`),
  ADD CONSTRAINT `tbl_user_ibfk_6` FOREIGN KEY (`jenis_pegawai_id`) REFERENCES `tbl_jenis_pegawai` (`id_jenis_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
