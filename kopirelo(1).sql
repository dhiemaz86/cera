-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2016 at 05:43 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kopirelo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id_admin` int(4) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`, `email`) VALUES
(1, 'Winda', 'admin', '123', 'winda@sekar.dewi');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
`id_artikel` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`) VALUES
(1, 'Yellow Honey Process', 'Pada honey process yang telah kita bahas sebelumnya diperlukan kurang lebih sekitar 1-2 minggu proses penjemuran untuk kemudian bisa dilanjutkan ke proses selanjutnya. Proses penjemuran yang dilakukan pun harus di kontrol sedemikian rupa agar mucilage pada kopi sudah terserap dengan baik. Tetapi apabila terlalu lama bisa saja kopi justru terfermentasi yang akan merubah citarasa dan aroma kopi. Dalam proses honey terdapat tiga variasi lagi yang bergantung pada tingkat mucilage yang masih tersisa pada biji kopi ketika dijemur. Apa itu mucilage? Mucilage adalah lendir yang menempel pada permukaan biji kopi. Mucilage ini mempengaruhi rasa dan kemanisan pada kopi ketika kopi diseduh. Pada proses honey terdapat tiga variasi yaitu yellow honey, red honey, dan black honey. Tiga variasi ini dipengaruhi oleh tingkat mucilage yang masih menempel pada biji kopi ketika biji kopi dijemur. \r\n           Pada yellow honey proses ini dimulai dengan mencuci biji kopi dengan air yang bertujuan untuk mengurangi jumlah mucilage yang masih menempel pada biji kopi. Setelah itu baru biji kopi dijemur untuk mengeringkannya dengan cepat dan dilakukan fermentasi secara terkontrol sehingga tidak terjadi fermentasi berlebihan yang justru akan merubah rasa pada kopi. Biji kopi dengan mucilage lebih sedikit akan memerlukan waktu penjemuran lebih cepat, sementara biji kopi dengan mucilage lebih banyak akan memerlukan waktu lebih dalam proses penjemuran. Pada yellow honey ini mucilage disisakan lebih sedikit daripada varian lain karena bertujuan untuk dilakukan proses penjemuran yang lebih singkat. Dengan terjadinya fermentasi yang terjadi lebih singkat maka kopi yang diproses dengan proses honey akan memiliki perbedaan signifikan dari segi keasaman apabila dibandingkan dengan proses-proses lainnya seperti semi wash dan natural. Fermentasi ini akan berakibat pada meningkatnya body dan kemanisan pada kopi.">'),
(2, '7 Fakta Kopi Robusta', 'Kopi secara garis besar terbagi menjadi dua jenis yaitu Arabika dan Robusta. Meskipun sebagian besar perdagangan kopi di dunia di dominasi arabika bukan berarti robusta tidak meimiliki peran dalam dunia perkopian di dunia. Robusta banyak sekali digunakan sebagai bahan kopi blend yang nantinya berguna untuk memperbaiki karakter kopi arabika yang kurang â€˜pasâ€™ di lidah penikmat kopi.  Dibalik perannya tersebut tentu ada banyak fakta-fakta menarik  tentang kopi robusta baik saat berada di kebun maupun hingga ke tangan konsumen. Berikut ini beberapa fakta dan informasi mengenai kopi robusta.\r\n\r\nKopi robusta tumbuh pada umumnya di dataran rendah Datarn dengan ketinggian berkisar antara 0 â€“ 800 MDPL\r\n \r\n\r\nKandungan gula pada robusta berada pada angka 3-7 %, sementara kandungan lemaknya berada pada angka 10-11,5 %. Lebih rendah daripada kopi arabika.\r\n \r\n\r\nKandungan caffeine pada robusta lebih banyak daripada arabika, yaitu 2,2 %\r\n \r\n\r\n30% produksi kopi dunia adalah kopi robusta\r\n \r\n\r\nIndonesia adalah salah satu negara penghasil kopi robusta terbesar di dunia\r\n \r\n\r\nDi Indonesia, produksi robusta 5x lipat lebih banyak bila dibandingkan dengan produksi robusta\r\n \r\n\r\nKopi robusta lebih mudah ditanam dan tidak memerlukan perhatian khusus dan berlebih\r\n \r\n\r\nYa, memang terlepas dari fakta-fakta tersebut kopi robusta memang menempati posisi kedua dalam perdagangan kopi dunia di bawah kopi arabika. Meskipun begitu kopi robusta tidak dapat dipandang sebelah mata karena Indonesia pada khususnya adalah negara dengan produksi kopi robusta yang cukup besar. ');

-- --------------------------------------------------------

--
-- Table structure for table `beli`
--

CREATE TABLE IF NOT EXISTS `beli` (
`id_beli` int(4) NOT NULL,
  `status_beli` varchar(15) NOT NULL,
  `tgl_beli` date NOT NULL,
  `jam_beli` time NOT NULL,
  `id_supplier` int(4) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `beli`
--

INSERT INTO `beli` (`id_beli`, `status_beli`, `tgl_beli`, `jam_beli`, `id_supplier`) VALUES
(1, 'Arrived', '2016-12-06', '12:09:19', 1),
(2, 'Ordered', '2016-12-13', '08:04:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `biaya_kirim`
--

CREATE TABLE IF NOT EXISTS `biaya_kirim` (
`id_biaya_kirim` int(4) NOT NULL,
  `nama_kecamatan` varchar(50) NOT NULL,
  `biaya` int(6) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `biaya_kirim`
--

INSERT INTO `biaya_kirim` (`id_biaya_kirim`, `nama_kecamatan`, `biaya`) VALUES
(1, 'Depok', 5000),
(2, 'Purwomartani', 7000),
(3, 'Banguntapan', 6500);

-- --------------------------------------------------------

--
-- Table structure for table `detail_beli`
--

CREATE TABLE IF NOT EXISTS `detail_beli` (
`id_detail_beli` int(4) NOT NULL,
  `id_beli` int(4) DEFAULT NULL,
  `id_kopi` int(4) DEFAULT NULL,
  `jumlah` int(3) NOT NULL,
  `subtotal` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `detail_beli`
--

INSERT INTO `detail_beli` (`id_detail_beli`, `id_beli`, `id_kopi`, `jumlah`, `subtotal`) VALUES
(1, 1, 3, 20, 800000),
(2, 2, 4, 10, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_jual`
--

