-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2024 at 02:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurantdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `email`, `register_date`, `phone_number`, `password`) VALUES
(1, 'john@gmail.com', '2023-08-31', '+1234567890', 'password123'),
(2, 'susan@gmail.com', '2023-08-30', '+1987654321', 'susanpassword'),
(3, 'james@gmail.com', '2023-08-29', '+18887776666', 'jamespass'),
(4, 'alice@gmail.com', '2023-08-28', '+15555555555', 'alicepassword'),
(5, 'mike@gmail.com', '2023-08-27', '+14444444444', 'mikepass'),
(6, 'lisa@gmail.com', '2023-08-26', '+13333333333', 'lisapassword'),
(7, 'robert@gmail.com', '2023-08-25', '+12222222222', 'robertpass'),
(8, 'malisha@gmail.com', '2023-08-24', '0765444107', 'malisha1999'),
(9, 'david@gmail.com', '2023-08-23', '+1993219999', 'davidp321ass'),
(10, 'ddwd@gmail.com', '2023-08-23', '+1999999329999', 'davidpa2ss'),
(11, 'dadsvawvid@gmail.com', '2023-08-23', '+12234132199', 'david4pass'),
(12, 'davdavid@gmail.com', '2023-08-23', '+123239999', 'davidp13ass'),
(13, 'davvdasid@gmail.com', '2023-08-23', '+1995324319999', 'david2pass'),
(14, '321david@gmail.com', '2023-08-23', '+1942199999', 'davidpa52ss'),
(15, '32avid@gmail.com', '2023-08-23', '+1942193429999', 'da2332ss'),
(16, '321da543vid@gmail.com', '2023-08-23', '+1942132199999', 'dav43a52ss'),
(17, '3211234avid@gmail.com', '2023-08-23', '+194213599999', '32533pa52ss'),
(18, '321543avid@gmail.com', '2023-08-23', '+1942154399999', '754dpa52ss'),
(19, 'rbsjsd@gmail.com', '2023-08-23', '+131351241239', '41f2s'),
(20, 'ol435143ivia@gmail.com', '2023-08-22', '+18888888888', 'oliviapass4215word'),
(21, 'robber@gmail.com', '2023-09-01', '+1234567890', 'password123'),
(22, 'jean@gmail.com', '2023-09-02', '+2345678901', 'password456'),
(23, 'emily@gmail.com', '2023-09-03', '+3456789012', 'password789'),
(24, 'robert@gmail.com', '2023-09-04', '+4567890123', 'passwordabc'),
(25, 'zoe@gmail.com', '2023-09-05', '+5678901234', 'passworddef'),
(26, 'lisa@gmail.com', '2023-09-06', '+6789012345', 'passwordghi'),
(27, 'taylor@gmail.com', '2023-09-07', '+7890123456', 'passwordjkl'),
(28, 'stephan@gmail.com', '2023-09-08', '+8901234567', 'passwordmno'),
(29, 'bruce@gmail.com', '2023-09-09', '+9012345678', 'passwordpqr'),
(30, 'jackie@gmail.com', '2023-09-10', '+0123456789', 'passwordstu'),
(31, 'malishadr946@gmail.com', '2024-07-23', '0765444107', 'password1234');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `bill_id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `card_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `bill_time` datetime DEFAULT NULL,
  `payment_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`bill_id`, `staff_id`, `member_id`, `reservation_id`, `table_id`, `card_id`, `payment_method`, `bill_time`, `payment_time`) VALUES
(1, 1, 1, 2220231, 1, 1, 'Card', '2023-09-28 22:45:00', '2023-09-28 22:50:00'),
(2, 1, 5, NULL, 5, NULL, 'Cash', '2023-09-28 19:00:00', '2023-09-28 19:05:00'),
(3, 1, 2, 2220232, 2, 2, 'Card', '2023-09-29 22:45:00', '2023-09-29 22:50:00'),
(4, 2, 3, 1920233, 3, NULL, 'Cash', '2023-09-30 20:15:00', '2023-09-30 20:20:00'),
(5, 2, 4, 2020234, 4, 3, 'Card', '2023-09-30 20:30:00', '2023-09-30 20:35:00'),
(6, 2, 8, NULL, 6, NULL, 'Cash', '2023-09-30 20:15:00', '2023-09-30 20:20:00'),
(7, 3, 5, 1920235, 5, NULL, 'Cash', '2023-10-01 20:15:00', '2023-10-01 20:20:00'),
(8, 3, 6, NULL, 7, NULL, 'Cash', '2023-10-01 19:00:00', '2023-10-01 19:05:00'),
(9, 3, 18, NULL, 2, NULL, 'Cash', '2023-10-01 18:30:00', '2023-10-01 18:35:00'),
(10, 4, 7, NULL, 9, NULL, 'Cash', '2023-10-02 19:30:00', '2023-10-02 19:35:00'),
(11, 4, 17, NULL, 8, NULL, 'Cash', '2023-10-02 20:00:00', '2023-10-02 20:05:00'),
(12, 4, 8, NULL, 10, 4, 'Card', '2023-10-02 19:00:00', '2023-10-02 19:05:00'),
(13, 5, 9, 1820237, 6, 5, 'Card', '2023-10-03 18:45:00', '2023-10-03 18:50:00'),
(14, 5, 16, NULL, 9, NULL, 'Cash', '2023-10-03 19:45:00', '2023-10-03 19:50:00'),
(15, 5, 10, NULL, 5, NULL, 'Cash', '2023-10-03 20:00:00', '2023-10-03 20:05:00'),
(16, 6, 11, NULL, 4, 6, 'Card', '2023-10-03 20:15:00', '2023-10-03 20:20:00'),
(17, 6, 8, NULL, 10, NULL, 'Cash', '2023-10-03 20:30:00', '2023-10-03 20:35:00'),
(18, 6, 12, NULL, 3, 7, 'Card', '2023-10-04 19:30:00', '2023-10-04 19:35:00'),
(19, 7, 13, NULL, 2, NULL, 'Cash', '2023-10-04 19:15:00', '2023-10-04 19:20:00'),
(20, 7, 14, 1920239, 1, NULL, 'Cash', '2023-10-05 20:30:00', '2023-10-05 20:35:00'),
(21, 7, 1, NULL, 6, NULL, 'Cash', '2023-10-05 14:00:00', '2023-10-05 14:05:00'),
(22, 8, 15, NULL, 8, 8, 'Card', '2023-10-05 20:45:00', '2023-10-05 20:50:00'),
(23, 8, 16, NULL, 7, NULL, 'Cash', '2023-10-05 20:00:00', '2023-10-05 20:05:00'),
(24, 8, 2, NULL, 9, NULL, 'Cash', '2023-10-05 19:30:00', '2023-10-05 19:35:00'),
(25, 8, 9, NULL, 4, NULL, 'Cash', '2023-10-05 20:15:00', '2023-10-05 20:20:00'),
(26, 9, 17, NULL, 9, 9, 'Card', '2023-10-05 12:00:00', '2023-10-05 12:05:00'),
(27, 9, 18, NULL, 10, 10, 'Card', '2023-10-06 13:15:00', '2023-10-06 13:20:00'),
(28, 9, 19, 14202310, 8, NULL, 'Cash', '2023-10-06 14:30:00', '2023-10-06 14:35:00'),
(29, 10, 7, NULL, 10, NULL, 'Cash', '2023-10-06 10:45:00', '2023-10-06 10:50:00'),
(30, 10, 20, NULL, 6, NULL, 'Cash', '2023-10-06 14:45:00', '2023-10-06 14:50:00'),
(31, NULL, NULL, NULL, 1, NULL, NULL, '2024-07-23 07:48:57', NULL),
(32, NULL, NULL, NULL, 1, NULL, NULL, '2024-07-23 07:49:09', NULL),
(33, NULL, NULL, NULL, 1, NULL, NULL, '2024-07-23 07:49:50', NULL),
(34, NULL, NULL, NULL, 1, NULL, NULL, '2024-07-23 07:59:05', NULL),
(35, NULL, NULL, NULL, 1, NULL, NULL, '2024-07-23 08:01:02', NULL),
(36, 8, 19, 1120241, 1, NULL, 'cash', '2024-07-23 08:03:39', '2024-07-23 08:04:55'),
(37, 8, 19, 1120241, 1, NULL, 'cash', '2024-07-24 05:21:01', '2024-07-24 05:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `bill_items`
--

CREATE TABLE `bill_items` (
  `bill_item_id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `item_id` varchar(6) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill_items`
--

INSERT INTO `bill_items` (`bill_item_id`, `bill_id`, `item_id`, `quantity`) VALUES
(1, 1, 'MD1', 2),
(2, 1, 'MD15', 1),
(3, 1, 'S3', 2),
(4, 1, 'L1', 1),
(5, 2, 'MD2', 1),
(6, 2, 'MD5', 2),
(7, 2, 'MD16', 1),
(8, 2, 'S5', 2),
(9, 2, 'L2', 1),
(10, 2, 'HC2', 2),
(11, 3, 'MD19', 1),
(12, 3, 'MD2', 1),
(13, 3, 'MD4', 1),
(14, 3, 'S6', 2),
(15, 3, 'L3', 1),
(16, 3, 'HC3', 2),
(17, 4, 'MD23', 1),
(18, 4, 'MD9', 1),
(19, 4, 'L2', 2),
(20, 4, 'C3', 1),
(21, 4, 'HC4', 2),
(22, 5, 'MD23', 1),
(23, 5, 'S1', 1),
(24, 5, 'S8', 2),
(25, 5, 'L5', 1),
(26, 5, 'HC5', 2),
(27, 6, 'MD23', 1),
(28, 6, 'MD21', 1),
(29, 6, 'C1', 1),
(30, 6, 'C2', 2),
(31, 7, 'MD23', 1),
(32, 7, 'S1', 1),
(33, 7, 'S4', 1),
(34, 7, 'C3', 1),
(35, 7, 'C4', 2),
(36, 8, 'MD23', 1),
(37, 8, 'L2', 1),
(38, 8, 'C3', 1),
(39, 8, 'L5', 1),
(40, 8, 'C4', 2),
(41, 8, 'M1', 1),
(42, 8, 'M2', 2),
(43, 9, 'MD23', 1),
(44, 9, 'M1', 1),
(45, 9, 'M4', 1),
(46, 9, 'M2', 1),
(47, 9, 'M5', 2),
(48, 9, 'M6', 1),
(49, 9, 'HD1', 2),
(50, 10, 'SK3', 1),
(51, 10, 'SK6', 1),
(52, 10, 'CP1', 1),
(53, 10, 'CP2', 1),
(54, 10, 'CP3', 2),
(55, 10, 'CP4', 1),
(56, 10, 'CP5', 2),
(57, 11, 'MD1', 2),
(58, 11, 'MD15', 1),
(59, 11, 'S3', 2),
(60, 11, 'L1', 1),
(61, 12, 'MD2', 1),
(62, 12, 'MD5', 2),
(63, 12, 'MD16', 1),
(64, 12, 'S5', 2),
(65, 12, 'L2', 1),
(66, 12, 'HC2', 2),
(67, 13, 'MD19', 1),
(68, 13, 'MD2', 1),
(69, 13, 'MD4', 1),
(70, 13, 'S6', 2),
(71, 13, 'L3', 1),
(72, 13, 'HC3', 2),
(73, 14, 'MD23', 1),
(74, 14, 'MD9', 1),
(75, 14, 'L2', 2),
(76, 14, 'C3', 1),
(77, 14, 'HC4', 2),
(78, 15, 'MD23', 1),
(79, 15, 'S1', 1),
(80, 15, 'S8', 2),
(81, 15, 'L5', 1),
(82, 15, 'HC5', 2),
(83, 16, 'MD23', 1),
(84, 16, 'MD21', 1),
(85, 16, 'C1', 1),
(86, 16, 'C2', 2),
(87, 17, 'MD23', 1),
(88, 17, 'MD41', 1),
(89, 17, 'S4', 1),
(90, 17, 'C3', 1),
(91, 17, 'C4', 2),
(92, 18, 'MD23', 1),
(93, 18, 'MD32', 1),
(94, 18, 'MD33', 1),
(95, 18, 'L5', 1),
(96, 18, 'C4', 2),
(97, 18, 'M1', 1),
(98, 18, 'M2', 2),
(99, 19, 'MD23', 1),
(100, 19, 'M1', 1),
(101, 19, 'M4', 1),
(102, 19, 'MD29', 1),
(103, 19, 'M5', 2),
(104, 19, 'M6', 1),
(105, 19, 'HD1', 2),
(106, 20, 'MD42', 1),
(107, 20, 'SK6', 1),
(108, 20, 'CP1', 1),
(109, 20, 'CP2', 1),
(110, 20, 'CP3', 2),
(111, 20, 'CP4', 1),
(112, 20, 'CP5', 2),
(113, 21, 'MD1', 2),
(114, 21, 'MD15', 1),
(115, 21, 'S3', 2),
(116, 21, 'S1', 1),
(117, 22, 'MD2', 1),
(118, 22, 'MD5', 2),
(119, 22, 'MD16', 1),
(120, 22, 'S5', 2),
(121, 22, 'SK2', 1),
(122, 22, 'HC2', 2),
(123, 23, 'MD9', 1),
(124, 23, 'MD21', 1),
(125, 23, 'M6', 1),
(126, 23, 'SK6', 2),
(127, 23, 'L9', 1),
(128, 23, 'HC5', 2),
(129, 24, 'MD23', 1),
(130, 24, 'HD2', 1),
(131, 24, 'MD2', 2),
(132, 24, 'M3', 1),
(133, 24, 'HC1', 2),
(134, 25, 'MD2', 1),
(135, 25, 'MD21', 1),
(136, 25, 'MD8', 2),
(137, 25, 'L5', 1),
(138, 25, 'HC5', 2),
(139, 26, 'MD23', 1),
(140, 26, 'MD21', 1),
(141, 26, 'C1', 1),
(142, 26, 'C2', 2),
(143, 27, 'MD23', 1),
(144, 27, 'MD11', 1),
(145, 27, 'MD4', 1),
(146, 27, 'C3', 1),
(147, 27, 'C4', 2),
(148, 28, 'MD23', 1),
(149, 28, 'MD22', 1),
(150, 28, 'M3', 1),
(151, 28, 'CP5', 1),
(152, 28, 'SK4', 2),
(153, 28, 'M1', 1),
(154, 28, 'MD2', 2),
(155, 29, 'MD23', 1),
(156, 29, 'M1', 1),
(157, 29, 'M4', 1),
(158, 29, 'MD2', 1),
(159, 29, 'M5', 2),
(160, 29, 'CP1', 1),
(161, 29, 'HD1', 2),
(162, 30, 'MD3', 1),
(163, 30, 'MD6', 1),
(164, 30, 'MD11', 1),
(165, 30, 'MD22', 1),
(166, 30, 'CP3', 2),
(167, 30, 'CP4', 1),
(168, 30, 'CP5', 2),
(169, 34, 'C1', 12),
(171, 36, 'C1', 12),
(172, 37, 'C1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `card_payments`
--

CREATE TABLE `card_payments` (
  `card_id` int(11) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `expiry_date` varchar(7) NOT NULL,
  `security_code` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `card_payments`
--

INSERT INTO `card_payments` (`card_id`, `account_holder_name`, `card_number`, `expiry_date`, `security_code`) VALUES
(1, 'John Smith', '1234567890123456', '10/15', '123'),
(2, 'Susan Johnson', '2345678901234567', '10/24', '456'),
(3, 'James Brown', '3456789012345678', '09/30', '789'),
(4, 'Alice Davis', '4567890123456789', '09/28', '321'),
(5, 'Mike Wilson', '5678901234567890', '09/29', '654'),
(6, 'Robert Miller', '7890123456789012', '10/19', '123'),
(7, 'Abbel TuTuTu', '1234123412341234', '10/25', '654'),
(8, 'Abignail Downey', '2345234523452345', '10/24', '987'),
(9, 'Jamie Mustafa', '3456345634563456', '09/23', '123'),
(10, 'Luke Gun Slinger', '4567456745674567', '09/22', '456');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `image_name`, `image_path`) VALUES
(45, 'plaza-principal_standard.jpg', '../uploads/plaza-principal_standard.jpg'),
(46, 'monumento-a-la-patria-1_standard (1).jpg', '../uploads/monumento-a-la-patria-1_standard (1).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kitchen`
--

