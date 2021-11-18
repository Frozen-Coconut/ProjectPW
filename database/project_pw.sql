-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 06:27 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_pw`
--
CREATE DATABASE IF NOT EXISTS `project_pw` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project_pw`;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `value` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `color_items`
--

DROP TABLE IF EXISTS `color_items`;
CREATE TABLE `color_items` (
  `id` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `items_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `diskon`
--

DROP TABLE IF EXISTS `diskon`;
CREATE TABLE `diskon` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `instrument`
--

DROP TABLE IF EXISTS `instrument`;
CREATE TABLE `instrument` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `name` varchar(250) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `id_instrument` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_diskon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

DROP TABLE IF EXISTS `kota`;
CREATE TABLE `kota` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `id_provinsi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `name`, `id_provinsi`) VALUES
(1, 'Aceh Barat', 1),
(2, 'Aceh Barat Daya', 1),
(3, 'Aceh Besar', 1),
(4, 'Aceh Jaya', 1),
(5, 'Aceh Selatan', 1),
(6, 'Aceh Singkil', 1),
(7, 'Aceh Tamiang', 1),
(8, 'Aceh Tengah', 1),
(9, 'Aceh Tenggara', 1),
(10, 'Aceh Timur', 1),
(11, 'Aceh Utara', 1),
(12, 'Bener Meriah', 1),
(13, 'Bireuen', 1),
(14, 'Gayo Lues', 1),
(15, 'Nagan Raya', 1),
(16, 'Pidie', 1),
(17, 'Pidie Jaya', 1),
(18, 'Simeulue', 1),
(19, 'Banda Aceh', 1),
(20, 'Langsa', 1),
(21, 'Lhokseumawe', 1),
(22, 'Sabang', 1),
(23, 'Subulussalam', 1),
(24, 'Asahan', 2),
(25, 'Batubara', 2),
(26, 'Dairi', 2),
(27, 'Deli Serdang', 2),
(28, 'Humbang Hasundutan', 2),
(29, 'Karo', 2),
(30, 'Labuhanbatu', 2),
(31, 'Labuhanbatu Selatan', 2),
(32, 'Labuhanbatu Utara', 2),
(33, 'Langkat', 2),
(34, 'Mandailing Natal', 2),
(35, 'Nias', 2),
(36, 'Nias Barat', 2),
(37, 'Nias Selatan', 2),
(38, 'Nias Utara', 2),
(39, 'Padang Lawas', 2),
(40, 'Padang Lawas Utara', 2),
(41, 'Pakpak Bharat', 2),
(42, 'Samosir', 2),
(43, 'Serdang Bedagai', 2),
(44, 'Simalungun', 2),
(45, 'Tapanuli Selatan', 2),
(46, 'Tapanuli Tengah', 2),
(47, 'Tapanuli Utara', 2),
(48, 'Toba Samosir', 2),
(49, 'Binjai', 2),
(50, 'Gunungsitoli', 2),
(51, 'Medan', 2),
(52, 'Padangsidempuan', 2),
(53, 'Pematangsiantar', 2),
(54, 'Sibolga', 2),
(55, 'Tanjungbalai', 2),
(56, 'Tebing Tinggi', 2),
(57, 'Agam', 3),
(58, 'Dharmasraya', 3),
(59, 'Kepulauan Mentawai', 3),
(60, 'Lima Puluh Kota', 3),
(61, 'Padang Pariaman', 3),
(62, 'Pasaman', 3),
(63, 'Pasaman Barat', 3),
(64, 'Pesisir Selatan', 3),
(65, 'Sijunjung', 3),
(66, 'Solok', 3),
(67, 'Solok Selatan', 3),
(68, 'Tanah Datar', 3),
(69, 'Bukittinggi', 3),
(70, 'Padang', 3),
(71, 'Padangpanjang', 3),
(72, 'Pariaman', 3),
(73, 'Payakumbuh', 3),
(74, 'Sawahlunto', 3),
(75, 'Solok', 3),
(76, 'Banyuasin', 4),
(77, 'Empat Lawang', 4),
(78, 'Lahat', 4),
(79, 'Muara Enim', 4),
(80, 'Musi Banyuasin', 4),
(81, 'Musi Rawas', 4),
(82, 'Musi Rawas Utara', 4),
(83, 'Ogan Ilir', 4),
(84, 'Ogan Komering Ilir', 4),
(85, 'Ogan Komering Ulu', 4),
(86, 'Ogan Komering Ulu Selatan', 4),
(87, 'Ogan Komering Ulu Timur', 4),
(88, 'Penukal Abab Lematang Ilir', 4),
(89, 'Lubuklinggau', 4),
(90, 'Pagar Alam', 4),
(91, 'Palembang', 4),
(92, 'Prabumulih', 4),
(93, 'Bengkalis', 5),
(94, 'Indragiri Hilir', 5),
(95, 'Indragiri Hulu', 5),
(96, 'Kampar', 5),
(97, 'Kepulauan Meranti', 5),
(98, 'Kuantan Singingi', 5),
(99, 'Pelalawan', 5),
(100, 'Rokan Hilir', 5),
(101, 'Rokan Hulu', 5),
(102, 'Siak', 5),
(103, 'Dumai', 5),
(104, 'Pekanbaru', 5),
(105, 'Bintan', 6),
(106, 'Karimun', 6),
(107, 'Kepulauan Anambas', 6),
(108, 'Lingga', 6),
(109, 'Natuna', 6),
(110, 'Batam', 6),
(111, 'Tanjung Pinang', 6),
(112, 'Batanghari', 7),
(113, 'Bungo', 7),
(114, 'Kerinci', 7),
(115, 'Merangin', 7),
(116, 'Muaro Jambi', 7),
(117, 'Sarolangun', 7),
(118, 'Tanjung Jabung Barat', 7),
(119, 'Tanjung Jabung Timur', 7),
(120, 'Tebo', 7),
(121, 'Jambi', 7),
(122, 'Sungai Penuh', 7),
(123, 'Bengkulu Selatan', 8),
(124, 'Bengkulu Tengah', 8),
(125, 'Bengkulu Utara', 8),
(126, 'Kaur', 8),
(127, 'Kepahiang', 8),
(128, 'Lebong', 8),
(129, 'Mukomuko', 8),
(130, 'Rejang Lebong', 8),
(131, 'Seluma', 8),
(132, 'Bengkulu', 8),
(133, 'Bangka', 9),
(134, 'Bangka Barat', 9),
(135, 'Bangka Selatan', 9),
(136, 'Bangka Tengah', 9),
(137, 'Belitung', 9),
(138, 'Belitung Timur', 9),
(139, 'Pangkal Pinang', 9),
(140, 'Lampung Tengah', 10),
(141, 'Lampung Utara', 10),
(142, 'Lampung Selatan', 10),
(143, 'Lampung Barat', 10),
(144, 'Lampung Timur', 10),
(145, 'Mesuji', 10),
(146, 'Pesawaran', 10),
(147, 'Pesisir Barat', 10),
(148, 'Pringsewu', 10),
(149, 'Tulang Bawang', 10),
(150, 'Tulang Bawang Barat', 10),
(151, 'Tanggamus', 10),
(152, 'Way Kanan', 10),
(153, 'Bandar Lampung', 10),
(154, 'Metro', 10),
(155, 'Lebak', 11),
(156, 'Pandeglang', 11),
(157, 'Serang', 11),
(158, 'Tangerang', 11),
(159, 'Cilegon', 11),
(160, 'Serang', 11),
(161, 'Tangerang', 11),
(162, 'Tangerang Selatan', 11),
(163, 'Bandung', 12),
(164, 'Bandung Barat', 12),
(165, 'Bekasi', 12),
(166, 'Bogor', 12),
(167, 'Ciamis', 12),
(168, 'Cianjur', 12),
(169, 'Cirebon', 12),
(170, 'Garut', 12),
(171, 'Indramayu', 12),
(172, 'Karawang', 12),
(173, 'Kuningan', 12),
(174, 'Majalengka', 12),
(175, 'Pangandaran', 12),
(176, 'Purwakarta', 12),
(177, 'Subang', 12),
(178, 'Sukabumi', 12),
(179, 'Sumedang', 12),
(180, 'Tasikmalaya', 12),
(181, 'Bandung', 12),
(182, 'Banjar', 12),
(183, 'Bekasi', 12),
(184, 'Bogor', 12),
(185, 'Cimahi', 12),
(186, 'Cirebon', 12),
(187, 'Depok', 12),
(188, 'Sukabumi', 12),
(189, 'Tasikmalaya', 12),
(190, 'Banjarnegara', 13),
(191, 'Banyumas', 13),
(192, 'Batang', 13),
(193, 'Blora', 13),
(194, 'Boyolali', 13),
(195, 'Brebes', 13),
(196, 'Cilacap', 13),
(197, 'Demak', 13),
(198, 'Grobogan', 13),
(199, 'Jepara', 13),
(200, 'Karanganyar', 13),
(201, 'Kebumen', 13),
(202, 'Kendal', 13),
(203, 'Klaten', 13),
(204, 'Kudus', 13),
(205, 'Magelang', 13),
(206, 'Pati', 13),
(207, 'Pekalongan', 13),
(208, 'Pemalang', 13),
(209, 'Purbalingga', 13),
(210, 'Purworejo', 13),
(211, 'Rembang', 13),
(212, 'Semarang', 13),
(213, 'Sragen', 13),
(214, 'Sukoharjo', 13),
(215, 'Tegal', 13),
(216, 'Temanggung', 13),
(217, 'Wonogiri', 13),
(218, 'Wonosobo', 13),
(219, 'Magelang', 13),
(220, 'Pekalongan', 13),
(221, 'Salatiga', 13),
(222, 'Semarang', 13),
(223, 'Surakarta', 13),
(224, 'Tegal', 13),
(225, 'Bangkalan', 14),
(226, 'Banyuwangi', 14),
(227, 'Blitar', 14),
(228, 'Bojonegoro', 14),
(229, 'Bondowoso', 14),
(230, 'Gresik', 14),
(231, 'Jember', 14),
(232, 'Jombang', 14),
(233, 'Kediri', 14),
(234, 'Lamongan', 14),
(235, 'Lumajang', 14),
(236, 'Madiun', 14),
(237, 'Magetan', 14),
(238, 'Malang', 14),
(239, 'Mojokerto', 14),
(240, 'Nganjuk', 14),
(241, 'Ngawi', 14),
(242, 'Pacitan', 14),
(243, 'Pamekasan', 14),
(244, 'Pasuruan', 14),
(245, 'Ponorogo', 14),
(246, 'Probolinggo', 14),
(247, 'Sampang', 14),
(248, 'Sidoarjo', 14),
(249, 'Situbondo', 14),
(250, 'Sumenep', 14),
(251, 'Trenggalek', 14),
(252, 'Tuban', 14),
(253, 'Tulungagung', 14),
(254, 'Batu', 14),
(255, 'Blitar', 14),
(256, 'Kediri', 14),
(257, 'Madiun', 14),
(258, 'Malang', 14),
(259, 'Mojokerto', 14),
(260, 'Pasuruan', 14),
(261, 'Probolinggo', 14),
(262, 'Surabaya', 14),
(263, 'Administrasi Jakarta Barat', 15),
(264, 'Administrasi Jakarta Pusat', 15),
(265, 'Administrasi Jakarta Selatan', 15),
(266, 'Administrasi Jakarta Timur', 15),
(267, 'Administrasi Jakarta Utara', 15),
(268, 'Administrasi Kepulauan Seribu', 15),
(269, 'Bantul', 16),
(270, 'Gunungkidul', 16),
(271, 'Kulon Progo', 16),
(272, 'Sleman', 16),
(273, 'Yogyakarta', 16),
(274, 'Badung', 17),
(275, 'Bangli', 17),
(276, 'Buleleng', 17),
(277, 'Gianyar', 17),
(278, 'Jembrana', 17),
(279, 'Karangasem', 17),
(280, 'Klungkung', 17),
(281, 'Tabanan', 17),
(282, 'Denpasar', 17),
(283, 'Bima', 18),
(284, 'Dompu', 18),
(285, 'Lombok Barat', 18),
(286, 'Lombok Tengah', 18),
(287, 'Lombok Timur', 18),
(288, 'Lombok Utara', 18),
(289, 'Sumbawa', 18),
(290, 'Sumbawa Barat', 18),
(291, 'Bima', 18),
(292, 'Mataram', 18),
(293, 'Alor', 19),
(294, 'Belu', 19),
(295, 'Ende', 19),
(296, 'Flores Timur', 19),
(297, 'Kupang', 19),
(298, 'Lembata', 19),
(299, 'Malaka', 19),
(300, 'Manggarai', 19),
(301, 'Manggarai Barat', 19),
(302, 'Manggarai Timur', 19),
(303, 'Ngada', 19),
(304, 'Nagekeo', 19),
(305, 'Rote Ndao', 19),
(306, 'Sabu Raijua', 19),
(307, 'Sikka', 19),
(308, 'Sumba Barat', 19),
(309, 'Sumba Barat Daya', 19),
(310, 'Sumba Tengah', 19),
(311, 'Sumba Timur', 19),
(312, 'Timor Tengah Selatan', 19),
(313, 'Timor Tengah Utara', 19),
(314, 'Kupang', 19),
(315, 'Bengkayang', 20),
(316, 'Kapuas Hulu', 20),
(317, 'Kayong Utara', 20),
(318, 'Ketapang', 20),
(319, 'Kubu Raya', 20),
(320, 'Landak', 20),
(321, 'Melawi', 20),
(322, 'Mempawah', 20),
(323, 'Sambas', 20),
(324, 'Sanggau', 20),
(325, 'Sekadau', 20),
(326, 'Sintang', 20),
(327, 'Pontianak', 20),
(328, 'Singkawang', 20),
(329, 'Balangan', 21),
(330, 'Banjar', 21),
(331, 'Barito Kuala', 21),
(332, 'Hulu Sungai Selatan', 21),
(333, 'Hulu Sungai Tengah', 21),
(334, 'Hulu Sungai Utara', 21),
(335, 'Kotabaru', 21),
(336, 'Tabalong', 21),
(337, 'Tanah Bumbu', 21),
(338, 'Tanah Laut', 21),
(339, 'Tapin', 21),
(340, 'Banjarbaru', 21),
(341, 'Banjarmasin', 21),
(342, 'Barito Selatan', 22),
(343, 'Barito Timur', 22),
(344, 'Barito Utara', 22),
(345, 'Gunung Mas', 22),
(346, 'Kapuas', 22),
(347, 'Katingan', 22),
(348, 'Kotawaringin Barat', 22),
(349, 'Kotawaringin Timur', 22),
(350, 'Lamandau', 22),
(351, 'Murung Raya', 22),
(352, 'Pulang Pisau', 22),
(353, 'Sukamara', 22),
(354, 'Seruyan', 22),
(355, 'Palangka Raya', 22),
(356, 'Berau', 23),
(357, 'Kutai Barat', 23),
(358, 'Kutai Kartanegara', 23),
(359, 'Kutai Timur', 23),
(360, 'Mahakam Ulu', 23),
(361, 'Paser', 23),
(362, 'Penajam Paser Utara', 23),
(363, 'Balikpapan', 23),
(364, 'Bontang', 23),
(365, 'Samarinda', 23),
(366, 'Bulungan', 24),
(367, 'Malinau', 24),
(368, 'Nunukan', 24),
(369, 'Tana Tidung', 24),
(370, 'Tarakan', 24),
(371, 'Boalemo', 25),
(372, 'Bone Bolango', 25),
(373, 'Gorontalo', 25),
(374, 'Gorontalo Utara', 25),
(375, 'Pohuwato', 25),
(376, 'Gorontalo', 25),
(377, 'Bantaeng', 26),
(378, 'Barru', 26),
(379, 'Bone', 26),
(380, 'Bulukumba', 26),
(381, 'Enrekang', 26),
(382, 'Gowa', 26),
(383, 'Jeneponto', 26),
(384, 'Kepulauan Selayar', 26),
(385, 'Luwu', 26),
(386, 'Luwu Timur', 26),
(387, 'Luwu Utara', 26),
(388, 'Maros', 26),
(389, 'Pangkajene dan Kepulauan', 26),
(390, 'Pinrang', 26),
(391, 'Sidenreng Rappang', 26),
(392, 'Sinjai', 26),
(393, 'Soppeng', 26),
(394, 'Takalar', 26),
(395, 'Tana Toraja', 26),
(396, 'Toraja Utara', 26),
(397, 'Wajo', 26),
(398, 'Makassar', 26),
(399, 'Palopo', 26),
(400, 'Parepare', 26),
(401, 'Bombana', 27),
(402, 'Buton', 27),
(403, 'Buton Selatan', 27),
(404, 'Buton Tengah', 27),
(405, 'Buton Utara', 27),
(406, 'Kolaka', 27),
(407, 'Kolaka Timur', 27),
(408, 'Kolaka Utara', 27),
(409, 'Konawe', 27),
(410, 'Konawe Kepulauan', 27),
(411, 'Konawe Selatan', 27),
(412, 'Konawe Utara', 27),
(413, 'Muna', 27),
(414, 'Muna Barat', 27),
(415, 'Wakatobi', 27),
(416, 'Bau-Bau', 27),
(417, 'Kendari', 27),
(418, 'Banggai', 28),
(419, 'Banggai Kepulauan', 28),
(420, 'Banggai Laut', 28),
(421, 'Buol', 28),
(422, 'Donggala', 28),
(423, 'Morowali', 28),
(424, 'Morowali Utara', 28),
(425, 'Parigi Moutong', 28),
(426, 'Poso', 28),
(427, 'Sigi', 28),
(428, 'Tojo Una-Una', 28),
(429, 'Toli-Toli', 28),
(430, 'Palu', 28),
(431, 'Bolaang Mongondow', 29),
(432, 'Bolaang Mongondow Selatan', 29),
(433, 'Bolaang Mongondow Timur', 29),
(434, 'Bolaang Mongondow Utara', 29),
(435, 'Kepulauan Sangihe', 29),
(436, 'Kepulauan Siau Tagulandang Biaro', 29),
(437, 'Kepulauan Talaud', 29),
(438, 'Minahasa', 29),
(439, 'Minahasa Selatan', 29),
(440, 'Minahasa Tenggara', 29),
(441, 'Minahasa Utara', 29),
(442, 'Bitung', 29),
(443, 'Kotamobagu', 29),
(444, 'Manado', 29),
(445, 'Tomohon', 29),
(446, 'Majene', 30),
(447, 'Mamasa', 30),
(448, 'Mamuju', 30),
(449, 'Mamuju Tengah', 30),
(450, 'Mamuju Utara', 30),
(451, 'Polewali Mandar', 30),
(452, 'Mamuju', 30),
(453, 'Buru', 31),
(454, 'Buru Selatan', 31),
(455, 'Kepulauan Aru', 31),
(456, 'Maluku Barat Daya', 31),
(457, 'Maluku Tengah', 31),
(458, 'Maluku Tenggara', 31),
(459, 'Maluku Tenggara Barat', 31),
(460, 'Seram Bagian Barat', 31),
(461, 'Seram Bagian Timur', 31),
(462, 'Ambon', 31),
(463, 'Tual', 31),
(464, 'Halmahera Barat', 32),
(465, 'Halmahera Tengah', 32),
(466, 'Halmahera Utara', 32),
(467, 'Halmahera Selatan', 32),
(468, 'Kepulauan Sula', 32),
(469, 'Halmahera Timur', 32),
(470, 'Pulau Morotai', 32),
(471, 'Pulau Taliabu', 32),
(472, 'Ternate', 32),
(473, 'Tidore Kepulauan', 32),
(474, 'Asmat', 33),
(475, 'Biak Numfor', 33),
(476, 'Boven Digoel', 33),
(477, 'Deiyai', 33),
(478, 'Dogiyai', 33),
(479, 'Intan Jaya', 33),
(480, 'Jayapura', 33),
(481, 'Jayawijaya', 33),
(482, 'Keerom', 33),
(483, 'Kepulauan Yapen', 33),
(484, 'Lanny Jaya', 33),
(485, 'Mamberamo Raya', 33),
(486, 'Mamberamo Tengah', 33),
(487, 'Mappi', 33),
(488, 'Merauke', 33),
(489, 'Mimika', 33),
(490, 'Nabire', 33),
(491, 'Nduga', 33),
(492, 'Paniai', 33),
(493, 'Pegunungan Bintang', 33),
(494, 'Puncak', 33),
(495, 'Puncak Jaya', 33),
(496, 'Sarmi', 33),
(497, 'Supiori', 33),
(498, 'Tolikara', 33),
(499, 'Waropen', 33),
(500, 'Yahukimo', 33),
(501, 'Yalimo', 33),
(502, 'Jayapura', 33),
(503, 'Fakfak', 34),
(504, 'Kaimana', 34),
(505, 'Manokwari', 34),
(506, 'Manokwari Selatan', 34),
(507, 'Maybrat', 34),
(508, 'Pegunungan Arfak', 34),
(509, 'Raja Ampat', 34),
(510, 'Sorong', 34),
(511, 'Sorong Selatan', 34),
(512, 'Tambrauw', 34),
(513, 'Teluk Bintuni', 34),
(514, 'Teluk Wondama', 34);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

