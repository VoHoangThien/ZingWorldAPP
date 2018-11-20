-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb23.biz.nf
-- Generation Time: Nov 20, 2018 at 04:33 PM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2837907_quang`
--

-- --------------------------------------------------------

--
-- Table structure for table `baihat`
--

CREATE TABLE `baihat` (
  `idBH` int(20) NOT NULL,
  `TenBH` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `theloai` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `casi` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mp3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `anh` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `baihat`
--

INSERT INTO `baihat` (`idBH`, `TenBH`, `theloai`, `casi`, `mp3`, `anh`) VALUES
(23, 'Vô Tình ', 'Nhạc Trẻ', 'Xesi , Hoaprox', 'http://vnso-zn-15-tf-mp3-s1-zmp3.zadn.vn/6b6f67b8b4fc5da204ed/8535846274511414666?authen=exp=1542810965~acl=/6b6f67b8b4fc5da204ed/*~hmac=21e41a26b201ae922d1843ccfceabbbb', 'https://photo-resize-zmp3.zadn.vn/w240h240_jpeg/cover/7/9/8/5/798559c5b7d028c351d34a37c7a598cc.jpg'),
(22, 'Anh Đang Ở Đâu Đấy Anh ', 'Nhạc Trẻ', 'Hương Giang', 'http://vnso-zn-11-tf-mp3-s1-zmp3.zadn.vn/ee85458a8ace63903adf/7635040320665034874?authen=exp=1542803171~acl=/ee85458a8ace63903adf/*~hmac=33250694ec42a72bf6b9147263209a7e', 'https://photo-resize-zmp3.zadn.vn/w240h240_jpeg/cover/1/d/d/b/1ddb5c7aab749cf356204433d2b512fc.jpg'),
(25, 'Em Không Thể ', 'Nhạc Trẻ', 'Tiên Tiên , Touliver', 'http://vnso-zn-5-tf-mp3-s1-zmp3.zadn.vn/3573d87f153bfc65a52a/4100151906553154210?authen=exp=1542897728~acl=/3573d87f153bfc65a52a/*~hmac=02d3b5e054c8c57323984a5ed31b8c55', 'https://zmp3-photo-fbcrawler.zadn.vn/cover/f/8/f/2/f8f2cd19c3e2e48603a510888807c363.jpg'),
(26, 'Hongkong1 (Official Version)', 'Nhạc Trẻ', 'Nguyễn Trọng Tài , San Ji , Double X', 'http://vnso-zn-5-tf-mp3-s1-zmp3.zadn.vn/8bd98de05ea4b7faeeb5/984544967048502405?authen=exp=1542898339~acl=/8bd98de05ea4b7faeeb5/*~hmac=7c5bc5103ac3a9b07190dcd4a88e7c41', 'http://cdn.hoahoctro.vn/uploads/2018/09/5bae53b7d25e5-ca-khuc-tuyet-tac-trong-con-say-hongkong-1-72cb1d.jpg'),
(27, 'Càng Níu Giữ Càng Dễ Mất ', 'Nhạc Trẻ', 'Mr Siro', 'http://vnso-zn-11-tf-mp3-s1-zmp3.zadn.vn/c9ce5f658c21657f3c30/5337160813560919543?authen=exp=1542901827~acl=/c9ce5f658c21657f3c30/*~hmac=023d5cd15a330ee241e9cf3417238f9a', 'https://photo-resize-zmp3.zadn.vn/w240h240_jpeg/cover/9/9/7/2/997250daaebfe5c1a8f29a5fce90248a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usr` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `data_reg` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `holot` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `gioitinh` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `capdo` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usr`, `pass`, `data_reg`, `holot`, `ten`, `ngaysinh`, `SDT`, `gioitinh`, `capdo`) VALUES
(1, 'Admin', 'thanhquang', '2018-11-06', 'Nguyễn Thanh', 'Quang', '1998-10-02', '01659852365', 'Nam', 'Quản Trị Viên'),
(693, 'Admin4', 'sdsada', '2018-11-20', 'Quang', 'Hyouka', '1999-11-22', '01638063226', 'Nam', 'Thường'),
(694, 'Admin5', 'sdsada', '2018-11-20', 'Quang', 'Hyouka', '1998-02-28', '01638063226', 'Nam', 'Thường');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baihat`
--
ALTER TABLE `baihat`
  ADD PRIMARY KEY (`idBH`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baihat`
--
ALTER TABLE `baihat`
  MODIFY `idBH` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=695;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
