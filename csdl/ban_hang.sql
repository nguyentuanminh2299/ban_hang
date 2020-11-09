-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2020 at 09:59 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ban_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `hinh`) VALUES
(1, 'banner_dep.png');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_hoa_don`
--

CREATE TABLE `chi_tiet_hoa_don` (
  `id_hoadon` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `thanh_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `html` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `html`) VALUES
(1, '<p>lkqwjdqlasdqweqwkwjdlkqwqe</p>'),
(2, 'wqewqe12');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL,
  `ten_nguoi_mua` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `hang_duoc_mua` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `ngay_mua` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ten_nguoi_mua`, `email`, `dia_chi`, `dien_thoai`, `noi_dung`, `hang_duoc_mua`, `ngay_mua`) VALUES
(5, 'khoi', 'minh1231999pro@gmail.com', 'qweqwe1', '0821379821', 'qwewq', '43[|||]1[|||||]', '0000-00-00'),
(6, 'khoi', 'khoi@gmail.com', 'hung yen', '0821379821', '', '12[|||]1[|||||]', '09/11/2020'),
(7, 'minhminh', 'kqlwjelkwqe', 'kajsdkq', '109304810', 'wqeqwe', '6[|||]1[|||||]40[|||]1[|||||]35[|||]1[|||||]32[|||]1[|||||]', '09/11/2020'),
(8, 'khoi', 'khoi@gmail.com', 'hung yen', '09210938', 'kjwqhekjwq\r\nsadwqe\r\nqwewqfdaqg', '10[|||]1[|||||]12[|||]1[|||||]', '09/11/2020');

-- --------------------------------------------------------

--
-- Table structure for table `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai_san_pham`
--

INSERT INTO `loai_san_pham` (`id`, `ten`) VALUES
(1, 'iPhone'),
(2, 'Samsung'),
(3, 'Oppo'),
(4, 'Xiaomi'),
(5, 'Vivo'),
(6, 'Realme'),
(7, 'OnePlus'),
(8, 'Vsmart');

-- --------------------------------------------------------

--
-- Table structure for table `menu_ngang`
--

CREATE TABLE `menu_ngang` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `loai_menu` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`, `noi_dung`, `loai_menu`) VALUES
(1, 'Giới thiệu', '<p>Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /> Nội dung phần giới thiệu <br /><br /></p>', ''),
(2, 'Sản phẩm', '', 'san_pham'),
(3, 'Hướng dẫn mua hàng', 'Nội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>\r\nNội dung hướng dẫn mua hàng <br><br>', ''),
(4, 'Cách mua hàng', 'Nội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>\r\nNội dung cách mua hàng <br><br>', ''),
(5, 'Liên hệ', 'Nội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>\r\nNội dung liên hệ<br><br>', '');

-- --------------------------------------------------------

--
-- Table structure for table `quang_cao`
--

CREATE TABLE `quang_cao` (
  `id` int(11) NOT NULL,
  `vi_tri` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `html` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quang_cao`
--

INSERT INTO `quang_cao` (`id`, `vi_tri`, `html`) VALUES
(4, 'phai', '<p><a href=\"https://www.thuatnguyencorp.com/blog/dich-vu-thiet-ke-hinh-anh-chay-quang-cao-facebook\"><img style=\"display: block; margin-left: auto; margin-right: auto; width: 100%;\" src=\"/ban_hang/hinh_anh/qc/qc_fb1.png\" alt=\"\" /></a></p>\r\n<p style=\"text-align: center;\"><a href=\"#\"><img src=\"/ban_hang/hinh_anh/tinymce/qc_p_2.png\" alt=\"\" /></a></p>\r\n<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/ban_hang/hinh_anh/tinymce/qc_p_3.png\" alt=\"\" /></a></p>'),
(5, 'trai', '<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/ban_hang/hinh_anh/tinymce/qc_t_1.png\" alt=\"\" /></a></p>\r\n<p><a href=\"#\"><img src=\"/ban_hang/hinh_anh/tinymce/qc_t_2.png\" alt=\"\" /></a></p>\r\n<p><a href=\"#\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/ban_hang/hinh_anh/tinymce/qc_t_3.png\" alt=\"\" /></a></p>');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `hinh_anh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `loai_sp` int(11) NOT NULL,
  `noi_bat` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `trang_chu` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `gia`, `hinh_anh`, `noi_dung`, `loai_sp`, `noi_bat`, `trang_chu`, `sap_xep_trang_chu`) VALUES
