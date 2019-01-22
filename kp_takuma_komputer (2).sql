-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 24, 2018 at 11:25 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kp_takuma_komputer`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(50) NOT NULL,
  `alamat_customer` varchar(50) NOT NULL,
  `no_telfon` varchar(50) NOT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat_customer`, `no_telfon`) VALUES
(1, 'Reki', 'tondano', '11111111'),
(2, 'arnold', 'tomohon', '1111111111111');

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang`
--

CREATE TABLE IF NOT EXISTS `detail_barang` (
  `id_detail_barang` int(11) NOT NULL,
  `id_stok_barang` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_barang`,`id_stok_barang`),
  KEY `id_stok_barang` (`id_stok_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_barang`
--

INSERT INTO `detail_barang` (`id_detail_barang`, `id_stok_barang`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `detail_hardware`
--

CREATE TABLE IF NOT EXISTS `detail_hardware` (
  `id_detail_harware` int(11) NOT NULL,
  `id_stok_harware` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_harware`,`id_stok_harware`),
  KEY `id_stok_harware` (`id_stok_harware`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_hardware`
--

INSERT INTO `detail_hardware` (`id_detail_harware`, `id_stok_harware`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_komputer`
--

CREATE TABLE IF NOT EXISTS `detail_komputer` (
  `id_detail_komputer` int(11) NOT NULL,
  `id_stok_komputer` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_komputer`,`id_stok_komputer`),
  KEY `id_stok_komputer` (`id_stok_komputer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_komputer`
--

INSERT INTO `detail_komputer` (`id_detail_komputer`, `id_stok_komputer`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_laptop`
--

CREATE TABLE IF NOT EXISTS `detail_laptop` (
  `id_detail_laptop` int(11) NOT NULL,
  `id_stok_laptop` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_laptop`,`id_stok_laptop`),
  KEY `id_stok_laptop` (`id_stok_laptop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_laptop`
--

INSERT INTO `detail_laptop` (`id_detail_laptop`, `id_stok_laptop`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE IF NOT EXISTS `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(11) NOT NULL,
  `id_stok_barang` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_transaksi`,`id_transaksi`,`id_stok_barang`),
  KEY `id_stok_barang` (`id_stok_barang`),
  KEY `id_transaksi` (`id_transaksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_stok_barang`) VALUES
(8, 3, 1),
(10, 4, 1),
(18, 8, 1),
(21, 12, 1),
(22, 21, 1),
(25, 23, 1),
(29, 25, 1),
(33, 31, 1),
(34, 33, 1),
(35, 33, 1),
(36, 40, 1),
(38, 41, 1),
(46, 111, 1),
(49, 112, 1),
(12, 4, 3),
(20, 10, 3),
(27, 23, 3),
(31, 25, 3),
(37, 40, 3),
(40, 41, 3),
(47, 111, 3),
(50, 112, 3),
(13, 4, 4),
(28, 23, 4),
(32, 25, 4),
(48, 111, 4),
(51, 112, 4),
(17, 5, 12),
(23, 21, 12),
(43, 413, 12),
(24, 21, 13),
(44, 413, 13),
(16, 5, 14),
(45, 413, 14),
(52, 112, 14),
(14, 4, 16),
(15, 5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi_service`
--

CREATE TABLE IF NOT EXISTS `detail_transaksi_service` (
  `id_detail_transaksi_service` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaksi` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_transaksi_service`,`id_transaksi`,`id_service`),
  KEY `id_service` (`id_service`),
  KEY `id_transaksi` (`id_transaksi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `detail_transaksi_service`
--

INSERT INTO `detail_transaksi_service` (`id_detail_transaksi_service`, `id_transaksi`, `id_service`) VALUES
(2, 10, 1),
(3, 12, 1),
(4, 21, 1),
(5, 23, 1),
(6, 25, 1),
(7, 40, 1),
(8, 41, 1),
(9, 111, 1),
(1, 8, 2),
(10, 112, 2);

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE IF NOT EXISTS `harga` (
  `id_harga` int(11) NOT NULL,
  `harga_service` int(11) NOT NULL,
  PRIMARY KEY (`id_harga`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`id_harga`, `harga_service`) VALUES
(1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `username`, `password`) VALUES
(1, '', '123'),
(2, 'alan', '123');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id_service` int(11) NOT NULL,
  `nama_service` varchar(50) NOT NULL,
  `perbaikan` varchar(50) NOT NULL,
  `barang_customer` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id_service`, `nama_service`, `perbaikan`, `barang_customer`, `harga`) VALUES
(1, 'install laptop', 'install os laptop', 'ASUS ROG', 0),
(2, 'LAPTOP', '', '', 0),
(3, 'komputer', 'install ulang', 'komputer super', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stok_barang`
--

CREATE TABLE IF NOT EXISTS `stok_barang` (
  `id_stok_barang` int(11) NOT NULL,
  `merek_barang` varchar(50) NOT NULL,
  `tipe` varchar(200) NOT NULL,
  `Jenis` enum('laptop','komputer','hardwrre','') NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_stok_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_barang`
--

INSERT INTO `stok_barang` (`id_stok_barang`, `merek_barang`, `tipe`, `Jenis`, `harga`) VALUES
(1, 'DAZUMBA', 'AAAAGAGGGAAGA', 'komputer', 4000),
(2, 'ASUS', 'Laptop', 'hardwrre', 50000000),
(3, 'MSI GAMING SYSTEM i7', 'komputer ', 'komputer', 150000),
(4, 'STEELSERIES', 'HEADSET', 'hardwrre', 0),
(5, 'Lenovo', 'Mouse', 'hardwrre', 0),
(6, 'ASUS', 'motherboard', 'hardwrre', 0),
(7, 'Nvidia Gforce 720', 'VGA', 'hardwrre', 0),
(8, 'Razer gaming komputer', 'Super MBSuper PCsuper VGASuper ramSuper hardiskSuper powersupplyLayar 4kKeyboard gamingMouse gamingChasing gaming', 'komputer', 0),
(12, 'dasumba', 'speaker', 'hardwrre', 10000),
(13, 'coba', 'aaaaaaaaaa', 'komputer', 10000),
(14, 'coba', 'aaaaaaaaaa', 'komputer', 10000),
(15, 'mac ', 'supersupersupersupersupersaupersupersupersupersuper', 'komputer', 1500000),
(16, 'toshiba', 'supersupersupersupersueprsupersuper', 'laptop', 150000),
(30, 'coba1', 'coba', 'hardwrre', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `stok_hardware`
--

CREATE TABLE IF NOT EXISTS `stok_hardware` (
  `id_stok_hardware` int(11) NOT NULL,
  `nama_hardware` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  PRIMARY KEY (`id_stok_hardware`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_hardware`
--

INSERT INTO `stok_hardware` (`id_stok_hardware`, `nama_hardware`, `tipe`, `jenis`) VALUES
(1, 'RAZER', 'MOUSE', '');

-- --------------------------------------------------------

--
-- Table structure for table `stok_komputer`
--

CREATE TABLE IF NOT EXISTS `stok_komputer` (
  `id_stok_komputer` int(11) NOT NULL,
  `nama_stok_komputer` varchar(50) NOT NULL,
  `spesifikasi` varchar(100) NOT NULL,
  PRIMARY KEY (`id_stok_komputer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_komputer`
--

INSERT INTO `stok_komputer` (`id_stok_komputer`, `nama_stok_komputer`, `spesifikasi`) VALUES
(1, 'ROG PC GAMING', 'KOMPUTER KANCANG i7 ');

-- --------------------------------------------------------

--
-- Table structure for table `stok_laptop`
--

CREATE TABLE IF NOT EXISTS `stok_laptop` (
  `id_stok_laptop` int(11) NOT NULL,
  `nama_laptop` varchar(50) NOT NULL,
  `spesifikasi` varchar(100) NOT NULL,
  PRIMARY KEY (`id_stok_laptop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_laptop`
--

INSERT INTO `stok_laptop` (`id_stok_laptop`, `nama_laptop`, `spesifikasi`) VALUES
(1, 'ASUS ROG', 'LAPTOP KANCANG I7 GEN 7');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi`,`id_customer`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_customer`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(10, 1),
(12, 1),
(21, 1),
(23, 1),
(25, 1),
(30, 1),
(31, 1),
(33, 1),
(40, 1),
(111, 1),
(41, 2),
(112, 2),
(413, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_hardware`
--

CREATE TABLE IF NOT EXISTS `transaksi_hardware` (
  `id_transaksi_harware` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_stok_hardware` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi_harware`,`id_transaksi`,`id_stok_hardware`,`id_pegawai`),
  KEY `id_transaksi` (`id_transaksi`),
  KEY `id_stok_hardware` (`id_stok_hardware`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_komputer`
--

CREATE TABLE IF NOT EXISTS `transaksi_komputer` (
  `id_transaksi_komputer` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_stok_komputer` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi_komputer`,`id_transaksi`,`id_stok_komputer`,`id_pegawai`),
  KEY `id_transaksi` (`id_transaksi`),
  KEY `id_stok_komputer` (`id_stok_komputer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_laptop`
--

CREATE TABLE IF NOT EXISTS `transaksi_laptop` (
  `id_transaksi_laptop` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_stok_laptop` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  PRIMARY KEY (`id_transaksi_laptop`,`id_transaksi`,`id_stok_laptop`,`id_pegawai`),
  KEY `id_transaksi` (`id_transaksi`),
  KEY `id_stok_laptop` (`id_stok_laptop`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_laptop`
--

INSERT INTO `transaksi_laptop` (`id_transaksi_laptop`, `id_transaksi`, `id_stok_laptop`, `id_pegawai`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_service`
--

CREATE TABLE IF NOT EXISTS `transaksi_service` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_harga` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `id_service` int(11) NOT NULL,
  PRIMARY KEY (`id_detail_transaksi`,`id_transaksi`,`id_harga`,`id_pegawai`,`id_service`),
  KEY `id_pegawai` (`id_pegawai`),
  KEY `id_transaksi` (`id_transaksi`),
  KEY `id_service` (`id_service`),
  KEY `id_harga` (`id_harga`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi_service`
--

INSERT INTO `transaksi_service` (`id_detail_transaksi`, `id_transaksi`, `id_harga`, `id_pegawai`, `id_service`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view`
--
CREATE TABLE IF NOT EXISTS `view` (
`id_detail_transaksi` int(11)
,`id_transaksi` int(11)
,`id_stok_barang` int(11)
);
-- --------------------------------------------------------

--
-- Structure for view `view`
--
DROP TABLE IF EXISTS `view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view` AS select `detail_transaksi`.`id_detail_transaksi` AS `id_detail_transaksi`,`detail_transaksi`.`id_transaksi` AS `id_transaksi`,`detail_transaksi`.`id_stok_barang` AS `id_stok_barang` from `detail_transaksi`;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD CONSTRAINT `detail_barang_ibfk_1` FOREIGN KEY (`id_stok_barang`) REFERENCES `stok_barang` (`id_stok_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_hardware`
--
ALTER TABLE `detail_hardware`
  ADD CONSTRAINT `detail_hardware_ibfk_1` FOREIGN KEY (`id_stok_harware`) REFERENCES `stok_hardware` (`id_stok_hardware`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_komputer`
--
ALTER TABLE `detail_komputer`
  ADD CONSTRAINT `detail_komputer_ibfk_1` FOREIGN KEY (`id_stok_komputer`) REFERENCES `stok_komputer` (`id_stok_komputer`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_laptop`
--
ALTER TABLE `detail_laptop`
  ADD CONSTRAINT `detail_laptop_ibfk_1` FOREIGN KEY (`id_stok_laptop`) REFERENCES `stok_laptop` (`id_stok_laptop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_stok_barang`) REFERENCES `stok_barang` (`id_stok_barang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_3` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detail_transaksi_service`
--
ALTER TABLE `detail_transaksi_service`
  ADD CONSTRAINT `detail_transaksi_service_ibfk_1` FOREIGN KEY (`id_service`) REFERENCES `service` (`id_service`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_service_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_hardware`
--
ALTER TABLE `transaksi_hardware`
  ADD CONSTRAINT `transaksi_hardware_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_hardware_ibfk_2` FOREIGN KEY (`id_stok_hardware`) REFERENCES `detail_hardware` (`id_detail_harware`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_komputer`
--
ALTER TABLE `transaksi_komputer`
  ADD CONSTRAINT `transaksi_komputer_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_komputer_ibfk_2` FOREIGN KEY (`id_stok_komputer`) REFERENCES `detail_komputer` (`id_detail_komputer`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_laptop`
--
ALTER TABLE `transaksi_laptop`
  ADD CONSTRAINT `transaksi_laptop_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_laptop_ibfk_2` FOREIGN KEY (`id_stok_laptop`) REFERENCES `detail_laptop` (`id_detail_laptop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi_service`
--
ALTER TABLE `transaksi_service`
  ADD CONSTRAINT `transaksi_service_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_service_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_service_ibfk_3` FOREIGN KEY (`id_service`) REFERENCES `service` (`id_service`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_service_ibfk_4` FOREIGN KEY (`id_harga`) REFERENCES `harga` (`id_harga`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