CREATE TABLE `kitchen` (
  `kitchen_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `item_id` varchar(6) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `time_submitted` datetime DEFAULT NULL,
  `time_ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kitchen`
--

INSERT INTO `kitchen` (`kitchen_id`, `table_id`, `item_id`, `quantity`, `time_submitted`, `time_ended`) VALUES
(1, 6, 'SK3', 4, '2023-10-03 18:45:00', '2023-10-03 18:46:00'),
(2, 6, 'CP2', 3, '2023-10-03 18:45:00', '2023-10-03 18:46:00'),
(3, 5, 'S3', 5, '2023-10-03 20:00:00', '2024-07-23 07:51:39'),
(4, 5, 'MD15', 2, '2023-10-03 14:45:00', '2023-10-03 14:46:00'),
(5, 1, 'MD1', 1, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(6, 1, 'MD15', 2, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(7, 1, 'S3', 1, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(8, 1, 'L1', 1, '2023-09-28 22:45:00', '2023-09-28 23:00:00'),
(9, 5, 'MD2', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(10, 5, 'MD5', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(11, 5, 'MD16', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(12, 5, 'S5', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(13, 5, 'L2', 2, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(14, 5, 'HC2', 1, '2023-09-28 19:00:00', '2023-09-28 19:15:00'),
(15, 2, 'MD19', 2, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(16, 2, 'MD2', 1, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(17, 2, 'MD4', 2, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(18, 2, 'S6', 2, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(19, 2, 'L3', 1, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(20, 2, 'HC3', 1, '2023-09-29 22:45:00', '2023-09-29 23:00:00'),
(21, 10, 'MD23', 1, '2023-10-06 10:45:00', NULL),
(22, 10, 'MD2', 1, '2023-10-06 10:45:00', NULL),
(23, 6, 'MD22', 1, '2023-10-06 14:45:00', NULL),
(24, 6, 'CP5', 2, '2023-10-06 14:45:00', NULL),
(27, 1, 'C1', 12, '2024-07-23 08:03:47', NULL),
(28, 1, 'C1', 2, '2024-07-24 05:21:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `member_id` int(11) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`member_id`, `member_name`, `points`, `account_id`) VALUES
(1, 'Abbel TuTuTu', 100, 11),
(2, 'Abignail Downey ', 200, 12),
(3, 'Jamie Mustafa', 300, 13),
(4, 'Luke Gun Slinger', 400, 14),
(5, 'Johny Rings', 500, 15),
(6, 'Wee Tuu Low', 600, 16),
(7, 'Sum Ting Wong', 700, 17),
(8, 'Ho Lee Fuk', 800, 18),
(9, 'Bang Ding Ow', 900, 19),
(10, 'Rocky Rocket', 1000, 20),
(11, 'Robber Hellington', 250, 21),
(12, 'Jean Ng', 300, 22),
(13, 'Emily Davis', 400, 23),
(14, 'Robert Wilson', 550, 24),
(15, 'Zoe Chong', 650, 25),
(16, 'Lisa Chia', 750, 26),
(17, 'Taylor Swift', 900, 27),
(18, 'Stephan Curry', 1050, 28),
(19, 'Bruce Lee', 1630, 29),
(20, 'Jackie Chan', 1350, 30),
(21, 'who', 0, 31);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `item_id` varchar(6) NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `item_category` varchar(255) DEFAULT NULL,
  `item_price` decimal(10,2) DEFAULT NULL,
  `item_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`item_id`, `item_name`, `item_type`, `item_category`, `item_price`, `item_description`) VALUES
