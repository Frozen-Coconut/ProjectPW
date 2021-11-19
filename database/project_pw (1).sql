-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2021 at 08:07 AM
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

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `image`) VALUES
(1, 'Amahi', 'https://amahiukuleles.com/wp-content/uploads/2021/10/Amahi-logo-home.png'),
(2, 'Avantone', 'http://www.avantonepro.com/assets/img/logo-md-rd.png'),
(3, 'Behringer', 'https://1000logos.net/wp-content/uploads/2020/09/Behringer-Emblem.jpg'),
(4, 'Cannon', 'https://pbs.twimg.com/profile_images/767846215455170560/E8edbujP_400x400.jpg'),
(5, 'Casio', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Casio_logo.svg/2560px-Casio_logo.svg.png'),
(6, 'D Angelico', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/D%27Angelico-Guitars-Logo.png/1200px-D%27Angelico-Guitars-Logo.png'),
(7, 'Dave Smith', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Dave_Smith_Instruments_Logo.svg/1280px-Dave_Smith_Instruments_Logo.svg.png'),
(8, 'Eastman', 'https://download.logo.wine/logo/Eastman_Chemical_Company/Eastman_Chemical_Company-Logo.wine.png'),
(9, 'Elixir', 'https://www.algamnordic.com/upload/algamproducts/ELIXIR/Logos/elixir.png'),
(10, 'Ernie Ball', 'https://www.kindpng.com/picc/m/421-4218296_transparent-slinky-png-ernie-ball-logo-png-png.png'),
(11, 'Fender', 'https://www.deadblondestars.com/wp-content/uploads/2020/04/fender-logo.png'),
(12, 'Fiddlerman', 'https://cdn.shopify.com/s/files/1/2966/4646/products/Fiddlerman_Select_Dark_Rosin_for_Violin.jpg?v=1574184522'),
(13, 'Genelec', 'https://images.all-free-download.com/images/graphiclarge/genelec_136392.jpg'),
(14, 'Gretsch', 'https://seeklogo.com/images/G/Gretsch_Drums-logo-6DEAC86889-seeklogo.com.png'),
(15, 'Hailun', 'https://e7.pngegg.com/pngimages/855/253/png-clipart-digital-piano-kawai-musical-instruments-logo-yamaha-corporation-piano-furniture-text-thumbnail.png'),
(16, 'IK Multimedia', 'https://cdn.shopify.com/s/files/1/0117/8740/3323/collections/ik-multimedia_1200x1200.jpg?v=1570091407'),
(17, 'Kala', 'https://www.pngkey.com/png/full/327-3271366_kala-kala-brand-music-logo.png'),
(18, 'Kawai', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Kawai_Logo.jpg/1200px-Kawai_Logo.jpg'),
(19, 'Kinglos', 'https://mark.trademarkia.com/services/logo.ashx?sid=87154622'),
(20, 'koda', 'http://2.bp.blogspot.com/-GXQz-3oIwpo/T43q1L3W_LI/AAAAAAAAE_o/Fl-vzcbH8hg/s1600/KODA+logo.png'),
(21, 'KORG', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Korg_logo.svg/1200px-Korg_logo.svg.png'),
(22, 'Ludwig', 'https://i.pinimg.com/originals/06/f1/f2/06f1f2a1eb7eeb2572d2ce488ad95a2f.jpg'),
(23, 'Mackie', 'https://i.pinimg.com/originals/7d/d9/10/7dd9102eec2d3b30e83c967b74017e1b.jpg'),
(24, 'MEINL', 'https://e7.pngegg.com/pngimages/265/16/png-clipart-meinl-percussion-cymbal-drum-kits-cajon-conga-drumset-angle-text.png'),
(25, 'Ming Jiang Zhu', 'https://cdn.shopify.com/s/files/1/2966/4646/collections/MingJiangZhu_600x_69d38aa1-6c67-4e8a-bdc5-486a479efed5_600x600_crop_center.png?v=1571504465'),
(26, 'Moog', 'https://logos-download.com/wp-content/uploads/2016/12/Moog_logo_logotype.png'),
(27, 'Neumann', 'https://i.pinimg.com/originals/05/8f/e9/058fe97a38fbd3a13a6a1a8e483cafa4.png'),
(28, 'Roland', 'https://i.pinimg.com/736x/90/60/06/906006073b75924fb9501a65d92368e9--design-logos-roland.jpg'),
(29, 'Squier', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Squier_guitars_logo.png/1200px-Squier_guitars_logo.png'),
(30, 'TAMA', 'https://www.tama.com/common/product_artist_file/file/pen_TLS120BK_00_01.png'),
(31, 'Tanglewood', 'https://sherwoodphoenix.co.uk/wp-content/uploads/2020/04/Tanglewood-Logo.jpg'),
(32, 'Tascam', 'https://avacab-audiovisuales.com/img/logos-marcas/grandes/logo-grande-tascam-prod-avacab.jpg'),
(33, 'Taylor', 'https://i.pinimg.com/originals/da/e3/a0/dae3a07688b2c935c4208d40bf019e38.jpg'),
(34, 'VOX', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a2/Vox_logo.svg/1280px-Vox_logo.svg.png'),
(35, 'Yamaha', 'https://1000logos.net/wp-content/uploads/2020/06/Yamaha-Logo.png');

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

--
-- Dumping data for table `instrument`
--

INSERT INTO `instrument` (`id`, `name`, `image`) VALUES
(1, 'Accessory', 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/T03-HRM5B_1520849057039.jpg?v=1623681633'),
(2, 'Bass', 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/F03-037-4530-504_1562752550631.jpg?v=1562810185'),
(3, 'Cajoon', 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/R14-CAJ3WN-M_001_735x735.jpg?v=1569679853'),
(4, 'Drum', 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/8/31/a5a95e39-110c-4ba1-a066-b94aa41b772d.png'),
(5, 'Guitar', 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT25-GS-MINI-E-RW_2FT25-GS-MINI-E-RW_1605244466600_735x735.jpg?v=1605244479'),
(6, 'Keyboard', 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FY01-PSRE373_2FY01-PSRE373_1619583193230.jpg?v=1623682551'),
(7, 'Microphone', 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FM01-EM-USB-WHITE-LTD_2FM01-EM-USB-WHITE-LTD_1634631461100_735x735.jpg?v=1634631470'),
(8, 'Mixer', 'https://hariharimusik.id/wp-content/uploads/2021/09/QX2442USB_P0AL3_Top_B.png'),
(9, 'Piano', 'https://cdn.shopify.com/s/files/1/1369/1865/products/kawai-k-300-pm-48-inch-polished-mahogany-upright-piano-for-sale-in-waukegan-illinois-family-piano-co_360x.jpg?v=1634572763'),
(10, 'Speaker', 'https://hariharimusik.id/wp-content/uploads/2021/08/13149961_800.jpg'),
(11, 'Synthesizer', 'https://www.melodiamusik.com/wp-content/uploads/2016/08/evolver.jpg'),
(12, 'Ukulele', 'https://cdn.shopify.com/s/files/1/1369/1865/products/kala-ka-smhc-solid-mahogany-concert-ukulele-for-sale-waukegan-il-family-piano_3_360x.jpg?v=1588387163'),
(13, 'Violin', 'https://images.tokopedia.net/img/cache/900/product-1/2020/8/26/1128348734/1128348734_ee64d67e-b71a-43f0-9d9e-495145ba4276_1279_1279.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
