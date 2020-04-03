-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2016 at 03:44 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop_cart_sessions_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='products that can be added to cart' AUTO_INCREMENT=41 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `created`, `modified`) VALUES
(1, 'Hot Taro Ball#1', 'mung beans, barley, boba, taro balls, red bean soup', '6.00', '2016-10-28 20:49:40', '2016-10-28 12:49:40'),
(2, 'Qingtuan', 'sweet green rice ball', '10.50', '2016-10-28 20:52:43', '2016-10-28 12:52:43'),
(3, 'Milk tea', 'top is cream,can add pudding, grass jelly', '5.50', '2016-10-28 20:56:23', '2016-10-28 12:56:23'),
(4, 'Bao', 'Pork and mixed vetgetable inside', '10.55', '2016-10-28 20:58:02', '2016-10-28 12:58:02'),
(5, 'Matcha crepe(8inch)', 'cream and little pieces of mango inside', '70.50', '2016-10-28 20:59:20', '2016-10-28 12:59:20'),
(6, 'Spicy Oxtail soup', 'Korean style', '60.00', '2016-10-28 21:03:19', '2016-10-28 13:03:19'),
(7, 'Sushi', 'mixed vegetable and pork slices', '20.50', '2016-10-28 21:05:30', '2016-10-28 13:05:30'),
(8, 'Chocolate ice-cream', 'soft', '9.00', '2016-10-28 21:06:34', '2016-10-28 13:06:34'),
(9, 'Pizza', 'thin base', '32.24', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(10, 'Macaron', 'different tastes', '30.00', '2016-10-28 21:08:52', '2016-10-28 13:08:52'),
(11, 'Bread and Garlic on top', 'soft and fresh feel', '16.00', '2016-10-28 21:09:44', '2016-10-28 13:09:44'),
(12, 'Mixed Fruit drink', 'Organic and healthy', '15.00', '2016-10-28 21:46:06', '2016-10-28 13:46:06'),
(13, 'Latte Coffee', 'customized design', '10.00', '2016-11-02 20:15:38', '2016-11-02 12:15:38'),
(14, 'Thai tea', 'sweet', '4.00','2016-11-02 20:15:38', '2016-11-02 12:15:38'),
(15, 'Chocolate cake', 'sweet', '32.24', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(16, 'Apple pie 4pieces', 'juicy', '32.24', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(17, 'Soft Bread', 'sweet', '32.24', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(18, 'Cheese cake(8inch)', 'sweet', '32.24', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(19, 'Oreos cake(8inch)', 'sweet', '32.24', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(20, 'Coffee cake(8inch)', 'sweet', '32.24', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(21, 'Mango cake(8inch)', 'sweet', '32.24', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(22, 'Fruit tart', 'sweet', '10.00', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(23, 'Chocolate chip cookies', 'sweet', '6.00', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(24, 'Egg tart', 'sweet', '10.00', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(25, 'Caremel pudding', 'sweet', '6.00', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(26, 'Colorful dumping', 'mixed vegetable', '30.00', '2016-10-28 21:08:05', '2016-10-28 13:08:05');
-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(512) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='image files related to a product' AUTO_INCREMENT=105 ;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `name`, `created`, `modified`) VALUES
(1, 1, '1.jpg', '2016-10-28 20:58:02', '2016-10-28 12:58:02'),
(2, 2, '2.jpg', '2016-10-28 20:56:23', '2016-10-28 12:56:23'),
(3, 3, '3.jpg', '2016-10-28 20:56:23', '2016-10-28 12:56:23'),
(4, 4, '4.jpg', '2016-10-28 20:52:43', '2016-10-28 12:52:43'),
(5, 5, '5.jpg', '2016-10-28 20:52:43', '2016-10-28 12:52:43'),
(6, 6, '6.jpg', '2016-10-28 20:49:40', '2016-10-28 12:49:40'),
(7, 7, '7.jpg', '2016-10-28 20:49:40', '2016-10-28 12:49:40'),
(8, 8, '8.jpg', '2016-10-28 20:59:20', '2016-10-28 12:59:20'),
(9, 9, '9.jpg', '2016-10-28 20:59:20', '2016-10-28 12:59:20'),
(10, 10, '10.jpg', '2016-10-28 21:03:19', '2016-10-28 13:03:19'),
(11, 11, '11.jpg', '2016-10-28 21:03:19', '2016-10-28 13:03:19'),
(12, 12, '12.jpg', '2016-10-28 21:05:30', '2016-10-28 13:05:30'),
(13, 13, '13.jpg', '2016-10-28 21:05:30', '2016-10-28 13:05:30'),
(14, 14, '14.jpg', '2016-10-28 21:06:34', '2016-10-28 13:06:34'),
(15, 15, '15.jpg', '2016-10-28 21:06:34', '2016-10-28 13:06:34'),
(16, 16, '16.jpg', '2016-10-28 21:06:34', '2016-10-28 13:06:34'),
(17, 17, '17.jpg', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(18, 18, '18.jpg', '2016-10-28 21:08:05', '2016-10-28 13:08:05'),
(19, 19, '19.jpg', '2016-10-28 21:08:52', '2016-10-28 13:08:52'),
(20, 20, '20.jpg', '2016-10-28 21:08:52', '2016-10-28 13:08:52'),
(21, 21, '21.jpg', '2016-10-28 21:08:52', '2016-10-28 13:08:52'),
(22, 22, '22.jpg', '2016-10-28 21:09:44', '2016-10-28 13:09:44'),
(23, 23, '23.jpg', '2016-10-28 21:09:44', '2016-10-28 13:09:44'),
(24, 24, '24.jpg', '2016-10-28 21:09:44', '2016-10-28 13:09:44'),
(25, 25, '25.jpg', '2016-10-28 21:46:06', '2016-10-28 13:46:06'),
(26, 26, '26.jpg', '2016-10-28 21:46:06', '2016-10-28 13:46:06');



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
