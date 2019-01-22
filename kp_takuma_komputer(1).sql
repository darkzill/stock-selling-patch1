-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 22, 2019 at 01:30 AM
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
  `id_customer` int(11) NOT NULL AUTO_INCREMENT,
  `nama_customer` varchar(50) NOT NULL,
  `alamat_customer` varchar(50) NOT NULL,
  `no_telfon` varchar(50) NOT NULL,
  PRIMARY KEY (`id_customer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `alamat_customer`, `no_telfon`) VALUES
(1, 'Reki', 'tondano', '11111111'),
(2, 'arnold', 'tomohon', '1111111111111'),
(3, 'Rendi', 'asd', 'asd'),
(4, 'rano', 'asdf		', 'asdf'),
(5, 'lery', 'asdf', 'asdf');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=136 ;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_stok_barang`) VALUES
(109, 1, 1),
(110, 3, 1),
(115, 20, 1),
(116, 20, 1),
(117, 20, 1),
(118, 20, 1),
(119, 5, 1),
(130, 7, 1),
(106, 1, 2),
(107, 1, 2),
(108, 1, 2),
(111, 3, 2),
(120, 5, 2),
(131, 7, 2),
(112, 3, 3),
(121, 5, 3),
(132, 7, 3),
(133, 8, 3),
(134, 8, 3),
(135, 8, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `detail_transaksi_service`
--

INSERT INTO `detail_transaksi_service` (`id_detail_transaksi_service`, `id_transaksi`, `id_service`) VALUES
(13, 3331, 1),
(15, 1, 1),
(17, 5, 1);

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
  `barang_masuk` varchar(50) NOT NULL,
  `barang_keluar` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id_service`, `nama_service`, `perbaikan`, `barang_customer`, `barang_masuk`, `barang_keluar`, `harga`) VALUES
(1, 'install laptop', 'install os laptop', 'ASUS ROG', '0000-00-00', '0000-00-00', 0),
(2, 'LAPTOP', '', '', '0000-00-00', '0000-00-00', 0),
(3, 'komputer', 'install ulang', 'komputer super', '0000-00-00', '0000-00-00', 0),
(4, 'harddisk', 'rusak dalam', 'harddisk', '2018/11/16', 'null', 100000),
(5, 'Keyboard', 'Pembersian', 'Keyboard', '2018/11/16', 'null', 150000),
(6, 'Laptop', 'monitor', 'Lenovo', '2018/11/16', 'null', 500000),
(7, 'mouse', 'rusak kabel', 'mouse', '2018/11/16', 'null', 20000),
(8, 'asdf', 'asdf', 'asdf', '2019/01/18', '2019-01-17', 60000);

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
  `JUMLAH` int(11) NOT NULL,
  PRIMARY KEY (`id_stok_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_barang`
--

INSERT INTO `stok_barang` (`id_stok_barang`, `merek_barang`, `tipe`, `Jenis`, `harga`, `JUMLAH`) VALUES
(1, 'ASUSA', 'LAPTOP', 'hardwrre', 400000, 0),
(2, 'HP', 'LAPTOP', 'hardwrre', 1000000, 22),
(3, 'APPLE', 'LAPTOP', 'hardwrre', 100000, 30),
(4, 'ALIENWARE DESKOP', 'AAAAAAAAAA', 'komputer', 500000, 1);

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
  `tgl_penjualan` date NOT NULL,
  PRIMARY KEY (`id_transaksi`,`id_customer`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_customer`, `tgl_penjualan`) VALUES
(1, 2, '2019-01-19'),
(3, 2, '2019-01-19'),
(5, 2, '2019-01-20'),
(7, 2, '2019-01-20'),
(8, 2, '2019-01-20'),
(20, 1, '2019-01-19'),
(413, 2, '2019-01-01'),
(3331, 1, '2019-01-23'),
(3332, 1, '2019-01-19');

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
