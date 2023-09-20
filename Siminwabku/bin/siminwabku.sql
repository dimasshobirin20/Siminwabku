-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2023 at 06:09 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siminwabku`
--

-- --------------------------------------------------------

--
-- Table structure for table `faktur`
--

CREATE TABLE `faktur` (
  `banyaknya` int(255) NOT NULL,
  `Satuan` varchar(100) NOT NULL,
  `namaBarang` varchar(800) NOT NULL,
  `hargaSatuan` int(255) NOT NULL,
  `jumlahHarga` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuitansi`
--

CREATE TABLE `kuitansi` (
  `takui` year(4) NOT NULL,
  `nobku` varchar(100) NOT NULL,
  `maku1` varchar(100) NOT NULL,
  `maku2` varchar(300) NOT NULL,
  `tdku` varchar(300) NOT NULL,
  `uku1` varchar(300) NOT NULL,
  `uku2` varchar(300) NOT NULL,
  `pbku` varchar(300) NOT NULL,
  `ppk` varchar(300) NOT NULL,
  `kakopku` varchar(300) NOT NULL,
  `namappk` varchar(100) NOT NULL,
  `pktnrpppk` varchar(300) NOT NULL,
  `namakakop` varchar(100) NOT NULL,
  `pktnrpkakop` varchar(300) NOT NULL,
  `namapdtr` varchar(100) NOT NULL,
  `pktnrppdtr` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuitansiup`
--

CREATE TABLE `kuitansiup` (
  `takuiup` year(4) NOT NULL,
  `nobkuup` varchar(100) NOT NULL,
  `makuup1` varchar(100) NOT NULL,
  `makuup2` varchar(100) NOT NULL,
  `tdkuup` varchar(200) NOT NULL,
  `ukuup1` varchar(100) NOT NULL,
  `ukuup2` varchar(100) NOT NULL,
  `pbkuup` varchar(200) NOT NULL,
  `ppkup` varchar(100) NOT NULL,
  `kakopkuup` varchar(100) NOT NULL,
  `namappkup` varchar(300) NOT NULL,
  `pktnrpppkup` varchar(100) NOT NULL,
  `namakakopup` varchar(300) NOT NULL,
  `pktnrpkakopup` varchar(100) NOT NULL,
  `namapdtrup` varchar(300) NOT NULL,
  `pktnrppdtrup` varchar(100) NOT NULL,
  `notglup` varchar(100) NOT NULL,
  `namabdhup` varchar(300) NOT NULL,
  `pktnrpbdhup` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sptjm`
--

CREATE TABLE `sptjm` (
  `namasptjm` varchar(100) NOT NULL,
  `pngkatsptjm` varchar(300) NOT NULL,
  `jbatansptjm` varchar(300) NOT NULL,
  `alinea1sptjm` text NOT NULL,
  `alinea2sptjm` text NOT NULL,
  `alinea3sptjm` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sptjm`
--

INSERT INTO `sptjm` (`namasptjm`, `pngkatsptjm`, `jbatansptjm`, `alinea1sptjm`, `alinea2sptjm`, `alinea3sptjm`) VALUES
('', '', '', '', '', ''),
('', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `suratkirim`
--

CREATE TABLE `suratkirim` (
  `nomorsk` varchar(100) NOT NULL,
  `klasifikasisk` varchar(100) NOT NULL,
  `lampiransk` varchar(100) NOT NULL,
  `tetask` varchar(100) NOT NULL,
  `perihalsk` varchar(100) NOT NULL,
  `kpadask` varchar(300) NOT NULL,
  `judulsk` varchar(100) NOT NULL,
  `namesk1` varchar(100) NOT NULL,
  `namesk2` varchar(100) NOT NULL,
  `pktnrpsk1` varchar(100) NOT NULL,
  `pktnrpsk2` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tandatangan`
--

CREATE TABLE `tandatangan` (
  `tetattd` varchar(100) NOT NULL,
  `nottd` varchar(100) NOT NULL,
  `kpadattd` varchar(100) NOT NULL,
  `namattd` varchar(100) NOT NULL,
  `pktnrpttd` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblsuratjalan`
--

CREATE TABLE `tblsuratjalan` (
  `namabarangsj` varchar(100) NOT NULL,
  `bnyaknyasj` int(100) NOT NULL,
  `satuansj` varchar(100) NOT NULL,
  `ketsj` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblsuratkirim`
--

CREATE TABLE `tblsuratkirim` (
  `namabarangsk` varchar(100) NOT NULL,
  `bnyaknyask` int(100) NOT NULL,
  `satuansk` varchar(100) NOT NULL,
  `ketsk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblsuratpesan`
--

CREATE TABLE `tblsuratpesan` (
  `namabarangsp` varchar(100) NOT NULL,
  `bnyaknyasp` int(100) NOT NULL,
  `satuansp` varchar(100) NOT NULL,
  `ketsp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kuitansi`
--
ALTER TABLE `kuitansi`
  ADD PRIMARY KEY (`nobku`);

--
-- Indexes for table `kuitansiup`
--
ALTER TABLE `kuitansiup`
  ADD PRIMARY KEY (`nobkuup`);

--
-- Indexes for table `suratkirim`
--
ALTER TABLE `suratkirim`
  ADD PRIMARY KEY (`nomorsk`);

--
-- Indexes for table `tandatangan`
--
ALTER TABLE `tandatangan`
  ADD PRIMARY KEY (`nottd`);

--
-- Indexes for table `tblsuratjalan`
--
ALTER TABLE `tblsuratjalan`
  ADD PRIMARY KEY (`namabarangsj`);

--
-- Indexes for table `tblsuratkirim`
--
ALTER TABLE `tblsuratkirim`
  ADD PRIMARY KEY (`namabarangsk`);

--
-- Indexes for table `tblsuratpesan`
--
ALTER TABLE `tblsuratpesan`
  ADD PRIMARY KEY (`namabarangsp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
