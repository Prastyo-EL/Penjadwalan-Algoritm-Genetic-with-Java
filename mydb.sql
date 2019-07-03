-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 16 Agu 2018 pada 13.09
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `idjadwal` int(11) NOT NULL,
  `idpembelajaran` int(11) NOT NULL,
  `idwaktu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`idlogin`, `username`, `password`) VALUES
(1, 'wibawa', '1234'),
(2, 'aku', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelajaran`
--

CREATE TABLE `pembelajaran` (
  `idpembelajaran` int(11) NOT NULL,
  `idpengajar` varchar(11) DEFAULT NULL,
  `nama_pengajar` varchar(45) NOT NULL,
  `nama_kelas` varchar(25) NOT NULL,
  `jatah_mengajar` int(11) NOT NULL,
  `nama_pelajaran` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pembelajaran`
--

INSERT INTO `pembelajaran` (`idpembelajaran`, `idpengajar`, `nama_pengajar`, `nama_kelas`, `jatah_mengajar`, `nama_pelajaran`) VALUES
(1, 'G0001', 'Drs. Dahari, M.M.', 'X-IPA1', 2, 'Matematika (Peminatan)'),
(2, 'G0001', 'Drs. Dahari, M.M.', 'X-IPA1', 1, 'Matematika (Peminatan)'),
(3, 'G0001', 'Drs. Dahari, M.M.', 'X-IPA2', 2, 'Matematika (Peminatan)'),
(4, 'G0001', 'Drs. Dahari, M.M.', 'X-IPA2', 1, 'Matematika (Peminatan)'),
(5, 'G0002', 'Mira Khoirunisa, M.Pdi', 'X-IPA1', 2, 'Pendidikan Agama Islam'),
(6, 'G0002', 'Mira Khoirunisa, M.Pdi', 'X-IPA1', 1, 'Pendidikan Agama Islam'),
(7, 'G0002', 'Mira Khoirunisa, M.Pdi', 'X-IPA2', 2, 'Pendidikan Agama Islam'),
(8, 'G0002', 'Mira Khoirunisa, M.Pdi', 'X-IPA2', 1, 'Pendidikan Agama Islam'),
(9, 'G0002', 'Mira Khoirunisa, M.Pdi', 'X-IPS1', 2, 'Pendidikan Agama Islam'),
(10, 'G0002', 'Mira Khoirunisa, M.Pdi', 'X-IPS1', 1, 'Pendidikan Agama Islam'),
(11, 'G0002', 'Mira Khoirunisa, M.Pdi', 'XI-IPA1', 2, 'Pendidikan Agama Islam'),
(12, 'G0002', 'Mira Khoirunisa, M.Pdi', 'XI-IPA1', 1, 'Pendidikan Agama Islam'),
(13, 'G0002', 'Mira Khoirunisa, M.Pdi', 'XI-IPA2', 2, 'Pendidikan Agama Islam'),
(14, 'G0002', 'Mira Khoirunisa, M.Pdi', 'XI-IPA2', 1, 'Pendidikan Agama Islam'),
(15, 'G0003', 'Barozi Eko Triyono, S.E.', 'XI-IPS1', 2, 'Pendidikan Agama Islam'),
(16, 'G0003', 'Barozi Eko Triyono, S.E.', 'XI-IPA1', 1, 'Pendidikan Agama Islam'),
(17, 'G0003', 'Barozi Eko Triyono, S.E.', 'XII-IPA1', 2, 'Pendidikan Agama Islam'),
(18, 'G0003', 'Barozi Eko Triyono, S.E.', 'XII-IPA1', 2, 'Pendidikan Agama Islam'),
(19, 'G0003', 'Barozi Eko Triyono, S.E.', 'XII-IPS1', 2, 'Pendidikan Agama Islam'),
(20, 'G0003', 'Barozi Eko Triyono, S.E.', 'XII-IPS2', 2, 'Pendidikan Agama Islam'),
(21, 'G0004', 'Drs. Johanes C. Ngadiyana', 'X-IPA1', 2, 'Pendidikan Agama Katholik'),
(22, 'G0004', 'Drs. Johanes C. Ngadiyana', 'X-IPA1', 1, 'Pendidikan Agama Katholik'),
(23, 'G0004', 'Drs. Johanes C. Ngadiyana', 'X-IPS1', 2, 'Pendidikan Agama Katholik'),
(24, 'G0004', 'Drs. Johanes C. Ngadiyana', 'XI-IPA1', 2, 'Pendidikan Agama Katholik'),
(25, 'G0004', 'Drs. Johanes C. Ngadiyana', 'XI-IPA1', 1, 'Pendidikan Agama Katholik'),
(26, 'G0004', 'Drs. Johanes C. Ngadiyana', 'XI-IPS1', 2, 'Pendidikan Agama Katholik'),
(27, 'G0004', 'Drs. Johanes C. Ngadiyana', 'XI-IPS1', 1, 'Pendidikan Agama Katholik'),
(28, 'G0004', 'Drs. Johanes C. Ngadiyana', 'XII-IPA1', 2, 'Pendidikan Agama Katholik'),
(29, 'G0004', 'Drs. Johanes C. Ngadiyana', 'XII-IPS1', 2, 'Pendidikan Agama Katholik'),
(30, 'G0005', 'Hetti Widiyana, S.Th.', 'X-IPA1', 2, 'Pendidikan Agama Kristen'),
(31, 'G0005', 'Hetti Widiyana, S.Th.', 'X-IPA1', 1, 'Pendidikan Agama Kristen'),
(32, 'G0005', 'Hetti Widiyana, S.Th.', 'X-IPS1', 2, 'Pendidikan Agama Kristen'),
(33, 'G0005', 'Hetti Widiyana, S.Th.', 'X-IPS1', 1, 'Pendidikan Agama Kristen'),
(34, 'G0005', 'Hetti Widiyana, S.Th.', 'XI-IPA1', 2, 'Pendidikan Agama Kristen'),
(35, 'G0005', 'Hetti Widiyana, S.Th.', 'XI-IPA1', 1, 'Pendidikan Agama Kristen'),
(36, 'G0005', 'Hetti Widiyana, S.Th.', 'XI-IPS1', 2, 'Pendidikan Agama Kristen'),
(37, 'G0005', 'Hetti Widiyana, S.Th.', 'XI-IPS1', 1, 'Pendidikan Agama Kristen'),
(38, 'G0005', 'Hetti Widiyana, S.Th.', 'XII-IPA1', 2, 'Pendidikan Agama Kristen'),
(39, 'G0005', 'Hetti Widiyana, S.Th.', 'XII-IPS1', 2, 'Pendidikan Agama Kristen'),
(40, 'G0006', 'Drs. Tugimin', 'XI-IPS1', 2, 'Pendidikan Agama Hindu'),
(41, 'G0006', 'Drs. Tugimin', 'XI-IPS1', 1, 'Pendidikan Agama Hindu'),
(42, 'G0007', 'Ambar Pratitis, S.Pd.', 'X-IPA1', 2, 'PKn'),
(43, 'G0007', 'Ambar Pratitis, S.Pd.', 'X-IPA2', 2, 'PKn'),
(44, 'G0007', 'Ambar Pratitis, S.Pd.', 'X-IPS1', 2, 'PKn'),
(45, 'G0007', 'Ambar Pratitis, S.Pd.', 'X-IPS2', 2, 'PKn'),
(46, 'G0007', 'Ambar Pratitis, S.Pd.', 'XI-IPA1', 2, 'PKn'),
(47, 'G0007', 'Ambar Pratitis, S.Pd.', 'XI-IPA2', 2, 'PKn'),
(48, 'G0007', 'Ambar Pratitis, S.Pd.', 'XI-IPS1', 2, 'PKn'),
(49, 'G0007', 'Ambar Pratitis, S.Pd.', 'XI-IPS2', 2, 'PKn'),
(50, 'G0007', 'Ambar Pratitis, S.Pd.', 'XII-IPA1', 2, 'PKn'),
(51, 'G0007', 'Ambar Pratitis, S.Pd.', 'XII-IPA2', 2, 'PKn'),
(52, 'G0007', 'Ambar Pratitis, S.Pd.', 'XII-IPS1', 2, 'PKn'),
(53, 'G0007', 'Ambar Pratitis, S.Pd.', 'XII-IPS2', 2, 'PKn'),
(54, 'G0008', 'Drs. Dwi Ganiwati', 'X-IPA1', 2, 'Bahasa Indonesia'),
(55, 'G0008', 'Drs. Dwi Ganiwati', 'X-IPA1', 2, 'Bahasa Indonesia'),
(56, 'G0008', 'Drs. Dwi Ganiwati', 'X-IPA2', 2, 'Bahasa Indonesia'),
(57, 'G0008', 'Drs. Dwi Ganiwati', 'X-IPA2', 2, 'Bahasa Indonesia'),
(58, 'G0008', 'Drs. Dwi Ganiwati', 'X-IPS1', 2, 'Bahasa Indonesia'),
(59, 'G0008', 'Drs. Dwi Ganiwati', 'X-IPS1', 2, 'Bahasa Indonesia'),
(60, 'G0008', 'Drs. Dwi Ganiwati', 'X-IPS2', 2, 'Bahasa Indonesia'),
(61, 'G0008', 'Drs. Dwi Ganiwati', 'X-IPS2', 2, 'Bahasa Indonesia'),
(62, 'G0009', 'Drs. Hananto', 'XI-IPA1', 2, 'Bahasa Indonesia'),
(63, 'G0009', 'Drs. Hananto', 'XI-IPA1', 2, 'Bahasa Indonesia'),
(64, 'G0009', 'Drs. Hananto', 'XI-IPA2', 2, 'Bahasa Indonesia'),
(65, 'G0009', 'Drs. Hananto', 'XI-IPA2', 2, 'Bahasa Indonesia'),
(66, 'G0009', 'Drs. Hananto', 'XI-IPS1', 2, 'Bahasa Indonesia'),
(67, 'G0009', 'Drs. Hananto', 'XI-IPS1', 2, 'Bahasa Indonesia'),
(68, 'G0009', 'Drs. Hananto', 'XI-IPS2', 2, 'Bahasa Indonesia'),
(69, 'G0009', 'Drs. Hananto', 'XI-IPS2', 2, 'Bahasa Indonesia'),
(70, 'G0010', 'Drs. Sukur', 'X-IPA1', 2, 'Bahasa Inggris'),
(71, 'G0010', 'Drs. Sukur', 'X-IPA2', 2, 'Bahasa Inggris'),
(72, 'G0010', 'Drs. Sukur', 'X-IPS1', 2, 'Bahasa Inggris'),
(73, 'G0010', 'Drs. Sukur', 'X-IPS2', 2, 'Bahasa Inggris'),
(74, 'G0010', 'Drs. Sukur', 'X-IPA1', 2, 'Bhs & Sastra Inggris'),
(75, 'G0010', 'Drs. Sukur', 'X-IPA1', 1, 'Bhs & Sastra Inggris'),
(76, 'G0010', 'Drs. Sukur', 'X-IPA2', 2, 'Bhs & Sastra Inggris'),
(77, 'G0010', 'Drs. Sukur', 'X-IPA2', 1, 'Bhs & Sastra Inggris'),
(78, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XI-IPA1', 2, 'Bahasa Inggris'),
(79, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XI-IPA2', 2, 'Bahasa Inggris'),
(80, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XI-IPS1', 2, 'Bahasa Inggris'),
(81, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XI-IPS2', 2, 'Bahasa Inggris'),
(82, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XII-IPA1', 2, 'Bahasa Inggris'),
(83, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XII-IPA1', 2, 'Bahasa Inggris'),
(84, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XII-IPA2', 2, 'Bahasa Inggris'),
(85, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XII-IPA2', 2, 'Bahasa Inggris'),
(86, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XII-IPS1', 2, 'Bahasa Inggris'),
(87, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XII-IPS1', 2, 'Bahasa Inggris'),
(88, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XII-IPS2', 2, 'Bahasa Inggris'),
(89, 'G0011', 'Drs. S. Tri Budiyati, M.Hum.', 'XII-IPS2', 2, 'Bahasa Inggris'),
(90, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XI-IPA1', 2, 'Matematika'),
(91, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XI-IPA1', 2, 'Matematika'),
(92, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XI-IPA2', 2, 'Matematika'),
(93, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XI-IPA2', 2, 'Matematika'),
(94, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XII-IPA1', 2, 'Matematika'),
(95, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XII-IPA1', 2, 'Matematika'),
(96, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XII-IPA2', 2, 'Matematika'),
(97, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XII-IPA2', 2, 'Matematika'),
(98, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XII-IPS1', 2, 'Matematika'),
(99, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XII-IPS1', 2, 'Matematika'),
(100, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XII-IPS2', 2, 'Matematika'),
(101, 'G0012', 'Cicilia Isni Haryanti, S.Pd.', 'XII-IPS2', 2, 'Matematika'),
(102, 'G0013', 'Sudaryanti, S.Pd.', 'X-IPA1', 2, 'Matematika'),
(103, 'G0013', 'Sudaryanti, S.Pd.', 'X-IPA1', 2, 'Matematika'),
(104, 'G0013', 'Sudaryanti, S.Pd.', 'X-IPA2', 2, 'Matematika'),
(105, 'G0013', 'Sudaryanti, S.Pd.', 'X-IPA2', 2, 'Matematika'),
(106, 'G0013', 'Sudaryanti, S.Pd.', 'XI-IPS1', 2, 'Matematika'),
(107, 'G0013', 'Sudaryanti, S.Pd.', 'XI-IPS1', 2, 'Matematika'),
(108, 'G0013', 'Sudaryanti, S.Pd.', 'XI-IPS2', 2, 'Matematika'),
(109, 'G0013', 'Sudaryanti, S.Pd.', 'XI-IPS2', 2, 'Matematika'),
(110, 'G0014', 'Dian Permatasari, S.Pd.', 'XI-IPA1', 2, 'Matematika (Peminatan)'),
(111, 'G0014', 'Dian Permatasari, S.Pd.', 'XI-IPA1', 2, 'Matematika (Peminatan)'),
(112, 'G0014', 'Dian Permatasari, S.Pd.', 'XI-IPA2', 2, 'Matematika (Peminatan)'),
(113, 'G0014', 'Dian Permatasari, S.Pd.', 'XI-IPA2', 2, 'Matematika (Peminatan)'),
(114, 'G0014', 'Dian Permatasari, S.Pd.', 'XII-IPA1', 2, 'TIK'),
(115, 'G0014', 'Dian Permatasari, S.Pd.', 'XII-IPA2', 2, 'TIK'),
(116, 'G0014', 'Dian Permatasari, S.Pd.', 'XII-IPS1', 2, 'TIK'),
(117, 'G0014', 'Dian Permatasari, S.Pd.', 'XII-IPS2', 2, 'TIK'),
(118, 'G0015', 'Drs. Sri Maesarini kn', 'XII-IPA1', 2, 'Fisika'),
(119, 'G0015', 'Drs. Sri Maesarini kn', 'XII-IPA1', 2, 'Fisika'),
(120, 'G0015', 'Drs. Sri Maesarini kn', 'XII-IPA2', 2, 'Fisika'),
(121, 'G0015', 'Drs. Sri Maesarini kn', 'X-IPA1', 2, 'Fisika (Peminatan)'),
(122, 'G0015', 'Drs. Sri Maesarini kn', 'X-IPA1', 1, 'Fisika (Peminatan)'),
(123, 'G0015', 'Drs. Sri Maesarini kn', 'X-IPA2', 2, 'Fisika (Peminatan)'),
(124, 'G0015', 'Drs. Sri Maesarini kn', 'X-IPA2', 1, 'Fisika (Peminatan)'),
(125, 'G0015', 'Drs. Sri Maesarini kn', 'XI-IPA1', 2, 'Fisika (Peminatan)'),
(126, 'G0015', 'Drs. Sri Maesarini kn', 'XI-IPA1', 2, 'Fisika (Peminatan)'),
(127, 'G0015', 'Drs. Sri Maesarini kn', 'XI-IPA2', 2, 'Fisika (Peminatan)'),
(128, 'G0015', 'Drs. Sri Maesarini kn', 'XI-IPA2', 2, 'Fisika (Peminatan)'),
(129, 'G0015', 'Drs. Sri Maesarini kn', 'X-IPS2', 2, 'Lintas Minat'),
(130, 'G0015', 'Drs. Sri Maesarini kn', 'X-IPS2', 1, 'Lintas Minat'),
(131, 'G0016', 'Sunarmi, S.Pd.', 'XII-IPA1', 2, 'Biologi'),
(132, 'G0016', 'Sunarmi, S.Pd.', 'XII-IPA1', 2, 'Biologi'),
(133, 'G0016', 'Sunarmi, S.Pd.', 'XII-IPA2', 2, 'Biologi'),
(134, 'G0016', 'Sunarmi, S.Pd.', 'XII-IPA2', 2, 'Biologi'),
(135, 'G0016', 'Sunarmi, S.Pd.', 'X-IPA1', 2, 'Biologi (Peminatan)'),
(136, 'G0016', 'Sunarmi, S.Pd.', 'X-IPA1', 1, 'Biologi (Peminatan)'),
(137, 'G0016', 'Sunarmi, S.Pd.', 'X-IPA2', 2, 'Biologi (Peminatan)'),
(138, 'G0016', 'Sunarmi, S.Pd.', 'X-IPA2', 1, 'Biologi (Peminatan)'),
(139, 'G0016', 'Sunarmi, S.Pd.', 'XI-IPA1', 2, 'Biologi (Peminatan)'),
(140, 'G0016', 'Sunarmi, S.Pd.', 'XI-IPA1', 2, 'Biologi (Peminatan)'),
(141, 'G0016', 'Sunarmi, S.Pd.', 'XI-IPA2', 2, 'Biologi (Peminatan)'),
(142, 'G0016', 'Sunarmi, S.Pd.', 'XI-IPA2', 2, 'Biologi (Peminatan)'),
(143, 'G0016', 'Sunarmi, S.Pd.', 'X-IPS1', 2, 'Lintas Minat'),
(144, 'G0016', 'Sunarmi, S.Pd.', 'X-IPS1', 1, 'Lintas Minat'),
(145, 'G0017', 'Eny Purwantini', 'XII-IPA1', 2, 'Kimia'),
(146, 'G0017', 'Eny Purwantini', 'XII-IPA1', 2, 'Kimia'),
(147, 'G0017', 'Eny Purwantini', 'XII-IPA2', 2, 'Kimia'),
(148, 'G0017', 'Eny Purwantini', 'XII-IPA2', 2, 'Kimia'),
(149, 'G0017', 'Eny Purwantini', 'XI-IPA1', 2, 'Kimia (Peminatan)'),
(150, 'G0017', 'Eny Purwantini', 'XI-IPA1', 2, 'Kimia (Peminatan)'),
(151, 'G0017', 'Eny Purwantini', 'XI-IPA2', 2, 'Kimia (Peminatan)'),
(152, 'G0017', 'Eny Purwantini', 'XI-IPA2', 2, 'Kimia (Peminatan)'),
(153, 'G0017', 'Eny Purwantini', 'XI-IPS1', 2, 'Kimia (Lintas Minat)'),
(154, 'G0017', 'Eny Purwantini', 'XI-IPS1', 2, 'Kimia (Lintas Minat)'),
(155, 'G0017', 'Eny Purwantini', 'XI-IPS2', 2, 'Kimia (Lintas Minat)'),
(156, 'G0017', 'Eny Purwantini', 'XI-IPS2', 2, 'Kimia (Lintas Minat)'),
(157, 'G0018', 'Efi Triananingrum, S.Pd.', 'X-IPA1', 2, 'Kimia (Peminatan)'),
(158, 'G0018', 'Efi Triananingrum, S.Pd.', 'X-IPA1', 1, 'Kimia (Peminatan)'),
(159, 'G0018', 'Efi Triananingrum, S.Pd.', 'X-IPA2', 2, 'Kimia (Peminatan)'),
(160, 'G0018', 'Efi Triananingrum, S.Pd.', 'X-IPA2', 1, 'Kimia (Peminatan)'),
(161, 'G0018', 'Efi Triananingrum, S.Pd.', 'X-IPS1', 2, 'Kimia (Lintas Minat)'),
(162, 'G0018', 'Efi Triananingrum, S.Pd.', 'X-IPS1', 1, 'Kimia (Lintas Minat)'),
(163, 'G0018', 'Efi Triananingrum, S.Pd.', 'X-IPS2', 2, 'Kimia (Lintas Minat)'),
(164, 'G0018', 'Efi Triananingrum, S.Pd.', 'X-IPS2', 1, 'Kimia (Lintas Minat)'),
(165, 'G0019', 'T. Pangripta Wibawa, S.Pd.', 'XI-IPA1', 2, 'Sejarah'),
(166, 'G0019', 'T. Pangripta Wibawa, S.Pd.', 'XI-IPA2', 2, 'Sejarah'),
(167, 'G0019', 'T. Pangripta Wibawa, S.Pd.', 'XI-IPS1', 2, 'Sejarah'),
(168, 'G0019', 'T. Pangripta Wibawa, S.Pd.', 'XI-IPS2', 2, 'Sejarah'),
(169, 'G0019', 'T. Pangripta Wibawa, S.Pd.', 'XII-IPA1', 1, 'Sejarah'),
(170, 'G0019', 'T. Pangripta Wibawa, S.Pd.', 'XII-IPA2', 1, 'Sejarah'),
(171, 'G0019', 'T. Pangripta Wibawa, S.Pd.', 'X-IPS1', 2, 'Sejarah (Peminatan)'),
(172, 'G0019', 'T. Pangripta Wibawa, S.Pd.', 'X-IPS1', 1, 'Sejarah (Peminatan)'),
(173, 'G0019', 'T. Pangripta Wibawa, S.Pd.', 'X-IPS2', 2, 'Sejarah (Peminatan)'),
(174, 'G0019', 'T. Pangripta Wibawa, S.Pd.', 'X-IPS2', 1, 'Sejarah (Peminatan)'),
(175, 'G0020', 'Drs. Susiyanta', 'X-IPA1', 2, 'Sejarah'),
(176, 'G0020', 'Drs. Susiyanta', 'X-IPA2', 2, 'Sejarah'),
(177, 'G0020', 'Drs. Susiyanta', 'X-IPS1', 2, 'Sejarah'),
(178, 'G0020', 'Drs. Susiyanta', 'X-IPS2', 2, 'Sejarah'),
(179, 'G0020', 'Drs. Susiyanta', 'XII-IPS1', 2, 'Sejarah'),
(180, 'G0020', 'Drs. Susiyanta', 'XII-IPS1', 1, 'Sejarah'),
(181, 'G0020', 'Drs. Susiyanta', 'XII-IPS2', 2, 'Sejarah'),
(182, 'G0020', 'Drs. Susiyanta', 'XII-IPS2', 1, 'Sejarah'),
(183, 'G0020', 'Drs. Susiyanta', 'XI-IPS1', 2, 'Sejarah (Peminatan)'),
(184, 'G0020', 'Drs. Susiyanta', 'XI-IPS1', 2, 'Sejarah (Peminatan)'),
(185, 'G0020', 'Drs. Susiyanta', 'XI-IPS2', 2, 'Sejarah (Peminatan)'),
(186, 'G0020', 'Drs. Susiyanta', 'XI-IPS2', 2, 'Sejarah (Peminatan)'),
(187, 'G0021', 'Drs. Wisnandari', 'XII-IPS1', 2, 'Geografi'),
(188, 'G0021', 'Drs. Wisnandari', 'XII-IPS1', 1, 'Geografi'),
(189, 'G0021', 'Drs. Wisnandari', 'XII-IPS2', 2, 'Geografi'),
(190, 'G0021', 'Drs. Wisnandari', 'XII-IPS2', 1, 'Geografi'),
(191, 'G0021', 'Drs. Wisnandari', 'X-IPS1', 2, 'Geografi (Peminatan)'),
(192, 'G0021', 'Drs. Wisnandari', 'X-IPS1', 1, 'Geografi (Peminatan)'),
(193, 'G0021', 'Drs. Wisnandari', 'X-IPS2', 2, 'Geografi (Peminatan)'),
(194, 'G0021', 'Drs. Wisnandari', 'X-IPS2', 1, 'Geografi (Peminatan)'),
(195, 'G0021', 'Drs. Wisnandari', 'XI-IPS1', 2, 'Geografi (Peminatan)'),
(196, 'G0021', 'Drs. Wisnandari', 'XI-IPS1', 2, 'Geografi (Peminatan)'),
(197, 'G0021', 'Drs. Wisnandari', 'XI-IPS2', 2, 'Geografi (Peminatan)'),
(198, 'G0021', 'Drs. Wisnandari', 'XI-IPS2', 2, 'Geografi (Peminatan)'),
(199, 'G0021', 'Drs. Wisnandari', 'XI-IPA2', 2, 'Lintas Minat'),
(200, 'G0021', 'Drs. Wisnandari', 'XI-IPA2', 2, 'Lintas Minat'),
(201, 'G0022', 'Ninik Kurniawati, S.Pd.', 'XII-IPS1', 2, 'Ekonomi'),
(202, 'G0022', 'Ninik Kurniawati, S.Pd.', 'XII-IPS1', 2, 'Ekonomi'),
(203, 'G0022', 'Ninik Kurniawati, S.Pd.', 'XII-IPS2', 2, 'Ekonomi'),
(204, 'G0022', 'Ninik Kurniawati, S.Pd.', 'XII-IPS2', 2, 'Ekonomi'),
(205, 'G0022', 'Ninik Kurniawati, S.Pd.', 'X-IPS1', 2, 'Ekonomi (Peminatan)'),
(206, 'G0022', 'Ninik Kurniawati, S.Pd.', 'X-IPS1', 1, 'Ekonomi (Peminatan)'),
(207, 'G0022', 'Ninik Kurniawati, S.Pd.', 'X-IPS2', 2, 'Ekonomi (Peminatan)'),
(208, 'G0022', 'Ninik Kurniawati, S.Pd.', 'X-IPS2', 1, 'Ekonomi (Peminatan)'),
(209, 'G0022', 'Ninik Kurniawati, S.Pd.', 'XI-IPS1', 2, 'Ekonomi (Peminatan)'),
(210, 'G0022', 'Ninik Kurniawati, S.Pd.', 'XI-IPS1', 2, 'Ekonomi (Peminatan)'),
(211, 'G0022', 'Ninik Kurniawati, S.Pd.', 'XI-IPS2', 2, 'Ekonomi (Peminatan)'),
(212, 'G0022', 'Ninik Kurniawati, S.Pd.', 'XI-IPS2', 2, 'Ekonomi (Peminatan)'),
(213, 'G0022', 'Ninik Kurniawati, S.Pd.', 'X-IPA1', 2, 'Lintas Minat'),
(214, 'G0022', 'Ninik Kurniawati, S.Pd.', 'X-IPA1', 1, 'Lintas Minat'),
(215, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'XII-IPS1', 2, 'Sosiologi'),
(216, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'XII-IPS1', 1, 'Sosiologi'),
(217, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'XII-IPS2', 2, 'Sosiologi'),
(218, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'XII-IPS2', 1, 'Sosiologi'),
(219, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'X-IPS1', 2, 'Sosiologi (Peminatan)'),
(220, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'X-IPS1', 1, 'Sosiologi (Peminatan)'),
(221, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'X-IPS2', 2, 'Sosiologi (Peminatan)'),
(222, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'X-IPS2', 1, 'Sosiologi (Peminatan)'),
(223, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'XI-IPS1', 2, 'Sosiologi (Peminatan)'),
(224, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'XI-IPS1', 2, 'Sosiologi (Peminatan)'),
(225, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'XI-IPS2', 2, 'Sosiologi (Peminatan)'),
(226, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'XI-IPS2', 2, 'Sosiologi (Peminatan)'),
(227, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'XI-IPA1', 2, 'Lintas Minat'),
(228, 'G0023', 'Sri Naptina Haryanti, S.Pd.', 'XI-IPA1', 2, 'Lintas Minat'),
(229, 'G0024', 'Kurmianto, S.Pd.', 'X-IPA1', 2, 'Kesenian'),
(230, 'G0024', 'Kurmianto, S.Pd.', 'X-IPA2', 2, 'Kesenian'),
(231, 'G0024', 'Kurmianto, S.Pd.', 'X-IPS1', 2, 'Kesenian'),
(232, 'G0024', 'Kurmianto, S.Pd.', 'X-IPS2', 2, 'Kesenian'),
(233, 'G0024', 'Kurmianto, S.Pd.', 'XI-IPA1', 2, 'Kesenian'),
(234, 'G0024', 'Kurmianto, S.Pd.', 'XI-IPA2', 2, 'Kesenian'),
(235, 'G0024', 'Kurmianto, S.Pd.', 'XI-IPS1', 2, 'Kesenian'),
(236, 'G0024', 'Kurmianto, S.Pd.', 'XI-IPS2', 2, 'Kesenian'),
(237, 'G0024', 'Kurmianto, S.Pd.', 'XII-IPA1', 2, 'Kesenian'),
(238, 'G0024', 'Kurmianto, S.Pd.', 'XII-IPA2', 2, 'Kesenian'),
(239, 'G0024', 'Kurmianto, S.Pd.', 'XII-IPS1', 2, 'Kesenian'),
(240, 'G0024', 'Kurmianto, S.Pd.', 'XII-IPS2', 2, 'Kesenian'),
(241, 'G0025', 'Adriani Saptarina, S.Pd.', 'X-IPA1', 2, 'Prakarya & Kewirausahaan'),
(242, 'G0025', 'Adriani Saptarina, S.Pd.', 'X-IPA2', 2, 'Prakarya & Kewirausahaan'),
(243, 'G0025', 'Adriani Saptarina, S.Pd.', 'X-IPS1', 2, 'Prakarya & Kewirausahaan'),
(244, 'G0025', 'Adriani Saptarina, S.Pd.', 'X-IPS2', 2, 'Prakarya & Kewirausahaan'),
(245, 'G0026', 'Sri Mulyani, S.Pd.', 'XI-IPA1', 2, 'Prakarya & Kewirausahaan'),
(246, 'G0026', 'Sri Mulyani, S.Pd.', 'XI-IPA2', 2, 'Prakarya & Kewirausahaan'),
(247, 'G0026', 'Sri Mulyani, S.Pd.', 'XI-IPS1', 2, 'Prakarya & Kewirausahaan'),
(248, 'G0026', 'Sri Mulyani, S.Pd.', 'XI-IPS2', 2, 'Prakarya & Kewirausahaan'),
(249, 'G0026', 'Sri Mulyani, S.Pd.', 'X-IPA2', 2, 'Ekonomi (Lintas Minat)'),
(250, 'G0026', 'Sri Mulyani, S.Pd.', 'X-IPA2', 1, 'Ekonomi (Lintas Minat)'),
(251, 'G0027', 'Drs. Arum Triharjana', 'X-IPS1', 2, 'Penjaskes'),
(252, 'G0027', 'Drs. Arum Triharjana', 'X-IPS1', 1, 'Penjaskes'),
(253, 'G0027', 'Drs. Arum Triharjana', 'X-IPS2', 2, 'Penjaskes'),
(254, 'G0027', 'Drs. Arum Triharjana', 'X-IPS2', 1, 'Penjaskes'),
(255, 'G0027', 'Drs. Arum Triharjana', 'XI-IPA1', 2, 'Penjaskes'),
(256, 'G0027', 'Drs. Arum Triharjana', 'XI-IPA1', 1, 'Penjaskes'),
(257, 'G0027', 'Drs. Arum Triharjana', 'XI-IPA2', 2, 'Penjaskes'),
(258, 'G0027', 'Drs. Arum Triharjana', 'XI-IPA2', 1, 'Penjaskes'),
(259, 'G0027', 'Drs. Arum Triharjana', 'XI-IPS1', 2, 'Penjaskes'),
(260, 'G0027', 'Drs. Arum Triharjana', 'XI-IPS1', 1, 'Penjaskes'),
(261, 'G0027', 'Drs. Arum Triharjana', 'XI-IPS2', 2, 'Penjaskes'),
(262, 'G0027', 'Drs. Arum Triharjana', 'XI-IPS2', 1, 'Penjaskes'),
(263, 'G0027', 'Drs. Arum Triharjana', 'XII-IPA2', 2, 'Penjaskes'),
(264, 'G0027', 'Drs. Arum Triharjana', 'XII-IPS1', 2, 'Penjaskes'),
(265, 'G0027', 'Drs. Arum Triharjana', 'XII-IPS2', 2, 'Penjaskes'),
(266, 'G0028', 'Tio Setyo Kuncoro, S.Pd.', 'X-IPA1', 2, 'Penjaskes'),
(267, 'G0028', 'Tio Setyo Kuncoro, S.Pd.', 'X-IPA1', 1, 'Penjaskes'),
(268, 'G0028', 'Tio Setyo Kuncoro, S.Pd.', 'X-IPA2', 2, 'Penjaskes'),
(269, 'G0028', 'Tio Setyo Kuncoro, S.Pd.', 'X-IPA2', 1, 'Penjaskes'),
(270, 'G0028', 'Tio Setyo Kuncoro, S.Pd.', 'XII-IPA1', 2, 'Penjaskes'),
(271, 'G0029', 'Sri Surhati, S.Pd.', 'XII-IPA1', 2, 'Bahasa Prancis'),
(272, 'G0029', 'Sri Surhati, S.Pd.', 'XII-IPA1', 2, 'Bahasa Prancis'),
(273, 'G0029', 'Sri Surhati, S.Pd.', 'XII-IPS1', 2, 'Bahasa Prancis'),
(274, 'G0029', 'Sri Surhati, S.Pd.', 'XII-IPS2', 2, 'Bahasa Prancis'),
(275, 'G0030', 'Febriyandini Dian P.R, S.S', 'X-IPA1', 2, 'Bahasa Jawa'),
(276, 'G0030', 'Febriyandini Dian P.R, S.S', 'X-IPA2', 2, 'Bahasa Jawa'),
(277, 'G0030', 'Febriyandini Dian P.R, S.S', 'X-IPS1', 2, 'Bahasa Jawa'),
(278, 'G0030', 'Febriyandini Dian P.R, S.S', 'X-IPS2', 2, 'Bahasa Jawa'),
(279, 'G0030', 'Febriyandini Dian P.R, S.S', 'XI-IPA1', 2, 'Bahasa Jawa'),
(280, 'G0030', 'Febriyandini Dian P.R, S.S', 'XI-IPA2', 2, 'Bahasa Jawa'),
(281, 'G0030', 'Febriyandini Dian P.R, S.S', 'XI-IPS1', 2, 'Bahasa Jawa'),
(282, 'G0030', 'Febriyandini Dian P.R, S.S', 'XI-IPS1', 2, 'Bahasa Jawa'),
(283, 'G0030', 'Febriyandini Dian P.R, S.S', 'XI-IPS2', 2, 'Bahasa Jawa'),
(284, 'G0030', 'Febriyandini Dian P.R, S.S', 'XII-IPA1', 2, 'Bahasa Jawa'),
(285, 'G0030', 'Febriyandini Dian P.R, S.S', 'XII-IPA2', 2, 'Bahasa Jawa'),
(286, 'G0030', 'Febriyandini Dian P.R, S.S', 'XII-IPS1', 2, 'Bahasa Jawa'),
(287, 'G0030', 'Febriyandini Dian P.R, S.S', 'XII-IPS2', 2, 'Bahasa Jawa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengajar`
--

CREATE TABLE `pengajar` (
  `idpengajar` varchar(11) NOT NULL,
  `nama_pengajar` varchar(45) DEFAULT NULL,
  `jatah_mengajar_seminggu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pengajar`
--

INSERT INTO `pengajar` (`idpengajar`, `nama_pengajar`, `jatah_mengajar_seminggu`) VALUES
('G0001', 'Drs. Dahari, M.M.', 8),
('G0002', 'Mira Khoirunisa, M.Pdi', 18),
('G0003', 'Barozi Eko Triyono, S.E.', 14),
('G0004', 'Drs. Johanes C. Ngadiyana', 16),
('G0005', 'Hetti Widiyana, S.Th.', 16),
('G0006', 'Drs. Tugimin', 3),
('G0007', 'Ambar Pratitis, S.Pd.', 24),
('G0008', 'Drs. Dwi Ganiwati', 32),
('G0009', 'Drs. Hananto', 10),
('G0010', 'Drs. Sukur', 14),
('G0011', 'Drs. S. Tri Budiyati, M.Hum.', 24),
('G0012', 'Cicilia Isni Haryanti, S.Pd.', 24),
('G0013', 'Sudaryanti, S.Pd.', 24),
('G0014', 'Dian Permatasari, S.Pd.', 16),
('G0015', 'Drs. Sri Maesarini kn', 25),
('G0016', 'Sunarmi, S.Pd.', 25),
('G0017', 'Eny Purwantini', 24),
('G0018', 'Efi Triananingrum, S.Pd.', 24),
('G0019', 'T. Pangripta Wibawa, S.Pd.', 16),
('G0020', 'Drs. Susiyanta', 22),
('G0021', 'Drs. Wisnandari', 24),
('G0022', 'Ninik Kurniawati, S.Pd.', 25),
('G0023', 'Sri Naptina Haryanti, S.Pd.', 24),
('G0024', 'Kurmianto, S.Pd.', 24),
('G0025', 'Adriani Saptarina, S.Pd.', 8),
('G0026', 'Sri Mulyani, S.Pd.', 11),
('G0027', 'Drs. Arum Triharjana', 24),
('G0028', 'Tio Setyo Kuncoro, S.Pd.', 8),
('G0029', 'Sri Surhati, S.Pd.', 8),
('G0030', 'Febriyandini Dian P.R, S.S', 24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `waktu`
--

CREATE TABLE `waktu` (
  `idwaktu` int(11) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `waktu_mulai` varchar(10) NOT NULL,
  `waktu_selesai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `waktu`
--

INSERT INTO `waktu` (`idwaktu`, `hari`, `waktu_mulai`, `waktu_selesai`) VALUES
(1, 'SENIN', '07.45', '08.30'),
(2, 'SENIN', '08.30', '09.15'),
(3, 'SENIN', '09.30', '10.15'),
(4, 'SENIN', '10.15', '11.00'),
(5, 'SENIN', '11.00', '11.45'),
(6, 'SENIN', '12.10', '12.55'),
(7, 'SENIN', '12.55', '13.40'),
(8, 'SELASA', '07.00', '07.45'),
(9, 'SELASA', '07.45', '08.30'),
(10, 'SELASA', '08.30', '09.15'),
(11, 'SELASA', '09.30', '10.15'),
(12, 'SELASA', '10.15', '11.00'),
(13, 'SELASA', '11.00', '11.45'),
(14, 'SELASA', '12.10', '12.55'),
(15, 'SELASA', '12.55', '13.40'),
(16, 'SELASA', '13.45', '14.25'),
(17, 'RABU', '07.00', '07.45'),
(18, 'RABU', '07.45', '08.30'),
(19, 'RABU', '08.30', '09.15'),
(20, 'RABU', '09.30', '10.15'),
(21, 'RABU', '10.15', '11.00'),
(22, 'RABU', '11.00', '11.45'),
(23, 'RABU', '12.10', '12.55'),
(24, 'RABU', '12.55', '13.40'),
(25, 'KAMIS', '07.00', '07.45'),
(26, 'KAMIS', '07.45', '08.30'),
(27, 'KAMIS', '08.30', '09.15'),
(28, 'KAMIS', '09.30', '10.15'),
(29, 'KAMIS', '10.15', '11.45'),
(30, 'KAMIS', '12.10', '12.55'),
(31, 'KAMIS', '12.55', '13.40'),
(32, 'JUMAT', '07.00', '07.45'),
(33, 'JUMAT', '07.45', '08.30'),
(34, 'JUMAT', '08.30', '09.15'),
(35, 'JUMAT', '09.30', '10.15'),
(36, 'JUMAT', '10.15', '11.00'),
(37, 'JUMAT', '11.00', '11.45'),
(38, 'SABTU', '07.00', '07.45'),
(39, 'SABTU', '07.45', '08.30'),
(40, 'SABTU', '08.30', '09.15'),
(41, 'SABTU', '09.30', '10.15'),
(42, 'SABTU', '10.15', '11.00'),
(43, 'SABTU', '11.00', '11.45'),
(44, 'SABTU', '12.10', '12.55'),
(45, 'SABTU', '12.55', '13.40'),
(46, 'SENIN', '07.45', '09.15'),
(47, 'SENIN', '09.30', '11.00'),
(48, 'SENIN', '11.00', '12.55'),
(49, 'SENIN', '12.10', '13.40'),
(50, 'SELASA', '07.00', '08.30'),
(51, 'SELASA', '08.30', '10.15'),
(52, 'SELASA', '09.30', '11.00'),
(53, 'SELASA', '11.00', '12.55'),
(54, 'SELASA', '12.10', '13.40'),
(55, 'SELASA', '12.55', '14.25'),
(56, 'RABU', '07.00', '08.30'),
(57, 'RABU', '08.30', '10.15'),
(58, 'RABU', '09.30', '11.00'),
(59, 'RABU', '11.00', '12.55'),
(60, 'RABU', '12.10', '13.40'),
(61, 'KAMIS', '07.00', '08.30'),
(62, 'KAMIS', '08.30', '10.15'),
(63, 'KAMIS', '09.30', '11.00'),
(64, 'KAMIS', '11.00', '12.55'),
(65, 'KAMIS', '12.10', '13.40'),
(66, 'JUMAT', '07.00', '08.30'),
(67, 'JUMAT', '08.30', '10.15'),
(68, 'JUMAT', '09.30', '11.00'),
(69, 'JUMAT', '10.15', '11.45'),
(70, 'SABTU', '07.00', '08.30'),
(71, 'SABTU', '08.30', '10.15'),
(72, 'SABTU', '09.30', '11.00'),
(73, 'SABTU', '11.00', '12.55'),
(74, 'SABTU', '12.10', '13.40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`idjadwal`),
  ADD KEY `idpembelajaran` (`idpembelajaran`),
  ADD KEY `idwaktu` (`idwaktu`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idlogin`);

--
-- Indexes for table `pembelajaran`
--
ALTER TABLE `pembelajaran`
  ADD PRIMARY KEY (`idpembelajaran`),
  ADD KEY `idpengajar` (`idpengajar`);

--
-- Indexes for table `pengajar`
--
ALTER TABLE `pengajar`
  ADD PRIMARY KEY (`idpengajar`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`idwaktu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `idjadwal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `idlogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembelajaran`
--
ALTER TABLE `pembelajaran`
  MODIFY `idpembelajaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `waktu`
--
ALTER TABLE `waktu`
  MODIFY `idwaktu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`idpembelajaran`) REFERENCES `pembelajaran` (`idpembelajaran`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`idwaktu`) REFERENCES `waktu` (`idwaktu`);

--
-- Ketidakleluasaan untuk tabel `pembelajaran`
--
ALTER TABLE `pembelajaran`
  ADD CONSTRAINT `pembelajaran_ibfk_1` FOREIGN KEY (`idpengajar`) REFERENCES `pengajar` (`idpengajar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
