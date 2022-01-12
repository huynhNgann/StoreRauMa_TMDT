-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th1 09, 2022 lúc 08:24 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `raumamix`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 1, 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 230, 3780, '[]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'QFJFOhBrWO41q9Fa1MRtftwTiYkSTulcETAzjIEMhCRC5PC8OZD1oXcStjaRHjOtDnr9NhjXUELNYY2sOGRn9FSiqsQOnXWYJf8DPu6wVj5ZQdUqwrk7iplRiC8KChrJHqPrYzajehDrHh8ogkknp03NRZEjCT8deNj2UUn6sCiKJ1vbUuZqRMIBTQPzZj0RrmyOA6H4zLzCi4MKwsyyTBeHBk0JEh7TrTMblR2x8COQHk450x8XgpALwis1Fi8A', 1, '2021-11-27 04:01:19', '2021-11-27 04:01:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '::1'),
(2, 1, '::1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(8, 1, 'faa6762217f587cedbd3c3fe2a', '::1', '2022-01-09 08:51:46', '2022-01-09 08:51:46'),
(12, 1, 'f379128c4356dbc3e01dabf602', '::1', '2022-01-09 19:20:20', '2022-01-09 19:20:20'),
(11, 1, '8f4705398765e0f60f711de191', '::1', '2022-01-09 19:09:16', '2022-01-09 19:09:16'),
(10, 1, '28768ef01bbb6aff29e5b81de9', '::1', '2022-01-09 08:55:25', '2022-01-09 08:55:25'),
(9, 1, '97ea09c78c809069d051a48e38', '::1', '2022-01-09 08:52:45', '2022-01-09 08:52:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed'),
(1, 2, 'Description'),
(2, 2, 'No. of Cores'),
(4, 2, 'test 1'),
(5, 2, 'test 2'),
(6, 2, 'test 3'),
(7, 2, 'test 4'),
(8, 2, 'test 5'),
(9, 2, 'test 6'),
(10, 2, 'test 7'),
(11, 2, 'test 8'),
(3, 2, 'Clockspeed');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor'),
(3, 2, 'Memory'),
(4, 2, 'Technical'),
(5, 2, 'Motherboard'),
(6, 2, 'Processor');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(197, 7, 2, 'Banner4', '', 'catalog/RauMaMix/Suong-sao-hat-chia.jpg', 4),
(171, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/RauMaMix/Thach-nha-dam.jpg', 0),
(162, 8, 2, 'NFL', '', 'catalog/RauMaMix/hinh101.jpg', 0),
(160, 8, 2, 'Sony', '', 'catalog/RauMaMix/hinh121.jpg', 0),
(161, 8, 2, 'RedBull', '', 'catalog/RauMaMix/hinh100.jpg', 0),
(159, 8, 2, 'Coca Cola', '', 'catalog/RauMaMix/hinh112.jpg', 0),
(158, 8, 2, 'Burger King', '', 'catalog/RauMaMix/hinh111.jpg', 0),
(157, 8, 2, 'Canon', '', 'catalog/RauMaMix/hinh103.jpg', 0),
(156, 8, 2, 'Harley Davidson', '', 'catalog/RauMaMix/banh-trang-mix-pho-mai93 - Copy.jpg', 0),
(194, 7, 2, 'Banner1', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/RauMaMix/Rau-ma-mix-Macchiato.jpg', 1),
(155, 8, 2, 'Dell', '', 'catalog/RauMaMix/Tran-chau-la-dua.jpg', 0),
(193, 7, 1, 'Banner4', '', 'catalog/RauMaMix/Tran-chau-la-dua.jpg', 4),
(172, 6, 2, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/RauMaMix/Thach-nha-dam.jpg', 0),
(154, 8, 2, 'Disney', '', 'catalog/RauMaMix/Rau-ma-mix-Macchiato.jpg', 0),
(153, 8, 1, 'NFL', '', 'catalog/RauMaMix/banh-trang-mix-kho-bo92.jpg', 0),
(152, 8, 1, 'RedBull', '', 'catalog/RauMaMix/Rau-ma-mix-Macchiato.jpg', 0),
(151, 8, 1, 'Sony', '', 'catalog/RauMaMix/combo-2-71.jpg', 0),
(150, 8, 1, 'Coca Cola', '', 'catalog/RauMaMix/combo-83.jpg', 0),
(149, 8, 1, 'Burger King', '', 'catalog/RauMaMix/hinh112.jpg', 0),
(148, 8, 1, 'Canon', '', 'catalog/RauMaMix/hinh101.jpg', 0),
(147, 8, 1, 'Harley Davidson', '', 'catalog/RauMaMix/hinh102.jpg', 0),
(196, 7, 2, 'Banner3', '', 'catalog/RauMaMix/BANNER-3-1024x512.jpg', 3),
(146, 8, 1, 'Dell', '', 'catalog/RauMaMix/hinh100.jpg', 0),
(145, 8, 1, 'Disney', '', 'catalog/RauMaMix/hinh103.jpg', 0),
(195, 7, 2, 'Banner2', '', 'catalog/RauMaMix/BANNER-2-1024x512.jpg', 2),
(163, 8, 2, 'Starbucks', '', 'catalog/RauMaMix/hinh102.jpg', 0),
(144, 8, 1, 'Starbucks', '', 'catalog/RauMaMix/hinh111.jpg', 0),
(143, 8, 1, 'Nintendo', '', 'catalog/RauMaMix/hinh112.jpg', 0),
(164, 8, 2, 'Nintendo', '', 'catalog/RauMaMix/combo-83.jpg', 0),
(173, 6, 2, 'Thạch Lá Dứa', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=3', 'catalog/RauMaMix/Thach-la-dua.jpg', 1),
(192, 7, 1, 'Banner3', '', 'catalog/RauMaMix/BANNER-3-1024x512.jpg', 3),
(191, 7, 1, 'Banner2', '', 'catalog/RauMaMix/BANNER-2-1024x512.jpg', 2),
(190, 7, 1, 'Banner1', '', 'catalog/RauMaMix/Thach-cu-nang.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'catalog/RauMaMix/logo-rmdx.png', 0, 0, 1, 2, 1, '2009-01-31 01:04:25', '2021-12-10 13:12:05'),
(20, 'catalog/RauMaMix/logo-rmdx.png', 0, 0, 1, 1, 1, '2009-01-05 21:49:43', '2021-12-10 13:10:42'),
(18, 'catalog/RauMaMix/banh-trang-mix-kho-bo92.jpg', 0, 0, 1, 2, 1, '2009-01-05 21:49:15', '2021-12-10 13:09:51'),
(63, '', 0, 1, 1, 1, 1, '2021-12-04 00:50:45', '2021-12-10 13:13:33'),
(62, 'catalog/RauMaMix/logo-rmdx.png', 0, 1, 1, 4, 1, '2021-12-04 00:50:05', '2021-12-10 13:11:12'),
(59, 'catalog/RauMaMix/logo-rmdx.png', 0, 1, 1, 4, 1, '2021-12-04 00:47:06', '2021-12-10 12:31:46'),
(33, 'catalog/RauMaMix/logo-rmdx.png', 0, 0, 1, 1, 1, '2009-02-03 14:17:55', '2021-12-04 00:51:42'),
(61, 'catalog/RauMaMix/logo-rmdx.png', 0, 1, 1, 3, 1, '2021-12-04 00:49:16', '2021-12-10 13:13:09'),
(64, '', 0, 0, 1, 0, 1, '2022-01-08 19:46:03', '2022-01-08 19:46:03'),
(60, 'catalog/RauMaMix/logo-rmdx.png', 0, 1, 1, 2, 1, '2021-12-04 00:48:23', '2021-12-10 13:11:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(62, 1, 'STORES', '', 'stores', 'stores', 'stores'),
(62, 2, 'CỬA HÀNG', '', 'cửa hàng', '', ''),
(63, 1, 'HOME', '&lt;p&gt;home&lt;br&gt;&lt;/p&gt;', 'home', 'home', 'home'),
(25, 1, 'TOPPING', '&lt;p&gt;TOPPING&lt;br&gt;&lt;/p&gt;', 'TOPPING', 'TOPPING', 'TOPPING'),
(20, 1, 'COMBO RAU MÁ MIX', '&lt;p&gt;\r\n	COMBO RAU MÁ MIX&lt;/p&gt;\r\n', 'COMBO RAU MÁ MIX', 'COMBO RAU MÁ MIX', 'COMBO RAU MÁ MIX'),
(20, 2, 'COMBO RAU MÁ MIX', '&lt;p&gt;\r\n	COMBO RAU MÁ MIX&lt;/p&gt;\r\n', 'combo rau ma mix', 'COMBO RAU MÁ MIX', 'COMBO RAU MÁ MIX'),
(18, 1, 'BÁNH TRÁNG MIX', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'bánh tráng mix', 'bánh tráng mix', 'bánh tráng mix'),
(18, 2, 'BÁNH TRÁNG MIX', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'bánh tráng mix', 'bánh tráng mix', 'bánh tráng mix'),
(33, 2, 'MENU-RAU MÁ MIX', '', 'Menu-rau ma mix', '', ''),
(59, 2, 'BLOG', '', 'blog', '', ''),
(59, 1, 'BLOG', '', 'blog', '', ''),
(61, 1, 'IMAGES', '&lt;p&gt;THƯ VIỆN ẢNH&lt;br&gt;&lt;/p&gt;', 'THƯ VIỆN ẢNH', 'THƯ VIỆN ẢNH', 'THƯ VIỆN ẢNH'),
(60, 1, 'MENU', '&lt;p&gt;menu&lt;br&gt;&lt;/p&gt;', 'menu', 'menu', 'menu'),
(60, 2, 'MENU', '&lt;p&gt;menu&lt;br&gt;&lt;/p&gt;', 'menu', 'menu', 'menu'),
(64, 2, 'NƯỚC GIẢI KHÁT', '&lt;p&gt;NƯỚC GIẢI KHÁT&lt;br&gt;&lt;/p&gt;', 'NƯỚC GIẢI KHÁT', '', ''),
(25, 2, 'TOPPING', '&lt;p&gt;TOPPING&lt;br&gt;&lt;/p&gt;', 'Topping', 'TOPPING', 'TOPPING'),
(61, 2, 'THƯ VIỆN ẢNH', '&lt;p&gt;THƯ VIỆN ẢNH&lt;br&gt;&lt;/p&gt;', 'thư viện ảnh', 'THƯ VIỆN ẢNH', 'THƯ VIỆN ẢNH'),
(63, 2, 'TRANG CHỦ', '&lt;p&gt;TRANG CHỦ&lt;br&gt;&lt;/p&gt;', 'trang chủ', 'TRANG CHỦ', 'TRANG CHỦ'),
(64, 1, 'NƯỚC GIẢI KHÁT', '&lt;p&gt;NƯỚC GIẢI KHÁT&lt;br&gt;&lt;/p&gt;', 'NƯỚC GIẢI KHÁT', '', ''),
(33, 1, 'Cameras', '', 'Cameras', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(64, 64, 0),
(63, 63, 0),
(62, 62, 0),
(61, 61, 0),
(60, 60, 0),
(59, 59, 0),
(20, 20, 0),
(18, 18, 0),
(33, 33, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(33, 0, 0),
(25, 0, 0),
(20, 0, 0),
(18, 0, 1),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(18, 0),
(20, 0),
(25, 0),
(33, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 1, 1, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 1, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 1, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2021-12-04 00:33:12'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00'),
(4, 'đ VNĐ', 'VNĐ', '', 'đồng', '.', 1.00000000, 1, '2022-01-09 19:18:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(1, 1, 0, 2, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '8073c932d00e61c904a600253d82f81ae22bce81', 'Yc1zN0hg6', NULL, NULL, 1, 1, '[]', '::1', 1, 0, '', '', '2021-12-10 12:06:51'),
(2, 1, 0, 2, 'Ngân', 'Huỳnh ', 'huynhthihongngancna@gmail.com', '0372058164', '', 'c219bb360ea50f10ce9eb82a217f926202b200b3', 'ywbrwF7ec', NULL, NULL, 1, 0, '[]', '::1', 1, 0, '', '', '2022-01-09 08:58:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`customer_activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'register', '{\"customer_id\":1,\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\"}', '::1', '2021-12-10 12:06:52'),
(2, 1, 'login', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\"}', '::1', '2021-12-10 12:08:02'),
(3, 1, 'address_add', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\"}', '::1', '2021-12-10 14:32:51'),
(4, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"order_id\":1}', '::1', '2021-12-10 14:33:03'),
(5, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"order_id\":2}', '::1', '2021-12-10 14:33:20'),
(6, 1, 'login', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\"}', '::1', '2021-12-11 00:02:11'),
(7, 1, 'login', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\"}', '::1', '2021-12-11 00:17:42'),
(8, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"order_id\":3}', '::1', '2021-12-11 00:18:16'),
(9, 1, 'login', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\"}', '::1', '2021-12-11 00:46:47'),
(10, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"order_id\":4}', '::1', '2021-12-11 00:46:56'),
(11, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"order_id\":5}', '::1', '2021-12-11 01:15:38'),
(12, 1, 'login', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\"}', '::1', '2021-12-18 03:56:12'),
(13, 1, 'login', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\"}', '::1', '2022-01-08 19:36:25'),
(14, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"order_id\":6}', '::1', '2022-01-08 19:36:39'),
(15, 2, 'register', '{\"customer_id\":2,\"name\":\"Ng\\u00e2n Huy\\u0300nh \"}', '::1', '2022-01-09 08:58:52'),
(16, 0, 'order_guest', '{\"name\":\"Ng\\u00e2n Huy\\u0300nh\",\"order_id\":7}', '::1', '2022-01-09 09:13:46'),
(17, 1, 'login', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\"}', '::1', '2022-01-09 19:03:59'),
(18, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"order_id\":8}', '::1', '2022-01-09 19:04:16'),
(19, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"order_id\":9}', '::1', '2022-01-09 19:08:54'),
(20, 1, 'password', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\"}', '::1', '2022-01-09 19:19:45'),
(21, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"order_id\":10}', '::1', '2022-01-09 19:20:05'),
(22, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"Ng\\u00e2n Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"order_id\":11}', '::1', '2022-01-09 19:22:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_approval`
--

INSERT INTO `oc_customer_approval` (`customer_approval_id`, `customer_id`, `type`, `date_added`) VALUES
(1, 1, 'customer', '2021-12-10 12:06:51'),
(2, 2, 'customer', '2022-01-09 08:58:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 1, 1),
(2, 1, 0),
(3, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 2, 'Khách hàng cá nhân', 'test'),
(1, 1, 'Default', 'test'),
(2, 1, 'khách hàng doanh nghiệp', ''),
(2, 2, 'khách hàng doanh nghiệp', ''),
(3, 1, 'khách hàng mới', ''),
(3, 2, 'khách hàng mới', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2021-12-10 12:08:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(7, 'huynhthihongngancna@gmail.com', '::1', 5, '2022-01-09 19:00:51', '2022-01-09 19:01:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('::1', 1, 'http://localhost:8080/upload/index.php?route=common/home', 'http://localhost:8080/upload/index.php?route=checkout/success', '2022-01-09 19:23:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_search`
--

INSERT INTO `oc_customer_search` (`customer_search_id`, `store_id`, `language_id`, `customer_id`, `keyword`, `category_id`, `sub_category`, `description`, `products`, `ip`, `date_added`) VALUES
(1, 0, 2, 1, 'rmmx-banhtrangmix', 0, 0, 0, 0, '::1', '2021-12-10 12:59:55'),
(2, 0, 2, 1, 'rmmx-banhtrangmix', 0, 0, 0, 0, '::1', '2021-12-10 12:59:59'),
(3, 0, 2, 1, 'bánh tráng mix', 0, 0, 0, 0, '::1', '2021-12-10 13:00:09'),
(4, 0, 2, 1, 'bánh tráng mix', 0, 0, 0, 0, '::1', '2021-12-10 13:03:30'),
(5, 0, 2, 0, 'bánh', 0, 0, 0, 1, '::1', '2022-01-09 07:16:26'),
(6, 0, 2, 1, 'rau má', 0, 0, 0, 0, '::1', '2022-01-09 19:20:31'),
(7, 0, 2, 1, 'rau má', 64, 0, 0, 0, '::1', '2022-01-09 19:20:36'),
(8, 0, 2, 1, 'rau má', 64, 0, 0, 0, '::1', '2022-01-09 19:20:40'),
(9, 0, 2, 1, 'rau má', 20, 0, 0, 0, '::1', '2022-01-09 19:20:47'),
(10, 0, 2, 1, 'rau má', 60, 0, 0, 0, '::1', '2022-01-09 19:20:53'),
(11, 0, 2, 1, 'Sương sáo hạt chia', 25, 0, 0, 0, '::1', '2022-01-09 19:21:05'),
(12, 0, 2, 1, 'Sương sáo hạt chia', 25, 0, 0, 0, '::1', '2022-01-09 19:21:10'),
(13, 0, 2, 1, 'Sương sáo hạt chia', 25, 0, 0, 0, '::1', '2022-01-09 19:21:14'),
(14, 0, 2, 1, 'Sting', 64, 0, 0, 1, '::1', '2022-01-09 19:21:24'),
(15, 0, 2, 1, 'rau má sửa dừa', 64, 0, 0, 0, '::1', '2022-01-09 19:21:37'),
(16, 0, 2, 1, 'rau má sửa dừa', 0, 0, 0, 0, '::1', '2022-01-09 19:21:44'),
(17, 0, 2, 1, 'Bánh Tráng Mix Khô Bò', 0, 0, 0, 1, '::1', '2022-01-09 19:22:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(1, 42, '2021-12-10 12:25:24'),
(1, 55, '2021-12-10 14:32:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturnHistory/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0),
(46, 'module_facebook_business', 'admin/view/common/dashboard/after', 'extension/module/facebook_business/eventPostViewCommonDashboard', 1, 0),
(47, 'module_facebook_business', 'admin/view/common/column_left/before', 'extension/module/facebook_business/eventPreViewCommonColumnLeft', 1, 0),
(48, 'module_facebook_business', 'admin/view/catalog/product_form/before', 'extension/module/facebook_business/eventPreViewCatalogProductForm', 1, 0),
(49, 'module_facebook_business', 'admin/view/catalog/product_form/after', 'extension/module/facebook_business/eventPostViewCatalogProductForm', 1, 0),
(50, 'module_facebook_business', 'admin/model/catalog/product/addProduct/after', 'extension/module/facebook_business/eventPostModelAddProduct', 1, 0),
(51, 'module_facebook_business', 'admin/model/catalog/product/editProduct/after', 'extension/module/facebook_business/eventPostModelEditProduct', 1, 0),
(52, 'module_facebook_business', 'admin/model/catalog/product/copyProduct/after', 'extension/module/facebook_business/eventPostModelCopyProduct', 1, 0),
(53, 'module_facebook_business', 'admin/model/catalog/product/deleteProduct/after', 'extension/module/facebook_business/eventPostModelDeleteProduct', 1, 0),
(54, 'module_facebook_business', 'catalog/view/common/header/before', 'extension/module/facebook_business/eventPreViewCommonHeader', 1, 0),
(55, 'module_facebook_business', 'catalog/view/common/header/after', 'extension/module/facebook_business/eventPostViewCommonHeader', 1, 0),
(56, 'module_facebook_business', 'catalog/controller/checkout/success/before', 'extension/module/facebook_business/eventPreControllerCheckoutSuccess', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'module', 'facebook_business');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, '2021-fullwidthtopbottom.ocmod.zip', '2021-12-09 16:59:01'),
(2, 0, 'FacebookBusinessExtension-OC3.ocmod.zip', '2021-12-18 03:46:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 1, 'catalog/controller/extension/module/content_full.php', '2021-12-09 16:59:02'),
(2, 1, 'catalog/controller/extension/module/content_full_bottom.php', '2021-12-09 16:59:02'),
(3, 1, 'catalog/view/theme/default/template/extension/module/content_full.twig', '2021-12-09 16:59:02'),
(4, 1, 'catalog/view/theme/default/template/extension/module/content_full_bottom.twig', '2021-12-09 16:59:02'),
(5, 2, 'system/library/vendor', '2021-12-18 03:46:30'),
(6, 2, 'admin/view/image/facebook_business', '2021-12-18 03:46:30'),
(7, 2, 'catalog/view/javascript/facebook_business', '2021-12-18 03:46:30'),
(8, 2, 'catalog/view/theme/css', '2021-12-18 03:46:30'),
(9, 2, 'system/library/vendor/facebook_business', '2021-12-18 03:46:30'),
(10, 2, 'admin/controller/extension/module/facebook_business.php', '2021-12-18 03:46:30'),
(11, 2, 'admin/model/extension/module/facebook_business.php', '2021-12-18 03:46:30'),
(12, 2, 'admin/view/image/facebook_business/f_logo.png', '2021-12-18 03:46:30'),
(13, 2, 'catalog/controller/extension/module/facebook_business.php', '2021-12-18 03:46:30'),
(14, 2, 'catalog/model/extension/module/facebook_business.php', '2021-12-18 03:46:30'),
(15, 2, 'catalog/view/javascript/facebook_business/cookieconsent.min.js', '2021-12-18 03:46:30'),
(16, 2, 'catalog/view/javascript/facebook_business/facebook_pixel_3_1_2.js', '2021-12-18 03:46:30'),
(17, 2, 'catalog/view/theme/css/facebook_business', '2021-12-18 03:46:30'),
(18, 2, 'system/library/vendor/facebook_business/CHANGELOG.md', '2021-12-18 03:46:30'),
(19, 2, 'system/library/vendor/facebook_business/CODE_OF_CONDUCT.md', '2021-12-18 03:46:30'),
(20, 2, 'system/library/vendor/facebook_business/CONTRIBUTING.md', '2021-12-18 03:46:30'),
(21, 2, 'system/library/vendor/facebook_business/DEVELOPER_GUIDE.md', '2021-12-18 03:46:30'),
(22, 2, 'system/library/vendor/facebook_business/LICENSE', '2021-12-18 03:46:30'),
(23, 2, 'system/library/vendor/facebook_business/README.md', '2021-12-18 03:46:30'),
(24, 2, 'system/library/vendor/facebook_business/bin', '2021-12-18 03:46:30'),
(25, 2, 'system/library/vendor/facebook_business/composer.json', '2021-12-18 03:46:30'),
(26, 2, 'system/library/vendor/facebook_business/composer.lock', '2021-12-18 03:46:30'),
(27, 2, 'system/library/vendor/facebook_business/examples', '2021-12-18 03:46:30'),
(28, 2, 'system/library/vendor/facebook_business/fb_ca_chain_bundle.crt', '2021-12-18 03:46:30'),
(29, 2, 'system/library/vendor/facebook_business/src', '2021-12-18 03:46:30'),
(30, 2, 'system/library/vendor/facebook_business/test', '2021-12-18 03:46:30'),
(31, 2, 'system/library/vendor/facebook_business/vendor', '2021-12-18 03:46:30'),
(32, 2, 'admin/language/en-gb/extension/module/facebook_business.php', '2021-12-18 03:46:30'),
(33, 2, 'admin/view/template/extension/module/facebook_business.twig', '2021-12-18 03:46:30'),
(34, 2, 'admin/view/template/extension/module/facebook_business_product.twig', '2021-12-18 03:46:30'),
(35, 2, 'catalog/view/theme/css/facebook_business/cookieconsent.min.css', '2021-12-18 03:46:30'),
(36, 2, 'system/library/vendor/facebook_business/bin/clean_account.php', '2021-12-18 03:46:30'),
(37, 2, 'system/library/vendor/facebook_business/bin/create_phar.php', '2021-12-18 03:46:30'),
(38, 2, 'system/library/vendor/facebook_business/bin/docsmith.php', '2021-12-18 03:46:30'),
(39, 2, 'system/library/vendor/facebook_business/bin/get_version.php', '2021-12-18 03:46:30'),
(40, 2, 'system/library/vendor/facebook_business/examples/AdAccountActivityNode.php', '2021-12-18 03:46:30'),
(41, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesEdge.php', '2021-12-18 03:46:30'),
(42, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost.php', '2021-12-18 03:46:30'),
(43, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost2CreateAdCreativeLinkAd.php', '2021-12-18 03:46:30'),
(44, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost2CreateLinkAdCallToActionAppInstall.php', '2021-12-18 03:46:30'),
(45, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost2CreateLinkAdImageCrop.php', '2021-12-18 03:46:30'),
(46, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost2CreateMAIDPA.php', '2021-12-18 03:46:30'),
(47, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost2CreateVideoLeadAd.php', '2021-12-18 03:46:30'),
(48, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost2CreateVideoPageLikeAd.php', '2021-12-18 03:46:30'),
(49, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost3CreateAdCreativePageLike.php', '2021-12-18 03:46:30'),
(50, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost3CreateAssetFeedSpec.php', '2021-12-18 03:46:30'),
(51, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost3CreateCarouselCallToActionAppInstall.php', '2021-12-18 03:46:30'),
(52, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPost3CreateDynamicAdCustomization.php', '2021-12-18 03:46:30'),
(53, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPostCreateAdCreative.php', '2021-12-18 03:46:30'),
(54, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPostCreateAdCreativeCanvas.php', '2021-12-18 03:46:30'),
(55, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPostCreateAdCreativeCustomizationCanvasDV.php', '2021-12-18 03:46:30'),
(56, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPostCreateAdCreativeCustomizationCanvasImage.php', '2021-12-18 03:46:30'),
(57, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdCreativesPostCreateAdCreativeCustomizationCanvasVideo.php', '2021-12-18 03:46:30'),
(58, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPost2CreateMAIA.php', '2021-12-18 03:46:30'),
(59, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostAdSetCreateCpa.php', '2021-12-18 03:46:30'),
(60, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostAdSetCreateCpaAppEvents.php', '2021-12-18 03:46:30'),
(61, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostBehaviorTargeting.php', '2021-12-18 03:46:30'),
(62, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostBidMultiplier.php', '2021-12-18 03:46:30'),
(63, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostCreateAdSet.php', '2021-12-18 03:46:30'),
(64, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostCreateAudienceNetwork.php', '2021-12-18 03:46:30'),
(65, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostDailyBudget20.php', '2021-12-18 03:46:30'),
(66, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostDemographicTargeting.php', '2021-12-18 03:46:30'),
(67, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostInterestTargeting.php', '2021-12-18 03:46:30'),
(68, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostLifetimeBudget200Duration10Days.php', '2021-12-18 03:46:30'),
(69, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostOfferClaim.php', '2021-12-18 03:46:30'),
(70, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostOptimizePostEngagement.php', '2021-12-18 03:46:30'),
(71, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostPageLikes.php', '2021-12-18 03:46:30'),
(72, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostPlacementTargeting.php', '2021-12-18 03:46:30'),
(73, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdSetsPostReach.php', '2021-12-18 03:46:30'),
(74, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdVideosPost.php', '2021-12-18 03:46:30'),
(75, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdsPixelEdgeGetPixelCode.php', '2021-12-18 03:46:30'),
(76, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdsPixelsPost.php', '2021-12-18 03:46:30'),
(77, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdsPost.php', '2021-12-18 03:46:30'),
(78, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdsPostAdsRedownload.php', '2021-12-18 03:46:30'),
(79, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdsPostOfferClaim.php', '2021-12-18 03:46:30'),
(80, 2, 'system/library/vendor/facebook_business/examples/AdAccountAdsPostTrackingPostEngagement.php', '2021-12-18 03:46:30'),
(81, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsEdge.php', '2021-12-18 03:46:30'),
(82, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostConversions.php', '2021-12-18 03:46:30'),
(83, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostEventResponses.php', '2021-12-18 03:46:30'),
(84, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostLeadGen.php', '2021-12-18 03:46:30'),
(85, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostLinkClicks.php', '2021-12-18 03:46:30'),
(86, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostLocalAwareness.php', '2021-12-18 03:46:30'),
(87, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostMAIA.php', '2021-12-18 03:46:30'),
(88, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostMAIDPA.php', '2021-12-18 03:46:30'),
(89, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostOfferClaims.php', '2021-12-18 03:46:30'),
(90, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostPageLikes.php', '2021-12-18 03:46:30'),
(91, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostPostEngagement.php', '2021-12-18 03:46:30'),
(92, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostStoreCampaign.php', '2021-12-18 03:46:30'),
(93, 2, 'system/library/vendor/facebook_business/examples/AdAccountCampaignsPostVideoViews.php', '2021-12-18 03:46:30'),
(94, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesEdge.php', '2021-12-18 03:46:30'),
(95, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesEdgeDataSourceSubtype.php', '2021-12-18 03:46:30'),
(96, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostCreateCustomAudience.php', '2021-12-18 03:46:30'),
(97, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostDynamicEventValueBasedLookalikeCustomAudience.php', '2021-12-18 03:46:30'),
(98, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostDynamicValueBasedLookalikeCustomAudience.php', '2021-12-18 03:46:30'),
(99, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostPlatformCustomAudienceMACARule.php', '2021-12-18 03:46:30'),
(100, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostPlatformECAExclusions.php', '2021-12-18 03:46:30'),
(101, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostPlatformECAMultiFilters.php', '2021-12-18 03:46:31'),
(102, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostPlatformECAMultiPages.php', '2021-12-18 03:46:31'),
(103, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostPlatformEngagementCustomAudience.php', '2021-12-18 03:46:31'),
(104, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostPlatformWebsiteCustomAudience.php', '2021-12-18 03:46:31'),
(105, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostValueBasedCustomAudience.php', '2021-12-18 03:46:31'),
(106, 2, 'system/library/vendor/facebook_business/examples/AdAccountCustomAudiencesPostValueBasedLookalikeCustomAudience.php', '2021-12-18 03:46:31'),
(107, 2, 'system/library/vendor/facebook_business/examples/AdAccountGeneratePreviewsEdge.php', '2021-12-18 03:46:31'),
(108, 2, 'system/library/vendor/facebook_business/examples/AdAccountGeneratePreviewsEdgeDesktopWithStoryId.php', '2021-12-18 03:46:31'),
(109, 2, 'system/library/vendor/facebook_business/examples/AdAccountGeneratePreviewsEdgeInstagramStandards.php', '2021-12-18 03:46:31'),
(110, 2, 'system/library/vendor/facebook_business/examples/AdAccountGeneratePreviewsEdgeMaiaWithObjectStorySpec.php', '2021-12-18 03:46:31'),
(111, 2, 'system/library/vendor/facebook_business/examples/AdAccountNode.php', '2021-12-18 03:46:31'),
(112, 2, 'system/library/vendor/facebook_business/examples/AdAccountProductAudiencesPostIphoneViewNoPurchase.php', '2021-12-18 03:46:31'),
(113, 2, 'system/library/vendor/facebook_business/examples/AdAccountProductAudiencesPostNoPurchase.php', '2021-12-18 03:46:31'),
(114, 2, 'system/library/vendor/facebook_business/examples/AdAccountReachEstimate.php', '2021-12-18 03:46:31'),
(115, 2, 'system/library/vendor/facebook_business/examples/AdCampaignActivityNode.php', '2021-12-18 03:46:31'),
(116, 2, 'system/library/vendor/facebook_business/examples/AdCampaignGroupActivityNode.php', '2021-12-18 03:46:31'),
(117, 2, 'system/library/vendor/facebook_business/examples/AdCampaignGroupAdsEdge.php', '2021-12-18 03:46:31'),
(118, 2, 'system/library/vendor/facebook_business/examples/AdCampaignGroupAdsEdgeAdgroupsWithStatusArchived.php', '2021-12-18 03:46:31'),
(119, 2, 'system/library/vendor/facebook_business/examples/AdCampaignGroupAdsetsEdge.php', '2021-12-18 03:46:31'),
(120, 2, 'system/library/vendor/facebook_business/examples/AdCampaignNode.php', '2021-12-18 03:46:31'),
(121, 2, 'system/library/vendor/facebook_business/examples/AdCampaignPost.php', '2021-12-18 03:46:31'),
(122, 2, 'system/library/vendor/facebook_business/examples/AdCampaignPostAdsetUpdateCpa.php', '2021-12-18 03:46:31'),
(123, 2, 'system/library/vendor/facebook_business/examples/AdCreativeCreativeInsightsEdge.php', '2021-12-18 03:46:31'),
(124, 2, 'system/library/vendor/facebook_business/examples/AdCreativeNode.php', '2021-12-18 03:46:31'),
(125, 2, 'system/library/vendor/facebook_business/examples/AdCreativeNodeRead.php', '2021-12-18 03:46:31'),
(126, 2, 'system/library/vendor/facebook_business/examples/AdCreativeNodeReadInstagramPermalinkUrl.php', '2021-12-18 03:46:31'),
(127, 2, 'system/library/vendor/facebook_business/examples/AdCreativePreviewsEdge.php', '2021-12-18 03:46:31'),
(128, 2, 'system/library/vendor/facebook_business/examples/AdCreativePreviewsEdgePreview.php', '2021-12-18 03:46:31'),
(129, 2, 'system/library/vendor/facebook_business/examples/AdCreativePreviewsEdgePreviewDynamicAds.php', '2021-12-18 03:46:31'),
(130, 2, 'system/library/vendor/facebook_business/examples/AdCreativePreviewsEdgePreviewDynamicAdsWithCustomizations.php', '2021-12-18 03:46:31'),
(131, 2, 'system/library/vendor/facebook_business/examples/AdgroupActivityNode.php', '2021-12-18 03:46:31'),
(132, 2, 'system/library/vendor/facebook_business/examples/AdgroupLeadsEdgeAdgroupLeads.php', '2021-12-18 03:46:31'),
(133, 2, 'system/library/vendor/facebook_business/examples/AdgroupLeadsEdgeAdgroupLeadsDPA.php', '2021-12-18 03:46:31'),
(134, 2, 'system/library/vendor/facebook_business/examples/AdgroupLeadsEdgeAdgroupLeadsFiltered.php', '2021-12-18 03:46:31'),
(135, 2, 'system/library/vendor/facebook_business/examples/AdgroupPost.php', '2021-12-18 03:46:31'),
(136, 2, 'system/library/vendor/facebook_business/examples/AdgroupPostUpdateStatus.php', '2021-12-18 03:46:31'),
(137, 2, 'system/library/vendor/facebook_business/examples/AdsInsightsEdgeAdCampaignInsights.php', '2021-12-18 03:46:31'),
(138, 2, 'system/library/vendor/facebook_business/examples/AdsInsightsEdgeStoreVisitsAdCampaignInsights.php', '2021-12-18 03:46:31'),
(139, 2, 'system/library/vendor/facebook_business/examples/AdsPixelEventsPost.php', '2021-12-18 03:46:31'),
(140, 2, 'system/library/vendor/facebook_business/examples/AdsPixelEventsPostCustom.php', '2021-12-18 03:46:31'),
(141, 2, 'system/library/vendor/facebook_business/examples/AdsPixelSharedAccountsEdge.php', '2021-12-18 03:46:31'),
(142, 2, 'system/library/vendor/facebook_business/examples/AdsPixelSharedAccountsPost.php', '2021-12-18 03:46:31'),
(143, 2, 'system/library/vendor/facebook_business/examples/AdsPixelSharedAgenciesEdge.php', '2021-12-18 03:46:31'),
(144, 2, 'system/library/vendor/facebook_business/examples/BusinessOwnedProductCatalogsPostDestinationCatalog.php', '2021-12-18 03:46:31'),
(145, 2, 'system/library/vendor/facebook_business/examples/BusinessOwnedProductCatalogsPostFlightCatalog.php', '2021-12-18 03:46:31'),
(146, 2, 'system/library/vendor/facebook_business/examples/BusinessOwnedProductCatalogsPostHotelCatalog.php', '2021-12-18 03:46:31'),
(147, 2, 'system/library/vendor/facebook_business/examples/BusinessOwnedProductCatalogsPostProductCatalog.php', '2021-12-18 03:46:31'),
(148, 2, 'system/library/vendor/facebook_business/examples/CustomAudienceDelete.php', '2021-12-18 03:46:31'),
(149, 2, 'system/library/vendor/facebook_business/examples/CustomAudienceNode.php', '2021-12-18 03:46:31'),
(150, 2, 'system/library/vendor/facebook_business/examples/CustomAudienceNodeReadRule.php', '2021-12-18 03:46:31'),
(151, 2, 'system/library/vendor/facebook_business/examples/CustomAudiencePost.php', '2021-12-18 03:46:31'),
(152, 2, 'system/library/vendor/facebook_business/examples/CustomAudienceUsersPost.php', '2021-12-18 03:46:31'),
(153, 2, 'system/library/vendor/facebook_business/examples/CustomAudienceUsersPostCrossPlatform.php', '2021-12-18 03:46:31'),
(154, 2, 'system/library/vendor/facebook_business/examples/MultiPageFeedCreateThenDelete.php', '2021-12-18 03:46:31'),
(155, 2, 'system/library/vendor/facebook_business/examples/MultiPromoteYourPage.php', '2021-12-18 03:46:31'),
(156, 2, 'system/library/vendor/facebook_business/examples/OfflineConversionsCreateOfflineSet.php', '2021-12-18 03:46:31'),
(157, 2, 'system/library/vendor/facebook_business/examples/PageFeedEdge.php', '2021-12-18 03:46:31'),
(158, 2, 'system/library/vendor/facebook_business/examples/PageFeedPost.php', '2021-12-18 03:46:31'),
(159, 2, 'system/library/vendor/facebook_business/examples/PageFeedPostFeedImageDeepLink.php', '2021-12-18 03:46:31'),
(160, 2, 'system/library/vendor/facebook_business/examples/PageNode.php', '2021-12-18 03:46:31'),
(161, 2, 'system/library/vendor/facebook_business/examples/PageNodePageSearch.php', '2021-12-18 03:46:31'),
(162, 2, 'system/library/vendor/facebook_business/examples/PagePhotosEdge.php', '2021-12-18 03:46:31'),
(163, 2, 'system/library/vendor/facebook_business/examples/PagePhotosPost.php', '2021-12-18 03:46:31'),
(164, 2, 'system/library/vendor/facebook_business/examples/PagePictureEdge.php', '2021-12-18 03:46:31'),
(165, 2, 'system/library/vendor/facebook_business/examples/PagePostCommentsEdge.php', '2021-12-18 03:46:31'),
(166, 2, 'system/library/vendor/facebook_business/examples/PagePostCommentsPost.php', '2021-12-18 03:46:31'),
(167, 2, 'system/library/vendor/facebook_business/examples/PagePostDelete.php', '2021-12-18 03:46:31'),
(168, 2, 'system/library/vendor/facebook_business/examples/PagePostNode.php', '2021-12-18 03:46:31'),
(169, 2, 'system/library/vendor/facebook_business/examples/PagePostPost.php', '2021-12-18 03:46:31'),
(170, 2, 'system/library/vendor/facebook_business/examples/PagePostsEdge.php', '2021-12-18 03:46:31'),
(171, 2, 'system/library/vendor/facebook_business/examples/PagePostsEdgePagePostCreateCarousel.php', '2021-12-18 03:46:31'),
(172, 2, 'system/library/vendor/facebook_business/examples/PageRolesEdge.php', '2021-12-18 03:46:31'),
(173, 2, 'system/library/vendor/facebook_business/examples/PageSubscribedAppsPost.php', '2021-12-18 03:46:31'),
(174, 2, 'system/library/vendor/facebook_business/examples/ProductCatalogEventStatsEdge.php', '2021-12-18 03:46:31'),
(175, 2, 'system/library/vendor/facebook_business/examples/ProductCatalogHotelsPost.php', '2021-12-18 03:46:31'),
(176, 2, 'system/library/vendor/facebook_business/examples/ProductCatalogHotelsPostUpdateHotelsCatalogSettings.php', '2021-12-18 03:46:31'),
(177, 2, 'system/library/vendor/facebook_business/examples/ProductCatalogProductFeedsPostProductFeed.php', '2021-12-18 03:46:31'),
(178, 2, 'system/library/vendor/facebook_business/examples/ProductCatalogProductSetsPostHotelSet.php', '2021-12-18 03:46:31'),
(179, 2, 'system/library/vendor/facebook_business/examples/ProductCatalogProductSetsPostProductSet.php', '2021-12-18 03:46:31'),
(180, 2, 'system/library/vendor/facebook_business/examples/UserAccountsEdge.php', '2021-12-18 03:46:31'),
(181, 2, 'system/library/vendor/facebook_business/examples/UserAdAccountsEdge.php', '2021-12-18 03:46:31'),
(182, 2, 'system/library/vendor/facebook_business/examples/UserLeadGenInfoNode.php', '2021-12-18 03:46:31'),
(183, 2, 'system/library/vendor/facebook_business/examples/UserNode.php', '2021-12-18 03:46:31'),
(184, 2, 'system/library/vendor/facebook_business/examples/VideoThumbnailsEdge.php', '2021-12-18 03:46:31'),
(185, 2, 'system/library/vendor/facebook_business/examples/adgroup_creation.php', '2021-12-18 03:46:31'),
(186, 2, 'system/library/vendor/facebook_business/examples/aggregator_onboarding', '2021-12-18 03:46:31'),
(187, 2, 'system/library/vendor/facebook_business/examples/curl_log.php', '2021-12-18 03:46:31'),
(188, 2, 'system/library/vendor/facebook_business/examples/custom_audiences.php', '2021-12-18 03:46:31'),
(189, 2, 'system/library/vendor/facebook_business/examples/server_side_api.php', '2021-12-18 03:46:31'),
(190, 2, 'system/library/vendor/facebook_business/src/FacebookAds', '2021-12-18 03:46:31'),
(191, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest', '2021-12-18 03:46:31'),
(192, 2, 'system/library/vendor/facebook_business/test/config.php', '2021-12-18 03:46:31'),
(193, 2, 'system/library/vendor/facebook_business/test/init_integration.php', '2021-12-18 03:46:31'),
(194, 2, 'system/library/vendor/facebook_business/test/init_unit.php', '2021-12-18 03:46:31'),
(195, 2, 'system/library/vendor/facebook_business/test/misc', '2021-12-18 03:46:31'),
(196, 2, 'system/library/vendor/facebook_business/test/phpunit-travis.xml', '2021-12-18 03:46:31'),
(197, 2, 'system/library/vendor/facebook_business/test/phpunit.xml', '2021-12-18 03:46:31'),
(198, 2, 'system/library/vendor/facebook_business/vendor/autoload.php', '2021-12-18 03:46:31'),
(199, 2, 'system/library/vendor/facebook_business/vendor/composer', '2021-12-18 03:46:31'),
(200, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp', '2021-12-18 03:46:31'),
(201, 2, 'system/library/vendor/facebook_business/vendor/psr', '2021-12-18 03:46:31'),
(202, 2, 'system/library/vendor/facebook_business/vendor/ralouphie', '2021-12-18 03:46:31'),
(203, 2, 'system/library/vendor/facebook_business/examples/aggregator_onboarding/README.md', '2021-12-18 03:46:31'),
(204, 2, 'system/library/vendor/facebook_business/examples/aggregator_onboarding/api.php', '2021-12-18 03:46:31'),
(205, 2, 'system/library/vendor/facebook_business/examples/aggregator_onboarding/index.css', '2021-12-18 03:46:31'),
(206, 2, 'system/library/vendor/facebook_business/examples/aggregator_onboarding/index.html', '2021-12-18 03:46:31'),
(207, 2, 'system/library/vendor/facebook_business/src/FacebookAds/AnonymousSession.php', '2021-12-18 03:46:31'),
(208, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Api.php', '2021-12-18 03:46:31'),
(209, 2, 'system/library/vendor/facebook_business/src/FacebookAds/ApiConfig.php', '2021-12-18 03:46:31'),
(210, 2, 'system/library/vendor/facebook_business/src/FacebookAds/ApiRequest.php', '2021-12-18 03:46:31'),
(211, 2, 'system/library/vendor/facebook_business/src/FacebookAds/CrashReporter.php', '2021-12-18 03:46:31'),
(212, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Cursor.php', '2021-12-18 03:46:31'),
(213, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Enum', '2021-12-18 03:46:31'),
(214, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Exception', '2021-12-18 03:46:31'),
(215, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http', '2021-12-18 03:46:31'),
(216, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Logger', '2021-12-18 03:46:31'),
(217, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object', '2021-12-18 03:46:31'),
(218, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Session.php', '2021-12-18 03:46:31'),
(219, 2, 'system/library/vendor/facebook_business/src/FacebookAds/SessionInterface.php', '2021-12-18 03:46:31'),
(220, 2, 'system/library/vendor/facebook_business/src/FacebookAds/TypeChecker.php', '2021-12-18 03:46:31'),
(221, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/AbstractIntegrationTestCase.php', '2021-12-18 03:46:31'),
(222, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/AbstractTestCase.php', '2021-12-18 03:46:31'),
(223, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/AbstractUnitTestCase.php', '2021-12-18 03:46:31'),
(224, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/ApiTest.php', '2021-12-18 03:46:31'),
(225, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Bootstrap', '2021-12-18 03:46:31'),
(226, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Config', '2021-12-18 03:46:31'),
(227, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/CursorDegradationTest.php', '2021-12-18 03:46:31'),
(228, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/CursorTest.php', '2021-12-18 03:46:31'),
(229, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Enum', '2021-12-18 03:46:31'),
(230, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Exception', '2021-12-18 03:46:31'),
(231, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http', '2021-12-18 03:46:31'),
(232, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Logger', '2021-12-18 03:46:31'),
(233, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object', '2021-12-18 03:46:31'),
(234, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/SessionTest.php', '2021-12-18 03:46:31'),
(235, 2, 'system/library/vendor/facebook_business/test/misc/image.png', '2021-12-18 03:46:31'),
(236, 2, 'system/library/vendor/facebook_business/test/misc/images.zip', '2021-12-18 03:46:31'),
(237, 2, 'system/library/vendor/facebook_business/test/misc/video.mp4', '2021-12-18 03:46:31'),
(238, 2, 'system/library/vendor/facebook_business/vendor/composer/ClassLoader.php', '2021-12-18 03:46:31'),
(239, 2, 'system/library/vendor/facebook_business/vendor/composer/InstalledVersions.php', '2021-12-18 03:46:31'),
(240, 2, 'system/library/vendor/facebook_business/vendor/composer/LICENSE', '2021-12-18 03:46:31'),
(241, 2, 'system/library/vendor/facebook_business/vendor/composer/autoload_classmap.php', '2021-12-18 03:46:31'),
(242, 2, 'system/library/vendor/facebook_business/vendor/composer/autoload_files.php', '2021-12-18 03:46:31'),
(243, 2, 'system/library/vendor/facebook_business/vendor/composer/autoload_namespaces.php', '2021-12-18 03:46:31'),
(244, 2, 'system/library/vendor/facebook_business/vendor/composer/autoload_psr4.php', '2021-12-18 03:46:31'),
(245, 2, 'system/library/vendor/facebook_business/vendor/composer/autoload_real.php', '2021-12-18 03:46:31'),
(246, 2, 'system/library/vendor/facebook_business/vendor/composer/autoload_static.php', '2021-12-18 03:46:31'),
(247, 2, 'system/library/vendor/facebook_business/vendor/composer/installed.json', '2021-12-18 03:46:31'),
(248, 2, 'system/library/vendor/facebook_business/vendor/composer/installed.php', '2021-12-18 03:46:31'),
(249, 2, 'system/library/vendor/facebook_business/vendor/composer/platform_check.php', '2021-12-18 03:46:31'),
(250, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle', '2021-12-18 03:46:31'),
(251, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises', '2021-12-18 03:46:31'),
(252, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7', '2021-12-18 03:46:31'),
(253, 2, 'system/library/vendor/facebook_business/vendor/psr/http-client', '2021-12-18 03:46:31'),
(254, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message', '2021-12-18 03:46:31'),
(255, 2, 'system/library/vendor/facebook_business/vendor/ralouphie/getallheaders', '2021-12-18 03:46:31'),
(256, 2, 'catalog/view/theme/default/template/extension/module/facebook_business.twig', '2021-12-18 03:46:31'),
(257, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Enum/AbstractEnum.php', '2021-12-18 03:46:31'),
(258, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Enum/EmptyEnum.php', '2021-12-18 03:46:31'),
(259, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Enum/EnumInstanceInterface.php', '2021-12-18 03:46:31'),
(260, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Exception/Exception.php', '2021-12-18 03:46:31'),
(261, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Adapter', '2021-12-18 03:46:31'),
(262, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Client.php', '2021-12-18 03:46:31'),
(263, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Exception', '2021-12-18 03:46:31'),
(264, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/FileParameter.php', '2021-12-18 03:46:31'),
(265, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Headers.php', '2021-12-18 03:46:31'),
(266, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Parameters.php', '2021-12-18 03:46:31'),
(267, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Request.php', '2021-12-18 03:46:31'),
(268, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/RequestInterface.php', '2021-12-18 03:46:31'),
(269, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Response.php', '2021-12-18 03:46:31'),
(270, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/ResponseInterface.php', '2021-12-18 03:46:31'),
(271, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/SimpleRequest.php', '2021-12-18 03:46:31'),
(272, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Util.php', '2021-12-18 03:46:31'),
(273, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Logger/CurlLogger', '2021-12-18 03:46:31'),
(274, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Logger/CurlLogger.php', '2021-12-18 03:46:31'),
(275, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Logger/LoggerInterface.php', '2021-12-18 03:46:31'),
(276, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Logger/NullLogger.php', '2021-12-18 03:46:31'),
(277, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AbstractArchivableCrudObject.php', '2021-12-18 03:46:31'),
(278, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AbstractCrudObject.php', '2021-12-18 03:46:31'),
(279, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AbstractObject.php', '2021-12-18 03:46:31'),
(280, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Ad.php', '2021-12-18 03:46:31'),
(281, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccount.php', '2021-12-18 03:46:31'),
(282, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountActivity.php', '2021-12-18 03:46:31'),
(283, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountAdRulesHistory.php', '2021-12-18 03:46:31'),
(284, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountAdVolume.php', '2021-12-18 03:46:31'),
(285, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountContentFilterLevelsInheritance.php', '2021-12-18 03:46:31'),
(286, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountDefaultDestination.php', '2021-12-18 03:46:31'),
(287, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountDefaultObjective.php', '2021-12-18 03:46:31'),
(288, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountDeliveryEstimate.php', '2021-12-18 03:46:31'),
(289, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountMatchedSearchApplicationsEdgeData.php', '2021-12-18 03:46:31'),
(290, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountMaxBid.php', '2021-12-18 03:46:31'),
(291, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountPromotableObjects.php', '2021-12-18 03:46:31'),
(292, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountReachEstimate.php', '2021-12-18 03:46:31'),
(293, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountRecommendedCamapaignBudget.php', '2021-12-18 03:46:31'),
(294, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountSubscribedApps.php', '2021-12-18 03:46:31'),
(295, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountTargetingUnified.php', '2021-12-18 03:46:31'),
(296, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountTrackingData.php', '2021-12-18 03:46:31'),
(297, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAccountUser.php', '2021-12-18 03:46:31'),
(298, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdActivity.php', '2021-12-18 03:46:31'),
(299, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAssetFeedSpec.php', '2021-12-18 03:46:31'),
(300, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAssetFeedSpecAssetLabel.php', '2021-12-18 03:46:31'),
(301, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAssetFeedSpecBody.php', '2021-12-18 03:46:31'),
(302, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAssetFeedSpecCaption.php', '2021-12-18 03:46:31'),
(303, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAssetFeedSpecDescription.php', '2021-12-18 03:46:31'),
(304, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAssetFeedSpecGroupRule.php', '2021-12-18 03:46:31'),
(305, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAssetFeedSpecImage.php', '2021-12-18 03:46:31'),
(306, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAssetFeedSpecLinkURL.php', '2021-12-18 03:46:31'),
(307, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAssetFeedSpecTitle.php', '2021-12-18 03:46:31'),
(308, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAssetFeedSpecVideo.php', '2021-12-18 03:46:31'),
(309, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAsyncRequest.php', '2021-12-18 03:46:31'),
(310, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAsyncRequestSet.php', '2021-12-18 03:46:31'),
(311, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdAsyncRequestSetNotificationResult.php', '2021-12-18 03:46:31'),
(312, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdBidAdjustments.php', '2021-12-18 03:46:31'),
(313, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCampaignActivity.php', '2021-12-18 03:46:31'),
(314, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCampaignBidConstraint.php', '2021-12-18 03:46:31'),
(315, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCampaignDeliveryEstimate.php', '2021-12-18 03:46:31'),
(316, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCampaignDeliveryStatsUnsupportedReasons.php', '2021-12-18 03:46:31'),
(317, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCampaignFrequencyControlSpecs.php', '2021-12-18 03:46:31'),
(318, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCampaignGroupActivity.php', '2021-12-18 03:46:31'),
(319, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCampaignIssuesInfo.php', '2021-12-18 03:46:31'),
(320, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCampaignLearningStageInfo.php', '2021-12-18 03:46:31'),
(321, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCampaignOptimizationEvent.php', '2021-12-18 03:46:31'),
(322, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCampaignPacedBidInfo.php', '2021-12-18 03:46:31'),
(323, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreative.php', '2021-12-18 03:46:31'),
(324, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeAdDisclaimer.php', '2021-12-18 03:46:31'),
(325, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeCollectionThumbnailInfo.php', '2021-12-18 03:46:31'),
(326, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeInsights.php', '2021-12-18 03:46:31'),
(327, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeInteractiveComponentsSpec.php', '2021-12-18 03:46:31'),
(328, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeLinkData.php', '2021-12-18 03:46:31'),
(329, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeLinkDataAppLinkSpec.php', '2021-12-18 03:46:31'),
(330, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeLinkDataCallToAction.php', '2021-12-18 03:46:31'),
(331, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeLinkDataCallToActionValue.php', '2021-12-18 03:46:31'),
(332, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeLinkDataChildAttachment.php', '2021-12-18 03:46:31'),
(333, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeLinkDataImageLayerSpec.php', '2021-12-18 03:46:31'),
(334, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeLinkDataImageOverlaySpec.php', '2021-12-18 03:46:31'),
(335, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeLinkDataSponsorshipInfoSpec.php', '2021-12-18 03:46:31'),
(336, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeLinkDataTemplateVideoSpec.php', '2021-12-18 03:46:31'),
(337, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeObjectStorySpec.php', '2021-12-18 03:46:31'),
(338, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeOmnichannelLinkSpec.php', '2021-12-18 03:46:31'),
(339, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativePhotoData.php', '2021-12-18 03:46:31'),
(340, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativePhotoDataMediaElements.php', '2021-12-18 03:46:31'),
(341, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativePlaceData.php', '2021-12-18 03:46:31'),
(342, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativePlatformCustomization.php', '2021-12-18 03:46:31'),
(343, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativePortraitCustomizations.php', '2021-12-18 03:46:31'),
(344, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativePostClickConfiguration.php', '2021-12-18 03:46:31'),
(345, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeRecommenderSettings.php', '2021-12-18 03:46:31'),
(346, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeStaticFallbackSpec.php', '2021-12-18 03:46:31'),
(347, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeTemplateURLSpec.php', '2021-12-18 03:46:31'),
(348, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeTextData.php', '2021-12-18 03:46:31'),
(349, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCreativeVideoData.php', '2021-12-18 03:46:31'),
(350, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdCustomizationRuleSpec.php', '2021-12-18 03:46:31'),
(351, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdDynamicCreative.php', '2021-12-18 03:46:31'),
(352, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdEntityTargetSpend.php', '2021-12-18 03:46:31'),
(353, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdImage.php', '2021-12-18 03:46:31'),
(354, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdKeywords.php', '2021-12-18 03:46:31'),
(355, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdLabel.php', '2021-12-18 03:46:31'),
(356, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdMonetizationProperty.php', '2021-12-18 03:46:31'),
(357, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdNetworkAnalyticsAsyncQueryResult.php', '2021-12-18 03:46:31'),
(358, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdNetworkAnalyticsSyncQueryResult.php', '2021-12-18 03:46:31'),
(359, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdPlacePageSet.php', '2021-12-18 03:46:31'),
(360, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdPlacePageSetMetadata.php', '2021-12-18 03:46:31'),
(361, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdPlacement.php', '2021-12-18 03:46:31'),
(362, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdPreview.php', '2021-12-18 03:46:31'),
(363, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdPromotedObject.php', '2021-12-18 03:46:31'),
(364, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRecommendation.php', '2021-12-18 03:46:31'),
(365, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRecommendationData.php', '2021-12-18 03:46:31'),
(366, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdReportRun.php', '2021-12-18 03:46:31'),
(367, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdReportSpec.php', '2021-12-18 03:46:31'),
(368, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRule.php', '2021-12-18 03:46:31'),
(369, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRuleEvaluationSpec.php', '2021-12-18 03:46:31'),
(370, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRuleExecutionOptions.php', '2021-12-18 03:46:31'),
(371, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRuleExecutionSpec.php', '2021-12-18 03:46:31'),
(372, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRuleFilters.php', '2021-12-18 03:46:31'),
(373, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRuleHistory.php', '2021-12-18 03:46:31'),
(374, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRuleHistoryResult.php', '2021-12-18 03:46:31'),
(375, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRuleHistoryResultAction.php', '2021-12-18 03:46:31'),
(376, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRuleSchedule.php', '2021-12-18 03:46:31'),
(377, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRuleScheduleSpec.php', '2021-12-18 03:46:31'),
(378, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdRuleTrigger.php', '2021-12-18 03:46:31'),
(379, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdSet.php', '2021-12-18 03:46:31'),
(380, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdStudy.php', '2021-12-18 03:46:31'),
(381, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdStudyCell.php', '2021-12-18 03:46:31'),
(382, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdStudyObjective.php', '2021-12-18 03:46:31'),
(383, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdStudyObjectiveID.php', '2021-12-18 03:46:31'),
(384, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdVideo.php', '2021-12-18 03:46:31'),
(385, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdgroupActivity.php', '2021-12-18 03:46:31'),
(386, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdgroupIssuesInfo.php', '2021-12-18 03:46:31'),
(387, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdgroupPlacementSpecificReviewFeedback.php', '2021-12-18 03:46:31'),
(388, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdgroupRelevanceScore.php', '2021-12-18 03:46:31'),
(389, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdgroupReviewFeedback.php', '2021-12-18 03:46:31'),
(390, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdoptablePet.php', '2021-12-18 03:46:31'),
(391, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdsActionStats.php', '2021-12-18 03:46:31'),
(392, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdsImageCrops.php', '2021-12-18 03:46:31'),
(393, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdsInsights.php', '2021-12-18 03:46:31'),
(394, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdsOptimalDeliveryGrowthOpportunity.php', '2021-12-18 03:46:31'),
(395, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdsPixel.php', '2021-12-18 03:46:31'),
(396, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdsPixelStats.php', '2021-12-18 03:46:31'),
(397, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AdsPixelStatsResult.php', '2021-12-18 03:46:31'),
(398, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AgeRange.php', '2021-12-18 03:46:31'),
(399, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AgencyClientDeclaration.php', '2021-12-18 03:46:31'),
(400, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Album.php', '2021-12-18 03:46:31'),
(401, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AndroidAppLink.php', '2021-12-18 03:46:31'),
(402, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AppRequest.php', '2021-12-18 03:46:31'),
(403, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AppRequestFormerRecipient.php', '2021-12-18 03:46:31'),
(404, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Application.php', '2021-12-18 03:46:31'),
(405, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AssignedUser.php', '2021-12-18 03:46:31'),
(406, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AsyncRequest.php', '2021-12-18 03:46:31'),
(407, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AsyncSession.php', '2021-12-18 03:46:31'),
(408, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AtlasCampaign.php', '2021-12-18 03:46:31'),
(409, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AttributionSpec.php', '2021-12-18 03:46:31'),
(410, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AudienceInsightsStudySpec.php', '2021-12-18 03:46:31'),
(411, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AudiencePermissionForActions.php', '2021-12-18 03:46:31'),
(412, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AudioCopyright.php', '2021-12-18 03:46:31'),
(413, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/AutomotiveModel.php', '2021-12-18 03:46:31'),
(414, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BilledAmountDetails.php', '2021-12-18 03:46:31'),
(415, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BrandSafetyBlockListUsage.php', '2021-12-18 03:46:31'),
(416, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BroadTargetingCategories.php', '2021-12-18 03:46:31'),
(417, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Business.php', '2021-12-18 03:46:31'),
(418, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessAdAccountRequest.php', '2021-12-18 03:46:31'),
(419, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessAgreement.php', '2021-12-18 03:46:31'),
(420, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessApplicationRequest.php', '2021-12-18 03:46:31'),
(421, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessAssetGroup.php', '2021-12-18 03:46:31'),
(422, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessAssetSharingAgreement.php', '2021-12-18 03:46:31'),
(423, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessDataAPI', '2021-12-18 03:46:31'),
(424, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessOwnedObjectOnBehalfOfRequest.php', '2021-12-18 03:46:31'),
(425, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessPageRequest.php', '2021-12-18 03:46:31'),
(426, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessRoleRequest.php', '2021-12-18 03:46:31'),
(427, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessUnit.php', '2021-12-18 03:46:31'),
(428, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessUser.php', '2021-12-18 03:46:31'),
(429, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CPASAdvertiserPartnershipRecommendation.php', '2021-12-18 03:46:31'),
(430, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CPASCollaborationRequest.php', '2021-12-18 03:46:31'),
(431, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CPASParentCatalogSettings.php', '2021-12-18 03:46:31'),
(432, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Campaign.php', '2021-12-18 03:46:31'),
(433, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CampaignGroupBrandConfiguration.php', '2021-12-18 03:46:31'),
(434, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CampaignGroupCollaborativeAdsPartnerInfo.php', '2021-12-18 03:46:31');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(435, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CanRedownloadInterface.php', '2021-12-18 03:46:31'),
(436, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Canvas.php', '2021-12-18 03:46:31'),
(437, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CanvasAdSettings.php', '2021-12-18 03:46:31'),
(438, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CanvasBodyElement.php', '2021-12-18 03:46:31'),
(439, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CanvasCollectionThumbnail.php', '2021-12-18 03:46:31'),
(440, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CatalogBasedTargeting.php', '2021-12-18 03:46:31'),
(441, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CatalogItemAppLinks.php', '2021-12-18 03:46:31'),
(442, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CatalogItemAppealStatus.php', '2021-12-18 03:46:31'),
(443, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CatalogItemChannelsToIntegrityStatus.php', '2021-12-18 03:46:31'),
(444, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CatalogSubVerticalList.php', '2021-12-18 03:46:31'),
(445, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CheckBatchRequestStatus.php', '2021-12-18 03:46:31'),
(446, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ChildEvent.php', '2021-12-18 03:46:31'),
(447, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ClickTrackingTag.php', '2021-12-18 03:46:31'),
(448, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CollaborativeAdsPartnerInfoListItem.php', '2021-12-18 03:46:31'),
(449, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CollaborativeAdsShareSettings.php', '2021-12-18 03:46:31'),
(450, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Comment.php', '2021-12-18 03:46:31'),
(451, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CommerceMerchantSettings.php', '2021-12-18 03:46:31'),
(452, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CommerceMerchantSettingsSetupStatus.php', '2021-12-18 03:46:31'),
(453, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CommerceOrder.php', '2021-12-18 03:46:31'),
(454, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CommerceOrderTransactionDetail.php', '2021-12-18 03:46:31'),
(455, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CommercePayout.php', '2021-12-18 03:46:31'),
(456, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CommerceSettings.php', '2021-12-18 03:46:31'),
(457, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ConnectionsTargeting.php', '2021-12-18 03:46:31'),
(458, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ContentDeliveryReport.php', '2021-12-18 03:46:31'),
(459, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ContextualBundlingSpec.php', '2021-12-18 03:46:31'),
(460, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ConversionActionQuery.php', '2021-12-18 03:46:31'),
(461, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CopyrightReferenceContainer.php', '2021-12-18 03:46:31'),
(462, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CoverPhoto.php', '2021-12-18 03:46:31'),
(463, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CreativeHistory.php', '2021-12-18 03:46:31'),
(464, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CreditPartitionActionOptions.php', '2021-12-18 03:46:31'),
(465, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Currency.php', '2021-12-18 03:46:31'),
(466, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CurrencyAmount.php', '2021-12-18 03:46:31'),
(467, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudience.php', '2021-12-18 03:46:31'),
(468, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceAdAccount.php', '2021-12-18 03:46:31'),
(469, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceDataSource.php', '2021-12-18 03:46:31'),
(470, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceMultiKey.php', '2021-12-18 03:46:31'),
(471, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers', '2021-12-18 03:46:31'),
(472, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceSession.php', '2021-12-18 03:46:31'),
(473, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceSharingStatus.php', '2021-12-18 03:46:31'),
(474, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceStatus.php', '2021-12-18 03:46:31'),
(475, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudiencesTOS.php', '2021-12-18 03:46:31'),
(476, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudiencesharedAccountInfo.php', '2021-12-18 03:46:31'),
(477, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomConversion.php', '2021-12-18 03:46:31'),
(478, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomConversionStatsResult.php', '2021-12-18 03:46:31'),
(479, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomUserSettings.php', '2021-12-18 03:46:31'),
(480, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/DACheck.php', '2021-12-18 03:46:31'),
(481, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/DayPart.php', '2021-12-18 03:46:31'),
(482, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/DeliveryCheck.php', '2021-12-18 03:46:31'),
(483, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/DeliveryCheckExtraInfo.php', '2021-12-18 03:46:31'),
(484, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Destination.php', '2021-12-18 03:46:31'),
(485, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/DestinationCatalogSettings.php', '2021-12-18 03:46:31'),
(486, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Domain.php', '2021-12-18 03:46:31'),
(487, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/DynamicContentSet.php', '2021-12-18 03:46:31'),
(488, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/DynamicPostChildAttachment.php', '2021-12-18 03:46:31'),
(489, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/DynamicPriceConfigByDate.php', '2021-12-18 03:46:31'),
(490, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Engagement.php', '2021-12-18 03:46:31'),
(491, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/EntityAtTextRange.php', '2021-12-18 03:46:31'),
(492, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Event.php', '2021-12-18 03:46:31'),
(493, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/EventSourceGroup.php', '2021-12-18 03:46:31'),
(494, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Experience.php', '2021-12-18 03:46:31'),
(495, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ExtendedCredit.php', '2021-12-18 03:46:31'),
(496, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ExtendedCreditAllocationConfig.php', '2021-12-18 03:46:31'),
(497, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ExtendedCreditInvoiceGroup.php', '2021-12-18 03:46:32'),
(498, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ExternalEventSource.php', '2021-12-18 03:46:32'),
(499, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/FAMEExportConfig.php', '2021-12-18 03:46:32'),
(500, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields', '2021-12-18 03:46:32'),
(501, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/FlexibleTargeting.php', '2021-12-18 03:46:32'),
(502, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Flight.php', '2021-12-18 03:46:32'),
(503, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/FundingSourceDetails.php', '2021-12-18 03:46:32'),
(504, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/FundingSourceDetailsCoupon.php', '2021-12-18 03:46:32'),
(505, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Group.php', '2021-12-18 03:46:32'),
(506, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/HomeListing.php', '2021-12-18 03:46:32'),
(507, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Hotel.php', '2021-12-18 03:46:32'),
(508, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/HotelRoom.php', '2021-12-18 03:46:32'),
(509, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/IDName.php', '2021-12-18 03:46:32'),
(510, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/IGComment.php', '2021-12-18 03:46:32'),
(511, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/IGMedia.php', '2021-12-18 03:46:32'),
(512, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/IGUser.php', '2021-12-18 03:46:32'),
(513, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ImageCopyright.php', '2021-12-18 03:46:32'),
(514, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/InsightsResult.php', '2021-12-18 03:46:32'),
(515, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/InstagramInsightsResult.php', '2021-12-18 03:46:32'),
(516, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/InstagramInsightsValue.php', '2021-12-18 03:46:32'),
(517, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/InstagramUser.php', '2021-12-18 03:46:32'),
(518, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/InstantArticle.php', '2021-12-18 03:46:32'),
(519, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/InstantArticleInsightsQueryResult.php', '2021-12-18 03:46:32'),
(520, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/InvoiceCampaign.php', '2021-12-18 03:46:32'),
(521, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/IosAppLink.php', '2021-12-18 03:46:32'),
(522, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/KeyValue.php', '2021-12-18 03:46:32'),
(523, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Lead.php', '2021-12-18 03:46:32'),
(524, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LeadGenAppointmentBookingInfo.php', '2021-12-18 03:46:32'),
(525, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LeadGenConditionalQuestionsGroupChoices.php', '2021-12-18 03:46:32'),
(526, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LeadGenConditionalQuestionsGroupQuestions.php', '2021-12-18 03:46:32'),
(527, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LeadGenDraftQuestion.php', '2021-12-18 03:46:32'),
(528, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LeadGenPostSubmissionCheckResult.php', '2021-12-18 03:46:32'),
(529, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LeadGenQuestion.php', '2021-12-18 03:46:32'),
(530, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LeadGenQuestionOption.php', '2021-12-18 03:46:32'),
(531, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LeadgenForm.php', '2021-12-18 03:46:32'),
(532, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LifeEvent.php', '2021-12-18 03:46:32'),
(533, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Link.php', '2021-12-18 03:46:32'),
(534, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LiveEncoder.php', '2021-12-18 03:46:32'),
(535, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LiveVideo.php', '2021-12-18 03:46:32'),
(536, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LiveVideoAdBreakConfig.php', '2021-12-18 03:46:32'),
(537, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LiveVideoError.php', '2021-12-18 03:46:32'),
(538, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LiveVideoInputStream.php', '2021-12-18 03:46:32'),
(539, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LiveVideoTargeting.php', '2021-12-18 03:46:32'),
(540, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Location.php', '2021-12-18 03:46:32'),
(541, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/LookalikeSpec.php', '2021-12-18 03:46:32'),
(542, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/MailingAddress.php', '2021-12-18 03:46:32'),
(543, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/MeasurementUploadEvent.php', '2021-12-18 03:46:32'),
(544, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/MediaFingerprint.php', '2021-12-18 03:46:32'),
(545, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/MessagingFeatureReview.php', '2021-12-18 03:46:32'),
(546, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/MessengerDestinationPageWelcomeMessage.php', '2021-12-18 03:46:32'),
(547, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/MessengerProfile.php', '2021-12-18 03:46:32'),
(548, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/MinimumBudget.php', '2021-12-18 03:46:32'),
(549, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/MusicVideoCopyright.php', '2021-12-18 03:46:32'),
(550, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/NativeOffer.php', '2021-12-18 03:46:32'),
(551, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/NativeOfferDiscount.php', '2021-12-18 03:46:32'),
(552, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/NativeOfferView.php', '2021-12-18 03:46:32'),
(553, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/NullNode.php', '2021-12-18 03:46:32'),
(554, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ObjectStorySpec.php', '2021-12-18 03:46:32'),
(555, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/OfflineConversionDataSet.php', '2021-12-18 03:46:32'),
(556, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/OffsitePixel.php', '2021-12-18 03:46:32'),
(557, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/OpenGraphContext.php', '2021-12-18 03:46:32'),
(558, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/OracleTransaction.php', '2021-12-18 03:46:32'),
(559, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/OutcomePredictionPoint.php', '2021-12-18 03:46:32'),
(560, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Page.php', '2021-12-18 03:46:32'),
(561, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageAdminNote.php', '2021-12-18 03:46:32'),
(562, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageCallToAction.php', '2021-12-18 03:46:32'),
(563, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageCategory.php', '2021-12-18 03:46:32'),
(564, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageChangeProposal.php', '2021-12-18 03:46:32'),
(565, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageCommerceEligibility.php', '2021-12-18 03:46:32'),
(566, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageParking.php', '2021-12-18 03:46:32'),
(567, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PagePaymentOptions.php', '2021-12-18 03:46:32'),
(568, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PagePost.php', '2021-12-18 03:46:32'),
(569, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageRestaurantServices.php', '2021-12-18 03:46:32'),
(570, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageRestaurantSpecialties.php', '2021-12-18 03:46:32'),
(571, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageSavedFilter.php', '2021-12-18 03:46:32'),
(572, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageSettings.php', '2021-12-18 03:46:32'),
(573, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageStartInfo.php', '2021-12-18 03:46:32'),
(574, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageThreadOwner.php', '2021-12-18 03:46:32'),
(575, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageUpcomingChange.php', '2021-12-18 03:46:32'),
(576, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PageUserMessageThreadLabel.php', '2021-12-18 03:46:32'),
(577, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PartnerStudy.php', '2021-12-18 03:46:32'),
(578, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PaymentEnginePayment.php', '2021-12-18 03:46:32'),
(579, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PaymentPricepoints.php', '2021-12-18 03:46:32'),
(580, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PaymentSubscription.php', '2021-12-18 03:46:32'),
(581, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Permission.php', '2021-12-18 03:46:32'),
(582, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Persona.php', '2021-12-18 03:46:32'),
(583, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Photo.php', '2021-12-18 03:46:32'),
(584, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Place.php', '2021-12-18 03:46:32'),
(585, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PlaceTopic.php', '2021-12-18 03:46:32'),
(586, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PlatformImageSource.php', '2021-12-18 03:46:32'),
(587, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PlayableContent.php', '2021-12-18 03:46:32'),
(588, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Post.php', '2021-12-18 03:46:32'),
(589, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Privacy.php', '2021-12-18 03:46:32'),
(590, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductAudience.php', '2021-12-18 03:46:32'),
(591, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductCatalog.php', '2021-12-18 03:46:32'),
(592, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductCatalogCategory.php', '2021-12-18 03:46:32'),
(593, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductCatalogHotelRoomsBatch.php', '2021-12-18 03:46:32'),
(594, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductCatalogImageSettings.php', '2021-12-18 03:46:32'),
(595, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductCatalogImageSettingsOperation.php', '2021-12-18 03:46:32'),
(596, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductCatalogPricingVariablesBatch.php', '2021-12-18 03:46:32'),
(597, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductCatalogProductSetsBatch.php', '2021-12-18 03:46:32'),
(598, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductEventStat.php', '2021-12-18 03:46:32'),
(599, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductFeed.php', '2021-12-18 03:46:32'),
(600, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductFeedMissingFeedItemReplacement.php', '2021-12-18 03:46:32'),
(601, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductFeedRule.php', '2021-12-18 03:46:32'),
(602, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductFeedRuleSuggestion.php', '2021-12-18 03:46:32'),
(603, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductFeedSchedule.php', '2021-12-18 03:46:32'),
(604, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductFeedUpload.php', '2021-12-18 03:46:32'),
(605, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductFeedUploadDiagnosticsReport.php', '2021-12-18 03:46:32'),
(606, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductFeedUploadError.php', '2021-12-18 03:46:32'),
(607, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductFeedUploadErrorReport.php', '2021-12-18 03:46:32'),
(608, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductFeedUploadErrorSample.php', '2021-12-18 03:46:32'),
(609, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductGroup.php', '2021-12-18 03:46:32'),
(610, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductItem.php', '2021-12-18 03:46:32'),
(611, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductItemARData.php', '2021-12-18 03:46:32'),
(612, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductItemCommerceInsights.php', '2021-12-18 03:46:32'),
(613, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductSet.php', '2021-12-18 03:46:32'),
(614, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductSetMetadata.php', '2021-12-18 03:46:32'),
(615, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProductVariant.php', '2021-12-18 03:46:32'),
(616, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Profile.php', '2021-12-18 03:46:32'),
(617, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ProfilePictureSource.php', '2021-12-18 03:46:32'),
(618, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/PublisherBlockList.php', '2021-12-18 03:46:32'),
(619, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/RTBDynamicPost.php', '2021-12-18 03:46:32'),
(620, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/RawCustomAudience.php', '2021-12-18 03:46:32'),
(621, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ReachFrequencyActivity.php', '2021-12-18 03:46:32'),
(622, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ReachFrequencyAdFormat.php', '2021-12-18 03:46:32'),
(623, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ReachFrequencyCurveLowerConfidenceRange.php', '2021-12-18 03:46:32'),
(624, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ReachFrequencyCurveUpperConfidenceRange.php', '2021-12-18 03:46:32'),
(625, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ReachFrequencyDayPart.php', '2021-12-18 03:46:32'),
(626, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ReachFrequencyEstimatesCurve.php', '2021-12-18 03:46:32'),
(627, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ReachFrequencyEstimatesPlacementBreakdown.php', '2021-12-18 03:46:32'),
(628, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ReachFrequencyPrediction.php', '2021-12-18 03:46:32'),
(629, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ReachFrequencySpec.php', '2021-12-18 03:46:32'),
(630, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Recommendation.php', '2021-12-18 03:46:32'),
(631, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Referral.php', '2021-12-18 03:46:32'),
(632, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/RevSharePolicy.php', '2021-12-18 03:46:32'),
(633, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/RichMediaElement.php', '2021-12-18 03:46:32'),
(634, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/SavedAudience.php', '2021-12-18 03:46:32'),
(635, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/SavedMessageResponse.php', '2021-12-18 03:46:32'),
(636, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Search', '2021-12-18 03:46:32'),
(637, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/SecuritySettings.php', '2021-12-18 03:46:32'),
(638, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide', '2021-12-18 03:46:32'),
(639, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Signal', '2021-12-18 03:46:32'),
(640, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/SplitTestWinner.php', '2021-12-18 03:46:32'),
(641, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/StoreCatalogSettings.php', '2021-12-18 03:46:32'),
(642, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/SystemUser.php', '2021-12-18 03:46:32'),
(643, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Tab.php', '2021-12-18 03:46:32'),
(644, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Targeting.php', '2021-12-18 03:46:32'),
(645, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingDynamicRule.php', '2021-12-18 03:46:32'),
(646, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocation.php', '2021-12-18 03:46:32'),
(647, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationCity.php', '2021-12-18 03:46:32'),
(648, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationCustomLocation.php', '2021-12-18 03:46:32'),
(649, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationElectoralDistrict.php', '2021-12-18 03:46:32'),
(650, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationGeoEntities.php', '2021-12-18 03:46:32'),
(651, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationLocationCluster.php', '2021-12-18 03:46:32'),
(652, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationLocationExpansion.php', '2021-12-18 03:46:32'),
(653, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationMarket.php', '2021-12-18 03:46:32'),
(654, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationPlace.php', '2021-12-18 03:46:32'),
(655, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationPoliticalDistrict.php', '2021-12-18 03:46:32'),
(656, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationRegion.php', '2021-12-18 03:46:32'),
(657, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingGeoLocationZip.php', '2021-12-18 03:46:32'),
(658, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingProductAudienceSpec.php', '2021-12-18 03:46:32'),
(659, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingProductAudienceSubSpec.php', '2021-12-18 03:46:32'),
(660, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingProspectingAudience.php', '2021-12-18 03:46:32'),
(661, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingRelaxation.php', '2021-12-18 03:46:32'),
(662, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingSearch.php', '2021-12-18 03:46:32'),
(663, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TargetingSentenceLine.php', '2021-12-18 03:46:32'),
(664, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ThirdPartyMeasurementReportDataset.php', '2021-12-18 03:46:32'),
(665, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/TrackingAndConversionWithDefaults.php', '2021-12-18 03:46:32'),
(666, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Traits', '2021-12-18 03:46:32'),
(667, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/URL.php', '2021-12-18 03:46:32'),
(668, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/UnifiedThread.php', '2021-12-18 03:46:32'),
(669, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/User.php', '2021-12-18 03:46:32'),
(670, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/UserCoverPhoto.php', '2021-12-18 03:46:32'),
(671, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/UserDevice.php', '2021-12-18 03:46:32'),
(672, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/UserIDForApp.php', '2021-12-18 03:46:32'),
(673, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/UserIDForPage.php', '2021-12-18 03:46:32'),
(674, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/UserLeadGenDisclaimerResponse.php', '2021-12-18 03:46:32'),
(675, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/UserLeadGenFieldData.php', '2021-12-18 03:46:32'),
(676, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/UserPaymentMobilePricepoints.php', '2021-12-18 03:46:32'),
(677, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ValueBasedEligibleSource.php', '2021-12-18 03:46:32'),
(678, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values', '2021-12-18 03:46:32'),
(679, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Vehicle.php', '2021-12-18 03:46:32'),
(680, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VehicleOffer.php', '2021-12-18 03:46:32'),
(681, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VideoCopyright.php', '2021-12-18 03:46:32'),
(682, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VideoCopyrightConditionGroup.php', '2021-12-18 03:46:32'),
(683, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VideoCopyrightGeoGate.php', '2021-12-18 03:46:32'),
(684, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VideoCopyrightRule.php', '2021-12-18 03:46:32'),
(685, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VideoCopyrightSegment.php', '2021-12-18 03:46:32'),
(686, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VideoList.php', '2021-12-18 03:46:32'),
(687, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VideoPoll.php', '2021-12-18 03:46:32'),
(688, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VideoThumbnail.php', '2021-12-18 03:46:32'),
(689, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VideoUploadLimits.php', '2021-12-18 03:46:32'),
(690, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/VoipInfo.php', '2021-12-18 03:46:32'),
(691, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/WebAppLink.php', '2021-12-18 03:46:32'),
(692, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/WhatsAppBusinessAccount.php', '2021-12-18 03:46:32'),
(693, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/WhatsAppBusinessProfile.php', '2021-12-18 03:46:32'),
(694, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/WindowsAppLink.php', '2021-12-18 03:46:32'),
(695, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/WindowsPhoneAppLink.php', '2021-12-18 03:46:32'),
(696, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/WorkUserFrontline.php', '2021-12-18 03:46:32'),
(697, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Bootstrap/Bootstrap.php', '2021-12-18 03:46:32'),
(698, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Bootstrap/IntegrationBootstrap.php', '2021-12-18 03:46:32'),
(699, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Config/Config.php', '2021-12-18 03:46:32'),
(700, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Config/SkippableFeatureTestInterface.php', '2021-12-18 03:46:32'),
(701, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Config/SkippableFeaturesManager.php', '2021-12-18 03:46:32'),
(702, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Enum/DummyEnum.php', '2021-12-18 03:46:32'),
(703, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Enum/EnumTest.php', '2021-12-18 03:46:32'),
(704, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Exception/PHPUnitRequestExceptionWrapper.php', '2021-12-18 03:46:32'),
(705, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http/Adapter', '2021-12-18 03:46:32'),
(706, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http/ClientTest.php', '2021-12-18 03:46:32'),
(707, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http/Exception', '2021-12-18 03:46:32'),
(708, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http/FileParameterTest.php', '2021-12-18 03:46:32'),
(709, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http/ParametersTest.php', '2021-12-18 03:46:32'),
(710, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http/RequestTest.php', '2021-12-18 03:46:32'),
(711, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http/ResponseTest.php', '2021-12-18 03:46:32'),
(712, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Logger/AbstractLoggerTest.php', '2021-12-18 03:46:32'),
(713, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Logger/CurlLogger', '2021-12-18 03:46:32'),
(714, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Logger/CurlLoggerTest.php', '2021-12-18 03:46:32'),
(715, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Logger/NullLoggerTest.php', '2021-12-18 03:46:32'),
(716, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AbstractAsyncJobTestCase.php', '2021-12-18 03:46:32'),
(717, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AbstractCrudObjectTest.php', '2021-12-18 03:46:32'),
(718, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AbstractCrudObjectTestCase.php', '2021-12-18 03:46:32'),
(719, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdAccountGroupTest.php', '2021-12-18 03:46:32'),
(720, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdAccountTest.php', '2021-12-18 03:46:32'),
(721, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdConversionPixelTest.php', '2021-12-18 03:46:32'),
(722, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdCreativeTest.php', '2021-12-18 03:46:32'),
(723, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdImageTest.php', '2021-12-18 03:46:32'),
(724, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdLabelTest.php', '2021-12-18 03:46:32'),
(725, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdPreviewTest.php', '2021-12-18 03:46:32'),
(726, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdSetTest.php', '2021-12-18 03:46:32'),
(727, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdTest.php', '2021-12-18 03:46:32'),
(728, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdUserTest.php', '2021-12-18 03:46:32'),
(729, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdVideoTest.php', '2021-12-18 03:46:32'),
(730, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AdsPixelTest.php', '2021-12-18 03:46:32'),
(731, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/AsyncJobInsightsTest.php', '2021-12-18 03:46:32'),
(732, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/BusinessTest.php', '2021-12-18 03:46:32'),
(733, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/CampaignTest.php', '2021-12-18 03:46:32'),
(734, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/CustomAudienceMultikeyTest.php', '2021-12-18 03:46:32'),
(735, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/CustomAudienceNormalizers', '2021-12-18 03:46:32'),
(736, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/CustomAudienceTest.php', '2021-12-18 03:46:32'),
(737, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/DynamicProductAdsAdvertTest.php', '2021-12-18 03:46:32'),
(738, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/EmptyCrudObject.php', '2021-12-18 03:46:32'),
(739, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/EmptyObject.php', '2021-12-18 03:46:32'),
(740, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/LeadTest.php', '2021-12-18 03:46:32'),
(741, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/LeadgenFormTest.php', '2021-12-18 03:46:32'),
(742, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/PageTest.php', '2021-12-18 03:46:32'),
(743, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/PartnerCategoryTest.php', '2021-12-18 03:46:32'),
(744, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ProductAudienceTest.php', '2021-12-18 03:46:32'),
(745, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ProductCatalogTest.php', '2021-12-18 03:46:32'),
(746, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ProductFeedTest.php', '2021-12-18 03:46:32'),
(747, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ProductSetTest.php', '2021-12-18 03:46:32'),
(748, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ProjectTest.php', '2021-12-18 03:46:32'),
(749, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ReachEstimateTest.php', '2021-12-18 03:46:32'),
(750, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ReachFrequencyPredictionTest.php', '2021-12-18 03:46:32'),
(751, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide', '2021-12-18 03:46:32'),
(752, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/Signal', '2021-12-18 03:46:32'),
(753, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/TargetingSearchTest.php', '2021-12-18 03:46:32'),
(754, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/CHANGELOG.md', '2021-12-18 03:46:32'),
(755, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/LICENSE', '2021-12-18 03:46:32'),
(756, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/README.md', '2021-12-18 03:46:32'),
(757, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/UPGRADING.md', '2021-12-18 03:46:32'),
(758, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/composer.json', '2021-12-18 03:46:32'),
(759, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src', '2021-12-18 03:46:32'),
(760, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/vendor-bin', '2021-12-18 03:46:32'),
(761, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/CHANGELOG.md', '2021-12-18 03:46:32'),
(762, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/LICENSE', '2021-12-18 03:46:32'),
(763, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/Makefile', '2021-12-18 03:46:32'),
(764, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/README.md', '2021-12-18 03:46:32'),
(765, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/composer.json', '2021-12-18 03:46:32'),
(766, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src', '2021-12-18 03:46:32'),
(767, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/CHANGELOG.md', '2021-12-18 03:46:32'),
(768, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/LICENSE', '2021-12-18 03:46:32'),
(769, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/README.md', '2021-12-18 03:46:32'),
(770, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/composer.json', '2021-12-18 03:46:32'),
(771, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src', '2021-12-18 03:46:32'),
(772, 2, 'system/library/vendor/facebook_business/vendor/psr/http-client/CHANGELOG.md', '2021-12-18 03:46:32'),
(773, 2, 'system/library/vendor/facebook_business/vendor/psr/http-client/LICENSE', '2021-12-18 03:46:32'),
(774, 2, 'system/library/vendor/facebook_business/vendor/psr/http-client/README.md', '2021-12-18 03:46:32'),
(775, 2, 'system/library/vendor/facebook_business/vendor/psr/http-client/composer.json', '2021-12-18 03:46:32'),
(776, 2, 'system/library/vendor/facebook_business/vendor/psr/http-client/src', '2021-12-18 03:46:32'),
(777, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/CHANGELOG.md', '2021-12-18 03:46:32'),
(778, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/LICENSE', '2021-12-18 03:46:32'),
(779, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/README.md', '2021-12-18 03:46:32'),
(780, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/composer.json', '2021-12-18 03:46:32'),
(781, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/src', '2021-12-18 03:46:33'),
(782, 2, 'system/library/vendor/facebook_business/vendor/ralouphie/getallheaders/LICENSE', '2021-12-18 03:46:33'),
(783, 2, 'system/library/vendor/facebook_business/vendor/ralouphie/getallheaders/README.md', '2021-12-18 03:46:33'),
(784, 2, 'system/library/vendor/facebook_business/vendor/ralouphie/getallheaders/composer.json', '2021-12-18 03:46:33'),
(785, 2, 'system/library/vendor/facebook_business/vendor/ralouphie/getallheaders/src', '2021-12-18 03:46:33'),
(786, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Adapter/AbstractAdapter.php', '2021-12-18 03:46:33'),
(787, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Adapter/AdapterInterface.php', '2021-12-18 03:46:33'),
(788, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Adapter/Curl', '2021-12-18 03:46:33'),
(789, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Adapter/CurlAdapter.php', '2021-12-18 03:46:33'),
(790, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Exception/AuthorizationException.php', '2021-12-18 03:46:33'),
(791, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Exception/ClientException.php', '2021-12-18 03:46:33'),
(792, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Exception/EmptyResponseException.php', '2021-12-18 03:46:33'),
(793, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Exception/PermissionException.php', '2021-12-18 03:46:33'),
(794, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Exception/RequestException.php', '2021-12-18 03:46:33'),
(795, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Exception/ServerException.php', '2021-12-18 03:46:33'),
(796, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Exception/ThrottleException.php', '2021-12-18 03:46:33'),
(797, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Logger/CurlLogger/JsonAwareParameters.php', '2021-12-18 03:46:33'),
(798, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Logger/CurlLogger/JsonNode.php', '2021-12-18 03:46:33'),
(799, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessDataAPI/Content.php', '2021-12-18 03:46:33'),
(800, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessDataAPI/CustomData.php', '2021-12-18 03:46:33'),
(801, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessDataAPI/Event.php', '2021-12-18 03:46:33'),
(802, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessDataAPI/EventRequest.php', '2021-12-18 03:46:33'),
(803, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessDataAPI/EventResponse.php', '2021-12-18 03:46:33'),
(804, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/BusinessDataAPI/UserData.php', '2021-12-18 03:46:33'),
(805, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/BirthYearNormalizer.php', '2021-12-18 03:46:33'),
(806, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/CityNormalizer.php', '2021-12-18 03:46:33'),
(807, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/CountryNormalizer.php', '2021-12-18 03:46:33'),
(808, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/DateNormalizer.php', '2021-12-18 03:46:33'),
(809, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/EmailNormalizer.php', '2021-12-18 03:46:33'),
(810, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/FirstNameInitialNormalizer.php', '2021-12-18 03:46:33'),
(811, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/FirstNameNormalizer.php', '2021-12-18 03:46:33'),
(812, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/GenderNormalizer.php', '2021-12-18 03:46:33'),
(813, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/HashNormalizer.php', '2021-12-18 03:46:33'),
(814, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/LastNameNormalizer.php', '2021-12-18 03:46:33'),
(815, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/MadidNormalizer.php', '2021-12-18 03:46:33'),
(816, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/PhoneNormalizer.php', '2021-12-18 03:46:33'),
(817, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/StateNormalizer.php', '2021-12-18 03:46:33'),
(818, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/ValueNormalizerInterface.php', '2021-12-18 03:46:33'),
(819, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/CustomAudienceNormalizers/ZipNormalizer.php', '2021-12-18 03:46:33'),
(820, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AbstractArchivableCrudObjectFields.php', '2021-12-18 03:46:33'),
(821, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountActivityFields.php', '2021-12-18 03:46:33'),
(822, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountAdRulesHistoryFields.php', '2021-12-18 03:46:33'),
(823, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountAdVolumeFields.php', '2021-12-18 03:46:33'),
(824, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountContentFilterLevelsInheritanceFields.php', '2021-12-18 03:46:33'),
(825, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountDefaultDestinationFields.php', '2021-12-18 03:46:33'),
(826, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountDefaultObjectiveFields.php', '2021-12-18 03:46:33'),
(827, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountDeliveryEstimateFields.php', '2021-12-18 03:46:33'),
(828, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountFields.php', '2021-12-18 03:46:33'),
(829, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountMatchedSearchApplicationsEdgeDataFields.php', '2021-12-18 03:46:33'),
(830, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountMaxBidFields.php', '2021-12-18 03:46:33'),
(831, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountPromotableObjectsFields.php', '2021-12-18 03:46:33'),
(832, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountReachEstimateFields.php', '2021-12-18 03:46:33'),
(833, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountRecommendedCamapaignBudgetFields.php', '2021-12-18 03:46:33'),
(834, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountSubscribedAppsFields.php', '2021-12-18 03:46:33'),
(835, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountTargetingUnifiedFields.php', '2021-12-18 03:46:33'),
(836, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountTrackingDataFields.php', '2021-12-18 03:46:33'),
(837, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAccountUserFields.php', '2021-12-18 03:46:33'),
(838, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdActivityFields.php', '2021-12-18 03:46:33'),
(839, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAssetFeedSpecAssetLabelFields.php', '2021-12-18 03:46:33'),
(840, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAssetFeedSpecBodyFields.php', '2021-12-18 03:46:33'),
(841, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAssetFeedSpecCaptionFields.php', '2021-12-18 03:46:33'),
(842, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAssetFeedSpecDescriptionFields.php', '2021-12-18 03:46:33'),
(843, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAssetFeedSpecFields.php', '2021-12-18 03:46:33'),
(844, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAssetFeedSpecGroupRuleFields.php', '2021-12-18 03:46:33');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(845, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAssetFeedSpecImageFields.php', '2021-12-18 03:46:33'),
(846, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAssetFeedSpecLinkURLFields.php', '2021-12-18 03:46:33'),
(847, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAssetFeedSpecTitleFields.php', '2021-12-18 03:46:33'),
(848, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAssetFeedSpecVideoFields.php', '2021-12-18 03:46:33'),
(849, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAsyncRequestFields.php', '2021-12-18 03:46:33'),
(850, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAsyncRequestSetFields.php', '2021-12-18 03:46:33'),
(851, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdAsyncRequestSetNotificationResultFields.php', '2021-12-18 03:46:33'),
(852, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdBidAdjustmentsFields.php', '2021-12-18 03:46:33'),
(853, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCampaignActivityFields.php', '2021-12-18 03:46:33'),
(854, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCampaignBidConstraintFields.php', '2021-12-18 03:46:33'),
(855, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCampaignDeliveryEstimateFields.php', '2021-12-18 03:46:33'),
(856, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCampaignDeliveryStatsUnsupportedReasonsFields.php', '2021-12-18 03:46:33'),
(857, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCampaignFrequencyControlSpecsFields.php', '2021-12-18 03:46:33'),
(858, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCampaignGroupActivityFields.php', '2021-12-18 03:46:33'),
(859, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCampaignIssuesInfoFields.php', '2021-12-18 03:46:33'),
(860, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCampaignLearningStageInfoFields.php', '2021-12-18 03:46:33'),
(861, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCampaignOptimizationEventFields.php', '2021-12-18 03:46:33'),
(862, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCampaignPacedBidInfoFields.php', '2021-12-18 03:46:33'),
(863, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeAdDisclaimerFields.php', '2021-12-18 03:46:33'),
(864, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeCollectionThumbnailInfoFields.php', '2021-12-18 03:46:33'),
(865, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeFields.php', '2021-12-18 03:46:33'),
(866, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeInsightsFields.php', '2021-12-18 03:46:33'),
(867, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeInteractiveComponentsSpecFields.php', '2021-12-18 03:46:33'),
(868, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeLinkDataAppLinkSpecFields.php', '2021-12-18 03:46:33'),
(869, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeLinkDataCallToActionFields.php', '2021-12-18 03:46:33'),
(870, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeLinkDataCallToActionValueFields.php', '2021-12-18 03:46:33'),
(871, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeLinkDataChildAttachmentFields.php', '2021-12-18 03:46:33'),
(872, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeLinkDataFields.php', '2021-12-18 03:46:33'),
(873, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeLinkDataImageLayerSpecFields.php', '2021-12-18 03:46:33'),
(874, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeLinkDataImageOverlaySpecFields.php', '2021-12-18 03:46:33'),
(875, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeLinkDataSponsorshipInfoSpecFields.php', '2021-12-18 03:46:33'),
(876, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeLinkDataTemplateVideoSpecFields.php', '2021-12-18 03:46:33'),
(877, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeObjectStorySpecFields.php', '2021-12-18 03:46:33'),
(878, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeOmnichannelLinkSpecFields.php', '2021-12-18 03:46:33'),
(879, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativePhotoDataFields.php', '2021-12-18 03:46:33'),
(880, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativePhotoDataMediaElementsFields.php', '2021-12-18 03:46:33'),
(881, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativePlaceDataFields.php', '2021-12-18 03:46:33'),
(882, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativePlatformCustomizationFields.php', '2021-12-18 03:46:33'),
(883, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativePortraitCustomizationsFields.php', '2021-12-18 03:46:33'),
(884, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativePostClickConfigurationFields.php', '2021-12-18 03:46:33'),
(885, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeRecommenderSettingsFields.php', '2021-12-18 03:46:33'),
(886, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeStaticFallbackSpecFields.php', '2021-12-18 03:46:33'),
(887, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeTemplateURLSpecFields.php', '2021-12-18 03:46:33'),
(888, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeTextDataFields.php', '2021-12-18 03:46:33'),
(889, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCreativeVideoDataFields.php', '2021-12-18 03:46:33'),
(890, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdCustomizationRuleSpecFields.php', '2021-12-18 03:46:33'),
(891, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdDynamicCreativeFields.php', '2021-12-18 03:46:33'),
(892, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdEntityTargetSpendFields.php', '2021-12-18 03:46:33'),
(893, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdFields.php', '2021-12-18 03:46:33'),
(894, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdImageFields.php', '2021-12-18 03:46:33'),
(895, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdKeywordsFields.php', '2021-12-18 03:46:33'),
(896, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdLabelFields.php', '2021-12-18 03:46:33'),
(897, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdMonetizationPropertyFields.php', '2021-12-18 03:46:33'),
(898, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdNetworkAnalyticsAsyncQueryResultFields.php', '2021-12-18 03:46:33'),
(899, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdNetworkAnalyticsSyncQueryResultFields.php', '2021-12-18 03:46:33'),
(900, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdPlacePageSetFields.php', '2021-12-18 03:46:33'),
(901, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdPlacePageSetMetadataFields.php', '2021-12-18 03:46:33'),
(902, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdPlacementFields.php', '2021-12-18 03:46:33'),
(903, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdPreviewFields.php', '2021-12-18 03:46:33'),
(904, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdPromotedObjectFields.php', '2021-12-18 03:46:33'),
(905, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRecommendationDataFields.php', '2021-12-18 03:46:33'),
(906, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRecommendationFields.php', '2021-12-18 03:46:33'),
(907, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdReportRunFields.php', '2021-12-18 03:46:33'),
(908, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdReportSpecFields.php', '2021-12-18 03:46:33'),
(909, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleEvaluationSpecFields.php', '2021-12-18 03:46:33'),
(910, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleExecutionOptionsFields.php', '2021-12-18 03:46:33'),
(911, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleExecutionSpecFields.php', '2021-12-18 03:46:33'),
(912, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleFields.php', '2021-12-18 03:46:33'),
(913, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleFiltersFields.php', '2021-12-18 03:46:33'),
(914, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleHistoryFields.php', '2021-12-18 03:46:33'),
(915, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleHistoryResultActionFields.php', '2021-12-18 03:46:33'),
(916, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleHistoryResultFields.php', '2021-12-18 03:46:33'),
(917, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleScheduleFields.php', '2021-12-18 03:46:33'),
(918, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleScheduleSpecFields.php', '2021-12-18 03:46:33'),
(919, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdRuleTriggerFields.php', '2021-12-18 03:46:33'),
(920, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdSetFields.php', '2021-12-18 03:46:33'),
(921, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdStudyCellFields.php', '2021-12-18 03:46:33'),
(922, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdStudyFields.php', '2021-12-18 03:46:33'),
(923, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdStudyObjectiveFields.php', '2021-12-18 03:46:33'),
(924, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdStudyObjectiveIDFields.php', '2021-12-18 03:46:33'),
(925, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdVideoFields.php', '2021-12-18 03:46:33'),
(926, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdgroupActivityFields.php', '2021-12-18 03:46:33'),
(927, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdgroupIssuesInfoFields.php', '2021-12-18 03:46:33'),
(928, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdgroupPlacementSpecificReviewFeedbackFields.php', '2021-12-18 03:46:33'),
(929, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdgroupRelevanceScoreFields.php', '2021-12-18 03:46:33'),
(930, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdgroupReviewFeedbackFields.php', '2021-12-18 03:46:33'),
(931, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdoptablePetFields.php', '2021-12-18 03:46:33'),
(932, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdsActionStatsFields.php', '2021-12-18 03:46:33'),
(933, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdsImageCropsFields.php', '2021-12-18 03:46:33'),
(934, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdsInsightsFields.php', '2021-12-18 03:46:33'),
(935, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdsOptimalDeliveryGrowthOpportunityFields.php', '2021-12-18 03:46:33'),
(936, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdsPixelFields.php', '2021-12-18 03:46:33'),
(937, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdsPixelStatsFields.php', '2021-12-18 03:46:33'),
(938, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AdsPixelStatsResultFields.php', '2021-12-18 03:46:33'),
(939, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AgeRangeFields.php', '2021-12-18 03:46:33'),
(940, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/Agency.php', '2021-12-18 03:46:33'),
(941, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AgencyClientDeclarationFields.php', '2021-12-18 03:46:33'),
(942, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AlbumFields.php', '2021-12-18 03:46:33'),
(943, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AndroidAppLinkFields.php', '2021-12-18 03:46:33'),
(944, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AppRequestFields.php', '2021-12-18 03:46:33'),
(945, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AppRequestFormerRecipientFields.php', '2021-12-18 03:46:33'),
(946, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ApplicationFields.php', '2021-12-18 03:46:33'),
(947, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AssignedUserFields.php', '2021-12-18 03:46:33'),
(948, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AsyncRequestFields.php', '2021-12-18 03:46:33'),
(949, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AsyncSessionFields.php', '2021-12-18 03:46:33'),
(950, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AtlasCampaignFields.php', '2021-12-18 03:46:33'),
(951, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AttributionSpecFields.php', '2021-12-18 03:46:33'),
(952, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AudienceInsightsStudySpecFields.php', '2021-12-18 03:46:33'),
(953, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AudiencePermissionForActionsFields.php', '2021-12-18 03:46:33'),
(954, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AudioCopyrightFields.php', '2021-12-18 03:46:33'),
(955, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/AutomotiveModelFields.php', '2021-12-18 03:46:33'),
(956, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BilledAmountDetailsFields.php', '2021-12-18 03:46:33'),
(957, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BrandSafetyBlockListUsageFields.php', '2021-12-18 03:46:33'),
(958, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BroadTargetingCategoriesFields.php', '2021-12-18 03:46:33'),
(959, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessAdAccountRequestFields.php', '2021-12-18 03:46:33'),
(960, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessAgreementFields.php', '2021-12-18 03:46:33'),
(961, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessApplicationRequestFields.php', '2021-12-18 03:46:33'),
(962, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessAssetGroupFields.php', '2021-12-18 03:46:33'),
(963, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessAssetSharingAgreementFields.php', '2021-12-18 03:46:33'),
(964, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessFields.php', '2021-12-18 03:46:33'),
(965, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessOwnedObjectOnBehalfOfRequestFields.php', '2021-12-18 03:46:33'),
(966, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessPageRequestFields.php', '2021-12-18 03:46:33'),
(967, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessRoleRequestFields.php', '2021-12-18 03:46:33'),
(968, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessUnitFields.php', '2021-12-18 03:46:33'),
(969, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/BusinessUserFields.php', '2021-12-18 03:46:33'),
(970, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CPASAdvertiserPartnershipRecommendationFields.php', '2021-12-18 03:46:33'),
(971, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CPASCollaborationRequestFields.php', '2021-12-18 03:46:33'),
(972, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CPASParentCatalogSettingsFields.php', '2021-12-18 03:46:33'),
(973, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CampaignFields.php', '2021-12-18 03:46:33'),
(974, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CampaignGroupBrandConfigurationFields.php', '2021-12-18 03:46:33'),
(975, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CampaignGroupCollaborativeAdsPartnerInfoFields.php', '2021-12-18 03:46:33'),
(976, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CanvasAdSettingsFields.php', '2021-12-18 03:46:33'),
(977, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CanvasBodyElementFields.php', '2021-12-18 03:46:33'),
(978, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CanvasCollectionThumbnailFields.php', '2021-12-18 03:46:33'),
(979, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CanvasFields.php', '2021-12-18 03:46:33'),
(980, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CatalogBasedTargetingFields.php', '2021-12-18 03:46:33'),
(981, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CatalogItemAppLinksFields.php', '2021-12-18 03:46:33'),
(982, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CatalogItemAppealStatusFields.php', '2021-12-18 03:46:33'),
(983, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CatalogItemChannelsToIntegrityStatusFields.php', '2021-12-18 03:46:33'),
(984, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CatalogSubVerticalListFields.php', '2021-12-18 03:46:33'),
(985, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CheckBatchRequestStatusFields.php', '2021-12-18 03:46:33'),
(986, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ChildEventFields.php', '2021-12-18 03:46:33'),
(987, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ClickTrackingTagFields.php', '2021-12-18 03:46:33'),
(988, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CollaborativeAdsPartnerInfoListItemFields.php', '2021-12-18 03:46:33'),
(989, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CollaborativeAdsShareSettingsFields.php', '2021-12-18 03:46:33'),
(990, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CommentFields.php', '2021-12-18 03:46:33'),
(991, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CommerceMerchantSettingsFields.php', '2021-12-18 03:46:33'),
(992, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CommerceMerchantSettingsSetupStatusFields.php', '2021-12-18 03:46:33'),
(993, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CommerceOrderFields.php', '2021-12-18 03:46:33'),
(994, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CommerceOrderTransactionDetailFields.php', '2021-12-18 03:46:33'),
(995, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CommercePayoutFields.php', '2021-12-18 03:46:33'),
(996, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CommerceSettingsFields.php', '2021-12-18 03:46:33'),
(997, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ConnectionsTargetingFields.php', '2021-12-18 03:46:33'),
(998, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ContentDeliveryReportFields.php', '2021-12-18 03:46:33'),
(999, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ContextualBundlingSpecFields.php', '2021-12-18 03:46:33'),
(1000, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ConversionActionQueryFields.php', '2021-12-18 03:46:33'),
(1001, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CopyrightReferenceContainerFields.php', '2021-12-18 03:46:33'),
(1002, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CoverPhotoFields.php', '2021-12-18 03:46:33'),
(1003, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CreativeHistoryFields.php', '2021-12-18 03:46:33'),
(1004, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CreditPartitionActionOptionsFields.php', '2021-12-18 03:46:33'),
(1005, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CurrencyAmountFields.php', '2021-12-18 03:46:33'),
(1006, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CurrencyFields.php', '2021-12-18 03:46:33'),
(1007, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomAudienceAdAccountFields.php', '2021-12-18 03:46:33'),
(1008, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomAudienceDataSourceFields.php', '2021-12-18 03:46:33'),
(1009, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomAudienceFields.php', '2021-12-18 03:46:33'),
(1010, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomAudienceMultikeySchemaFields.php', '2021-12-18 03:46:33'),
(1011, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomAudienceSessionFields.php', '2021-12-18 03:46:33'),
(1012, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomAudienceSharingStatusFields.php', '2021-12-18 03:46:33'),
(1013, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomAudienceStatusFields.php', '2021-12-18 03:46:33'),
(1014, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomAudiencesTOSFields.php', '2021-12-18 03:46:33'),
(1015, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomAudiencesharedAccountInfoFields.php', '2021-12-18 03:46:33'),
(1016, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomConversionFields.php', '2021-12-18 03:46:33'),
(1017, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomConversionStatsResultFields.php', '2021-12-18 03:46:33'),
(1018, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/CustomUserSettingsFields.php', '2021-12-18 03:46:33'),
(1019, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/DACheckFields.php', '2021-12-18 03:46:33'),
(1020, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/DayPartFields.php', '2021-12-18 03:46:33'),
(1021, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/DeliveryCheckExtraInfoFields.php', '2021-12-18 03:46:33'),
(1022, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/DeliveryCheckFields.php', '2021-12-18 03:46:33'),
(1023, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/DestinationCatalogSettingsFields.php', '2021-12-18 03:46:33'),
(1024, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/DestinationFields.php', '2021-12-18 03:46:33'),
(1025, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/DomainFields.php', '2021-12-18 03:46:33'),
(1026, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/DynamicContentSetFields.php', '2021-12-18 03:46:33'),
(1027, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/DynamicPostChildAttachmentFields.php', '2021-12-18 03:46:33'),
(1028, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/DynamicPriceConfigByDateFields.php', '2021-12-18 03:46:33'),
(1029, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/EngagementFields.php', '2021-12-18 03:46:33'),
(1030, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/EntityAtTextRangeFields.php', '2021-12-18 03:46:33'),
(1031, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/EventFields.php', '2021-12-18 03:46:33'),
(1032, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/EventSourceGroupFields.php', '2021-12-18 03:46:33'),
(1033, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ExperienceFields.php', '2021-12-18 03:46:33'),
(1034, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ExtendedCreditAllocationConfigFields.php', '2021-12-18 03:46:33'),
(1035, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ExtendedCreditFields.php', '2021-12-18 03:46:33'),
(1036, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ExtendedCreditInvoiceGroupFields.php', '2021-12-18 03:46:33'),
(1037, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ExternalEventSourceFields.php', '2021-12-18 03:46:33'),
(1038, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/FAMEExportConfigFields.php', '2021-12-18 03:46:33'),
(1039, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/FlexibleTargetingFields.php', '2021-12-18 03:46:33'),
(1040, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/FlightFields.php', '2021-12-18 03:46:33'),
(1041, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/FundingSourceDetailsCouponFields.php', '2021-12-18 03:46:33'),
(1042, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/FundingSourceDetailsFields.php', '2021-12-18 03:46:33'),
(1043, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/GroupFields.php', '2021-12-18 03:46:33'),
(1044, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/HomeListingFields.php', '2021-12-18 03:46:33'),
(1045, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/HotelFields.php', '2021-12-18 03:46:33'),
(1046, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/HotelRoomFields.php', '2021-12-18 03:46:33'),
(1047, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/IDNameFields.php', '2021-12-18 03:46:33'),
(1048, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/IGCommentFields.php', '2021-12-18 03:46:34'),
(1049, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/IGMediaFields.php', '2021-12-18 03:46:34'),
(1050, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/IGUserFields.php', '2021-12-18 03:46:34'),
(1051, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ImageCopyrightFields.php', '2021-12-18 03:46:34'),
(1052, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/InsightsResultFields.php', '2021-12-18 03:46:34'),
(1053, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/InstagramInsightsResultFields.php', '2021-12-18 03:46:34'),
(1054, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/InstagramInsightsValueFields.php', '2021-12-18 03:46:34'),
(1055, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/InstagramUserFields.php', '2021-12-18 03:46:34'),
(1056, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/InstantArticleFields.php', '2021-12-18 03:46:34'),
(1057, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/InstantArticleInsightsQueryResultFields.php', '2021-12-18 03:46:34'),
(1058, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/InvoiceCampaignFields.php', '2021-12-18 03:46:34'),
(1059, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/IosAppLinkFields.php', '2021-12-18 03:46:34'),
(1060, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/KeyValueFields.php', '2021-12-18 03:46:34'),
(1061, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LeadFields.php', '2021-12-18 03:46:34'),
(1062, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LeadGenAppointmentBookingInfoFields.php', '2021-12-18 03:46:34'),
(1063, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LeadGenConditionalQuestionsGroupChoicesFields.php', '2021-12-18 03:46:34'),
(1064, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LeadGenConditionalQuestionsGroupQuestionsFields.php', '2021-12-18 03:46:34'),
(1065, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LeadGenDraftQuestionFields.php', '2021-12-18 03:46:34'),
(1066, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LeadGenPostSubmissionCheckResultFields.php', '2021-12-18 03:46:34'),
(1067, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LeadGenQuestionFields.php', '2021-12-18 03:46:34'),
(1068, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LeadGenQuestionOptionFields.php', '2021-12-18 03:46:34'),
(1069, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LeadgenFormFields.php', '2021-12-18 03:46:34'),
(1070, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LifeEventFields.php', '2021-12-18 03:46:34'),
(1071, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LinkFields.php', '2021-12-18 03:46:34'),
(1072, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LiveEncoderFields.php', '2021-12-18 03:46:34'),
(1073, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LiveVideoAdBreakConfigFields.php', '2021-12-18 03:46:34'),
(1074, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LiveVideoErrorFields.php', '2021-12-18 03:46:34'),
(1075, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LiveVideoFields.php', '2021-12-18 03:46:34'),
(1076, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LiveVideoInputStreamFields.php', '2021-12-18 03:46:34'),
(1077, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LiveVideoTargetingFields.php', '2021-12-18 03:46:34'),
(1078, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LocationFields.php', '2021-12-18 03:46:34'),
(1079, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/LookalikeSpecFields.php', '2021-12-18 03:46:34'),
(1080, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/MailingAddressFields.php', '2021-12-18 03:46:34'),
(1081, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/MeasurementUploadEventFields.php', '2021-12-18 03:46:34'),
(1082, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/MediaFingerprintFields.php', '2021-12-18 03:46:34'),
(1083, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/MessagingFeatureReviewFields.php', '2021-12-18 03:46:34'),
(1084, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/MessengerDestinationPageWelcomeMessageFields.php', '2021-12-18 03:46:34'),
(1085, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/MessengerProfileFields.php', '2021-12-18 03:46:34'),
(1086, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/MinimumBudgetFields.php', '2021-12-18 03:46:34'),
(1087, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/MusicVideoCopyrightFields.php', '2021-12-18 03:46:34'),
(1088, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/NativeOfferDiscountFields.php', '2021-12-18 03:46:34'),
(1089, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/NativeOfferFields.php', '2021-12-18 03:46:34'),
(1090, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/NativeOfferViewFields.php', '2021-12-18 03:46:34'),
(1091, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/NullNodeFields.php', '2021-12-18 03:46:34'),
(1092, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/OfflineConversionDataSetFields.php', '2021-12-18 03:46:34'),
(1093, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/OffsitePixelFields.php', '2021-12-18 03:46:34'),
(1094, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/OpenGraphContextFields.php', '2021-12-18 03:46:34'),
(1095, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/OracleTransactionFields.php', '2021-12-18 03:46:34'),
(1096, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/OutcomePredictionPointFields.php', '2021-12-18 03:46:34'),
(1097, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageAdminNoteFields.php', '2021-12-18 03:46:34'),
(1098, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageCallToActionFields.php', '2021-12-18 03:46:34'),
(1099, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageCategoryFields.php', '2021-12-18 03:46:34'),
(1100, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageChangeProposalFields.php', '2021-12-18 03:46:34'),
(1101, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageCommerceEligibilityFields.php', '2021-12-18 03:46:34'),
(1102, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageFields.php', '2021-12-18 03:46:34'),
(1103, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageParkingFields.php', '2021-12-18 03:46:34'),
(1104, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PagePaymentOptionsFields.php', '2021-12-18 03:46:34'),
(1105, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PagePostFields.php', '2021-12-18 03:46:34'),
(1106, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageRestaurantServicesFields.php', '2021-12-18 03:46:34'),
(1107, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageRestaurantSpecialtiesFields.php', '2021-12-18 03:46:34'),
(1108, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageSavedFilterFields.php', '2021-12-18 03:46:34'),
(1109, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageSettingsFields.php', '2021-12-18 03:46:34'),
(1110, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageStartInfoFields.php', '2021-12-18 03:46:34'),
(1111, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageThreadOwnerFields.php', '2021-12-18 03:46:34'),
(1112, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageUpcomingChangeFields.php', '2021-12-18 03:46:34'),
(1113, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PageUserMessageThreadLabelFields.php', '2021-12-18 03:46:34'),
(1114, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PartnerStudyFields.php', '2021-12-18 03:46:34'),
(1115, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PaymentEnginePaymentFields.php', '2021-12-18 03:46:34'),
(1116, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PaymentPricepointsFields.php', '2021-12-18 03:46:34'),
(1117, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PaymentSubscriptionFields.php', '2021-12-18 03:46:34'),
(1118, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PermissionFields.php', '2021-12-18 03:46:34'),
(1119, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PersonaFields.php', '2021-12-18 03:46:34'),
(1120, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PhotoFields.php', '2021-12-18 03:46:34'),
(1121, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PlaceFields.php', '2021-12-18 03:46:34'),
(1122, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PlaceTopicFields.php', '2021-12-18 03:46:34'),
(1123, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PlatformImageSourceFields.php', '2021-12-18 03:46:34'),
(1124, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PlayableContentFields.php', '2021-12-18 03:46:34'),
(1125, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PostFields.php', '2021-12-18 03:46:34'),
(1126, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PrivacyFields.php', '2021-12-18 03:46:34'),
(1127, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductAudienceFields.php', '2021-12-18 03:46:34'),
(1128, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductCatalogCategoryFields.php', '2021-12-18 03:46:34'),
(1129, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductCatalogFields.php', '2021-12-18 03:46:34'),
(1130, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductCatalogHotelRoomsBatchFields.php', '2021-12-18 03:46:34'),
(1131, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductCatalogImageSettingsFields.php', '2021-12-18 03:46:34'),
(1132, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductCatalogImageSettingsOperationFields.php', '2021-12-18 03:46:34'),
(1133, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductCatalogPricingVariablesBatchFields.php', '2021-12-18 03:46:34'),
(1134, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductCatalogProductSetsBatchFields.php', '2021-12-18 03:46:34'),
(1135, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductEventStatFields.php', '2021-12-18 03:46:34'),
(1136, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductFeedFields.php', '2021-12-18 03:46:34'),
(1137, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductFeedMissingFeedItemReplacementFields.php', '2021-12-18 03:46:34'),
(1138, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductFeedRuleFields.php', '2021-12-18 03:46:34'),
(1139, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductFeedRuleSuggestionFields.php', '2021-12-18 03:46:34'),
(1140, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductFeedScheduleFields.php', '2021-12-18 03:46:34'),
(1141, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductFeedUploadDiagnosticsReportFields.php', '2021-12-18 03:46:34'),
(1142, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductFeedUploadErrorFields.php', '2021-12-18 03:46:34'),
(1143, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductFeedUploadErrorReportFields.php', '2021-12-18 03:46:34'),
(1144, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductFeedUploadErrorSampleFields.php', '2021-12-18 03:46:34'),
(1145, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductFeedUploadFields.php', '2021-12-18 03:46:34'),
(1146, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductGroupFields.php', '2021-12-18 03:46:34'),
(1147, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductItemARDataFields.php', '2021-12-18 03:46:34'),
(1148, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductItemCommerceInsightsFields.php', '2021-12-18 03:46:34'),
(1149, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductItemFields.php', '2021-12-18 03:46:34'),
(1150, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductSetFields.php', '2021-12-18 03:46:34'),
(1151, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductSetMetadataFields.php', '2021-12-18 03:46:34'),
(1152, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProductVariantFields.php', '2021-12-18 03:46:34'),
(1153, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProfileFields.php', '2021-12-18 03:46:34'),
(1154, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ProfilePictureSourceFields.php', '2021-12-18 03:46:34'),
(1155, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/PublisherBlockListFields.php', '2021-12-18 03:46:34'),
(1156, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/RTBDynamicPostFields.php', '2021-12-18 03:46:34'),
(1157, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/RawCustomAudienceFields.php', '2021-12-18 03:46:34'),
(1158, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ReachFrequencyActivityFields.php', '2021-12-18 03:46:34'),
(1159, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ReachFrequencyAdFormatFields.php', '2021-12-18 03:46:34'),
(1160, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ReachFrequencyCurveLowerConfidenceRangeFields.php', '2021-12-18 03:46:34'),
(1161, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ReachFrequencyCurveUpperConfidenceRangeFields.php', '2021-12-18 03:46:34'),
(1162, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ReachFrequencyDayPartFields.php', '2021-12-18 03:46:34'),
(1163, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ReachFrequencyEstimatesCurveFields.php', '2021-12-18 03:46:34'),
(1164, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ReachFrequencyEstimatesPlacementBreakdownFields.php', '2021-12-18 03:46:34'),
(1165, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ReachFrequencyPredictionFields.php', '2021-12-18 03:46:34'),
(1166, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ReachFrequencySpecFields.php', '2021-12-18 03:46:34'),
(1167, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/RecommendationFields.php', '2021-12-18 03:46:34'),
(1168, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ReferralFields.php', '2021-12-18 03:46:34'),
(1169, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/RevSharePolicyFields.php', '2021-12-18 03:46:34'),
(1170, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/RichMediaElementFields.php', '2021-12-18 03:46:34'),
(1171, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/SavedAudienceFields.php', '2021-12-18 03:46:34'),
(1172, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/SavedMessageResponseFields.php', '2021-12-18 03:46:34'),
(1173, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/SecuritySettingsFields.php', '2021-12-18 03:46:34'),
(1174, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/SplitTestWinnerFields.php', '2021-12-18 03:46:34'),
(1175, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/StoreCatalogSettingsFields.php', '2021-12-18 03:46:34'),
(1176, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/SystemUserFields.php', '2021-12-18 03:46:34'),
(1177, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TabFields.php', '2021-12-18 03:46:34'),
(1178, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingDynamicRuleFields.php', '2021-12-18 03:46:34'),
(1179, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingFields.php', '2021-12-18 03:46:34'),
(1180, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationCityFields.php', '2021-12-18 03:46:34'),
(1181, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationCustomLocationFields.php', '2021-12-18 03:46:34'),
(1182, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationElectoralDistrictFields.php', '2021-12-18 03:46:34'),
(1183, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationFields.php', '2021-12-18 03:46:34'),
(1184, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationGeoEntitiesFields.php', '2021-12-18 03:46:34'),
(1185, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationLocationClusterFields.php', '2021-12-18 03:46:34'),
(1186, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationLocationExpansionFields.php', '2021-12-18 03:46:34'),
(1187, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationMarketFields.php', '2021-12-18 03:46:34'),
(1188, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationPlaceFields.php', '2021-12-18 03:46:34'),
(1189, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationPoliticalDistrictFields.php', '2021-12-18 03:46:34'),
(1190, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationRegionFields.php', '2021-12-18 03:46:34'),
(1191, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingGeoLocationZipFields.php', '2021-12-18 03:46:34'),
(1192, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingProductAudienceSpecFields.php', '2021-12-18 03:46:34'),
(1193, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingProductAudienceSubSpecFields.php', '2021-12-18 03:46:34'),
(1194, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingProspectingAudienceFields.php', '2021-12-18 03:46:34'),
(1195, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingRelaxationFields.php', '2021-12-18 03:46:34'),
(1196, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TargetingSentenceLineFields.php', '2021-12-18 03:46:34'),
(1197, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ThirdPartyMeasurementReportDatasetFields.php', '2021-12-18 03:46:34'),
(1198, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/TrackingAndConversionWithDefaultsFields.php', '2021-12-18 03:46:34'),
(1199, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/URLFields.php', '2021-12-18 03:46:34'),
(1200, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/UnifiedThreadFields.php', '2021-12-18 03:46:34'),
(1201, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/UserCoverPhotoFields.php', '2021-12-18 03:46:34'),
(1202, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/UserDeviceFields.php', '2021-12-18 03:46:34'),
(1203, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/UserFields.php', '2021-12-18 03:46:34'),
(1204, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/UserIDForAppFields.php', '2021-12-18 03:46:34'),
(1205, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/UserIDForPageFields.php', '2021-12-18 03:46:34'),
(1206, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/UserLeadGenDisclaimerResponseFields.php', '2021-12-18 03:46:34'),
(1207, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/UserLeadGenFieldDataFields.php', '2021-12-18 03:46:34'),
(1208, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/UserPaymentMobilePricepointsFields.php', '2021-12-18 03:46:34'),
(1209, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/ValueBasedEligibleSourceFields.php', '2021-12-18 03:46:34'),
(1210, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VehicleFields.php', '2021-12-18 03:46:34'),
(1211, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VehicleOfferFields.php', '2021-12-18 03:46:34'),
(1212, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VideoCopyrightConditionGroupFields.php', '2021-12-18 03:46:34'),
(1213, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VideoCopyrightFields.php', '2021-12-18 03:46:34'),
(1214, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VideoCopyrightGeoGateFields.php', '2021-12-18 03:46:34');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1215, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VideoCopyrightRuleFields.php', '2021-12-18 03:46:34'),
(1216, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VideoCopyrightSegmentFields.php', '2021-12-18 03:46:34'),
(1217, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VideoListFields.php', '2021-12-18 03:46:34'),
(1218, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VideoPollFields.php', '2021-12-18 03:46:34'),
(1219, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VideoThumbnailFields.php', '2021-12-18 03:46:34'),
(1220, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VideoUploadLimitsFields.php', '2021-12-18 03:46:34'),
(1221, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/VoipInfoFields.php', '2021-12-18 03:46:34'),
(1222, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/WebAppLinkFields.php', '2021-12-18 03:46:34'),
(1223, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/WhatsAppBusinessAccountFields.php', '2021-12-18 03:46:34'),
(1224, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/WhatsAppBusinessProfileFields.php', '2021-12-18 03:46:34'),
(1225, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/WindowsAppLinkFields.php', '2021-12-18 03:46:34'),
(1226, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/WindowsPhoneAppLinkFields.php', '2021-12-18 03:46:34'),
(1227, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Fields/WorkUserFrontlineFields.php', '2021-12-18 03:46:34'),
(1228, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Search/DemographicSearchClasses.php', '2021-12-18 03:46:34'),
(1229, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Search/TargetingSearchTypes.php', '2021-12-18 03:46:34'),
(1230, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/ActionSource.php', '2021-12-18 03:46:34'),
(1231, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/AdsPixelSettings.php', '2021-12-18 03:46:34'),
(1232, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/AsyncClient.php', '2021-12-18 03:46:34'),
(1233, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/BatchProcessor.php', '2021-12-18 03:46:34'),
(1234, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/Content.php', '2021-12-18 03:46:34'),
(1235, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/CustomData.php', '2021-12-18 03:46:34'),
(1236, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/DeliveryCategory.php', '2021-12-18 03:46:34'),
(1237, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/Event.php', '2021-12-18 03:46:34'),
(1238, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/EventRequest.php', '2021-12-18 03:46:34'),
(1239, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/EventRequestAsync.php', '2021-12-18 03:46:34'),
(1240, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/EventResponse.php', '2021-12-18 03:46:34'),
(1241, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/Gender.php', '2021-12-18 03:46:34'),
(1242, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/HttpMethod.php', '2021-12-18 03:46:34'),
(1243, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/HttpServiceClientConfig.php', '2021-12-18 03:46:34'),
(1244, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/HttpServiceInterface.php', '2021-12-18 03:46:34'),
(1245, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/Normalizer.php', '2021-12-18 03:46:34'),
(1246, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/Singleton.php', '2021-12-18 03:46:34'),
(1247, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/UserData.php', '2021-12-18 03:46:34'),
(1248, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/ServerSide/Util.php', '2021-12-18 03:46:34'),
(1249, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Signal/Content.php', '2021-12-18 03:46:34'),
(1250, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Signal/CustomData.php', '2021-12-18 03:46:35'),
(1251, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Signal/Event.php', '2021-12-18 03:46:35'),
(1252, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Signal/EventRequest.php', '2021-12-18 03:46:35'),
(1253, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Signal/UserData.php', '2021-12-18 03:46:35'),
(1254, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Signal/Util.php', '2021-12-18 03:46:35'),
(1255, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Traits/AdLabelAwareCrudObjectTrait.php', '2021-12-18 03:46:35'),
(1256, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Traits/FieldValidation.php', '2021-12-18 03:46:35'),
(1257, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Traits/ObjectValidation.php', '2021-12-18 03:46:35'),
(1258, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountAdRulesHistoryActionValues.php', '2021-12-18 03:46:35'),
(1259, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountAdRulesHistoryEvaluationTypeValues.php', '2021-12-18 03:46:35'),
(1260, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountAdVolumeRecommendationTypeValues.php', '2021-12-18 03:46:35'),
(1261, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountClaimObjectiveValues.php', '2021-12-18 03:46:35'),
(1262, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountContentTypeValues.php', '2021-12-18 03:46:35'),
(1263, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountCurrencyValues.php', '2021-12-18 03:46:35'),
(1264, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountDefaultObjectiveDefaultObjectiveForUserValues.php', '2021-12-18 03:46:35'),
(1265, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountDefaultObjectiveObjectiveForLevelValues.php', '2021-12-18 03:46:35'),
(1266, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountDeliveryEstimateOptimizationGoalValues.php', '2021-12-18 03:46:35'),
(1267, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountMatchedSearchApplicationsEdgeDataAppStoreValues.php', '2021-12-18 03:46:35'),
(1268, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountPermittedTasksValues.php', '2021-12-18 03:46:35'),
(1269, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountSubtypeValues.php', '2021-12-18 03:46:35'),
(1270, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountTargetingUnifiedAppStoreValues.php', '2021-12-18 03:46:35'),
(1271, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountTargetingUnifiedLimitTypeValues.php', '2021-12-18 03:46:35'),
(1272, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountTargetingUnifiedModeValues.php', '2021-12-18 03:46:35'),
(1273, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountTargetingUnifiedObjectiveValues.php', '2021-12-18 03:46:35'),
(1274, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountTargetingUnifiedRegulatedCategoriesValues.php', '2021-12-18 03:46:35'),
(1275, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountTargetingUnifiedWhitelistedTypesValues.php', '2021-12-18 03:46:35'),
(1276, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAccountTasksValues.php', '2021-12-18 03:46:35'),
(1277, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdActivityCategoryValues.php', '2021-12-18 03:46:35'),
(1278, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdActivityDataSourceValues.php', '2021-12-18 03:46:35'),
(1279, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdActivityEventTypeValues.php', '2021-12-18 03:46:35'),
(1280, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAssetFeedSpecCallToActionTypesValues.php', '2021-12-18 03:46:35'),
(1281, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAsyncRequestSetNotificationModeValues.php', '2021-12-18 03:46:35'),
(1282, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAsyncRequestSetNotificationStatusValues.php', '2021-12-18 03:46:35'),
(1283, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdAsyncRequestStatusesValues.php', '2021-12-18 03:46:35'),
(1284, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdBidTypeValues.php', '2021-12-18 03:46:35'),
(1285, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCampaignActivityBidStrategyNewValues.php', '2021-12-18 03:46:35'),
(1286, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCampaignActivityBidStrategyOldValues.php', '2021-12-18 03:46:35'),
(1287, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCampaignActivityBillingEventNewValues.php', '2021-12-18 03:46:35'),
(1288, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCampaignActivityBillingEventOldValues.php', '2021-12-18 03:46:35'),
(1289, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCampaignActivityOptimizationGoalNewValues.php', '2021-12-18 03:46:35'),
(1290, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCampaignActivityOptimizationGoalOldValues.php', '2021-12-18 03:46:35'),
(1291, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCampaignDeliveryEstimateOptimizationGoalValues.php', '2021-12-18 03:46:35'),
(1292, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCampaignGroupActivityObjectiveNewValues.php', '2021-12-18 03:46:35'),
(1293, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCampaignGroupActivityObjectiveOldValues.php', '2021-12-18 03:46:35'),
(1294, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdConfiguredStatusValues.php', '2021-12-18 03:46:35'),
(1295, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeApplinkTreatmentValues.php', '2021-12-18 03:46:35'),
(1296, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeAuthorizationCategoryValues.php', '2021-12-18 03:46:35'),
(1297, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeCallToActionTypeValues.php', '2021-12-18 03:46:35'),
(1298, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeCategorizationCriteriaValues.php', '2021-12-18 03:46:35'),
(1299, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeCategoryMediaSourceValues.php', '2021-12-18 03:46:35'),
(1300, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeDynamicAdVoiceValues.php', '2021-12-18 03:46:35'),
(1301, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeInstantCheckoutSettingValues.php', '2021-12-18 03:46:35'),
(1302, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataAttachmentStyleValues.php', '2021-12-18 03:46:35'),
(1303, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataCallToActionTypeValues.php', '2021-12-18 03:46:35'),
(1304, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataFormatOptionValues.php', '2021-12-18 03:46:35'),
(1305, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageLayerSpecBlendingModeValues.php', '2021-12-18 03:46:35'),
(1306, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageLayerSpecFrameSourceValues.php', '2021-12-18 03:46:35'),
(1307, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageLayerSpecImageSourceValues.php', '2021-12-18 03:46:35'),
(1308, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageLayerSpecLayerTypeValues.php', '2021-12-18 03:46:35'),
(1309, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageLayerSpecOverlayPositionValues.php', '2021-12-18 03:46:35'),
(1310, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageLayerSpecOverlayShapeValues.php', '2021-12-18 03:46:35'),
(1311, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageLayerSpecTextFontValues.php', '2021-12-18 03:46:35'),
(1312, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageOverlaySpecCustomTextTypeValues.php', '2021-12-18 03:46:35'),
(1313, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageOverlaySpecOverlayTemplateValues.php', '2021-12-18 03:46:35'),
(1314, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageOverlaySpecPositionValues.php', '2021-12-18 03:46:35'),
(1315, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageOverlaySpecTextFontValues.php', '2021-12-18 03:46:35'),
(1316, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageOverlaySpecTextTypeValues.php', '2021-12-18 03:46:35'),
(1317, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeLinkDataImageOverlaySpecThemeColorValues.php', '2021-12-18 03:46:35'),
(1318, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeObjectTypeValues.php', '2021-12-18 03:46:35'),
(1319, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeOperatorValues.php', '2021-12-18 03:46:35'),
(1320, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdCreativeStatusValues.php', '2021-12-18 03:46:35'),
(1321, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdDatePresetValues.php', '2021-12-18 03:46:35'),
(1322, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdEffectiveStatusValues.php', '2021-12-18 03:46:35'),
(1323, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdExecutionOptionsValues.php', '2021-12-18 03:46:35'),
(1324, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdImageStatusValues.php', '2021-12-18 03:46:35'),
(1325, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdNetworkAnalyticsSyncQueryResultAggregationPeriodValues.php', '2021-12-18 03:46:35'),
(1326, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdNetworkAnalyticsSyncQueryResultBreakdownsValues.php', '2021-12-18 03:46:35'),
(1327, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdNetworkAnalyticsSyncQueryResultMetricsValues.php', '2021-12-18 03:46:35'),
(1328, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdNetworkAnalyticsSyncQueryResultOrderingColumnValues.php', '2021-12-18 03:46:35'),
(1329, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdNetworkAnalyticsSyncQueryResultOrderingTypeValues.php', '2021-12-18 03:46:35'),
(1330, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdOperatorValues.php', '2021-12-18 03:46:35'),
(1331, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdPlacePageSetCategoryValues.php', '2021-12-18 03:46:35'),
(1332, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdPlacePageSetLocationTypesValues.php', '2021-12-18 03:46:35'),
(1333, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdPlacePageSetTargetedAreaTypeValues.php', '2021-12-18 03:46:35'),
(1334, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdPreviewAdFormatValues.php', '2021-12-18 03:46:35'),
(1335, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdPreviewRenderTypeValues.php', '2021-12-18 03:46:35'),
(1336, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdPromotedObjectCustomEventTypeValues.php', '2021-12-18 03:46:35'),
(1337, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRecommendationConfidenceValues.php', '2021-12-18 03:46:35'),
(1338, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRecommendationImportanceValues.php', '2021-12-18 03:46:35'),
(1339, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRuleEvaluationSpecEvaluationTypeValues.php', '2021-12-18 03:46:35'),
(1340, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRuleExecutionOptionsOperatorValues.php', '2021-12-18 03:46:35'),
(1341, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRuleExecutionSpecExecutionTypeValues.php', '2021-12-18 03:46:35'),
(1342, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRuleFiltersOperatorValues.php', '2021-12-18 03:46:35'),
(1343, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRuleHistoryActionValues.php', '2021-12-18 03:46:35'),
(1344, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRuleHistoryResultObjectTypeValues.php', '2021-12-18 03:46:35'),
(1345, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRuleStatusValues.php', '2021-12-18 03:46:35'),
(1346, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRuleTriggerOperatorValues.php', '2021-12-18 03:46:35'),
(1347, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdRuleTriggerTypeValues.php', '2021-12-18 03:46:35'),
(1348, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetBidStrategyValues.php', '2021-12-18 03:46:35'),
(1349, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetBillingEventValues.php', '2021-12-18 03:46:35'),
(1350, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetConfiguredStatusValues.php', '2021-12-18 03:46:35'),
(1351, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetDatePresetValues.php', '2021-12-18 03:46:35'),
(1352, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetDestinationTypeValues.php', '2021-12-18 03:46:35'),
(1353, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetEffectiveStatusValues.php', '2021-12-18 03:46:35'),
(1354, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetExecutionOptionsValues.php', '2021-12-18 03:46:35'),
(1355, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetFullFunnelExplorationModeValues.php', '2021-12-18 03:46:35'),
(1356, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetMultiOptimizationGoalWeightValues.php', '2021-12-18 03:46:35'),
(1357, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetOperatorValues.php', '2021-12-18 03:46:35'),
(1358, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetOptimizationGoalValues.php', '2021-12-18 03:46:35'),
(1359, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetOptimizationSubEventValues.php', '2021-12-18 03:46:35'),
(1360, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetStatusOptionValues.php', '2021-12-18 03:46:35'),
(1361, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetStatusValues.php', '2021-12-18 03:46:35'),
(1362, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdSetTuneForCategoryValues.php', '2021-12-18 03:46:35'),
(1363, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdStatusOptionValues.php', '2021-12-18 03:46:35'),
(1364, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdStatusValues.php', '2021-12-18 03:46:35'),
(1365, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdStudyCellCreationTemplateValues.php', '2021-12-18 03:46:35'),
(1366, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdStudyObjectiveTypeValues.php', '2021-12-18 03:46:35'),
(1367, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdStudyTypeValues.php', '2021-12-18 03:46:35'),
(1368, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdVideoBackdatedTimeGranularityValues.php', '2021-12-18 03:46:35'),
(1369, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdVideoContainerTypeValues.php', '2021-12-18 03:46:35'),
(1370, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdVideoContentCategoryValues.php', '2021-12-18 03:46:35'),
(1371, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdVideoFormattingValues.php', '2021-12-18 03:46:35'),
(1372, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdVideoOriginalProjectionTypeValues.php', '2021-12-18 03:46:35'),
(1373, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdVideoSwapModeValues.php', '2021-12-18 03:46:35'),
(1374, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdVideoTypeValues.php', '2021-12-18 03:46:35'),
(1375, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdVideoUnpublishedContentTypeValues.php', '2021-12-18 03:46:35'),
(1376, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdVideoUploadPhaseValues.php', '2021-12-18 03:46:35'),
(1377, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdgroupActivityObjectiveNewValues.php', '2021-12-18 03:46:35'),
(1378, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdgroupActivityObjectiveOldValues.php', '2021-12-18 03:46:35'),
(1379, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsInsightsActionAttributionWindowsValues.php', '2021-12-18 03:46:35'),
(1380, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsInsightsActionBreakdownsValues.php', '2021-12-18 03:46:35'),
(1381, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsInsightsActionReportTimeValues.php', '2021-12-18 03:46:35'),
(1382, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsInsightsBreakdownsValues.php', '2021-12-18 03:46:35'),
(1383, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsInsightsDatePresetValues.php', '2021-12-18 03:46:35'),
(1384, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsInsightsLevelValues.php', '2021-12-18 03:46:35'),
(1385, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsInsightsSummaryActionBreakdownsValues.php', '2021-12-18 03:46:35'),
(1386, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsPixelAutomaticMatchingFieldsValues.php', '2021-12-18 03:46:35'),
(1387, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsPixelDataUseSettingValues.php', '2021-12-18 03:46:35'),
(1388, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsPixelFirstPartyCookieStatusValues.php', '2021-12-18 03:46:35'),
(1389, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsPixelSortByValues.php', '2021-12-18 03:46:35'),
(1390, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsPixelStatsResultAggregationValues.php', '2021-12-18 03:46:35'),
(1391, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AdsPixelTasksValues.php', '2021-12-18 03:46:35'),
(1392, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AppRoles.php', '2021-12-18 03:46:35'),
(1393, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ApplicationAnPlatformsValues.php', '2021-12-18 03:46:35'),
(1394, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ApplicationLoggingSourceValues.php', '2021-12-18 03:46:35'),
(1395, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ApplicationLoggingTargetValues.php', '2021-12-18 03:46:35'),
(1396, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ApplicationMutationMethodValues.php', '2021-12-18 03:46:35'),
(1397, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ApplicationPlatformValues.php', '2021-12-18 03:46:35'),
(1398, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ApplicationPostMethodValues.php', '2021-12-18 03:46:35'),
(1399, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ApplicationRequestTypeValues.php', '2021-12-18 03:46:35'),
(1400, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ApplicationScoreTypeValues.php', '2021-12-18 03:46:35'),
(1401, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ApplicationSortOrderValues.php', '2021-12-18 03:46:35'),
(1402, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ApplicationSupportedPlatformsValues.php', '2021-12-18 03:46:35'),
(1403, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ArchivableCrudObjectEffectiveStatuses.php', '2021-12-18 03:46:35'),
(1404, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AsyncRequestStatusValues.php', '2021-12-18 03:46:35'),
(1405, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AsyncRequestTypeValues.php', '2021-12-18 03:46:35'),
(1406, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/AutomotiveModelBodyStyleValues.php', '2021-12-18 03:46:35'),
(1407, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BillingEvents.php', '2021-12-18 03:46:35'),
(1408, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessAgreementRequestStatusValues.php', '2021-12-18 03:46:35'),
(1409, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessAssetGroupAdaccountTasksValues.php', '2021-12-18 03:46:35'),
(1410, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessAssetGroupOfflineConversionDataSetTasksValues.php', '2021-12-18 03:46:35'),
(1411, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessAssetGroupPageTasksValues.php', '2021-12-18 03:46:35'),
(1412, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessAssetGroupPixelTasksValues.php', '2021-12-18 03:46:35'),
(1413, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessAssetSharingAgreementRequestStatusValues.php', '2021-12-18 03:46:35'),
(1414, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessOwnedObjectOnBehalfOfRequestStatusValues.php', '2021-12-18 03:46:35'),
(1415, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessPagePermittedTasksValues.php', '2021-12-18 03:46:35'),
(1416, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessPermittedTasksValues.php', '2021-12-18 03:46:35'),
(1417, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessRoleRequestRoleValues.php', '2021-12-18 03:46:35'),
(1418, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessRoles.php', '2021-12-18 03:46:35'),
(1419, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessSurveyBusinessTypeValues.php', '2021-12-18 03:46:35'),
(1420, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessTwoFactorTypeValues.php', '2021-12-18 03:46:35'),
(1421, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessUserRoleValues.php', '2021-12-18 03:46:35'),
(1422, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/BusinessVerticalValues.php', '2021-12-18 03:46:35'),
(1423, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CPASCollaborationRequestRequesterAgencyOrBrandValues.php', '2021-12-18 03:46:35'),
(1424, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CPASParentCatalogSettingsAttributionWindowsValues.php', '2021-12-18 03:46:35'),
(1425, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignBidStrategyValues.php', '2021-12-18 03:46:35'),
(1426, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignBuyingTypeValues.php', '2021-12-18 03:46:35'),
(1427, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignConfiguredStatusValues.php', '2021-12-18 03:46:35'),
(1428, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignDatePresetValues.php', '2021-12-18 03:46:35'),
(1429, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignEffectiveStatusValues.php', '2021-12-18 03:46:35'),
(1430, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignExecutionOptionsValues.php', '2021-12-18 03:46:35'),
(1431, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignObjectiveValues.php', '2021-12-18 03:46:35'),
(1432, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignOperatorValues.php', '2021-12-18 03:46:35'),
(1433, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignSmartPromotionTypeValues.php', '2021-12-18 03:46:35'),
(1434, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignSpecialAdCategoriesValues.php', '2021-12-18 03:46:35'),
(1435, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignSpecialAdCategoryCountryValues.php', '2021-12-18 03:46:35'),
(1436, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignSpecialAdCategoryValues.php', '2021-12-18 03:46:35'),
(1437, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignStatusOptionValues.php', '2021-12-18 03:46:35'),
(1438, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CampaignStatusValues.php', '2021-12-18 03:46:35'),
(1439, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CommentCommentPrivacyValueValues.php', '2021-12-18 03:46:35'),
(1440, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CommentFilterValues.php', '2021-12-18 03:46:35'),
(1441, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CommentLiveFilterValues.php', '2021-12-18 03:46:35'),
(1442, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CommentOrderValues.php', '2021-12-18 03:46:35'),
(1443, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CommerceOrderFiltersValues.php', '2021-12-18 03:46:35'),
(1444, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CommerceOrderReasonCodeValues.php', '2021-12-18 03:46:35'),
(1445, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CommerceOrderStateValues.php', '2021-12-18 03:46:35'),
(1446, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ConnectionObjectTypes.php', '2021-12-18 03:46:35'),
(1447, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ContentDeliveryReportPlatformValues.php', '2021-12-18 03:46:35'),
(1448, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ContentDeliveryReportPositionValues.php', '2021-12-18 03:46:35'),
(1449, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CustomAudienceClaimObjectiveValues.php', '2021-12-18 03:46:35'),
(1450, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CustomAudienceContentTypeValues.php', '2021-12-18 03:46:35'),
(1451, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CustomAudienceCustomerFileSourceValues.php', '2021-12-18 03:46:35'),
(1452, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CustomAudienceDataSourceSubTypeValues.php', '2021-12-18 03:46:35'),
(1453, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CustomAudienceDataSourceTypeValues.php', '2021-12-18 03:46:35'),
(1454, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CustomAudienceSubtypeValues.php', '2021-12-18 03:46:35'),
(1455, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CustomAudienceSubtypes.php', '2021-12-18 03:46:35'),
(1456, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CustomAudienceTypes.php', '2021-12-18 03:46:35'),
(1457, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CustomConversionCustomEventTypeValues.php', '2021-12-18 03:46:35'),
(1458, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/CustomConversionStatsResultAggregationValues.php', '2021-12-18 03:46:35'),
(1459, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/DACheckConnectionMethodValues.php', '2021-12-18 03:46:35'),
(1460, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/EntityAtTextRangeTypeValues.php', '2021-12-18 03:46:35'),
(1461, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/EventCategoryValues.php', '2021-12-18 03:46:35'),
(1462, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/EventEventStateFilterValues.php', '2021-12-18 03:46:35'),
(1463, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/EventOnlineEventFormatValues.php', '2021-12-18 03:46:35'),
(1464, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/EventTimeFilterValues.php', '2021-12-18 03:46:35'),
(1465, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/EventTypeValues.php', '2021-12-18 03:46:35'),
(1466, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ExtendedCreditAllocationConfigLiabilityTypeValues.php', '2021-12-18 03:46:35'),
(1467, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ExtendedCreditAllocationConfigPartitionTypeValues.php', '2021-12-18 03:46:35'),
(1468, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ExtendedCreditAllocationConfigSendBillToValues.php', '2021-12-18 03:46:35'),
(1469, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/FeedEncoding.php', '2021-12-18 03:46:35'),
(1470, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/GroupGroupTypeValues.php', '2021-12-18 03:46:35'),
(1471, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/GroupJoinSettingValues.php', '2021-12-18 03:46:35'),
(1472, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/GroupPostPermissionsValues.php', '2021-12-18 03:46:35'),
(1473, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/GroupPurposeValues.php', '2021-12-18 03:46:35'),
(1474, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ImageCopyrightGeoOwnershipValues.php', '2021-12-18 03:46:35'),
(1475, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/InsightsIncrements.php', '2021-12-18 03:46:35'),
(1476, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/InsightsOperators.php', '2021-12-18 03:46:35'),
(1477, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/InsightsResultDatePresetValues.php', '2021-12-18 03:46:35'),
(1478, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/InsightsResultPeriodValues.php', '2021-12-18 03:46:35'),
(1479, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/InstagramInsightsResultMetricValues.php', '2021-12-18 03:46:35'),
(1480, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/InstagramInsightsResultPeriodValues.php', '2021-12-18 03:46:35'),
(1481, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/InstantArticleInsightsQueryResultBreakdownValues.php', '2021-12-18 03:46:35'),
(1482, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/InstantArticleInsightsQueryResultPeriodValues.php', '2021-12-18 03:46:35'),
(1483, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LeadgenFormLocaleValues.php', '2021-12-18 03:46:35'),
(1484, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LeadgenFormStatusValues.php', '2021-12-18 03:46:35'),
(1485, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveEncoderCapAudioCodecsValues.php', '2021-12-18 03:46:35'),
(1486, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveEncoderCapStreamingProtocolsValues.php', '2021-12-18 03:46:35'),
(1487, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveEncoderCapVideoCodecsValues.php', '2021-12-18 03:46:35'),
(1488, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveEncoderStatusValues.php', '2021-12-18 03:46:35'),
(1489, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveVideoBroadcastStatusValues.php', '2021-12-18 03:46:35'),
(1490, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveVideoLiveCommentModerationSettingValues.php', '2021-12-18 03:46:35'),
(1491, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveVideoProjectionValues.php', '2021-12-18 03:46:35'),
(1492, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveVideoSourceValues.php', '2021-12-18 03:46:35'),
(1493, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveVideoSpatialAudioFormatValues.php', '2021-12-18 03:46:35'),
(1494, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveVideoStatusValues.php', '2021-12-18 03:46:35'),
(1495, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveVideoStereoscopicModeValues.php', '2021-12-18 03:46:35'),
(1496, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/LiveVideoStreamTypeValues.php', '2021-12-18 03:46:35'),
(1497, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/MeasurementUploadEventAggregationLevelValues.php', '2021-12-18 03:46:35'),
(1498, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/MeasurementUploadEventEventStatusValues.php', '2021-12-18 03:46:35'),
(1499, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/MeasurementUploadEventLookbackWindowValues.php', '2021-12-18 03:46:35'),
(1500, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/MeasurementUploadEventMatchUniverseValues.php', '2021-12-18 03:46:35'),
(1501, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/MeasurementUploadEventTimezoneValues.php', '2021-12-18 03:46:35'),
(1502, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/MediaFingerprintFingerprintContentTypeValues.php', '2021-12-18 03:46:35'),
(1503, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/NativeOfferBarcodeTypeValues.php', '2021-12-18 03:46:35'),
(1504, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/NativeOfferLocationTypeValues.php', '2021-12-18 03:46:35'),
(1505, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/NativeOfferUniqueCodesFileCodeTypeValues.php', '2021-12-18 03:46:35'),
(1506, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/OfflineConversionDataSetPermittedRolesValues.php', '2021-12-18 03:46:35'),
(1507, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/OfflineConversionDataSetRelationshipTypeValues.php', '2021-12-18 03:46:35'),
(1508, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/OracleTransactionTypeValues.php', '2021-12-18 03:46:35'),
(1509, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageAttireValues.php', '2021-12-18 03:46:35'),
(1510, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageBackdatedTimeGranularityValues.php', '2021-12-18 03:46:35'),
(1511, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageCallToActionAndroidDestinationTypeValues.php', '2021-12-18 03:46:35'),
(1512, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageCallToActionIphoneDestinationTypeValues.php', '2021-12-18 03:46:35'),
(1513, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageCallToActionTypeValues.php', '2021-12-18 03:46:35'),
(1514, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageCallToActionWebDestinationTypeValues.php', '2021-12-18 03:46:35'),
(1515, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageCheckinEntryPointValues.php', '2021-12-18 03:46:35'),
(1516, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageFoodStylesValues.php', '2021-12-18 03:46:35'),
(1517, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageFormattingValues.php', '2021-12-18 03:46:35'),
(1518, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageMessagingTypeValues.php', '2021-12-18 03:46:35'),
(1519, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageModelValues.php', '2021-12-18 03:46:35'),
(1520, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageNotificationTypeValues.php', '2021-12-18 03:46:35'),
(1521, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PagePermittedTasksValues.php', '2021-12-18 03:46:35'),
(1522, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PagePickupOptionsValues.php', '2021-12-18 03:46:35'),
(1523, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PagePlaceAttachmentSettingValues.php', '2021-12-18 03:46:35'),
(1524, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PagePostBackdatedTimeGranularityValues.php', '2021-12-18 03:46:35'),
(1525, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PagePostFeedStoryVisibilityValues.php', '2021-12-18 03:46:35'),
(1526, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PagePostSurfacesBlacklistValues.php', '2021-12-18 03:46:35'),
(1527, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PagePostTimelineVisibilityValues.php', '2021-12-18 03:46:35'),
(1528, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PagePostWithValues.php', '2021-12-18 03:46:35'),
(1529, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PagePostingToRedspaceValues.php', '2021-12-18 03:46:35'),
(1530, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PagePublishStatusValues.php', '2021-12-18 03:46:35'),
(1531, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageRoles.php', '2021-12-18 03:46:35'),
(1532, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageSenderActionValues.php', '2021-12-18 03:46:35'),
(1533, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageSubscribedFieldsValues.php', '2021-12-18 03:46:35'),
(1534, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageTargetSurfaceValues.php', '2021-12-18 03:46:35'),
(1535, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageTasksValues.php', '2021-12-18 03:46:35'),
(1536, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageTemporaryStatusValues.php', '2021-12-18 03:46:35'),
(1537, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageTypes.php', '2021-12-18 03:46:35'),
(1538, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PageUnpublishedContentTypeValues.php', '2021-12-18 03:46:35'),
(1539, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PaymentEnginePaymentReasonValues.php', '2021-12-18 03:46:35'),
(1540, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PermissionStatusValues.php', '2021-12-18 03:46:35'),
(1541, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PhotoBackdatedTimeGranularityValues.php', '2021-12-18 03:46:35'),
(1542, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PhotoTypeValues.php', '2021-12-18 03:46:35'),
(1543, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PhotoUnpublishedContentTypeValues.php', '2021-12-18 03:46:35'),
(1544, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PostBackdatedTimeGranularityValues.php', '2021-12-18 03:46:35'),
(1545, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PostCheckinEntryPointValues.php', '2021-12-18 03:46:35'),
(1546, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PostFeedStoryVisibilityValues.php', '2021-12-18 03:46:35'),
(1547, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PostFormattingValues.php', '2021-12-18 03:46:35'),
(1548, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PostPlaceAttachmentSettingValues.php', '2021-12-18 03:46:35'),
(1549, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PostPostSurfacesBlacklistValues.php', '2021-12-18 03:46:35'),
(1550, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PostPostingToRedspaceValues.php', '2021-12-18 03:46:35'),
(1551, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PostTargetSurfaceValues.php', '2021-12-18 03:46:35'),
(1552, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PostTimelineVisibilityValues.php', '2021-12-18 03:46:35'),
(1553, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/PostUnpublishedContentTypeValues.php', '2021-12-18 03:46:35'),
(1554, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductCatalogCategoryCategorizationCriteriaValues.php', '2021-12-18 03:46:35'),
(1555, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductCatalogItemSubTypeValues.php', '2021-12-18 03:46:35'),
(1556, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductCatalogPermittedRolesValues.php', '2021-12-18 03:46:35'),
(1557, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductCatalogPermittedTasksValues.php', '2021-12-18 03:46:35'),
(1558, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductCatalogStandardValues.php', '2021-12-18 03:46:35'),
(1559, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductCatalogTasksValues.php', '2021-12-18 03:46:35'),
(1560, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductCatalogVerticalValues.php', '2021-12-18 03:46:35'),
(1561, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductEventStatBreakdownsValues.php', '2021-12-18 03:46:35'),
(1562, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductEventStatDeviceTypeValues.php', '2021-12-18 03:46:35'),
(1563, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductEventStatEventValues.php', '2021-12-18 03:46:35'),
(1564, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedDelimiterValues.php', '2021-12-18 03:46:35'),
(1565, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedEncodingValues.php', '2021-12-18 03:46:35'),
(1566, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedFeedTypeValues.php', '2021-12-18 03:46:35'),
(1567, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedItemSubTypeValues.php', '2021-12-18 03:46:35'),
(1568, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedOverrideTypeValues.php', '2021-12-18 03:46:35'),
(1569, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedQuotedFieldsModeValues.php', '2021-12-18 03:46:35'),
(1570, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedRuleRuleTypeValues.php', '2021-12-18 03:46:35'),
(1571, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedScheduleDayOfWeekValues.php', '2021-12-18 03:46:35');
INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1572, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedScheduleIntervalValues.php', '2021-12-18 03:46:35'),
(1573, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedUploadErrorAffectedSurfacesValues.php', '2021-12-18 03:46:35'),
(1574, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedUploadErrorSeverityValues.php', '2021-12-18 03:46:36'),
(1575, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductFeedUploadInputMethodValues.php', '2021-12-18 03:46:36'),
(1576, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductItemARDataSurfacesValues.php', '2021-12-18 03:46:36'),
(1577, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductItemAgeGroupValues.php', '2021-12-18 03:46:36'),
(1578, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductItemAvailabilityValues.php', '2021-12-18 03:46:36'),
(1579, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductItemCommerceTaxCategoryValues.php', '2021-12-18 03:46:36'),
(1580, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductItemConditionValues.php', '2021-12-18 03:46:36'),
(1581, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductItemGenderValues.php', '2021-12-18 03:46:36'),
(1582, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductItemReviewStatusValues.php', '2021-12-18 03:46:36'),
(1583, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductItemShippingWeightUnitValues.php', '2021-12-18 03:46:36'),
(1584, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProductItemVisibilityValues.php', '2021-12-18 03:46:36'),
(1585, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProfilePictureSourceBreakingChangeValues.php', '2021-12-18 03:46:36'),
(1586, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProfilePictureSourceTypeValues.php', '2021-12-18 03:46:36'),
(1587, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProfileProfileTypeValues.php', '2021-12-18 03:46:36'),
(1588, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ProfileTypeValues.php', '2021-12-18 03:46:36'),
(1589, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ReachFrequencyPredictionActionValues.php', '2021-12-18 03:46:36'),
(1590, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ReachFrequencyPredictionBuyingTypeValues.php', '2021-12-18 03:46:36'),
(1591, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ReachFrequencyPredictionInstreamPackagesValues.php', '2021-12-18 03:46:36'),
(1592, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/ReachFrequencyPredictionStatuses.php', '2021-12-18 03:46:36'),
(1593, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/SystemUserRoleValues.php', '2021-12-18 03:46:36'),
(1594, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/TargetingDevicePlatformsValues.php', '2021-12-18 03:46:36'),
(1595, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/TargetingEffectiveDevicePlatformsValues.php', '2021-12-18 03:46:36'),
(1596, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/TermsOfService.php', '2021-12-18 03:46:36'),
(1597, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/URLScopesValues.php', '2021-12-18 03:46:36'),
(1598, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/UserFilteringValues.php', '2021-12-18 03:46:36'),
(1599, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/UserLocalNewsMegaphoneDismissStatusValues.php', '2021-12-18 03:46:36'),
(1600, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/UserLocalNewsSubscriptionStatusValues.php', '2021-12-18 03:46:36'),
(1601, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/UserPermissionRoles.php', '2021-12-18 03:46:36'),
(1602, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/UserTypeValues.php', '2021-12-18 03:46:36'),
(1603, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VehicleAvailabilityValues.php', '2021-12-18 03:46:36'),
(1604, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VehicleBodyStyleValues.php', '2021-12-18 03:46:36'),
(1605, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VehicleConditionValues.php', '2021-12-18 03:46:36'),
(1606, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VehicleDrivetrainValues.php', '2021-12-18 03:46:36'),
(1607, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VehicleFuelTypeValues.php', '2021-12-18 03:46:36'),
(1608, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VehicleStateOfVehicleValues.php', '2021-12-18 03:46:36'),
(1609, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VehicleTransmissionValues.php', '2021-12-18 03:46:36'),
(1610, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VehicleVehicleTypeValues.php', '2021-12-18 03:46:36'),
(1611, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VideoCopyrightContentCategoryValues.php', '2021-12-18 03:46:36'),
(1612, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VideoCopyrightMonitoringTypeValues.php', '2021-12-18 03:46:36'),
(1613, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VideoCopyrightRuleSourceValues.php', '2021-12-18 03:46:36'),
(1614, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VideoPollActionValues.php', '2021-12-18 03:46:36'),
(1615, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/VideoPollStatusValues.php', '2021-12-18 03:46:36'),
(1616, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/WhatsAppBusinessAccountCategoryValues.php', '2021-12-18 03:46:36'),
(1617, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Object/Values/WhatsAppBusinessAccountTasksValues.php', '2021-12-18 03:46:36'),
(1618, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http/Adapter/AbstractAdapterTest.php', '2021-12-18 03:46:36'),
(1619, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http/Adapter/CurlAdapterTest.php', '2021-12-18 03:46:36'),
(1620, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Http/Exception/RequestExceptionTest.php', '2021-12-18 03:46:36'),
(1621, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Logger/CurlLogger/JsonAwareParametersTest.php', '2021-12-18 03:46:36'),
(1622, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Logger/CurlLogger/JsonAwareTestTrait.php', '2021-12-18 03:46:36'),
(1623, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Logger/CurlLogger/JsonNodeTest.php', '2021-12-18 03:46:36'),
(1624, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/CustomAudienceNormalizers/EmailNormalizerTest.php', '2021-12-18 03:46:36'),
(1625, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/AsyncClientTest.php', '2021-12-18 03:46:36'),
(1626, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/BatchProcessorTest.php', '2021-12-18 03:46:36'),
(1627, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/ContentTest.php', '2021-12-18 03:46:36'),
(1628, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/CustomDataTest.php', '2021-12-18 03:46:36'),
(1629, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/EventRequestAsyncTest.php', '2021-12-18 03:46:36'),
(1630, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/EventRequestTest.php', '2021-12-18 03:46:36'),
(1631, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/EventTest.php', '2021-12-18 03:46:36'),
(1632, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/ServerSideEventTest.php', '2021-12-18 03:46:36'),
(1633, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/ServerSideNormalizeTest.php', '2021-12-18 03:46:36'),
(1634, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/ServerSideUtilTest.php', '2021-12-18 03:46:36'),
(1635, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/TestHelpers', '2021-12-18 03:46:36'),
(1636, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/UserDataTest.php', '2021-12-18 03:46:36'),
(1637, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/Signal/EventTest.php', '2021-12-18 03:46:36'),
(1638, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/BodySummarizer.php', '2021-12-18 03:46:36'),
(1639, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/BodySummarizerInterface.php', '2021-12-18 03:46:36'),
(1640, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Client.php', '2021-12-18 03:46:36'),
(1641, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/ClientInterface.php', '2021-12-18 03:46:36'),
(1642, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/ClientTrait.php', '2021-12-18 03:46:36'),
(1643, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Cookie', '2021-12-18 03:46:36'),
(1644, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Exception', '2021-12-18 03:46:36'),
(1645, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Handler', '2021-12-18 03:46:36'),
(1646, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/HandlerStack.php', '2021-12-18 03:46:36'),
(1647, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/MessageFormatter.php', '2021-12-18 03:46:36'),
(1648, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/MessageFormatterInterface.php', '2021-12-18 03:46:36'),
(1649, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Middleware.php', '2021-12-18 03:46:36'),
(1650, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Pool.php', '2021-12-18 03:46:36'),
(1651, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/PrepareBodyMiddleware.php', '2021-12-18 03:46:36'),
(1652, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/RedirectMiddleware.php', '2021-12-18 03:46:36'),
(1653, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/RequestOptions.php', '2021-12-18 03:46:36'),
(1654, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/RetryMiddleware.php', '2021-12-18 03:46:36'),
(1655, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/TransferStats.php', '2021-12-18 03:46:36'),
(1656, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Utils.php', '2021-12-18 03:46:36'),
(1657, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/functions.php', '2021-12-18 03:46:36'),
(1658, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/functions_include.php', '2021-12-18 03:46:36'),
(1659, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/vendor-bin/php-cs-fixer', '2021-12-18 03:46:36'),
(1660, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/vendor-bin/phpstan', '2021-12-18 03:46:36'),
(1661, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/vendor-bin/psalm', '2021-12-18 03:46:36'),
(1662, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/AggregateException.php', '2021-12-18 03:46:36'),
(1663, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/CancellationException.php', '2021-12-18 03:46:36'),
(1664, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/Coroutine.php', '2021-12-18 03:46:36'),
(1665, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/Create.php', '2021-12-18 03:46:36'),
(1666, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/Each.php', '2021-12-18 03:46:36'),
(1667, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/EachPromise.php', '2021-12-18 03:46:36'),
(1668, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/FulfilledPromise.php', '2021-12-18 03:46:36'),
(1669, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/Is.php', '2021-12-18 03:46:36'),
(1670, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/Promise.php', '2021-12-18 03:46:36'),
(1671, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/PromiseInterface.php', '2021-12-18 03:46:36'),
(1672, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/PromisorInterface.php', '2021-12-18 03:46:36'),
(1673, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/RejectedPromise.php', '2021-12-18 03:46:36'),
(1674, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/RejectionException.php', '2021-12-18 03:46:36'),
(1675, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/TaskQueue.php', '2021-12-18 03:46:36'),
(1676, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/TaskQueueInterface.php', '2021-12-18 03:46:36'),
(1677, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/Utils.php', '2021-12-18 03:46:36'),
(1678, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/functions.php', '2021-12-18 03:46:36'),
(1679, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/promises/src/functions_include.php', '2021-12-18 03:46:36'),
(1680, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/AppendStream.php', '2021-12-18 03:46:36'),
(1681, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/BufferStream.php', '2021-12-18 03:46:36'),
(1682, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/CachingStream.php', '2021-12-18 03:46:36'),
(1683, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/DroppingStream.php', '2021-12-18 03:46:36'),
(1684, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/FnStream.php', '2021-12-18 03:46:36'),
(1685, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/Header.php', '2021-12-18 03:46:36'),
(1686, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/InflateStream.php', '2021-12-18 03:46:36'),
(1687, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/LazyOpenStream.php', '2021-12-18 03:46:36'),
(1688, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/LimitStream.php', '2021-12-18 03:46:36'),
(1689, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/Message.php', '2021-12-18 03:46:36'),
(1690, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/MessageTrait.php', '2021-12-18 03:46:36'),
(1691, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/MimeType.php', '2021-12-18 03:46:36'),
(1692, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/MultipartStream.php', '2021-12-18 03:46:36'),
(1693, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/NoSeekStream.php', '2021-12-18 03:46:36'),
(1694, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/PumpStream.php', '2021-12-18 03:46:36'),
(1695, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/Query.php', '2021-12-18 03:46:36'),
(1696, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/Request.php', '2021-12-18 03:46:36'),
(1697, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/Response.php', '2021-12-18 03:46:36'),
(1698, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/Rfc7230.php', '2021-12-18 03:46:36'),
(1699, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/ServerRequest.php', '2021-12-18 03:46:36'),
(1700, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/Stream.php', '2021-12-18 03:46:36'),
(1701, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/StreamDecoratorTrait.php', '2021-12-18 03:46:36'),
(1702, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/StreamWrapper.php', '2021-12-18 03:46:36'),
(1703, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/UploadedFile.php', '2021-12-18 03:46:36'),
(1704, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/Uri.php', '2021-12-18 03:46:36'),
(1705, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/UriNormalizer.php', '2021-12-18 03:46:36'),
(1706, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/UriResolver.php', '2021-12-18 03:46:36'),
(1707, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/Utils.php', '2021-12-18 03:46:36'),
(1708, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/functions.php', '2021-12-18 03:46:36'),
(1709, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/psr7/src/functions_include.php', '2021-12-18 03:46:36'),
(1710, 2, 'system/library/vendor/facebook_business/vendor/psr/http-client/src/ClientExceptionInterface.php', '2021-12-18 03:46:36'),
(1711, 2, 'system/library/vendor/facebook_business/vendor/psr/http-client/src/ClientInterface.php', '2021-12-18 03:46:36'),
(1712, 2, 'system/library/vendor/facebook_business/vendor/psr/http-client/src/NetworkExceptionInterface.php', '2021-12-18 03:46:36'),
(1713, 2, 'system/library/vendor/facebook_business/vendor/psr/http-client/src/RequestExceptionInterface.php', '2021-12-18 03:46:36'),
(1714, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/src/MessageInterface.php', '2021-12-18 03:46:36'),
(1715, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/src/RequestInterface.php', '2021-12-18 03:46:36'),
(1716, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/src/ResponseInterface.php', '2021-12-18 03:46:36'),
(1717, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/src/ServerRequestInterface.php', '2021-12-18 03:46:36'),
(1718, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/src/StreamInterface.php', '2021-12-18 03:46:36'),
(1719, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/src/UploadedFileInterface.php', '2021-12-18 03:46:36'),
(1720, 2, 'system/library/vendor/facebook_business/vendor/psr/http-message/src/UriInterface.php', '2021-12-18 03:46:36'),
(1721, 2, 'system/library/vendor/facebook_business/vendor/ralouphie/getallheaders/src/getallheaders.php', '2021-12-18 03:46:36'),
(1722, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Adapter/Curl/AbstractCurl.php', '2021-12-18 03:46:36'),
(1723, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Adapter/Curl/Curl.php', '2021-12-18 03:46:36'),
(1724, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Adapter/Curl/Curl55.php', '2021-12-18 03:46:36'),
(1725, 2, 'system/library/vendor/facebook_business/src/FacebookAds/Http/Adapter/Curl/CurlInterface.php', '2021-12-18 03:46:36'),
(1726, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/TestHelpers/AnotherHttpService.php', '2021-12-18 03:46:36'),
(1727, 2, 'system/library/vendor/facebook_business/test/FacebookAdsTest/Object/ServerSide/TestHelpers/FakeHttpService.php', '2021-12-18 03:46:36'),
(1728, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Cookie/CookieJar.php', '2021-12-18 03:46:36'),
(1729, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Cookie/CookieJarInterface.php', '2021-12-18 03:46:36'),
(1730, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Cookie/FileCookieJar.php', '2021-12-18 03:46:36'),
(1731, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Cookie/SessionCookieJar.php', '2021-12-18 03:46:36'),
(1732, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Cookie/SetCookie.php', '2021-12-18 03:46:36'),
(1733, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Exception/BadResponseException.php', '2021-12-18 03:46:36'),
(1734, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Exception/ClientException.php', '2021-12-18 03:46:36'),
(1735, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Exception/ConnectException.php', '2021-12-18 03:46:36'),
(1736, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Exception/GuzzleException.php', '2021-12-18 03:46:36'),
(1737, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Exception/InvalidArgumentException.php', '2021-12-18 03:46:36'),
(1738, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Exception/RequestException.php', '2021-12-18 03:46:36'),
(1739, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Exception/ServerException.php', '2021-12-18 03:46:36'),
(1740, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Exception/TooManyRedirectsException.php', '2021-12-18 03:46:36'),
(1741, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Exception/TransferException.php', '2021-12-18 03:46:36'),
(1742, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Handler/CurlFactory.php', '2021-12-18 03:46:36'),
(1743, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Handler/CurlFactoryInterface.php', '2021-12-18 03:46:36'),
(1744, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Handler/CurlHandler.php', '2021-12-18 03:46:36'),
(1745, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Handler/CurlMultiHandler.php', '2021-12-18 03:46:36'),
(1746, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Handler/EasyHandle.php', '2021-12-18 03:46:36'),
(1747, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Handler/HeaderProcessor.php', '2021-12-18 03:46:36'),
(1748, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Handler/MockHandler.php', '2021-12-18 03:46:36'),
(1749, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Handler/Proxy.php', '2021-12-18 03:46:36'),
(1750, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/src/Handler/StreamHandler.php', '2021-12-18 03:46:36'),
(1751, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/vendor-bin/php-cs-fixer/composer.json', '2021-12-18 03:46:36'),
(1752, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/vendor-bin/phpstan/composer.json', '2021-12-18 03:46:36'),
(1753, 2, 'system/library/vendor/facebook_business/vendor/guzzlehttp/guzzle/vendor-bin/psalm/composer.json', '2021-12-18 03:46:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_googleshopping_category`
--

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `conversions` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `conversion_value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_googleshopping_product`
--

INSERT INTO `oc_googleshopping_product` (`product_advertise_google_id`, `product_id`, `store_id`, `has_issues`, `destination_status`, `impressions`, `clicks`, `conversions`, `cost`, `conversion_value`, `google_product_category`, `condition`, `adult`, `multipack`, `is_bundle`, `age_group`, `color`, `gender`, `size_type`, `size_system`, `size`, `is_modified`) VALUES
(1, 50, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 51, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(3, 52, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(4, 53, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(5, 54, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(6, 55, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 57, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(9, 58, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(10, 59, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(11, 60, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(12, 61, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(13, 62, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(14, 63, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(15, 64, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(16, 65, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(17, 66, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(18, 67, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(19, 68, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(20, 69, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(21, 70, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(22, 71, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(23, 72, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(24, 73, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(25, 74, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(26, 75, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(27, 76, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(28, 77, 0, NULL, 'pending', 0, 0, 0, '0.0000', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_googleshopping_product_status`
--

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_googleshopping_product_target`
--

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_googleshopping_target`
--

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 2, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', ''),
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 2, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 2, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 2, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1),
(2, 'Việt Nam', 'vi-vn', 'vi_VN.UTF-8, vi_VN, vi-vn, vietnamese', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(67, 1, 'carousel.29', 'content_top', 3),
(66, 1, 'slideshow.27', 'content_top', 1),
(65, 1, 'featured.28', 'content_top', 2),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(42, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(54, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 1, 'Full Width Module', 'webocreation_full_width', 'Rupak Nepali', '1.0', 'https://webocreation.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>Full Width Module</name>\n    <version>1.0</version>\n    <author>Rupak Nepali</author>\n    <link>https://webocreation.com</link>\n    <code>webocreation_full_width</code>\n    <file path=\"catalog/controller/*/*.php\">\n        <operation>\n            <search><![CDATA[ $data[\'column_left\'] = $this->load->controller(\'common/column_left\'); ]]></search>\n            <add position=\"after\"><![CDATA[\n                $data[\'content_full\'] = $this->load->controller(\'extension/module/content_full\');\n                $data[\'content_full_bottom\'] = $this->load->controller(\'extension/module/content_full_bottom\');\n            ]]>            </add>\n        </operation>\n    </file>\n    <file path=\"catalog/view/theme/*/template/*/*.twig\">\n        <operation>\n            <search><![CDATA[ {{ header }} ]]></search>\n            <add position=\"after\"><![CDATA[\n                {{ content_full }}\n            ]]>            </add>\n        </operation>\n        <operation>\n            <search><![CDATA[ {{ footer }} ]]></search>\n            <add position=\"before\"><![CDATA[\n                {{ content_full_bottom }}\n            ]]>            </add>\n        </operation>\n    </file>\n\n    <file path=\"admin/language/*/design/layout.php\">\n        <operation>\n            <search><![CDATA[ $_[\'text_column_right\'] ]]></search>\n            <add position=\"before\"><![CDATA[ $_[\'text_content_top_full_width\']   = \'Content Top Full Width \';$_[\'text_content_bottom_full_width\']   = \'Content Bottom Full Width \';  ]]></add>\n        </operation>\n    </file>\n\n    <file path=\"admin/view/template/design/layout_form.twig\">\n        <operation>\n            <search><![CDATA[ \n            {% set module_row = 0 %}\n             ]]>            </search>\n            <add position=\"after\"><![CDATA[ \n\n            <div class=\"col-lg-12 col-md-12 col-sm-12\">\n<table id=\"module-content-full\" class=\"table table-striped table-bordered table-hover\">\n<thead>\n<tr>\n<td class=\"text-center\">{{text_content_top_full_width}}</td>\n</tr>\n</thead>\n<tbody>\n                    {% for layout_module in layout_modules %}\n                    {% if layout_module.position == \'content_full\' %}\n                        <tr id=\"module-row{{ module_row }}\">\n<td class=\"text-left\">\n<div class=\"input-group\">\n<select name=\"layout_module[{{ module_row }}][code]\" class=\"form-control input-sm\">\n                            {% for extension in extensions %}\n                                        <optgroup label=\"{{ extension.name }}\">\n                            {% if not extension.module %}\n                            {% if extension.code == layout_module.code %}\n                                            <option value=\"{{ extension.code }}\" selected=\"selected\">{{ extension.name }}</option>\n                            {% else %}\n                                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\n                            {% endif %}\n                            {% else %}\n                            {% for module in extension.module %}\n                            {% if module.code == layout_module.code %}\n                                            <option value=\"{{ module.code }}\" selected=\"selected\">{{ module.name }}</option>\n                            {% else %}\n                                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\n                            {% endif %}\n                            {% endfor %}\n                            {% endif %}\n                                        </optgroup>\n                            {% endfor %}\n                                    </select>\n<input type=\"hidden\" name=\"layout_module[{{ module_row }}][position]\" value=\"{{ layout_module.position }}\" />\n<input type=\"hidden\" name=\"layout_module[{{ module_row }}][sort_order]\" value=\"{{ layout_module.sort_order }}\" />\n<div class=\"input-group-btn\">\n<a href=\"{{ layout_module.edit }}\" type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_edit }}\" target=\"_blank\" class=\"btn btn-primary btn-sm\">\n<i class=\"fa fa-pencil\"></i>\n</a>\n<button type=\"button\" onclick=\"$(\'#module-row{{ module_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger btn-sm\">\n<i class=\"fa fa fa-minus-circle\"></i>\n</button>\n</div>\n</div>\n</td>\n</tr>\n                    {% set module_row = module_row + 1 %}\n                    {% endif %}\n                    {% endfor %}\n                    </tbody>\n<tfoot>\n<tr>\n<td class=\"text-left\">\n<div class=\"input-group\">\n<select class=\"form-control input-sm\">\n<option value=\"\"></option>\n                            {% for extension in extensions %}\n                                        <optgroup label=\"{{ extension.name }}\">\n                            {% if not extension.module %}\n                                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\n                            {% else %}\n                            {% for module in extension.module %}\n                                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\n                            {% endfor %}\n                            {% endif %}\n                                        </optgroup>\n                            {% endfor %}\n                                    </select>\n<div class=\"input-group-btn\">\n<button type=\"button\" onclick=\"addModule(\'content-full\');\" data-toggle=\"tooltip\" title=\"{{ button_module_add }}\" class=\"btn btn-primary btn-sm\">\n<i class=\"fa fa-plus-circle\"></i>\n</button>\n</div>\n</div>\n</td>\n</tr>\n</tfoot>\n</table>\n</div>\n             ]]>\n            </add>\n        </operation>\n\n        <operation>\n            <search index=\"1\"><![CDATA[ </fieldset> ]]></search>\n            <add position=\"before\"><![CDATA[ \n\n            <div class=\"col-lg-12 col-md-12 col-sm-12\">\n<table id=\"module-bottom-full\" class=\"table table-striped table-bordered table-hover\">\n<thead>\n<tr>\n<td class=\"text-center\">{{text_content_bottom_full_width}}</td>\n</tr>\n</thead>\n<tbody>\n                    {% for layout_module in layout_modules %}\n                    {% if layout_module.position == \'bottom_full\' %}\n                        <tr id=\"module-row{{ module_row }}\">\n<td class=\"text-left\">\n<div class=\"input-group\">\n<select name=\"layout_module[{{ module_row }}][code]\" class=\"form-control input-sm\">\n                            {% for extension in extensions %}\n                                        <optgroup label=\"{{ extension.name }}\">\n                            {% if not extension.module %}\n                            {% if extension.code == layout_module.code %}\n                                            <option value=\"{{ extension.code }}\" selected=\"selected\">{{ extension.name }}</option>\n                            {% else %}\n                                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\n                            {% endif %}\n                            {% else %}\n                            {% for module in extension.module %}\n                            {% if module.code == layout_module.code %}\n                                            <option value=\"{{ module.code }}\" selected=\"selected\">{{ module.name }}</option>\n                            {% else %}\n                                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\n                            {% endif %}\n                            {% endfor %}\n                            {% endif %}\n                                        </optgroup>\n                            {% endfor %}\n                                    </select>\n<input type=\"hidden\" name=\"layout_module[{{ module_row }}][position]\" value=\"{{ layout_module.position }}\" />\n<input type=\"hidden\" name=\"layout_module[{{ module_row }}][sort_order]\" value=\"{{ layout_module.sort_order }}\" />\n<div class=\"input-group-btn\">\n<a href=\"{{ layout_module.edit }}\" type=\"button\" data-toggle=\"tooltip\" title=\"{{ button_edit }}\" target=\"_blank\" class=\"btn btn-primary btn-sm\">\n<i class=\"fa fa-pencil\"></i>\n</a>\n<button type=\"button\" onclick=\"$(\'#module-row{{ module_row }}\').remove();\" data-toggle=\"tooltip\" title=\"{{ button_remove }}\" class=\"btn btn-danger btn-sm\">\n<i class=\"fa fa fa-minus-circle\"></i>\n</button>\n</div>\n</div>\n</td>\n</tr>\n                    {% set module_row = module_row + 1 %}\n                    {% endif %}\n                    {% endfor %}\n                    </tbody>\n<tfoot>\n<tr>\n<td class=\"text-left\">\n<div class=\"input-group\">\n<select class=\"form-control input-sm\">\n<option value=\"\"></option>\n                            {% for extension in extensions %}\n                                        <optgroup label=\"{{ extension.name }}\">\n                            {% if not extension.module %}\n                                            <option value=\"{{ extension.code }}\">{{ extension.name }}</option>\n                            {% else %}\n                            {% for module in extension.module %}\n                                            <option value=\"{{ module.code }}\">{{ module.name }}</option>\n                            {% endfor %}\n                            {% endif %}\n                                        </optgroup>\n                            {% endfor %}\n                                    </select>\n<div class=\"input-group-btn\">\n<button type=\"button\" onclick=\"addModule(\'bottom-full\');\" data-toggle=\"tooltip\" title=\"{{ button_module_add }}\" class=\"btn btn-primary btn-sm\">\n<i class=\"fa fa-plus-circle\"></i>\n</button>\n</div>\n</div>\n</td>\n</tr>\n</tfoot>\n</table>\n</div>\n             ]]>\n            </add>\n        </operation>\n\n        <operation>\n            <search><![CDATA[ $(\'#module-column-left, #module-column-right, #module-content-top, #module-content-bottom\').delegate(\'select[name*=\\\'code\\\']\', \'change\', function() {\n	var part = this.value.split(\'.\'); ]]></search>\n            <add position=\"replace\"><![CDATA[ \n            $(\'#module-content-full, #module-bottom-full, #module-column-left, #module-column-right, #module-content-top, #module-content-bottom\').delegate(\'select[name*=\\\'code\\\']\', \'change\', function() {\n	var part = this.value.split(\'.\');\n             ]]>\n            </add>\n        </operation>\n\n        <operation>\n            <search><![CDATA[ $(\'#module-column-left, #module-column-right, #module-content-top, #module-content-bottom\').trigger(\'change\'); ]]></search>\n            <add position=\"replace\"><![CDATA[ $(\'#module-content-full, #module-bottom-full, #module-column-left, #module-column-right, #module-content-top, #module-content-bottom\').trigger(\'change\');\n             ]]>\n            </add>\n        </operation>\n    </file>\n</modification>', 1, '2021-12-09 16:59:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product_name\":\"\",\"product\":[\"42\",\"54\",\"55\",\"51\",\"58\",\"59\",\"62\",\"64\"],\"limit\":\"8\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"7\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 1, 1, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '[]', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '27005.0000', 1, 0, '0.0000', 0, '', 2, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5', '2021-12-10 14:33:01', '2021-12-10 14:33:07'),
(2, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 1, 1, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '[]', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '27005.0000', 1, 0, '0.0000', 0, '', 2, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5', '2021-12-10 14:33:19', '2021-12-10 14:33:50'),
(3, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 1, 1, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '[]', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '27005.0000', 1, 0, '0.0000', 0, '', 2, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'vi-VN,vi;q=0.9,en-US;q=0.8,en;q=0.7', '2021-12-11 00:18:14', '2021-12-11 00:18:36'),
(4, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 1, 1, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '[]', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '37005.0000', 1, 0, '0.0000', 0, '', 2, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5', '2021-12-11 00:46:54', '2021-12-11 00:47:47'),
(5, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 1, 1, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '[]', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '27005.0000', 1, 0, '0.0000', 0, '', 2, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.84 Safari/537.36', 'vi-VN,vi;q=0.9,fr-FR;q=0.8,fr;q=0.7,en-US;q=0.6,en;q=0.5', '2021-12-11 01:15:37', '2021-12-11 01:15:45'),
(6, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 1, 1, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '[]', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '36005.0000', 1, 0, '0.0000', 0, '', 1, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'en-US,en;q=0.9', '2022-01-08 19:36:37', '2022-01-08 19:36:47'),
(7, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 0, 1, 'Ngân', 'Huỳnh', 'huynhthihongngancna@gmail.com', '01234567891', '', '[]', 'Ngân', 'Huỳnh', 'Công ty Nhân sự 1 thành viên Hồng Ân', 'Thủ Dầu 1, thành phố Bình Dướngz', 'Thủ Dầu 1, thành phố Bình Dướngz', 'Bình Dương', '75000', 'Viet Nam', 230, 'Binh Duong', 3759, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh', 'Công ty Nhân sự 1 thành viên Hồng Ân', 'Thủ Dầu 1, thành phố Bình Dướngz', 'Thủ Dầu 1, thành phố Bình Dướngz', 'Bình Dương', '75000', 'Viet Nam', 230, 'Binh Duong', 3759, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '40005.0000', 1, 0, '0.0000', 0, '', 2, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'vi-VN,vi;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-09 09:13:11', '2022-01-09 09:13:58'),
(8, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 1, 1, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '[]', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '94005.0000', 1, 0, '0.0000', 0, '', 2, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'vi-VN,vi;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-09 19:04:14', '2022-01-09 19:04:23'),
(9, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 1, 1, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '[]', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '67005.0000', 1, 0, '0.0000', 0, '', 2, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'vi-VN,vi;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-09 19:08:52', '2022-01-09 19:09:00'),
(10, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 1, 1, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '[]', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '175005.0000', 1, 0, '0.0000', 0, '', 2, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'vi-VN,vi;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-09 19:20:03', '2022-01-09 19:20:12'),
(11, 0, 'INV-2021-00', 0, 'RAU MÁ MIX', 'http://localhost:8080/upload/', 1, 1, 'Ngân', 'Huỳnh Thị Hồng', 'hthnngan@gmail.com', '0370078945', '', '[]', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Cash On Delivery', 'cod', 'Ngân', 'Huỳnh Thị Hồng', '', 'TpHCM', 'TpHCM', 'TpHCM', '70000', 'Viet Nam', 230, 'Ho Chi Minh City', 3780, '', '[]', 'Flat Shipping Rate', 'flat.flat', '', '90005.0000', 1, 0, '0.0000', 0, '', 2, 4, 'VNĐ', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', 'vi-VN,vi;q=0.9,en-US;q=0.8,en;q=0.7', '2022-01-09 19:22:50', '2022-01-09 19:23:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2021-12-10 14:33:07'),
(2, 2, 1, 0, '', '2021-12-10 14:33:24'),
(3, 2, 1, 0, '', '2021-12-10 14:33:50'),
(4, 3, 1, 0, '', '2021-12-11 00:18:20'),
(5, 3, 1, 0, '', '2021-12-11 00:18:36'),
(6, 4, 1, 0, '', '2021-12-11 00:47:00'),
(7, 4, 1, 0, '', '2021-12-11 00:47:47'),
(8, 5, 1, 0, '', '2021-12-11 01:15:42'),
(9, 5, 1, 0, '', '2021-12-11 01:15:45'),
(10, 6, 1, 0, '', '2022-01-08 19:36:43'),
(11, 6, 1, 0, '', '2022-01-08 19:36:47'),
(12, 7, 1, 0, '', '2022-01-09 09:13:52'),
(13, 7, 1, 0, '', '2022-01-09 09:13:58'),
(14, 8, 1, 0, '', '2022-01-09 19:04:20'),
(15, 8, 1, 0, '', '2022-01-09 19:04:23'),
(16, 9, 1, 0, '', '2022-01-09 19:08:58'),
(17, 9, 1, 0, '', '2022-01-09 19:09:00'),
(18, 10, 1, 0, '', '2022-01-09 19:20:09'),
(19, 10, 1, 0, '', '2022-01-09 19:20:12'),
(20, 11, 1, 0, '', '2022-01-09 19:22:55'),
(21, 11, 1, 0, '', '2022-01-09 19:23:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 8, 16, 228, 0, 'Text', '12', 'text'),
(2, 9, 19, 228, 0, 'Text', '12', 'text');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 61, 'Thạch lá dứa', 'Product 12', 1, '7000.0000', '7000.0000', '0.0000', 0),
(2, 1, 58, 'Khoai môn sữa dừa', 'Product 9', 1, '20000.0000', '20000.0000', '0.0000', 0),
(3, 2, 61, 'Thạch lá dứa', 'Product 12', 1, '7000.0000', '7000.0000', '0.0000', 0),
(4, 2, 58, 'Khoai môn sữa dừa', 'Product 9', 1, '20000.0000', '20000.0000', '0.0000', 0),
(5, 3, 61, 'Thạch lá dứa', 'Product 12', 1, '7000.0000', '7000.0000', '0.0000', 0),
(6, 3, 58, 'Khoai môn sữa dừa', 'Product 10', 1, '20000.0000', '20000.0000', '0.0000', 0),
(7, 4, 65, 'Combo 2', 'Product 17', 1, '30000.0000', '30000.0000', '0.0000', 0),
(8, 4, 64, 'Thạch nha đam', 'Product 15', 1, '7000.0000', '7000.0000', '0.0000', 0),
(9, 5, 64, 'Thạch nha đam', 'Product 15', 1, '7000.0000', '7000.0000', '0.0000', 0),
(10, 5, 55, 'Rau má mix khoai môn sữa dừa', 'Product 7', 1, '20000.0000', '20000.0000', '0.0000', 0),
(11, 6, 64, 'Thạch nha đam', 'Product 15', 2, '7000.0000', '14000.0000', '0.0000', 0),
(12, 6, 51, 'Rau Má Mix Sầu Riêng Sữa Dừa (MỚI)', 'Product 3', 1, '22000.0000', '22000.0000', '0.0000', 0),
(13, 7, 55, 'Rau má mix khoai môn sữa dừa', 'Product 7', 2, '20000.0000', '40000.0000', '0.0000', 0),
(14, 8, 58, 'Khoai môn sữa dừa', 'Product 10', 1, '20000.0000', '20000.0000', '0.0000', 0),
(15, 8, 55, 'Rau má mix khoai môn sữa dừa', 'Product 7', 3, '20000.0000', '60000.0000', '0.0000', 0),
(16, 8, 59, 'Sương Sáo Hạt Chia', 'Product 10', 1, '7000.0000', '7000.0000', '0.0000', 0),
(17, 8, 64, 'Thạch nha đam', 'Product 15', 1, '7000.0000', '7000.0000', '0.0000', 0),
(18, 9, 55, 'Rau má mix khoai môn sữa dừa', 'Product 7', 2, '20000.0000', '40000.0000', '0.0000', 0),
(19, 9, 59, 'Sương Sáo Hạt Chia', 'Product 10', 1, '7000.0000', '7000.0000', '0.0000', 0),
(20, 9, 50, 'Rau má mix Macchiato', 'Product 2', 1, '20000.0000', '20000.0000', '0.0000', 0),
(21, 10, 64, 'Thạch nha đam', 'Product 15', 1, '7000.0000', '7000.0000', '0.0000', 0),
(22, 10, 55, 'Rau má mix khoai môn sữa dừa', 'Product 7', 2, '20000.0000', '40000.0000', '0.0000', 0),
(23, 10, 76, 'Bánh Tráng Mix Khô Gà Lá Chanh', 'Product 26', 1, '18000.0000', '18000.0000', '0.0000', 0),
(24, 10, 74, 'Bánh Tráng Mix Khô Bò', 'Product 25', 5, '18000.0000', '90000.0000', '0.0000', 0),
(25, 10, 54, 'Rau má mix đậu xanh sữa dừa', 'Product 6', 1, '20000.0000', '20000.0000', '0.0000', 0),
(26, 11, 74, 'Bánh Tráng Mix Khô Bò', 'Product 25', 5, '18000.0000', '90000.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-Total', '27000.0000', 1),
(2, 1, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(3, 1, 'total', 'Total', '27005.0000', 9),
(4, 2, 'sub_total', 'Sub-Total', '27000.0000', 1),
(5, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(6, 2, 'total', 'Total', '27005.0000', 9),
(7, 3, 'sub_total', 'Sub-Total', '27000.0000', 1),
(8, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(9, 3, 'total', 'Total', '27005.0000', 9),
(10, 4, 'sub_total', 'Sub-Total', '37000.0000', 1),
(11, 4, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(12, 4, 'total', 'Total', '37005.0000', 9),
(13, 5, 'sub_total', 'Sub-Total', '27000.0000', 1),
(14, 5, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(15, 5, 'total', 'Total', '27005.0000', 9),
(16, 6, 'sub_total', 'Sub-Total', '36000.0000', 1),
(17, 6, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(18, 6, 'total', 'Total', '36005.0000', 9),
(19, 7, 'sub_total', 'Sub-Total', '40000.0000', 1),
(20, 7, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(21, 7, 'total', 'Total', '40005.0000', 9),
(22, 8, 'sub_total', 'Sub-Total', '94000.0000', 1),
(23, 8, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(24, 8, 'total', 'Total', '94005.0000', 9),
(25, 9, 'sub_total', 'Sub-Total', '67000.0000', 1),
(26, 9, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(27, 9, 'total', 'Total', '67005.0000', 9),
(28, 10, 'sub_total', 'Sub-Total', '175000.0000', 1),
(29, 10, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(30, 10, 'total', 'Total', '175005.0000', 9),
(31, 11, 'sub_total', 'Sub-Total', '90000.0000', 1),
(32, 11, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(33, 11, 'total', 'Total', '90005.0000', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(67, 'Product 19', '', '', '', '', '', '', '', 15, 6, 'catalog/RauMaMix/combo-73.jpg', 0, 1, '32000.0000', 0, 0, '2022-01-08', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2022-01-08 19:51:50', '2022-01-09 19:14:58'),
(64, 'Product 15', '', '', '', '', '', '', '', 4, 5, 'catalog/RauMaMix/Thach-nha-dam.jpg', 8, 1, '7000.0000', 100, 9, '2021-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 5, '2021-12-10 17:26:56', '2021-12-10 18:18:29'),
(65, 'Product 17', '', '', '', '', '', '', '', 9, 6, 'catalog/RauMaMix/combo-2-71.jpg', 0, 1, '30000.0000', 0, 0, '2021-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2021-12-10 17:45:13', '2021-12-10 17:56:53'),
(66, 'Product 18', '', '', '', '', '', '', '', 15, 6, 'catalog/RauMaMix/combo-72.jpg', 0, 1, '32000.0000', 0, 0, '2022-01-08', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2022-01-08 19:49:29', '2022-01-09 19:14:43'),
(55, 'Product 7', '', '', '', '', '', '', '', 2, 6, 'catalog/RauMaMix/rau-ma-khoai-mon-sua-dua.jpg', 0, 1, '20000.0000', 0, 0, '2021-12-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 17, '2021-12-04 01:18:20', '2021-12-10 17:18:24'),
(57, 'Product 8', '', '', '', '', '', '', '', 15, 6, 'catalog/RauMaMix/dau-xanh-sua-dua-1.jpg', 0, 1, '20000.0000', 0, 0, '2021-12-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2021-12-04 02:27:57', '2022-01-09 19:17:25'),
(58, 'Product 10', '', '', '', '', '', '', '', 11, 6, 'catalog/RauMaMix/khoai-mon-sua-dua-1.jpg', 0, 1, '20000.0000', 10, 0, '2021-12-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 21, '2021-12-04 02:30:17', '2021-12-10 17:42:22'),
(63, 'Product 14', '', '', '', '', '', '', '', 100, 6, 'catalog/RauMaMix/Tran-chau-tuyet-trang.jpg', 0, 1, '7000.0000', 0, 0, '2021-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2021-12-10 14:04:06', '2022-01-09 19:17:15'),
(42, 'Product 1', '', '', '', '', '', '', '', 100, 5, 'catalog/RauMaMix/Rau-ma-dau-xanh-mix-Macchiato-600x600.jpg', 0, 1, '28000.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 1, 1, 11, '2009-02-03 21:07:37', '2021-12-10 17:25:11'),
(60, 'Product 11', '', '', '', '', '', '', '', 100, 6, 'catalog/RauMaMix/Thach-cu-nang.jpg', 0, 1, '7000.0000', 0, 0, '2021-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2021-12-10 13:15:18', '2022-01-09 19:16:57'),
(61, 'Product 12', '', '', '', '', '', '', '', 97, 6, 'catalog/RauMaMix/Thach-la-dua.jpg', 0, 1, '7000.0000', 100, 0, '2021-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2021-12-10 13:48:16', '2022-01-09 19:17:03'),
(62, 'Product 13', '', '', '', '', '', '', '', 100, 6, 'catalog/RauMaMix/Tran-chau-la-dua.jpg', 0, 1, '7000.0000', 0, 0, '2021-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2021-12-10 13:54:04', '2022-01-09 19:17:09'),
(51, 'Product 3', '', '', '', '', '', '', '', 24, 6, 'catalog/RauMaMix/rau-ma-sau-rieng-sua-dua.jpg', 0, 1, '22000.0000', 0, 0, '2021-12-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2021-12-04 01:10:33', '2022-01-09 19:15:30'),
(52, 'Product 4', '', '', '', '', '', '', '', 100, 6, 'catalog/RauMaMix/rau-ma-nguyen-chat-22.jpg', 0, 1, '12000.0000', 0, 0, '2021-12-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2021-12-04 01:12:13', '2022-01-09 19:16:10'),
(53, 'Product 5', '', '', '', '', '', '', '', 30, 6, 'catalog/RauMaMix/rau-ma-sua-dua-23jpg.jpg', 0, 1, '15000.0000', 0, 0, '2021-12-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 3, '2021-12-04 01:14:09', '2021-12-10 17:40:51'),
(54, 'Product 6', '', '', '', '', '', '', '', 14, 6, 'catalog/RauMaMix/rau-ma-dau-xanh-sua-dua.jpg', 0, 1, '20000.0000', 0, 0, '2021-12-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2021-12-04 01:16:41', '2022-01-09 19:15:52'),
(50, 'Product 2', '', '', '', '', '', '', '', 24, 6, 'catalog/RauMaMix/Rau-ma-mix-Macchiato.jpg', 0, 1, '20000.0000', 0, 9, '2021-12-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 11, '2021-12-04 01:06:51', '2021-12-10 16:42:02'),
(59, 'Product 10', '', '', '', '', '', '', '', 98, 6, 'catalog/RauMaMix/Suong-sao-hat-chia.jpg', 0, 1, '7000.0000', 10, 0, '2021-12-10', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2021-12-10 12:40:00', '2022-01-09 19:16:51'),
(68, 'Product 20', '', '', '', '', '', '', '', 20, 6, 'catalog/RauMaMix/combo-74.jpg', 0, 1, '30000.0000', 0, 0, '2022-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2022-01-09 06:45:21', '2022-01-09 19:14:32'),
(69, 'Product 21', '', '', '', '', '', '', '', 20, 6, 'catalog/RauMaMix/combo-81.jpg', 0, 1, '30000.0000', 0, 0, '2022-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2022-01-09 06:48:06', '2022-01-09 19:14:21'),
(70, 'Product 22', '', '', '', '', '', '', '', 20, 6, 'catalog/RauMaMix/combo-82.jpg', 0, 1, '29000.0000', 0, 0, '2022-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2022-01-09 06:50:52', '2022-01-09 19:14:10'),
(71, 'Product 22', '', '', '', '', '', '', '', 20, 6, 'catalog/RauMaMix/combo-83.jpg', 0, 1, '30000.0000', 0, 0, '2022-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2022-01-09 06:52:51', '2022-01-09 19:14:00'),
(72, 'Product 23', '', '', '', '', '', '', '', 20, 6, 'catalog/RauMaMix/combo-84.jpg', 0, 1, '30000.0000', 0, 0, '2022-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2022-01-09 06:55:32', '2022-01-09 19:13:43'),
(73, 'Product 24', '', '', '', '', '', '', '', 15, 6, 'catalog/RauMaMix/banh-trang-mix-tom-hanh91 - Copy.jpg', 0, 1, '30000.0000', 0, 0, '2022-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2022-01-09 06:57:46', '2022-01-09 19:13:34'),
(74, 'Product 25', '', '', '', '', '', '', '', 90, 6, 'catalog/RauMaMix/banh-trang-mix-kho-bo92.jpg', 0, 1, '18000.0000', 0, 0, '2022-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 5, 1, 1, 1, '2022-01-09 07:02:28', '2022-01-09 19:13:07'),
(75, 'Product 25', '', '', '', '', '', '', '', 100, 6, 'catalog/RauMaMix/banh-trang-mix-pho-mai93.jpg', 0, 1, '18000.0000', 0, 0, '2022-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 1, 1, 0, '2022-01-09 07:04:42', '2022-01-09 19:13:25'),
(76, 'Product 26', '', '', '', '', '', '', '', 99, 6, 'catalog/RauMaMix/banh-trang-mix-kho-ga-la-chanh94 - Copy.jpg', 0, 1, '18000.0000', 0, 0, '2022-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2022-01-09 07:06:42', '2022-01-09 19:13:16'),
(77, 'Product 27', '', '', '', '', '', '', '', 100, 6, 'catalog/RauMaMix/nuoc-tang-luc-sting-dau-lon-330ml.jpg', 0, 1, '18000.0000', 0, 0, '2022-01-09', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 0, '2022-01-09 07:15:24', '2022-01-09 19:16:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(65, 1, 'Combo 2', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Combo 2&lt;/b&gt;&lt;/h1&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;Rau má mix đậu xanh sữa dừa + Thạch nha đam + Thạch lá dứa + Trân châu tuyết trắng&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;30,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;', '', 'Combo 2', 'Combo 2', ''),
(65, 2, 'Combo 2', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Combo 2&lt;/b&gt;&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;Rau má mix đậu xanh sữa dừa + Thạch nha đam + Thạch lá dứa + Trân châu tuyết trắng&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;30,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/b&gt;&lt;br&gt;&lt;/p&gt;', '', 'Combo 2', 'Combo 2', ''),
(66, 2, 'Combo 7', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Combo 7&lt;/h1&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Rau má mix sầu riêng sữa dừa + Thạch nha đam + Sương sáo hạt chia + Thạch lá dứa&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;32,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;', '', 'Combo 7', '', ''),
(66, 1, 'Combo 7', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Combo 7&lt;/h1&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Rau má mix sầu riêng sữa dừa + Thạch nha đam + Sương sáo hạt chia + Thạch lá dứa&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;32,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;', '', 'Combo 7', '', ''),
(51, 1, 'Rau Má Mix Sầu Riêng Sữa Dừa (MỚI)', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;22,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Rau Má Mix Sầu Riêng Sữa Dừa (MỚI)&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;', '', 'Rau Má Mix Sầu Riêng Sữa Dừa (MỚI)', 'Rau Má Mix Sầu Riêng Sữa Dừa (MỚI)', ''),
(58, 1, 'Khoai môn sữa dừa', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;20,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Khoai môn sữa dừa&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;', '', 'Khoai môn sữa dừa', 'Khoai môn sữa dừa', ''),
(57, 2, 'Đậu xanh sữa dừa', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;20,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đậu xanh sữa dừa&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Đậu xanh sữa dừa', 'Đậu xanh sữa dừa', ''),
(58, 2, 'Khoai môn sữa dừa', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;20,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Khoai môn sữa dừa&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Khoai môn sữa dừa', '', ''),
(52, 1, 'Rau má nguyên chất', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;12,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Rau má nguyên chất&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;', '', 'Rau má nguyên chất', 'Rau má nguyên chất', ''),
(42, 1, 'Rau má mix đậu xanh mix Macchiato', '&lt;p&gt;&lt;b&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;28,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Rau má đậu xanh mix Macchiato&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', '', 'rau má đậu xanh mix Macchiato', 'rau má đậu xanh mix Macchiato', ''),
(42, 2, 'Rau má đậu xanh mix Macchiato', '&lt;p&gt;&lt;b&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;28,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Rau má đậu xanh mix Macchiato&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;\r\n&lt;/ul&gt;\r\n', '', 'rau má đậu xanh mix Macchioto', 'rau má đậu xanh mix Macchiato', ''),
(63, 1, 'Trân châu tuyết trắng', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Trân châu tuyết trắng&lt;/h1&gt;', 'Trân châu tuyết trắng', 'Trân châu tuyết trắng', 'Trân châu tuyết trắng', 'Trân châu tuyết trắng'),
(61, 2, 'Thạch lá dứa', '', 'Thạch lá dứa', 'Thạch lá dứa', 'Thạch lá dứa', 'Thạch lá dứa'),
(61, 1, 'Thạch lá dứa', '', 'Thạch lá dứa', 'Thạch lá dứa', 'Thạch lá dứa', 'Thạch lá dứa'),
(62, 1, 'Trân châu lá dứa', '', 'Trân châu lá dứa', 'Trân châu lá dứa', 'Trân châu lá dứa', 'Trân châu lá dứa'),
(62, 2, 'Trân châu lá dứa', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Trân châu lá dứa&lt;/h1&gt;', 'Trân châu lá dứa', 'Trân châu lá dứa', 'Trân châu lá dứa', 'Trân châu lá dứa'),
(63, 2, 'Trân châu tuyết trắng', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Trân châu tuyết trắng&lt;/h1&gt;', 'Trân châu tuyết trắng', 'Trân châu tuyết trắng', 'Trân châu tuyết trắng', 'Trân châu tuyết trắng'),
(50, 1, 'Rau má mix Macchiato', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;20,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Rau má mix Macchiato&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;', '', 'Rau má mix Macchiato', 'Rau má mix Macchiato', ''),
(50, 2, 'Rau má mix Macchiato', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;20,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Rau má mix Macchiato&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Rau má mix Macchiato', 'Rau má mix Macchiato', ''),
(59, 1, 'Sương Sáo Hạt Chia', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Sương Sáo Hạt Chia&lt;/b&gt;&lt;/h1&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;7,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;', '', 'Sương Sáo Hạt Chia', 'Sương Sáo Hạt Chia', ''),
(59, 2, 'Sương Sáo Hạt Chia', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Sương Sáo Hạt Chia&lt;/b&gt;&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;7,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;br&gt;&lt;/b&gt;&lt;/p&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;', '', 'Sương Sáo Hạt Chia', 'Sương Sáo Hạt Chia', ''),
(64, 1, 'Thạch nha đam', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Thạch nha đam&lt;/h1&gt;', '', 'Thạch nha đam', 'Thạch nha đam', ''),
(64, 2, 'Thạch nha đam', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Thạch nha đam&lt;/h1&gt;', '', 'Thạch nha đam', 'Thạch nha đam', ''),
(60, 1, 'Thạch củ năng', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Thạch củ năng&amp;nbsp;&lt;/b&gt;&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;7,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Thạch củ năng', 'Thạch củ năng', ''),
(60, 2, 'Thạch củ năng', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Thạch củ năng&amp;nbsp;&lt;/b&gt;&lt;/h1&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 0.5em; width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3;&quot;&gt;&lt;b&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;7,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/b&gt;&lt;/p&gt;&lt;/h1&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;&lt;/h1&gt;', '', 'Thạch củ năng', 'Thạch củ năng', ''),
(57, 1, 'Đậu xanh sữa dừa', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;20,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đậu xanh sữa dừa&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;', '', 'Đậu xanh sữa dừa', 'Đậu xanh sữa dừa', ''),
(54, 1, 'Rau má mix đậu xanh sữa dừa', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;20,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Rau má mix đậu xanh sữa dừa&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;', '', 'Rau má mix đậu xanh sữa dừa', 'Rau má mix đậu xanh sữa dừa', ''),
(53, 2, 'Rau má sữa dừa', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;15,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Rau má sữa dừa&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Rau má sữa dừa', 'Rau má sữa dừa', ''),
(51, 2, 'Rau Má Mix Sầu Riêng Sữa Dừa (MỚI)', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;22,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Rau Má Mix Sầu Riêng Sữa Dừa (MỚI)&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Rau Má Mix Sầu Riêng Sữa Dừa (MỚI)', 'Rau Má Mix Sầu Riêng Sữa Dừa (MỚI)', ''),
(52, 2, 'Rau má nguyên chất', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;12,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Rau má nguyên chất&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Rau má nguyên chất', 'Rau má nguyên chất', ''),
(54, 2, 'Rau má mix đậu xanh sữa dừa', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;20,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Rau má mix đậu xanh sữa dừa&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Rau má mix đậu xanh sữa dừa', 'Rau má mix đậu xanh sữa dừa', '');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(55, 1, 'Rau má mix khoai môn sữa dừa', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;20,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Rau má mix khoai môn sữa dừa&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;', '', 'Rau má mix khoai môn sữa dừa', '', ''),
(55, 2, 'Rau má mix khoai môn sữa dừa', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;20,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Rau má mix khoai môn sữa dừa&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Rau má mix khoai môn sữa dừa', 'Rau má mix khoai môn sữa dừa', ''),
(67, 2, 'Combo 8', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Combo 8&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;32,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Rau má mix sầu riêng sữa dữa + thạch củ năng + thạch lá dứa + trân châu tuyết trắng&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'Combo 8', '', ''),
(53, 1, 'Rau má sữa dừa', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;15,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Rau má sữa dừa&lt;/b&gt;&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;&lt;b&gt;Đặt hàng ngay hotline&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;b&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 090.633.0907&lt;/b&gt;&lt;/p&gt;&lt;div&gt;&lt;b&gt;&lt;br&gt;&lt;/b&gt;&lt;/div&gt;', '', 'Rau má sữa dừa', 'Rau má sữa dừa', ''),
(67, 1, 'Combo 8', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Combo 8&lt;/h1&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;32,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Rau má mix sầu riêng sữa dữa + thạch củ năng + thạch lá dứa + trân châu tuyết trắng&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', '', 'Combo 8', '', ''),
(68, 2, 'Combo 6', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Combo 6&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;30,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Khoai môn sữa dừa + Sương sáo hạt chia + Thạch lá dứa + Trân châu tuyết trắng&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Combo 6', 'Combo 6', 'Combo 6', 'Combo 6'),
(68, 1, 'Combo 6', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Combo 6&lt;/h1&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 0.5em; width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;30,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Khoai môn sữa dừa + Sương sáo hạt chia + Thạch lá dứa + Trân châu tuyết trắng&lt;/p&gt;&lt;/div&gt;&lt;/h1&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;/h1&gt;', 'Combo 6', 'Combo 6', 'Combo 6', 'Combo 6'),
(69, 2, 'Combo 5', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Combo 5&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;30,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Đậu xanh sữa dừa + Trân châu lá dứa + Thạch củ năng + Thạch lá dứa&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Combo 5', 'Combo 5', 'Combo 5', 'Combo 5'),
(69, 1, 'Combo 5', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Combo 5&lt;/h1&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 0.5em; width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;30,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Đậu xanh sữa dừa + Trân châu lá dứa + Thạch củ năng + Thạch lá dứa&lt;/p&gt;&lt;/div&gt;&lt;/h1&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;/h1&gt;', 'Combo 5', 'Combo 5', 'Combo 5', 'Combo 5'),
(70, 1, 'Combo 4', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Combo 4&lt;/h1&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;29,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Rau má sữa dừa + Thạch củ năng + Sương sáo hạt chia + Trân châu tuyết trắng&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Combo 4', 'Combo 4', 'Combo 4', 'Combo 4'),
(70, 2, 'Combo 4', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Combo 4&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;29,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Rau má sữa dừa + Thạch củ năng + Sương sáo hạt chia + Trân châu tuyết trắng&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Combo 4', 'Combo 4', 'Combo 4', 'Combo 4'),
(71, 1, 'Combo 3', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Combo 3&lt;/h1&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;30,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Rau má Mix Khoai Môn Sữa Dừa + Thạch lá dứa + Thạch củ năng + Sương sáo hạt chia&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Combo 3', 'Combo 3', 'Combo 3', 'Combo 3'),
(71, 2, 'Combo 3', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Combo 3&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;30,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Rau má Mix Khoai Môn Sữa Dừa + Thạch lá dứa + Thạch củ năng + Sương sáo hạt chia&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Combo 3', 'Combo 3', 'Combo 3', 'Combo 3'),
(72, 2, 'Combo 1', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Combo 1&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;30,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Rau má mix đậu xanh sữa dừa + Trân châu lá dứa + Thạch củ năng + Sương sáo hạt chia&lt;/p&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Combo 1', 'Combo 1', 'Combo 1', 'Combo 1'),
(72, 1, 'Combo 1', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Combo 1&lt;/h1&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 0.5em; width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;30,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-short-description&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em;&quot;&gt;Rau má mix đậu xanh sữa dừa + Trân châu lá dứa + Thạch củ năng + Sương sáo hạt chia&lt;/p&gt;&lt;/div&gt;&lt;/h1&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;/h1&gt;', 'Combo 1', 'Combo 1', 'Combo 1', 'Combo 1'),
(73, 1, 'Bánh Tráng Mix Tôm Hành', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Bánh Tráng Mix Tôm Hành&lt;/h1&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;18,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;', 'Bánh Tráng Mix Tôm Hành', 'Bánh Tráng Mix Tôm Hành', 'Bánh Tráng Mix Tôm Hành', 'Bánh Tráng Mix Tôm Hành'),
(73, 2, 'Bánh Tráng Mix Tôm Hành', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Bánh Tráng Mix Tôm Hành&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;18,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Bánh Tráng Mix Tôm Hành', 'Bánh Tráng Mix Tôm Hành', 'Bánh Tráng Mix Tôm Hành', 'Bánh Tráng Mix Tôm Hành'),
(74, 2, 'Bánh Tráng Mix Khô Bò', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Bánh Tráng Mix Khô Bò&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;18,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Bánh Tráng Mix Khô Bò&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;br&gt;&lt;/p&gt;', 'Bánh trang nix khô bò', 'Bánh trang nix khô bò', 'Bánh trang nix khô bò', 'Bánh trang nix khô bò'),
(74, 1, 'Bánh Tráng Mix Khô Bò', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Bánh Tráng Mix Khô Bò&lt;/h1&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 0.5em; width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;18,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;/h1&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Bánh Tráng Mix Khô Bò&lt;/h1&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/h1&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 0.5em; width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.5em; width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3;&quot;&gt;&lt;br style=&quot;font-size: 22.1px;&quot;&gt;&lt;/p&gt;&lt;/h1&gt;', 'Bánh Tráng Mix Khô Bò', 'Bánh Tráng Mix Khô Bò', 'Bánh Tráng Mix Khô Bò', 'Bánh Tráng Mix Khô Bò'),
(75, 2, 'Bánh Tráng Mix Phô Mai', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Bánh Tráng Mix Phô Mai&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;18,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Bánh Tráng Mix Phô Mai&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Bánh Tráng Mix Phô Mai', 'Bánh Tráng Mix Phô Mai', 'Bánh Tráng Mix Phô Mai', 'Bánh Tráng Mix Phô Mai'),
(75, 1, 'Bánh Tráng Mix Phô Mai', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Bánh Tráng Mix Phô Mai&lt;/h1&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;18,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Bánh Tráng Mix Phô Mai&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0.5em; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;', 'Bánh Tráng Mix Phô Mai', 'Bánh Tráng Mix Phô Mai', 'Bánh Tráng Mix Phô Mai', 'Bánh Tráng Mix Phô Mai');
INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(76, 2, 'Bánh Tráng Mix Khô Gà Lá Chanh', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Bánh Tráng Mix Khô Gà Lá Chanh&lt;/h1&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;18,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;Bánh Tráng Mix Khô Gà Lá Chanh&lt;/h1&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;h3 style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.25em; font-family: Oswald, sans-serif;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;p style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Bánh Tráng Mix Khô Gà Lá Chanh', 'Bánh Tráng Mix Khô Gà Lá Chanh', 'Bánh Tráng Mix Khô Gà Lá Chanh', 'Bánh Tráng Mix Khô Gà Lá Chanh'),
(76, 1, 'Bánh Tráng Mix Khô Gà Lá Chanh', '&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Bánh Tráng Mix Khô Gà Lá Chanh&lt;/h1&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 0.5em; width: 625px; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3;&quot;&gt;&lt;span style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;18,000&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;woocommerce-Price-currencySymbol&quot; style=&quot;color: rgb(255, 152, 0); font-family: Sarala, sans-serif; font-size: 42.24px; font-weight: 700; white-space: nowrap;&quot;&gt;₫&lt;/span&gt;&lt;/p&gt;&lt;/h1&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;font-size: 1.7em; margin-bottom: 0.5em; font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(85, 85, 85); width: 625px; text-rendering: optimizespeed;&quot;&gt;Bánh Tráng Mix Khô Gà Lá Chanh&lt;/h1&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;div class=&quot;product-title-container&quot; style=&quot;color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;div class=&quot;is-divider small&quot; style=&quot;font-size: 16.192px; height: 3px; background-color: rgba(0, 0, 0, 0.1); margin: 1em 0px; width: 30px; max-width: 30px;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/h1&gt;&lt;h3 style=&quot;font-family: Oswald, sans-serif; color: rgb(85, 85, 85); margin-bottom: 0.5em; font-size: 1.25em; width: 625px; text-rendering: optimizespeed;&quot;&gt;Đặt hàng ngay hotline&lt;/h3&gt;&lt;h1 class=&quot;product-title product_title entry-title&quot; style=&quot;color: rgb(85, 85, 85); width: 625px; margin-bottom: 0.5em; text-rendering: optimizespeed; font-size: 1.7em; line-height: 1.3; font-family: Oswald, sans-serif;&quot;&gt;&lt;p style=&quot;margin-bottom: 1.3em; color: rgb(0, 0, 0); font-family: Sarala, sans-serif; font-size: 17.6px;&quot;&gt;&lt;span class=&quot;icon-phone&quot; style=&quot;margin: 0px; padding: 0px; display: inline-block; position: relative; line-height: 1.2; font-family: fl-icons !important; speak: none !important; font-variant-numeric: normal !important; font-variant-east-asian: normal !important;&quot;&gt;&lt;/span&gt;&amp;nbsp;Hotline : 1900633934&lt;/p&gt;&lt;div&gt;&lt;br&gt;&lt;/div&gt;&lt;/h1&gt;', 'Bánh Tráng Mix Khô Gà Lá Chanh', 'Bánh Tráng Mix Khô Gà Lá Chanh', 'Bánh Tráng Mix Khô Gà Lá Chanh', 'Bánh Tráng Mix Khô Gà Lá Chanh'),
(77, 2, 'STING', '&lt;p&gt;&lt;span style=&quot;font-size: 36px;&quot;&gt;STING&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 36px;&quot;&gt;&lt;font color=&quot;#ff9c00&quot;&gt;18,000 Đ&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;', 'sting', 'sting', 'sting', 'sting'),
(77, 1, 'STING', '&lt;p&gt;&lt;span style=&quot;font-size: 36px;&quot;&gt;STING&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-size: 36px;&quot;&gt;&lt;font color=&quot;#ff9c00&quot;&gt;18,000 Đ&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;', 'sting', 'sting', 'sting', 'sting');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(227, 52, 4, '1', 1),
(228, 59, 4, '12', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(219, 42, 8, '2011-02-20', 1),
(221, 42, 9, '22:25', 1),
(222, 42, 7, '', 1),
(209, 42, 6, '', 1),
(208, 42, 4, 'test', 1),
(229, 57, 4, '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(42, 51),
(42, 53),
(42, 54),
(50, 51),
(50, 53),
(50, 54),
(50, 55),
(51, 42),
(51, 50),
(51, 53),
(51, 54),
(52, 53),
(52, 54),
(52, 55),
(52, 57),
(52, 58),
(53, 42),
(53, 50),
(53, 51),
(53, 52),
(53, 54),
(53, 55),
(54, 42),
(54, 50),
(54, 51),
(54, 52),
(54, 53),
(54, 57),
(54, 58),
(55, 50),
(55, 52),
(55, 53),
(55, 58),
(55, 64),
(57, 52),
(57, 54),
(58, 52),
(58, 54),
(58, 55),
(59, 59),
(59, 60),
(59, 61),
(59, 62),
(60, 59),
(60, 61),
(60, 62),
(61, 59),
(61, 60),
(61, 61),
(61, 62),
(62, 59),
(62, 60),
(62, 61),
(64, 55),
(65, 66),
(65, 67),
(65, 68),
(65, 69),
(65, 70),
(65, 71),
(65, 72),
(66, 65),
(66, 67),
(66, 68),
(66, 69),
(66, 70),
(66, 71),
(67, 65),
(67, 66),
(67, 68),
(67, 69),
(67, 70),
(68, 65),
(68, 66),
(68, 67),
(68, 68),
(68, 69),
(68, 71),
(68, 72),
(69, 65),
(69, 66),
(69, 67),
(69, 68),
(69, 70),
(69, 71),
(69, 72),
(70, 65),
(70, 66),
(70, 67),
(70, 69),
(71, 65),
(71, 66),
(71, 68),
(71, 69),
(71, 72),
(72, 65),
(72, 68),
(72, 69),
(72, 71),
(73, 74),
(73, 75),
(73, 76),
(74, 73),
(74, 75),
(74, 76),
(75, 73),
(75, 74),
(75, 76),
(76, 73),
(76, 74),
(76, 75);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(554, 42, 1, 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(42, 33),
(42, 60),
(42, 62),
(42, 63),
(50, 33),
(50, 60),
(50, 62),
(50, 63),
(51, 33),
(51, 60),
(51, 63),
(52, 33),
(52, 60),
(52, 62),
(52, 63),
(53, 33),
(53, 60),
(53, 63),
(54, 33),
(54, 60),
(54, 62),
(54, 63),
(55, 33),
(55, 60),
(55, 63),
(57, 33),
(57, 60),
(57, 63),
(58, 33),
(58, 60),
(58, 62),
(59, 25),
(59, 62),
(59, 63),
(60, 62),
(61, 25),
(61, 62),
(61, 63),
(62, 25),
(62, 62),
(62, 63),
(63, 62),
(64, 62),
(64, 63),
(65, 33),
(65, 60),
(65, 62),
(66, 20),
(67, 20),
(68, 20),
(68, 60),
(69, 20),
(69, 60),
(69, 62),
(70, 20),
(70, 60),
(71, 20),
(71, 60),
(72, 20),
(72, 60),
(73, 18),
(74, 20),
(74, 62),
(75, 18),
(75, 60),
(76, 18),
(76, 60),
(77, 64);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_facebook`
--

CREATE TABLE `oc_product_to_facebook` (
  `product_to_facebook_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `google_product_category` int(16) NOT NULL DEFAULT 0,
  `condition` varchar(20) NOT NULL,
  `age_group` varchar(50) NOT NULL,
  `color` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `material` varchar(255) NOT NULL,
  `pattern` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_facebook`
--

INSERT INTO `oc_product_to_facebook` (`product_to_facebook_id`, `product_id`, `google_product_category`, `condition`, `age_group`, `color`, `gender`, `material`, `pattern`) VALUES
(25, 66, 0, '', '', '', '', '', ''),
(26, 67, 0, '', '', '', '', '', ''),
(24, 68, 0, '', '', '', '', '', ''),
(23, 69, 0, '', '', '', '', '', ''),
(22, 70, 0, '', '', '', '', '', ''),
(21, 71, 0, '', '', '', '', '', ''),
(20, 72, 0, '', '', '', '', '', ''),
(19, 73, 0, '', '', '', '', '', ''),
(16, 74, 0, '', '', '', '', '', ''),
(18, 75, 0, '', '', '', '', '', ''),
(17, 76, 0, '', '', '', '', '', ''),
(30, 77, 0, '', '', '', '', '', ''),
(27, 51, 0, '', '', '', '', '', ''),
(28, 54, 0, '', '', '', '', '', ''),
(29, 52, 0, '', '', '', '', '', ''),
(31, 59, 0, '', '', '', '', '', ''),
(32, 60, 0, '', '', '', '', '', ''),
(33, 61, 0, '', '', '', '', '', ''),
(34, 62, 0, '', '', '', '', '', ''),
(35, 63, 0, '', '', '', '', '', ''),
(36, 57, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(42, 0, 0),
(50, 0, 0),
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(57, 0, 0),
(58, 0, 1),
(59, 0, 0),
(60, 0, 1),
(61, 0, 1),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(42, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent'),
(1, 2, 'Refunded'),
(2, 2, 'Credit Issued'),
(3, 2, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 2, 'Dead On Arrival'),
(2, 2, 'Received Wrong Item'),
(3, 2, 'Order Error'),
(4, 2, 'Faulty, please supply details'),
(5, 2, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products'),
(1, 2, 'Pending'),
(3, 2, 'Complete'),
(2, 2, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(977, 0, 1, 'product_id=62', 'tran-chua-la-dua'),
(897, 0, 1, 'category_id=20', 'rmmx-comboraumamix'),
(920, 0, 1, 'product_id=50', 'rau-ma-mix-Macchiato'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(958, 0, 2, 'information_id=4', 'about_us'),
(932, 0, 1, 'product_id=42', 'rau-ma-dau-xanh-mix-Macchiato'),
(896, 0, 1, 'category_id=18', 'rmmx-banhtrangmix'),
(975, 0, 1, 'product_id=60', 'thach-cu-nang'),
(900, 0, 1, 'category_id=25', 'rmmx-topping'),
(902, 0, 1, 'category_id=63', 'rmmx-trangchu'),
(898, 0, 1, 'category_id=62', 'rmmx-cuahang'),
(882, 0, 1, 'category_id=59', 'rmmx-blog'),
(899, 0, 1, 'category_id=60', 'raumamix-menu'),
(901, 0, 1, 'category_id=61', 'rmmix-thuvienanh'),
(962, 0, 1, 'product_id=73', 'raumamix-banh-trang-mix-tom-hanh'),
(963, 0, 1, 'product_id=72', 'raumamix-combo1'),
(964, 0, 1, 'product_id=71', 'raumamix-cb3'),
(965, 0, 1, 'product_id=70', 'raumamix-cb4'),
(966, 0, 1, 'product_id=69', 'raumamix-cbo5'),
(967, 0, 1, 'product_id=68', 'raumamix_cbo6'),
(941, 0, 1, 'product_id=65', 'combo-02'),
(943, 0, 1, 'category_id=64', 'rau-mmx-ncgiaikhat'),
(968, 0, 1, 'product_id=66', 'rauma-cb7'),
(969, 0, 1, 'product_id=67', 'raumamix-cb8'),
(942, 0, 1, 'product_id=64', 'thach-nha-dam'),
(978, 0, 1, 'product_id=63', 'tran-chau-tuyet-trang'),
(979, 0, 1, 'product_id=57', 'dau-xanh-sua-dua'),
(931, 0, 1, 'product_id=55', 'rau-ma-khoai-mon-sua-dua'),
(971, 0, 1, 'product_id=54', 'rau-ma-mix-dau-xanh-sua-dua-24'),
(937, 0, 1, 'product_id=53', 'rau-ma-sua-dua'),
(972, 0, 1, 'product_id=52', 'rau-ma-nguyen-chat-22'),
(970, 0, 1, 'product_id=51', 'rau-ma-mix-sau-rieng-sua-dua-1'),
(939, 0, 1, 'product_id=58', 'khoai-mon-sua-dua'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms'),
(859, 0, 2, 'category_id=33', 'menu-raumamix'),
(976, 0, 1, 'product_id=61', 'thach-la-dua'),
(959, 0, 1, 'product_id=74', 'rau-ma-mix-banh-trangmixkho-bo'),
(961, 0, 1, 'product_id=75', 'raumamix-banh-trang-mix-pho-mai'),
(960, 0, 1, 'product_id=76', 'raumamix-banh-trang-mix-kho-ga-lachanh'),
(973, 0, 1, 'product_id=77', 'rauma-mix-dausting'),
(974, 0, 1, 'product_id=59', 'rmm-suong-sao-hat-chia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('102acde3df5ea1a88f7c027860', 'false', '2021-12-12 17:44:30'),
('1eba690f2ccf9e8896193d5f81', '{\"user_id\":\"1\",\"user_token\":\"hiJp2eA6LgUocJ0ywvODT4Dqjpdf1bHM\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\"}', '2021-12-10 17:35:06'),
('28768ef01bbb6aff29e5b81de9', '{\"api_id\":\"1\"}', '2022-01-09 09:19:25'),
('3768bb5cd1d3409421d8aaa40a', '{\"api_id\":\"1\"}', '2021-12-10 14:57:40'),
('693eb510f0347afe742c69fed5', '{\"user_id\":\"1\",\"user_token\":\"J0NuBXspRkr5uHbinRxFBBPPbMZl5ifL\",\"language\":\"en-gb\",\"currency\":\"VN\\u0110\"}', '2022-01-05 20:33:20'),
('69aed89b2ed39101bdfad4294a', '{\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"company\":\"\",\"address_1\":\"TpHCM\",\"address_2\":\"TpHCM\",\"postcode\":\"70000\",\"city\":\"TpHCM\",\"zone_id\":\"3780\",\"zone\":\"Ho Chi Minh City\",\"zone_code\":\"HC\",\"country_id\":\"230\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":[]},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"company\":\"\",\"address_1\":\"TpHCM\",\"address_2\":\"TpHCM\",\"postcode\":\"70000\",\"city\":\"TpHCM\",\"zone_id\":\"3780\",\"zone\":\"Ho Chi Minh City\",\"zone_code\":\"HC\",\"country_id\":\"230\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":[]},\"user_id\":\"1\",\"user_token\":\"nKcBSQFhZd7YvoIQZPiTGplH4SLkHkii\"}', '2022-01-09 19:47:05'),
('6ae14662b4ba6ddfac8b8e842e', 'false', '2021-12-13 16:58:09'),
('8f4705398765e0f60f711de191', '{\"api_id\":\"1\"}', '2022-01-09 19:33:16'),
('933ecfcd40db47650b3f24c47d', '{\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\",\"user_id\":\"1\",\"user_token\":\"4u5UWPDUJ0rI70DXTYx9EwfmNY0HP3gc\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"company\":\"\",\"address_1\":\"TpHCM\",\"address_2\":\"TpHCM\",\"postcode\":\"70000\",\"city\":\"TpHCM\",\"zone_id\":\"3780\",\"zone\":\"Ho Chi Minh City\",\"zone_code\":\"HC\",\"country_id\":\"230\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"company\":\"\",\"address_1\":\"TpHCM\",\"address_2\":\"TpHCM\",\"postcode\":\"70000\",\"city\":\"TpHCM\",\"zone_id\":\"3780\",\"zone\":\"Ho Chi Minh City\",\"zone_code\":\"HC\",\"country_id\":\"230\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":null}}', '2021-12-11 01:40:13'),
('97ea09c78c809069d051a48e38', '{\"api_id\":\"1\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\"}', '2022-01-09 09:16:46'),
('9cbdfa4195130f8833c0eaeedb', '{\"api_id\":\"1\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\"}', '2021-12-10 14:57:50'),
('9d04fbdd7c7aa9d8212be155b4', '{\"user_id\":\"1\",\"user_token\":\"88Sfkd10ksVeyUsz8NaJ9OihthuqKXvv\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\"}', '2021-12-10 16:56:42'),
('a1072c74b5012ddd25c5af29b4', '{\"api_id\":\"1\"}', '2021-12-10 18:22:58'),
('aeaee94e8ad0b1fe56cadf18ed', '{\"user_id\":\"1\",\"user_token\":\"l0qisTH0nI7bCg2LbyC4CXMcA7H3CZQ4\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"company\":\"\",\"address_1\":\"TpHCM\",\"address_2\":\"TpHCM\",\"postcode\":\"70000\",\"city\":\"TpHCM\",\"zone_id\":\"3780\",\"zone\":\"Ho Chi Minh City\",\"zone_code\":\"HC\",\"country_id\":\"230\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":[]},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"company\":\"\",\"address_1\":\"TpHCM\",\"address_2\":\"TpHCM\",\"postcode\":\"70000\",\"city\":\"TpHCM\",\"zone_id\":\"3780\",\"zone\":\"Ho Chi Minh City\",\"zone_code\":\"HC\",\"country_id\":\"230\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":[]}}', '2022-01-08 20:38:34'),
('b207aa5d75ed87480321815360', '{\"user_id\":\"1\",\"user_token\":\"jPNxVWAJSEDPYsAnyHLTwctXS883wzGu\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\"}', '2021-12-11 00:40:45'),
('b7d235cf528faf1acf4d0b27b5', '{\"user_id\":\"1\",\"user_token\":\"lkUydgg7rDJMDWuupVrkofdFVVpuEGUA\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\",\"account\":\"guest\",\"payment_address\":{\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh\",\"company\":\"C\\u00f4ng ty Nh\\u00e2n s\\u01b0\\u0323 1 tha\\u0300nh vi\\u00ean H\\u00f4\\u0300ng \\u00c2n\",\"address_1\":\"Thu\\u0309 D\\u00e2\\u0300u 1, tha\\u0300nh ph\\u00f4\\u0301 Bi\\u0300nh D\\u01b0\\u01a1\\u0301ngz\",\"address_2\":\"Thu\\u0309 D\\u00e2\\u0300u 1, tha\\u0300nh ph\\u00f4\\u0301 Bi\\u0300nh D\\u01b0\\u01a1\\u0301ngz\",\"postcode\":\"75000\",\"city\":\"Bi\\u0300nh D\\u01b0\\u01a1ng\",\"country_id\":\"230\",\"zone_id\":\"3759\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":[],\"zone\":\"Binh Duong\",\"zone_code\":\"BU\"},\"shipping_address\":{\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh\",\"company\":\"C\\u00f4ng ty Nh\\u00e2n s\\u01b0\\u0323 1 tha\\u0300nh vi\\u00ean H\\u00f4\\u0300ng \\u00c2n\",\"address_1\":\"Thu\\u0309 D\\u00e2\\u0300u 1, tha\\u0300nh ph\\u00f4\\u0301 Bi\\u0300nh D\\u01b0\\u01a1\\u0301ngz\",\"address_2\":\"Thu\\u0309 D\\u00e2\\u0300u 1, tha\\u0300nh ph\\u00f4\\u0301 Bi\\u0300nh D\\u01b0\\u01a1\\u0301ngz\",\"postcode\":\"75000\",\"city\":\"Bi\\u0300nh D\\u01b0\\u01a1ng\",\"country_id\":\"230\",\"zone_id\":\"3759\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"zone\":\"Binh Duong\",\"zone_code\":\"BU\",\"custom_field\":[]}}', '2022-01-09 09:37:59'),
('b881f21649dfc45046db39ba6d', '{\"user_id\":\"1\",\"user_token\":\"WLbkGQ0pNMGV7X1XqDr5vMl8kZPI5o3x\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\"}', '2021-12-10 17:12:53'),
('bebd42a8d30bd771b198d7c998', 'false', '2022-01-05 20:23:05'),
('d54fd54f11158c0d4951970ac3', '{\"api_id\":\"1\"}', '2021-12-12 17:48:15'),
('d9d3d443b7c91168f6da692e13', '{\"user_id\":\"1\",\"user_token\":\"I3cYKXwEjgTR5KXOPeNBB7lJIFcB7wAj\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\"}', '2022-01-09 07:41:18'),
('dd4bec84cbcee9543b1de75f6f', '{\"user_id\":\"1\",\"user_token\":\"n2e76bVMqmL15APzcjJ0fFvHfm4Bm46W\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\",\"compare\":[\"58\"]}', '2021-12-10 18:43:52'),
('e5b00d5faf0f0642bb2da9ec7f', '{\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\",\"user_id\":\"1\",\"user_token\":\"Y1vxFnJ5xYCQ4IsSJqMIgTAnLsZyUgTW\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"company\":\"\",\"address_1\":\"TpHCM\",\"address_2\":\"TpHCM\",\"postcode\":\"70000\",\"city\":\"TpHCM\",\"zone_id\":\"3780\",\"zone\":\"Ho Chi Minh City\",\"zone_code\":\"HC\",\"country_id\":\"230\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"company\":\"\",\"address_1\":\"TpHCM\",\"address_2\":\"TpHCM\",\"postcode\":\"70000\",\"city\":\"TpHCM\",\"zone_id\":\"3780\",\"zone\":\"Ho Chi Minh City\",\"zone_code\":\"HC\",\"country_id\":\"230\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":null}}', '2021-12-11 00:47:25'),
('e62c59e1312c45ec81b745e2fe', '{\"user_id\":\"1\",\"user_token\":\"gH3epa0Ln0zorGjTpIXrp4nTzqqdKfY4\",\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\"}', '2021-12-10 18:17:22'),
('e7bef70dfb5b2a4dbc2424fb72', 'false', '2022-01-09 09:06:06'),
('ebf0a9f6f0f4a0e4e213b52618', '{\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\",\"user_id\":\"1\",\"user_token\":\"oivemZnVYKUedzKeGgHiHdUnmk7jYcHc\",\"install\":\"BUjKFEYqYf\",\"customer_id\":\"1\",\"shipping_address\":{\"address_id\":\"1\",\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"company\":\"\",\"address_1\":\"TpHCM\",\"address_2\":\"TpHCM\",\"postcode\":\"70000\",\"city\":\"TpHCM\",\"zone_id\":\"3780\",\"zone\":\"Ho Chi Minh City\",\"zone_code\":\"HC\",\"country_id\":\"230\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":null},\"payment_address\":{\"address_id\":\"1\",\"firstname\":\"Ng\\u00e2n\",\"lastname\":\"Huy\\u0300nh Thi\\u0323 H\\u00f4\\u0300ng\",\"company\":\"\",\"address_1\":\"TpHCM\",\"address_2\":\"TpHCM\",\"postcode\":\"70000\",\"city\":\"TpHCM\",\"zone_id\":\"3780\",\"zone\":\"Ho Chi Minh City\",\"zone_code\":\"HC\",\"country_id\":\"230\",\"country\":\"Viet Nam\",\"iso_code_2\":\"VN\",\"iso_code_3\":\"VNM\",\"address_format\":\"\",\"custom_field\":null},\"shipping_methods\":{\"flat\":{\"title\":\"Flat Rate\",\"quote\":{\"flat\":{\"code\":\"flat.flat\",\"title\":\"Flat Shipping Rate\",\"cost\":\"5.00\",\"tax_class_id\":\"9\",\"text\":\"5\\u0111\\u1ed3ng\"}},\"sort_order\":\"1\",\"error\":false}}}', '2021-12-18 04:41:12'),
('ee788fa901e1d10ad1124c0345', 'false', '2021-12-15 09:11:16'),
('f379128c4356dbc3e01dabf602', '{\"api_id\":\"1\"}', '2022-01-09 19:44:20'),
('f9d6707a8e80df751b50addfb0', '{\"language\":\"vi-vn\",\"currency\":\"VN\\u0110\",\"user_id\":\"1\",\"user_token\":\"wI3mjJLrFFXvRSRjiUknHY1VaMlgtviq\"}', '2021-12-12 18:10:11'),
('faa6762217f587cedbd3c3fe2a', '{\"api_id\":\"1\"}', '2022-01-09 09:15:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1247, 0, 'config', 'config_error_log', '1', 0),
(1246, 0, 'config', 'config_error_display', '1', 0),
(1243, 0, 'config', 'config_file_max_size', '300000', 0),
(1244, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(1245, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(1238, 0, 'config', 'config_compression', '0', 0),
(1239, 0, 'config', 'config_secure', '0', 0),
(1240, 0, 'config', 'config_password', '1', 0),
(1241, 0, 'config', 'config_shared', '0', 0),
(1242, 0, 'config', 'config_encryption', 'JT4jCt0VxjMc0fkZ0BYCm5AjnpUDBKX0FlDajTzHA48rV2Otl2lyxCajyUkZtU0TK9d78IhDYffNTF4Q6foYfIoeY6MU7cFEHxocZ4t5X6ye3GuECCpVzRHlonTfCNW8dLfuU8wCYwXFFcvOEZVf6Tv4uzGQqRP7NWofRIwjnKBwkTQt1sd8niRSLCQBo3wkOe9NozIcVniiylPAnlJvMtPnX7H93143x5wsd0TH5UPMa02I8dTBNMrVW8kuxLH5gxiRL3QTybsfAaNpcTxrRb5RpOxxkPeKV29bLmNp6uHi3lii3nY8OsfQ1E6R0dIPqEDYp6tw7bfndHs5LWZo0CBVbgx98epspS750MVq1HsGFtphM2wCSKyEMxM0VSD0RItK8MDXb1KOMhBZc6R1Dtz1Sj3oC3cFwgbymNMQv0a1CNgSXl9vK259BxNhKcoI5CQLdymFhkVcti8NXr4wZsHs0IG6NkQfocbJkEBttr4H9qDkX1QhSSH8XSnGoe0xpXwbagPPNliOGMmGpKtE9W4kDEHzrbcwLHiritiQJqZ1Nnl23Cj05rj77FpKCQNwoyCFZenaW3eNoncYqOV9dN1FIxVqncpO7wWJqoQEvAgRoeJPKpP0NPynxdddbIpNWHe9TLNJQfuj74wxKDPpim0CBcmXHAGC3yTqqPiyauiD47EnlUeY7CUjbyO4nbuFNSC8xMWQPO6MiDbRzZs2nV5SALPtz9CDDnlN20Ib5LxP401wFpm1Nhut47AAi6nYjikHIHyOskP6AahQp12ODaMWGySY9Sd7RRmkZdEjDNxUM2ivSBzjp27rvslVOOyrn8vxONPtzKfAaD1Alc32BOTC7Qn6szt6fpxnYfV8JnZmZWxnMP5jAhyKPebyzOt05Ouh1l54zaWmEsiQDnFV3uSdYDZWgCH94gdgOeWplYPjhU1SrLnTuH9DXF6grvH8k02f7TfGZ9gtXy3BDzdr0T1sAXUgXlL9nsdhahd70HD9arh4gJJQ9z6fnGUcRfYF', 0),
(1236, 0, 'config', 'config_seo_url', '1', 0),
(1237, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(1235, 0, 'config', 'config_maintenance', '0', 0),
(1234, 0, 'config', 'config_mail_alert_email', '@@@', 0),
(1233, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(1232, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(1231, 0, 'config', 'config_mail_smtp_port', '465', 0),
(1230, 0, 'config', 'config_mail_smtp_password', '12345', 0),
(1227, 0, 'config', 'config_mail_parameter', '', 0),
(1228, 0, 'config', 'config_mail_smtp_hostname', 'ssl://smtp.gmail.com', 0),
(1229, 0, 'config', 'config_mail_smtp_username', 'hthnngan@gmail.com', 0),
(1226, 0, 'config', 'config_mail_engine', 'mail', 0),
(1225, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(1224, 0, 'config', 'config_logo', 'catalog/RauMaMix/logo-rmdx.png', 0),
(1222, 0, 'config', 'config_captcha', '', 0),
(1223, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(1221, 0, 'config', 'config_return_status_id', '2', 0),
(1220, 0, 'config', 'config_return_id', '0', 0),
(1219, 0, 'config', 'config_affiliate_id', '4', 0),
(1218, 0, 'config', 'config_affiliate_commission', '5', 0),
(1217, 0, 'config', 'config_affiliate_auto', '0', 0),
(1216, 0, 'config', 'config_affiliate_approval', '0', 0),
(1215, 0, 'config', 'config_affiliate_group_id', '1', 0),
(1214, 0, 'config', 'config_stock_checkout', '0', 0),
(1213, 0, 'config', 'config_stock_warning', '0', 0),
(1212, 0, 'config', 'config_stock_display', '0', 0),
(1211, 0, 'config', 'config_api_id', '1', 0),
(1210, 0, 'config', 'config_fraud_status_id', '7', 0),
(1209, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(1208, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(1207, 0, 'config', 'config_order_status_id', '1', 0),
(1205, 0, 'config', 'config_checkout_guest', '1', 0),
(1206, 0, 'config', 'config_checkout_id', '0', 0),
(94, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_order_status_id', '1', 0),
(96, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(97, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(98, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(99, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(100, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(101, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(102, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(105, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(106, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(107, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(108, 0, 'total_sub_total', 'total_sub_total_sort_order', '1', 0),
(109, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(110, 0, 'total_tax', 'total_tax_status', '1', 0),
(111, 0, 'total_total', 'total_total_sort_order', '9', 0),
(112, 0, 'total_total', 'total_total_status', '1', 0),
(113, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(114, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(115, 0, 'total_credit', 'total_credit_status', '1', 0),
(116, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(117, 0, 'total_reward', 'total_reward_status', '1', 0),
(118, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(120, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(121, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(122, 0, 'total_voucher', 'total_voucher_sort_order', '8', 0),
(123, 0, 'total_voucher', 'total_voucher_status', '1', 0),
(124, 0, 'module_category', 'module_category_status', '1', 0),
(125, 0, 'module_account', 'module_account_status', '1', 0),
(126, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(127, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(132, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(134, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(138, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(146, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(147, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(148, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(149, 0, 'theme_default', 'theme_default_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(151, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(153, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(155, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(157, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(158, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(159, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(160, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(161, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(162, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(164, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(165, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(166, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(167, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(168, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(169, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(171, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(172, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(173, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(175, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(177, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(179, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(181, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(183, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(185, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(187, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(188, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(189, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(190, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(191, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(193, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(195, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(197, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(198, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(199, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(200, 0, 'developer', 'developer_theme', '1', 0),
(201, 0, 'developer', 'developer_sass', '1', 0),
(1204, 0, 'config', 'config_cart_weight', '1', 0),
(1203, 0, 'config', 'config_invoice_prefix', 'INV-2021-00', 0),
(1202, 0, 'config', 'config_account_id', '0', 0),
(1201, 0, 'config', 'config_login_attempts', '5', 0),
(1200, 0, 'config', 'config_customer_price', '0', 0),
(1199, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(1198, 0, 'config', 'config_customer_group_id', '1', 0),
(1197, 0, 'config', 'config_customer_search', '1', 0),
(1196, 0, 'config', 'config_customer_activity', '1', 0),
(1195, 0, 'config', 'config_customer_online', '1', 0),
(1194, 0, 'config', 'config_tax_customer', 'shipping', 0),
(1193, 0, 'config', 'config_tax_default', 'shipping', 0),
(1192, 0, 'config', 'config_tax', '1', 0),
(1191, 0, 'config', 'config_voucher_max', '1000', 0),
(1190, 0, 'config', 'config_voucher_min', '1', 0),
(1189, 0, 'config', 'config_review_guest', '1', 0),
(1188, 0, 'config', 'config_review_status', '1', 0),
(1187, 0, 'config', 'config_limit_admin', '20', 0),
(1186, 0, 'config', 'config_product_count', '1', 0),
(1185, 0, 'config', 'config_weight_class_id', '1', 0),
(1184, 0, 'config', 'config_length_class_id', '1', 0),
(1183, 0, 'config', 'config_currency_auto', '1', 0),
(1182, 0, 'config', 'config_currency', 'VNĐ', 0),
(1181, 0, 'config', 'config_admin_language', 'vi-vn', 0),
(1180, 0, 'config', 'config_language', 'vi-vn', 0),
(1179, 0, 'config', 'config_timezone', 'UTC', 0),
(1178, 0, 'config', 'config_zone_id', '3780', 0),
(1177, 0, 'config', 'config_country_id', '230', 0),
(1176, 0, 'config', 'config_comment', '', 0),
(1175, 0, 'config', 'config_open', '6h30', 0),
(1174, 0, 'config', 'config_image', 'catalog/RauMaMix/logo-rmdx.png', 0),
(1173, 0, 'config', 'config_fax', '', 0),
(1172, 0, 'config', 'config_telephone', '123456789', 0),
(1171, 0, 'config', 'config_email', 'namdh@ntt.edu.vn', 0),
(1170, 0, 'config', 'config_geocode', '', 0),
(1169, 0, 'config', 'config_address', 'Tp-Hồ Chí MInh', 0),
(1168, 0, 'config', 'config_owner', 'Huỳnh Ngân', 0),
(1167, 0, 'config', 'config_name', 'RAU MÁ MIX', 0),
(1166, 0, 'config', 'config_layout_id', '4', 0),
(1165, 0, 'config', 'config_theme', 'default', 0),
(1164, 0, 'config', 'config_meta_keyword', '', 0),
(1163, 0, 'config', 'config_meta_description', 'Rau Má Mix', 0),
(1162, 0, 'config', 'config_meta_title', 'RAU MÁ MIX', 0),
(1248, 0, 'config', 'config_error_filename', 'error.log', 0),
(1261, 0, 'module_facebook_business', 'module_facebook_business_status', '1', 0),
(1259, 0, 'module_facebook_business', 'module_facebook_business_cookie_bar_status', '1', 0),
(1260, 0, 'module_facebook_business', 'module_facebook_business_sync_specials_status', '1', 0),
(1265, 0, 'facebook', 'facebook_last_upgrade_check_date', '2022-01-09', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '1267105.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_theme`
--

INSERT INTO `oc_theme` (`theme_id`, `store_id`, `theme`, `route`, `code`, `date_added`) VALUES
(1, 0, 'default', 'common/search', '&lt;div id=&quot;search&quot; class=&quot;input-group&quot;&gt;\n  &lt;input type=&quot;text&quot; name=&quot;search&quot; value=&quot;{{ search }}&quot; placeholder=&quot;{{ text_search }}&quot; class=&quot;form-control input-lg&quot; /&gt;\n  &lt;span class=&quot;input-group-btn&quot;&gt;\n    &lt;button type=&quot;button&quot; class=&quot;btn btn-warning btn-lg&quot;&gt;&lt;i class=&quot;fa fa-search&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n  &lt;/span&gt;\n&lt;/div&gt;', '2021-12-10 12:16:41'),
(5, 0, 'default', 'common/cart', '&lt;div id=&quot;cart&quot; class=&quot;btn-group btn-block&quot; &gt;\n  &lt;button type=&quot;button&quot; data-toggle=&quot;dropdown&quot; data-loading-text=&quot;{{ text_loading }}&quot; class=&quot;btn btn-inverse btn-block btn-lg dropdown-toggle&quot;&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; &lt;span id=&quot;cart-total&quot;&gt;{{ text_items }}&lt;/span&gt;&lt;/button&gt;\n  &lt;ul class=&quot;dropdown-menu pull-right&quot;&gt;\n    {% if products or vouchers %}\n    &lt;li&gt;\n      &lt;table class=&quot;table table-striped&quot;&gt;\n        {% for product in products %}\n        &lt;tr&gt;\n          &lt;td class=&quot;text-center&quot;&gt;{% if product.thumb %} &lt;a href=&quot;{{ product.href }}&quot;&gt;&lt;img src=&quot;{{ product.thumb }}&quot; alt=&quot;{{ product.name }}&quot; title=&quot;{{ product.name }}&quot; class=&quot;img-thumbnail&quot; /&gt;&lt;/a&gt; {% endif %}&lt;/td&gt;\n          &lt;td class=&quot;text-left&quot;&gt;&lt;a href=&quot;{{ product.href }}&quot;&gt;{{ product.name }}&lt;/a&gt; {% if product.option %}\n            {% for option in product.option %} &lt;br /&gt;\n            - &lt;small&gt;{{ option.name }} {{ option.value }}&lt;/small&gt; {% endfor %}\n            {% endif %}\n            {% if product.recurring %} &lt;br /&gt;\n            - &lt;small&gt;{{ text_recurring }} {{ product.recurring }}&lt;/small&gt; {% endif %}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;x {{ product.quantity }}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ product.total }}&lt;/td&gt;\n          &lt;td class=&quot;text-center&quot;&gt;&lt;button type=&quot;button&quot; onclick=&quot;cart.remove(\'{{ product.cart_id }}\');&quot; title=&quot;{{ button_remove }}&quot; class=&quot;btn btn-danger btn-xs&quot;&gt;&lt;i class=&quot;fa fa-times&quot;&gt;&lt;/i&gt;&lt;/button&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n        {% endfor %}\n        {% for voucher in vouchers %}\n        &lt;tr&gt;\n          &lt;td class=&quot;text-center&quot;&gt;&lt;/td&gt;\n          &lt;td class=&quot;text-left&quot;&gt;{{ voucher.description }}&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;x&amp;nbsp;1&lt;/td&gt;\n          &lt;td class=&quot;text-right&quot;&gt;{{ voucher.amount }}&lt;/td&gt;\n          &lt;td class=&quot;text-center text-danger&quot;&gt;&lt;button type=&quot;button&quot; onclick=&quot;voucher.remove(\'{{ voucher.key }}\');&quot; title=&quot;{{ button_remove }}&quot; class=&quot;btn btn-danger btn-xs&quot;&gt;&lt;i class=&quot;fa fa-times&quot;&gt;&lt;/i&gt;&lt;/button&gt;&lt;/td&gt;\n        &lt;/tr&gt;\n        {% endfor %}\n      &lt;/table&gt;\n    &lt;/li&gt;\n    &lt;li&gt;\n      &lt;div&gt;\n        &lt;table class=&quot;table table-bordered&quot;&gt;\n          {% for total in totals %}\n          &lt;tr&gt;\n            &lt;td class=&quot;text-right&quot;&gt;&lt;strong&gt;{{ total.title }}&lt;/strong&gt;&lt;/td&gt;\n            &lt;td class=&quot;text-right&quot;&gt;{{ total.text }}&lt;/td&gt;\n          &lt;/tr&gt;\n          {% endfor %}\n        &lt;/table&gt;\n        &lt;p class=&quot;text-right&quot;&gt;&lt;a href=&quot;{{ cart }}&quot;&gt;&lt;strong&gt;&lt;i class=&quot;fa fa-shopping-cart&quot;&gt;&lt;/i&gt; {{ text_cart }}&lt;/strong&gt;&lt;/a&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;a href=&quot;{{ checkout }}&quot;&gt;&lt;strong&gt;&lt;i class=&quot;fa fa-share&quot;&gt;&lt;/i&gt; {{ text_checkout }}&lt;/strong&gt;&lt;/a&gt;&lt;/p&gt;\n      &lt;/div&gt;\n    &lt;/li&gt;\n    {% else %}\n    &lt;li&gt;\n      &lt;p class=&quot;text-center&quot;&gt;{{ text_empty }}&lt;/p&gt;\n    &lt;/li&gt;\n    {% endif %}\n  &lt;/ul&gt;\n&lt;/div&gt;\n', '2021-12-10 12:21:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '33d0ccccc3c06116eced545260cc5728cd99c9e3', 'utQFPuXTW', 'Huỳnh ', 'Ngân', 'namdh@ntt.edu.vn', 'catalog/hoa-baby-xanh-nho-xinh-xan.jpg', '', '::1', 1, '2021-11-27 04:01:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/facebook_business\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/theme\",\"design\\/translation\",\"design\\/seo_url\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/marketing\\/remarketing\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/payment\\/pp_braintree\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/event\",\"marketplace\\/api\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/facebook_business\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abū Z̧aby', 'AZ', 1),
(3507, 221, '‘Ajmān', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shāriqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'Ra’s al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Chỉ mục cho bảng `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Chỉ mục cho bảng `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Chỉ mục cho bảng `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Chỉ mục cho bảng `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Chỉ mục cho bảng `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Chỉ mục cho bảng `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Chỉ mục cho bảng `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Chỉ mục cho bảng `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Chỉ mục cho bảng `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Chỉ mục cho bảng `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Chỉ mục cho bảng `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Chỉ mục cho bảng `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Chỉ mục cho bảng `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Chỉ mục cho bảng `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Chỉ mục cho bảng `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Chỉ mục cho bảng `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Chỉ mục cho bảng `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Chỉ mục cho bảng `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Chỉ mục cho bảng `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Chỉ mục cho bảng `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Chỉ mục cho bảng `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Chỉ mục cho bảng `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Chỉ mục cho bảng `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Chỉ mục cho bảng `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Chỉ mục cho bảng `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Chỉ mục cho bảng `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Chỉ mục cho bảng `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Chỉ mục cho bảng `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Chỉ mục cho bảng `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Chỉ mục cho bảng `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Chỉ mục cho bảng `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Chỉ mục cho bảng `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Chỉ mục cho bảng `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Chỉ mục cho bảng `oc_googleshopping_category`
--
ALTER TABLE `oc_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_googleshopping_product_status`
--
ALTER TABLE `oc_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Chỉ mục cho bảng `oc_googleshopping_product_target`
--
ALTER TABLE `oc_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Chỉ mục cho bảng `oc_googleshopping_target`
--
ALTER TABLE `oc_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Chỉ mục cho bảng `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Chỉ mục cho bảng `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Chỉ mục cho bảng `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Chỉ mục cho bảng `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Chỉ mục cho bảng `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Chỉ mục cho bảng `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Chỉ mục cho bảng `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Chỉ mục cho bảng `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Chỉ mục cho bảng `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Chỉ mục cho bảng `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Chỉ mục cho bảng `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Chỉ mục cho bảng `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Chỉ mục cho bảng `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Chỉ mục cho bảng `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Chỉ mục cho bảng `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Chỉ mục cho bảng `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Chỉ mục cho bảng `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Chỉ mục cho bảng `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Chỉ mục cho bảng `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Chỉ mục cho bảng `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Chỉ mục cho bảng `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Chỉ mục cho bảng `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Chỉ mục cho bảng `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Chỉ mục cho bảng `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Chỉ mục cho bảng `oc_product_to_facebook`
--
ALTER TABLE `oc_product_to_facebook`
  ADD PRIMARY KEY (`product_to_facebook_id`);

--
-- Chỉ mục cho bảng `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Chỉ mục cho bảng `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Chỉ mục cho bảng `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Chỉ mục cho bảng `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Chỉ mục cho bảng `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Chỉ mục cho bảng `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Chỉ mục cho bảng `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Chỉ mục cho bảng `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Chỉ mục cho bảng `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Chỉ mục cho bảng `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Chỉ mục cho bảng `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Chỉ mục cho bảng `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Chỉ mục cho bảng `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Chỉ mục cho bảng `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Chỉ mục cho bảng `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Chỉ mục cho bảng `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Chỉ mục cho bảng `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Chỉ mục cho bảng `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Chỉ mục cho bảng `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Chỉ mục cho bảng `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Chỉ mục cho bảng `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Chỉ mục cho bảng `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Chỉ mục cho bảng `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Chỉ mục cho bảng `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Chỉ mục cho bảng `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT cho bảng `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT cho bảng `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1754;

--
-- AUTO_INCREMENT cho bảng `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT cho bảng `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT cho bảng `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2352;

--
-- AUTO_INCREMENT cho bảng `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT cho bảng `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555;

--
-- AUTO_INCREMENT cho bảng `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT cho bảng `oc_product_to_facebook`
--
ALTER TABLE `oc_product_to_facebook`
  MODIFY `product_to_facebook_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=980;

--
-- AUTO_INCREMENT cho bảng `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1266;

--
-- AUTO_INCREMENT cho bảng `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT cho bảng `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT cho bảng `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
