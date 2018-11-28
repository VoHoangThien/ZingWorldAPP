-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: fdb23.biz.nf
-- Generation Time: Nov 28, 2018 at 02:07 PM
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
(23, 'Em Không Thể ', 'Nhạc Trẻ', 'Tiên Tiên , Touliver', 'http://vnso-zn-11-tf-mp3-s1-zmp3.zadn.vn/3573d87f153bfc65a52a/4100151906553154210?authen=exp=1543579071~acl=/3573d87f153bfc65a52a/*~hmac=9d2674c6c1a409e73f2fa0e6765df1d6', 'https://zmp3-photo-fbcrawler.zadn.vn/cover/f/8/f/2/f8f2cd19c3e2e48603a510888807c363.jpg'),
(22, 'Anh Đang Ở Đâu Đấy Anh ', 'Nhạc trẻ ', 'Hương Giang ', 'http://vnso-zn-16-tf-mp3-s1-zmp3.zadn.vn/ee85458a8ace63903adf/7635040320665034874?authen=exp=1543578590~acl=/ee85458a8ace63903adf/*~hmac=b242a237ba4977e2f34d4a2800348581', 'https://photo-resize-zmp3.zadn.vn/w240h240_jpeg/cover/1/d/d/b/1ddb5c7aab749cf356204433d2b512fc.jpg'),
(30, 'Màu Nước Mắt', 'Nhạc Trẻ', 'Nguyễn Trần Trung Quân', 'http://vnso-zn-6-tf-mp3-s1-zmp3.zadn.vn/54f118fed7ba3ee467ab/3989433457339507920?authen=exp=1543580539~acl=/54f118fed7ba3ee467ab/*~hmac=f043349067df3134c4bc815e974682c7', 'https://photo-resize-zmp3.zadn.vn/w240h240_jpeg/cover/8/f/5/0/8f50e5afbf4daa6d062019bc36f3ab1a.jpg'),
(26, 'Con Trai Cưng ', 'Nhạc Trẻ', 'K-ICM , B Ray', 'http://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/93e7d9db119ff8c1a18e/972233365974826665?authen=exp=1543579296~acl=/93e7d9db119ff8c1a18e/*~hmac=ed3a6303ff43eb22f43bb485df1a7b12', 'https://photo-resize-zmp3.zadn.vn/w240h240_jpeg/cover/7/1/b/1/71b166227f44f5a2ea975e1f2dcf4601.jpg'),
(28, 'Hongkong1 (Official Version) ', 'Nhạc Trẻ', 'Nguyễn Trọng Tài, San Ji, Double X', 'http://vnso-zn-11-tf-mp3-s1-zmp3.zadn.vn/8bd98de05ea4b7faeeb5/984544967048502405?authen=exp=1543579648~acl=/8bd98de05ea4b7faeeb5/*~hmac=dd3316ed5082eb75b84c93cb80c57766', 'http://vncdn.mvpviet.com/yeah1movie.com/wp-content/uploads/2018/09/Untitled-1-227.jpg'),
(27, 'Vô Tình', 'Nhạc Trẻ', 'Xesi , Hoaprox', 'http://vnso-zn-6-tf-mp3-s1-zmp3.zadn.vn/6b6f67b8b4fc5da204ed/8535846274511414666?authen=exp=1543579443~acl=/6b6f67b8b4fc5da204ed/*~hmac=6386f7edd60065c2cc738f5269fdd4d0', 'https://photo-resize-zmp3.zadn.vn/w240h240_jpeg/cover/7/9/8/5/798559c5b7d028c351d34a37c7a598cc.jpg'),
(29, 'Thằng Điên', 'Nhạc Trẻ', 'JustaTee , Phương Ly', 'http://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/6a7f4f5c9c1875462c09/6915996016203233196?authen=exp=1543580310~acl=/6a7f4f5c9c1875462c09/*~hmac=1bcc488309707137af4872d5c8e32d70', 'https://i.ytimg.com/vi/HXkh7EOqcQ4/maxresdefault.jpg'),
(31, 'Càng Níu Giữ Càng Dễ Mất ', 'Nhạc Trẻ', 'Mr Siro', 'http://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/c9ce5f658c21657f3c30/5337160813560919543?authen=exp=1543580622~acl=/c9ce5f658c21657f3c30/*~hmac=ea875b30bb4378b116906e8d0720d6bd', 'https://photo-resize-zmp3.zadn.vn/w240h240_jpeg/cover/9/9/7/2/997250daaebfe5c1a8f29a5fce90248a.jpg'),
(32, 'Chấp Nhận ', 'Nhạc Trẻ', 'Hòa Minzy', 'http://vnso-zn-16-tf-mp3-s1-zmp3.zadn.vn/50459f2a516eb830e17f/2783001447540673884?authen=exp=1543580812~acl=/50459f2a516eb830e17f/*~hmac=4ca9704a00d4d447a96c94faa2106314', 'https://photo-zmp3.zadn.vn/thumb_video/2/8/f/e/28feec0a7bf7bd78d9cc5640348a01b6.jpg'),
(33, 'Người Lạ Thoáng Qua ', 'Nhạc Trẻ', 'Khởi My', 'http://vnso-zn-5-tf-mp3-s1-zmp3.zadn.vn/e3cd26c7eb8302dd5b92/2425880662979204580?authen=exp=1543581167~acl=/e3cd26c7eb8302dd5b92/*~hmac=99a71ac69245d95a9d4a04db02a41bf7', 'https://photo-resize-zmp3.zadn.vn/w240h240_jpeg/cover/4/1/8/b/418b2a3ada550ed8a42f363194a12f45.jpg'),
(34, 'Chuyện Tình Tôi ', 'Nhạc Trẻ', 'Kay Trần , Nguyễn Khoa , Kass', 'http://vnso-zn-15-tf-mp3-s1-zmp3.zadn.vn/ac4bcaa619e2f0bca9f3/6620213065282821073?authen=exp=1543581263~acl=/ac4bcaa619e2f0bca9f3/*~hmac=71337ac8aea29099f6ecc743e356d50a', 'https://znews-photo.zadn.vn/w660/Uploaded/unvjuas/2018_10_08/41446579_1803590609695497_3359679661251493888_o.jpg'),
(35, 'Tận Cùng Nỗi Nhớ', 'Nhạc Trẻ', 'Will', 'http://vnso-zn-11-tf-mp3-s1-zmp3.zadn.vn/62c3859d54d9bd87e4c8/4404518969407359479?authen=exp=1543581562~acl=/62c3859d54d9bd87e4c8/*~hmac=75bd65ba31e408db18a662a56621342b', 'http://125.212.211.135/~csn/data/cover/94/93633.jpg'),
(36, 'Duyên Mình Lỡ', 'Nhạc Trẻ ', 'Hương Tràm ', 'http://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/3e371032c07629287067/5540280615121244869?authen=exp=1543581697~acl=/3e371032c07629287067/*~hmac=45e552601e2e272d7b411bcc510fc674 ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4HwheTlYTJZcRL3DXP38GQSZDMpKvkvUymlQHmYzoJpU1s6Xz'),
(39, 'Còn Là Gì Của Nhau ', 'Nhạc Trẻ', 'Châu Khải Phong', 'http://vnno-vn-5-tf-mp3-s1-zmp3.zadn.vn/2da7e8f125b5cceb95a4/997641970321168155?authen=exp=1543583166~acl=/2da7e8f125b5cceb95a4/*~hmac=c9fffe551fff2a90ea2fa3d80e6735e0', 'http://125.212.211.135/~csn/data/cover/97/96352.jpg'),
(40, 'Đừng Nói Tôi Điên ', 'nhạc Trẻ', 'Hiền Hồ', 'http://vnso-zn-15-tf-mp3-s1-zmp3.zadn.vn/e4d8425d8e1967473e08/2628900439154204525?authen=exp=1543583292~acl=/e4d8425d8e1967473e08/*~hmac=48ce59b9bcbf81fc0d23e51ab43a7a49', 'https://i.ytimg.com/vi/XfjtLGPnbTA/maxresdefault.jpg'),
(37, 'Về ', 'Nhạc Trẻ', 'Đạt G , DuUyen , BeeBB', 'http://vnso-zn-6-tf-mp3-s1-zmp3.zadn.vn/f3501734df70362e6f61/3040860486284093484?authen=exp=1543582176~acl=/f3501734df70362e6f61/*~hmac=c0d550f948fedd5d267cb5af8b7f1c64', 'https://photo-zmp3.zadn.vn/thumb_video/7/9/4/0/7940583e74a8dc6206f520266d136ca1.jpg'),
(38, 'Buồn Không Em ', 'Nhạc Trẻ', 'Đạt G', 'http://vnso-zn-10-tf-mp3-s1-zmp3.zadn.vn/2c562f3cfe7817264e69/4641493115280488275?authen=exp=1543582459~acl=/2c562f3cfe7817264e69/*~hmac=3ed385d141e208ce2e8e3b4b6801cc59', 'https://zmp3-photo-fbcrawler.zadn.vn/cover/3/0/1/c/301ce668e0144c874754359e3db405cb.jpg');

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
(1, 'Admin', 'thanhquang', '2018-11-06', 'Nguyễn Thanh', 'Quang', '1998-10-03', '01659852365', 'Nam', 'Thường'),
(698, 'vohoang', 'hoangthien', '2018-11-21', 'Võ Hoàng', 'Thiện', '1998-10-30', '01638063248', 'Nam', 'Thường'),
(693, 'Admin4', 'sdsada', '2018-11-20', 'Quang', 'Thanh', '1999-11-22', '01638063226', 'Nam', 'Thường'),
(695, 'ThanhTH', 'thanhquang', '2018-11-21', 'Thanh', 'Quang', '2010-02-02', '01657015050', 'Nam', 'Thường'),
(697, 'HanhTien', 'thanhquang', '2018-11-21', 'Nguyen Thanh', 'Quang', '1999-02-10', '01657015051', 'Nam', 'Thường');

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
  MODIFY `idBH` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=699;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
