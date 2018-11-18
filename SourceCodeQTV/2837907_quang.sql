-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb23.biz.nf
-- Generation Time: Oct 10, 2018 at 03:11 PM
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
  `mp3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `baihat`
--

INSERT INTO `baihat` (`idBH`, `TenBH`, `theloai`, `casi`, `mp3`) VALUES
(8, 'Chạm Đáy Nỗi Đau', 'Nhạc trẻ', 'Mr Siro', 'https://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/8eb46f3db87951270868/6366243486279198955?authen=exp=1538735511~acl=/8eb46f3db87951270868/*~hmac=e4981033e8f7c7a0106c106d86fa25ea&filename=Cham-Day-Noi-Dau-ERIK.mp3'),
(7, 'Càng Níu Giữ Càng Dễ Mất', 'Nhạc trẻ', 'Mr Siro', 'https://vnso-zn-11-tf-mp3-s1-zmp3.zadn.vn/c9ce5f658c21657f3c30/5337160813560919543?authen=exp=1538735415~acl=/c9ce5f658c21657f3c30/*~hmac=3d6eeb5c6d9e3c68c6e53e692997eb42&filename=Cang-Niu-Giu-Cang-De-Mat-Mr-Siro.mp3'),
(9, 'Sống Xa Anh Chẳng Dễ Dàng', 'Nhạc trẻ', 'Mr Siro', 'https://vnso-zn-6-tf-mp3-s1-zmp3.zadn.vn/0115d71e0c5ae504bc4b/4205179650957840805?authen=exp=1538735552~acl=/0115d71e0c5ae504bc4b/*~hmac=ae58e41b1c0f93f12f84a900b2d024e8&filename=Song-Xa-Anh-Chang-De-Dang-Bao-Anh.mp3'),
(10, 'Đừng Ai Nhắc Về Anh Ấy', 'Nhạc trẻ', 'Trà My Idol', 'https://vnso-zn-15-tf-mp3-s1-zmp3.zadn.vn/de0f10f2c8b621e878a7/8028330437800394190?authen=exp=1538735607~acl=/de0f10f2c8b621e878a7/*~hmac=c62f247b50fa2c13c56839fc6c970d30&filename=Dung-Ai-Nhac-Ve-Anh-Ay-Tra-My-Idol.mp3'),
(11, 'Chạm Đáy Nỗi Đau', 'Nhạc trẻ', 'Mr Siro', 'https://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/8eb46f3db87951270868/6366243486279198955?authen=exp=1538735511~acl=/8eb46f3db87951270868/*~hmac=e4981033e8f7c7a0106c106d86fa25ea&filename=Cham-Day-Noi-Dau-ERIK.mp3'),
(12, 'Chạm Đáy Nỗi Đau', 'Nhạc trẻ', 'Mr Siro', 'https://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/8eb46f3db87951270868/6366243486279198955?authen=exp=1538735511~acl=/8eb46f3db87951270868/*~hmac=e4981033e8f7c7a0106c106d86fa25ea&filename=Cham-Day-Noi-Dau-ERIK.mp3'),
(13, 'Chạm Đáy Nỗi Đau', 'Nhạc trẻ', 'Mr Siro', 'https://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/8eb46f3db87951270868/6366243486279198955?authen=exp=1538735511~acl=/8eb46f3db87951270868/*~hmac=e4981033e8f7c7a0106c106d86fa25ea&filename=Cham-Day-Noi-Dau-ERIK.mp3'),
(14, 'Chạm Đáy Nỗi Đau', 'Nhạc trẻ', 'Mr Siro', 'https://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/8eb46f3db87951270868/6366243486279198955?authen=exp=1538735511~acl=/8eb46f3db87951270868/*~hmac=e4981033e8f7c7a0106c106d86fa25ea&filename=Cham-Day-Noi-Dau-ERIK.mp3'),
(15, 'Chạm Đáy Nỗi Đau', 'Nhạc trẻ', 'Mr Siro', 'https://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/8eb46f3db87951270868/6366243486279198955?authen=exp=1538735511~acl=/8eb46f3db87951270868/*~hmac=e4981033e8f7c7a0106c106d86fa25ea&filename=Cham-Day-Noi-Dau-ERIK.mp3'),
(17, 'Chạm Đáy Nỗi Đau', 'Nhạc trẻ', 'Mr Siro', 'https://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/8eb46f3db87951270868/6366243486279198955?authen=exp=1538735511~acl=/8eb46f3db87951270868/*~hmac=e4981033e8f7c7a0106c106d86fa25ea&filename=Cham-Day-Noi-Dau-ERIK.mp3'),
(18, 'Chạm Đáy Nỗi Đau', 'Nhạc trẻ', 'Mr Siro', 'https://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/8eb46f3db87951270868/6366243486279198955?authen=exp=1538735511~acl=/8eb46f3db87951270868/*~hmac=e4981033e8f7c7a0106c106d86fa25ea&filename=Cham-Day-Noi-Dau-ERIK.mp3');

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
  `capdo` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `usr`, `pass`, `data_reg`, `holot`, `ten`, `ngaysinh`, `SDT`, `gioitinh`, `capdo`) VALUES
(1, 'Admin', 'thanhquang', 'sdfdfdsfs', 'sfdsf', 'dfffsdss', '1998-10-02', '0534534535', 'Nam', 'Thường'),
(687, 'Admin1', 'sdfsdgdfgdghf', 'ghfghfghdhd', 'fdgdg', 'dgdfgd', '2018-10-02', '1659852365', 'Nam', 'Thường');

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
  MODIFY `idBH` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=688;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
