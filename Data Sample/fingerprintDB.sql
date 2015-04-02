-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2015 at 06:54 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fingerprintWeb2`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE IF NOT EXISTS `form` (
`id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `collected_date` date NOT NULL,
  `organisation` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=517 ;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `email`, `collected_date`, `organisation`) VALUES
(1, '1@admin.com', '2015-01-01', 1),
(2, '1@admin.com', '2015-01-01', 1),
(3, '1@admin.com', '2015-01-01', 1),
(4, '1@admin.com', '2015-01-01', 1),
(5, '1@admin.com', '2015-01-01', 1),
(6, '1@admin.com', '2015-01-01', 1),
(7, '1@admin.com', '2015-01-01', 1),
(8, '1@admin.com', '2015-01-01', 1),
(9, '1@admin.com', '2015-01-01', 1),
(10, '1@admin.com', '2015-01-01', 1),
(11, '1@admin.com', '2015-01-01', 1),
(12, '1@admin.com', '2015-01-01', 1),
(13, '1@admin.com', '2015-01-01', 1),
(14, '1@admin.com', '2015-01-01', 1),
(15, '1@admin.com', '2015-01-01', 1),
(16, '1@admin.com', '2015-01-01', 1),
(17, '1@admin.com', '2015-01-01', 1),
(18, '1@admin.com', '2015-01-01', 1),
(19, '1@admin.com', '2015-01-01', 1),
(20, '1@admin.com', '2015-01-01', 1),
(21, '1@admin.com', '2015-01-01', 1),
(22, '1@admin.com', '2015-01-01', 1),
(23, '1@admin.com', '2015-01-01', 1),
(24, '1@admin.com', '2015-01-01', 1),
(25, '2@admin.com', '2015-01-01', 1),
(26, '2@admin.com', '2015-01-01', 1),
(27, '2@admin.com', '2015-01-01', 1),
(28, '2@admin.com', '2015-01-01', 1),
(29, '2@admin.com', '2015-01-01', 1),
(30, '2@admin.com', '2015-01-01', 1),
(31, '2@admin.com', '2015-01-01', 1),
(32, '2@admin.com', '2015-01-01', 1),
(33, '2@admin.com', '2015-01-01', 1),
(34, '2@admin.com', '2015-01-01', 1),
(35, '2@admin.com', '2015-01-01', 1),
(36, '2@admin.com', '2015-01-01', 1),
(37, '2@admin.com', '2015-01-01', 1),
(38, '2@admin.com', '2015-01-01', 1),
(39, '2@admin.com', '2015-01-01', 1),
(40, '2@admin.com', '2015-01-01', 1),
(41, '2@admin.com', '2015-01-01', 1),
(42, '2@admin.com', '2015-01-01', 1),
(43, '2@admin.com', '2015-01-01', 1),
(44, '2@admin.com', '2015-01-01', 1),
(45, '2@admin.com', '2015-01-01', 1),
(46, '2@admin.com', '2015-01-01', 1),
(47, '2@admin.com', '2015-01-01', 1),
(48, '2@admin.com', '2015-01-01', 1),
(49, '2@admin.com', '2015-01-01', 1),
(50, '3@admin.com', '2015-01-01', 1),
(51, '3@admin.com', '2015-01-01', 1),
(52, '3@admin.com', '2015-01-01', 1),
(53, '3@admin.com', '2015-01-01', 1),
(54, '3@admin.com', '2015-01-01', 1),
(55, '3@admin.com', '2015-01-01', 1),
(56, '3@admin.com', '2015-01-01', 1),
(57, '3@admin.com', '2015-01-01', 1),
(58, '3@admin.com', '2015-01-01', 1),
(59, '3@admin.com', '2015-01-01', 1),
(60, '3@admin.com', '2015-01-01', 1),
(61, '3@admin.com', '2015-01-01', 1),
(62, '3@admin.com', '2015-01-01', 1),
(63, '3@admin.com', '2015-01-01', 1),
(64, '3@admin.com', '2015-01-01', 1),
(65, '3@admin.com', '2015-01-01', 1),
(66, '3@admin.com', '2015-01-01', 1),
(67, '3@admin.com', '2015-01-01', 1),
(68, '3@admin.com', '2015-01-01', 1),
(69, '3@admin.com', '2015-01-01', 1),
(70, '3@admin.com', '2015-01-01', 1),
(71, '3@admin.com', '2015-01-01', 1),
(72, '3@admin.com', '2015-01-01', 1),
(73, '3@admin.com', '2015-01-01', 1),
(74, '3@admin.com', '2015-01-01', 1),
(75, '4@admin.com', '2015-01-01', 1),
(76, '4@admin.com', '2015-01-01', 1),
(77, '4@admin.com', '2015-01-01', 1),
(78, '4@admin.com', '2015-01-01', 1),
(79, '4@admin.com', '2015-01-01', 1),
(80, '4@admin.com', '2015-01-01', 1),
(81, '4@admin.com', '2015-01-01', 1),
(82, '4@admin.com', '2015-01-01', 1),
(83, '4@admin.com', '2015-01-01', 1),
(84, '4@admin.com', '2015-01-01', 1),
(85, '4@admin.com', '2015-01-01', 1),
(86, '4@admin.com', '2015-01-01', 1),
(87, '4@admin.com', '2015-01-01', 1),
(88, '4@admin.com', '2015-01-01', 1),
(89, '4@admin.com', '2015-01-01', 1),
(90, '4@admin.com', '2015-01-01', 1),
(91, '4@admin.com', '2015-01-01', 1),
(92, '4@admin.com', '2015-01-01', 1),
(93, '4@admin.com', '2015-01-01', 1),
(94, '4@admin.com', '2015-01-01', 1),
(95, '4@admin.com', '2015-01-01', 1),
(96, '4@admin.com', '2015-01-01', 1),
(97, '4@admin.com', '2015-01-01', 1),
(98, '4@admin.com', '2015-01-01', 1),
(99, '4@admin.com', '2015-01-01', 1),
(100, '5@admin.com', '2015-01-01', 1),
(101, '5@admin.com', '2015-01-01', 1),
(102, '5@admin.com', '2015-01-01', 1),
(103, '5@admin.com', '2015-01-01', 1),
(104, '5@admin.com', '2015-01-01', 1),
(105, '5@admin.com', '2015-01-01', 1),
(106, '5@admin.com', '2015-01-01', 1),
(107, '5@admin.com', '2015-01-01', 1),
(108, '5@admin.com', '2015-01-01', 1),
(109, '5@admin.com', '2015-01-01', 1),
(110, '5@admin.com', '2015-01-01', 1),
(111, '5@admin.com', '2015-01-01', 1),
(112, '5@admin.com', '2015-01-01', 1),
(113, '5@admin.com', '2015-01-01', 1),
(114, '5@admin.com', '2015-01-01', 1),
(115, '5@admin.com', '2015-01-01', 1),
(116, '5@admin.com', '2015-01-01', 1),
(117, '5@admin.com', '2015-01-01', 1),
(118, '5@admin.com', '2015-01-01', 1),
(119, '5@admin.com', '2015-01-01', 1),
(120, '5@admin.com', '2015-01-01', 1),
(121, '5@admin.com', '2015-01-01', 1),
(122, '5@admin.com', '2015-01-01', 1),
(123, '5@admin.com', '2015-01-01', 1),
(124, '5@admin.com', '2015-01-01', 1),
(125, '6@admin.com', '2015-01-01', 1),
(126, '6@admin.com', '2015-01-01', 1),
(127, '6@admin.com', '2015-01-01', 1),
(128, '6@admin.com', '2015-01-01', 1),
(129, '6@admin.com', '2015-01-01', 1),
(130, '6@admin.com', '2015-01-01', 1),
(131, '6@admin.com', '2015-01-01', 1),
(132, '6@admin.com', '2015-01-01', 1),
(133, '6@admin.com', '2015-01-01', 1),
(134, '6@admin.com', '2015-01-01', 1),
(135, '6@admin.com', '2015-01-01', 1),
(136, '6@admin.com', '2015-01-01', 1),
(137, '6@admin.com', '2015-01-01', 1),
(138, '6@admin.com', '2015-01-01', 1),
(139, '6@admin.com', '2015-01-01', 1),
(140, '6@admin.com', '2015-01-01', 1),
(141, '6@admin.com', '2015-01-01', 1),
(142, '6@admin.com', '2015-01-01', 1),
(143, '6@admin.com', '2015-01-01', 1),
(144, '6@admin.com', '2015-01-01', 1),
(145, '6@admin.com', '2015-01-01', 1),
(146, '6@admin.com', '2015-01-01', 1),
(147, '6@admin.com', '2015-01-01', 1),
(148, '6@admin.com', '2015-01-01', 1),
(149, '6@admin.com', '2015-01-01', 1),
(150, '7@admin.com', '2015-01-01', 1),
(151, '7@admin.com', '2015-01-01', 1),
(152, '7@admin.com', '2015-01-01', 1),
(153, '7@admin.com', '2015-01-01', 1),
(154, '7@admin.com', '2015-01-01', 1),
(155, '7@admin.com', '2015-01-01', 1),
(156, '7@admin.com', '2015-01-01', 1),
(157, '7@admin.com', '2015-01-01', 1),
(158, '7@admin.com', '2015-01-01', 1),
(159, '7@admin.com', '2015-01-01', 1),
(160, '7@admin.com', '2015-01-01', 1),
(161, '7@admin.com', '2015-01-01', 1),
(162, '7@admin.com', '2015-01-01', 1),
(163, '7@admin.com', '2015-01-01', 1),
(164, '7@admin.com', '2015-01-01', 1),
(165, '7@admin.com', '2015-01-01', 1),
(166, '7@admin.com', '2015-01-01', 1),
(167, '7@admin.com', '2015-01-01', 2),
(168, '7@admin.com', '2015-01-01', 2),
(169, '7@admin.com', '2015-01-01', 2),
(170, '7@admin.com', '2015-01-01', 2),
(171, '7@admin.com', '2015-01-01', 2),
(172, '7@admin.com', '2015-01-01', 2),
(173, '7@admin.com', '2015-01-01', 2),
(174, '7@admin.com', '2015-01-01', 2),
(175, '8@admin.com', '2015-01-01', 2),
(176, '8@admin.com', '2015-01-01', 2),
(177, '8@admin.com', '2015-01-01', 2),
(178, '8@admin.com', '2015-01-01', 2),
(179, '8@admin.com', '2015-01-01', 2),
(180, '8@admin.com', '2015-01-01', 2),
(181, '8@admin.com', '2015-01-01', 2),
(182, '8@admin.com', '2015-01-01', 2),
(183, '8@admin.com', '2015-01-01', 2),
(184, '8@admin.com', '2015-01-01', 2),
(185, '8@admin.com', '2015-01-01', 2),
(186, '8@admin.com', '2015-01-01', 2),
(187, '8@admin.com', '2015-01-01', 2),
(188, '8@admin.com', '2015-01-01', 2),
(189, '8@admin.com', '2015-01-01', 2),
(190, '8@admin.com', '2015-01-01', 2),
(191, '8@admin.com', '2015-01-01', 2),
(192, '8@admin.com', '2015-01-01', 2),
(193, '8@admin.com', '2015-01-01', 2),
(194, '8@admin.com', '2015-01-01', 2),
(195, '8@admin.com', '2015-01-01', 2),
(196, '8@admin.com', '2015-01-01', 2),
(197, '8@admin.com', '2015-01-01', 2),
(198, '8@admin.com', '2015-01-01', 2),
(199, '8@admin.com', '2015-01-01', 2),
(200, '9@admin.com', '2015-01-01', 2),
(201, '9@admin.com', '2015-01-01', 2),
(202, '9@admin.com', '2015-01-01', 2),
(203, '9@admin.com', '2015-01-01', 2),
(204, '9@admin.com', '2015-01-01', 2),
(205, '9@admin.com', '2015-01-01', 2),
(206, '9@admin.com', '2015-01-01', 2),
(207, '9@admin.com', '2015-01-01', 2),
(208, '9@admin.com', '2015-01-01', 2),
(209, '9@admin.com', '2015-01-01', 2),
(210, '9@admin.com', '2015-01-01', 2),
(211, '9@admin.com', '2015-01-01', 2),
(212, '9@admin.com', '2015-01-01', 2),
(213, '9@admin.com', '2015-01-01', 2),
(214, '9@admin.com', '2015-01-01', 2),
(215, '9@admin.com', '2015-01-01', 2),
(216, '9@admin.com', '2015-01-01', 2),
(217, '9@admin.com', '2015-01-01', 2),
(218, '9@admin.com', '2015-01-01', 2),
(219, '9@admin.com', '2015-01-01', 2),
(220, '9@admin.com', '2015-01-01', 2),
(221, '9@admin.com', '2015-01-01', 2),
(222, '9@admin.com', '2015-01-01', 2),
(223, '9@admin.com', '2015-01-01', 2),
(224, '9@admin.com', '2015-01-01', 2),
(225, '10@admin.com', '2015-01-01', 2),
(226, '10@admin.com', '2015-01-01', 2),
(227, '10@admin.com', '2015-01-01', 2),
(228, '10@admin.com', '2015-01-01', 2),
(229, '10@admin.com', '2015-01-01', 2),
(230, '10@admin.com', '2015-01-01', 2),
(231, '10@admin.com', '2015-01-01', 2),
(232, '10@admin.com', '2015-01-01', 2),
(233, '10@admin.com', '2015-01-01', 2),
(234, '10@admin.com', '2015-01-01', 2),
(235, '10@admin.com', '2015-01-01', 2),
(236, '10@admin.com', '2015-01-01', 2),
(237, '10@admin.com', '2015-01-01', 2),
(238, '10@admin.com', '2015-01-01', 2),
(239, '10@admin.com', '2015-01-01', 2),
(240, '10@admin.com', '2015-01-01', 2),
(241, '10@admin.com', '2015-01-01', 2),
(242, '10@admin.com', '2015-01-01', 2),
(243, '10@admin.com', '2015-01-01', 2),
(244, '10@admin.com', '2015-01-01', 2),
(245, '10@admin.com', '2015-01-01', 2),
(246, '10@admin.com', '2015-01-01', 2),
(247, '10@admin.com', '2015-01-01', 2),
(248, '10@admin.com', '2015-01-01', 2),
(249, '10@admin.com', '2015-01-01', 2),
(250, '11@admin.com', '2015-01-01', 2),
(251, '11@admin.com', '2015-01-01', 2),
(252, '11@admin.com', '2015-01-01', 2),
(253, '11@admin.com', '2015-01-01', 2),
(254, '11@admin.com', '2015-01-01', 2),
(255, '11@admin.com', '2015-01-01', 2),
(256, '11@admin.com', '2015-01-01', 2),
(257, '11@admin.com', '2015-01-01', 2),
(258, '11@admin.com', '2015-01-01', 2),
(259, '11@admin.com', '2015-01-01', 2),
(260, '11@admin.com', '2015-01-01', 2),
(261, '11@admin.com', '2015-01-01', 2),
(262, '11@admin.com', '2015-01-01', 2),
(263, '11@admin.com', '2015-01-01', 2),
(264, '11@admin.com', '2015-01-01', 2),
(265, '11@admin.com', '2015-01-01', 2),
(266, '11@admin.com', '2015-01-01', 2),
(267, '11@admin.com', '2015-01-01', 2),
(268, '11@admin.com', '2015-01-01', 2),
(269, '11@admin.com', '2015-01-01', 2),
(270, '11@admin.com', '2015-01-01', 2),
(271, '11@admin.com', '2015-01-01', 2),
(272, '11@admin.com', '2015-01-01', 2),
(273, '11@admin.com', '2015-01-01', 2),
(274, '11@admin.com', '2015-01-01', 2),
(275, '12@admin.com', '2015-01-01', 2),
(276, '12@admin.com', '2015-01-01', 2),
(277, '12@admin.com', '2015-01-01', 2),
(278, '12@admin.com', '2015-01-01', 2),
(279, '12@admin.com', '2015-01-01', 2),
(280, '12@admin.com', '2015-01-01', 2),
(281, '12@admin.com', '2015-01-01', 2),
(282, '12@admin.com', '2015-01-01', 2),
(283, '12@admin.com', '2015-01-01', 2),
(284, '12@admin.com', '2015-01-01', 2),
(285, '12@admin.com', '2015-01-01', 2),
(286, '12@admin.com', '2015-01-01', 2),
(287, '12@admin.com', '2015-01-01', 2),
(288, '12@admin.com', '2015-01-01', 2),
(289, '12@admin.com', '2015-01-01', 2),
(290, '12@admin.com', '2015-01-01', 2),
(291, '12@admin.com', '2015-01-01', 2),
(292, '12@admin.com', '2015-01-01', 2),
(293, '12@admin.com', '2015-01-01', 2),
(294, '12@admin.com', '2015-01-01', 2),
(295, '12@admin.com', '2015-01-01', 2),
(296, '12@admin.com', '2015-01-01', 2),
(297, '12@admin.com', '2015-01-01', 2),
(298, '12@admin.com', '2015-01-01', 2),
(299, '12@admin.com', '2015-01-01', 2),
(300, '13@admin.com', '2015-01-01', 2),
(301, '13@admin.com', '2015-01-01', 2),
(302, '13@admin.com', '2015-01-01', 2),
(303, '13@admin.com', '2015-01-01', 2),
(304, '13@admin.com', '2015-01-01', 2),
(305, '13@admin.com', '2015-01-01', 2),
(306, '13@admin.com', '2015-01-01', 2),
(307, '13@admin.com', '2015-01-01', 2),
(308, '13@admin.com', '2015-01-01', 2),
(309, '13@admin.com', '2015-01-01', 2),
(310, '13@admin.com', '2015-01-01', 2),
(311, '13@admin.com', '2015-01-01', 2),
(312, '13@admin.com', '2015-01-01', 2),
(313, '13@admin.com', '2015-01-01', 2),
(314, '13@admin.com', '2015-01-01', 2),
(315, '13@admin.com', '2015-01-01', 2),
(316, '13@admin.com', '2015-01-01', 2),
(317, '13@admin.com', '2015-01-01', 2),
(318, '13@admin.com', '2015-01-01', 2),
(319, '13@admin.com', '2015-01-01', 2),
(320, '13@admin.com', '2015-01-01', 2),
(321, '13@admin.com', '2015-01-01', 2),
(322, '13@admin.com', '2015-01-01', 2),
(323, '13@admin.com', '2015-01-01', 2),
(324, '13@admin.com', '2015-01-01', 2),
(325, '14@admin.com', '2015-01-01', 2),
(326, '14@admin.com', '2015-01-01', 2),
(327, '14@admin.com', '2015-01-01', 2),
(328, '14@admin.com', '2015-01-01', 2),
(329, '14@admin.com', '2015-01-01', 2),
(330, '14@admin.com', '2015-01-01', 2),
(331, '14@admin.com', '2015-01-01', 2),
(332, '14@admin.com', '2015-01-01', 2),
(333, '14@admin.com', '2015-01-01', 2),
(334, '14@admin.com', '2015-01-01', 2),
(335, '14@admin.com', '2015-01-01', 3),
(336, '14@admin.com', '2015-01-01', 3),
(337, '14@admin.com', '2015-01-01', 3),
(338, '14@admin.com', '2015-01-01', 3),
(339, '14@admin.com', '2015-01-01', 3),
(340, '14@admin.com', '2015-01-01', 3),
(341, '14@admin.com', '2015-01-01', 3),
(342, '14@admin.com', '2015-01-01', 3),
(343, '14@admin.com', '2015-01-01', 3),
(344, '14@admin.com', '2015-01-01', 3),
(345, '14@admin.com', '2015-01-01', 3),
(346, '14@admin.com', '2015-01-01', 3),
(347, '14@admin.com', '2015-01-01', 3),
(348, '14@admin.com', '2015-01-01', 3),
(349, '14@admin.com', '2015-01-01', 3),
(350, '15@admin.com', '2015-01-01', 3),
(351, '15@admin.com', '2015-01-01', 3),
(352, '15@admin.com', '2015-01-01', 3),
(353, '15@admin.com', '2015-01-01', 3),
(354, '15@admin.com', '2015-01-01', 3),
(355, '15@admin.com', '2015-01-01', 3),
(356, '15@admin.com', '2015-01-01', 3),
(357, '15@admin.com', '2015-01-01', 3),
(358, '15@admin.com', '2015-01-01', 3),
(359, '15@admin.com', '2015-01-01', 3),
(360, '15@admin.com', '2015-01-01', 3),
(361, '15@admin.com', '2015-01-01', 3),
(362, '15@admin.com', '2015-01-01', 3),
(363, '15@admin.com', '2015-01-01', 3),
(364, '15@admin.com', '2015-01-01', 3),
(365, '15@admin.com', '2015-01-01', 3),
(366, '15@admin.com', '2015-01-01', 3),
(367, '15@admin.com', '2015-01-01', 3),
(368, '15@admin.com', '2015-01-01', 3),
(369, '15@admin.com', '2015-01-01', 3),
(370, '15@admin.com', '2015-01-01', 3),
(371, '15@admin.com', '2015-01-01', 3),
(372, '15@admin.com', '2015-01-01', 3),
(373, '15@admin.com', '2015-01-01', 3),
(374, '15@admin.com', '2015-01-01', 3),
(375, '16@admin.com', '2015-01-01', 3),
(376, '16@admin.com', '2015-01-01', 3),
(377, '16@admin.com', '2015-01-01', 3),
(378, '16@admin.com', '2015-01-01', 3),
(379, '16@admin.com', '2015-01-01', 3),
(380, '16@admin.com', '2015-01-01', 3),
(381, '16@admin.com', '2015-01-01', 3),
(382, '16@admin.com', '2015-01-01', 3),
(383, '16@admin.com', '2015-01-01', 3),
(384, '16@admin.com', '2015-01-01', 3),
(385, '16@admin.com', '2015-01-01', 3),
(386, '16@admin.com', '2015-01-01', 3),
(387, '16@admin.com', '2015-01-01', 3),
(388, '16@admin.com', '2015-01-01', 3),
(389, '16@admin.com', '2015-01-01', 3),
(390, '16@admin.com', '2015-01-01', 3),
(391, '16@admin.com', '2015-01-01', 3),
(392, '16@admin.com', '2015-01-01', 3),
(393, '16@admin.com', '2015-01-01', 3),
(394, '16@admin.com', '2015-01-01', 3),
(395, '16@admin.com', '2015-01-01', 3),
(396, '16@admin.com', '2015-01-01', 3),
(397, '16@admin.com', '2015-01-01', 3),
(398, '16@admin.com', '2015-01-01', 3),
(399, '16@admin.com', '2015-01-01', 3),
(400, '17@admin.com', '2015-01-01', 3),
(401, '17@admin.com', '2015-01-01', 3),
(402, '17@admin.com', '2015-01-01', 3),
(403, '17@admin.com', '2015-01-01', 3),
(404, '17@admin.com', '2015-01-01', 3),
(405, '17@admin.com', '2015-01-01', 3),
(406, '17@admin.com', '2015-01-01', 3),
(407, '17@admin.com', '2015-01-01', 3),
(408, '17@admin.com', '2015-01-01', 3),
(409, '17@admin.com', '2015-01-01', 3),
(410, '17@admin.com', '2015-01-01', 3),
(411, '17@admin.com', '2015-01-01', 3),
(412, '17@admin.com', '2015-01-01', 3),
(413, '17@admin.com', '2015-01-01', 3),
(414, '17@admin.com', '2015-01-01', 3),
(415, '17@admin.com', '2015-01-01', 3),
(416, '17@admin.com', '2015-01-01', 3),
(417, '17@admin.com', '2015-01-01', 3),
(418, '17@admin.com', '2015-01-01', 3),
(419, '17@admin.com', '2015-01-01', 3),
(420, '17@admin.com', '2015-01-01', 3),
(421, '17@admin.com', '2015-01-01', 3),
(422, '17@admin.com', '2015-01-01', 3),
(423, '17@admin.com', '2015-01-01', 3),
(424, '17@admin.com', '2015-01-01', 3),
(425, '18@admin.com', '2015-01-01', 3),
(426, '18@admin.com', '2015-01-01', 3),
(427, '18@admin.com', '2015-01-01', 3),
(428, '18@admin.com', '2015-01-01', 3),
(429, '18@admin.com', '2015-01-01', 3),
(430, '18@admin.com', '2015-01-01', 3),
(431, '18@admin.com', '2015-01-01', 3),
(432, '18@admin.com', '2015-01-01', 3),
(433, '18@admin.com', '2015-01-01', 3),
(434, '18@admin.com', '2015-01-01', 3),
(435, '18@admin.com', '2015-01-01', 3),
(436, '18@admin.com', '2015-01-01', 3),
(437, '18@admin.com', '2015-01-01', 3),
(438, '18@admin.com', '2015-01-01', 3),
(439, '18@admin.com', '2015-01-01', 3),
(440, '18@admin.com', '2015-01-01', 3),
(441, '18@admin.com', '2015-01-01', 3),
(442, '18@admin.com', '2015-01-01', 3),
(443, '18@admin.com', '2015-01-01', 3),
(444, '18@admin.com', '2015-01-01', 3),
(445, '18@admin.com', '2015-01-01', 3),
(446, '18@admin.com', '2015-01-01', 3),
(447, '18@admin.com', '2015-01-01', 3),
(448, '18@admin.com', '2015-01-01', 3),
(449, '18@admin.com', '2015-01-01', 3),
(450, '19@admin.com', '2015-01-01', 3),
(451, '19@admin.com', '2015-01-01', 3),
(452, '19@admin.com', '2015-01-01', 3),
(453, '19@admin.com', '2015-01-01', 3),
(454, '19@admin.com', '2015-01-01', 3),
(455, '19@admin.com', '2015-01-01', 3),
(456, '19@admin.com', '2015-01-01', 3),
(457, '19@admin.com', '2015-01-01', 3),
(458, '19@admin.com', '2015-01-01', 3),
(459, '19@admin.com', '2015-01-01', 3),
(460, '19@admin.com', '2015-01-01', 3),
(461, '19@admin.com', '2015-01-01', 3),
(462, '19@admin.com', '2015-01-01', 3),
(463, '19@admin.com', '2015-01-01', 3),
(464, '19@admin.com', '2015-01-01', 3),
(465, '19@admin.com', '2015-01-01', 3),
(466, '19@admin.com', '2015-01-01', 3),
(467, '19@admin.com', '2015-01-01', 3),
(468, '19@admin.com', '2015-01-01', 3),
(469, '19@admin.com', '2015-01-01', 3),
(470, '19@admin.com', '2015-01-01', 3),
(471, '19@admin.com', '2015-01-01', 3),
(472, '19@admin.com', '2015-01-01', 3),
(473, '19@admin.com', '2015-01-01', 3),
(474, '19@admin.com', '2015-01-01', 3),
(475, '20@admin.com', '2015-01-01', 3),
(476, '20@admin.com', '2015-01-01', 3),
(477, '20@admin.com', '2015-01-01', 3),
(478, '20@admin.com', '2015-01-01', 3),
(479, '20@admin.com', '2015-01-01', 3),
(480, '20@admin.com', '2015-01-01', 3),
(481, '20@admin.com', '2015-01-01', 3),
(482, '20@admin.com', '2015-01-01', 3),
(483, '20@admin.com', '2015-01-01', 3),
(484, '20@admin.com', '2015-01-01', 3),
(485, '20@admin.com', '2015-01-01', 3),
(486, '20@admin.com', '2015-01-01', 3),
(487, '20@admin.com', '2015-01-01', 3),
(488, '20@admin.com', '2015-01-01', 3),
(489, '20@admin.com', '2015-01-01', 3),
(490, '20@admin.com', '2015-01-01', 3),
(491, '20@admin.com', '2015-01-01', 3),
(492, '20@admin.com', '2015-01-01', 3),
(493, '20@admin.com', '2015-01-01', 3),
(494, '20@admin.com', '2015-01-01', 3),
(495, '20@admin.com', '2015-01-01', 3),
(496, '20@admin.com', '2015-01-01', 3),
(497, '20@admin.com', '2015-01-01', 3),
(498, '20@admin.com', '2015-01-01', 3),
(499, '20@admin.com', '2015-01-01', 3),
(500, '1@admin.com', '2015-01-01', 1),
(501, '1@admin.com', '2015-01-01', 1),
(502, '3@admin.com', '2015-01-01', 3),
(503, '3@admin.com', '2015-01-01', 2),
(504, '1@admin.com', '2015-01-01', 2),
(505, '2@admin.com', '2015-01-01', 3),
(506, '2@admin.com', '2015-01-01', 1),
(507, '1@admin.com', '2015-01-01', 2),
(508, '2@admin.com', '2015-01-01', 1),
(509, '1@admin.com', '2015-01-01', 3),
(510, '3@admin.com', '2015-01-01', 1),
(511, '5@admin.com', '2015-01-01', 1),
(512, '4@admin.com', '2015-01-01', 2),
(513, '7@admin.com', '2015-01-01', 3),
(514, '5@admin.com', '2015-01-01', 2),
(515, '8@admin.com', '2015-01-01', 3),
(516, '6@admin.com', '2015-01-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
`id` mediumint(8) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
`history_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `inserted_picture_filename` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `matched_picture_filename` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `finger_position` varchar(50) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `score` double NOT NULL,
  `overall_score` double NOT NULL,
  `system_date` date NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_id`, `form_id`, `inserted_picture_filename`, `matched_picture_filename`, `finger_position`, `status`, `score`, `overall_score`, `system_date`) VALUES
(1, 1, '\\myfingerprint\\assets\\images\\form\\left_fore\\1_left_fore\\1_01_L1_0.bmp', '\\myfingerprint\\assets\\images\\form\\left_fore\\1_left_fore\\1_01_L1_1.bmp', 'right_fore', 'enrolled', 67.8, 67.8, '2015-02-01'),
(2, 2, '\\myfingerprint\\assets\\images\\form\\left_fore\\2_left_fore\\2_01_L1_0.bmp', '\\myfingerprint\\assets\\images\\form\\left_fore\\2_left_fore\\2_01_L1_2.bmp', 'left_fore', 'enrolled', 89.2, 89.2, '2015-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE IF NOT EXISTS `login_attempts` (
`id` int(11) unsigned NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE IF NOT EXISTS `organisation` (
`id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`id`, `name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) unsigned NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `organisation` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `organisation`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, NULL, 1268889823, 1427973918, 1, 'Admin', 'istrator', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE IF NOT EXISTS `users_groups` (
`id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form`
--
ALTER TABLE `form`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
 ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organisation`
--
ALTER TABLE `organisation`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`), ADD KEY `fk_users_groups_users1_idx` (`user_id`), ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=517;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
MODIFY `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organisation`
--
ALTER TABLE `organisation`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