(1, 'iPhone 12 Pro Max 512GB', 43990000, 'ip12pro_max_512gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.7\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, 'co', 'co', 0),
(2, 'iPhone 12 Pro 512GB', 40990000, 'ip12pro_512gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.1\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, '', '', 7),
(3, 'iPhone 11 Pro Max 512GB', 38990000, 'ip11pro_max_512gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.5\", Super Retina XDR</p>\r\n<p>Chip: Apple A13 Bionic 6 nh&acirc;n</p>\r\n<p>RAM: 4 GB, Bộ nhớ trong: 512 GB</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>\r\n<p>Pin: 3969 mAh, c&oacute; sạc nhanh</p>', 1, '', 'co', 0),
(4, 'iPhone 12 Pro Max 256GB', 37990000, 'ip12pro_max_256gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.7\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, '', '', 3),
(5, 'iPhone 11 Pro Max 256GB', 34990000, 'ip11pro_max_256gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.5\", Super Retina XDR</p>\r\n<p>Chip: Apple A13 Bionic 6 nh&acirc;n</p>\r\n<p>RAM: 4 GB, Bộ nhớ trong: 256 GB</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>\r\n<p>Pin: 3969 mAh, c&oacute; sạc nhanh</p>', 1, '', '', 0),
(6, 'iPhone 7 32GB', 8990000, 'ip7_32gb.jpg', '<p>M&agrave;n h&igrave;nh: 4.7\", Retina HD</p>\r\n<p>Chip: Apple A10 Fusion 4 nh&acirc;n</p>\r\n<p>RAM: 2 GB, Bộ nhớ trong: 32 GB</p>\r\n<p>Camera sau: 12 MP</p>\r\n<p>Camera trước: 7 MP</p>\r\n<p>Pin: 1960 mAh</p>', 1, '', 'co', 0),
(7, 'iPhone 7 128GB', 9990000, 'ip7_128gb.jpg', '<p>M&agrave;n h&igrave;nh: 4.7\", Retina HD</p>\r\n<p>Chip: Apple A10 Fusion 4 nh&acirc;n</p>\r\n<p>RAM: 2 GB, Bộ nhớ trong: 128 GB</p>\r\n<p>Camera sau: 12 MP</p>\r\n<p>Camera trước: 7 MP</p>\r\n<p>Pin: 1960 mAh</p>', 1, '', 'co', 2),
(8, 'iPhone 7 Plus 32GB', 10990000, 'ip7_plus_32gb.jpg', '<p>M&agrave;n h&igrave;nh: 5.5\", Retina HD</p>\r\n<p>Chip: Apple A10 Fusion 4 nh&acirc;n</p>\r\n<p>RAM: 3 GB, Bộ nhớ trong: 32 GB</p>\r\n<p>Camera sau: 2 camera 12 MP</p>\r\n<p>Camera trước: 7 MP</p>\r\n<p>Pin: 2900 mAh</p>', 1, '', '', 0),
(9, 'iPhone SE 64GB (2020)', 12990000, 'ipse_64gb(2020).jpg', 'Màn hình: 4.7\"\r\nChip: Apple A13 Bionic 6 nhân\r\nRAM: 3 GB, Bộ nhớ trong: 64 GB\r\nCamera sau: 12 MP\r\nCamera trước: 7 MP\r\nPin: 1821 mAh, có sạc nhanh', 1, '', '', 0),
(10, 'iPhone Xr 64GB (Hộp mới)', 14490000, 'ipxr_64gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.1\", Liquid Retina</p>\r\n<p>Chip: Apple A12 Bionic 6 nh&acirc;n</p>\r\n<p>RAM: 3 GB, Bộ nhớ trong: 64 GB</p>\r\n<p>Camera sau: 12 MP</p>\r\n<p>Camera trước: 7 MP</p>\r\n<p>Pin: 2942 mAh, c&oacute; sạc nhanh</p>', 1, '', 'co', 7),
(11, 'iPhone SE 128GB (2020)', 14990000, 'ipse_128gb(2020).jpg', 'Màn hình: 4.7\"\r\nChip: Apple A13 Bionic 6 nhân\r\nRAM: 3 GB, Bộ nhớ trong: 128 GB\r\nCamera sau: 12 MP\r\nCamera trước: 7 MP\r\nPin: 1821 mAh, có sạc nhanh', 1, '', 'co', 0),
(12, 'iPhone 8 Plus 128GB', 14990000, 'ip8_plus_128gb.jpg', '<p>M&agrave;n h&igrave;nh: 5.5\", Retina HD</p>\r\n<p>Chip: Apple A11 Bionic 6 nh&acirc;n</p>\r\n<p>RAM: 3 GB, Bộ nhớ trong: 128 GB</p>\r\n<p>Camera sau: 2 camera 12 MP</p>\r\n<p>Camera trước: 7 MP</p>\r\n<p>Pin: 2691 mAh, c&oacute; sạc nhanh</p>', 1, '', 'co', 13),
(13, 'iPhone Xs 64GB', 17990000, 'ipxs_64gb.jpg', 'Màn hình: 5.8\", Super Retina\r\nChip: Apple A12 Bionic 6 nhân\r\nRAM: 4 GB, Bộ nhớ trong: 64 GB\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 7 MP\r\nPin: 2658 mAh, có sạc nhanh', 1, '', '', 0),
(14, 'iPhone SE 256GB (2020)', 17990000, 'ipse_256gb(2020).jpg', '<p>M&agrave;n h&igrave;nh: 4.7\"</p>\r\n<p>Chip: Apple A13 Bionic 6 nh&acirc;n</p>\r\n<p>RAM: 3 GB, Bộ nhớ trong: 256 GB</p>\r\n<p>Camera sau: 12 MP</p>\r\n<p>Camera trước: 7 MP</p>\r\n<p>Pin: 1821 mAh, c&oacute; sạc nhanh</p>', 1, '', 'co', 11),
(15, 'iPhone 11 64GB', 19990000, 'ip11_64gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.1\", Liquid Retina</p>\r\n<p>Chip: Apple A13 Bionic 6 nh&acirc;n</p>\r\n<p>RAM: 4 GB, Bộ nhớ trong: 64 GB</p>\r\n<p>Camera sau: 2 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>\r\n<p>Pin: 3110 mAh, c&oacute; sạc nhanh</p>', 1, '', 'co', 0),
(16, 'iPhone 11 128GB', 21990000, 'ip11_128gb.jpg', 'Màn hình: 6.1\", Liquid Retina\r\nChip: Apple A13 Bionic 6 nhân\r\nRAM: 4 GB, Bộ nhớ trong: 128 GB\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 12 MP\r\nPin: 3110 mAh, có sạc nhanh', 1, 'co', '', 5),
(17, 'iPhone 12 Mini 64GB', 21990000, 'ip12_mini_64gb.jpg', 'Màn hình: 5.4\", Super Retina XDR\r\nChip: Apple A14 Bionic 6 nhân\r\nCamera sau: 2 camera 12 MP\r\nCamera trước: 12 MP', 1, '', '', 0),
(18, 'iPhone 11 256GB', 23990000, 'ip11_256gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.1\", Liquid Retina</p>\r\n<p>Chip: Apple A13 Bionic 6 nh&acirc;n</p>\r\n<p>RAM: 4 GB, Bộ nhớ trong: 256 GB</p>\r\n<p>Camera sau: 2 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>\r\n<p>Pin: 3110 mAh, c&oacute; sạc nhanh</p>', 1, '', 'co', 1),
(19, 'iPhone 12 Mini 128GB', 23990000, 'ip12_mini_128gb.jpg', '<p>M&agrave;n h&igrave;nh: 5.4\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 2 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, '', '', 0),
(20, 'iPhone 12 64GB', 24990000, 'ip12_64gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.1\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 2 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, '', '', 0),
(21, 'iPhone 12 Mini 256GB', 25990000, 'ip12_mini_256gb.jpg', '<p>M&agrave;n h&igrave;nh: 5.4\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 2 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, '', '', 0),
(22, 'iPhone 12 128GB', 26990000, 'ip12_128gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.1\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 2 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, '', 'co', 8),
(23, 'iPhone 11 Pro 64GB', 27990000, 'ip11pro_64gb.jpg', '<p>M&agrave;n h&igrave;nh: 5.8\", Super Retina XDR</p>\r\n<p>Chip: Apple A13 Bionic 6 nh&acirc;n</p>\r\n<p>RAM: 4 GB, Bộ nhớ trong: 64 GB</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>\r\n<p>Pin: 3046 mAh, c&oacute; sạc nhanh</p>', 1, '', '', 6),
(24, 'iPhone 12 256GB', 28990000, 'ip12_256gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.1\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 2 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, '', '', 0),
(25, 'iPhone 11 Pro Max 64GB', 30990000, 'ip11pro_max_64gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.5\", Super Retina XDR</p>\r\n<p>Chip: Apple A13 Bionic 6 nh&acirc;n</p>\r\n<p>RAM: 4 GB, Bộ nhớ trong: 64 GB</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>\r\n<p>Pin: 3969 mAh, c&oacute; sạc nhanh</p>', 1, '', '', 9),
(26, 'iPhone 12 Pro 128GB', 30990000, 'ip12pro_128gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.1\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, '', 'co', 12),
(27, 'iPhone 11 Pro 256GB', 31990000, 'ip11pro_256gb.jpg', '<p>M&agrave;n h&igrave;nh: 5.8\", Super Retina XDR</p>\r\n<p>Chip: Apple A13 Bionic 6 nh&acirc;n</p>\r\n<p>RAM: 4 GB, Bộ nhớ trong: 256 GB</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>\r\n<p>Pin: 3046 mAh, c&oacute; sạc nhanh</p>', 1, '', '', 0),
(28, 'iPhone 12 Pro Max 128GB', 33990000, 'ip12pro_max_128gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.7\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, '', '', 8),
(29, 'iPhone 12 Pro 256GB', 34990000, 'ip12pro_256gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.1\", Super Retina XDR</p>\r\n<p>Chip: Apple A14 Bionic 6 nh&acirc;n</p>\r\n<p>Camera sau: 3 camera 12 MP</p>\r\n<p>Camera trước: 12 MP</p>', 1, '', '', 0),
(30, 'Samsung Galaxy A70', 9290000, 'ssgalaxy_a70.jpg', '<p>M&agrave;n h&igrave;nh: 6.7\", Full HD+</p>\r\n<p>Chip: Snapdragon 675 8 nh&acirc;n</p>\r\n<p>RAM: 6 GB, Bộ nhớ trong: 128 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 32 MP &amp; Phụ 8 MP, 5 MP</p>\r\n<p>Camera trước: 32 MP</p>\r\n<p>Pin: 4500 mAh, c&oacute; sạc nhanh</p>', 2, '', '', 7),
(31, 'Samsung Galaxy A21s', 5290000, 'ssgalaxy_a21s.jpg', '<p>M&agrave;n h&igrave;nh: 6.5\", HD+</p>\r\n<p>Chip: Exynos 850 8 nh&acirc;n</p>\r\n<p>RAM: 6 GB, Bộ nhớ trong: 64 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 8 MP, 2 MP, 2 MP</p>\r\n<p>Camera trước: 13 MP</p>\r\n<p>Pin: 5000 mAh, c&oacute; sạc nhanh</p>', 2, '', 'co', 9),
(32, 'Vivo X50', 11990000, 'vivo_x50.jpg', '<p>M&agrave;n h&igrave;nh: 6.56\", Full HD+</p>\r\n<p>Chip: Snapdragon 730 8 nh&acirc;n</p>\r\n<p>RAM: 8 GB, Bộ nhớ trong: 128 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 13 MP, 8 MP, 5 MP</p>\r\n<p>Camera trước: 32 MP</p>\r\n<p>Pin: 4200 mAh, c&oacute; sạc nhanh</p>', 5, '', '', 12),
(33, 'OnePlus 8T 5G', 17490000, 'oneplus_8t_5g.jpg', '<p>M&agrave;n h&igrave;nh: 6.55\", Full HD+</p>\r\n<p>Chip: Snapdragon 865 8 nh&acirc;n</p>\r\n<p>RAM: 12 GB, Bộ nhớ trong: 256 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 16 MP, 5 MP, 2 MP</p>\r\n<p>Camera trước: 16 MP</p>\r\n<p>Pin: 4500 mAh, c&oacute; sạc nhanh</p>', 7, '', '', 1),
(34, 'Oppo Reno4', 8490000, 'oppo_reno4.jpg', '<p>M&agrave;n h&igrave;nh: 6.4\", Full HD+</p>\r\n<p>Chip: Snapdragon 720G 8 nh&acirc;n RAM: 8 GB, Bộ nhớ trong: 128 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 8 MP, 2 MP, 2 MP</p>\r\n<p>Camera trước: Ch&iacute;nh 32 MP &amp; Phụ cảm biến th&ocirc;ng minh A.I</p>\r\n<p>Pin: 4015 mAh, c&oacute; sạc nhanh</p>', 3, '', '', 11),
(35, 'Samsung Galaxy M51', 8490000, 'ssgalaxy_m51.jpg', '<p>M&agrave;n h&igrave;nh: 6.7\", Full HD+</p>\r\n<p>Chip: Snapdragon 730 8 nh&acirc;n</p>\r\n<p>RAM: 8 GB, Bộ nhớ trong: 128 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 64 MP &amp; Phụ 12 MP, 5 MP, 5 MP</p>\r\n<p>Camera trước: 32 MP</p>\r\n<p>Pin: 7000 mAh, c&oacute; sạc nhanh</p>', 2, '', '', 0),
(36, 'Realme 7 Pro', 8990000, 'realme_7_pro.jpg', '<p>M&agrave;n h&igrave;nh: 6.44\", Full HD+</p>\r\n<p>Chip: Snapdragon 720G 8 nh&acirc;n</p>\r\n<p>RAM: 8 GB, Bộ nhớ trong: 128 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 64 MP &amp; Phụ 8 MP, 2 MP, 2 MP</p>\r\n<p>Camera trước: 32 MP</p>\r\n<p>Pin: 4500 mAh, c&oacute; sạc nhanh</p>', 6, '', '', 16),
(37, 'Xiaomi Redmi 9', 3990000, 'xiaomi_redmi_9.jpg', '<p>M&agrave;n h&igrave;nh: 6.53\", Full HD+</p>\r\n<p>Chip: MediaTek Helio G80 8 nh&acirc;n</p>\r\n<p>RAM: 4 GB, Bộ nhớ trong: 64 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 13 MP &amp; Phụ 8 MP, 5 MP, 2 MP</p>\r\n<p>Camera trước: 8 MP</p>\r\n<p>Pin: 5020 mAh, c&oacute; sạc nhanh</p>', 4, '', '', 15),
(38, 'Vsmart Live 4', 4790000, 'vsmart_live_4.jpg', '<p>M&agrave;n h&igrave;nh: 6.5\", Full HD+</p>\r\n<p>Chip: Snapdragon 675 8 nh&acirc;n</p>\r\n<p>RAM: 6 GB, Bộ nhớ trong: 64 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 8 MP, 5 MP, 2 MP</p>\r\n<p>Camera trước: 13 MP</p>\r\n<p>Pin: 5000 mAh, c&oacute; sạc nhanh</p>', 8, '', '', 0),
(39, 'Oppo Find X2', 19990000, 'oppo_find_x2.jpg', '<p>M&agrave;n h&igrave;nh: 6.78\", Quad HD+ (2K+)</p>\r\n<p>Chip: Snapdragon 865 8 nh&acirc;n</p>\r\n<p>RAM: 12 GB, Bộ nhớ trong: 256 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 13 MP, 12 MP</p>\r\n<p>Camera trước: 32 MP</p>\r\n<p>Pin: 4200 mAh, c&oacute; sạc nhanh</p>', 3, 'co', '', 0),
(40, 'Xiaomi Redmi Note 9S', 5990000, 'xiaomi_redmi_note9s.jpg', '<p>M&agrave;n h&igrave;nh: 6.67\", Full HD+</p>\r\n<p>Chip: Snapdragon 720G 8 nh&acirc;n</p>\r\n<p>RAM: 6 GB, Bộ nhớ trong: 128 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 8 MP, 5 MP, 2 MP</p>\r\n<p>Camera trước: 16 MP</p>\r\n<p>Pin: 5020 mAh, c&oacute; sạc nhanh</p>', 4, '', 'co', 2),
(41, 'Oppo A92', 6490000, 'oppo_a92.jpg', '<p>M&agrave;n h&igrave;nh: 6.5\", Full HD+</p>\r\n<p>Chip: Snapdragon 665 8 nh&acirc;n</p>\r\n<p>RAM: 8 GB, Bộ nhớ trong: 128 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 48 MP &amp; Phụ 8 MP, 2 MP, 2 MP</p>\r\n<p>Camera trước: 16 MP Pin: 5000 mAh, c&oacute; sạc nhanh</p>', 3, '', 'co', 17),
(42, 'Samsung Galaxy S20 FE', 15990000, 'ssgalaxy_s20_fe.jpg', '<p>M&agrave;n h&igrave;nh: 6.5\", Full HD+</p>\r\n<p>Chip: Exynos 990 8 nh&acirc;n</p>\r\n<p>RAM: 8 GB, Bộ nhớ trong: 128 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 12 MP &amp; Phụ 12 MP, 8 MP</p>\r\n<p>Camera trước: 32 MP</p>\r\n<p>Pin: 4500 mAh, c&oacute; sạc nhanh</p>', 2, '', 'co', 18),
(43, 'Vsmart Bee 3', 1590000, 'vsmart_bee_3.jpg', '<p>M&agrave;n h&igrave;nh: 6.0\", HD+</p>\r\n<p>Chip: MediaTek MT6739WW 4 nh&acirc;n</p>\r\n<p>RAM: 2 GB, Bộ nhớ trong: 16 GB</p>\r\n<p>Camera sau: 8 MP</p>\r\n<p>Camera trước: 5 MP</p>\r\n<p>Pin: 3000 mAh</p>', 8, '', '', 19),
(44, 'Vsmart Star 3', 1990000, 'vsmart_star_3.jpg', '<p>M&agrave;n h&igrave;nh: 6.09\", HD+</p>\r\n<p>Chip: Snapdragon 215 4 nh&acirc;n</p>\r\n<p>RAM: 2 GB, Bộ nhớ trong: 16 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 8 MP &amp; Phụ 5 MP</p>\r\n<p>Camera trước: 8 MP</p>\r\n<p>Pin: 3500 mAh</p>', 8, '', '', 20),
(45, 'Vsmart Star 4 (2GB/16GB)', 2050000, 'vsmart_star_4_16gb.jpg', '<p>M&agrave;n h&igrave;nh: 6.09\", HD+</p>\r\n<p>Chip: MediaTek Helio P35 8 nh&acirc;n</p>\r\n<p>RAM: 2 GB, Bộ nhớ trong: 16 GB</p>\r\n<p>Camera sau: Ch&iacute;nh 8 MP &amp; Phụ 5 MP</p>\r\n<p>Camera trước: 8 MP</p>\r\n<p>Pin: 3500 mAh</p>', 8, '', '', 21);

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `hinh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `hinh`, `lien_ket`) VALUES
(1, 'QC_GalaxyM51.png', 'http://localhost:8080/ban_hang/index.php?thamso=chi_tiet_san_pham&id=35'),
(2, 'QC_ip12.png', 'http://localhost:8080/ban_hang/index.php?thamso=chi_tiet_san_pham&id=26'),
(3, 'QC_oppo_reno4.png', 'http://localhost:8080/ban_hang/index.php?thamso=chi_tiet_san_pham&id=34\r\n'),
(4, 'QC_Redmi_note9.png', 'http://localhost:8080/ban_hang/index.php?thamso=chi_tiet_san_pham&id=40');

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_quan_tri`
--

CREATE TABLE `thong_tin_quan_tri` (
  `id` int(11) NOT NULL,
  `ky_danh` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(256) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thong_tin_quan_tri`
--

INSERT INTO `thong_tin_quan_tri` (`id`, `ky_danh`, `mat_khau`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_ngang`
--
ALTER TABLE `menu_ngang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quang_cao`
--
ALTER TABLE `quang_cao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `FK_loaiSP` (`loai_sp`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thong_tin_quan_tri`
--
ALTER TABLE `thong_tin_quan_tri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `loai_san_pham`
--
ALTER TABLE `loai_san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu_ngang`
--
ALTER TABLE `menu_ngang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `quang_cao`
--
ALTER TABLE `quang_cao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `thong_tin_quan_tri`
--
ALTER TABLE `thong_tin_quan_tri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `FK_loaiSP` FOREIGN KEY (`loai_sp`) REFERENCES `loai_san_pham` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