('C1', 'Kamikaze', 'Classic Cocktails', 'Drinks', 28.00, 'cocktails'),
('C2', 'Singapore Sling', 'Classic Cocktails', 'Drinks', 29.00, 'cocktails'),
('C3', 'Long Island Iced Tea', 'Classic Cocktails', 'Drinks', 29.00, 'cocktails'),
('C4', 'Lady on the Beach', 'Classic Cocktails', 'Drinks', 29.00, 'cocktails'),
('C5', 'Margarita', 'Classic Cocktails', 'Drinks', 29.00, 'cocktails'),
('C6', 'Pina Colada', 'Classic Cocktails', 'Drinks', 26.00, 'cocktails'),
('C7', 'Mojito', 'Classic Cocktails', 'Drinks', 29.00, 'cocktails'),
('CP1', 'Green Apple', 'Cold Pressed Juice', 'Drinks', 15.00, 'fresh pressed juice'),
('CP2', 'Orange', 'Cold Pressed Juice', 'Drinks', 15.00, 'fresh pressed juice'),
('CP3', 'Carrot', 'Cold Pressed Juice', 'Drinks', 15.00, 'fresh pressed juice'),
('CP4', 'Watermelon', 'Cold Pressed Juice', 'Drinks', 13.00, 'fresh pressed juice'),
('CP5', 'Pineapple', 'Cold Pressed Juice', 'Drinks', 13.00, 'fresh pressed juice'),
('CP6', 'Lime', 'Cold Pressed Juice', 'Drinks', 10.00, 'fresh pressed juice'),
('HC1', 'Shoney Iced Tea', 'House Cocktails', 'Drinks', 32.00, 'Gin, Rum'),
('HC2', 'Blue Lady', 'House Cocktails', 'Drinks', 30.00, 'Vodka'),
('HC3', 'Black Mambaa', 'House Cocktails', 'Drinks', 30.00, 'Vodka'),
('HC4', 'Lycheetini', 'House Cocktails', 'Drinks', 25.00, 'Vodka'),
('HC5', 'Chichi', 'House Cocktails', 'Drinks', 25.00, 'Vodka'),
('HD1', 'Brownies', 'House Dessert', 'Side Snacks', 15.00, 'delicious brownies'),
('HD2', 'American Cheese Cake', 'House Dessert', 'Side Snacks', 15.00, 'delicious cheese cake'),
('HD3', 'Pie of the Day', 'House Dessert', 'Side Snacks', 13.00, 'delicious served with vanilla ice cream'),
('HD4', 'Coated Ice Cream', 'House Dessert', 'Side Snacks', 12.00, 'delicious ice cream'),
('HD5', 'Messy Sundae', 'House Dessert', 'Side Snacks', 14.00, 'delicious brownies'),
('L1', 'Blended Scotch (Black Label)', 'Liquor', 'Drinks', 310.00, 'Johnny Walker Black Label Sherry 700ml'),
('L2', 'Blended Scotch (Gold Label)', 'Liquor', 'Drinks', 390.00, 'Johnny Walker Gold Label 750ml'),
('L3', 'American Whisky (Jack Daniel)', 'Liquor', 'Drinks', 290.00, '700ml'),
('L4', 'American Whisky (Jim Beam)', 'Liquor', 'Drinks', 270.00, '750ml'),
('L5', 'Single Malt', 'Liquor', 'Drinks', 360.00, 'Singleton Signature 700ml'),
('L6', 'Cognac', 'Liquor', 'Drinks', 390.00, 'Hennessy VSOP 700ml'),
('L7', 'Vodka', 'Liquor', 'Drinks', 195.00, 'Smirnoff Red 700ml'),
('L8', 'Tequila', 'Liquor', 'Drinks', 165.00, 'Jose Cuervo 750ml'),
('L9', 'Gin', 'Liquor', 'Drinks', 210.00, 'Gordon 700ml'),
('M1', 'Cool & Refreshing', 'Mocktails', 'Drinks', 16.00, 'Cucumber,peppermint,lemon'),
('M2', 'Virgin Apple Mojito', 'Mocktails', 'Drinks', 16.00, 'Green apple, mint leaf'),
('M3', 'Shirley Temple', 'Mocktails', 'Drinks', 16.00, 'Lemonade, grenadine'),
('M4', 'Purple Rain', 'Mocktails', 'Drinks', 16.00, 'Blackcurrant, strawberry'),
('M5', 'Silly Rose', 'Mocktails', 'Drinks', 16.00, 'Green Tea, lychee, rose'),
('M6', 'Incredible Green', 'Mocktails', 'Drinks', 16.00, 'Green apple, lemon, lime, soda'),
('MD1', 'Prime Rib Steak', 'Steak & Ribs', 'Main Dishes', 96.00, '300g'),
('MD10', 'Braised Lamb Shank', 'Lamb', 'Main Dishes', 52.00, 'delicious braised lamb shank'),
('MD11', 'Catch of the day', 'Seafood', 'Main Dishes', 46.00, 'fresh seafood'),
('MD12', 'Grilled Salmon', 'Seafood', 'Main Dishes', 48.00, 'fresh salmon'),
('MD13', 'Jambalaya', 'Seafood', 'Main Dishes', 28.00, 'delicious jambalaya'),
('MD14', 'Fish & Chips', 'Seafood', 'Main Dishes', 35.00, 'delicious fish & chips'),
('MD15', 'Classic Cheese Burger', 'Burgers & Sandwiches', 'Main Dishes', 30.00, 'delicious burger'),
('MD16', 'Hickory Burger', 'Burgers & Sandwiches', 'Main Dishes', 30.00, 'delicious burger'),
('MD17', 'Fried Chicken Burger', 'Burgers & Sandwiches', 'Main Dishes', 24.00, 'delicious burger'),
('MD18', 'Grilled Chicken Burger', 'Burgers & Sandwiches', 'Main Dishes', 24.00, 'delicious burger'),
('MD19', 'Chili Dog', 'Burgers & Sandwiches', 'Main Dishes', 25.00, 'delicious sandwich'),
('MD2', 'Sirloin Steak', 'Steak & Ribs', 'Main Dishes', 79.00, '230g'),
('MD20', 'Meatballs Sandwich', 'Burgers & Sandwiches', 'Main Dishes', 25.00, 'delicious sandwich'),
('MD21', 'Street Car', 'Burgers & Sandwiches', 'Main Dishes', 24.00, 'delicious sandwich'),
('MD22', 'Shrimp Po Boy', 'Burgers & Sandwiches', 'Main Dishes', 32.00, 'delicious sandwich'),
('MD23', 'Chicken Po Boy', 'Burgers & Sandwiches', 'Main Dishes', 28.00, 'delicious sandwich'),
('MD24', 'Chicken Tortilla', 'Burgers & Sandwiches', 'Main Dishes', 22.00, 'delicious sandwich'),
('MD25', 'Bolognese', 'Pasta', 'Main Dishes', 26.00, 'Spaghetti'),
('MD26', 'Meat Balls', 'Pasta', 'Main Dishes', 28.00, 'Spaghetti'),
('MD27', 'Carbonara', 'Pasta', 'Main Dishes', 28.00, 'Penne'),
('MD28', 'Chicken & Mushroom Aglio Olio', 'Pasta', 'Main Dishes', 28.00, 'Penne'),
('MD29', 'Chicken Arabiatta', 'Pasta', 'Main Dishes', 28.00, 'Spaghetti'),
('MD3', 'Ribeye Steak', 'Steak & Ribs', 'Main Dishes', 96.00, '230g'),
('MD30', 'Seafood Aglio Olio', 'Pasta', 'Main Dishes', 32.00, 'Spaghetti'),
('MD31', 'Shrimp', 'Pasta', 'Main Dishes', 32.00, 'Penne'),
('MD32', 'Italian Chicken', 'Pasta', 'Main Dishes', 30.00, 'Chef\'s Signature Pasta'),
('MD33', 'Braised Lamb Cutlet', 'Pasta', 'Main Dishes', 33.00, 'Chef\'s Signature Pasta'),
('MD34', 'Fries', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD35', 'Potato Wedges', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD36', 'Garden Salad', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD37', 'V.O.D', 'Side Dishes', 'Side Snacks', 9.00, 'delicious vegetables'),
('MD38', 'Wan Tan', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD39', 'Buttered Corn', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD4', 'BBQ Ribs', 'Steak & Ribs', 'Main Dishes', 59.00, '400g'),
('MD40', 'Coleslaw', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD41', 'Garlic Bread', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD42', 'Dirty Rice', 'Side Dishes', 'Side Snacks', 9.00, 'delicious'),
('MD5', 'Grilled Chicken ½ Bird', 'Chicken', 'Main Dishes', 33.00, '½ Bird'),
('MD6', 'Southern Fried Chicken ½ Bird', 'Chicken', 'Main Dishes', 33.00, '½ Bird'),
('MD7', 'Pan Seared Chicken', 'Chicken', 'Main Dishes', 28.00, '300g'),
('MD8', 'Chicken Chop', 'Chicken', 'Main Dishes', 28.00, '300g'),
('MD9', 'Grilled Lamb Chops', 'Lamb', 'Main Dishes', 48.00, 'delicious grilled lamb chop'),
('S1', 'Buffalo Wings', 'Bar Bites', 'Side Snacks', 24.00, 'delicious buffalo wings'),
('S10', 'Shoney Salad', 'Salad', 'Side Snacks', 20.00, 'delicious salad'),
('S2', 'Fried Calamari', 'Bar Bites', 'Side Snacks', 29.00, 'delicious fried calamari'),
('S3', 'Cheesy Baked Mussels ½ Dozen', 'Bar Bites', 'Side Snacks', 23.00, '½ Dozen'),
('S4', 'Cheesy Baked Mussels 1 Dozen', 'Bar Bites', 'Side Snacks', 38.00, '1 Dozen'),
('S5', 'Chopped Lamb Chops', 'Bar Bites', 'Side Snacks', 39.00, 'Delicious lamb chop'),
('S6', 'Nachos', 'Bar Bites', 'Side Snacks', 28.00, 'delicious nachos'),
('S7', 'Cheesy Fries', 'Bar Bites', 'Side Snacks', 14.00, 'delicious cheesy fries'),
('S8', 'Cheesy Meat Fries', 'Bar Bites', 'Side Snacks', 22.00, 'delicious cheesy meat fries'),
('S9', 'Grilled Chicken Caesar Salad', 'Salad', 'Side Snacks', 24.00, 'delicious salad'),
('SK1', 'Chicken Tenders', 'Shoney Kid', 'Side Snacks', 12.00, 'delicious chicken tenders'),
('SK2', 'Chicken Wings', 'Shoney Kid', 'Side Snacks', 12.00, 'delicious chicken wings'),
('SK3', 'Fish Fingers', 'Shoney Kid', 'Side Snacks', 15.00, 'served with fries & corn'),
('SK4', 'Cheesy Pasta', 'Shoney Kid', 'Side Snacks', 12.00, 'delicious cheesy pasta'),
('SK5', 'Meat Sauce Pasta', 'Shoney Kid', 'Side Snacks', 12.00, 'delicious pasta'),
('SK6', 'Milo', 'Shoney Kid', 'Side Snacks', 2.50, '200ml pack'),
('SK7', 'Ribena', 'Shoney Kid', 'Side Snacks', 3.50, '330ml pack'),
('SK8', 'Fruity Yogurt Smoothies', 'Shoney Kid', 'Side Snacks', 5.00, 'watermelon or pineapple'),
('SK9', 'Ice Cream MilkShakes', 'Shoney Kid', 'Side Snacks', 5.00, 'vanilla or chocolate');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `subtitle`, `description`, `image_path`, `created_at`) VALUES
(1, '50% off', 'Today', 'afsefsrf t', '../uploads/offers/66d5855c5745d.png', '2024-09-02 09:29:00'),
(2, '200% off', 'Why not?', 'we pay u', '../uploads/offers/66d592d56e29c.png', '2024-09-02 10:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservation_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `head_count` int(11) DEFAULT NULL,
  `special_request` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservation_id`, `customer_name`, `table_id`, `reservation_time`, `reservation_date`, `head_count`, `special_request`) VALUES
(1111111, 'Default', 9, '19:15:00', '2023-10-05', 2, 'Description'),
(1120241, 'Passani', 1, '11:00:00', '2024-07-23', 4, 'svsrvsvs'),
(1220241, 'Passani', 1, '12:00:00', '2024-07-23', 4, ''),
(1320241, 'Passani', 1, '13:00:00', '2024-07-25', 4, ' '),
(1520245, 'Passani', 5, '15:00:00', '2024-07-24', 6, ''),
(1820237, 'Jean Ng', 7, '18:30:00', '2023-10-03', 2, 'Allergies: peanuts'),
(1920233, 'Jamie Mustafa', 3, '19:30:00', '2023-09-30', 2, 'Vegan options needed'),
(1920235, 'Johny Rings', 5, '19:45:00', '2023-10-01', 2, 'Quiet corner, please'),
(1920239, 'Taylor Swift', 9, '19:15:00', '2023-10-05', 2, 'Surprise dessert for anniversary'),
(2020234, 'Luke Gun Slinger', 4, '20:00:00', '2023-09-30', 3, 'Birthday celebration'),
(2220231, 'Abbel Tu Far Behind', 1, '22:00:34', '2023-09-28', 1, 'Prepare Panadol for me'),
(2220232, 'Abignaile Lin Downney Jr', 2, '22:00:34', '2023-09-29', 1, 'Default Special Request'),
(14202310, 'Bruce Lee', 10, '14:45:00', '2023-10-06', 3, 'Window seat, if available');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_tables`
--

CREATE TABLE `restaurant_tables` (
  `table_id` int(11) NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant_tables`
--

INSERT INTO `restaurant_tables` (`table_id`, `capacity`, `is_available`) VALUES
(1, 4, 1),
(2, 4, 1),
(3, 4, 1),
(4, 6, 1),
(5, 6, 1),
(6, 6, 1),
(7, 6, 1),
(8, 8, 1),
(9, 8, 1),
(10, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `staff_id` int(11) NOT NULL,
  `staff_name` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`staff_id`, `staff_name`, `role`, `account_id`) VALUES
(1, 'John Smith', 'Waiter', 1),
(2, 'Susan Johnson', 'Waiter', 2),
(3, 'James Brown', 'Waiter', 3),
(4, 'Alice Davis', 'Waiter', 4),
(5, 'Mike Wilson', 'Waiter', 5),
(6, 'Lisa Martinez', 'Chef', 6),
(7, 'Robert Miller', 'Manager', 7),
(8, 'Malisha Dissanayake', 'Manager', 8),
(9, 'David Taylor', 'Chef', 9),
(10, 'Olivia Anderson', 'Chef', 10);

-- --------------------------------------------------------

--
-- Table structure for table `table_availability`
--

CREATE TABLE `table_availability` (
  `availability_id` int(11) NOT NULL,
  `table_id` int(11) DEFAULT NULL,
  `reservation_date` date DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_availability`
--

INSERT INTO `table_availability` (`availability_id`, `table_id`, `reservation_date`, `reservation_time`, `status`) VALUES
(1120241, 1, '2024-07-23', '11:00:00', 'no'),
(1220241, 1, '2024-07-23', '12:00:00', 'no'),
(1320241, 1, '2024-07-25', '13:00:00', 'no'),
(1520245, 5, '2024-07-24', '15:00:00', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `reservation_id` (`reservation_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `card_id` (`card_id`);

--
-- Indexes for table `bill_items`
--
ALTER TABLE `bill_items`
  ADD PRIMARY KEY (`bill_item_id`),
  ADD KEY `bill_id` (`bill_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `card_payments`
--
ALTER TABLE `card_payments`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kitchen`
--
ALTER TABLE `kitchen`
  ADD PRIMARY KEY (`kitchen_id`),
  ADD KEY `table_id` (`table_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservation_id`),
  ADD KEY `table_id` (`table_id`);

--
-- Indexes for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `table_availability`
--
ALTER TABLE `table_availability`
  ADD PRIMARY KEY (`availability_id`),
  ADD KEY `table_id` (`table_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `bill_items`
--
ALTER TABLE `bill_items`
  MODIFY `bill_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `card_payments`
--
ALTER TABLE `card_payments`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `kitchen`
--
ALTER TABLE `kitchen`
  MODIFY `kitchen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14202311;

--
-- AUTO_INCREMENT for table `restaurant_tables`
--
ALTER TABLE `restaurant_tables`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `table_availability`
--
ALTER TABLE `table_availability`
  MODIFY `availability_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1520246;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staffs` (`staff_id`),
  ADD CONSTRAINT `bills_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `memberships` (`member_id`),
  ADD CONSTRAINT `bills_ibfk_3` FOREIGN KEY (`reservation_id`) REFERENCES `reservations` (`reservation_id`),
  ADD CONSTRAINT `bills_ibfk_4` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`table_id`),
  ADD CONSTRAINT `bills_ibfk_5` FOREIGN KEY (`card_id`) REFERENCES `card_payments` (`card_id`);

--
-- Constraints for table `bill_items`
--
ALTER TABLE `bill_items`
  ADD CONSTRAINT `bill_items_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`bill_id`),
  ADD CONSTRAINT `bill_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `menu` (`item_id`);

--
-- Constraints for table `kitchen`
--
ALTER TABLE `kitchen`
  ADD CONSTRAINT `kitchen_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`table_id`),
  ADD CONSTRAINT `kitchen_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `menu` (`item_id`);

--
-- Constraints for table `memberships`
--
ALTER TABLE `memberships`
  ADD CONSTRAINT `memberships_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`table_id`);

--
-- Constraints for table `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `staffs_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`);

--
-- Constraints for table `table_availability`
--
ALTER TABLE `table_availability`
  ADD CONSTRAINT `table_availability_ibfk_1` FOREIGN KEY (`table_id`) REFERENCES `restaurant_tables` (`table_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