CREATE TABLE IF NOT EXISTS `detail_jual` (
`id_detail_jual` int(4) NOT NULL,
  `id_jual` int(4) DEFAULT NULL,
  `id_kopi` int(4) DEFAULT NULL,
  `jumlah` int(2) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `detail_jual`
--

INSERT INTO `detail_jual` (`id_detail_jual`, `id_jual`, `id_kopi`, `jumlah`, `harga`) VALUES
(1, 2, 4, 1, 69900),
(2, 1, 5, 1, 29900),
(10, 11, 1, 1, 61900),
(11, 11, 5, 1, 29900),
(12, 11, 3, 2, 119800);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pesan`
--

CREATE TABLE IF NOT EXISTS `detail_pesan` (
`id_detail_pesan` int(4) NOT NULL,
  `id_pesan` int(4) DEFAULT NULL,
  `id_kopi` int(4) DEFAULT NULL,
  `jumlah` int(3) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `detail_pesan`
--

INSERT INTO `detail_pesan` (`id_detail_pesan`, `id_pesan`, `id_kopi`, `jumlah`, `keterangan`) VALUES
(1, 1, 3, 1, 'Pesan 500 gram');

-- --------------------------------------------------------

--
-- Table structure for table `jual`
--

CREATE TABLE IF NOT EXISTS `jual` (
`id_jual` int(4) NOT NULL,
  `status` varchar(15) NOT NULL,
  `tgl_jual` date NOT NULL,
  `jam_jual` time DEFAULT NULL,
  `id_pelanggan` int(4) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jual`
--

INSERT INTO `jual` (`id_jual`, `status`, `tgl_jual`, `jam_jual`, `id_pelanggan`, `nama`, `alamat`, `email`, `no_hp`) VALUES
(1, 'Shipped', '2016-12-12', '05:12:26', 6, '', '', '', ''),
(2, 'Delivered', '2016-12-14', '12:09:29', 9, '', '', '', ''),
(4, 'On Process', '2016-12-21', NULL, NULL, 'Winda Sekar Dewi', 'jogja', 'winda@yahoo.com', '082765428291'),
(5, 'On Process', '2016-12-21', NULL, NULL, 'Winda Sekar Dewi2', 'ddd', 'winda@yahoo.com', '085628191234'),
(6, 'On Process', '2016-12-21', NULL, NULL, 'Winda Sekar Dewi3', '333', 'winda@yahoo.com', '082765428291'),
(7, 'On Process', '2016-12-21', NULL, NULL, 'Winda Sekar Dewi4', '444', 'winda@yahoo.com', '082765428291'),
(8, 'On Process', '2016-12-21', NULL, NULL, 'Winda Sekar Dewi5', 'rrrr', 'winda@yahoo.com', '082765428291'),
(9, 'On Process', '2016-12-21', NULL, NULL, 'Rizki Darmawanti2', 'ss', 'windasekard@yahoo.com', '818182'),
(10, 'On Process', '2016-12-21', NULL, NULL, 'Rizki Darmawanti', 'ddd', 'windasekard@yahoo.com', '818182'),
(11, 'On Process', '2016-12-21', NULL, NULL, 'Rizki Darmawanti', 'dddd', 'windasekard@yahoo.com', '818182');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(4) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Bubuk - Medium to Dark'),
(2, 'Beans - Medium to Dark'),
(3, 'Bubuk - Hitam'),
(4, 'Beans - Hitam');

-- --------------------------------------------------------

--
-- Table structure for table `kopi`
--

CREATE TABLE IF NOT EXISTS `kopi` (
`id_kopi` int(4) NOT NULL,
  `id_kategori` int(4) DEFAULT NULL,
  `nama_kopi` varchar(30) NOT NULL,
  `proses` varchar(30) NOT NULL,
  `berat` varchar(5) NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` varchar(2) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `kopi`
--

INSERT INTO `kopi` (`id_kopi`, `id_kategori`, `nama_kopi`, `proses`, `berat`, `harga`, `stok`, `deskripsi`, `gambar`) VALUES
(1, 1, 'Bali Kintamani', 'Wet Process', '250 g', 61900, '6', 'Single origin Bali Kintamani ini memiliki rasa yang citrusy, good body, chocolaty aroma, dan medium acidity  Beli sekarang dan rasakan kenikmatannya!', 'balikintamani.jpg'),
(3, 2, 'Aceh Gayo', 'Natural Process', '250 g', 59900, '5', 'Single origin Aceh Gayo ini memiliki rasa yang cherry notes, full body, dan low acidity. Beli sekarang dan rasakan kenikmatannya!', 'aceh250.jpg'),
(4, 2, 'Toraja Kalosi', 'Semi-washed Process', '250 g', 69900, '4', 'Dark chocolate notes, full body, sweet aroma, and medium acidity', 'toraja250.jpg'),
(5, 1, 'Sumatra Mandheling', 'Full Washed Process', '100gr', 29900, '0', 'Single origin Sumatra Mandheling ini memiliki rasa yang sweet tobacco, full body, earthy aroma, and low acidity. Beli sekarang dan rasakan kenikmatannya!', 'sumatra100.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
`id_pelanggan` int(4) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `username`, `password`, `nama`, `alamat`, `email`, `no_hp`) VALUES
(1, 'rizki', 'rizki', 'Rizki Darmawan', 'Citra Ringin Mas A 41 Purwomartani', 'rizki@darmawan.com', '08976543214'),
(2, 'Dewi', 'DEwi', 'Winda Sekar Dewi', 'Janti Buana Asri 4, Banguntapan Bantul, Yogyakarta', 'dewi@sekar.com', '08765435678'),
(6, 'internasional', '123456', 'Otto', 'Kalasan', 'windasekard@yahoo.com', '09876524567'),
(7, 'internasional', '123456', 'Eyang', 'Kalasan', 'windasekard@yahoo.com', '09876524567'),
(8, 'Dewi', 'ringinmas', 'aswindita', 'perun Citra Ringin Mas', 'aswindita@gmail.com', '082466886'),
(9, 'bambang', '123567', 'bambang', 'hghgghghghghg', 'bambang@amikom.com', '08765432346');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
`id_pesan` int(4) NOT NULL,
  `status_pesan` varchar(15) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `jam_pesan` time NOT NULL,
  `id_pelanggan` int(4) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `status_pesan`, `tgl_pesan`, `jam_pesan`, `id_pelanggan`) VALUES
(1, 'Ordered', '2016-12-13', '04:15:15', 2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE IF NOT EXISTS `supplier` (
`id_supplier` int(4) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat`, `email`, `no_hp`) VALUES
(1, 'Ossa Rayhana', 'Bojongsoang,Bantul,Yogyakarta', 'ossa@rayhana.com', '087654391292');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
 ADD PRIMARY KEY (`id_artikel`);

--
-- Indexes for table `beli`
--
ALTER TABLE `beli`
 ADD PRIMARY KEY (`id_beli`), ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `biaya_kirim`
--
ALTER TABLE `biaya_kirim`
 ADD PRIMARY KEY (`id_biaya_kirim`);

--
-- Indexes for table `detail_beli`
--
ALTER TABLE `detail_beli`
 ADD PRIMARY KEY (`id_detail_beli`), ADD KEY `id_beli` (`id_beli`), ADD KEY `id_kopi` (`id_kopi`);

--
-- Indexes for table `detail_jual`
--
ALTER TABLE `detail_jual`
 ADD PRIMARY KEY (`id_detail_jual`), ADD KEY `id_jual` (`id_jual`), ADD KEY `id_kopi` (`id_kopi`);

--
-- Indexes for table `detail_pesan`
--
ALTER TABLE `detail_pesan`
 ADD PRIMARY KEY (`id_detail_pesan`), ADD KEY `id_pesan` (`id_pesan`), ADD KEY `id_kopi` (`id_kopi`);

--
-- Indexes for table `jual`
--
ALTER TABLE `jual`
 ADD PRIMARY KEY (`id_jual`), ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kopi`
--
ALTER TABLE `kopi`
 ADD PRIMARY KEY (`id_kopi`), ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
 ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
 ADD PRIMARY KEY (`id_pesan`), ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
 ADD PRIMARY KEY (`id_supplier`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id_admin` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `beli`
--
ALTER TABLE `beli`
MODIFY `id_beli` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `biaya_kirim`
--
ALTER TABLE `biaya_kirim`
MODIFY `id_biaya_kirim` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `detail_beli`
--
ALTER TABLE `detail_beli`
MODIFY `id_detail_beli` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `detail_jual`
--
ALTER TABLE `detail_jual`
MODIFY `id_detail_jual` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `detail_pesan`
--
ALTER TABLE `detail_pesan`
MODIFY `id_detail_pesan` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jual`
--
ALTER TABLE `jual`
MODIFY `id_jual` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kopi`
--
ALTER TABLE `kopi`
MODIFY `id_kopi` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
MODIFY `id_pelanggan` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
MODIFY `id_pesan` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
MODIFY `id_supplier` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `beli`
--
ALTER TABLE `beli`
ADD CONSTRAINT `beli_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `detail_beli`
--
ALTER TABLE `detail_beli`
ADD CONSTRAINT `detail_beli_ibfk_1` FOREIGN KEY (`id_beli`) REFERENCES `beli` (`id_beli`) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT `detail_beli_ibfk_2` FOREIGN KEY (`id_kopi`) REFERENCES `kopi` (`id_kopi`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `detail_jual`
--
ALTER TABLE `detail_jual`
ADD CONSTRAINT `detail_jual_ibfk_1` FOREIGN KEY (`id_jual`) REFERENCES `jual` (`id_jual`) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT `detail_jual_ibfk_2` FOREIGN KEY (`id_kopi`) REFERENCES `kopi` (`id_kopi`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `detail_pesan`
--
ALTER TABLE `detail_pesan`
ADD CONSTRAINT `detail_pesan_ibfk_1` FOREIGN KEY (`id_pesan`) REFERENCES `pesan` (`id_pesan`) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT `detail_pesan_ibfk_2` FOREIGN KEY (`id_kopi`) REFERENCES `kopi` (`id_kopi`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `jual`
--
ALTER TABLE `jual`
ADD CONSTRAINT `jual_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `kopi`
--
ALTER TABLE `kopi`
ADD CONSTRAINT `kopi_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON UPDATE CASCADE,
ADD CONSTRAINT `kopi_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `pesan`
--
ALTER TABLE `pesan`
ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
