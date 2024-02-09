-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2023 at 12:08 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kalijurang`
--

-- --------------------------------------------------------

--
-- Table structure for table `ref_agama`
--

CREATE TABLE `ref_agama` (
  `id_agama` int(5) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `is_diakui` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_agama`
--

INSERT INTO `ref_agama` (`id_agama`, `deskripsi`, `is_diakui`) VALUES
(0, 'Tidak Diketahui', 'Y'),
(1, 'Islam', 'Y'),
(2, 'Kristen', 'Y'),
(3, 'Katholik', 'Y'),
(4, 'Hindu', 'Y'),
(5, 'Budha', 'Y'),
(6, 'Konghucu', 'Y'),
(7, 'Aliran Kepercayaan Kepada Tuhan YME', 'N'),
(8, 'Aliran Kepercayaan Lainnya', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `ref_alasan_pindah`
--

CREATE TABLE `ref_alasan_pindah` (
  `id_alasan_pindah` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_alasan_pindah`
--

INSERT INTO `ref_alasan_pindah` (`id_alasan_pindah`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tidak Diketahui');

-- --------------------------------------------------------

--
-- Table structure for table `ref_desa`
--

CREATE TABLE `ref_desa` (
  `id_desa` int(10) NOT NULL,
  `kode_desa_bps` char(20) NOT NULL,
  `kode_desa_kemendagri` char(20) NOT NULL,
  `nama_desa` varchar(50) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_kecamatan` int(10) NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL,
  `alamat_desa` text DEFAULT NULL,
  `kode_pos` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_desa`
--

INSERT INTO `ref_desa` (`id_desa`, `kode_desa_bps`, `kode_desa_kemendagri`, `nama_desa`, `luas_wilayah`, `id_kecamatan`, `id_penduduk`, `alamat_desa`, `kode_pos`) VALUES
(0, '0', '0', 'Tidak Diketahui', 0, 0, NULL, '0', '0'),
(1, '28.14.26.3', '28.14.26.3', 'Kalijurang', 131, 1, 8, 'Jl. Kalijurang ', '52271');

-- --------------------------------------------------------

--
-- Table structure for table `ref_difabilitas`
--

CREATE TABLE `ref_difabilitas` (
  `id_difabilitas` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_difabilitas`
--

INSERT INTO `ref_difabilitas` (`id_difabilitas`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tidak Cacat'),
(2, 'Cacat Fisik'),
(3, 'Cacat Netra / Buta'),
(4, 'Cacat Rungu / Wicara'),
(5, 'Cacat Mental / Jiwa'),
(6, 'Cacat Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `ref_dusun`
--

CREATE TABLE `ref_dusun` (
  `id_dusun` int(10) NOT NULL,
  `kode_dusun_bps` char(20) NOT NULL,
  `kode_dusun_kemendagri` char(20) NOT NULL,
  `nama_dusun` varchar(50) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_desa` int(10) NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_dusun`
--

INSERT INTO `ref_dusun` (`id_dusun`, `kode_dusun_bps`, `kode_dusun_kemendagri`, `nama_dusun`, `luas_wilayah`, `id_desa`, `id_penduduk`) VALUES
(0, '0', '0', 'Tidak Diketahui', 0, 0, NULL),
(1, '28.14.26.3.1', '28.14.26.3.1', 'Dusun I', 25, 1, 35),
(2, '28.14.26.3.2', '28.14.26.3.2', 'Dusun II', 19, 1, 41),
(3, '28.14.26.3.3', '28.14.26.3.3', 'Dusun III', 34, 1, 48),
(4, '28.14.26.3.4', '28.14.26.3.4', 'Dusun IV', 12, 1, 49),
(5, '28.14.26.3.5', '28.14.26.3.5', 'Dusun V', 10, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `ref_goldar`
--

CREATE TABLE `ref_goldar` (
  `id_goldar` int(10) NOT NULL,
  `deskripsi` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_goldar`
--

INSERT INTO `ref_goldar` (`id_goldar`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'A'),
(2, 'A+'),
(3, 'A-'),
(4, 'B'),
(5, 'B+'),
(6, 'B-'),
(7, 'AB'),
(8, 'AB+'),
(9, 'AB-'),
(10, 'O'),
(11, 'O+'),
(12, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `ref_jabatan`
--

CREATE TABLE `ref_jabatan` (
  `id_jabatan` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_jabatan`
--

INSERT INTO `ref_jabatan` (`id_jabatan`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Kepala Desa'),
(3, 'Sekretaris Desa'),
(5, 'Kaur Keuangan Desa'),
(6, 'Kaur TU & Umum Desa'),
(7, 'Kaur Perencanaan Desa'),
(8, 'Kasi Pemerintahan Desa'),
(9, 'Kasi Kesejahteraan Desa'),
(10, 'Kasi Pelayanan Desa'),
(11, 'Kepala Dusun I'),
(12, 'Kepala Dusun II'),
(13, 'Kepala Dusun III'),
(14, 'Kepala Dusun IV'),
(15, 'Kepala Dusun V');

-- --------------------------------------------------------

--
-- Table structure for table `ref_jenis_pindah`
--

CREATE TABLE `ref_jenis_pindah` (
  `id_jenis_pindah` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_jenis_pindah`
--

INSERT INTO `ref_jenis_pindah` (`id_jenis_pindah`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tidak Diketahui');

-- --------------------------------------------------------

--
-- Table structure for table `ref_jen_kel`
--

CREATE TABLE `ref_jen_kel` (
  `id_jen_kel` int(2) NOT NULL,
  `deskripsi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_jen_kel`
--

INSERT INTO `ref_jen_kel` (`id_jen_kel`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Laki - laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `ref_kab_kota`
--

CREATE TABLE `ref_kab_kota` (
  `id_kab_kota` int(10) NOT NULL,
  `kode_kab_kota_bps` char(10) NOT NULL,
  `kode_kab_kota_kemendagri` char(10) NOT NULL,
  `nama_kab_kota` varchar(50) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_provinsi` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kab_kota`
--

INSERT INTO `ref_kab_kota` (`id_kab_kota`, `kode_kab_kota_bps`, `kode_kab_kota_kemendagri`, `nama_kab_kota`, `luas_wilayah`, `id_provinsi`) VALUES
(0, '0', '0', 'Tidak Diketahui', 0, 0),
(1, '28.14', '28.14', 'Brebes', 7485, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ref_kecamatan`
--

CREATE TABLE `ref_kecamatan` (
  `id_kecamatan` int(10) NOT NULL,
  `kode_kecamatan_bps` char(10) NOT NULL,
  `kode_kecamatan_kemendagri` char(10) NOT NULL,
  `nama_kecamatan` varchar(50) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_kab_kota` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kecamatan`
--

INSERT INTO `ref_kecamatan` (`id_kecamatan`, `kode_kecamatan_bps`, `kode_kecamatan_kemendagri`, `nama_kecamatan`, `luas_wilayah`, `id_kab_kota`) VALUES
(0, '0', '0', 'Tidak Diketahui', 0, 0),
(1, '28.14.26', '28.14.26', 'Tonjong', 2380, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ref_kelas_sosial`
--

CREATE TABLE `ref_kelas_sosial` (
  `id_kelas_sosial` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kelas_sosial`
--

INSERT INTO `ref_kelas_sosial` (`id_kelas_sosial`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Kaya'),
(2, 'Sedang'),
(3, 'Miskin'),
(4, 'Sangat Miskin');

-- --------------------------------------------------------

--
-- Table structure for table `ref_kewarganegaraan`
--

CREATE TABLE `ref_kewarganegaraan` (
  `id_kewarganegaraan` int(15) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kewarganegaraan`
--

INSERT INTO `ref_kewarganegaraan` (`id_kewarganegaraan`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'INDONESIA'),
(2, 'WARGA NEGARA ASING'),
(3, 'DWIKEWARGANEGARAAN');

-- --------------------------------------------------------

--
-- Table structure for table `ref_klasifikasi_pindah`
--

CREATE TABLE `ref_klasifikasi_pindah` (
  `id_klasifikasi_pindah` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_klasifikasi_pindah`
--

INSERT INTO `ref_klasifikasi_pindah` (`id_klasifikasi_pindah`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tidak Diketahui');

-- --------------------------------------------------------

--
-- Table structure for table `ref_kode_surat`
--

CREATE TABLE `ref_kode_surat` (
  `kode_surat` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `supra_kode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kode_surat`
--

INSERT INTO `ref_kode_surat` (`kode_surat`, `deskripsi`, `supra_kode`) VALUES
(1, 'Umum', '0'),
(2, 'Pemerintah', '100'),
(3, 'Politik', '200'),
(4, 'Keamanan / Ketertiban', '300'),
(5, 'Kesejahteraan Rakyat', '400'),
(6, 'Perekonomian', '500'),
(7, 'Pekerjaan Umum dan Ketenagakerjaan', '600'),
(8, 'Pengawasan', '700'),
(9, 'Kepegawaian', '800'),
(10, 'Keuangan', '900'),
(11, 'Kelahiran', '1000'),
(13, 'Kematian', '1100');

-- --------------------------------------------------------

--
-- Table structure for table `ref_kompetensi`
--

CREATE TABLE `ref_kompetensi` (
  `id_kompetensi` int(5) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kompetensi`
--

INSERT INTO `ref_kompetensi` (`id_kompetensi`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Kesehatan'),
(2, 'Profesional Bangunan'),
(3, 'Profesional Kelistrikan'),
(4, 'Profesional Pendidikan'),
(5, 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `ref_kontrasepsi`
--

CREATE TABLE `ref_kontrasepsi` (
  `id_kontrasepsi` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_kontrasepsi`
--

INSERT INTO `ref_kontrasepsi` (`id_kontrasepsi`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Pil'),
(2, 'Suntik'),
(3, 'IUD'),
(4, 'Kondom'),
(5, 'Implant'),
(6, 'MOP'),
(7, 'MOW');

-- --------------------------------------------------------

--
-- Table structure for table `ref_pangkat_gol`
--

CREATE TABLE `ref_pangkat_gol` (
  `id_pangkat_gol` int(10) NOT NULL,
  `deskripsi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_pangkat_gol`
--

INSERT INTO `ref_pangkat_gol` (`id_pangkat_gol`, `deskripsi`) VALUES
(0, '-'),
(1, '3A'),
(2, '3B');

-- --------------------------------------------------------

--
-- Table structure for table `ref_pekerjaan`
--

CREATE TABLE `ref_pekerjaan` (
  `id_pekerjaan` int(15) NOT NULL,
  `deskripsi` varchar(75) NOT NULL,
  `deskripsi_singkat` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_pekerjaan`
--

INSERT INTO `ref_pekerjaan` (`id_pekerjaan`, `deskripsi`, `deskripsi_singkat`) VALUES
(0, 'Tidak Diketahui', NULL),
(1, 'BELUM/TIDAK BEKERJA', ''),
(2, 'MENGURUS RUMAH TANGGA', ''),
(3, 'PELAJAR/MAHASISWA', ''),
(4, 'PENSIUNAN', ''),
(5, 'PEGAWAI NEGERI SIPIL (PNS)', ''),
(6, 'TENTARA NASIONAL INDONESIA (TNI)', ''),
(7, 'KEPOLISIAN RI ', ''),
(8, 'PERDAGANGAN', ''),
(9, 'PETANI/PEKEBUN', ''),
(10, 'PETERNAK', ''),
(11, 'NELAYAN/PERIKANAN', ''),
(12, 'INDUSTRI', ''),
(13, 'KONSTRUKSI', ''),
(14, 'TRANSPORTASI', ''),
(15, 'KARYAWAN SWASTA', ''),
(16, 'KARYAWAN BUMN', ''),
(17, 'KARYAWAN HONORER', ''),
(18, 'BURUH HARIAN LEPAS', ''),
(19, 'BURUH TANI/PERKEBUNAN', ''),
(20, 'BURUH NELAYAN/PERIKANAN', ''),
(21, 'BURUH PETERNAKAN', ''),
(22, 'PEMBANTU RUMAH TANGGA', ''),
(23, 'TUKANG CUKUR', ''),
(24, 'TUKANG BATU', ''),
(25, 'TUKANG LISTRIK', ''),
(26, 'TUKANG KAYU', ''),
(27, 'TUKANG SOL SEPATU', ''),
(28, 'TUKANG LAS/PANDAI BESI', ''),
(29, 'TUKANG JAIT', ''),
(30, 'TUKANG GIGI', ''),
(31, 'PENATA RIAS', ''),
(32, 'PENATA BUSANA', ''),
(33, 'PENATA RAMBUT', ''),
(34, 'MEKANIK', ''),
(35, 'SENIMAN', ''),
(36, 'TABIB', ''),
(37, 'PARAJI', ''),
(38, 'PERANCANG BUSANA', ''),
(39, 'PENTERJEMAH', ''),
(40, 'IMAM MASJID', ''),
(41, 'PENDETA', ''),
(42, 'PASTOR', ''),
(43, 'WARTAWAN', ''),
(44, 'USTADZ/MUBALIGH', ''),
(45, 'JURU MASAK', ''),
(46, 'PROMOTOR ACARA', ''),
(47, 'ANGGOTA DPR RI', ''),
(48, 'ANGGOTA DPD', ''),
(49, 'ANGGOTA BPK', ''),
(50, 'PRESIDEN', ''),
(51, 'WAKIL PRESIDEN', ''),
(52, 'ANGGOTA MAHKAMAH KONSTITUSI', ''),
(53, 'DUTA BESAR', ''),
(54, 'GUBERNUR', ''),
(55, 'WAKIL GUBERNUR', ''),
(56, 'BUPATI', ''),
(57, 'WAKIL BUPATI', ''),
(58, 'WALIKOTA', ''),
(59, 'WAKIL WALIKOTA', ''),
(60, 'ANGGOTA DPRD PROP', ''),
(61, 'ANGGOTA DPRD KAB. KOTA', ''),
(62, 'DOSEN', ''),
(63, 'GURU', ''),
(64, 'PILOT', ''),
(65, 'PENGACARA', ''),
(66, 'NOTARIS', ''),
(67, 'ARSITEK', ''),
(68, 'AKUNTAN', ''),
(69, 'KONSULTAN', ''),
(70, 'DOKTER', ''),
(71, 'BIDAN', ''),
(72, 'PERAWAT', ''),
(73, 'APOTEKER', ''),
(74, 'PSIKIATER/PSIKOLOG', ''),
(75, 'PENYIAR TELEVISI', ''),
(76, 'PENYIAR RADIO', ''),
(77, 'PELAUT', ''),
(78, 'PENELITI', ''),
(79, 'SOPIR', ''),
(80, 'PIALANG', ''),
(81, 'PARANORMAL', ''),
(82, 'PEDAGANG', ''),
(83, 'PERANGKAT DESA', ''),
(84, 'KEPALA DESA', ''),
(85, 'BIARAWATI', ''),
(86, 'WIRASWASTA', ''),
(87, 'BURUH MIGRAN', '');

-- --------------------------------------------------------

--
-- Table structure for table `ref_pekerjaan_ped`
--

CREATE TABLE `ref_pekerjaan_ped` (
  `id_pekerjaan_ped` int(10) NOT NULL,
  `deskripsi` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_pekerjaan_ped`
--

INSERT INTO `ref_pekerjaan_ped` (`id_pekerjaan_ped`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tidak Diketahui'),
(2, 'Petani'),
(3, 'Pedagang'),
(4, 'Petani Kebun'),
(5, 'Jasa'),
(6, 'Seniman');

-- --------------------------------------------------------

--
-- Table structure for table `ref_pelapor`
--

CREATE TABLE `ref_pelapor` (
  `id_pelapor` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_pelapor`
--

INSERT INTO `ref_pelapor` (`id_pelapor`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Ayah'),
(2, 'Ibu'),
(3, 'Kakak'),
(4, 'Adik'),
(5, 'Kakek'),
(6, 'Nenek'),
(7, 'Paman'),
(8, 'Tante'),
(9, 'Keponakan'),
(10, 'Sepupu'),
(11, 'Kerabat');

-- --------------------------------------------------------

--
-- Table structure for table `ref_pendidikan`
--

CREATE TABLE `ref_pendidikan` (
  `id_pendidikan` int(15) NOT NULL,
  `deskripsi` varchar(75) NOT NULL,
  `is_bsm` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_pendidikan`
--

INSERT INTO `ref_pendidikan` (`id_pendidikan`, `deskripsi`, `is_bsm`) VALUES
(0, 'Tidak Diketahui', 'N'),
(1, 'Tidak dapat membaca', 'N'),
(2, 'Tidak Pernah Sekolah', 'N'),
(3, 'Tidak Tamat SD/Sederajat', 'N'),
(4, 'Tamat SD/Sederajat', 'N'),
(5, 'Tamat SMP/Sederajat', 'N'),
(6, 'Tamat SMA/Sederajat', 'N'),
(7, 'Tamat D-3/Sederajat', 'N'),
(8, 'Tamat S-1/Sederajat', 'N'),
(9, 'Tamat S-2/Sederajat', 'N'),
(10, 'Tamat S-3/Sederajat', 'N'),
(11, 'Belum Masuk TK/PAUD ', 'N'),
(12, 'Sedang TK/PAUD', 'N'),
(13, 'Sedang SD/Sederajat', 'Y'),
(14, 'Sedang SMP/Sederajat', 'Y'),
(15, 'Sedang SMA/Sederajat', 'Y'),
(16, 'Sedang D-3/Sederajat', 'N'),
(17, 'Sedang S-1/Sederajat', 'N'),
(18, 'Sedang S-2/Sederajat', 'N'),
(19, 'Sedang S-3/Sederajat', 'N'),
(20, 'Putus Sekolah', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `ref_provinsi`
--

CREATE TABLE `ref_provinsi` (
  `id_provinsi` int(10) NOT NULL,
  `kode_provinsi_bps` char(10) NOT NULL,
  `kode_provinsi_kemendagri` char(10) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL,
  `luas_wilayah` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_provinsi`
--

INSERT INTO `ref_provinsi` (`id_provinsi`, `kode_provinsi_bps`, `kode_provinsi_kemendagri`, `nama_provinsi`, `luas_wilayah`) VALUES
(0, '0', '0', 'Tidak Diketahui', 0),
(1, '28', '28', 'Jawa Tengah', 31859);

-- --------------------------------------------------------

--
-- Table structure for table `ref_rt`
--

CREATE TABLE `ref_rt` (
  `id_rt` int(10) NOT NULL,
  `nomor_rt` char(10) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_rw` int(10) NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_rt`
--

INSERT INTO `ref_rt` (`id_rt`, `nomor_rt`, `luas_wilayah`, `id_rw`, `id_penduduk`) VALUES
(0, '-', 0, 0, NULL),
(1, '01', 3, 1, 30),
(2, '02', 2, 1, 10),
(3, '01', 5, 2, NULL),
(4, '02', 3, 2, NULL),
(5, '01', 3, 3, NULL),
(6, '02', 3, 3, NULL),
(7, '01', 4, 4, 9),
(8, '02', 4, 4, 8),
(9, '01', 8, 6, NULL),
(10, '01', 6, 7, NULL),
(11, '02', 5, 7, NULL),
(12, '01', 7, 8, NULL),
(13, '02', 6, 8, NULL),
(14, '03', 6, 3, NULL),
(15, '01', 6, 10, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_rw`
--

CREATE TABLE `ref_rw` (
  `id_rw` int(10) NOT NULL,
  `nomor_rw` char(10) NOT NULL,
  `luas_wilayah` float NOT NULL,
  `id_dusun` int(10) NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_rw`
--

INSERT INTO `ref_rw` (`id_rw`, `nomor_rw`, `luas_wilayah`, `id_dusun`, `id_penduduk`) VALUES
(0, '-', 0, 0, NULL),
(1, '01', 5, 1, 35),
(2, '02', 8, 1, NULL),
(3, '03', 6, 1, NULL),
(4, '01', 8, 2, 41),
(6, '01', 12, 4, 49),
(7, '01', 11, 3, 48),
(8, '02', 13, 3, NULL),
(9, '02', 10, 4, NULL),
(10, '01', 7, 5, 50),
(11, '02', 6, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ref_status_kawin`
--

CREATE TABLE `ref_status_kawin` (
  `id_status_kawin` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_status_kawin`
--

INSERT INTO `ref_status_kawin` (`id_status_kawin`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Belum Kawin'),
(2, 'Kawin'),
(3, 'Cerai Hidup'),
(4, 'Cerai Mati');

-- --------------------------------------------------------

--
-- Table structure for table `ref_status_keluarga`
--

CREATE TABLE `ref_status_keluarga` (
  `id_status_keluarga` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_status_keluarga`
--

INSERT INTO `ref_status_keluarga` (`id_status_keluarga`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Kepala Keluarga'),
(2, 'Suami'),
(3, 'Istri'),
(4, 'Anak'),
(5, 'Menantu'),
(6, 'Mertua'),
(7, 'Famili Lain');

-- --------------------------------------------------------

--
-- Table structure for table `ref_status_penduduk`
--

CREATE TABLE `ref_status_penduduk` (
  `id_status_penduduk` int(5) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_status_penduduk`
--

INSERT INTO `ref_status_penduduk` (`id_status_penduduk`, `deskripsi`) VALUES
(0, 'Tidak diketahui'),
(1, 'Tinggal Tetap'),
(2, 'Meninggal'),
(3, 'Pindahan Keluar'),
(4, 'Pindahan Masuk');

-- --------------------------------------------------------

--
-- Table structure for table `ref_status_tinggal`
--

CREATE TABLE `ref_status_tinggal` (
  `id_status_tinggal` int(10) NOT NULL,
  `deskripsi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_status_tinggal`
--

INSERT INTO `ref_status_tinggal` (`id_status_tinggal`, `deskripsi`) VALUES
(0, 'Tidak Diketahui'),
(1, 'Tinggal Tetap'),
(2, 'Tinggal di luar desa (dalam 1 kab/kota)'),
(3, 'Tinggal di luar kota'),
(4, 'Tinggal di luar provinsi'),
(5, 'Tinggal di luar negeri');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `id_berita` int(10) NOT NULL,
  `id_pengguna` int(10) NOT NULL,
  `gambar` text NOT NULL,
  `judul_berita` varchar(100) NOT NULL,
  `isi_berita` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_berita`
--

INSERT INTO `tbl_berita` (`id_berita`, `id_pengguna`, `gambar`, `judul_berita`, `isi_berita`, `waktu`) VALUES
(1, 2, 'uploads/berita/MI+Nurul+Islam+Kalijurang+Raih+Juara+1+LCC+Tingkat+Kecamatan+Tonjong.jpg', 'MI Nurul Islam Kalijurang Raih Juara 1 LCC Tingkat Kecamatan Tonjong', '<div align=\"justify\"><b>Kalijurang Mandiri</b>, 12 Sepember Lorem, ipsum dolor sit amet consectetur adipisicing elit. Est minus incidunt optio ipsa dicta quae quaerat expedita corporis repellendus fugiat aliquam, laboriosam at nostrum autem assumenda dolorum distinctio voluptatibus, maxime quibusdam deleniti aliquid repellat quam. Exercitationem similique aut, porro asperiores ratione deleniti quia quas rerum voluptatibus fugiat! Quam voluptas assumenda sed tempore! Doloribus quae harum nobis culpa blanditiis provident esse fugiat quam necessitatibus unde optio nihil praesentium voluptate, inventore eum commodi. Quisquam nobis dolorem nihil aspernatur recusandae quam, minus accusamus beatae tempora <u>non</u> maxime, neque repellat libero aliquid fugit quasi ea earum. Obcaecati adipisci magni officiis itaque eaque minima. Perspiciatis reprehenderit ad dicta eum magni. Obcaecati, inventore. Deserunt reiciendis dolorem officiis perferendis facere earum, dignissimos labore odit praesentium a, assumenda ad aliquid et?<br></div>', '2023-06-21 05:24:55'),
(2, 2, 'uploads/berita/Waspada+Peredaran+Nyamuk+Saat+Musim+Hujan.jpg', 'Waspada Peredaran Nyamuk Saat Musim Hujan', '<div align=\"justify\"><b>Kalijurang</b>, 03 Mei Lorem, ipsum dolor sit amet consectetur adipisicing elit. Est minus incidunt optio ipsa dicta quae quaerat expedita corporis repellendus fugiat aliquam, laboriosam at nostrum autem assumenda dolorum distinctio voluptatibus, maxime quibusdam deleniti aliquid repellat quam. Exercitationem similique aut, porro asperiores ratione deleniti quia quas rerum voluptatibus fugiat! Quam voluptas assumenda sed tempore! Doloribus quae harum nobis culpa blanditiis provident esse fugiat quam necessitatibus unde optio nihil praesentium voluptate, inventore eum commodi. Quisquam nobis dolorem nihil aspernatur recusandae quam, minus accusamus beatae tempora non maxime, neque repellat libero aliquid fugit quasi ea earum. Obcaecati adipisci magni officiis itaque eaque minima. Perspiciatis reprehenderit ad dicta eum magni. Obcaecati, inventore. Deserunt reiciendis dolorem officiis perferendis facere earum, dignissimos labore odit praesentium a, assumenda ad aliquid et?<br></div>', '2023-06-21 05:25:28'),
(7, 2, 'uploads/berita/PILKADES+Serentak+di+Kecamatan+Tonjong.jpg', 'PILKADES Serentak di Kecamatan Tonjong', '<span style=\"font-weight: 700; text-align: justify;\">Tonjong</span><span style=\"text-align: justify;\">, 27 Mei Lorem, ipsum dolor sit amet consectetur adipisicing elit. Est minus incidunt optio ipsa dicta quae quaerat expedita corporis repellendus fugiat aliquam, laboriosam at nostrum autem assumenda dolorum distinctio voluptatibus, maxime quibusdam deleniti aliquid repellat quam. Exercitationem similique aut, porro asperiores ratione deleniti quia quas rerum voluptatibus fugiat! Quam voluptas assumenda sed tempore! Doloribus quae harum nobis culpa blanditiis provident esse fugiat quam necessitatibus unde optio nihil praesentium voluptate, inventore eum commodi. Quisquam nobis dolorem nihil aspernatur recusandae quam, minus accusamus beatae tempora non maxime, neque repellat libero aliquid fugit quasi ea earum. Obcaecati adipisci magni officiis itaque eaque minima. Perspiciatis reprehenderit ad dicta eum magni. Obcaecati, inventore. Deserunt reiciendis dolorem officiis perferendis facere earum, dignissimos labore odit praesentium a, assumenda ad aliquid et?</span><br>', '2023-07-06 04:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_demografi`
--

CREATE TABLE `tbl_demografi` (
  `id_demografi` int(10) NOT NULL,
  `id_pengguna` int(10) NOT NULL,
  `isi_demografi` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto_banner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_demografi`
--

INSERT INTO `tbl_demografi` (`id_demografi`, `id_pengguna`, `isi_demografi`, `waktu`, `foto_banner`) VALUES
(1, 2, 'Desa Kalijurang adalah salah satu desa dari 12 perdukuhan yang ada di Kecamatan Tonjong, Kabupaten Brebes. Letak wilayah Desa Kalijurang terdiri dari 4 sisi jajaran genjang dengan batas wilayah :<div>Sebelah Utara : Desa Galuh Timur, Kecamatan tonjong</div><div>Sebelah Selatan : Bumiayu, Kecamatan Bumiayu</div><div>Sebelah Timur : Desa Penggarutan, Kecamatan Sirampog</div><div>Sebelah Barat : Desa Kalinusu, Kecamatan Bumiayu<br><ul><li>Luas Wilayah Desa Kalijurang</li><ul><li>Pemukiman 0,284,97 Km2 / 284,97 Ha</li><li>Ladang 0,392,03 Km2 / 391,03 Ha</li><li>Sawah 0,84 Km2 / 84 Ha</li><li>Luas 7,60 Km2 / 760 Ha</li></ul><li>Jumlah Penduduk Desa Kalijurang</li><ul><li>Laki-Laki 5.310 Jiwa</li><li>Perempuan 5.139 Jiwa</li></ul><li>Fasilitas Pendidikan Desa Kalijurang</li><ul><li>TK 4 Buah</li><li>SD 6 Buah</li><li>SMP 2 Buah</li><li>SLTA 1 Buah</li></ul></ul><div>Desa Kalijurang Merupakan pedesaan yang bersifat agraris, dengan mata pencaharian sebagian penduduknya adalah bercocok tanam terutama sektor pertanian tanaman pangan dengan hasil utama padi dan palawija.<br></div><div><br></div>       </div>', '2023-07-14 08:28:29', 'uploads/web/foto_banner_demografii.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gizi_buruk`
--

CREATE TABLE `tbl_gizi_buruk` (
  `id_gizi_buruk` int(10) NOT NULL,
  `berat_badan` int(10) NOT NULL,
  `tinggi_badan` int(10) NOT NULL,
  `tgl_timbang` datetime NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_gizi_buruk`
--

INSERT INTO `tbl_gizi_buruk` (`id_gizi_buruk`, `berat_badan`, `tinggi_badan`, `tgl_timbang`, `id_penduduk`) VALUES
(1, 17, 150, '2019-03-13 00:00:00', 41);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hub_kel`
--

CREATE TABLE `tbl_hub_kel` (
  `id_hub_kel` int(10) NOT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `id_penduduk` int(10) NOT NULL,
  `id_keluarga` int(10) NOT NULL,
  `id_status_keluarga` int(10) NOT NULL,
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hub_kel`
--

INSERT INTO `tbl_hub_kel` (`id_hub_kel`, `nama_ayah`, `nama_ibu`, `id_penduduk`, `id_keluarga`, `id_status_keluarga`, `is_delete`) VALUES
(43, 'WASID', 'TASLIYAH', 43, 12, 1, 'N'),
(45, 'SAMID', 'RATEM', 45, 12, 3, 'N'),
(46, 'RAIDI SUGANDI', 'VIKA JOLEKHA', 46, 12, 4, 'N'),
(47, 'RAIDI SUGANDI', 'VIKA JOLEKHA', 47, 12, 4, 'N'),
(48, 'FULAN', 'MULAN', 48, 13, 1, 'N'),
(49, 'WAJIM', 'WUTUH', 49, 14, 1, 'N'),
(50, 'FULAN A', 'MULAN A', 50, 15, 1, 'N'),
(51, 'RAIDI SUGANDI', 'VIKA JOLEKHA', 51, 12, 4, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ikut_pindah_keluar`
--

CREATE TABLE `tbl_ikut_pindah_keluar` (
  `id_ikut_pindah_keluar` int(10) NOT NULL,
  `id_penduduk` int(10) NOT NULL,
  `id_pindah_keluar` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ikut_pindah_masuk`
--

CREATE TABLE `tbl_ikut_pindah_masuk` (
  `id_ikut_pindah_masuk` int(10) NOT NULL,
  `id_penduduk` int(10) NOT NULL,
  `id_keluarga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelahiran`
--

CREATE TABLE `tbl_kelahiran` (
  `id_kelahiran` int(10) NOT NULL,
  `tgl_kelahiran` datetime NOT NULL,
  `nama_bayi` varchar(50) NOT NULL,
  `id_jen_kel` int(10) NOT NULL DEFAULT 0,
  `berat_bayi` varchar(10) DEFAULT NULL,
  `panjang_bayi` int(10) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `is_kembar` enum('Y','N') DEFAULT 'N',
  `lokasi_lahir` varchar(100) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `penolong` varchar(100) DEFAULT NULL,
  `id_keluarga` int(10) DEFAULT NULL,
  `nama_pelapor` varchar(100) DEFAULT NULL,
  `id_pelapor` int(10) DEFAULT NULL,
  `id_penduduk` int(4) DEFAULT NULL,
  `id_surat` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelahiran`
--

INSERT INTO `tbl_kelahiran` (`id_kelahiran`, `tgl_kelahiran`, `nama_bayi`, `id_jen_kel`, `berat_bayi`, `panjang_bayi`, `nama_ayah`, `nama_ibu`, `is_kembar`, `lokasi_lahir`, `tempat_lahir`, `penolong`, `id_keluarga`, `nama_pelapor`, `id_pelapor`, `id_penduduk`, `id_surat`) VALUES
(1, '2023-04-15 00:00:00', 'Kuro ', 1, '1', 50, 'RAIDI SUGANDI', 'VIKA JOLEKHA', 'N', 'Rumah Bersalin', 'BREBES', 'Bidan Widi Astuti', 12, 'DASMUN', 7, 51, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_keluarga`
--

CREATE TABLE `tbl_keluarga` (
  `id_keluarga` int(10) NOT NULL,
  `no_kk` varchar(25) NOT NULL,
  `alamat_jalan` varchar(50) NOT NULL,
  `is_sementara` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_raskin` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_jamkesmas` enum('Y','N') NOT NULL DEFAULT 'N',
  `is_pkh` enum('Y','N') NOT NULL DEFAULT 'N',
  `id_kelas_sosial` int(10) DEFAULT NULL,
  `id_kepala_keluarga` int(10) DEFAULT NULL,
  `id_rt` int(10) DEFAULT NULL,
  `id_rw` int(10) DEFAULT NULL,
  `id_dusun` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_keluarga`
--

INSERT INTO `tbl_keluarga` (`id_keluarga`, `no_kk`, `alamat_jalan`, `is_sementara`, `is_raskin`, `is_jamkesmas`, `is_pkh`, `id_kelas_sosial`, `id_kepala_keluarga`, `id_rt`, `id_rw`, `id_dusun`) VALUES
(4, '7.2210506069301E+15', 'KALIJURANG II', 'N', 'N', 'Y', 'N', 1, 8, 0, 0, 2),
(12, '3329062402073188', 'KALIJURANG II', 'N', 'Y', 'Y', 'Y', 2, 43, 14, 3, 1),
(13, '33290624020746', 'KALIJURANG II', 'N', 'N', 'N', 'N', 2, 48, 12, 8, 3),
(14, '332906240208795', 'KALIJURANG II', 'N', 'N', 'Y', 'Y', 1, 49, 10, 7, 3),
(15, '3329062402074683', 'KALIJURANG II', 'N', 'N', 'N', 'N', 2, 50, 0, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kondisi_kehamilan`
--

CREATE TABLE `tbl_kondisi_kehamilan` (
  `id_kondisi_kehamilan` int(10) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `tgl_hpl` datetime NOT NULL,
  `is_resti` enum('Y','N') NOT NULL,
  `id_penduduk` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kondisi_kehamilan`
--

INSERT INTO `tbl_kondisi_kehamilan` (`id_kondisi_kehamilan`, `keterangan`, `tgl_hpl`, `is_resti`, `id_penduduk`) VALUES
(2, 'kondisi sehat', '2023-06-30 00:00:00', 'N', 49);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontak`
--

CREATE TABLE `tbl_kontak` (
  `id_kontak` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pesan` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kontak`
--

INSERT INTO `tbl_kontak` (`id_kontak`, `nama`, `email`, `pesan`, `waktu`) VALUES
(2, 'Iqbal Mauludi Pratama', 'iqbalmauludipratama@gmail.com', 'Izin buat KK', '2023-07-15 06:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lembaga_desa`
--

CREATE TABLE `tbl_lembaga_desa` (
  `id_lembaga_desa` int(10) NOT NULL,
  `id_pengguna` int(10) NOT NULL,
  `isi_lembaga_desa` blob NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lembaga_desa`
--

INSERT INTO `tbl_lembaga_desa` (`id_lembaga_desa`, `id_pengguna`, `isi_lembaga_desa`, `waktu`) VALUES
(1, 2, '', '2015-04-11 10:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `id_log` int(20) NOT NULL,
  `fungsi` varchar(50) NOT NULL,
  `kegiatan` text NOT NULL,
  `kegiatan_rinci` text NOT NULL,
  `table` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_address` varchar(50) NOT NULL,
  `user_agent` text NOT NULL,
  `id_pengguna` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`id_log`, `fungsi`, `kegiatan`, `kegiatan_rinci`, `table`, `waktu`, `ip_address`, `user_agent`, `id_pengguna`) VALUES
(1, 'delete', 'DELETE', '{\"id_penduduk\":\"7\"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(2, 'delete', 'DELETE', '{\"id_penduduk\":\"6\"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(3, 'delete', 'DELETE', '{\"id_penduduk\":\"5\"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(4, 'delete', 'DELETE', '{\"id_penduduk\":\"4\"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(5, 'delete', 'DELETE', '{\"id_penduduk\":\"3\"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(6, 'delete', 'DELETE', '{\"id_penduduk\":\"2\"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(7, 'delete', 'DELETE', '{\"id_penduduk\":\"1\"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(8, 'delete', 'DELETE', '{\"id_penduduk\":\"\"}', 'tbl_penduduk', '2019-11-11 08:21:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(9, 'delete', 'DELETE', '{\"id_penduduk\":\"3\"}', 'tbl_penduduk', '2019-11-11 08:21:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(10, 'delete', 'DELETE', '{\"id_penduduk\":\"2\"}', 'tbl_penduduk', '2019-11-11 08:21:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(11, 'delete', 'DELETE', '{\"id_penduduk\":\"1\"}', 'tbl_penduduk', '2019-11-11 08:21:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(12, 'delete', 'DELETE', '{\"id_penduduk\":\"\"}', 'tbl_penduduk', '2019-11-11 08:21:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(13, 'delete', 'DELETE', '{\"id_keluarga\":\"3\"}', 'tbl_keluarga', '2019-11-11 08:21:24', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(14, 'delete', 'DELETE', '{\"id_keluarga\":\"2\"}', 'tbl_keluarga', '2019-11-11 08:21:24', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(15, 'delete', 'DELETE', '{\"id_keluarga\":\"1\"}', 'tbl_keluarga', '2019-11-11 08:21:24', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(16, 'delete', 'DELETE', '{\"id_keluarga\":\"\"}', 'tbl_keluarga', '2019-11-11 08:21:24', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(17, 'delete', 'DELETE', '{\"id_penduduk\":\"3\"}', 'tbl_penduduk', '2019-11-11 08:22:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(18, 'delete', 'DELETE', '{\"id_penduduk\":\"2\"}', 'tbl_penduduk', '2019-11-11 08:22:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(19, 'delete', 'DELETE', '{\"id_penduduk\":\"1\"}', 'tbl_penduduk', '2019-11-11 08:22:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(20, 'delete', 'DELETE', '{\"id_penduduk\":\"\"}', 'tbl_penduduk', '2019-11-11 08:22:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(21, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"35\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0132\",\"nama\":\"ETI SULASTRI\",\"tempat_lahir\":\"SUKABUMI\",\"tanggal_lahir\":\"2006-04-16\",\"no_telp\":\"87765100987\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"10032\",\"no_paspor\":\"1243\",\"id_agama\":\"5\",\"id_goldar\":\"6\",\"id_pendidikan\":\"13\",\"id_pendidikan_terakhir\":\"\",\"id_pekerjaan\":\"3\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0132.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2019-11-11 11:12:06', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(22, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"29\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0126\",\"nama\":\"ISABELA LILA\",\"tempat_lahir\":\"BOGOR\",\"tanggal_lahir\":\"2000-04-16\",\"no_telp\":\"87765100987\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"10026\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"4\",\"id_pendidikan\":\"15\",\"id_pendidikan_terakhir\":\"5\",\"id_pekerjaan\":\"3\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0126.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2019-11-11 11:14:43', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(23, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"35\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0132\",\"nama\":\"ETI SULASTRI\",\"tempat_lahir\":\"SUKABUMI\",\"tanggal_lahir\":\"2006-04-16\",\"no_telp\":\"87765100987\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"10032\",\"no_paspor\":\"1243\",\"id_agama\":\"5\",\"id_goldar\":\"6\",\"id_pendidikan\":\"13\",\"id_pendidikan_terakhir\":\"\",\"id_pekerjaan\":\"3\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0132.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2019-11-11 17:20:34', '0.0.0.0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0', 4),
(24, 'delete', 'DELETE', '{\"id_keluarga\":\"4\"}', 'tbl_keluarga', '2023-06-21 04:30:18', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(25, 'delete', 'DELETE', '{\"id_keluarga\":\"\"}', 'tbl_keluarga', '2023-06-21 04:30:18', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(26, 'delete', 'DELETE', '{\"id_keluarga\":\"4\"}', 'tbl_keluarga', '2023-06-21 04:30:32', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(27, 'delete', 'DELETE', '{\"id_keluarga\":\"\"}', 'tbl_keluarga', '2023-06-21 04:30:32', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(28, 'delete', 'DELETE', '{\"id_keluarga\":\"6\"}', 'tbl_keluarga', '2023-06-21 04:31:41', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(29, 'delete', 'DELETE', '{\"id_keluarga\":\"\"}', 'tbl_keluarga', '2023-06-21 04:31:41', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(30, 'delete', 'DELETE', '{\"id_keluarga\":\"5\"}', 'tbl_keluarga', '2023-06-21 04:32:32', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(31, 'delete', 'DELETE', '{\"id_keluarga\":\"\"}', 'tbl_keluarga', '2023-06-21 04:32:32', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(32, 'delete', 'DELETE', '{\"id_keluarga\":\"11\"}', 'tbl_keluarga', '2023-06-24 05:40:16', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(33, 'delete', 'DELETE', '{\"id_keluarga\":\"10\"}', 'tbl_keluarga', '2023-06-24 05:40:16', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(34, 'delete', 'DELETE', '{\"id_keluarga\":\"9\"}', 'tbl_keluarga', '2023-06-24 05:40:16', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(35, 'delete', 'DELETE', '{\"id_keluarga\":\"8\"}', 'tbl_keluarga', '2023-06-24 05:40:16', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(36, 'delete', 'DELETE', '{\"id_keluarga\":\"7\"}', 'tbl_keluarga', '2023-06-24 05:40:16', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(37, 'delete', 'DELETE', '{\"id_keluarga\":\"4\"}', 'tbl_keluarga', '2023-06-24 05:40:16', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(38, 'delete', 'DELETE', '{\"id_keluarga\":\"\"}', 'tbl_keluarga', '2023-06-24 05:40:16', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(39, 'delete', 'DELETE', '{\"id_keluarga\":\"4\"}', 'tbl_keluarga', '2023-06-24 05:40:53', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(40, 'delete', 'DELETE', '{\"id_keluarga\":\"\"}', 'tbl_keluarga', '2023-06-24 05:40:53', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(41, 'delete', 'DELETE', '{\"id_penduduk\":\"12\"}', 'tbl_penduduk', '2023-06-24 05:41:09', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(42, 'delete', 'DELETE', '{\"id_penduduk\":\"11\"}', 'tbl_penduduk', '2023-06-24 05:41:09', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(43, 'delete', 'DELETE', '{\"id_penduduk\":\"10\"}', 'tbl_penduduk', '2023-06-24 05:41:09', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(44, 'delete', 'DELETE', '{\"id_penduduk\":\"9\"}', 'tbl_penduduk', '2023-06-24 05:41:09', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(45, 'delete', 'DELETE', '{\"id_penduduk\":\"8\"}', 'tbl_penduduk', '2023-06-24 05:41:09', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(46, 'delete', 'DELETE', '{\"id_penduduk\":\"\"}', 'tbl_penduduk', '2023-06-24 05:41:09', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(47, 'delete', 'DELETE', '{\"id_penduduk\":\"27\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(48, 'delete', 'DELETE', '{\"id_penduduk\":\"26\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(49, 'delete', 'DELETE', '{\"id_penduduk\":\"25\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(50, 'delete', 'DELETE', '{\"id_penduduk\":\"24\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(51, 'delete', 'DELETE', '{\"id_penduduk\":\"23\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(52, 'delete', 'DELETE', '{\"id_penduduk\":\"22\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(53, 'delete', 'DELETE', '{\"id_penduduk\":\"21\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(54, 'delete', 'DELETE', '{\"id_penduduk\":\"20\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(55, 'delete', 'DELETE', '{\"id_penduduk\":\"19\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(56, 'delete', 'DELETE', '{\"id_penduduk\":\"18\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(57, 'delete', 'DELETE', '{\"id_penduduk\":\"17\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(58, 'delete', 'DELETE', '{\"id_penduduk\":\"16\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(59, 'delete', 'DELETE', '{\"id_penduduk\":\"15\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(60, 'delete', 'DELETE', '{\"id_penduduk\":\"14\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(61, 'delete', 'DELETE', '{\"id_penduduk\":\"13\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(62, 'delete', 'DELETE', '{\"id_penduduk\":\"\"}', 'tbl_penduduk', '2023-06-24 05:41:22', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(63, 'delete', 'DELETE', '{\"id_penduduk\":\"42\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(64, 'delete', 'DELETE', '{\"id_penduduk\":\"41\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(65, 'delete', 'DELETE', '{\"id_penduduk\":\"40\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(66, 'delete', 'DELETE', '{\"id_penduduk\":\"39\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(67, 'delete', 'DELETE', '{\"id_penduduk\":\"38\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(68, 'delete', 'DELETE', '{\"id_penduduk\":\"37\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(69, 'delete', 'DELETE', '{\"id_penduduk\":\"36\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(70, 'delete', 'DELETE', '{\"id_penduduk\":\"35\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(71, 'delete', 'DELETE', '{\"id_penduduk\":\"34\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(72, 'delete', 'DELETE', '{\"id_penduduk\":\"33\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(73, 'delete', 'DELETE', '{\"id_penduduk\":\"32\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(74, 'delete', 'DELETE', '{\"id_penduduk\":\"31\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(75, 'delete', 'DELETE', '{\"id_penduduk\":\"30\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(76, 'delete', 'DELETE', '{\"id_penduduk\":\"29\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(77, 'delete', 'DELETE', '{\"id_penduduk\":\"28\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(78, 'delete', 'DELETE', '{\"id_penduduk\":\"\"}', 'tbl_penduduk', '2023-06-24 05:41:40', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(79, 'simpan_keluarga', 'INSERT', '{\"is_sementara\":\"N\",\"nik\":\"3329060612770002\",\"nama\":\"RAIDI SUGANDI\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1977-12-06\",\"no_telp\":\"\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"9\",\"id_rw\":\"6\",\"id_dusun\":\"4\",\"id_agama\":\"1\",\"id_goldar\":\"2\",\"id_pendidikan\":\"4\",\"id_pendidikan_terakhir\":\"4\",\"id_pekerjaan\":\"15\",\"id_pekerjaan_ped\":\"4\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"3\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"3\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/3329060612770002.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 05:53:51', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(80, 'simpan_keluarga', 'INSERT', '{\"is_sementara\":\"N\",\"no_kk\":\"3329062402073188\",\"alamat_jalan\":\"KALIJURANG II\",\"id_rt\":\"9\",\"id_rw\":\"6\",\"id_dusun\":\"4\",\"id_kepala_keluarga\":\"43\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"N\",\"is_pkh\":\"N\",\"id_kelas_sosial\":\"2\"}', 'tbl_keluarga', '2023-06-24 05:53:51', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(81, 'simpan_keluarga', 'INSERT', '{\"nama_ayah\":\"WASID\",\"nama_ibu\":\"TAS\",\"id_penduduk\":\"43\",\"id_keluarga\":\"12\",\"id_status_keluarga\":1}', 'tbl_hub_kel', '2023-06-24 05:53:51', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(82, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"43\"}', '{\"is_sementara\":\"N\",\"nik\":\"3329060612770002\",\"nama\":\"RAIDI SUGANDI\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1977-12-06\",\"no_telp\":\"\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"14\",\"id_rw\":\"3\",\"id_dusun\":\"1\",\"id_agama\":\"1\",\"id_goldar\":\"2\",\"id_pendidikan\":\"4\",\"id_pendidikan_terakhir\":\"4\",\"id_pekerjaan\":\"15\",\"id_pekerjaan_ped\":\"4\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"3\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"3\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/3329060612770002.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 06:27:07', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(83, 'update_keluarga', 'UPDATE : {\"id_keluarga\":\"12\"}', '{\"is_sementara\":\"N\",\"no_kk\":\"3329062402073188\",\"alamat_jalan\":\"KALIJURANG II\",\"id_rt\":\"14\",\"id_rw\":\"3\",\"id_dusun\":\"1\",\"id_kepala_keluarga\":\"43\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"N\",\"is_pkh\":\"N\",\"id_kelas_sosial\":\"2\"}', 'tbl_keluarga', '2023-06-24 06:27:07', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(84, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"43\"}', '{\"nama_ayah\":\"WASID\",\"nama_ibu\":\"TAS\"}', 'tbl_hub_kel', '2023-06-24 06:27:07', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(85, 'simpan_tambah_anggota', 'INSERT', '{\"is_sementara\":\"N\",\"nik\":\"\",\"nama\":\"IQBAL MAULUDI PRATAMA\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2002-05-19\",\"no_telp\":\"\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"14\",\"id_rw\":\"3\",\"id_dusun\":\"1\",\"id_agama\":\"1\",\"id_goldar\":\"5\",\"id_pendidikan\":\"17\",\"id_pendidikan_terakhir\":\"17\",\"id_pekerjaan\":\"3\",\"id_pekerjaan_ped\":\"3\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"5\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 06:29:52', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(86, 'simpan_tambah_anggota', 'INSERT', '{\"nama_ayah\":\"RAIDI SUGANDI\",\"nama_ibu\":\"VIKA JOLEKHA\",\"id_penduduk\":\"44\",\"id_keluarga\":\"12\",\"id_status_keluarga\":\"4\"}', 'tbl_hub_kel', '2023-06-24 06:29:52', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(87, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"44\"}', '{\"is_sementara\":\"N\",\"nik\":\"332906061905020001\",\"nama\":\"IQBAL MAULUDI PRATAMA\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2002-05-19\",\"no_telp\":\"\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_agama\":\"1\",\"id_goldar\":\"5\",\"id_pendidikan\":\"17\",\"id_pendidikan_terakhir\":\"17\",\"id_pekerjaan\":\"3\",\"id_pekerjaan_ped\":\"3\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"5\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/332906061905020001.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 06:44:35', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(88, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"44\"}', '{\"is_sementara\":\"N\",\"nik\":\"3329061905020001\",\"nama\":\"IQBAL MAULUDI PRATAMA\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2002-05-19\",\"no_telp\":\"\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_agama\":\"1\",\"id_goldar\":\"5\",\"id_pendidikan\":\"17\",\"id_pendidikan_terakhir\":\"17\",\"id_pekerjaan\":\"3\",\"id_pekerjaan_ped\":\"3\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"5\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/3329061905020001.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 06:44:58', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(89, 'delete', 'DELETE', '{\"id_penduduk\":\"8\"}', 'tbl_penduduk', '2023-06-24 06:45:26', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(90, 'delete', 'DELETE', '{\"id_penduduk\":\"\"}', 'tbl_penduduk', '2023-06-24 06:45:26', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(91, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"8\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0105\",\"nama\":\"EDI RIYANTO\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1965-06-06\",\"no_telp\":\"089619256006\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"Tidak Diketahui\",\"no_paspor\":\"10002\",\"id_rt\":\"1\",\"id_rw\":\"\",\"id_dusun\":\"2\",\"id_agama\":\"1\",\"id_goldar\":\"10\",\"id_pendidikan\":\"\",\"id_pendidikan_terakhir\":\"\",\"id_pekerjaan\":\"84\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0105.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 06:48:30', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(92, 'update_keluarga', 'UPDATE : {\"id_keluarga\":\"4\"}', '{\"is_sementara\":\"N\",\"no_kk\":\"7.2210506069301E+15\",\"alamat_jalan\":\"JL. GUDANG\",\"id_rt\":\"1\",\"id_rw\":\"\",\"id_dusun\":\"2\",\"id_kepala_keluarga\":\"8\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"Y\",\"is_pkh\":\"Y\",\"id_kelas_sosial\":\"2\"}', 'tbl_keluarga', '2023-06-24 06:48:30', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(93, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"8\"}', '{\"nama_ayah\":\"\",\"nama_ibu\":\"\"}', 'tbl_hub_kel', '2023-06-24 06:48:30', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(94, 'delete', 'DELETE', '{\"id_penduduk\":\"44\"}', 'tbl_penduduk', '2023-06-24 06:50:39', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(95, 'delete', 'DELETE', '{\"id_penduduk\":\"\"}', 'tbl_penduduk', '2023-06-24 06:50:39', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(96, 'simpan_tambah_anggota', 'INSERT', '{\"is_sementara\":\"N\",\"nik\":\"3329066202830001\",\"nama\":\"VIKA JOLEKHA\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1983-02-22\",\"no_telp\":\"085802452629\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"14\",\"id_rw\":\"3\",\"id_dusun\":\"1\",\"id_agama\":\"1\",\"id_goldar\":\"8\",\"id_pendidikan\":\"4\",\"id_pendidikan_terakhir\":\"4\",\"id_pekerjaan\":\"31\",\"id_pekerjaan_ped\":\"3\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/3329066202830001.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 06:57:46', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(97, 'simpan_tambah_anggota', 'INSERT', '{\"nama_ayah\":\"SAMID\",\"nama_ibu\":\"RATEM\",\"id_penduduk\":\"45\",\"id_keluarga\":\"12\",\"id_status_keluarga\":\"3\"}', 'tbl_hub_kel', '2023-06-24 06:57:46', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(98, 'simpan_tambah_anggota', 'INSERT', '{\"is_sementara\":\"N\",\"nik\":\"3329061905020001\",\"nama\":\"IQBAL MAULUDI PRATAMA\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2002-05-19\",\"no_telp\":\"085729821744\",\"email\":\"iqbalmauludipratama019@gmail.com\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"14\",\"id_rw\":\"3\",\"id_dusun\":\"1\",\"id_agama\":\"1\",\"id_goldar\":\"7\",\"id_pendidikan\":\"17\",\"id_pendidikan_terakhir\":\"17\",\"id_pekerjaan\":\"3\",\"id_pekerjaan_ped\":\"3\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"5\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/3329061905020001.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:01:37', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(99, 'simpan_tambah_anggota', 'INSERT', '{\"nama_ayah\":\"RAIDI SUGANDI\",\"nama_ibu\":\"VIKA JOLEKHA\",\"id_penduduk\":\"46\",\"id_keluarga\":\"12\",\"id_status_keluarga\":\"4\"}', 'tbl_hub_kel', '2023-06-24 07:01:37', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(100, 'simpan_tambah_anggota', 'INSERT', '{\"is_sementara\":\"N\",\"nik\":\"3329064904060002\",\"nama\":\"SAKHYATUL MAR\'AH APRILIANI\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2006-04-09\",\"no_telp\":\"087873035486\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"14\",\"id_rw\":\"3\",\"id_dusun\":\"1\",\"id_agama\":\"1\",\"id_goldar\":\"2\",\"id_pendidikan\":\"15\",\"id_pendidikan_terakhir\":\"15\",\"id_pekerjaan\":\"3\",\"id_pekerjaan_ped\":\"6\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"4\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/3329064904060002.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:07:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(101, 'simpan_tambah_anggota', 'INSERT', '{\"nama_ayah\":\"RAIDI SUGANDI\",\"nama_ibu\":\"VIKA JOLEKHA\",\"id_penduduk\":\"47\",\"id_keluarga\":\"12\",\"id_status_keluarga\":\"4\"}', 'tbl_hub_kel', '2023-06-24 07:07:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(102, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"43\"}', '{\"is_sementara\":\"N\",\"nik\":\"3329060612770002\",\"nama\":\"RAIDI SUGANDI\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1977-12-06\",\"no_telp\":\"085691740089\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"14\",\"id_rw\":\"3\",\"id_dusun\":\"1\",\"id_agama\":\"1\",\"id_goldar\":\"2\",\"id_pendidikan\":\"4\",\"id_pendidikan_terakhir\":\"4\",\"id_pekerjaan\":\"86\",\"id_pekerjaan_ped\":\"4\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"3\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"3\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/3329060612770002.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:10:05', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(103, 'update_keluarga', 'UPDATE : {\"id_keluarga\":\"12\"}', '{\"is_sementara\":\"N\",\"no_kk\":\"3329062402073188\",\"alamat_jalan\":\"KALIJURANG II\",\"id_rt\":\"14\",\"id_rw\":\"3\",\"id_dusun\":\"1\",\"id_kepala_keluarga\":\"43\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"N\",\"is_pkh\":\"N\",\"id_kelas_sosial\":\"2\"}', 'tbl_keluarga', '2023-06-24 07:10:05', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(104, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"43\"}', '{\"nama_ayah\":\"WASID\",\"nama_ibu\":\"TASLIYAH\"}', 'tbl_hub_kel', '2023-06-24 07:10:05', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(105, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"45\"}', '{\"is_sementara\":\"N\",\"nik\":\"3329066202830001\",\"nama\":\"VIKA JOLEKHA\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1983-02-22\",\"no_telp\":\"085802452629\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_agama\":\"1\",\"id_goldar\":\"8\",\"id_pendidikan\":\"4\",\"id_pendidikan_terakhir\":\"4\",\"id_pekerjaan\":\"2\",\"id_pekerjaan_ped\":\"3\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/3329066202830001.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:10:55', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(106, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"8\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0105\",\"nama\":\"EDI RIYANTO\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1965-06-06\",\"no_telp\":\"089619256006\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"Tidak Diketahui\",\"no_paspor\":\"10002\",\"id_rt\":false,\"id_rw\":\"\",\"id_dusun\":\"2\",\"id_agama\":\"1\",\"id_goldar\":\"\",\"id_pendidikan\":\"\",\"id_pendidikan_terakhir\":\"\",\"id_pekerjaan\":\"84\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0105.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:13:33', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(107, 'update_keluarga', 'UPDATE : {\"id_keluarga\":\"4\"}', '{\"is_sementara\":\"N\",\"no_kk\":\"7.2210506069301E+15\",\"alamat_jalan\":\"JL. GUDANG\",\"id_rt\":false,\"id_rw\":\"\",\"id_dusun\":\"2\",\"id_kepala_keluarga\":\"8\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"Y\",\"is_pkh\":\"Y\",\"id_kelas_sosial\":\"2\"}', 'tbl_keluarga', '2023-06-24 07:13:33', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(108, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"8\"}', '{\"nama_ayah\":\"\",\"nama_ibu\":\"\"}', 'tbl_hub_kel', '2023-06-24 07:13:33', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(109, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"8\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0105\",\"nama\":\"EDI RIYANTO\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1965-06-06\",\"no_telp\":\"089619256006\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"Tidak Diketahui\",\"no_paspor\":\"10002\",\"id_rt\":false,\"id_rw\":\"\",\"id_dusun\":\"2\",\"id_agama\":\"1\",\"id_goldar\":\"\",\"id_pendidikan\":\"\",\"id_pendidikan_terakhir\":\"\",\"id_pekerjaan\":\"84\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0105.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:14:23', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(110, 'update_keluarga', 'UPDATE : {\"id_keluarga\":\"4\"}', '{\"is_sementara\":\"N\",\"no_kk\":\"7.2210506069301E+15\",\"alamat_jalan\":\"KALIJURANG II\",\"id_rt\":false,\"id_rw\":\"\",\"id_dusun\":\"2\",\"id_kepala_keluarga\":\"8\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"N\",\"is_pkh\":\"N\",\"id_kelas_sosial\":\"1\"}', 'tbl_keluarga', '2023-06-24 07:14:23', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(111, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"8\"}', '{\"nama_ayah\":\"\",\"nama_ibu\":\"\"}', 'tbl_hub_kel', '2023-06-24 07:14:23', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(112, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"9\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0106\",\"nama\":\"MUNASIK\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1957-06-06\",\"no_telp\":\"089619256007\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"Tidak Diketahui\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"7\",\"id_pendidikan\":\"17\",\"id_pendidikan_terakhir\":\"6\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"1\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0106.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:16:17', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(113, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"10\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0107\",\"nama\":\"AKHMAD JAELANI\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1993-10-31\",\"no_telp\":\"089619256008\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"Tidak Diketahui\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"2\",\"id_pendidikan\":\"9\",\"id_pendidikan_terakhir\":\"9\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"4\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0107.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:17:34', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(114, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"9\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0106\",\"nama\":\"MUNASIK\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1957-06-06\",\"no_telp\":\"089619256007\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"Tidak Diketahui\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"7\",\"id_pendidikan\":\"17\",\"id_pendidikan_terakhir\":\"6\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"1\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0106.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:17:43', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(115, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"12\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0109\",\"nama\":\"KARNA\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1994-04-22\",\"no_telp\":\"85890210023\",\"email\":\"karna@gmail.com\",\"no_kitas\":\"Tidak Diketahui\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"7\",\"id_pendidikan\":\"6\",\"id_pendidikan_terakhir\":\"6\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"4\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0109.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:18:44', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(116, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"17\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0114\",\"nama\":\"MIFROATUL MUNAWAROH\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1988-04-16\",\"no_telp\":\"85430340251\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"10014\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"2\",\"id_pendidikan\":\"8\",\"id_pendidikan_terakhir\":\"6\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0114.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:20:50', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(117, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"29\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0126\",\"nama\":\"ARIFIN\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2000-04-16\",\"no_telp\":\"87765100987\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"10026\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"4\",\"id_pendidikan\":\"18\",\"id_pendidikan_terakhir\":\"8\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"6\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"4\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0126.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:22:12', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(118, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"12\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0109\",\"nama\":\"KARNA\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1994-04-22\",\"no_telp\":\"85890210023\",\"email\":\"karna@gmail.com\",\"no_kitas\":\"Tidak Diketahui\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"7\",\"id_pendidikan\":\"6\",\"id_pendidikan_terakhir\":\"6\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"4\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0109.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:25:50', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(119, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"30\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0127\",\"nama\":\"ERWIN HADI SUSILO\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2001-04-16\",\"no_telp\":\"87765100987\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"10027\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"10\",\"id_pendidikan\":\"15\",\"id_pendidikan_terakhir\":\"5\",\"id_pekerjaan\":\"3\",\"id_pekerjaan_ped\":\"3\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"1\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0127.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:39:34', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(120, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"34\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0131\",\"nama\":\"IMAM MALIKI\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2005-04-16\",\"no_telp\":\"87765100987\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"10031\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"7\",\"id_pendidikan\":\"18\",\"id_pendidikan_terakhir\":\"8\",\"id_pekerjaan\":\"3\",\"id_pekerjaan_ped\":\"2\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"4\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0131.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:40:49', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(121, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"35\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0132\",\"nama\":\"SARNO\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2006-04-16\",\"no_telp\":\"87765100987\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"10032\",\"no_paspor\":\"1243\",\"id_agama\":\"1\",\"id_goldar\":\"6\",\"id_pendidikan\":\"7\",\"id_pendidikan_terakhir\":\"17\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"5\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0132.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:42:20', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(122, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"34\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0131\",\"nama\":\"IMAM MALIKI\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2005-04-16\",\"no_telp\":\"87765100987\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"10031\",\"no_paspor\":\"Tidak Diketahui\",\"id_agama\":\"1\",\"id_goldar\":\"7\",\"id_pendidikan\":\"18\",\"id_pendidikan_terakhir\":\"8\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"2\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"4\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0131.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:43:59', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4);
INSERT INTO `tbl_log` (`id_log`, `fungsi`, `kegiatan`, `kegiatan_rinci`, `table`, `waktu`, `ip_address`, `user_agent`, `id_pengguna`) VALUES
(123, 'update_penduduk', 'UPDATE : {\"id_penduduk\":\"41\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0138\",\"nama\":\"SUGITO\",\"tempat_lahir\":\"BANDUNG\",\"tanggal_lahir\":\"2012-04-16\",\"no_telp\":\"87765100987\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"10038\",\"no_paspor\":\"23432\",\"id_agama\":\"1\",\"id_goldar\":\"10\",\"id_pendidikan\":\"6\",\"id_pendidikan_terakhir\":\"6\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"5\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"2\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0138.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:45:08', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(124, 'simpan_keluarga', 'INSERT', '{\"is_sementara\":\"N\",\"nik\":\"3329066202830053\",\"nama\":\"ABDUL MUJIB\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2023-06-09\",\"no_telp\":\"085695446646\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"12\",\"id_rw\":\"8\",\"id_dusun\":\"3\",\"id_agama\":\"1\",\"id_goldar\":\"9\",\"id_pendidikan\":\"16\",\"id_pendidikan_terakhir\":\"7\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"5\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"2\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/3329066202830053.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:49:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(125, 'simpan_keluarga', 'INSERT', '{\"is_sementara\":\"N\",\"no_kk\":\"33290624020746\",\"alamat_jalan\":\"KALIJURANG II\",\"id_rt\":\"12\",\"id_rw\":\"8\",\"id_dusun\":\"3\",\"id_kepala_keluarga\":\"48\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"N\",\"is_pkh\":\"N\",\"id_kelas_sosial\":\"2\"}', 'tbl_keluarga', '2023-06-24 07:49:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(126, 'simpan_keluarga', 'INSERT', '{\"nama_ayah\":\"FULAN\",\"nama_ibu\":\"MULAN\",\"id_penduduk\":\"48\",\"id_keluarga\":\"13\",\"id_status_keluarga\":1}', 'tbl_hub_kel', '2023-06-24 07:49:01', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(127, 'simpan_keluarga', 'INSERT', '{\"is_sementara\":\"N\",\"nik\":\"332906061995839\",\"nama\":\"IIS MARUNA\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2012-06-14\",\"no_telp\":\"085695534642\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"10\",\"id_rw\":\"7\",\"id_dusun\":\"3\",\"id_agama\":\"1\",\"id_goldar\":\"2\",\"id_pendidikan\":\"9\",\"id_pendidikan_terakhir\":\"8\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"3\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"1\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/332906061995839.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:52:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(128, 'simpan_keluarga', 'INSERT', '{\"is_sementara\":\"N\",\"no_kk\":\"332906240208795\",\"alamat_jalan\":\"KALIJURANG II\",\"id_rt\":\"10\",\"id_rw\":\"7\",\"id_dusun\":\"3\",\"id_kepala_keluarga\":\"49\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"N\",\"is_pkh\":\"N\",\"id_kelas_sosial\":\"1\"}', 'tbl_keluarga', '2023-06-24 07:52:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(129, 'simpan_keluarga', 'INSERT', '{\"nama_ayah\":\"WAJIM\",\"nama_ibu\":\"WUTUH\",\"id_penduduk\":\"49\",\"id_keluarga\":\"14\",\"id_status_keluarga\":1}', 'tbl_hub_kel', '2023-06-24 07:52:14', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(130, 'simpan_keluarga', 'INSERT', '{\"is_sementara\":\"N\",\"nik\":\"332906061256747\",\"nama\":\"MUSYAFAK BANGKIT DASMUN T\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2023-06-15\",\"no_telp\":\"085695449381\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":false,\"id_rw\":\"10\",\"id_dusun\":\"5\",\"id_agama\":\"1\",\"id_goldar\":\"12\",\"id_pendidikan\":\"17\",\"id_pendidikan_terakhir\":\"6\",\"id_pekerjaan\":\"63\",\"id_pekerjaan_ped\":\"6\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"4\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/332906061256747.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-06-24 07:55:31', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(131, 'simpan_keluarga', 'INSERT', '{\"is_sementara\":\"N\",\"no_kk\":\"3329062402074683\",\"alamat_jalan\":\"KALIJURANG II\",\"id_rt\":false,\"id_rw\":\"10\",\"id_dusun\":\"5\",\"id_kepala_keluarga\":\"50\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"N\",\"is_pkh\":\"N\",\"id_kelas_sosial\":\"2\"}', 'tbl_keluarga', '2023-06-24 07:55:31', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(132, 'simpan_keluarga', 'INSERT', '{\"nama_ayah\":\"FULAN A\",\"nama_ibu\":\"MULAN A\",\"id_penduduk\":\"50\",\"id_keluarga\":\"15\",\"id_status_keluarga\":1}', 'tbl_hub_kel', '2023-06-24 07:55:31', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36 Edg/113.0.1774.50', 4),
(133, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"43\"}', '{\"is_sementara\":\"N\",\"nik\":\"3329060612770002\",\"nama\":\"RAIDI SUGANDI\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1977-12-06\",\"no_telp\":\"085691740089\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"14\",\"id_rw\":\"3\",\"id_dusun\":\"1\",\"id_agama\":\"1\",\"id_goldar\":\"2\",\"id_pendidikan\":\"4\",\"id_pendidikan_terakhir\":\"4\",\"id_pekerjaan\":\"86\",\"id_pekerjaan_ped\":\"4\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"3\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"3\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/3329060612770002.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-07-15 00:13:21', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 4),
(134, 'update_keluarga', 'UPDATE : {\"id_keluarga\":\"12\"}', '{\"is_sementara\":\"N\",\"no_kk\":\"3329062402073188\",\"alamat_jalan\":\"KALIJURANG II\",\"id_rt\":\"14\",\"id_rw\":\"3\",\"id_dusun\":\"1\",\"id_kepala_keluarga\":\"43\",\"is_raskin\":\"Y\",\"is_jamkesmas\":\"Y\",\"is_pkh\":\"Y\",\"id_kelas_sosial\":\"2\"}', 'tbl_keluarga', '2023-07-15 00:13:21', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 4),
(135, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"43\"}', '{\"nama_ayah\":\"WASID\",\"nama_ibu\":\"TASLIYAH\"}', 'tbl_hub_kel', '2023-07-15 00:13:21', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 4),
(136, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"49\"}', '{\"is_sementara\":\"N\",\"nik\":\"332906061995839\",\"nama\":\"IIS MARUNA\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"2012-06-14\",\"no_telp\":\"085695534642\",\"email\":\"\",\"no_kitas\":\"\",\"no_paspor\":\"\",\"id_rt\":\"10\",\"id_rw\":\"7\",\"id_dusun\":\"3\",\"id_agama\":\"1\",\"id_goldar\":\"2\",\"id_pendidikan\":\"9\",\"id_pendidikan_terakhir\":\"8\",\"id_pekerjaan\":\"83\",\"id_pekerjaan_ped\":\"3\",\"id_jen_kel\":\"2\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"1\",\"id_status_kawin\":\"1\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/332906061995839.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-07-15 00:16:23', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 4),
(137, 'update_keluarga', 'UPDATE : {\"id_keluarga\":\"14\"}', '{\"is_sementara\":\"N\",\"no_kk\":\"332906240208795\",\"alamat_jalan\":\"KALIJURANG II\",\"id_rt\":\"10\",\"id_rw\":\"7\",\"id_dusun\":\"3\",\"id_kepala_keluarga\":\"49\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"Y\",\"is_pkh\":\"Y\",\"id_kelas_sosial\":\"1\"}', 'tbl_keluarga', '2023-07-15 00:16:23', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 4),
(138, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"49\"}', '{\"nama_ayah\":\"WAJIM\",\"nama_ibu\":\"WUTUH\"}', 'tbl_hub_kel', '2023-07-15 00:16:23', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 4),
(139, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"8\"}', '{\"is_sementara\":\"N\",\"nik\":\"647105.060693.0105\",\"nama\":\"EDI RIYANTO\",\"tempat_lahir\":\"BREBES\",\"tanggal_lahir\":\"1965-06-06\",\"no_telp\":\"089619256006\",\"email\":\"Tidak Diketahui\",\"no_kitas\":\"Tidak Diketahui\",\"no_paspor\":\"10002\",\"id_rt\":false,\"id_rw\":\"\",\"id_dusun\":\"2\",\"id_agama\":\"1\",\"id_goldar\":\"\",\"id_pendidikan\":\"\",\"id_pendidikan_terakhir\":\"\",\"id_pekerjaan\":\"84\",\"id_pekerjaan_ped\":\"\",\"id_jen_kel\":\"1\",\"id_kewarganegaraan\":\"1\",\"id_kompetensi\":\"0\",\"id_status_kawin\":\"2\",\"id_status_penduduk\":\"1\",\"id_status_tinggal\":\"1\",\"id_difabilitas\":\"1\",\"id_kontrasepsi\":\"\",\"is_bsm\":\"N\",\"foto\":\"uploads\\/647105.060693.0105.jpg\",\"pendapatan_per_bulan\":0}', 'tbl_penduduk', '2023-07-15 00:16:37', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 4),
(140, 'update_keluarga', 'UPDATE : {\"id_keluarga\":\"4\"}', '{\"is_sementara\":\"N\",\"no_kk\":\"7.2210506069301E+15\",\"alamat_jalan\":\"KALIJURANG II\",\"id_rt\":false,\"id_rw\":\"\",\"id_dusun\":\"2\",\"id_kepala_keluarga\":\"8\",\"is_raskin\":\"N\",\"is_jamkesmas\":\"Y\",\"is_pkh\":\"N\",\"id_kelas_sosial\":\"1\"}', 'tbl_keluarga', '2023-07-15 00:16:37', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 4),
(141, 'update_keluarga', 'UPDATE : {\"id_penduduk\":\"8\"}', '{\"nama_ayah\":\"\",\"nama_ibu\":\"\"}', 'tbl_hub_kel', '2023-07-15 00:16:37', '0.0.0.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.79', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logo`
--

CREATE TABLE `tbl_logo` (
  `id_logo` int(11) NOT NULL,
  `konten_logo_desa` varchar(50) NOT NULL,
  `konten_logo_kabupaten` varchar(50) NOT NULL,
  `path_css` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_logo`
--

INSERT INTO `tbl_logo` (`id_logo`, `konten_logo_desa`, `konten_logo_kabupaten`, `path_css`) VALUES
(1, 'uploads/web/logo_desa.PNG', 'uploads/web/logo_kabupaten.jpg', 'assetku/css/style_kuning.css');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_meninggal`
--

CREATE TABLE `tbl_meninggal` (
  `id_meninggal` int(10) NOT NULL,
  `tgl_meninggal` datetime NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sebab` varchar(50) DEFAULT NULL,
  `id_penduduk` int(10) DEFAULT NULL,
  `penentu_kematian` varchar(50) DEFAULT NULL,
  `tempat_kematian` varchar(100) DEFAULT NULL,
  `id_pelapor` int(10) DEFAULT NULL,
  `nama_pelapor` varchar(100) DEFAULT NULL,
  `hubungan_pelapor` varchar(100) DEFAULT NULL,
  `id_surat` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `id` int(10) NOT NULL,
  `url` text NOT NULL,
  `title` text NOT NULL,
  `content` blob NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `url`, `title`, `content`, `updated`) VALUES
(1, 'web/c_home/get_detail_berita/1', 'MI Nurul Islam Kalijurang Raih Juara 1 LCC Tingkat Kecamatan Tonjong', 0x3c64697620616c69676e3d226a757374696679223e3c623e4b616c696a7572616e67204d616e646972693c2f623e2c20313220536570656d626572204c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261203c753e6e6f6e3c2f753e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e, '2023-06-21 05:24:55'),
(2, 'web/c_home/get_detail_berita/2', 'Waspada Peredaran Nyamuk Saat Musim Hujan', 0x3c64697620616c69676e3d226a757374696679223e3c623e4b616c696a7572616e673c2f623e2c203033204d6569204c6f72656d2c20697073756d20646f6c6f722073697420616d657420636f6e7365637465747572206164697069736963696e6720656c69742e20457374206d696e757320696e636964756e74206f7074696f20697073612064696374612071756165207175616572617420657870656469746120636f72706f72697320726570656c6c656e6475732066756769617420616c697175616d2c206c61626f72696f73616d206174206e6f737472756d20617574656d20617373756d656e646120646f6c6f72756d2064697374696e6374696f20766f6c7570746174696275732c206d6178696d652071756962757364616d2064656c656e69746920616c697175696420726570656c6c6174207175616d2e20457865726369746174696f6e656d2073696d696c69717565206175742c20706f72726f206173706572696f72657320726174696f6e652064656c656e6974692071756961207175617320726572756d20766f6c7570746174696275732066756769617421205175616d20766f6c757074617320617373756d656e6461207365642074656d706f72652120446f6c6f7269627573207175616520686172756d206e6f6269732063756c706120626c616e6469746969732070726f766964656e74206573736520667567696174207175616d206e6563657373697461746962757320756e6465206f7074696f206e6968696c207072616573656e7469756d20766f6c7570746174652c20696e76656e746f72652065756d20636f6d6d6f64692e20517569737175616d206e6f62697320646f6c6f72656d206e6968696c2061737065726e61747572207265637573616e646165207175616d2c206d696e7573206163637573616d7573206265617461652074656d706f7261206e6f6e206d6178696d652c206e6571756520726570656c6c6174206c696265726f20616c697175696420667567697420717561736920656120656172756d2e204f6263616563617469206164697069736369206d61676e69206f6666696369697320697461717565206561717565206d696e696d612e2050657273706963696174697320726570726568656e64657269742061642064696374612065756d206d61676e692e204f62636165636174692c20696e76656e746f72652e204465736572756e74207265696369656e64697320646f6c6f72656d206f6666696369697320706572666572656e6469732066616365726520656172756d2c206469676e697373696d6f73206c61626f7265206f646974207072616573656e7469756d20612c20617373756d656e646120616420616c69717569642065743f3c62723e3c2f6469763e, '2023-06-21 05:25:28'),
(5, 'web/c_sejarah', 'Sejarah Desa', 0x202020202020202020202020202020203c64697620616c69676e3d226a757374696679223e3c666f6e742073697a653d2234223e44657361204b616c696a7572616e67206164616c61682073656275616820646573612079616e67207465726c6574616b206469204b6563616d6174616e20546f6e6a6f6e672c204b616275706174656e204272656265732c2050726f76696e7369204a6177612054656e6761682079616e67206d616e612070616461206177616c2074657262656e74756b6e796120546168756e2031312c206265726173616c2064617269204b616b656b2053616b65746920286469736562757420656d706174206f72616e672079616e672073616d612d73616d612070656e646174616e67206461726920646165726168206c61696e2079616974752032206f72616e67206461726920646573612042616e79756d61732064616e2032206f72616e67206265726173616c20646172692053757261626179612c2079616e672073656d756c61206e616d6120746572736562757420626f6c65682064696b617461206b656c6f6d706f6b20736174752042617465732028626162617420746562616e6720616c6173206765726f74616e292064616e206b656c6f6d706f6b206b65647561206d656e796562757420646165726168206b657075746968616e20286b6172656e61207375646168206469626162617420746562616e672062657273696829206c616c752073616d612d73616d6120626572636f636f6b2074616e616d2064616e2062657274616e692c2064656e67616e206164616e79612070657274756d627568616e2070656e647564756b2073656d616b696e2070657361742073656972696e672077616b74752064616e207a616d616e2c206d616b61206b65647561206e616d61207365627574616e206974752c20646967616e74692064656e67616e206e616d612064657361204b616c696a7572616e67206f6c65682041737461204d616e6767616c61206b6570616c6120646573612070657274616d612c20616e616b206b65747572756e616e206265726173616c2064617269206b65646972693c2f666f6e743e3c62723e3c2f6469763e20202020202020202020202020, '2023-07-14 08:02:38'),
(6, 'web/c_demografi', 'Demografi Desa', 0x44657361204b616c696a7572616e67206164616c61682073616c61682073617475206465736120646172692031322070657264756b7568616e2079616e6720616461206469204b6563616d6174616e20546f6e6a6f6e672c204b616275706174656e204272656265732e204c6574616b2077696c617961682044657361204b616c696a7572616e672074657264697269206461726920342073697369206a616a6172616e2067656e6a616e672064656e67616e2062617461732077696c61796168203a3c6469763e536562656c6168205574617261203a20446573612047616c75682054696d75722c204b6563616d6174616e20746f6e6a6f6e673c2f6469763e3c6469763e536562656c61682053656c6174616e203a2042756d696179752c204b6563616d6174616e2042756d696179753c2f6469763e3c6469763e536562656c61682054696d7572203a20446573612050656e676761727574616e2c204b6563616d6174616e20536972616d706f673c2f6469763e3c6469763e536562656c6168204261726174203a2044657361204b616c696e7573752c204b6563616d6174616e2042756d696179753c62723e3c756c3e3c6c693e4c7561732057696c617961682044657361204b616c696a7572616e673c2f6c693e3c756c3e3c6c693e50656d756b696d616e20302c3238342c3937204b6d32202f203238342c39372048613c2f6c693e3c6c693e4c6164616e6720302c3339322c3033204b6d32202f203339312c30332048613c2f6c693e3c6c693e536177616820302c3834204b6d32202f2038342048613c2f6c693e3c6c693e4c75617320372c3630204b6d32202f203736302048613c2f6c693e3c2f756c3e3c6c693e4a756d6c61682050656e647564756b2044657361204b616c696a7572616e673c2f6c693e3c756c3e3c6c693e4c616b692d4c616b6920352e333130204a6977613c2f6c693e3c6c693e506572656d7075616e20352e313339204a6977613c2f6c693e3c2f756c3e3c6c693e466173696c697461732050656e646964696b616e2044657361204b616c696a7572616e673c2f6c693e3c756c3e3c6c693e544b203420427561683c2f6c693e3c6c693e5344203620427561683c2f6c693e3c6c693e534d50203220427561683c2f6c693e3c6c693e534c5441203120427561683c2f6c693e3c2f756c3e3c2f756c3e3c6469763e44657361204b616c696a7572616e67204d65727570616b616e20706564657361616e2079616e6720626572736966617420616772617269732c2064656e67616e206d6174612070656e636168617269616e20736562616769616e2070656e647564756b6e7961206164616c616820626572636f636f6b2074616e616d207465727574616d612073656b746f722070657274616e69616e2074616e616d616e2070616e67616e2064656e67616e20686173696c207574616d6120706164692064616e2070616c6177696a612e3c62723e3c2f6469763e3c6469763e3c62723e3c2f6469763e202020202020203c2f6469763e, '2023-07-14 08:28:29'),
(7, 'web/c_visimisi', 'Visi Misi Desa', 0x2020202020202020202020202020203c68333e3c666f6e7420666163653d2268656c766574696361223e566973693c2f666f6e743e3c2f68333e3c6469763e3c703e3c666f6e7420666163653d22617269616c222073697a653d2233223e3c7370616e207374796c653d22636f6c6f723a207267622833332c2033372c203431293b223e224245525749424157412c20414d414e2c20494e4f56415449462c204245525341545520554e54554b204d414a55223c2f7370616e3e3c2f666f6e743e3c2f703e3c68333e3c666f6e7420666163653d2268656c766574696361223e4d6973693c2f666f6e743e3c2f68333e3c6f6c3e3c6c693e426572706572696c616b75204164696c2c206a756a75722064616e206d6572616b79617420736572746120616d616e61682e3c2f6c693e3c6c693e4d6577756a75646b616e206b65616d616e616e2064616e206b65746572746962616e206469206c696e676b756e67616e20646573612064656e67616e206d656e676164616b616e20726f6e6461206469207365746961702052542064692073656c757275682077696c61796168206b616c696a7572616e672e3c2f6c693e3c6c693e4265726b65726a6173616d612064656e67616e2073656c7572756820746f6b6f68206d6173796172616b61742070617261204b7961692c2055737461647a2c20677572752064616e2073656c75727568206f7267616e69736173692079616e67206164612064692064657361206b616c696a7572616e672e3c2f6c693e3c6c693e4d656d7065726261696b6920696e667261737472756b7475722064616e2070656d6572617461616e2070656d626167756e616e2064692073656c757275682077696c617961682064657361206b616c696a7572616e672e3c2f6c693e3c6c693e4d656e677574616d616b616e206b6570656e74696e67616e20756d756d20646961746173206b6570656e74696e67616e20707269626164692061746175206b656c75617267612e3c2f6c693e3c6c693e4d656d616a756b616e206b6567696174616e2070656d7564612070656d7564692064692073656c757275682077696c617961682064657361206b616c696a7572616e672e3c2f6c693e3c6c693e4d656e676164616b616e206b6567696174616e206b65626572736968616e206c696e676b756e67616e2064692073656c757275682077696c617961682064657361206b616c696a7572616e672064656e67616e206e616d61204a756d276174204265727369682e3c2f6c693e3c6c693e4d656e79656469616b616e206d6f62696c20616d62756c616e63652067726174697320756e74756b206d656d666173696c69746173692062616769206d6173796172616b61742079616e67206d656d62757475686b616e2e3c2f6c693e3c6c693e4d656d66756e6773696b616e20617061726174206465736120646172692074696e676b61742052542064616e2073656c757275686e79612e3c2f6c693e3c6c693e4d656e79656c656e67676172616b616e2070656d6572696e746168616e20646573612079616e67206265727369682c2064656d6f6b726173692064616e2074657262656261732064617269206b6f72757073692c206b6f6c7573692064616e206e65706f7469736d652073657274612062656e74756b2d62656e74756b2070656e79656c6577656e67616e2079616e67206c61696e2e3c2f6c693e3c6c693e4d656e676164616b616e204b6567696174616e20506572696e676174616e20486172692d486172692042657361722049736c616d202850484249292064616e20686172692d68617269206265736172206e6173696f6e616c2e3c2f6c693e3c6c693e4d656e67656d62616e676b616e20506572656b6f6e6f6d69616e206d6173796172616b6174206d656c616c75692070656d616e66616174616e20646573612ee280823c2f6c693e3c6c693e4d656e696e676b61746b616e2050656c6179616e616e2079616e67206d616b73696d616c206b6570616461206d6173796172616b617420646573612064616e2064617961207361696e6720646573612ee280823c2f6c693e3c6c693e4d6577756a75646b616e2064616e206d656e696e676b61746b616e207365727461206d656e657275736b616e2074617461206b656c6f6c612070656d6572696e746168616e20646573612079616e67206261696b2e3c2f6c693e3c6c693e4d656e696e676b61746b616e20736172616e612064616e20707261736172616e612064617269207365676920666973696b2c20656b6f6e6f6d692c2070656e646964696b616e2c206b657365686174616e2c206f6c6168726167612064616e206b65627564617961616e20646573612e3c2f6c693e3c2f6f6c3e3c2f6469763e2020202020202020202020202020202020, '2023-07-14 03:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ped_perkebunan`
--

CREATE TABLE `tbl_ped_perkebunan` (
  `id_ped_perkebunan` int(4) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `penggarap` varchar(20) NOT NULL,
  `jumlah_penggarap` int(4) NOT NULL,
  `luas` float NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ped_perkebunan`
--

INSERT INTO `tbl_ped_perkebunan` (`id_ped_perkebunan`, `deskripsi`, `penggarap`, `jumlah_penggarap`, `luas`, `lokasi`, `id_dusun`) VALUES
(1, 'Pohon Jati', 'Buruh', 10, 5, 'Samping jalan', 1),
(2, 'Sawi', 'Pribadi', 30, 10, '-', 3),
(3, 'Kelapa', 'Pribadi', 20, 10, '-', 4),
(4, 'Kacang', 'Buruh', 15, 14, 'Gercabe', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ped_pertambakan`
--

CREATE TABLE `tbl_ped_pertambakan` (
  `id_ped_pertambakan` int(4) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `penggarap` varchar(20) NOT NULL,
  `jumlah_penggarap` int(4) NOT NULL,
  `luas` float NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ped_pertambakan`
--

INSERT INTO `tbl_ped_pertambakan` (`id_ped_pertambakan`, `deskripsi`, `penggarap`, `jumlah_penggarap`, `luas`, `lokasi`, `id_dusun`) VALUES
(1, 'Lele', 'Pribadi', 5, 2, 'Lijah', 2),
(2, 'Munjair', 'Pribadi', 5, 2, 'Karanganyar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ped_pertanian`
--

CREATE TABLE `tbl_ped_pertanian` (
  `id_ped_pertanian` int(4) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `penggarap` varchar(20) NOT NULL,
  `jumlah_penggarap` int(4) NOT NULL,
  `luas` float NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ped_pertanian`
--

INSERT INTO `tbl_ped_pertanian` (`id_ped_pertanian`, `deskripsi`, `penggarap`, `jumlah_penggarap`, `luas`, `lokasi`, `id_dusun`) VALUES
(4, 'Sayuran', 'Buruh', 50, 4, 'Gondang', 1),
(5, 'Padi', 'Pribadi', 50, 12, 'Perairan sungai ', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ped_potensi_wisata`
--

CREATE TABLE `tbl_ped_potensi_wisata` (
  `id_ped_potensi_wisata` int(4) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ped_potensi_wisata`
--

INSERT INTO `tbl_ped_potensi_wisata` (`id_ped_potensi_wisata`, `deskripsi`, `lokasi`, `id_dusun`) VALUES
(1, 'Pasar minggu pagi', 'Dekat gedung NU', 2),
(2, 'Kalijurang Story', '-', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ped_sumber_air`
--

CREATE TABLE `tbl_ped_sumber_air` (
  `id_ped_sumber_air` int(4) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `id_dusun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ped_sumber_air`
--

INSERT INTO `tbl_ped_sumber_air` (`id_ped_sumber_air`, `deskripsi`, `lokasi`, `id_dusun`) VALUES
(1, 'Kali Serut', '-', 2),
(2, 'Kali Wisa', '-', 3),
(3, 'Kali Lijah', '-', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penduduk`
--

CREATE TABLE `tbl_penduduk` (
  `id_penduduk` int(10) NOT NULL,
  `nik` varchar(25) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(25) DEFAULT NULL,
  `tanggal_lahir` datetime DEFAULT NULL,
  `foto` varchar(50) DEFAULT 'uploads/defaultFotoPenduduk.jpg',
  `no_telp` char(15) DEFAULT 'Tidak Diketahui',
  `email` varchar(50) DEFAULT 'Tidak Diketahui',
  `no_kitas` varchar(25) DEFAULT 'Tidak Diketahui',
  `no_paspor` varchar(25) DEFAULT 'Tidak Diketahui',
  `is_sementara` enum('Y','N') NOT NULL DEFAULT 'Y',
  `id_rt` int(10) DEFAULT 0,
  `id_rw` int(10) DEFAULT 0,
  `id_dusun` int(10) DEFAULT 0,
  `id_pendidikan` int(10) DEFAULT 0,
  `is_bsm` enum('Y','N') NOT NULL DEFAULT 'N',
  `id_agama` int(10) DEFAULT 0,
  `id_goldar` int(10) DEFAULT 0,
  `id_pendidikan_terakhir` int(10) DEFAULT 0,
  `id_jen_kel` int(10) DEFAULT 0,
  `id_kewarganegaraan` int(10) DEFAULT 0,
  `id_pekerjaan` int(10) DEFAULT 0,
  `id_pekerjaan_ped` int(10) DEFAULT 0,
  `id_kompetensi` int(10) DEFAULT 0,
  `id_status_kawin` int(10) DEFAULT 0,
  `id_status_penduduk` int(10) DEFAULT 0,
  `id_status_tinggal` int(10) DEFAULT 0,
  `id_difabilitas` int(10) DEFAULT 0,
  `id_kontrasepsi` int(10) DEFAULT 0,
  `pendapatan_per_bulan` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penduduk`
--

INSERT INTO `tbl_penduduk` (`id_penduduk`, `nik`, `nama`, `tempat_lahir`, `tanggal_lahir`, `foto`, `no_telp`, `email`, `no_kitas`, `no_paspor`, `is_sementara`, `id_rt`, `id_rw`, `id_dusun`, `id_pendidikan`, `is_bsm`, `id_agama`, `id_goldar`, `id_pendidikan_terakhir`, `id_jen_kel`, `id_kewarganegaraan`, `id_pekerjaan`, `id_pekerjaan_ped`, `id_kompetensi`, `id_status_kawin`, `id_status_penduduk`, `id_status_tinggal`, `id_difabilitas`, `id_kontrasepsi`, `pendapatan_per_bulan`) VALUES
(8, '647105.060693.0105', 'EDI RIYANTO', 'BREBES', '1965-06-06 00:00:00', 'uploads/647105.060693.0105.jpg', '089619256006', 'Tidak Diketahui', 'Tidak Diketahui', '10002', 'N', 0, 0, 2, 0, 'N', 1, 0, 0, 1, 1, 84, 0, 0, 2, 1, 1, 1, 0, 0),
(9, '647105.060693.0106', 'MUNASIK', 'BREBES', '1957-06-06 00:00:00', 'uploads/647105.060693.0106.jpg', '089619256007', 'Tidak Diketahui', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 4, 2, 1, 17, 'N', 1, 7, 6, 1, 1, 83, 1, 0, 2, 1, 1, 1, 0, 0),
(10, '647105.060693.0107', 'AKHMAD JAELANI', 'BREBES', '1993-10-31 00:00:00', 'uploads/647105.060693.0107.jpg', '089619256008', 'Tidak Diketahui', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 5, 3, 1, 9, 'N', 1, 2, 9, 1, 1, 83, 0, 4, 2, 1, 1, 1, 0, 0),
(12, '647105.060693.0109', 'KARNA', 'BREBES', '1994-04-22 00:00:00', 'uploads/647105.060693.0109.jpg', '85890210023', 'karna@gmail.com', 'Tidak Diketahui', 'Tidak Diketahui', 'N', 4, 2, 3, 6, 'N', 1, 7, 6, 1, 1, 83, 0, 4, 2, 1, 1, 1, 0, 0),
(17, '647105.060693.0114', 'MIFROATUL MUNAWAROH', 'BREBES', '1988-04-16 00:00:00', 'uploads/647105.060693.0114.jpg', '85430340251', 'Tidak Diketahui', '10014', 'Tidak Diketahui', 'N', 1, 1, 3, 8, 'N', 1, 2, 6, 2, 1, 83, 0, 0, 2, 1, 1, 1, 0, 0),
(29, '647105.060693.0126', 'ARIFIN', 'BREBES', '2000-04-16 00:00:00', 'uploads/647105.060693.0126.jpg', '87765100987', 'Tidak Diketahui', '10026', 'Tidak Diketahui', 'N', 1, 1, 4, 18, 'N', 1, 4, 8, 1, 1, 83, 6, 4, 2, 1, 1, 1, 0, 0),
(30, '647105.060693.0127', 'ERWIN HADI SUSILO', 'BREBES', '2001-04-16 00:00:00', 'uploads/647105.060693.0127.jpg', '87765100987', 'Tidak Diketahui', '10027', 'Tidak Diketahui', 'N', 3, 2, 1, 15, 'N', 1, 10, 5, 1, 1, 3, 3, 1, 2, 1, 1, 1, 0, 0),
(34, '647105.060693.0131', 'IMAM MALIKI', 'BREBES', '2005-04-16 00:00:00', 'uploads/647105.060693.0131.jpg', '87765100987', 'Tidak Diketahui', '10031', 'Tidak Diketahui', 'N', 3, 2, 1, 18, 'N', 1, 7, 8, 1, 1, 83, 2, 4, 2, 1, 1, 1, 0, 0),
(35, '647105.060693.0132', 'SARNO', 'BREBES', '2006-04-16 00:00:00', 'uploads/647105.060693.0132.jpg', '87765100987', 'Tidak Diketahui', '10032', '1243', 'N', 1, 1, 4, 7, 'N', 1, 6, 17, 1, 1, 83, 5, 0, 2, 1, 1, 1, 0, 0),
(41, '647105.060693.0138', 'SUGITO', 'BANDUNG', '2012-04-16 00:00:00', 'uploads/647105.060693.0138.jpg', '87765100987', 'Tidak Diketahui', '10038', '23432', 'N', 3, 2, 3, 6, 'N', 1, 10, 6, 2, 1, 83, 5, 2, 2, 1, 1, 1, 0, 0),
(43, '3329060612770002', 'RAIDI SUGANDI', 'BREBES', '1977-12-06 00:00:00', 'uploads/3329060612770002.jpg', '085691740089', '', '', '', 'N', 14, 3, 1, 4, 'N', 1, 2, 4, 1, 1, 86, 4, 3, 2, 1, 3, 1, 0, 0),
(45, '3329066202830001', 'VIKA JOLEKHA', 'BREBES', '1983-02-22 00:00:00', 'uploads/3329066202830001.jpg', '085802452629', '', '', '', 'N', 14, 3, 1, 4, 'N', 1, 8, 4, 2, 1, 2, 3, 0, 2, 1, 1, 1, 0, 0),
(46, '3329061905020001', 'IQBAL MAULUDI PRATAMA', 'BREBES', '2002-05-19 00:00:00', 'uploads/3329061905020001.jpg', '085729821744', 'iqbalmauludipratama019@gmail.com', '', '', 'N', 14, 3, 1, 17, 'N', 1, 7, 17, 1, 1, 3, 3, 5, 1, 1, 1, 1, 0, 0),
(47, '3329064904060002', 'SAKHYATUL MAR\'AH APRILIANI', 'BREBES', '2006-04-09 00:00:00', 'uploads/3329064904060002.jpg', '087873035486', '', '', '', 'N', 14, 3, 1, 15, 'N', 1, 2, 15, 2, 1, 3, 6, 4, 1, 1, 1, 1, 0, 0),
(48, '3329066202830053', 'ABDUL MUJIB', 'BREBES', '2023-06-09 00:00:00', 'uploads/3329066202830053.jpg', '085695446646', '', '', '', 'N', 12, 8, 3, 16, 'N', 1, 9, 7, 1, 1, 83, 5, 2, 2, 1, 1, 1, 0, 0),
(49, '332906061995839', 'IIS MARUNA', 'BREBES', '2012-06-14 00:00:00', 'uploads/332906061995839.jpg', '085695534642', '', '', '', 'N', 10, 7, 3, 9, 'N', 1, 2, 8, 2, 1, 83, 3, 1, 1, 1, 1, 1, 0, 0),
(50, '332906061256747', 'MUSYAFAK BANGKIT DASMUN T', 'BREBES', '2023-06-15 00:00:00', 'uploads/332906061256747.jpg', '085695449381', '', '', '', 'N', 0, 10, 5, 17, 'N', 1, 12, 6, 1, 1, 63, 6, 4, 1, 1, 1, 1, 0, 0),
(51, 'd52c403a6c', 'Kuro ', 'BREBES', '2023-04-15 00:00:00', 'uploads/defaultFotoPenduduk.jpg', 'Tidak Diketahui', 'Tidak Diketahui', 'Tidak Diketahui', 'Tidak Diketahui', 'Y', 14, 3, 1, 0, 'N', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `id_pengguna` int(10) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `role` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `is_delete` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`id_pengguna`, `nik`, `nama_pengguna`, `password`, `nama`, `no_telepon`, `role`, `foto`, `is_delete`) VALUES
(2, '33290', 'admindesa', 'c3284d0f94606de1fd2af172aba15bf3', 'Iqbal Mauludi Pratama', '085729821744', 'Administrator', '', 'Y'),
(4, '33290', 'pengelola', '1f32aa4c9a1d2ea010adcf2348166a04', 'Iqbal Mauludi Pratama', '085729821744', 'Pengelola Data', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perangkat`
--

CREATE TABLE `tbl_perangkat` (
  `id_perangkat` int(10) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `niap` varchar(25) NOT NULL,
  `no_sk_angkat` varchar(50) NOT NULL,
  `tgl_angkat` datetime NOT NULL,
  `id_pangkat_gol` int(11) NOT NULL,
  `no_sk_berhenti` varchar(50) DEFAULT NULL,
  `tgl_berhenti` datetime DEFAULT NULL,
  `id_jabatan` int(10) NOT NULL,
  `id_penduduk` int(10) DEFAULT NULL,
  `is_aktif` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_perangkat`
--

INSERT INTO `tbl_perangkat` (`id_perangkat`, `nip`, `niap`, `no_sk_angkat`, `tgl_angkat`, `id_pangkat_gol`, `no_sk_berhenti`, `tgl_berhenti`, `id_jabatan`, `id_penduduk`, `is_aktif`) VALUES
(4, '33521', '45321', '1489654357', '2021-06-24 00:00:00', 0, '8764534692', '2024-06-13 00:00:00', 1, 8, 'Y'),
(5, '23412', '24214', '8391837461', '2021-06-18 00:00:00', 0, '3819384667', '2024-06-21 00:00:00', 3, 9, 'Y'),
(6, '54253', '14523', '3547283762', '2020-06-18 00:00:00', 0, '3746284761', '2025-06-17 00:00:00', 5, 10, 'Y'),
(7, '23514', '25341', '1826374625', '2021-06-24 00:00:00', 0, '2836472637', '2025-06-26 00:00:00', 6, 12, 'Y'),
(8, '13241', '23132', '12134', '2020-06-04 00:00:00', 0, '2836472413', '2025-06-26 00:00:00', 7, 17, 'Y'),
(9, '43134', '41522', '1826363751', '2019-07-17 00:00:00', 0, '2836467365', '2026-06-22 00:00:00', 8, 29, 'Y'),
(10, '54541', '32451', '1826374253', '2019-06-06 00:00:00', 0, '2836467588', '2023-06-29 00:00:00', 9, 30, 'Y'),
(11, '45243', '13245', '8391842351', '2019-06-19 00:00:00', 0, '3746265789', '2026-06-11 00:00:00', 10, 34, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peta`
--

CREATE TABLE `tbl_peta` (
  `id_peta` int(4) NOT NULL,
  `embed` blob NOT NULL,
  `id_desa` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_peta`
--

INSERT INTO `tbl_peta` (`id_peta`, `embed`, `id_desa`) VALUES
(1, 0x3c696672616d65207372633d2268747470733a2f2f7777772e676f6f676c652e636f6d2f6d6170732f656d6265643f70623d21316d313821316d313221316d3321316433313636352e31373635323534393135332132643130382e39383332383533343735353632332133642d372e32323430363130383830333032393621326d3321316630213266302133663021336d322131693130323421326937363821346631332e3121336d3321316d322131733078326536663866386265633966656330333a30783530323761373665333536373964302132734b616c696a7572616e672c204b65632e20546f6e6a6f6e672c204b616275706174656e204272656265732c204a6177612054656e6761682135653021336d32213173696421327369642134763136383734323931303733343021356d3221317369642132736964222077696474683d2236303022206865696768743d2234353022207374796c653d22626f726465723a303b2220616c6c6f7766756c6c73637265656e3d2222206c6f6164696e673d226c617a7922207265666572726572706f6c6963793d226e6f2d72656665727265722d7768656e2d646f776e6772616465223e3c2f696672616d653e20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pindah_keluar`
--

CREATE TABLE `tbl_pindah_keluar` (
  `id_pindah_keluar` int(10) NOT NULL,
  `tgl_pindah_keluar` datetime NOT NULL,
  `no_kk` varchar(25) NOT NULL,
  `alamat_jalan` varchar(100) NOT NULL,
  `nomor_rt` varchar(5) NOT NULL,
  `nomor_rw` varchar(5) NOT NULL,
  `nama_dusun` varchar(30) NOT NULL,
  `nama_desa` varchar(30) NOT NULL,
  `nama_kecamatan` varchar(30) NOT NULL,
  `nama_kabkota` varchar(30) NOT NULL,
  `nama_provinsi` varchar(30) NOT NULL,
  `id_keluarga` int(10) NOT NULL,
  `id_penduduk` int(10) NOT NULL,
  `id_jenis_pindah` int(10) NOT NULL,
  `id_klasifikasi_pindah` int(10) NOT NULL,
  `id_alasan_pindah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pindah_masuk`
--

CREATE TABLE `tbl_pindah_masuk` (
  `id_pindah_masuk` int(10) NOT NULL,
  `tgl_pindah_masuk` datetime NOT NULL,
  `no_kk` varchar(25) NOT NULL,
  `alamat_jalan` varchar(100) NOT NULL,
  `id_rt` int(10) NOT NULL,
  `id_rw` int(10) NOT NULL,
  `id_dusun` int(10) NOT NULL,
  `id_desa` int(10) NOT NULL,
  `id_penduduk` int(10) NOT NULL,
  `id_keluarga` int(10) NOT NULL,
  `id_jenis_pindah` int(10) NOT NULL,
  `id_klasifikasi_pindah` int(10) NOT NULL,
  `id_alasan_pindah` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_regulasi`
--

CREATE TABLE `tbl_regulasi` (
  `id_regulasi` int(11) NOT NULL,
  `judul_regulasi` varchar(100) NOT NULL,
  `isi_regulasi` varchar(100) NOT NULL,
  `file_regulasi` varchar(100) NOT NULL,
  `id_desa` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_regulasi`
--

INSERT INTO `tbl_regulasi` (`id_regulasi`, `judul_regulasi`, `isi_regulasi`, `file_regulasi`, `id_desa`) VALUES
(4, 'ADART', 'Anggaran Dasar Rumah Tangga tahun 2023', 'uploads/files/ADART.pdf', 1),
(6, 'UUD', 'Undang Undang Desa', 'uploads/files/UUD.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sejarah`
--

CREATE TABLE `tbl_sejarah` (
  `id_sejarah` int(10) NOT NULL,
  `id_pengguna` int(10) NOT NULL,
  `isi_sejarah` blob NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto_banner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sejarah`
--

INSERT INTO `tbl_sejarah` (`id_sejarah`, `id_pengguna`, `isi_sejarah`, `waktu`, `foto_banner`) VALUES
(1, 2, 0x202020202020202020202020202020203c64697620616c69676e3d226a757374696679223e3c666f6e742073697a653d2234223e44657361204b616c696a7572616e67206164616c61682073656275616820646573612079616e67207465726c6574616b206469204b6563616d6174616e20546f6e6a6f6e672c204b616275706174656e204272656265732c2050726f76696e7369204a6177612054656e6761682079616e67206d616e612070616461206177616c2074657262656e74756b6e796120546168756e2031312c206265726173616c2064617269204b616b656b2053616b65746920286469736562757420656d706174206f72616e672079616e672073616d612d73616d612070656e646174616e67206461726920646165726168206c61696e2079616974752032206f72616e67206461726920646573612042616e79756d61732064616e2032206f72616e67206265726173616c20646172692053757261626179612c2079616e672073656d756c61206e616d6120746572736562757420626f6c65682064696b617461206b656c6f6d706f6b20736174752042617465732028626162617420746562616e6720616c6173206765726f74616e292064616e206b656c6f6d706f6b206b65647561206d656e796562757420646165726168206b657075746968616e20286b6172656e61207375646168206469626162617420746562616e672062657273696829206c616c752073616d612d73616d6120626572636f636f6b2074616e616d2064616e2062657274616e692c2064656e67616e206164616e79612070657274756d627568616e2070656e647564756b2073656d616b696e2070657361742073656972696e672077616b74752064616e207a616d616e2c206d616b61206b65647561206e616d61207365627574616e206974752c20646967616e74692064656e67616e206e616d612064657361204b616c696a7572616e67206f6c65682041737461204d616e6767616c61206b6570616c6120646573612070657274616d612c20616e616b206b65747572756e616e206265726173616c2064617269206b65646972693c2f666f6e743e3c62723e3c2f6469763e20202020202020202020202020, '2023-07-14 08:02:38', 'uploads/web/foto_banner_sejarah2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider_beranda`
--

CREATE TABLE `tbl_slider_beranda` (
  `id_slider_beranda` int(11) NOT NULL,
  `konten_background` varchar(100) NOT NULL,
  `konten_logo` varchar(100) NOT NULL,
  `konten_teks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider_beranda`
--

INSERT INTO `tbl_slider_beranda` (`id_slider_beranda`, `konten_background`, `konten_logo`, `konten_teks`) VALUES
(8, 'uploads/web/slider_beranda/background_310.jpg', 'uploads/web/slider_beranda/logo_310.png', 'Pedesaan Agraris'),
(9, 'uploads/web/slider_beranda/background_fbe.jpg', 'uploads/web/slider_beranda/logo_fbe.png', 'Potensi Wisata');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat`
--

CREATE TABLE `tbl_surat` (
  `id_surat` int(10) NOT NULL,
  `nomor_surat` varchar(25) NOT NULL,
  `tgl_surat` datetime NOT NULL,
  `tgl_awal` datetime NOT NULL,
  `tgl_akhir` datetime NOT NULL,
  `nomor_registrasi` int(10) NOT NULL,
  `judul_surat` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `kata_penutup` text NOT NULL,
  `kode_surat` int(10) NOT NULL DEFAULT 0,
  `id_perangkat` int(10) NOT NULL,
  `id_penduduk` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_surat`
--

INSERT INTO `tbl_surat` (`id_surat`, `nomor_surat`, `tgl_surat`, `tgl_awal`, `tgl_akhir`, `nomor_registrasi`, `judul_surat`, `keterangan`, `kata_penutup`, `kode_surat`, `id_perangkat`, `id_penduduk`) VALUES
(1, '1/0/2019', '2023-06-24 00:00:00', '2019-11-11 00:00:00', '2019-11-14 00:00:00', 1, 'membuat kk', 'membuat kk', 'add', 1, 4, 12),
(2, '2/200/2019', '2023-06-24 00:00:00', '2019-11-20 00:00:00', '2019-11-26 00:00:00', 2, 'izin pindah', 'pindah', 'df', 3, 4, 0),
(3, '1/100/2023', '2023-06-24 00:00:00', '2023-06-24 00:00:00', '2023-06-28 00:00:00', 1, 'Izin Membuat KTP', 'membuat ktp', 'demikian surat pernyataan ini, ditujukan langsung dari pemerintah desa', 2, 4, 47),
(4, '3/1000/2023', '2023-07-15 00:00:00', '2023-07-15 00:00:00', '0000-00-00 00:00:00', 3, 'Kelahiran', 'Surat Kelahiran', '         Demikian surat ini dibuat agar dapat digunakan sebagaimana mestinya. Atas perhatiannya kami ucapkan terima kasih.', 11, 5, 51);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visi_misi`
--

CREATE TABLE `tbl_visi_misi` (
  `id_visi_misi` int(10) NOT NULL,
  `id_pengguna` int(10) NOT NULL,
  `isi_visi_misi` blob NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto_banner` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_visi_misi`
--

INSERT INTO `tbl_visi_misi` (`id_visi_misi`, `id_pengguna`, `isi_visi_misi`, `waktu`, `foto_banner`) VALUES
(1, 2, 0x2020202020202020202020202020203c68333e3c666f6e7420666163653d2268656c766574696361223e566973693c2f666f6e743e3c2f68333e3c6469763e3c703e3c666f6e7420666163653d22617269616c222073697a653d2233223e3c7370616e207374796c653d22636f6c6f723a207267622833332c2033372c203431293b223e224245525749424157412c20414d414e2c20494e4f56415449462c204245525341545520554e54554b204d414a55223c2f7370616e3e3c2f666f6e743e3c2f703e3c68333e3c666f6e7420666163653d2268656c766574696361223e4d6973693c2f666f6e743e3c2f68333e3c6f6c3e3c6c693e426572706572696c616b75204164696c2c206a756a75722064616e206d6572616b79617420736572746120616d616e61682e3c2f6c693e3c6c693e4d6577756a75646b616e206b65616d616e616e2064616e206b65746572746962616e206469206c696e676b756e67616e20646573612064656e67616e206d656e676164616b616e20726f6e6461206469207365746961702052542064692073656c757275682077696c61796168206b616c696a7572616e672e3c2f6c693e3c6c693e4265726b65726a6173616d612064656e67616e2073656c7572756820746f6b6f68206d6173796172616b61742070617261204b7961692c2055737461647a2c20677572752064616e2073656c75727568206f7267616e69736173692079616e67206164612064692064657361206b616c696a7572616e672e3c2f6c693e3c6c693e4d656d7065726261696b6920696e667261737472756b7475722064616e2070656d6572617461616e2070656d626167756e616e2064692073656c757275682077696c617961682064657361206b616c696a7572616e672e3c2f6c693e3c6c693e4d656e677574616d616b616e206b6570656e74696e67616e20756d756d20646961746173206b6570656e74696e67616e20707269626164692061746175206b656c75617267612e3c2f6c693e3c6c693e4d656d616a756b616e206b6567696174616e2070656d7564612070656d7564692064692073656c757275682077696c617961682064657361206b616c696a7572616e672e3c2f6c693e3c6c693e4d656e676164616b616e206b6567696174616e206b65626572736968616e206c696e676b756e67616e2064692073656c757275682077696c617961682064657361206b616c696a7572616e672064656e67616e206e616d61204a756d276174204265727369682e3c2f6c693e3c6c693e4d656e79656469616b616e206d6f62696c20616d62756c616e63652067726174697320756e74756b206d656d666173696c69746173692062616769206d6173796172616b61742079616e67206d656d62757475686b616e2e3c2f6c693e3c6c693e4d656d66756e6773696b616e20617061726174206465736120646172692074696e676b61742052542064616e2073656c757275686e79612e3c2f6c693e3c6c693e4d656e79656c656e67676172616b616e2070656d6572696e746168616e20646573612079616e67206265727369682c2064656d6f6b726173692064616e2074657262656261732064617269206b6f72757073692c206b6f6c7573692064616e206e65706f7469736d652073657274612062656e74756b2d62656e74756b2070656e79656c6577656e67616e2079616e67206c61696e2e3c2f6c693e3c6c693e4d656e676164616b616e204b6567696174616e20506572696e676174616e20486172692d486172692042657361722049736c616d202850484249292064616e20686172692d68617269206265736172206e6173696f6e616c2e3c2f6c693e3c6c693e4d656e67656d62616e676b616e20506572656b6f6e6f6d69616e206d6173796172616b6174206d656c616c75692070656d616e66616174616e20646573612ee280823c2f6c693e3c6c693e4d656e696e676b61746b616e2050656c6179616e616e2079616e67206d616b73696d616c206b6570616461206d6173796172616b617420646573612064616e2064617961207361696e6720646573612ee280823c2f6c693e3c6c693e4d6577756a75646b616e2064616e206d656e696e676b61746b616e207365727461206d656e657275736b616e2074617461206b656c6f6c612070656d6572696e746168616e20646573612079616e67206261696b2e3c2f6c693e3c6c693e4d656e696e676b61746b616e20736172616e612064616e20707261736172616e612064617269207365676920666973696b2c20656b6f6e6f6d692c2070656e646964696b616e2c206b657365686174616e2c206f6c6168726167612064616e206b65627564617961616e20646573612e3c2f6c693e3c2f6f6c3e3c2f6469763e2020202020202020202020202020202020, '2023-07-13 22:51:00', 'uploads/web/foto_banner_visimisii.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ref_agama`
--
ALTER TABLE `ref_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `ref_alasan_pindah`
--
ALTER TABLE `ref_alasan_pindah`
  ADD PRIMARY KEY (`id_alasan_pindah`);

--
-- Indexes for table `ref_desa`
--
ALTER TABLE `ref_desa`
  ADD PRIMARY KEY (`id_desa`),
  ADD KEY `id_kecamatan` (`id_kecamatan`),
  ADD KEY `id_penduduk` (`id_penduduk`);

--
-- Indexes for table `ref_difabilitas`
--
ALTER TABLE `ref_difabilitas`
  ADD PRIMARY KEY (`id_difabilitas`);

--
-- Indexes for table `ref_dusun`
--
ALTER TABLE `ref_dusun`
  ADD PRIMARY KEY (`id_dusun`),
  ADD KEY `id_desa` (`id_desa`),
  ADD KEY `id_penduduk` (`id_penduduk`);

--
-- Indexes for table `ref_goldar`
--
ALTER TABLE `ref_goldar`
  ADD PRIMARY KEY (`id_goldar`);

--
-- Indexes for table `ref_jabatan`
--
ALTER TABLE `ref_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `ref_jenis_pindah`
--
ALTER TABLE `ref_jenis_pindah`
  ADD PRIMARY KEY (`id_jenis_pindah`);

--
-- Indexes for table `ref_jen_kel`
--
ALTER TABLE `ref_jen_kel`
  ADD PRIMARY KEY (`id_jen_kel`);

--
-- Indexes for table `ref_kab_kota`
--
ALTER TABLE `ref_kab_kota`
  ADD PRIMARY KEY (`id_kab_kota`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `ref_kecamatan`
--
ALTER TABLE `ref_kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`),
  ADD KEY `id_kab_kota` (`id_kab_kota`);

--
-- Indexes for table `ref_kelas_sosial`
--
ALTER TABLE `ref_kelas_sosial`
  ADD PRIMARY KEY (`id_kelas_sosial`);

--
-- Indexes for table `ref_kewarganegaraan`
--
ALTER TABLE `ref_kewarganegaraan`
  ADD PRIMARY KEY (`id_kewarganegaraan`);

--
-- Indexes for table `ref_klasifikasi_pindah`
--
ALTER TABLE `ref_klasifikasi_pindah`
  ADD PRIMARY KEY (`id_klasifikasi_pindah`);

--
-- Indexes for table `ref_kode_surat`
--
ALTER TABLE `ref_kode_surat`
  ADD PRIMARY KEY (`kode_surat`);

--
-- Indexes for table `ref_kompetensi`
--
ALTER TABLE `ref_kompetensi`
  ADD PRIMARY KEY (`id_kompetensi`);

--
-- Indexes for table `ref_kontrasepsi`
--
ALTER TABLE `ref_kontrasepsi`
  ADD PRIMARY KEY (`id_kontrasepsi`);

--
-- Indexes for table `ref_pangkat_gol`
--
ALTER TABLE `ref_pangkat_gol`
  ADD PRIMARY KEY (`id_pangkat_gol`);

--
-- Indexes for table `ref_pekerjaan`
--
ALTER TABLE `ref_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `ref_pekerjaan_ped`
--
ALTER TABLE `ref_pekerjaan_ped`
  ADD PRIMARY KEY (`id_pekerjaan_ped`);

--
-- Indexes for table `ref_pelapor`
--
ALTER TABLE `ref_pelapor`
  ADD PRIMARY KEY (`id_pelapor`);

--
-- Indexes for table `ref_pendidikan`
--
ALTER TABLE `ref_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `ref_provinsi`
--
ALTER TABLE `ref_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `ref_rt`
--
ALTER TABLE `ref_rt`
  ADD PRIMARY KEY (`id_rt`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `id_rw` (`id_rw`),
  ADD KEY `id_penduduk_2` (`id_penduduk`);

--
-- Indexes for table `ref_rw`
--
ALTER TABLE `ref_rw`
  ADD PRIMARY KEY (`id_rw`),
  ADD KEY `id_dusun` (`id_dusun`),
  ADD KEY `id_penduduk` (`id_penduduk`);

--
-- Indexes for table `ref_status_kawin`
--
ALTER TABLE `ref_status_kawin`
  ADD PRIMARY KEY (`id_status_kawin`);

--
-- Indexes for table `ref_status_keluarga`
--
ALTER TABLE `ref_status_keluarga`
  ADD PRIMARY KEY (`id_status_keluarga`);

--
-- Indexes for table `ref_status_penduduk`
--
ALTER TABLE `ref_status_penduduk`
  ADD PRIMARY KEY (`id_status_penduduk`);

--
-- Indexes for table `ref_status_tinggal`
--
ALTER TABLE `ref_status_tinggal`
  ADD PRIMARY KEY (`id_status_tinggal`);

--
-- Indexes for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tbl_demografi`
--
ALTER TABLE `tbl_demografi`
  ADD PRIMARY KEY (`id_demografi`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tbl_gizi_buruk`
--
ALTER TABLE `tbl_gizi_buruk`
  ADD PRIMARY KEY (`id_gizi_buruk`),
  ADD KEY `id_penduduk` (`id_penduduk`);

--
-- Indexes for table `tbl_hub_kel`
--
ALTER TABLE `tbl_hub_kel`
  ADD PRIMARY KEY (`id_hub_kel`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `id_keluarga` (`id_keluarga`),
  ADD KEY `id_status_keluarga` (`id_status_keluarga`);

--
-- Indexes for table `tbl_ikut_pindah_keluar`
--
ALTER TABLE `tbl_ikut_pindah_keluar`
  ADD PRIMARY KEY (`id_ikut_pindah_keluar`),
  ADD KEY `id_penduduk` (`id_penduduk`);

--
-- Indexes for table `tbl_ikut_pindah_masuk`
--
ALTER TABLE `tbl_ikut_pindah_masuk`
  ADD PRIMARY KEY (`id_ikut_pindah_masuk`),
  ADD KEY `id_penduduk` (`id_penduduk`);

--
-- Indexes for table `tbl_kelahiran`
--
ALTER TABLE `tbl_kelahiran`
  ADD PRIMARY KEY (`id_kelahiran`),
  ADD KEY `id_ayah` (`id_keluarga`),
  ADD KEY `id_pelapor` (`id_pelapor`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `id_surat` (`id_surat`);

--
-- Indexes for table `tbl_keluarga`
--
ALTER TABLE `tbl_keluarga`
  ADD PRIMARY KEY (`id_keluarga`),
  ADD KEY `FK_keluarga_penduduk` (`id_kepala_keluarga`),
  ADD KEY `id_kelas_sosial` (`id_kelas_sosial`),
  ADD KEY `id_kepala_keluarga` (`id_kepala_keluarga`),
  ADD KEY `id_rt` (`id_rt`),
  ADD KEY `id_rw` (`id_rw`),
  ADD KEY `id_dusun` (`id_dusun`);

--
-- Indexes for table `tbl_kondisi_kehamilan`
--
ALTER TABLE `tbl_kondisi_kehamilan`
  ADD PRIMARY KEY (`id_kondisi_kehamilan`),
  ADD KEY `id_penduduk` (`id_penduduk`);

--
-- Indexes for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indexes for table `tbl_lembaga_desa`
--
ALTER TABLE `tbl_lembaga_desa`
  ADD PRIMARY KEY (`id_lembaga_desa`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `tbl_meninggal`
--
ALTER TABLE `tbl_meninggal`
  ADD PRIMARY KEY (`id_meninggal`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `id_pelapor` (`id_pelapor`),
  ADD KEY `id_surat` (`id_surat`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ped_perkebunan`
--
ALTER TABLE `tbl_ped_perkebunan`
  ADD PRIMARY KEY (`id_ped_perkebunan`),
  ADD KEY `id_dusun` (`id_dusun`);

--
-- Indexes for table `tbl_ped_pertambakan`
--
ALTER TABLE `tbl_ped_pertambakan`
  ADD PRIMARY KEY (`id_ped_pertambakan`),
  ADD KEY `id_dusun` (`id_dusun`);

--
-- Indexes for table `tbl_ped_pertanian`
--
ALTER TABLE `tbl_ped_pertanian`
  ADD PRIMARY KEY (`id_ped_pertanian`),
  ADD KEY `id_dusun` (`id_dusun`);

--
-- Indexes for table `tbl_ped_potensi_wisata`
--
ALTER TABLE `tbl_ped_potensi_wisata`
  ADD PRIMARY KEY (`id_ped_potensi_wisata`),
  ADD KEY `id_dusun` (`id_dusun`);

--
-- Indexes for table `tbl_ped_sumber_air`
--
ALTER TABLE `tbl_ped_sumber_air`
  ADD PRIMARY KEY (`id_ped_sumber_air`),
  ADD KEY `id_dusun` (`id_dusun`);

--
-- Indexes for table `tbl_penduduk`
--
ALTER TABLE `tbl_penduduk`
  ADD PRIMARY KEY (`id_penduduk`),
  ADD KEY `id_rt` (`id_rt`),
  ADD KEY `id_rw` (`id_rw`),
  ADD KEY `id_dusun` (`id_dusun`),
  ADD KEY `id_pendidikan` (`id_pendidikan`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `id_goldar` (`id_goldar`),
  ADD KEY `id_pendidikan_terakhir` (`id_pendidikan_terakhir`),
  ADD KEY `id_jen_kel` (`id_jen_kel`),
  ADD KEY `id_kewarganegaraan` (`id_kewarganegaraan`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`),
  ADD KEY `id_pekerjaan_ped` (`id_pekerjaan_ped`),
  ADD KEY `id_kompetensi` (`id_kompetensi`),
  ADD KEY `id_status_kawin` (`id_status_kawin`),
  ADD KEY `id_status_penduduk` (`id_status_penduduk`),
  ADD KEY `id_status_tinggal` (`id_status_tinggal`),
  ADD KEY `id_difabilitas` (`id_difabilitas`),
  ADD KEY `id_kontrasepsi` (`id_kontrasepsi`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `tbl_perangkat`
--
ALTER TABLE `tbl_perangkat`
  ADD PRIMARY KEY (`id_perangkat`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `id_pangkat_gol` (`id_pangkat_gol`);

--
-- Indexes for table `tbl_peta`
--
ALTER TABLE `tbl_peta`
  ADD PRIMARY KEY (`id_peta`),
  ADD KEY `id_desa` (`id_desa`);

--
-- Indexes for table `tbl_pindah_keluar`
--
ALTER TABLE `tbl_pindah_keluar`
  ADD PRIMARY KEY (`id_pindah_keluar`),
  ADD KEY `id_rt` (`nomor_rt`),
  ADD KEY `id_rw` (`nomor_rw`),
  ADD KEY `id_dusun` (`nama_dusun`),
  ADD KEY `id_desa` (`nama_desa`),
  ADD KEY `id_keluarga` (`id_keluarga`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `id_jenis_pindah` (`id_jenis_pindah`),
  ADD KEY `id_klasifikasi_pindah` (`id_klasifikasi_pindah`),
  ADD KEY `id_alasan_pindah` (`id_alasan_pindah`);

--
-- Indexes for table `tbl_pindah_masuk`
--
ALTER TABLE `tbl_pindah_masuk`
  ADD PRIMARY KEY (`id_pindah_masuk`),
  ADD KEY `id_rt` (`id_rt`),
  ADD KEY `id_rw` (`id_rw`),
  ADD KEY `id_dusun` (`id_dusun`),
  ADD KEY `id_desa` (`id_desa`),
  ADD KEY `id_penduduk` (`id_penduduk`),
  ADD KEY `id_keluarga` (`id_keluarga`),
  ADD KEY `id_jenis_pindah` (`id_jenis_pindah`),
  ADD KEY `id_klasifikasi_pindah` (`id_klasifikasi_pindah`),
  ADD KEY `id_alasan_pindah` (`id_alasan_pindah`);

--
-- Indexes for table `tbl_regulasi`
--
ALTER TABLE `tbl_regulasi`
  ADD PRIMARY KEY (`id_regulasi`),
  ADD KEY `id_desa` (`id_desa`);

--
-- Indexes for table `tbl_sejarah`
--
ALTER TABLE `tbl_sejarah`
  ADD PRIMARY KEY (`id_sejarah`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `tbl_slider_beranda`
--
ALTER TABLE `tbl_slider_beranda`
  ADD PRIMARY KEY (`id_slider_beranda`);

--
-- Indexes for table `tbl_surat`
--
ALTER TABLE `tbl_surat`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `id_perangkat` (`id_perangkat`);

--
-- Indexes for table `tbl_visi_misi`
--
ALTER TABLE `tbl_visi_misi`
  ADD PRIMARY KEY (`id_visi_misi`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ref_agama`
--
ALTER TABLE `ref_agama`
  MODIFY `id_agama` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ref_alasan_pindah`
--
ALTER TABLE `ref_alasan_pindah`
  MODIFY `id_alasan_pindah` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_desa`
--
ALTER TABLE `ref_desa`
  MODIFY `id_desa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_difabilitas`
--
ALTER TABLE `ref_difabilitas`
  MODIFY `id_difabilitas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ref_dusun`
--
ALTER TABLE `ref_dusun`
  MODIFY `id_dusun` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ref_goldar`
--
ALTER TABLE `ref_goldar`
  MODIFY `id_goldar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ref_jabatan`
--
ALTER TABLE `ref_jabatan`
  MODIFY `id_jabatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ref_jenis_pindah`
--
ALTER TABLE `ref_jenis_pindah`
  MODIFY `id_jenis_pindah` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_jen_kel`
--
ALTER TABLE `ref_jen_kel`
  MODIFY `id_jen_kel` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ref_kab_kota`
--
ALTER TABLE `ref_kab_kota`
  MODIFY `id_kab_kota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_kecamatan`
--
ALTER TABLE `ref_kecamatan`
  MODIFY `id_kecamatan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_kelas_sosial`
--
ALTER TABLE `ref_kelas_sosial`
  MODIFY `id_kelas_sosial` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ref_kewarganegaraan`
--
ALTER TABLE `ref_kewarganegaraan`
  MODIFY `id_kewarganegaraan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ref_klasifikasi_pindah`
--
ALTER TABLE `ref_klasifikasi_pindah`
  MODIFY `id_klasifikasi_pindah` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_kode_surat`
--
ALTER TABLE `ref_kode_surat`
  MODIFY `kode_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ref_kompetensi`
--
ALTER TABLE `ref_kompetensi`
  MODIFY `id_kompetensi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ref_kontrasepsi`
--
ALTER TABLE `ref_kontrasepsi`
  MODIFY `id_kontrasepsi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ref_pangkat_gol`
--
ALTER TABLE `ref_pangkat_gol`
  MODIFY `id_pangkat_gol` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ref_pekerjaan`
--
ALTER TABLE `ref_pekerjaan`
  MODIFY `id_pekerjaan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `ref_pekerjaan_ped`
--
ALTER TABLE `ref_pekerjaan_ped`
  MODIFY `id_pekerjaan_ped` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ref_pelapor`
--
ALTER TABLE `ref_pelapor`
  MODIFY `id_pelapor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ref_pendidikan`
--
ALTER TABLE `ref_pendidikan`
  MODIFY `id_pendidikan` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ref_provinsi`
--
ALTER TABLE `ref_provinsi`
  MODIFY `id_provinsi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_rt`
--
ALTER TABLE `ref_rt`
  MODIFY `id_rt` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ref_rw`
--
ALTER TABLE `ref_rw`
  MODIFY `id_rw` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ref_status_kawin`
--
ALTER TABLE `ref_status_kawin`
  MODIFY `id_status_kawin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ref_status_keluarga`
--
ALTER TABLE `ref_status_keluarga`
  MODIFY `id_status_keluarga` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ref_status_penduduk`
--
ALTER TABLE `ref_status_penduduk`
  MODIFY `id_status_penduduk` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ref_status_tinggal`
--
ALTER TABLE `ref_status_tinggal`
  MODIFY `id_status_tinggal` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `id_berita` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_demografi`
--
ALTER TABLE `tbl_demografi`
  MODIFY `id_demografi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_gizi_buruk`
--
ALTER TABLE `tbl_gizi_buruk`
  MODIFY `id_gizi_buruk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_hub_kel`
--
ALTER TABLE `tbl_hub_kel`
  MODIFY `id_hub_kel` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_ikut_pindah_keluar`
--
ALTER TABLE `tbl_ikut_pindah_keluar`
  MODIFY `id_ikut_pindah_keluar` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ikut_pindah_masuk`
--
ALTER TABLE `tbl_ikut_pindah_masuk`
  MODIFY `id_ikut_pindah_masuk` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_kelahiran`
--
ALTER TABLE `tbl_kelahiran`
  MODIFY `id_kelahiran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_keluarga`
--
ALTER TABLE `tbl_keluarga`
  MODIFY `id_keluarga` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_kondisi_kehamilan`
--
ALTER TABLE `tbl_kondisi_kehamilan`
  MODIFY `id_kondisi_kehamilan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_kontak`
--
ALTER TABLE `tbl_kontak`
  MODIFY `id_kontak` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_lembaga_desa`
--
ALTER TABLE `tbl_lembaga_desa`
  MODIFY `id_lembaga_desa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `id_log` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `tbl_logo`
--
ALTER TABLE `tbl_logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_meninggal`
--
ALTER TABLE `tbl_meninggal`
  MODIFY `id_meninggal` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_ped_perkebunan`
--
ALTER TABLE `tbl_ped_perkebunan`
  MODIFY `id_ped_perkebunan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ped_pertambakan`
--
ALTER TABLE `tbl_ped_pertambakan`
  MODIFY `id_ped_pertambakan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_ped_pertanian`
--
ALTER TABLE `tbl_ped_pertanian`
  MODIFY `id_ped_pertanian` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_ped_potensi_wisata`
--
ALTER TABLE `tbl_ped_potensi_wisata`
  MODIFY `id_ped_potensi_wisata` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_ped_sumber_air`
--
ALTER TABLE `tbl_ped_sumber_air`
  MODIFY `id_ped_sumber_air` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_penduduk`
--
ALTER TABLE `tbl_penduduk`
  MODIFY `id_penduduk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `id_pengguna` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_perangkat`
--
ALTER TABLE `tbl_perangkat`
  MODIFY `id_perangkat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_peta`
--
ALTER TABLE `tbl_peta`
  MODIFY `id_peta` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pindah_keluar`
--
ALTER TABLE `tbl_pindah_keluar`
  MODIFY `id_pindah_keluar` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pindah_masuk`
--
ALTER TABLE `tbl_pindah_masuk`
  MODIFY `id_pindah_masuk` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_regulasi`
--
ALTER TABLE `tbl_regulasi`
  MODIFY `id_regulasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sejarah`
--
ALTER TABLE `tbl_sejarah`
  MODIFY `id_sejarah` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider_beranda`
--
ALTER TABLE `tbl_slider_beranda`
  MODIFY `id_slider_beranda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_surat`
--
ALTER TABLE `tbl_surat`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_visi_misi`
--
ALTER TABLE `tbl_visi_misi`
  MODIFY `id_visi_misi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ref_desa`
--
ALTER TABLE `ref_desa`
  ADD CONSTRAINT `ref_desa_ibfk_1` FOREIGN KEY (`id_kecamatan`) REFERENCES `ref_kecamatan` (`id_kecamatan`),
  ADD CONSTRAINT `ref_desa_ibfk_2` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Constraints for table `ref_dusun`
--
ALTER TABLE `ref_dusun`
  ADD CONSTRAINT `ref_dusun_ibfk_1` FOREIGN KEY (`id_desa`) REFERENCES `ref_desa` (`id_desa`),
  ADD CONSTRAINT `ref_dusun_ibfk_2` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Constraints for table `ref_kab_kota`
--
ALTER TABLE `ref_kab_kota`
  ADD CONSTRAINT `ref_kab_kota_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `ref_provinsi` (`id_provinsi`);

--
-- Constraints for table `ref_kecamatan`
--
ALTER TABLE `ref_kecamatan`
  ADD CONSTRAINT `ref_kecamatan_ibfk_1` FOREIGN KEY (`id_kab_kota`) REFERENCES `ref_kab_kota` (`id_kab_kota`);

--
-- Constraints for table `ref_rt`
--
ALTER TABLE `ref_rt`
  ADD CONSTRAINT `ref_rt_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `ref_rt_ibfk_2` FOREIGN KEY (`id_rw`) REFERENCES `ref_rw` (`id_rw`);

--
-- Constraints for table `ref_rw`
--
ALTER TABLE `ref_rw`
  ADD CONSTRAINT `ref_rw_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`),
  ADD CONSTRAINT `ref_rw_ibfk_2` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Constraints for table `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD CONSTRAINT `tbl_berita_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

--
-- Constraints for table `tbl_demografi`
--
ALTER TABLE `tbl_demografi`
  ADD CONSTRAINT `tbl_demografi_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

--
-- Constraints for table `tbl_gizi_buruk`
--
ALTER TABLE `tbl_gizi_buruk`
  ADD CONSTRAINT `tbl_gizi_buruk_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Constraints for table `tbl_hub_kel`
--
ALTER TABLE `tbl_hub_kel`
  ADD CONSTRAINT `tbl_hub_kel_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_hub_kel_ibfk_2` FOREIGN KEY (`id_keluarga`) REFERENCES `tbl_keluarga` (`id_keluarga`),
  ADD CONSTRAINT `tbl_hub_kel_ibfk_3` FOREIGN KEY (`id_status_keluarga`) REFERENCES `ref_status_keluarga` (`id_status_keluarga`);

--
-- Constraints for table `tbl_ikut_pindah_keluar`
--
ALTER TABLE `tbl_ikut_pindah_keluar`
  ADD CONSTRAINT `tbl_ikut_pindah_keluar_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Constraints for table `tbl_ikut_pindah_masuk`
--
ALTER TABLE `tbl_ikut_pindah_masuk`
  ADD CONSTRAINT `tbl_ikut_pindah_masuk_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Constraints for table `tbl_kelahiran`
--
ALTER TABLE `tbl_kelahiran`
  ADD CONSTRAINT `tbl_kelahiran_ibfk_2` FOREIGN KEY (`id_keluarga`) REFERENCES `tbl_keluarga` (`id_keluarga`),
  ADD CONSTRAINT `tbl_kelahiran_ibfk_3` FOREIGN KEY (`id_pelapor`) REFERENCES `ref_pelapor` (`id_pelapor`),
  ADD CONSTRAINT `tbl_kelahiran_ibfk_4` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_kelahiran_ibfk_5` FOREIGN KEY (`id_surat`) REFERENCES `tbl_surat` (`id_surat`);

--
-- Constraints for table `tbl_keluarga`
--
ALTER TABLE `tbl_keluarga`
  ADD CONSTRAINT `tbl_keluarga_ibfk_1` FOREIGN KEY (`id_kelas_sosial`) REFERENCES `ref_kelas_sosial` (`id_kelas_sosial`),
  ADD CONSTRAINT `tbl_keluarga_ibfk_2` FOREIGN KEY (`id_rt`) REFERENCES `ref_rt` (`id_rt`),
  ADD CONSTRAINT `tbl_keluarga_ibfk_3` FOREIGN KEY (`id_rw`) REFERENCES `ref_rw` (`id_rw`),
  ADD CONSTRAINT `tbl_keluarga_ibfk_4` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`),
  ADD CONSTRAINT `tbl_keluarga_ibfk_5` FOREIGN KEY (`id_kepala_keluarga`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Constraints for table `tbl_kondisi_kehamilan`
--
ALTER TABLE `tbl_kondisi_kehamilan`
  ADD CONSTRAINT `tbl_kondisi_kehamilan_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`);

--
-- Constraints for table `tbl_lembaga_desa`
--
ALTER TABLE `tbl_lembaga_desa`
  ADD CONSTRAINT `tbl_lembaga_desa_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

--
-- Constraints for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD CONSTRAINT `tbl_log_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

--
-- Constraints for table `tbl_meninggal`
--
ALTER TABLE `tbl_meninggal`
  ADD CONSTRAINT `tbl_meninggal_ibfk_1` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_meninggal_ibfk_2` FOREIGN KEY (`id_pelapor`) REFERENCES `ref_pelapor` (`id_pelapor`),
  ADD CONSTRAINT `tbl_meninggal_ibfk_3` FOREIGN KEY (`id_surat`) REFERENCES `tbl_surat` (`id_surat`);

--
-- Constraints for table `tbl_ped_perkebunan`
--
ALTER TABLE `tbl_ped_perkebunan`
  ADD CONSTRAINT `tbl_ped_perkebunan_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Constraints for table `tbl_ped_pertambakan`
--
ALTER TABLE `tbl_ped_pertambakan`
  ADD CONSTRAINT `tbl_ped_pertambakan_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Constraints for table `tbl_ped_pertanian`
--
ALTER TABLE `tbl_ped_pertanian`
  ADD CONSTRAINT `tbl_ped_pertanian_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Constraints for table `tbl_ped_potensi_wisata`
--
ALTER TABLE `tbl_ped_potensi_wisata`
  ADD CONSTRAINT `tbl_ped_potensi_wisata_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Constraints for table `tbl_ped_sumber_air`
--
ALTER TABLE `tbl_ped_sumber_air`
  ADD CONSTRAINT `tbl_ped_sumber_air_ibfk_1` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`);

--
-- Constraints for table `tbl_penduduk`
--
ALTER TABLE `tbl_penduduk`
  ADD CONSTRAINT `tbl_penduduk_ibfk_1` FOREIGN KEY (`id_rt`) REFERENCES `ref_rt` (`id_rt`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_10` FOREIGN KEY (`id_pekerjaan`) REFERENCES `ref_pekerjaan` (`id_pekerjaan`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_11` FOREIGN KEY (`id_pekerjaan_ped`) REFERENCES `ref_pekerjaan_ped` (`id_pekerjaan_ped`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_12` FOREIGN KEY (`id_kompetensi`) REFERENCES `ref_kompetensi` (`id_kompetensi`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_13` FOREIGN KEY (`id_status_kawin`) REFERENCES `ref_status_kawin` (`id_status_kawin`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_14` FOREIGN KEY (`id_status_penduduk`) REFERENCES `ref_status_penduduk` (`id_status_penduduk`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_15` FOREIGN KEY (`id_status_tinggal`) REFERENCES `ref_status_tinggal` (`id_status_tinggal`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_16` FOREIGN KEY (`id_difabilitas`) REFERENCES `ref_difabilitas` (`id_difabilitas`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_17` FOREIGN KEY (`id_kontrasepsi`) REFERENCES `ref_kontrasepsi` (`id_kontrasepsi`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_2` FOREIGN KEY (`id_rw`) REFERENCES `ref_rw` (`id_rw`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_3` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_4` FOREIGN KEY (`id_pendidikan`) REFERENCES `ref_pendidikan` (`id_pendidikan`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_5` FOREIGN KEY (`id_agama`) REFERENCES `ref_agama` (`id_agama`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_6` FOREIGN KEY (`id_goldar`) REFERENCES `ref_goldar` (`id_goldar`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_7` FOREIGN KEY (`id_pendidikan_terakhir`) REFERENCES `ref_pendidikan` (`id_pendidikan`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_8` FOREIGN KEY (`id_jen_kel`) REFERENCES `ref_jen_kel` (`id_jen_kel`),
  ADD CONSTRAINT `tbl_penduduk_ibfk_9` FOREIGN KEY (`id_kewarganegaraan`) REFERENCES `ref_kewarganegaraan` (`id_kewarganegaraan`);

--
-- Constraints for table `tbl_perangkat`
--
ALTER TABLE `tbl_perangkat`
  ADD CONSTRAINT `tbl_perangkat_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `ref_jabatan` (`id_jabatan`),
  ADD CONSTRAINT `tbl_perangkat_ibfk_2` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_perangkat_ibfk_3` FOREIGN KEY (`id_pangkat_gol`) REFERENCES `ref_pangkat_gol` (`id_pangkat_gol`);

--
-- Constraints for table `tbl_peta`
--
ALTER TABLE `tbl_peta`
  ADD CONSTRAINT `tbl_peta_ibfk_1` FOREIGN KEY (`id_desa`) REFERENCES `ref_desa` (`id_desa`);

--
-- Constraints for table `tbl_pindah_keluar`
--
ALTER TABLE `tbl_pindah_keluar`
  ADD CONSTRAINT `tbl_pindah_keluar_ibfk_5` FOREIGN KEY (`id_keluarga`) REFERENCES `tbl_keluarga` (`id_keluarga`),
  ADD CONSTRAINT `tbl_pindah_keluar_ibfk_6` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_pindah_keluar_ibfk_7` FOREIGN KEY (`id_jenis_pindah`) REFERENCES `ref_jenis_pindah` (`id_jenis_pindah`),
  ADD CONSTRAINT `tbl_pindah_keluar_ibfk_8` FOREIGN KEY (`id_klasifikasi_pindah`) REFERENCES `ref_klasifikasi_pindah` (`id_klasifikasi_pindah`),
  ADD CONSTRAINT `tbl_pindah_keluar_ibfk_9` FOREIGN KEY (`id_alasan_pindah`) REFERENCES `ref_alasan_pindah` (`id_alasan_pindah`);

--
-- Constraints for table `tbl_pindah_masuk`
--
ALTER TABLE `tbl_pindah_masuk`
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_1` FOREIGN KEY (`id_rt`) REFERENCES `ref_rt` (`id_rt`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_2` FOREIGN KEY (`id_rw`) REFERENCES `ref_rw` (`id_rw`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_3` FOREIGN KEY (`id_dusun`) REFERENCES `ref_dusun` (`id_dusun`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_4` FOREIGN KEY (`id_desa`) REFERENCES `ref_desa` (`id_desa`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_5` FOREIGN KEY (`id_penduduk`) REFERENCES `tbl_penduduk` (`id_penduduk`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_6` FOREIGN KEY (`id_keluarga`) REFERENCES `tbl_keluarga` (`id_keluarga`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_7` FOREIGN KEY (`id_jenis_pindah`) REFERENCES `ref_jenis_pindah` (`id_jenis_pindah`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_8` FOREIGN KEY (`id_klasifikasi_pindah`) REFERENCES `ref_klasifikasi_pindah` (`id_klasifikasi_pindah`),
  ADD CONSTRAINT `tbl_pindah_masuk_ibfk_9` FOREIGN KEY (`id_alasan_pindah`) REFERENCES `ref_alasan_pindah` (`id_alasan_pindah`);

--
-- Constraints for table `tbl_regulasi`
--
ALTER TABLE `tbl_regulasi`
  ADD CONSTRAINT `tbl_regulasi_ibfk_1` FOREIGN KEY (`id_desa`) REFERENCES `ref_desa` (`id_desa`);

--
-- Constraints for table `tbl_sejarah`
--
ALTER TABLE `tbl_sejarah`
  ADD CONSTRAINT `tbl_sejarah_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);

--
-- Constraints for table `tbl_surat`
--
ALTER TABLE `tbl_surat`
  ADD CONSTRAINT `tbl_surat_ibfk_1` FOREIGN KEY (`id_perangkat`) REFERENCES `tbl_perangkat` (`id_perangkat`);

--
-- Constraints for table `tbl_visi_misi`
--
ALTER TABLE `tbl_visi_misi`
  ADD CONSTRAINT `tbl_visi_misi_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `tbl_pengguna` (`id_pengguna`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