DROP TABLE IF EXISTS `provinsi`;
CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `name`) VALUES
(1, 'Nanggroe Aceh Darussalam'),
(2, 'Sumatera Utara'),
(3, 'Sumatera Barat'),
(4, 'Sumatera Selatan'),
(5, 'Riau'),
(6, 'Kepulauan Riau'),
(7, 'Jambi'),
(8, 'Bengkulu'),
(9, 'Bangka Belitung'),
(10, 'Lampung'),
(11, 'Banten'),
(12, 'Jawa Barat'),
(13, 'Jawa Tengah'),
(14, 'Jawa Timur'),
(15, 'DKI Jakarta'),
(16, 'Daerah Istimewa Yogyakarta'),
(17, 'Bali'),
(18, 'Nusa Tenggara Barat'),
(19, 'Nusa Tenggara Timur'),
(20, 'Kalimantan Barat'),
(21, 'Kalimantan Selatan'),
(22, 'Kalimantan Tengah'),
(23, 'Kalimantan Timur'),
(24, 'Kalimantan Utara'),
(25, 'Gorontalo'),
(26, 'Sulawesi Selatan'),
(27, 'Sulawesi Tenggara'),
(28, 'Sulawesi Tengah'),
(29, 'Sulawesi Utara'),
(30, 'Sulawesi Barat'),
(31, 'Maluku'),
(32, 'Maluku Utara'),
(33, 'Papua'),
(34, 'Papua Barat');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `items_name` varchar(250) NOT NULL,
  `value` double NOT NULL,
  `user_email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `items_name` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `items_name` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `email` varchar(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` int(11) NOT NULL COMMENT '1=>Male, 2=>Female',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color_items`
--
ALTER TABLE `color_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instrument`
--
ALTER TABLE `instrument`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `color_items`
--
ALTER TABLE `color_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
