-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 02:23 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

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

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `image`) VALUES
(1, 'Amahi', 'img'),
(2, 'Avantone', 'img'),
(3, 'Behringer', 'img'),
(4, 'Cannon', 'img'),
(5, 'Casio', 'img'),
(6, 'D Angelico', 'img'),
(7, 'Dave Smith', 'img'),
(8, 'Eastman', 'img'),
(9, 'Elixir', 'img'),
(10, 'Ernie Ball', 'img'),
(11, 'Fender', 'img'),
(12, 'Fiddlerman', 'img'),
(13, 'Genelec', 'img'),
(14, 'Gretsch', 'img'),
(15, 'Hailun', 'img'),
(16, 'IK Multimedia', 'img'),
(17, 'Kala', 'img'),
(18, 'Kawai', 'img'),
(19, 'Kinglos', 'img'),
(20, 'koda', 'img'),
(21, 'KORG', 'img'),
(22, 'Ludwig', 'img'),
(23, 'Mackie', 'img'),
(24, 'MEINL', 'img'),
(25, 'Ming Jiang Zhu', 'img'),
(26, 'Moog', 'img'),
(27, 'Neumann', 'img'),
(28, 'Roland', 'img'),
(29, 'Squier', 'img'),
(30, 'TAMA', 'img'),
(31, 'Tanglewood', 'img'),
(32, 'Tascam', 'img'),
(33, 'Taylor', 'img'),
(34, 'VOX', 'img'),
(35, 'Yamaha', 'img');

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

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`id`, `name`, `image`) VALUES
(1, 'Accessory', 'img'),
(2, 'Bass', 'img'),
(3, 'Cajoon', 'img'),
(4, 'Drum', 'img'),
(5, 'Guitar', 'img'),
(6, 'Keyboard', 'img'),
(7, 'Microphone', 'img'),
(8, 'Mixer', 'img'),
(9, 'Piano', 'img'),
(10, 'Speaker', 'img'),
(11, 'Synthesizer', 'img'),
(12, 'Ukulele', 'img'),
(13, 'Violin', 'img');

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

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`name`, `id_brand`, `id_instrument`, `price`, `image`, `description`, `stock`, `id_diskon`) VALUES
(' VOX Telstar Drum Set', 34, 4, 30000000, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/8/31/a5a95e39-110c-4ba1-a066-b94aa41b772d.png', 'desc', 0, NULL),
('Amahi UK550C Classic Series Flamed Maple Concert Ukulele', 1, 12, 2553435, 'https://cdn.shopify.com/s/files/1/1369/1865/products/amahi-uk550c-classic-series-flamed-maple-concert-ukulele-for-sale-waukegan-il-family-piano_2_360x.png?v=1588379861', 'desc', 0, NULL),
('Amahi UK770C Classic Series Spalted Maple Concert Ukulele', 1, 12, 2410785, 'https://cdn.shopify.com/s/files/1/1369/1865/products/amahi-uk770c-classic-series-spalted-maple-concert-ukulele-for-sale-waukegan-il-family-piano_1_360x.png?v=1588379974', 'desc', 0, NULL),
('Amahi UK990C Classic Series Ebony Concert Ukulele', 1, 12, 2268135, 'https://cdn.shopify.com/s/files/1/1369/1865/products/UK990-2015-2_360x.png?v=1569147754', 'desc', 0, NULL),
('AVANTONE PRO MixCubes Active Black Mono Monitor Speaker', 2, 10, 6187500, 'https://hariharimusik.id/wp-content/uploads/2021/01/pro-mixcubes-active-mono.jpg', 'desc', 0, NULL),
('BEHRINGER MS40 Digital 40-Watt Stereo Near Field Monitor speaker', 3, 8, 3400000, 'https://hariharimusik.id/wp-content/uploads/2021/08/24502027_e3893f9b-a6e6-4939-814c-0711b34de5ba_1000_1000-600x600.jpg', 'desc', 0, NULL),
('BEHRINGER PMP550M 500-Watt 5-Channel Powered Mixer', 3, 8, 4550000, 'https://hariharimusik.id/wp-content/uploads/2021/08/e8c2fe67-7b09-4e52-8c6f-fbd6af60d1ca-600x600.jpg', 'desc', 0, NULL),
('BEHRINGER QX2442USB 24-INPUT 4/2-BUS MIXER WITH XENYX MIC PREAMPS', 3, 8, 8420000, 'https://hariharimusik.id/wp-content/uploads/2021/09/QX2442USB_P0AL3_Top_B.png', 'desc', 0, NULL),
('Behringer SL 75C Cardioid Dynamic Microphone', 3, 7, 292000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-E7S00_2FB03-000-E7S00_1622458930560_735x735.jpg?v=1628178110', 'desc', 0, NULL),
('Behringer SL 84C Dynamic Cardioid Microphone', 3, 7, 180000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-E7R00_2FB03-000-E7R00_1622458610580_735x735.jpg?v=1628178117', 'desc', 0, NULL),
('Behringer SL 85S Dynamic Cardioid Handheld Microphone', 3, 7, 292000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-E7Q00_2FB03-000-E7Q00_1622457994050_735x735.jpg?v=1628177143', 'desc', 0, NULL),
('Behringer ULM300MIC Wireless Handheld Microphone System', 3, 7, 1435000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-BQX01_2FB03-000-BQX01_1622086310540_735x735.jpg?v=1632040827', 'desc', 0, NULL),
('Behringer ULM300USB Wireless USB Microphone ', 3, 7, 1290000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-BQW00_2FB03-000-BQW00_1622085828420_735x735.jpg?v=1632040829', 'desc', 0, NULL),
('Behringer XM8500 Ultravoice Dynamic Cardioid Vocal Microphone', 3, 7, 300000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-12000_2FB03-000-12000_1621754864590_735x735.jpg?v=1628177132', 'desc', 0, NULL),
('Cannon Percussion Jamm Jr.3 PC. Drum Set', 4, 4, 3415597, 'https://cdn.shopify.com/s/files/1/0494/8113/products/JAMMJr3pc_blue_01.jpg?v=1606597735', 'desc', 0, NULL),
('Cannon Percussion Jamm Jr.5 PC. Drum Set', 4, 4, 4255442, 'https://cdn.shopify.com/s/files/1/0494/8113/products/JAMM_JR_5_PC_WINE_RED.jpg?v=1606598682', 'desc', 0, NULL),
('Casio Casiotone CT-S200 61-key Portable Keyboard Black', 5, 6, 1990000, 'cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FC32-CT-S200BK_2FC32-CT-S200BK_1622185877480.jpg?v=1623294341', 'desc', 0, NULL),
('Casio Casiotone CTS300 Portable 61-Key Touch Responsive Digital Piano', 5, 9, 2139750, 'https://cdn.shopify.com/s/files/1/1369/1865/products/cts300_360x.jpg?v=1633621274', 'desc', 0, NULL),
('Casio CDPS350BK Black Portable Digital Piano', 5, 9, 7845750, 'https://cdn.shopify.com/s/files/1/1369/1865/products/casio-cdp-s350-portable-digital-piano-for-sale-waukegan-il-family-piano_8_360de506-0d2d-412c-be63-f3e2af324042_360x.jpg?v=1633629619', 'desc', 0, NULL),
('Casio Celviano GP400BK Satin Black Digital Grand Hybrid', 5, 9, 50123175, 'https://cdn.shopify.com/s/files/1/1369/1865/products/celviano_360x.jpg?v=1633621276', 'desc', 0, NULL),
('Casio CT-X5000 61-Key Portable Keyboard', 5, 6, 6067000, 'cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FC32-CT-X5000_2FC32-CT-X5000_1622175245030.jpg?v=1631182662', 'desc', 0, NULL),
('Casio CT-X800 61-Key Portable Keyboard', 5, 6, 3224800, 'cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FC32-CT-X800_2FC32-CT-X800_1622174202860.jpg?v=1623321949', 'desc', 0, NULL),
('Casio Privia PX560BE 88-Key Black Portable Digital Piano', 5, 9, 1854435735, 'https://cdn.shopify.com/s/files/1/1369/1865/products/casio-privia-px-560-88-key-portable-digital-piano-for-sale-in-waukegan-illinois-family-piano-co_1_32656dcd-bc25-4973-a634-50e3d5c2f0a3_360x.jpg?v=1633629624', 'desc', 0, NULL),
('D Angelico Deluxe DC Semi-Hollow Electric Guitar w/Stairstep Tailpiece', 6, 5, 29000000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/D41-DADDCMCHGTCB_1543288413158_735x735.jpg?v=1553151140', 'desc', 0, NULL),
('D Angelico Excel 175 Hollow-Body Electric Guitar w/Bigsby', 6, 5, 27000000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FD41-DAE175NATCB_2FD41-DAE175NATCB_1573185605980_735x735.jpg?v=1593530951', 'desc', 0, NULL),
('D Angelico Excel DC Semi-Hollow Electric Guitar w/Stairstep Tailpiece', 6, 5, 26000000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/D41-DAEDCCHRGTCB_1524541194408_735x735.jpg?v=1593530856', 'desc', 0, NULL),
('Dave Smith Evolver Keys', 7, 11, 25348400, 'https://www.melodiamusik.com/wp-content/uploads/2016/08/evolver.jpg', 'desc', 0, NULL),
('Eastman AC122-2CE Accoustic Electric Guitar', 8, 5, 9663697, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Eastman_AC122-2CE_01.jpg?v=1621114277', 'desc', 0, NULL),
('Eastman AC322CE Accoustic Electric Guitar', 8, 5, 15356597, 'https://cdn.shopify.com/s/files/1/0494/8113/products/AC322CE_Flattop__01.jpg?v=1636568396', 'desc', 0, NULL),
('Eastman AC422CE Accoustic Electric Guitar', 8, 5, 19341627, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Eastman_AC422ce_01.jpg?v=1617985257', 'desc', 0, NULL),
('Eastman DM-1 Gypsy Jazz Accoustic Guitar', 8, 5, 17064467, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Screenshot_2021-01-09DM1.png?v=1610206564', 'desc', 0, NULL),
('Eastman DT300M Double Top Orchestra Model Accoustic Guitar', 8, 5, 32719942, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Eastman_DT30OM_01.jpg?v=1617486568', 'desc', 0, NULL),
('Elixir 11027 Nanoweb 80/20 Bronze Acoustic Guitar Strings 11-52', 9, 1, 210000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/E20-11027_1521443931122_735x735.jpg?v=1557468923', 'desc', 0, NULL),
('Elixir 12002 Nanoweb Electric Guitar Strings 9-42', 9, 1, 160000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/E20-12002_1521443460617_735x735.jpg?v=1557468820', 'desc', 0, NULL),
('Ernie Ball Earthwood Light Phosphor Bronze Acoustic Guitar Strings 11-52', 10, 1, 83000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/E10-P02148_1541041719882_735x735.jpg?v=1569667912', 'desc', 0, NULL),
('Ernie Ball Flextune Portable Clip-on Tuner', 10, 1, 300000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FE10-P04112_2FE10-P04112_1619429001060_735x735.jpg?v=1621170793', 'desc', 0, NULL),
('Ernie Ball Forest Green Polypro Guitar Strap', 10, 1, 82000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/E10-P04050_1541146773567_735x735.jpg?v=1569667912', 'desc', 0, NULL),
('Fender American Professional Precision Bass Guitar', 11, 2, 26300000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FF03-019-3612-776_2FF03-019-3612-776_1573183044250.jpg?v=1573183052', 'desc', 0, NULL),
('Fender CC60S Accoustic Guitar', 11, 5, 3415597, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Fender_CC60s_Pack_01.png?v=1618693690', 'desc', 0, NULL),
('Fender CD60 Dreadnought Accoustic Guitar', 11, 5, 2846307, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Fender_CD60_Nat_01.png?v=1625589237', 'desc', 0, NULL),
('Fender Player Jazz Bass Fretless Bass Guitar', 11, 2, 13200000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/F03-014-9933-515_1545619811889.jpg?v=1557222725', 'desc', 0, NULL),
('Fiddlerman Left Handed Master Violin Outfit', 12, 13, 14821335, 'https://cdn.shopify.com/s/files/1/2966/4646/products/FM_Lefthanded_Violin_Front_600x.jpg?v=1541696086', 'desc', 0, NULL),
('GENELEC S360AW SAM TWO WAY STUDIO MONITOR PAIR -WHITE', 13, 10, 148700000, 'https://hariharimusik.id/wp-content/uploads/2020/12/S360AW-1-600x600.jpg', 'desc', 0, NULL),
('Gretsch Catalina Club Drums', 14, 4, 10674045, 'https://cdn.shopify.com/s/files/1/0494/8113/products/CT1-J404-GCB.png?v=1605558729', 'desc', 0, NULL),
('Hailun HG-178 5\'10 Polished Ebony Grand Piano', 15, 9, 430093800, 'https://cdn.shopify.com/s/files/1/1369/1865/products/hailun-hg-178-5-foot-10-inch-polished-ebony-grand-piano-for-sale-in-waukegan-illinois-family-piano-co_8a830dae-324f-4432-8b42-9244fa9a0767_360x.jpg?v=1634468345', 'desc', 0, NULL),
('IK Multimedia iLoud Micro Monitor White', 16, 10, 7717500, 'https://hariharimusik.id/wp-content/uploads/2021/08/13149961_800.jpg', 'desc', 0, NULL),
('IK Multimedia Irig Mic HD 2 - Handheld Microphone', 16, 7, 2090000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/I10-IP-IRIG-MICHD2-IN_0.51563700_201519812474_735x735.jpg?v=1619877411', 'desc', 0, NULL),
('IK Multimedia iRig Mic HD-A Handheld Digital Microphone', 16, 7, 2090000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/I10-IP-IRIG-MICHDA-SAM_001_735x735.jpg?v=1554804369', 'desc', 0, NULL),
('IK Multimedia iRig Voice Handheld Microphone White', 16, 7, 730000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FI10-IP-IRIG-MICVOW-AS_2FI10-IP-IRIG-MICVOW-AS_1573715026570_735x735.jpg?v=1578023858', 'desc', 0, NULL),
('Kala KA-EBY-T-2006 Striped Ebony Tenor Ukulele', 17, 12, 2696085, 'https://cdn.shopify.com/s/files/1/1369/1865/products/kala-ka-eby-t-striped-ebony-tenor-ukulele-for-sale-waukegan-il-family-piano_4_360x.jpg?v=1633618683', 'desc', 0, NULL),
('Kala KA-SMHC Solid Mahogany Concert Ukulele', 17, 12, 3124035, 'https://cdn.shopify.com/s/files/1/1369/1865/products/kala-ka-smhc-solid-mahogany-concert-ukulele-for-sale-waukegan-il-family-piano_3_360x.jpg?v=1588387163', 'desc', 0, NULL),
('Kawai 506N 44.5\" Institutional Upright Piano', 18, 9, 75850875, 'https://cdn.shopify.com/s/files/1/1369/1865/products/kawai-506n-satin-ebony-institutional-upright-piano-for-sale-waukegan-il-family-piano_0049614d-29d7-436e-95e0-af0bbbe596b9_360x.jpg?v=1633629701', 'desc', 0, NULL),
('Kawai GX-2 BLAK 5\'11 Grand Piano', 18, 9, 528520875, 'https://cdn.shopify.com/s/files/1/1369/1865/products/kawai-gx-2-blk-pe-5-foot-11-inch-polished-ebony-grand-piano-for-sale-in-waukegan-illinois-family-piano-co_76b74f81-0d69-4054-bc6d-a728f917a9c1_360x.jpg?v=1633618229', 'desc', 0, NULL),
('Kawai K-300 48\" Professional Upright Piano', 18, 9, 166098375, 'https://cdn.shopify.com/s/files/1/1369/1865/products/kawai-k-300-pm-48-inch-polished-mahogany-upright-piano-for-sale-in-waukegan-illinois-family-piano-co_360x.jpg?v=1634572763', 'desc', 0, NULL),
('Kawai K15 44\" Continental Console Piano', 18, 9, 75850875, 'https://cdn.shopify.com/s/files/1/1369/1865/products/Kawai-K-15-Ebony-Polish-Piano-for-sale-in-waukegan-illinois-family-piano-co_360x.jpg?v=1634567872', 'desc', 0, NULL),
('Kawai ST-1 46\" Institutional Upright Piano', 18, 9, 111195675, 'https://cdn.shopify.com/s/files/1/1369/1865/products/Kawai-ST-1-Satin-Cherry-Institutiona-Upright-Piano-for-sale-waukegan-il-family-piano_31b7d885-0e83-4315-bd71-1b4efee5b333_360x.jpg?v=1633629748', 'desc', 0, NULL),
('Kinglos 4/4 Blue White Porcelain Colored Violin Solid Wood & Ebony Fittings w/ Shoulder Rest Case Bow Rosin Full Size', 19, 13, 2450000, 'https://ae01.alicdn.com/kf/H807d92063c034795918146d9bb8aee5eF/Kinglos-4-4-Blue-White-Porcelain-Colored-Violin-Solid-Wood-Ebony-Fittings-with-Shoulder-Rest-Case.jpg_Q90.jpg_.webp', 'desc', 0, NULL),
('Kinglos Electric Violin SDDS 1802', 19, 13, 3250000, 'https://images.tokopedia.net/img/cache/900/product-1/2020/8/26/1128348734/1128348734_ee64d67e-b71a-43f0-9d9e-495145ba4276_1279_1279.jpg', 'desc', 0, NULL),
('Kinglos PJA1003', 19, 13, 1600000, 'https://ae01.alicdn.com/kf/HTB1V2JjPFXXXXbDXFXXq6xXFXXXP/Kinglos-PJA1003-Full-Size-4-4-3-4-1-2-Solid-Wood-Student-Violin-Fiddle-for.jpg_Q90.jpg_.webp', 'desc', 0, NULL),
('koda essential Clip On Tuner ONE', 20, 1, 115000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FKDA-07133_2FKDA-07133_1632296632291_735x735.jpg?v=1634297151', 'desc', 0, NULL),
('koda essential Electric Guitar Stand ONE', 20, 1, 170000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FKDA-05403_2FKDA-05403_1607931664100_735x735.jpg?v=1610529026', 'desc', 0, NULL),
('koda essential KIC15 Straight-Straight Instrument Cable 15ft Black', 20, 1, 140000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FKDA-01102_2FKDA-01102_1605687612690_735x735.jpg?v=1605865226', 'desc', 0, NULL),
('koda essential KMC20 Microphone Cable 20ft Black', 20, 1, 185000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FKDA-01107_2FKDA-01107_1605687422040_735x735.jpg?v=1605865289', 'desc', 0, NULL),
('koda essential Music Stand ONE', 20, 1, 230000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FKDA-05402_2FKDA-05402_1607929966330_735x735.jpg?v=1621394724', 'desc', 0, NULL),
('KORG EK-50 61-keys Entertainer Keyboard', 21, 6, 5560000, 'cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FK32-EK-50_2FK32-EK-50_1629261556690.jpg?v=1629261569', 'desc', 0, NULL),
('KORG Pa300 61-Key Arranger Keyboard', 21, 6, 10800000, 'cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FK32-PA300_2FK32-PA300_1625151086550.jpg?v=1625151096', 'desc', 0, NULL),
('Ludwig Classic Maple Drums', 22, 4, 31296717, 'https://cdn.shopify.com/s/files/1/0494/8113/products/classicmaple1.png?v=1605560740', 'desc', 0, NULL),
('Mackie EM-USB Condenser Microphone', 23, 7, 2437000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FM01-EM-USB_2FM01-EM-USB_1634609845260_735x735.jpg?v=1634609855', 'desc', 0, NULL),
('Mackie EM-USB White Limited Condenser Microphone', 23, 7, 2080000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FM01-EM-USB-WHITE-LTD_2FM01-EM-USB-WHITE-LTD_1634631461100_735x735.jpg?v=1634631470', 'desc', 0, NULL),
('Mackie Onyx 24 24-channel Analog Mixer with Multi-track USB', 23, 8, 18350000, 'https://hariharimusik.id/wp-content/uploads/2021/08/onyx24_model-1-600x480.jpg', 'desc', 0, NULL),
('MEINL Percussion CAJ2GO-2 Backpacker Cajon Natural', 24, 3, 1550000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/R14-CAJ2GO-2_001_735x735.jpg?v=1569679853', 'desc', 0, NULL),
('MEINL Percussion CAJ3WN-M Traditional String Cajon Walnut', 24, 3, 2000000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/R14-CAJ3WN-M_001_735x735.jpg?v=1569679853', 'desc', 0, NULL),
('MEINL Percussion JC50AB-B Jam Cajon Baltic Birch', 24, 3, 1050000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FR14-JC50AB-B_2FR14-JC50AB-B_1597922954550_735x735.jpg?v=1597922964', 'desc', 0, NULL),
('MEINL Percussion MC1AB-B Mini Cajon', 24, 3, 800000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/R14-MC1AB-B_1528770692812_735x735.jpg?v=1580266270', 'desc', 0, NULL),
('MEINL Percussion PSC100B Snarecraft Pickup Cajon Baltic Birch Frontplate', 24, 3, 2300000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FR14-PSC100B_2FR14-PSC100B_1586404284450_735x735.jpg?v=1586404292', 'desc', 0, NULL),
('Ming Jiang Zhu 903 Violin', 25, 13, 22667085, 'https://cdn.shopify.com/s/files/1/2966/4646/products/MJZ_903_front_600x.jpg?v=1538070582', 'desc', 0, NULL),
('Ming Jiang Zhu 907 Violin', 25, 13, 37074735, 'https://cdn.shopify.com/s/files/1/2966/4646/products/mjz_907_front_600x.jpg?v=1538070595', 'desc', 0, NULL),
('Moog Minimoog Voyager Old School', 26, 11, 54381800, 'https://www.melodiamusik.com/wp-content/uploads/2016/08/Moog-Minimoog-Voyager-Old-School.jpg', 'desc', 0, NULL),
('NEUMANN KH 80 DSP Monitor Speaker /pair', 27, 10, 23625000, 'https://hariharimusik.id/wp-content/uploads/2021/01/KH-80-DSP-Monitor-Speaker-1.jpg', 'desc', 0, NULL),
('Roland Electric Drum TD-17KVX + Rack MDS-COMPACT', 28, 4, 18380000, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2020/9/22/9fff2e5f-ba79-437a-8a2f-1e2bdef09645.jpg', 'desc', 0, NULL),
('Roland JUNODS61 Velocity-Sensitive 61Key Portable Synthesizer', 28, 11, 12110985, 'https://cdn.shopify.com/s/files/1/1369/1865/products/71YJfUnj3DL._SL1500_360x.jpg?v=1569155551', 'desc', 0, NULL),
('Roland VAD306 V-Drums Acoustic Design Electronic Drum Set', 28, 4, 37003707, 'https://cdn.shopify.com/s/files/1/0494/8113/products/vad3061.png?v=1614798109', 'desc', 0, NULL),
('Squier Classic Vibe 60s Jazz Bass Guitar', 29, 2, 7450000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/F03-037-4530-504_1562752550631.jpg?v=1562810185', 'desc', 0, NULL),
('TAMA CL52KRS-BAB Superstar Classic Maple 5-Piece Drum Shell Kit Blue Lacquer Burst', 30, 4, 12200000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/T03-CL52KRS-BAB_1553833994292_735x735.jpg?v=1623681639', 'desc', 0, NULL),
('TAMA CL52KRSP-GGP Superstar Classic Exotix 5-Piece Drum Shell Kit Gloss Garnet Lacebark Pine', 30, 4, 12200000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT03-CL52KRSP-GGP_2FT03-CL52KRSP-GGP_1608630129080_735x735.jpg?v=1623681762', 'desc', 0, NULL),
('TAMA HRM5B Rhythm Mate Hickory Drum Sticks', 30, 1, 100000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/T03-HRM5B_1520849057039.jpg?v=1623681633', 'desc', 0, NULL),
('Tanglewood Crossroads Parlor Body', 31, 5, 3557920, 'https://cdn.shopify.com/s/files/1/0494/8113/products/TWCR-P_01.jpg?v=1628285208', 'desc', 0, NULL),
('TASCAM MODEL 16 MIXER / INTERFACE / RECORDER', 32, 8, 15625000, 'https://hariharimusik.id/wp-content/uploads/2021/01/MODEL-16-1.jpg', 'desc', 0, NULL),
('Taylor 210ce Plus Rosewood/Spruce Dreadnought Acoustic Guitar', 33, 5, 20250000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT25-210CE-PLUS_2FT25-210CE-PLUS_1589432319210_735x735.jpg?v=1597297252', 'desc', 0, NULL),
('Taylor 814ce LTD V-Class Cocobolo/Lutz Grand Auditorium Acoustic Guitar', 33, 5, 72800000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT25-814CE-LTD-V-COCOBOLO_2FT25-814CE-LTD-V-COCOBOLO_1588231541460_735x735.jpg?v=1594283100', 'desc', 0, NULL),
('Taylor Baby Mahogany Acoustic Guitar', 33, 5, 6350000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/T25-BT2_1545816573465_735x735.jpg?v=1566787063', 'desc', 0, NULL),
('Taylor Big Baby Acoustic Guitar', 33, 5, 8450000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/T25-BBT_1567051680400_735x735.jpg?v=1567051689', 'desc', 0, NULL),
('Taylor GS Mini (Mahogany Top) Acoustic Guitar', 33, 5, 9250000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT25-GS-MINI-MAH_2FT25-GS-MINI-MAH_1634017570330_735x735.jpg?v=1634017578', 'desc', 0, NULL),
('Taylor GS Mini-e RW Acoustic Guitar', 33, 5, 11550000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT25-GS-MINI-E-RW_2FT25-GS-MINI-E-RW_1605244466600_735x735.jpg?v=1605244479', 'desc', 0, NULL),
('Yamaha APX600 Thinline Acoustic-Electric Guitar', 35, 5, 4279500, 'https://cdn.shopify.com/s/files/1/1369/1865/products/apx600ovs_360x.jpg?v=1585848026', 'desc', 0, NULL),
('Yamaha APXT2 3/4-Size Thinline Acoustic-Electric Guitar', 35, 5, 2981385, 'https://cdn.shopify.com/s/files/1/1369/1865/products/APXT2-OVS1_41f6b3b9-903c-4f21-bb65-120127196e65_360x.jpg?v=1633629926', 'desc', 0, NULL),
('Yamaha CGS104AII Student Accoustic Guitar', 35, 5, 2134695, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Yamaha_CGS104aII_01.jpg?v=1618681450', 'desc', 0, NULL),
('Yamaha CPX600 Medium-Jumbo Acoustic-Electric Guitar', 35, 5, 5420700, 'https://cdn.shopify.com/s/files/1/1369/1865/products/yamaha-cpx600bl-black-medium-jumbo-acoustic-electric-guitar-for-sale-waukegan-il-family-piano_3_ba9d0b8d-5430-4333-b6e0-ed4c9c20743a_360x.png?v=1633629929', 'desc', 0, NULL),
('Yamaha CSF1M Parlor Acoustic-Electric Guitar', 35, 5, 6420000, 'https://cdn.shopify.com/s/files/1/1369/1865/products/yamaha-csf1m-parlor-guitar-for-sale-waukegan-il-family-piano_3_b50f0199-b1b0-49c0-8a4f-b4bfbfc0e0d7_360x.jpg?v=1633629931', 'desc', 0, NULL),
('Yamaha Drum Electronic DTX-6K2X', 35, 4, 13050000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FY01-DTX6K2X_2FY01-DTX6K2X_1625200063630_735x735.jpg?v=1625200075', 'desc', 0, NULL),
('Yamaha Drum Electronic DTX-6KX', 35, 4, 9500000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FY01-DTX6KX_2FY01-DTX6KX_1624337829340_735x735.jpg?v=1624337838', 'desc', 0, NULL),
('Yamaha FG800 Solid Top Dreadnought Accoustic Guitar', 35, 5, 3130952, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Yamaha_FG800_01.jpg?v=1571573328', 'desc', 0, NULL),
('Yamaha FS820 Folk Body Accoustic Guitar', 35, 5, 3984887, 'https://cdn.shopify.com/s/files/1/0494/8113/products/yamaha_FS820_full.jpg?v=1608144577', 'desc', 0, NULL),
('Yamaha FSX800C Folk Body Accoustic Electric Guitar', 35, 5, 4838822, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Yamaha_FSX800c_01.jpg?v=1571573295', 'desc', 0, NULL),
('Yamaha PAC112V Electric Guitar', 35, 5, 4411855, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Yamaha_PAC112V_NaturalSat_01.jpg?v=1613513279', 'desc', 0, NULL),
('Yamaha PAC311H Electric Guitar', 35, 5, 5977402, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Yamaha_PAC311H_blk_01.jpg?v=1613514339', 'desc', 0, NULL),
('Yamaha Pacifica PAC012 Electric Guitar', 35, 5, 2995650, 'https://cdn.shopify.com/s/files/1/1369/1865/products/yamaha-pac012-electric-guitar-for-sale-waukegan-il-family-piano_2_694c8170-a795-43fd-8963-569dffb38245_360x.jpg?v=1633629947', 'desc', 0, NULL),
('Yamaha PSR-E273 61-key Portable Arranger', 35, 6, 2000000, 'cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FY01-PSRE273_2FY01-PSRE273_1619586538660.jpg?v=1623681793', 'desc', 0, NULL),
('Yamaha PSR-E373 61-key Portable Keyboard', 35, 6, 2950000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FY01-PSRE373_2FY01-PSRE373_1619583193230.jpg?v=1623682551', 'desc', 0, NULL),
('Yamaha Rydeen Drum Set', 35, 4, 10300000, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/7/2/18984bf3-8d56-4678-97de-88892e44370e.jpg', 'desc', 0, NULL),
('Yamaha Storia I Small-Body Acoustic Guitar - Off White', 35, 5, 6404985, 'https://cdn.shopify.com/s/files/1/1369/1865/products/yamaha-storia-i-small-body-acoustic-guitar-off-white-for-sale-waukegan-il-family-piano_2_4fb61188-4c7a-4adc-b08d-f5723acab296_360x.jpg?v=1633629952', 'desc', 0, NULL),
('Yamaha Storia III Small-Body Acoustic-Electric Guitar - Chocolate Brown', 35, 5, 6404985, 'https://cdn.shopify.com/s/files/1/1369/1865/products/yamaha-storia-iii-concert-acoustic-electric-guitar-chocolate-brown-for-sale-waukegan-il-family-piano_5_2b2e5981-196b-4a22-bd99-f473dcd005c2_360x.jpg?v=1633629953', 'desc', 0, NULL);

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
  `alamat` varchar(250) NOT NULL,
  `birth_date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `username`, `password`, `name`, `alamat`, `birth_date`, `status`) VALUES
('Adiarja.Nashiruddin65@yahoo.com', 'Adiyaashird9', 'robert14', 'Adiarja Nashiruddin', 'Jalan Dipenogoro No. 01', '1992-09-17', 1),
('Amber.Oktaviani679@gmail.com', 'AmberOktaviani', 'harrismaria', 'Amber Oktaviani', 'Jl. Surapati No. 78', '1989-04-18', 1),
('Ana.Yolanda28@gmail.com', 'AnYoland', 'darmanawaluyo', 'Ana Yolanda', 'Gang Asia Afrika No. 094', '2020-02-20', 1),
('Angela.Farida558@hotmail.com', 'AngeaFaridki1', 'hkurniawan', 'Angela Farida', 'Gang Tebet Barat Dalam No. 5', '2001-07-21', 1),
('April.Hastuti149@hotmail.com', 'il', 'tbrown6j', 'April Hastuti', 'Gang Kebonjati No. 9', '1978-06-27', 2),
('Ashley.Suartini619@hotmail.com', 'AhleySuartinzr', 'khutasoit', 'Ashley Suartini', 'Jalan Gardujati No. 3', '1967-10-28', 1),
('Austin.Narpati316@gmail.com', 'ushnxrfsb9', 'anastasiapudjiastuti', 'Austin Narpati', 'Jalan Rawamangun No. 759', '2011-10-29', 1),
('Benjamin.Maheswara934@yahoo.com', 'BnjaminMahewaraq', 'emong593', 'Benjamin Maheswara', 'Jalan Dipenogoro No. 135', '1966-04-15', 1),
('Catherine.Utami698@yahoo.com', 'CatherinUtaqo5', 'narpatigangsa', 'Catherine Utami', 'Gang Cihampelas No. 3', '1989-08-07', 1),
('Caturangga.Mahendra379@yahoo.com', 'CaturaggaMaheva', 'utamiwira', 'Caturangga Mahendra', 'Jalan Cikutra Barat No. 376', '2021-02-12', 1),
('Christina.Suartini383@yahoo.com', 'ChrstinaSurtini50957', 'coletimothy', 'Christina Suartini', 'Jalan Cihampelas No. 85', '1968-02-12', 1),
('Christina.Uyainah760@hotmail.com', 'ChristinaUyains2', 'birdjeffrey', 'Christina Uyainah', 'Gg. Bangka Raya No. 917', '1951-09-10', 1),
('Christine.Nuraini309@yahoo.com', 'ChristineNuraini', 'ajimin35', 'Christine Nuraini', 'Jalan Ahmad Yani No. 682', '1955-10-26', 1),
('Christy.Kusmawati597@yahoo.com', 'ChristyKusmawaig', 'aryanipadma', 'Christy Kusmawati', 'Jl. Rajawali Timur No. 2', '1990-04-09', 1),
('Cindy.Andriani268@yahoo.com', 'CindyAndrjni', 'nweaverq', 'Cindy Andriani', 'Jalan Ahmad Yani No. 3', '1973-09-21', 1),
('Cindy.Lailasari655@gmail.com', 'Cidaiaatru', 'cawisadinuraini', 'Cindy Lailasari', 'Jl. Otto Iskandardinata No. 62', '1954-12-05', 1),
('Cornelia.Rahimah111@hotmail.com', 'CorneliaRahimah', 'randall47', 'Cornelia Rahimah', 'Jalan Tubagus Ismail No. 2', '1960-01-17', 1),
('Crystal.Oktaviani828@gmail.com', 'CrysxOjbigqt', 'dominiquemartinez', 'Crystal Oktaviani', 'Gang Yos Sudarso No. 6', '1974-10-26', 1),
('Crystal.Puspasari627@hotmail.com', 'CrstalPusqtwnz', 'stacy138', 'Crystal Puspasari', 'Gg. W.R. Supratman No. 335', '2019-02-19', 1),
('Cynthia.Purnawati57@gmail.com', 'CynthiaPurnpatv1s', 'yahyahidayanto', 'Cynthia Purnawati', 'Gang Ahmad Yani No. 475', '1960-10-23', 1),
('Dariati.Kuswoyo2@gmail.com', 'Darianuswouo', 'ychaney8', 'Dariati Kuswoyo', 'Jalan Waringin No. 58', '1977-03-04', 1),
('Dasa.Waluyo619@yahoo.com', 'DyaWsuyom2t', 'michelle42', 'Dasa Waluyo', 'Gg. Pasir Koja No. 3', '1984-05-04', 1),
('Donna.Yuniar59@gmail.com', 'Donnalniarmqzoalniarq', 'cakrawalapangestu', 'Donna Yuniar', 'Gg. Rajawali Timur No. 58', '2017-07-18', 1),
('Elizabeth.Laksita90@gmail.com', 'ElizabethLaksita', 'gandanababan', 'Elizabeth Laksita', 'Jalan Jend. A. Yani No. 91', '1988-04-01', 1),
('Elizabeth.Mulyani91@hotmail.com', 'Elxaugclyni0', 'adriansyahbaktiadi', 'Elizabeth Mulyani', 'Gg. Yos Sudarso No. 994', '1956-02-25', 1),
('Elma.Oktaviani813@gmail.com', 'ElmaOktaviani', 'vwright5', 'Elma Oktaviani', 'Gang Pacuan Kuda No. 334', '1958-04-15', 1),
('Eluh.Utama741@hotmail.com', 'ElhUcmc', 'thomaslewis', 'Eluh Utama', 'Jalan Gegerkalong Hilir No. 9', '1976-10-21', 1),
('Frank.Kuswoyo878@hotmail.com', 'enkKuswoyos', 'luthfiwaskita', 'Frank Kuswoyo', 'Jl. Gegerkalong Hilir No. 956', '1966-05-14', 1),
('Galih.Tamba979@gmail.com', 'alhTmbr2', 'patriciapermadi', 'Galih Tamba', 'Gang Kendalsari No. 6', '1984-05-22', 1),
('Gerald.Winarno317@yahoo.com', 'GeraldWinno', 'sarahfreeman', 'Gerald Winarno', 'Gg. H.J Maemunah No. 261', '2009-09-25', 1),
('Ghaliyati.Agustina341@gmail.com', 'alpiAgustza', 'lnelsoni', 'Ghaliyati Agustina', 'Gang Kapten Muslihat No. 291', '1993-03-20', 1),
('Gina.Astuti979@hotmail.com', 'GnaAstui', 'gnatsir6', 'Gina Astuti', 'Jl. Cikutra Timur No. 78', '1956-02-15', 1),
('Halim.Sinaga405@yahoo.com', 'HlimSinaga5', 'amy65728', 'Halim Sinaga', 'Jl. Jayawijaya No. 88', '2003-07-14', 1),
('Harjasa.Permadi563@hotmail.com', 'HarjasaPeradig', 'simbolonparis', 'Harjasa Permadi', 'Jl. Merdeka No. 764', '1992-12-26', 1),
('Hunter.Nugroho535@hotmail.com', 'HunterNuvoho', 'kajen701', 'Hunter Nugroho', 'Gang Pelajar Pejuang No. 466', '2006-03-31', 1),
('Icha.Usamah33@hotmail.com', 'Ihaynedxchaynedu', 'xtravis2', 'Icha Usamah', 'Gang Ahmad Yani No. 39', '2001-02-23', 1),
('Ilsa.Prastuti393@yahoo.com', 'IlsaPttiqt', 'rachelsantoso', 'Ilsa Prastuti', 'Gg. M.H Thamrin No. 663', '2008-09-16', 1),
('Ismail.Prayoga724@yahoo.com', 'IsmailPrayoga', 'josephchang', 'Ismail Prayoga', 'Jl. Veteran No. 0', '2010-01-07', 2),
('Jack.Saragih94@gmail.com', 'JakSragi79', 'aadriansyah', 'Jack Saragih', 'Gg. Otto Iskandardinata No. 595', '1994-09-12', 1),
('James.Tarihoran520@yahoo.com', 'Jcesrrihorane', 'lukita72', 'James Tarihoran', 'Jalan Siliwangi No. 9', '1970-03-21', 1),
('James.Wacana770@gmail.com', 'qsWbanr', 'domingueznathan', 'James Wacana', 'Gg. Ahmad Dahlan No. 492', '1971-07-23', 1),
('Jason.Thamrin38@hotmail.com', 'Jasofaman91n6', 'victor93', 'Jason Thamrin', 'Gang Jend. Sudirman No. 030', '1987-03-20', 1),
('Jinawi.Kuswoyo957@yahoo.com', 'vawitswoyovll', 'hutasoitdagel', 'Jinawi Kuswoyo', 'Jalan Sukajadi No. 02', '1977-08-30', 1),
('Jonathan.Dongoran565@yahoo.com', 'JonzhanDongoranv2u', 'jzulkarnain', 'Jonathan Dongoran', 'Jalan W.R. Supratman No. 248', '2018-09-15', 1),
('Joseph.Sitompul910@hotmail.com', 'JsephSitompul', 'johncameron', 'Joseph Sitompul', 'Jalan Jend. Sudirman No. 091', '2019-04-04', 1),
('Karna.Dabukke291@yahoo.com', 'Karnxabskexc', 'tdominguez', 'Karna Dabukke', 'Jl. KH Amin Jasuta No. 589', '1959-03-25', 1),
('Kathryn.Padmasari554@hotmail.com', 'KatynPdmasari6', 'gentrydavid', 'Kathryn Padmasari', 'Jalan Ir. H. Djuanda No. 736', '1988-07-25', 1),
('Kayla.Safitri901@yahoo.com', 'Kayawitrih', 'hastuticahya', 'Kayla Safitri', 'Jalan BKR No. 3', '1992-12-16', 1),
('Kelli.Wahyuni253@yahoo.com', 'KelliWahyuni3j', 'ajimanyuliarti', 'Kelli Wahyuni', 'Jl. Ronggowarsito No. 116', '1995-03-07', 2),
('Kerri.Wijayanti590@hotmail.com', 'Kermjyantib3', 'upermadi', 'Kerri Wijayanti', 'Jl. Laswi No. 7', '2020-01-24', 1),
('Kevin.Anggriawan751@yahoo.com', 'KevinAngiasnj5rd', 'wwinarsih', 'Kevin Anggriawan', 'Jalan S. Parman No. 31', '1995-12-19', 1),
('Kezia.Handayani862@yahoo.com', 'KeyHandayani', 'duffyangela', 'Kezia Handayani', 'Gang Rungkut Industri No. 55', '1980-08-02', 1),
('Kimberly.Padmasari818@yahoo.com', 'KimberlyPadmasari', 'jonesmatthew', 'Kimberly Padmasari', 'Jalan Bangka Raya No. 8', '1998-09-30', 1),
('Krystal.Safitri744@hotmail.com', 'KrystalSafitriz1d', 'mujurnuraini', 'Krystal Safitri', 'Jalan Waringin No. 6', '1962-12-15', 1),
('Lasmanto.Ardianto758@gmail.com', 'LasmantArdnntcs', 'candrahartati', 'Lasmanto Ardianto', 'Gang Merdeka No. 79', '1974-03-20', 1),
('Lisa.Hartati93@gmail.com', 'Lisaurtwc4j', 'aryaniumi', 'Lisa Hartati', 'Jalan Indragiri No. 8', '1971-03-03', 2),
('Luwes.Firmansyah542@gmail.com', 'LuwesFirmansyah', 'burtonrobert', 'Luwes Firmansyah', 'Jl. M.H Thamrin No. 0', '2010-11-10', 1),
('Madison.Yuliarti664@hotmail.com', 'MadisonYuligtis', 'april13v', 'Madison Yuliarti', 'Gang Ahmad Yani No. 227', '1996-09-01', 1),
('Mark.Kuswoyo410@yahoo.com', 'arkonmo22pat', 'xfujiati', 'Mark Kuswoyo', 'Jl. Sukabumi No. 763', '2011-05-23', 1),
('Marwata.Firgantoro635@yahoo.com', 'MarwataFirgaunrwataFirgatorhg', 'ibrani14', 'Marwata Firgantoro', 'Gg. Moch. Ramdan No. 6', '1961-11-14', 1),
('Meghan.Nasyiah263@yahoo.com', 'ihanNasyiahkq', 'kathleenmiller', 'Meghan Nasyiah', 'Jalan Indragiri No. 7', '1982-11-02', 1),
('Michael.Damanik919@yahoo.com', 'MicheDamakd600', 'martaniardianto', 'Michael Damanik', 'Gang Tebet Barat Dalam No. 66', '1955-04-24', 1),
('Michael.Manullang730@gmail.com', 'MaaxManygn', 'sanchezrobert', 'Michael Manullang', 'Jalan Siliwangi No. 2', '2011-10-09', 1),
('Michael.Permadi381@gmail.com', 'MchaelPermadij79', 'jonathan82', 'Michael Permadi', 'Gang Siliwangi No. 9', '2006-12-27', 1),
('Michele.Yulianti155@yahoo.com', 'MicheleYuliantiu6', 'betaniauwais', 'Michele Yulianti', 'Gg. Pasteur No. 596', '1990-09-21', 1),
('Misty.Mandasari892@gmail.com', 'isyMandasari', 'darunasaefullah', 'Misty Mandasari', 'Gang Asia Afrika No. 61', '2012-01-16', 1),
('Nabila.Purwanti866@hotmail.com', 'NabilaPowantnw', 'ngray4tk', 'Nabila Purwanti', 'Jl. Cempaka No. 528', '2012-10-10', 1),
('Nathan.Sinaga375@gmail.com', 'NanSinag5hk', 'kemalprastuti', 'Nathan Sinaga', 'Jl. PHH. Mustofa No. 8', '1972-01-16', 1),
('Nicholas.Sihombing413@yahoo.com', 'Nicholaeihovgq27', 'ngonzalez', 'Nicholas Sihombing', 'Jalan Pacuan Kuda No. 4', '1957-10-20', 1),
('Pangeran.Mansur723@gmail.com', 'PfgdanMjurj', 'elizabethgibbs', 'Pangeran Mansur', 'Jl. Lembong No. 69', '2010-01-05', 1),
('Panji.Simbolon601@hotmail.com', 'PanjSiolom', 'prasetyagantar', 'Panji Simbolon', 'Jl. Rawamangun No. 763', '2012-08-28', 1),
('Parman.Pradipta617@gmail.com', 'armafradipta93', 'cawuksafitri', 'Parman Pradipta', 'Gg. Ciwastra No. 542', '1978-05-12', 1),
('Patricia.Permata88@hotmail.com', 'PatricpPermatw2k', 'panjipangestu', 'Patricia Permata', 'Jalan Cikutra Timur No. 876', '1954-12-22', 2),
('Phillip.Kusumo974@gmail.com', 'Pwlipjsumz', 'kaylanovitasari', 'Phillip Kusumo', 'Jl. PHH. Mustofa No. 764', '1972-05-10', 1),
('Prabu.Habibi496@yahoo.com', 'PrabuHabibb0', 'puspasariwarsa', 'Prabu Habibi', 'Gg. Dipenogoro No. 02', '1965-05-01', 1),
('Puspa.Handayani593@gmail.com', 'PuspaHandaai24', 'viktoryolanda', 'Puspa Handayani', 'Gg. Kutai No. 699', '1952-01-29', 1),
('Radit.Hidayanto223@yahoo.com', 'RacHdyanto23', 'kristen72', 'Radit Hidayanto', 'Jalan Ronggowarsito No. 554', '1973-09-12', 1),
('Randy.Firgantoro67@yahoo.com', 'uFirganhrogc0', 'mayakuswoyo', 'Randy Firgantoro', 'Jl. Cikapayang No. 08', '2019-10-24', 1),
('Rebekah.Andriani648@hotmail.com', 'Reekahvriani2ud', 'nurulsuryatmi', 'Rebekah Andriani', 'Jl. Wonoayu No. 163', '1997-12-27', 1),
('Rendy.Kuswoyo643@yahoo.com', 'RendyKuswoyo', 'kenneth62', 'Rendy Kuswoyo', 'Gang Cihampelas No. 4', '1993-06-12', 1),
('Ryan.Dabukke544@hotmail.com', 'RyanDabukkuyanDabukk2aipyanDabukkuyanzbukk2aijp', 'baxterchristian', 'Ryan Dabukke', 'Jl. Jayawijaya No. 988', '2003-03-21', 1),
('Ryan.Nainggolan860@yahoo.com', 'RyanNainggolant931', 'mathewwong', 'Ryan Nainggolan', 'Gg. Astana Anyar No. 39', '1971-03-02', 1),
('Sandra.Purnawati44@yahoo.com', 'SandraPunawatic', 'qpudjiastuti', 'Sandra Purnawati', 'Jl. Rajawali Barat No. 6', '1963-11-25', 1),
('Sarah.Hasanah488@gmail.com', 'arahHasanah', 'kyle1377', 'Sarah Hasanah', 'Gang Ir. H. Djuanda No. 8', '2019-09-06', 1),
('Sharon.Rahmawati455@gmail.com', 'Sharonahmawatiy4u9', 'ellis31b', 'Sharon Rahmawati', 'Jalan Peta No. 476', '2016-12-12', 1),
('Sidiq.Irawan458@gmail.com', 'Siditrawan6', 'sylviawilliams', 'Sidiq Irawan', 'Jalan Veteran No. 95', '2013-07-04', 1),
('Simon.Setiawan3@gmail.com', 'SimonSetawan', 'angelicasherman', 'Simon Setiawan', 'Jl. Pasirkoja No. 81', '1977-03-23', 2),
('Stephanie.Laksita143@hotmail.com', 'Stzhiiqp', 'montoyamichael', 'Stephanie Laksita', 'Gg. Cihampelas No. 072', '2018-01-11', 1),
('Steven.Manullang568@hotmail.com', 'jvenvnulang', 'sparkselizabeth', 'Steven Manullang', 'Gg. Gedebage Selatan No. 09', '1996-05-29', 1),
('Taufan.Mangunsong570@hotmail.com', 'TaufanMangunsong', 'hughesderrick', 'Taufan Mangunsong', 'Jalan Jamika No. 940', '1968-11-22', 1),
('Taylor.Permata842@hotmail.com', 'Tlvhmata7', 'taliasusanti', 'Taylor Permata', 'Gang Dipenogoro No. 136', '1993-08-09', 1),
('Teresa.Mandasari737@yahoo.com', 'TeresaMandasari3', 'jason10w', 'Teresa Mandasari', 'Jalan Abdul Muis No. 4', '1962-05-12', 2),
('Todd.Prasetya379@hotmail.com', 'Toeratyu0e1', 'fedwards', 'Todd Prasetya', 'Jalan Kutisari Selatan No. 251', '1996-08-09', 1),
('Unjani.Fujiati50@yahoo.com', 'UnjanFujotvwgq', 'bill36i6', 'Unjani Fujiati', 'Jl. Jamika No. 637', '1989-09-07', 1),
('Vanesa.Laksmiwati306@hotmail.com', 'jnesatiatio9gs', 'glailasari', 'Vanesa Laksmiwati', 'Gang Cikutra Barat No. 6', '1959-05-01', 1),
('Vanesa.Wahyuni604@hotmail.com', 'Vaeepyuni71', 'david44x', 'Vanesa Wahyuni', 'Gang Pasir Koja No. 074', '2015-03-19', 1),
('Wakiman.Hakim978@gmail.com', 'WakimanHakx', 'hhariyah', 'Wakiman Hakim', 'Gg. H.J Maemunah No. 9', '1998-08-29', 1),
('Wani.Wahyuni233@gmail.com', 'WanienmaniWahyni', 'jessicatanner', 'Wani Wahyuni', 'Jl. Dipenogoro No. 387', '2002-08-28', 2),
('Wasis.Rajasa104@hotmail.com', 'Wasiujastcigjast3', 'garda518', 'Wasis Rajasa', 'Jl. PHH. Mustofa No. 80', '2019-05-28', 1),
('Zulaikha.Riyanti241@yahoo.com', 'ZliyaRiyctu', 'bjohnson', 'Zulaikha Riyanti', 'Gang Astana Anyar No. 2', '1965-12-19', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
