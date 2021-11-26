-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 09:31 AM
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

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name`, `value`) VALUES
(1, 'Rosewood', '#65000B'),
(2, 'Mahogany', '#C04000'),
(3, 'Maple', '#780109'),
(4, 'Ebony', '#3C2005'),
(5, 'Sandrift', '#AE9072'),
(6, 'Cocobolo', '#914941'),
(7, 'Skyblue', '#88d0ce'),
(8, 'Dimgray', '#4d5564'),
(9, 'Sienna', '#994f40'),
(10, 'Cherry', '#CF0234'),
(11, 'Sandybrown', '#fac267'),
(12, 'Black', '#000000'),
(13, 'Dark Slate Gray', '#3a3a3c'),
(14, 'White', '#ffffff'),
(15, 'Red', '#ff0000'),
(16, 'Teal', '#035a69'),
(17, 'Maroon', '#552125'),
(18, 'Cafe Noir', '#542f24'),
(19, 'Wheat', '#ecd6b4'),
(20, 'Metallic Silver', '#BCC6CC');

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

--
-- Dumping data for table `color_items`
--

INSERT INTO `color_items` (`id`, `id_color`, `items_name`) VALUES
(1, 1, 'Taylor GS Mini-e RW Acoustic Guitar'),
(2, 2, 'Taylor Big Baby Acoustic Guitar'),
(3, 1, 'Taylor GS Mini Acoustic Guitar'),
(4, 2, 'Taylor GS Mini Acoustic Guitar'),
(5, 3, 'Taylor GS Mini Acoustic Guitar'),
(6, 2, 'Taylor Baby Mahogany Acoustic Guitar'),
(7, 4, 'Taylor 210ce Plus Rosewood/Spruce Dreadnought Acoustic Guitar'),
(8, 1, 'Taylor 210ce Plus Rosewood/Spruce Dreadnought Acoustic Guitar'),
(9, 1, 'Taylor 814ce LTD V-Class Cocobolo/Lutz Grand Auditorium Acoustic Guitar'),
(10, 5, 'Taylor 814ce LTD V-Class Cocobolo/Lutz Grand Auditorium Acoustic Guitar'),
(11, 6, 'Taylor 814ce LTD V-Class Cocobolo/Lutz Grand Auditorium Acoustic Guitar'),
(12, 7, 'D Angelico Deluxe DC Semi-Hollow Electric Guitar w/Stairstep Tailpiece'),
(13, 8, 'D Angelico Deluxe DC Semi-Hollow Electric Guitar w/Stairstep Tailpiece'),
(14, 9, 'D Angelico Deluxe DC Semi-Hollow Electric Guitar w/Stairstep Tailpiece'),
(15, 10, 'D Angelico Excel 175 Hollow-Body Electric Guitar w/Bigsby'),
(16, 11, 'D Angelico Excel 175 Hollow-Body Electric Guitar w/Bigsby'),
(17, 12, 'D Angelico Excel 175 Hollow-Body Electric Guitar w/Bigsby'),
(18, 10, 'D Angelico Excel DC Semi-Hollow Electric Guitar w/Stairstep Tailpiece'),
(19, 11, 'D Angelico Excel DC Semi-Hollow Electric Guitar w/Stairstep Tailpiece'),
(20, 12, 'D Angelico Excel DC Semi-Hollow Electric Guitar w/Stairstep Tailpiece'),
(21, 12, 'Yamaha PSR-E373 61-key Portable Keyboard'),
(22, 12, 'Yamaha PSR-E273 61-key Portable Arranger'),
(23, 13, 'Casio CT-X5000 61-Key Portable Keyboard'),
(24, 13, 'Casio CT-X800 61-Key Portable Keyboard'),
(25, 12, 'Casio Casiotone CT-S200 61-key Portable Keyboard'),
(26, 14, 'Casio Casiotone CT-S200 61-key Portable Keyboard'),
(27, 15, 'Casio Casiotone CT-S200 61-key Portable Keyboard'),
(28, 13, 'KORG Pa300 61-Key Arranger Keyboard'),
(29, 13, 'KORG EK-50 61-keys Entertainer Keyboard'),
(30, 14, 'Mackie EM-USB White Limited Condenser Microphone'),
(31, 13, 'Mackie EM-USB Condenser Microphone'),
(32, 12, 'Behringer SL 85S Dynamic Cardioid Handheld Microphone'),
(33, 12, 'Behringer ULM300USB Wireless USB Microphone'),
(34, 12, 'Behringer ULM300MIC Wireless Handheld Microphone System'),
(35, 12, 'IK Multimedia Irig Mic HD 2 - Handheld Microphone'),
(36, 20, 'IK Multimedia iRig Mic HD-A Handheld Digital Microphone'),
(37, 14, 'IK Multimedia iRig Voice Handheld Microphone White'),
(38, 12, 'Behringer SL 84C Dynamic Cardioid Microphone'),
(39, 12, 'Behringer SL 75C Cardioid Dynamic Microphone'),
(40, 12, 'Behringer XM8500 Ultravoice Dynamic Cardioid Vocal Microphone'),
(41, 13, 'Yamaha Drum Electronic DTX-6K2X'),
(42, 13, 'Yamaha Drum Electronic DTX-6KX'),
(43, 17, 'TAMA CL52KRSP-GGP Superstar Classic Exotix 5-Piece Drum Shell Kit Gloss Garnet Lacebark Pine'),
(44, 16, 'TAMA CL52KRS-BAB Superstar Classic Maple 5-Piece Drum Shell Kit Blue Lacquer Burst'),
(45, 18, 'MEINL Percussion CAJ3WN-M Traditional String Cajon Walnut'),
(46, 19, 'MEINL Percussion CAJ2GO-2 Backpacker Cajon Natural'),
(47, 19, 'MEINL Percussion MC1AB-B Mini Cajon'),
(48, 19, 'MEINL Percussion PSC100B Snarecraft Pickup Cajon Baltic Birch Frontplate'),
(49, 19, 'MEINL Percussion JC50AB-B Jam Cajon Baltic Birch');

-- --------------------------------------------------------

--
-- Table structure for table `diskon`
--

DROP TABLE IF EXISTS `diskon`;
CREATE TABLE `diskon` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `value` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diskon`
--

INSERT INTO `diskon` (`id`, `name`, `value`) VALUES
(1, 'Diskon 12-12', 0.6);

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
('Amahi UK550C Classic Series Flamed Maple Concert Ukulele', 1, 12, 2553435, 'https://cdn.shopify.com/s/files/1/1369/1865/products/amahi-uk550c-classic-series-flamed-maple-concert-ukulele-for-sale-waukegan-il-family-piano_2_360x.png?v=1588379861', 'UK550C Flamed Maple Concert Ukulele Amahi memiliki nada yang sangat jelas dan bernyanyi! Menampilkan fingerboard dan bridge rosewood, tuner die-cast, ikatan kotak-kotak hitam dan putih yang halus. UK550C adalah uke yang ditata apik dengan fingerboard dan bridge kenari, mesin tuning die cast, senar Aquila Nylgut, dan sentuhan akhir satin. Itu juga dilengkapi dengan tas pertunjukan Amahi yang empuk, tuner, strap, dan pick -- semuanya tanpa biaya tambahan!', 0, NULL),
('Amahi UK770C Classic Series Spalted Maple Concert Ukulele', 1, 12, 2410785, 'https://cdn.shopify.com/s/files/1/1369/1865/products/amahi-uk770c-classic-series-spalted-maple-concert-ukulele-for-sale-waukegan-il-family-piano_1_360x.png?v=1588379974', 'Amahi UK770C Classic Series Spalted Maple Concert Ukulele dibangun dari maple spalted, dan terkenal dengan kualitas dan nilainya yang bagus. Maple spalted membuat tonewood yang indah dengan nada rendah yang dalam dan nada tinggi yang manis, menawarkan suara ukulele tradisional yang cerah namun seimbang. Penampilannya memiliki pola marmer-esque yang hampir gelap dengan getaran tua, dan dibingkai dengan bagian atas dan belakang kulit kura-kura yang berkelas. UK770C adalah ukulele yang unik dan menarik perhatian dengan fingerboard dan bridge rosewood, mesin tuning die cast, senar Aquila Nylgut, dan sentuhan akhir satin. Itu juga dilengkapi dengan tas pertunjukan Amahi yang empuk, tuner, strap, dan pick.', 0, NULL),
('Amahi UK990C Classic Series Ebony Concert Ukulele', 1, 12, 2268135, 'https://cdn.shopify.com/s/files/1/1369/1865/products/UK990-2015-2_360x.png?v=1569147754', 'Sempurna untuk pemain pemula dan berpengalaman, ukulele UK990C ukuran konser Amahi menawarkan kualitas dan penampilan nada premium. Bagian atas, belakang, dan samping kayu eboni yang dilaminasi memberi UK990C perpaduan kayu yang indah secara estetis, dan bangunan yang terjamin dan kokoh yang akan bertahan bahkan di tangan strummer paling "bersemangat". Ini, ditambah dengan nada penuh yang dapat dibedakan dan rentang dinamis yang lebar, menjadikan ukulele kayu ebony ini pilihan yang fantastis untuk semua pemain yang benar-benar ingin menonjol.', 0, NULL),
('AVANTONE PRO MixCubes Active Black Mono Monitor Speaker', 2, 10, 6187500, 'https://hariharimusik.id/wp-content/uploads/2021/01/pro-mixcubes-active-mono.jpg', 'desc', 0, NULL),
('BEHRINGER MS40 Digital 40-Watt Stereo Near Field Monitor speaker', 3, 8, 3400000, 'https://hariharimusik.id/wp-content/uploads/2021/08/24502027_e3893f9b-a6e6-4939-814c-0711b34de5ba_1000_1000-600x600.jpg', 'desc', 0, NULL),
('BEHRINGER PMP550M 500-Watt 5-Channel Powered Mixer', 3, 8, 4550000, 'https://hariharimusik.id/wp-content/uploads/2021/08/e8c2fe67-7b09-4e52-8c6f-fbd6af60d1ca-600x600.jpg', 'desc', 0, NULL),
('BEHRINGER QX2442USB 24-INPUT 4/2-BUS MIXER WITH XENYX MIC PREAMPS', 3, 8, 8420000, 'https://hariharimusik.id/wp-content/uploads/2021/09/QX2442USB_P0AL3_Top_B.png', 'desc', 0, NULL),
('Behringer SL 75C Cardioid Dynamic Microphone', 3, 7, 292000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-E7S00_2FB03-000-E7S00_1622458930560_735x735.jpg?v=1628178110', 'Mikrofon dinamis Cardioid SL 75C mewujudkan impian para penggila rekaman! Mikrofon berkualitas profesional ini dirancang untuk menangkap suara dengan sensitivitas dan akurasi yang luar biasa. Dengan pola pickup Cardioid untuk pemisahan sumber suara yang sangat baik dan penolakan umpan balik, mikrofon respons frekuensi ultra lebar ini adalah pilihan yang sangat baik untuk skenario pertunjukan atau perekaman apa pun – dan cukup tangguh untuk menempuh jarak! SL 75C hadir dengan sistem shock mount terintegrasi, adaptor dudukan mikrofon, dan tas jinjing tahan benturan, SL 75C adalah satu-satunya mikrofon yang Anda perlukan.\n		\n		Features:\n\nDynamic cardioid microphone\nSmooth mid-frequency presence rises for excellent voice, drums and guitars\nUltra-wide frequency response for brilliant and transparent sound\nExtremely high signal output lets your performance cut through\nCardioid characteristic minimizes background noise and feedback\nIntegrated spherical wind and pop noise filter\nShock mount sy', 0, NULL),
('Behringer SL 84C Dynamic Cardioid Microphone', 3, 7, 180000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-E7R00_2FB03-000-E7R00_1622458610580_735x735.jpg?v=1628178117', 'Beberapa hal lebih penting untuk merekam atau pertunjukan langsung daripada mikrofon dinamis. Tanyakan teknisi suara mana pun dan mereka akan memberi tahu Anda untuk menyimpan sebanyak mungkin. Behringer menghadirkan mikrofon dinamis SL 84C yang terdengar luar biasa dengan casing tahan benturan, dengan adaptor dudukan dan klip mikrofon sehingga Anda siap menangkap suara dalam resolusi cemerlang.\n		\n		Features:\n\nDynamic vocal microphone with smooth mid-frequency presence rises for excellent voice projection\nUltra-wide frequency response for brilliant and transparent sound\nExtremely high signal output lets your voice cut through\nCardioid characteristic minimizes background noise and feedback\nIntegrated spherical wind and pop noise filter\nShock mount system to cut down handling noise\n3-pin XLR connector for highest signal integrity\nMicrophone stand adapter and carrying case included\nDesigned and engineered in Germany', 0, NULL),
('Behringer SL 85S Dynamic Cardioid Handheld Microphone', 3, 7, 292000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-E7Q00_2FB03-000-E7Q00_1622457994050_735x735.jpg?v=1628177143', 'Mikrofon dinamis Cardioid SL 85S adalah impian para pemain dan penggemar rekaman rumah yang menjadi kenyataan! Mikrofon berkualitas profesional ini dirancang untuk menangkap suara Anda dengan sensitivitas dan akurasi yang luar biasa. Dengan pola pickup Cardioid untuk pemisahan sumber suara yang sangat baik dan penolakan umpan balik, mikrofon respons frekuensi ultra lebar ini adalah pilihan yang sangat baik untuk skenario pertunjukan atau perekaman apa pun – dan cukup tangguh untuk menempuh jarak! Dengan sistem shock mount terintegrasi dan spherical wind and pop noise filter dan dikemas dengan adaptor dudukan mikrofon dan tas jinjing tahan benturan, SL 85S adalah satu-satunya mikrofon yang Anda perlukan.\n		\n		Features:\n\nDynamic vocal microphone with On/Off Switch\nSmooth mid-frequency presence rises for excellent voice projection\nUltra-wide frequency response for brilliant and transparent sound\nExtremely high signal output lets your voice cut through\nCardioid characteristic minimizes bac', 0, NULL),
('Behringer ULM300MIC Wireless Handheld Microphone System', 3, 7, 1435000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-BQX01_2FB03-000-BQX01_1622086310540_735x735.jpg?v=1632040827', 'Sekali lagi kami memecahkan penghalang keterjangkauan – dengan Sistem Mikrofon Nirkabel ULTRALINK ULM300MIC baru kami, yang mencakup 1 mikrofon genggam ULM300M berkualitas tinggi kami – dan penerima saluran tunggal ULM300RS yang sama-sama mengesankan. Sekarang Anda bebas mengerjakan ruangan sesuka hati Anda, tanpa kerumitan dan pembatasan kabel di bawah kaki. Suara berkualitas tinggi disediakan oleh kapsul mikrofon yang dirancang khusus yang dioptimalkan untuk kinerja vokal, dan pemancar internal yang beroperasi dalam rentang 2,4 GHz bebas lisensi.\n		\n		Features:\n\nPackage of ULM300M wireless handheld microphone and ULM300RS single-channel receiver\nHigh-quality microphone capsule for dedicated vocal applications\nHigh-performance single-channel wireless receiver\nDigital 2.4 GHz wireless connectivity offers superior sound quality\nMaximum range 200 feet / 60 m\nIntegrated volume up and down buttons on handheld microphone\nPanic mute feature on microphone\nReceiver audio output on balanced XLR', 0, NULL),
('Behringer ULM300USB Wireless USB Microphone', 3, 7, 1290000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-BQW00_2FB03-000-BQW00_1622085828420_735x735.jpg?v=1632040829', 'Sekali lagi kami memecahkan penghalang keterjangkauan – dengan Sistem Mikrofon Nirkabel ULTRALINK ULM300USB baru kami. Sekarang Anda bebas mengerjakan ruangan sesuka hati Anda, tanpa kerumitan dan pembatasan kabel di bawah kaki. Suara berkualitas tertinggi disediakan oleh mikrofon genggam dinamis berkat pemancar built-in, yang beroperasi dalam rentang 2,4 GHz bebas lisensi. Penerima ULM khusus tidak hanya terhubung ke port USB komputer PC/Mac Anda untuk merekam langsung ke aplikasi DAW favorit Anda, tetapi juga bekerja dengan berbagai macam mixer BEHRINGER “Siap Nirkabel” dan speaker bertenaga – untuk keserbagunaan tertinggi.\n		\n		Features:\n\nPackage of ULM300M handheld microphone and ULM300D dual-mode USB receiver\nHigh-quality microphone capsule for dedicated vocal applications\nUltra-compact USB receiver with dual mode analog/digital audio interface\nDigital 2.4 GHz wireless connectivity offers superior sound quality\nMaximum range 200 feet / 60 m\nIntegrated volume up and down buttons on', 0, NULL),
('Behringer XM8500 Ultravoice Dynamic Cardioid Vocal Microphone', 3, 7, 300000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FB03-000-12000_2FB03-000-12000_1621754864590_735x735.jpg?v=1628177132', 'Mikrofon dinamis XM8500 adalah impian para pemain dan penggemar rekaman rumah menjadi kenyataan! Mikrofon berkualitas profesional ini dirancang untuk menangkap suara Anda dengan sensitivitas dan akurasi yang luar biasa. Dengan pola pickup cardioid untuk pemisahan sumber suara yang sangat baik dan penolakan umpan balik, mikrofon respons frekuensi ultra lebar ini adalah pilihan yang sangat baik untuk skenario pertunjukan atau perekaman apa pun – dan cukup tangguh untuk menempuh jarak! Dengan sistem shock mount terintegrasi dan spherical wind and pop noise filter, dan dikemas dengan adaptor dudukan mikrofon dan tas jinjing tahan benturan, XM8500 mungkin satu-satunya mikrofon yang Anda perlukan.\n		\n		Features:\n\nDynamic vocal microphone with smooth mid-frequency presence rise for excellent voice projection\nUltra-wide frequency response for brilliant and transparent sound\nExtremely high signal output lets your voice cut through\nCardioid characteristic minimizes background noise and feedback\n', 0, NULL),
('Cannon Percussion Jamm Jr.3 PC. Drum Set', 4, 4, 3415597, 'https://cdn.shopify.com/s/files/1/0494/8113/products/JAMMJr3pc_blue_01.jpg?v=1606597735', 'desc', 0, NULL),
('Cannon Percussion Jamm Jr.5 PC. Drum Set', 4, 4, 4255442, 'https://cdn.shopify.com/s/files/1/0494/8113/products/JAMM_JR_5_PC_WINE_RED.jpg?v=1606598682', 'desc', 0, NULL),
('Casio Casiotone CT-S200 61-key Portable Keyboard', 5, 6, 1990000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FC32-CT-S200BK_2FC32-CT-S200BK_1622185877480.jpg?v=1623294341', 'Dengan CT-S200 Anda dapat menikmati musik kapanpun dan dimanapun Anda suka. Ukurannya yang ringkas, 930 mm x 256 mm x 73 mm, volumenya 30% lebih kecil daripada model CTK-2500 dan CTK-2550, dan baterai alkaline dapat bertahan sekitar 16 jam*. Dengan pegangan di bagian atas keyboard dan berat hanya 3,3 kg, sangat mudah untuk membawanya. Desainnya menggabungkan tepi dan sudut yang membulat, menjadikannya portabel dengan aman.\n		\n		Specifications:\n\nKeyboard: 61 standard size keys \nMaximum Polyphony: 48\nTones: 400 built-in tones\nDigital Effects: Reverb 1 - 10, off\nMetronome: 0 - 16 (beat per measure), 20 - 255 Tempo range\nSong Bank: 60 Built-in songs\nRhythms/Patterns: 77 built-in patterns\nAPP Function: Chordana play \nMIDI: 16-timbre received, GM Level 1 Standard\nInput/Output Terminals: Headphones output (3.5 mm mini stereo jack), Audio In 3.5 mm mini stereo jack, micro USB B, Sustain jack input\nPower Jack: 9.5 V DC\nPower Supply: 2-Way Power 6 AA-size alkaline batteries or AA-size rechargeab', 0, NULL),
('Casio Casiotone CTS300 Portable 61-Key Touch Responsive Digital Piano', 5, 9, 2139750, 'https://cf.shopee.co.id/file/98617fcbb2eecadb846eaaf3b4cf213e', 'Sama seperti pendahulunya, Casiotone CT-S300 dari Casio adalah keyboard portabel tingkat pemula yang penuh fitur. Ini memiliki semua fungsi yang mudah digunakan yang sama seperti CT-S200, dan sekarang termasuk tombol sentuh-responsif dan roda pitch bend. Dengan pegangan di bagian atas keyboard dan berat di bawah 8 lbs, CT-S300 tidak bisa lebih mudah dibawa. Desainnya menggabungkan tepi dan sudut yang membulat, membuatnya portabel dengan aman. Plus Anda dapat memasukkan baterai AA 6x (dijual terpisah), dan mendapatkan sekitar 16 jam masa pakai baterai saat bepergian. CT-S300 menampilkan layar LCD yang mudah dibaca, dan kontrol sederhana. Temukan suara favorit Anda dengan menggulirnya dengan tombol putar, simpan dan panggil kembali pengaturan favorit Anda dengan cepat menggunakan tombol Pengaturan Saya, dan kembali dengan mudah ke layar awal dengan tombol Beranda. Berkat antarmuka intuitifnya, tidak pernah ada kebingungan atau frustrasi dengan CT-S300.', 0, NULL),
('Casio CDPS350BK Black Portable Digital Piano', 5, 9, 7845750, 'https://cdn.shopify.com/s/files/1/1369/1865/products/casio-cdp-s350-portable-digital-piano-for-sale-waukegan-il-family-piano_8_360de506-0d2d-412c-be63-f3e2af324042_360x.jpg?v=1633629619', 'Didesain ulang dari awal, CDP-S350 menghadirkan suara dan nuansa piano yang luar biasa, plus lebih banyak lagi. Ini mencakup banyak koleksi Nada dan Irama yang menakjubkan ditambah alat penulisan lagu untuk menghidupkan musik Anda. Keyboard hammer action dengan timbangan dan bobot yang dirancang baru menghadirkan respons grand piano tradisional, dengan tekstur kunci gading dan ebony yang disimulasikan.', 0, NULL),
('Casio Celviano GP400BK Satin Black Digital Grand Hybrid', 5, 9, 50123175, 'https://cdn.shopify.com/s/files/1/1369/1865/products/celviano_360x.jpg?v=1633621276', 'Dengan bentuknya yang indah yang membangkitkan kesan martabat dan stabilitas dan ketinggian keseluruhannya setara dengan grand piano, GP400BK memberikan sensasi dan perspektif visual kepada pianis saat tampil di grand piano. Perhatian yang ketat terhadap detail, seperti pemasangan dudukan musik yang lebar dan tepat serta konstruksi dengan kaki yang tebal dan komponen lainnya, menambah kilau pada nilainya. CELVIANO Grand Hybrid mereproduksi bahkan nuansa halus dari piano paling dihormati di dunia. Tiga piano yang berasal dari Berlin, Hamburg dan Wina dipilih untuk proyek ini. CASIO telah dengan susah payah meneliti dan menganalisis karakteristik unik dari setiap piano. CELVIANO Grand Hybrid menghadirkan suara brilian dari piano-piano ini yang direproduksi dengan teknologi canggih CASIO. Di ujung jari Anda adalah pengalaman memiliki dan memainkan tiga piano terbaik di dunia.', 0, NULL),
('Casio CT-X5000 61-Key Portable Keyboard', 5, 6, 6067000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FC32-CT-X5000_2FC32-CT-X5000_1622175245030.jpg?v=1631182662', 'Seri CT-X dilengkapi dengan Sumber Suara AiX, yang dapat menghasilkan berbagai kualitas suara dari nada bass yang kuat hingga nada tinggi yang jernih. Kekuatan komputasi yang luar biasa dari LSI performa tinggi mereproduksi pesona alami suara instrumen akustik, seperti perubahan nada yang menyenangkan saat tuts piano dipukul, sensasi performa drum, atau senar yang melonjak. Prosesor sinyal digital berkecepatan tinggi juga diterapkan untuk setiap jenis suara, seperti melodi, backing drum dan bass, atau organ. Bahkan ansambel standar untuk keyboard memberikan suara yang berbeda untuk setiap instrumen untuk kinerja yang ekspresif.\n		Specifications:\n\nKeyboard: 61 standard size keys\nTouch Response: Sensitivity 3 types, Off\nMaximum Polyphony: 64 notes (32 for certain tones)\nTonesPreset Tones: 800, User Tones: 100, Other: Layer, split (configurable split point, lower point, chord point settings)\nSystem Effects: Reverb: 32 types, Off, Chorus: 16 types, Tones, Delay: 20 types, Tones, DSP: 100 t', 0, NULL),
('Casio CT-X800 61-Key Portable Keyboard', 5, 6, 3224800, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FC32-CT-X800_2FC32-CT-X800_1622174202860.jpg?v=1623321949', 'Seri CT-X dilengkapi dengan Sumber Suara AiX, yang dapat menghasilkan berbagai kualitas suara dari nada bass yang kuat hingga nada tinggi yang jernih. Kekuatan komputasi yang luar biasa dari LSI performa tinggi mereproduksi pesona alami suara instrumen akustik, seperti perubahan nada yang menyenangkan saat tuts piano dipukul, sensasi performa drum, atau senar yang melonjak. Prosesor sinyal digital berkecepatan tinggi juga diterapkan untuk setiap jenis suara, seperti melodi, backing drum dan bass, atau organ. Bahkan ansambel standar untuk keyboard memberikan suara yang berbeda untuk setiap instrumen untuk kinerja yang ekspresif.\n		\n		Specifications:\n\nKeyboard: 61 standard size keys\nTouch Response: Sensitivity 3 types, Off\nMaximum Polyphony: 48 notes (24 for certain tones)\nBuilt-in Tones: 600\nFunctions: Layer, Split, Piano/Organ button\nDigital Effect: 1 to 20 Reverb and 1 to 10 Chorus\nMetronome: 0 to 9 Beats per Measure, 20 to 255 Tempo Range\nSong Bank: Demo Song: 1, Built-in Songs: 160,', 0, NULL),
('Casio Privia PX560BE 88-Key Black Portable Digital Piano', 5, 9, 1854435735, 'https://cdn.shopify.com/s/files/1/1369/1865/products/casio-privia-px-560-88-key-portable-digital-piano-for-sale-in-waukegan-illinois-family-piano-co_1_32656dcd-bc25-4973-a634-50e3d5c2f0a3_360x.jpg?v=1633629624', 'Jika Anda berada di pasar untuk piano panggung dengan jiwa workstation synth, periksa Casio PX-560. Memperkenalkan Piano Digital Privia Pro PX-560, piano panggung yang berbeda dari yang lain. Dari tampilan pertama pada casing birunya yang mencolok, Anda akan tahu bahwa ini berbeda. Ini membanggakan beberapa teknologi sonik Casio yang paling mengesankan, dalam instrumen yang mudah digunakan yang terdengar sehebat kelihatannya. Untuk pemain piano yang ingin bermain lebih dalam, PX-560 menghadirkan serangkaian fitur lengkap yang akan membawa musik Anda lebih jauh dari sebelumnya. Kami di Family Piano Co secara khusus mengagumi keyboard ini karena mengemas begitu banyak fitur hebat (layar sentuh berwarna, ratusan suara, speaker yang kuat, opsi penyesuaian suara yang hampir tak terbatas, dll.) dalam keyboard yang sangat bergaya yang dimainkan dengan sangat baik! Nuansa tombol/aksi sendiri berdiri di atas sebagian besar keyboard dengan harga yang sama, artinya ini adalah instrumen yang dapat Anda gunakan berdua sebagai workstation synth, piano panggung pertunjukan, dan sebagai keyboard solid Anda dapat membuat kemajuan nyata pada teknik Anda dengan , semua untuk harga yang fantastis!', 0, NULL),
('D Angelico Deluxe DC Semi-Hollow Electric Guitar w/Stairstep Tailpiece', 6, 5, 29000000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/D41-DADDCMCHGTCB_1543288413158_735x735.jpg?v=1553151140', 'Dibuat dengan sangat ahli, Deluxe DC adalah semi-hollow double-cutaway yang menonjol. Menampilkan pickup DA-59 baru yang dirancang bersama dengan Seymour Duncan, sakelar sakelar enam arah, dan fretwire Jescar baru, DC Deluxe dilengkapi dengan peningkatan. Deluxe DC dengan lebar 16 inci memiliki blok tengah penuh untuk melawan umpan balik dan memberikan kecerahan. Nadanya jernih dan penuh—dan dengan mur grafit, stop-bar tailpiece, dan tuner pengunci, DC Deluxe menawarkan penyetelan sempurna\n\nSpecifications:\n\nBody Shape: Double Cutaway\nBody Material: Laminated Flame Maple\nBody Colour: Matte Cherry\nBody Finish: Satin\nFretboard Material: Rosewood\nFretboard Radius: 16\"\nScale Length: 24.75\"\nNo. of Frets: 22\nFretboard Inlays: Mother of Pearl\nPickup: USA Seymour Duncan DA-59 Humbucker (Neck & Bridge)\nBridge: Gold Tune-O-Matic with D\'Angelico Stairstep Tailpiece\nPickguard: Tortoise Scalini (5-Ply)\nStrings: D\'Angelico Electrozinc 10\'s (10-46)\nTuning Machines: Grover Super Rotomatic Locking\nHardw', 0, NULL),
('D Angelico Excel 175 Hollow-Body Electric Guitar w/Bigsby', 6, 5, 27000000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FD41-DAE175NATCB_2FD41-DAE175NATCB_1573185605980_735x735.jpg?v=1593530951', 'Diikat dengan vibrato Bigsby dan pickup Kent Armstrong output tinggi, Excel 175 adalah archtop yang dibuat untuk rock modern. Bodinya dengan lebar 16 inci yang sepenuhnya berongga sangat seimbang dan menghasilkan nada yang kuat. 175 dipasangkan dengan chrome Bigsby yang menakjubkan, memungkinkan shimmer berkelas dan tikungan melengkung - semuanya sementara jembatan rolnya menjamin penyetelan yang stabil. Dibuat dengan luar biasa, Excel 175 bergabung dengan jajaran archtops yang dilengkapi vibrato legendaris.', 0, NULL),
('D Angelico Excel DC Semi-Hollow Electric Guitar w/Stairstep Tailpiece', 6, 5, 26000000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/D41-DAEDCCHRGTCB_1524541194408_735x735.jpg?v=1593530856', 'D\'Angelico Excel DC adalah gitar semi-hollow double-cutaway yang dibuat untuk performa.\n\nKlasik modern dengan potongan yang dalam dan nyaman, bodi selebar 16 inci, dan profil leher bentuk-C yang ramping, DC sangat bisa dimainkan. Humbucker Kent Armstrong Vintage 57-nya menawarkan nada bersih murni, dan blok tengah penuhnya menghilangkan umpan balik volume tinggi. DC menawarkan rentang nada yang mengesankan, mulai dari low-end hingga high-end yang tajam.\n\nTailpiece khas Stairstep menghasilkan kekokohan, resonansi maksimum, ketegangan string yang nyaman, dan merupakan bagian dari estetika Art-Deco legendaris D\'Angelico.\n\nSpecifications:\n\nBody Shape: Double Cutaway semi hollow\nBody Material: Laminated Flamed Maple\nBody Colour: Cherry\nBody Finish: Gloss\nFretboard Material : Rosewood\nScale Length: 24 3/4\"\nNo. of Frets: 22\nInlays: Mother of Pearl Split Block\nPickup: Kent Armstrong Vintage 57 humbuckers\nBridge: Tunomatic with Stairstep tailpiece\nPickguard: Tortoiseshell\nTuners: Grover Imperia', 0, NULL),
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
('Fiddlerman Left Handed Master Violin Outfit', 12, 13, 14821335, 'https://cdn.shopify.com/s/files/1/2966/4646/products/FM_Lefthanded_Violin_Front_600x.jpg?v=1541696086', 'Master Violin Tangan Kiri Fiddlerman dirancang dari bawah ke atas untuk pemain biola mengatasi cedera, kurangnya mobilitas atau ketangkasan di tangan kiri mereka, dan mereka yang perlu memainkan biola di tangan yang berlawanan. Ini tidak ditujukan untuk pemain biola yang dominan tangan kiri, karena biola secara tradisional dimainkan di bahu kiri terlepas dari tangan mana yang dominan. Sampai saat ini, mereka yang membutuhkan biola "Kiri" harus melalui proses retro-fitting biola tradisional yang menjadi agak mahal. Perubahan pada biola tradisional termasuk memindahkan bar bass, memotong jembatan baru, mengatur ulang soundpost, memindahkan fine tuner, mendapatkan sandaran dagu terbalik yang dibuat khusus, mengisi dan mengebor ulang lubang pasak.', 0, NULL),
('GENELEC S360AW SAM TWO WAY STUDIO MONITOR PAIR -WHITE', 13, 10, 148700000, 'https://hariharimusik.id/wp-content/uploads/2020/12/S360AW-1-600x600.jpg', 'desc', 0, NULL),
('Gretsch Catalina Club Drums', 14, 4, 10674045, 'https://cdn.shopify.com/s/files/1/0494/8113/products/CT1-J404-GCB.png?v=1605558729', 'desc', 0, NULL),
('Hailun HG-178 5\'10 Polished Ebony Grand Piano', 15, 9, 430093800, 'https://cdn.shopify.com/s/files/1/1369/1865/products/hailun-hg-178-5-foot-10-inch-polished-ebony-grand-piano-for-sale-in-waukegan-illinois-family-piano-co_8a830dae-324f-4432-8b42-9244fa9a0767_360x.jpg?v=1634468345', 'HG 178 Hailun adalah salah satu piano terlaris di dunia untuk alasan yang baik, karena dirancang untuk orang yang mencari pengalaman bermain tingkat atas dengan harga yang luar biasa masuk akal. Ini menawarkan desain yang mengesankan dan mekanisme kinerja yang luar biasa dibandingkan dengan rekan-rekannya di Asia. Hailun adalah salah satu piano Asia yang paling dihormati yang diproduksi saat ini dan dinilai dengan Steinway dan Yamaha sebagai merek paling berharga di Amerika Serikat oleh Musical Instrument Review, sebuah publikasi industri yang sangat dihormati. Apa yang membedakannya adalah kombinasi dari desain kualitas terbaik, bahan kelas satu dan kualitas kerajinan tangan ahli.', 0, NULL),
('IK Multimedia iLoud Micro Monitor White', 16, 10, 7717500, 'https://hariharimusik.id/wp-content/uploads/2021/08/13149961_800.jpg', 'desc', 0, NULL),
('IK Multimedia Irig Mic HD 2 - Handheld Microphone', 16, 7, 2090000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/I10-IP-IRIG-MICHD2-IN_0.51563700_201519812474_735x735.jpg?v=1619877411', 'iRig Mic HD 2 adalah pembaruan dari iRig Mic HD yang sangat dari IK Multimedia dan didesain untuk memberikan suara beresolusi tinggi ke tangan anda, agar anda dapat menciptakan konten profesional di mana saja anda berada pada perangkat apapun. Ini adalah satu-satunya mikrofon condenser digital genggam untuk iPhone, iPad dan Mac/PC. Dengan konverter 24-bit berkualitas tinggi dengan sample rate hingga 96kHz, low noise preamp, gold-sputtered electret condenser capsule berkualitas dan output headphone bawaan dengan kendali volume untuk pengaturan secara langsung, iRig Mic HD 2 menawarkan kualitas dan fleksibilitas terbaik dengan harga yang terjangkau. Desain mungilnya yang nyaman menjadikannya sesuai untuk penyanyi, musisi, pewawancara, broadcaster, presenter, podcaster, dan vlogger untuk situasi yang beragam.', 0, NULL),
('IK Multimedia iRig Mic HD-A Handheld Digital Microphone', 16, 7, 2090000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/I10-IP-IRIG-MICHDA-SAM_001_735x735.jpg?v=1554804369', 'Perekam genggam kualitas pro telah tiba untuk perangkat Andriod! IK Multimedia iRig Mic memberi pengalaman plug-in-and-play yang mudah pada perekam genggam perangkat Andriod, seperti Amplitube iRig padagitar. Penyanyi/penulis lagy, sound designer, jurnalis, atau bidang lainnya dapat memanfaatkan solusi perekam mobile ini, iRig Mic tidak diragukan lagi akan menjadi alat yang berguna. iRig Mic bahkan menyertakan aplikasi rekaman IK secara cuma-cuma. Hubungkan saja iRig Mic dengan ponsel favorit anda, jalankan aplikasinya, selesai!', 0, NULL),
('IK Multimedia iRig Voice Handheld Microphone White', 16, 7, 730000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FI10-IP-IRIG-MICVOW-AS_2FI10-IP-IRIG-MICVOW-AS_1573715026570_735x735.jpg?v=1578023858', 'iRig Voice adalah mikrofon vocal genggam yang fun dan penuh warna yang dioptimalkan untuk menghasilkan kualitas audio yang luar biasa. Ia adalah rekan terbaik untuk aplikasi pembuat musik dan karaoke favorit anda - hubungkan saja ke perangkat anda lalu mulai bernyanyi. iRig Voice menyertakan desain ergonomis yang memberi kenyamanan penggunaan selama berjam-jam, dan bentuknya sesuai dengan kebanyakan stand clip mikrofon standar pada umumnya yang digunakan di atas panggung. iRig Voice dioptimalkan untuk reproduksi jangkauan frekuensi vokal, memanfaatkan pola cardioid untuk pickup voice jarak dekat yang meminimalisir feedback ketika digunakan dengan sistem speaker. Menyertakan on/off slide switch untuk membisukan suara yang tak diinginkan dengan cepat dan kabel yang kokoh, performa yang konsisten pada performa yang menggunakan energi besar. Hadir dalam warna putih.', 0, NULL),
('Kala KA-EBY-T-2006 Striped Ebony Tenor Ukulele', 17, 12, 2696085, 'https://cdn.shopify.com/s/files/1/1369/1865/products/kala-ka-eby-t-striped-ebony-tenor-ukulele-for-sale-waukegan-il-family-piano_4_360x.jpg?v=1633618683', 'Garis Ebony memiliki tubuh coklat tua dengan garis coklat kemerahan, selesai dalam satin untuk tampilan alami. Roset dan ikatan Maple berwarna terang menciptakan kontras yang bagus dengan bodi Ebony. Panjang Skala: 16,875 inci, Panjang Instrumen Keseluruhan: 25,75 inci, Panjang Badan: 11,75 inci, Jumlah Fret: 18, Lebar di Atas Pertarungan: 7,0 inci, Lebar di Bawah Pertarungan: 9,3125 inci, Lebar di Pinggang: 5,625 inci, Kedalaman Tubuh : 3,125 inci, Lebar Fingerboard pada Nut: 1,4375 inci, Lebar Fingerboard pada sambungan leher/tubuh: 1,8125 inci', 0, NULL),
('Kala KA-SMHC Solid Mahogany Concert Ukulele', 17, 12, 3124035, 'https://cdn.shopify.com/s/files/1/1369/1865/products/kala-ka-smhc-solid-mahogany-concert-ukulele-for-sale-waukegan-il-family-piano_3_360x.jpg?v=1588387163', 'Konser mahoni solid dari perusahaan Kala ini berpola setelah ukulele konser mahoni Martin klasik. Kala benar-benar melakukan pekerjaan yang sangat baik dengan lini SMH ini. Konser ini memiliki nada klasik yang sangat hangat yang menyenangkan telinga. Mahoni terus digunakan meskipun lebih sulit ditemukan dan lebih mahal. Ini adalah kayu yang telah digunakan untuk instrumen senar selama satu abad terakhir karena memiliki kualitas kayu lunak dan keras dengan karakter sonik yang sangat baik. SMHC tidak hanya terdengar bagus, tetapi juga terlihat bagus! Binding sangat tepat diarahkan, kayu berkualitas dengan konstruksi bersih, dan desain dan perhiasan berselera tinggi.', 0, NULL),
('Kawai 506N 44.5\" Institutional Upright Piano', 18, 9, 75850875, 'https://cdn.shopify.com/s/files/1/1369/1865/products/kawai-506n-satin-ebony-institutional-upright-piano-for-sale-waukegan-il-family-piano_0049614d-29d7-436e-95e0-af0bbbe596b9_360x.jpg?v=1633629701', 'Piano Tegak Institusional 506N Kawai dirancang khusus untuk mereka yang membutuhkan kualitas tinggi dan daya tahan dalam sebuah instrumen, tanpa label harga premium. Instrumen ini memiliki tiga elemen kunci dari piano yang bagus: 1) rakitan belakang yang tahan lama dengan 5 tiang belakang yang dilaminasi, 2) Tindakan Pukulan Langsung Ultra-Responsif eksklusif, dan 3) papan suara luar biasa yang terbuat dari kayu cemara padat. Elemen-elemen ini memastikan daya tahan yang tahan lama, sentuhan yang sangat baik, dan nada yang luar biasa - semuanya dijamin untuk memenuhi kebutuhan pemain mana pun!', 0, NULL),
('Kawai GX-2 BLAK 5\'11 Grand Piano', 18, 9, 528520875, 'https://cdn.shopify.com/s/files/1/1369/1865/products/kawai-gx-2-blk-pe-5-foot-11-inch-polished-ebony-grand-piano-for-sale-in-waukegan-illinois-family-piano-co_76b74f81-0d69-4054-bc6d-a728f917a9c1_360x.jpg?v=1633618229', 'Pemenang Penghargaan Keunggulan Produk 2017 dari Majalah Music Inc., GX-2 BLAK Classic Salon Grand menggabungkan kehadiran grand klasik yang megah dengan kejernihan nada yang indah yang tak tertandingi oleh piano lain di kelasnya. Dengan sejarah pengakuan internasional yang kaya, GX-2 adalah pilihan populer untuk rumah, sekolah, gereja, dan studio pengajaran.Menampilkan Aksi Milenium III eksklusif dengan komposit ABS-Karbon, tuts panjang yang terbuat dari cemara padat, dan permukaan tuts NEOTEX milik Kawai yang mensimulasikan gading dan kayu hitam alami -- GX-2 menawarkan kombinasi sempurna antara presisi dan nuansa yang akan menginspirasi ekspresi seni musik yang paling bersemangat.', 0, NULL),
('Kawai K-300 48\" Professional Upright Piano', 18, 9, 166098375, 'https://cdn.shopify.com/s/files/1/1369/1865/products/kawai-k-300-pm-48-inch-polished-mahogany-upright-piano-for-sale-in-waukegan-illinois-family-piano-co_360x.jpg?v=1634572763', 'Piano Tegak Profesional Seri K unggulan Kawai memberikan kombinasi sentuhan, nada, dan stabilitas yang benar-benar luar biasa. Selama beberapa tahun berturut-turut, lagu ini bahkan dinobatkan sebagai “Acoustic Piano Line of the Year” dalam Penghargaan Pilihan Dealer Majalah MMR. Piano tegak 48″ K-300 dibangun di atas warisan pemenang penghargaan dari pendahulunya, K-3. Ini adalah peningkatan yang patut dicatat dari K-200 yang sudah sangat baik, menawarkan senar yang lebih panjang, dan papan suara yang ditingkatkan dan lebih besar dengan rusuk tambahan, bilah kontur, dan tiang belakang. Ini menghasilkan nada yang jauh lebih kaya dan lebih jelas sambil mempertahankan kabinet cantik yang sama dan aksi Milenium III yang ekspresif.', 0, NULL),
('Kawai K15 44\" Continental Console Piano', 18, 9, 75850875, 'https://cdn.shopify.com/s/files/1/1369/1865/products/Kawai-K-15-Ebony-Polish-Piano-for-sale-in-waukegan-illinois-family-piano-co_360x.jpg?v=1634567872', 'K-15 memberikan pengenalan piano tegak yang sangat baik -- dan untuk kualitas Kawai! Menampilkan papan suara spruce yang solid dan tindakan Ultra Responsif yang sangat dihormati dengan bagian-bagian ABS, instrumen bergaya kontinental ini menghasilkan nada yang kaya dan jernih dengan kualitas kinerja untuk menyaingi piano tegak yang jauh lebih besar. K15 menampilkan aksi pukulan langsung Kawai Ultra-Responsive dengan sycamore/maple hammer shank dan 100% wool felt hammer head -- semuanya untuk memberikan sentuhan dan rasa yang luar biasa kepada pemain. Untuk membuat aksi tahan terhadap perubahan iklim dan musiman dalam suhu dan kelembaban, Kawai menggunakan rel aksi aluminium, rel sandaran palu aluminium, dan suku cadang presisi yang terbuat dari Serat Karbon Styran ABS gesekan rendah yang sangat stabil. Seiring waktu, bahan-bahan ini akan membuat sentuhan piano lebih kokoh daripada konstruksi kayu tradisional.', 0, NULL),
('Kawai ST-1 46\" Institutional Upright Piano', 18, 9, 111195675, 'https://cdn.shopify.com/s/files/1/1369/1865/products/Kawai-ST-1-Satin-Cherry-Institutiona-Upright-Piano-for-sale-waukegan-il-family-piano_31b7d885-0e83-4315-bd71-1b4efee5b333_360x.jpg?v=1633629748', 'Kawai ST-1 adalah segalanya yang seharusnya dimiliki oleh piano institusional – sangat kuat, sangat dapat dimainkan, dan dibuat untuk bertahan lama. Ini menggabungkan aksi piano tegak paling canggih di dunia - Milenium III Kawai - dengan banyak peningkatan desain baru yang memungkinkannya mengungguli setiap piano lain di kelasnya. Dibandingkan dengan pendahulunya, UST-9, ST-1 mendapat manfaat dari beberapa peningkatan yang berfokus pada konsumen yang membuatnya lebih pas untuk rumah tanpa mengorbankan apa pun untuk institusi. Yaitu, tiang belakang yang lebih tebal, meja musik 47" yang lebih panjang, tuts yang lebih panjang, sistem penutup fallboard "Soft Fall", dan pedal latihan. Untuk pengaturan yang menuntut kinerja tinggi secara konsisten di tengah kerasnya penggunaan berat, Kawai ST-1 adalah satu-satunya pilihan ideal.', 0, NULL),
('Kinglos 4/4 Blue White Porcelain Colored Violin Solid Wood & Ebony Fittings w/ Shoulder Rest Case Bow Rosin Full Size', 19, 13, 2450000, 'https://ae01.alicdn.com/kf/H807d92063c034795918146d9bb8aee5eF/Kinglos-4-4-Blue-White-Porcelain-Colored-Violin-Solid-Wood-Ebony-Fittings-with-Shoulder-Rest-Case.jpg_Q90.jpg_.webp', 'desc', 0, NULL),
('Kinglos Electric Violin SDDS 1802', 19, 13, 3250000, 'https://images.tokopedia.net/img/cache/900/product-1/2020/8/26/1128348734/1128348734_ee64d67e-b71a-43f0-9d9e-495145ba4276_1279_1279.jpg', 'desc', 0, NULL),
('Kinglos PJA1003', 19, 13, 1600000, 'https://ae01.alicdn.com/kf/HTB1V2JjPFXXXXbDXFXXq6xXFXXXP/Kinglos-PJA1003-Full-Size-4-4-3-4-1-2-Solid-Wood-Student-Violin-Fiddle-for.jpg_Q90.jpg_.webp', 'desc', 0, NULL),
('koda essential Clip On Tuner ONE', 20, 1, 115000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FKDA-07133_2FKDA-07133_1632296632291_735x735.jpg?v=1634297151', 'desc', 0, NULL),
('koda essential Electric Guitar Stand ONE', 20, 1, 170000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FKDA-05403_2FKDA-05403_1607931664100_735x735.jpg?v=1610529026', 'desc', 0, NULL),
('koda essential KIC15 Straight-Straight Instrument Cable 15ft Black', 20, 1, 140000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FKDA-01102_2FKDA-01102_1605687612690_735x735.jpg?v=1605865226', 'desc', 0, NULL),
('koda essential KMC20 Microphone Cable 20ft Black', 20, 1, 185000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FKDA-01107_2FKDA-01107_1605687422040_735x735.jpg?v=1605865289', 'desc', 0, NULL),
('koda essential Music Stand ONE', 20, 1, 230000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FKDA-05402_2FKDA-05402_1607929966330_735x735.jpg?v=1621394724', 'desc', 0, NULL),
('KORG EK-50 61-keys Entertainer Keyboard', 21, 6, 5560000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FK32-EK-50_2FK32-EK-50_1629261556690.jpg?v=1629261569', 'Jika Anda pernah ingin memainkan atau menampilkan lagu favorit Anda, atau memikirkan melodi yang bisa menjadi lagu orisinal, KORG hadir untuk membantu Anda mewujudkan potensi musik Anda. KORG EK-50 adalah keyboard penghibur yang dapat Anda nikmati di semua level musik, dan instrumen yang tumbuh bersama Anda.\n\nPengiring otomatis \"Gaya\" memberikan seluruh backing band Anda saat Anda memainkan keyboard. Dari saat Anda mulai bermain, iringan kaya dibuat untuk menginspirasi Anda untuk menambahkan frasa saat muncul di pikiran. Saat Anda memperoleh keterampilan kinerja, Anda dapat dengan mudah mengakses fungsi yang lebih maju untuk membentuk ide sketsa musik Anda.\nSpecifications:\n\nKeyboard: 61 keys (velocity sensitive), Touch Control: Soft (light), medium (standard), hard (heavier), fixed\nSound Generator: Stereo PCM sound generator\nMaximum Polyphony: 64 voices\nSounds: Over 702 sounds, 41 drum kits (including GM compatible sound sets)\nKeyboard Sets: More than 170 sets\nEffects: Accompaniment pa', 0, NULL),
('KORG Pa300 61-Key Arranger Keyboard', 21, 6, 10800000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FK32-PA300_2FK32-PA300_1625151086550.jpg?v=1625151096', 'Pa300 adalah keyboard terbaru dalam seri KORG Pa dari arranger musik yang diakui secara internasional dan terlaris. Ringkas, murah, dan bertenaga, dengan koleksi suara dan Gaya berkualitas terbaru. Dengan menggunakan Styles bawaan, Anda dapat dengan cepat dan mudah bermain bersama dengan backing band atau bahkan membuat musik Anda sendiri. Pa300 tidak hanya menyenangkan untuk dimainkan kapan pun Anda suka, tetapi juga merupakan cara ideal bagi orang-orang dari segala usia untuk menulis dan menampilkan musik! \n		\n		Features:\n\nEnhanced RX (Real eXperience) sound engine offers improved realism and vivid sound\nMassive internal Factory PCM equivalent to the best-selling Pa600\nElegantly designed and compact plastic cabinet includes a pristine amplification system\n5” TouchView color TFT display\nEasy layout and intuitive graphical interface with Search function for easy retrieval of any musical resource or file\nOver 310 factory Styles, each including 3 Intros/Endings, 4 variations and 4 Fill I', 0, NULL),
('Ludwig Classic Maple Drums', 22, 4, 31296717, 'https://cdn.shopify.com/s/files/1/0494/8113/products/classicmaple1.png?v=1605560740', 'desc', 0, NULL),
('Mackie EM-USB Condenser Microphone', 23, 7, 2437000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FM01-EM-USB_2FM01-EM-USB_1634609845260_735x735.jpg?v=1634609855', 'Dari menjalankan streaming terbaru Anda dengan sempurna hingga memimpin rapat online, Mikrofon USB Seri Element menghadirkan kualitas dan keserbagunaan yang Anda butuhkan untuk membawa suara Anda ke liga besar. Baik Anda berpikir untuk memulai podcast Anda sendiri, menjadi streamer besar berikutnya, atau bahkan membuat musik Anda diperhatikan di media sosial, bagaimana suara Anda penting. Jika Anda ingin mendapatkan suara studio yang apik seperti YouTuber, Podcaster, Twitch streamer favorit Anda, atau siapa pun, Anda telah datang ke tempat yang tepat. Mendapatkan suara berkualitas profesional lebih mudah dari yang Anda kira.\n\nSaat Anda menginginkan fleksibilitas maksimum, Carbon memberikan. Selain konektivitas yang sama seperti EM-USB, Carbon menawarkan 5 pola kutub yang dapat dipilih, semuanya dipermanis oleh sirkuit Onyx Preamp legendaris kami. Gunakan dengan dudukan yang disertakan ramping atau pasang pada boom melalui dudukan sekrup standarnya. \n\nFeatures:\n\nUSB Condenser Microphone', 0, NULL),
('Mackie EM-USB White Limited Condenser Microphone', 23, 7, 2080000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FM01-EM-USB-WHITE-LTD_2FM01-EM-USB-WHITE-LTD_1634631461100_735x735.jpg?v=1634631470', 'Dari menjalankan streaming terbaru Anda dengan sempurna hingga memimpin rapat online, Mikrofon USB Seri Element menghadirkan kualitas dan keserbagunaan yang Anda butuhkan untuk membawa suara Anda ke liga besar. Baik Anda berpikir untuk memulai podcast Anda sendiri, menjadi streamer besar berikutnya, atau bahkan membuat musik Anda diperhatikan di media sosial, bagaimana suara Anda penting. Jika Anda ingin mendapatkan suara studio yang apik seperti YouTuber, Podcaster, Twitch streamer favorit Anda, atau siapa pun, Anda telah datang ke tempat yang tepat. Mendapatkan suara berkualitas profesional lebih mudah dari yang Anda kira. Saat Anda menginginkan fleksibilitas maksimum, Carbon memberikannya. Selain konektivitas yang sama seperti EM-USB, Carbon menawarkan 5 pola kutub yang dapat dipilih, semuanya dipermanis oleh sirkuit Onyx Preamp legendaris kami. Gunakan dengan dudukan yang disertakan ramping atau pasang pada boom melalui dudukan sekrup standarnya.\n		\n		Features:\n\nUSB Condenser Micro', 0, NULL),
('Mackie Onyx 24 24-channel Analog Mixer with Multi-track USB', 23, 8, 18350000, 'https://hariharimusik.id/wp-content/uploads/2021/08/onyx24_model-1-600x480.jpg', 'desc', 0, NULL),
('MEINL Percussion CAJ2GO-2 Backpacker Cajon Natural', 24, 3, 1550000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/R14-CAJ2GO-2_001_735x735.jpg?v=1569679853', 'Konsep Cajon 2 Go dari MEINL memungkinkan Anda untuk membawa cajon Anda bermain ke mana saja. Versi Backapacker adalah instrumen perkusi grab and go yang sempurna. Ringan dan dilengkapi dengan tali bahu empuk ekstra kuat, Anda dapat membawanya seperti ransel dan kemudian hanya duduk dan bermain di mana pun Anda perlu. Badan kayu birch cajon memiliki desain panjang dan sempit untuk bass yang dalam dengan permukaan permainan yang terletak di ujung depan. Jerat internal memberi Anda aksen pemotongan dan gulungan jari yang tajam. Dilengkapi dengan kaki karet untuk menjaganya agar tidak menyentuh tanah untuk resonansi penuh dan untuk memberikan stabilitas, produk ini diakhiri dengan logo MEINL yang diukir dengan laser.', 0, NULL),
('MEINL Percussion CAJ3WN-M Traditional String Cajon Walnut', 24, 3, 2000000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/R14-CAJ3WN-M_001_735x735.jpg?v=1569679853', 'Cajon senar MEINL memiliki sistem senar logam internal dengan dua titik yang dapat disesuaikan untuk menghasilkan efek mendesis saat mengenai pelat depan. Ini membantu untuk mencapai suara yang tajam yang meningkatkan nada bass dan memberikan pukulan sudut lebih cepat. Menyesuaikan ketegangan senar, dengan kunci pas penyetel yang disertakan, membuka berbagai pilihan suara. Pelat depan Walnut yang dikombinasikan dengan bodi resonansi Rubber Wood menghasilkan nada bass yang dalam dan beresonansi dengan sedikit pukulan di belakang nada lembut dan swell dalam di belakang permainan yang lebih keras, merespons seperti kick drum. Instrumen ini sangat ideal untuk pertunjukan akustik yang lebih lembut ketika drum kit lengkap tidak dapat digunakan.', 0, NULL),
('MEINL Percussion JC50AB-B Jam Cajon Baltic Birch', 24, 3, 1050000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FR14-JC50AB-B_2FR14-JC50AB-B_1597922954550_735x735.jpg?v=1597922964', 'MEINL Jam Cajon dengan fixed snare internal sangat sesuai untuk permainan kapan saja. Bentuknya yang mungil berbobot ringan dan mudah dibawa-bawa untuk gig akustik dan drum circle. Dibuat di Eropa dari kayu Baltic birch, Jam Cajon memiliki dorongan low end yang luar biasa ketika dimainkan di bagian tengah dan menghasilkan suara \"slap\" snare drum ketika menabuh bagian sudut atas permukaan permainan. Snare internal ganda disesuaikan pada bagian dalam dari pelat depan untuk respon yang sensitif. Suara ini sangat sesuai untuk menghadirkan fondasi ritmik untuk musik akustik.', 0, NULL),
('MEINL Percussion MC1AB-B Mini Cajon', 24, 3, 800000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/R14-MC1AB-B_1528770692812_735x735.jpg?v=1580266270', 'Dengan semua fitur Cajon ukuran penuh, MEINL Mini-Cajon dengan kabel snare internal sangat fun untuk dimainkan saat sesi jamming kapan saja dan akan terlihat keren di meja kerja atau meja ngopi anda. Miniatur cajon ini terasa nyaman saat dimainkan dan mudah untuk dibawa-bawa. Dengan tinggi 14 cm, versi ini berukuran kira-kira 1/6 dari cajon normal. Dibuat dari kayu birch yang dikenal akan nada musikalnya yang sangat baik (sering digunakan pada konstruksi drum set). Pelat depan tipis sangat responsif pada guliran jari paling mulus sekalipun. Nikmati sesi jamming dadakan di rumah ataupun tempat kerja. Mini-Cajon juga hadiah yang keren untuk diberikan.', 0, NULL),
('MEINL Percussion PSC100B Snarecraft Pickup Cajon Baltic Birch Frontplate', 24, 3, 2300000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FR14-PSC100B_2FR14-PSC100B_1586404284450_735x735.jpg?v=1586404292', 'Ketika dibutuhkan kehadiran amplifikasi ekstra, tingkatkan volume dan suara cajon Anda dengan MEINL Pickup Cajons. Tersedia dari lini Snarecraft dan Woodcraft Professional, cajon ini dilengkapi dengan tiga pickup Piezo, dua suara snare dan lainnya untuk suara bass. Setiap cajon dilengkapi dengan knob tone dan volume sehingga Anda bisa menemukan mix yang sempurna. Port kabel seperempat inci memungkinkan Anda untuk mengirim sinyal melalui amp atau PA system apa saja.', 0, NULL),
('Ming Jiang Zhu 903 Violin', 25, 13, 22667085, 'https://cdn.shopify.com/s/files/1/2966/4646/products/MJZ_903_front_600x.jpg?v=1538070582', 'Biola Ming Jiang Zhu 903 dibuat di bengkel Noble Heart di Guangzhou China. Workshop kelas dunia ini telah memenangkan banyak penghargaan Biola Society of America. Biola ini sangat kuat, jernih, dan umumnya memiliki nada yang sangat gelap. Setiap biola diukir dari maple Asia yang dinyalakan dengan indah untuk bagian belakang dan samping, dan bagian atas spruce dengan lapisan minyak antik yang indah.', 0, NULL),
('Ming Jiang Zhu 907 Violin', 25, 13, 37074735, 'https://cdn.shopify.com/s/files/1/2966/4646/products/mjz_907_front_600x.jpg?v=1538070595', 'Model 907 dibuat dengan kayu nada yang indah dan memproyeksikan nada yang penuh dan kuat. Bagian atas terbuat dari cemara yang dipilih dengan cermat dengan butiran halus. Bagian belakang maple dua bagian dengan nyala api yang kuat dan bersemangat. Ribs dan scroll mirip dengan bagian belakang. Pernis minyak antik yang menarik dengan warna merah-cokelat pada lapisan dasar kuning. Biola ini dibuat dengan tangan di Bengkel Ming Jiang Zhu, tetapi disiapkan dan diuji oleh luthier profesional kami di bengkel Florida kami. Muncul dengan garansi struktural seumur hidup dan penyesuaian seumur hidup gratis.', 0, NULL),
('Moog Minimoog Voyager Old School', 26, 11, 54381800, 'https://www.melodiamusik.com/wp-content/uploads/2016/08/Moog-Minimoog-Voyager-Old-School.jpg', 'desc', 0, NULL),
('NEUMANN KH 80 DSP Monitor Speaker /pair', 27, 10, 23625000, 'https://hariharimusik.id/wp-content/uploads/2021/01/KH-80-DSP-Monitor-Speaker-1.jpg', 'desc', 0, NULL),
('Roland Electric Drum TD-17KVX + Rack MDS-COMPACT', 28, 4, 18380000, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2020/9/22/9fff2e5f-ba79-437a-8a2f-1e2bdef09645.jpg', 'desc', 0, NULL),
('Roland JUNODS61 Velocity-Sensitive 61Key Portable Synthesizer', 28, 11, 12110985, 'https://cdn.shopify.com/s/files/1/1369/1865/products/71YJfUnj3DL._SL1500_360x.jpg?v=1569155551', 'Synth JUNO Roland dikenal di mana-mana karena suaranya yang luar biasa, kemudahan penggunaan, dan nilai yang luar biasa. Dimulai pada tahun 70-an dengan beberapa synthesizer analog paling awal yang diproduksi secara massal, rilis baru lini Juno selalu ditunggu-tunggu. JUNO-DS61 membawa seri ikonik ke tingkat kinerja yang baru, menambahkan banyak peningkatan yang kuat sambil tetap menjaga operasi tetap efisien dan sederhana. Serbaguna, intuitif, dan sangat mobile, JUNO-DS61 menempatkan Anda dalam perintah kreatif, membuatnya mudah untuk menghasilkan musik yang luar biasa di mana pun Anda bermain.', 0, NULL),
('Roland VAD306 V-Drums Acoustic Design Electronic Drum Set', 28, 4, 37003707, 'https://cdn.shopify.com/s/files/1/0494/8113/products/vad3061.png?v=1614798109', 'desc', 0, NULL),
('Squier Classic Vibe 60s Jazz Bass Guitar', 29, 2, 7450000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/F03-037-4530-504_1562752550631.jpg?v=1562810185', 'desc', 0, NULL),
('TAMA CL52KRS-BAB Superstar Classic Maple 5-Piece Drum Shell Kit Blue Lacquer Burst', 30, 4, 12200000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/T03-CL52KRS-BAB_1553833994292_735x735.jpg?v=1623681639', 'Selama lebih dari empat puluh tahun, nama Superstar telah berdiri untuk desain yang inovatif, kualitas bangunan yang unggul, nada sterling, dan proyeksi yang jelas. Superstar Classic sekali lagi menjunjung tinggi tradisi dengan meningkatkan standar bagi para drumer yang cerdas—dan yang luar biasa—melakukannya sambil juga menurunkan harga. Menggambar pada Superstar di masa lalu, lencana TAMA T-shape klasik dan lug tunggal bermassa rendah yang ramping menunjukkan keadaan seni yang lebih sederhana dari tahun 70-an, sedangkan sistem Star-Mount yang cerdik dan pengukur tipis baru 100% cangkang maple melampaui apa pun di kelasnya.\n		\n		Configuration:\n\n16\"x22\" Bass Drum X 1\n7\"x10\" Tom Tom X 1\n8\"x12\" Tom Tom X 1\n14\"x16\" Floor Tom X 1\n6.5\"x14\" Snare Drum X 1', 0, NULL),
('TAMA CL52KRSP-GGP Superstar Classic Exotix 5-Piece Drum Shell Kit Gloss Garnet Lacebark Pine', 30, 4, 12200000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT03-CL52KRSP-GGP_2FT03-CL52KRSP-GGP_1608630129080_735x735.jpg?v=1623681762', 'Selama lebih dari empat puluh tahun, nama Superstar telah berdiri untuk desain yang inovatif, kualitas bangunan yang unggul, nada sterling, dan proyeksi yang jelas. Superstar Classic sekali lagi menjunjung tinggi tradisi dengan meningkatkan standar bagi para drumer yang cerdas—dan yang luar biasa—melakukannya dengan harga yang sangat kompetitif. Menggambar pada Superstar di masa lalu, lencana TAMA T-shape klasik dan lug tunggal bermassa rendah yang ramping menunjukkan keadaan seni yang lebih sederhana dari tahun 70-an, sedangkan sistem Star-Mount yang cerdik dan pengukur tipis baru 100% cangkang maple melampaui apa pun di kelasnya. Secara visual menggairahkan, lapisan eksterior Gloss Lacebark Pine memiliki pola serat kayu yang kompleks untuk memberikan tampilan visual yang luar biasa pada kit ini.\n		\nConfiguration:\n\n16\"x22\" Bass Drum\n7\"x10\" Tom Tom\n8\"x12\" Tom Tom\n14\"x16\" Floor Tom\n6.5\"x14\" Floor Tom\nMTH600 Double Tom Holder', 0, NULL),
('TAMA HRM5B Rhythm Mate Hickory Drum Sticks', 30, 1, 100000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/T03-HRM5B_1520849057039.jpg?v=1623681633', 'desc', 0, NULL),
('Tanglewood Crossroads Parlor Body', 31, 5, 3557920, 'https://cdn.shopify.com/s/files/1/0494/8113/products/TWCR-P_01.jpg?v=1628285208', 'desc', 0, NULL),
('TASCAM MODEL 16 MIXER / INTERFACE / RECORDER', 32, 8, 15625000, 'https://hariharimusik.id/wp-content/uploads/2021/01/MODEL-16-1.jpg', 'desc', 0, NULL),
('Taylor 210ce Plus Rosewood/Spruce Dreadnought Acoustic Guitar', 33, 5, 20250000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT25-210CE-PLUS_2FT25-210CE-PLUS_1589432319210_735x735.jpg?v=1597297252', 'Dengan kayu layered Indian rosewood di bagian back dan sides dan solid Sitka spruce di top, 200 Series Dreadnought ini menawarkan seluruh power dan punch dari bentuk body tradisional dengan ubahan Taylor yang meningkatkan kejernihan dan kesimbangan. Ukuran body yang lebih besar menghasilkan low-end berkarakter warm dan proyeksi, sementara solid top memberikan artikulasi dan high end crisp yang menjadikannya pilihan yang tepat untuk semua gaya musik, untuk latihan di rumah atau memulai karier sebagai musisi. Hiasan tambahan disematkan pada model Plus ini seperti black binding, glossy finish, dan Taylor nickel tuner. Tersedia dengan elektronika ES2 dan Venetian cutaway dalam desain baru Aerocase™ duntuk memberikan perlindungan dari kerusakan dengan bobot ringan ketika anda membawanya ke mana saja.\n\nBody Shape	Dreadnought w/ Venetian Cutaway\nBody Material	Sitka Spruce (Top), Indian Rosewood (Body)\nBody Colour	Natural\nBody Finish	Gloss\nFretboard Material	West African Crelicam Ebony\nScale L', 0, NULL),
('Taylor 814ce LTD V-Class Cocobolo/Lutz Grand Auditorium Acoustic Guitar', 33, 5, 72800000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT25-814CE-LTD-V-COCOBOLO_2FT25-814CE-LTD-V-COCOBOLO_1588231541460_735x735.jpg?v=1594283100', 'Instrumen flagship Grand Auditorium dari Taylor kini semakin menawarkan keunggulan sonic dengan tambahan arsitektur bracing V-Class yang fenomenal.\n\nKombinasi tonewood klasik dari kayu Indian rosewood dan Sitka spruce mampu memberikan karakteristik warm, low-end presence, dan high-range sparkle, tapi bracing V-Class meningkatkan nada tersebut ke tingkatan baru. Not memiliki sustain yang lebih lama, yang memungkinkan overtone kayu rosewood yang rich menghasilkan kejernihan yang lebih dari sebelumnya, dan skema bracing canggih memberikan daya yang lebih kuat dan tunefulness di sepanjang spektrum nada pada suara yang rich dan ekspresif. Beberapa material yang menonjol darinya adalah smoky ebony fretboard yang berasal dari penggilingan Crelicam milik Taylor di Kamerun, maple binding, rosewood edge trim, abalone rosette dengan bagian tepian kayu rosewood, dan mother-of-pearl Element fretboard dan inlay peghead.\n\n814ce juga menyertakan Venetian cutaway dan ES2 acoustic electronics, dan dikir', 0, NULL),
('Taylor Baby Mahogany Acoustic Guitar', 33, 5, 6350000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/T25-BT2_1545816573465_735x735.jpg?v=1566787063', 'Variasi bentuk Dreadnought tersedia dengan bahan kayu Mahogany di bagian top, yang menghasilkan nada warm daripada saudaranya yang menggunakan kayu spruce-top. Ukuran kecilnya memberikan portabilitas dan ideal untuk anak-anak.\n\nBody Wood: Layered Sapele Back and Sides\nBracing: X-Bracing\nFingerboard: Ebony\nFinish: Varnish\nFrets: 19\nInlays: 6mm Dots\nModel: Baby Mahogany\nNeck Finish: Varnish\nNeck Wood: Sapele\nNut Material: NuBone\nScale Length: 22-3/4\"\nStrings: Elixir Phosphor Bronze Light\nTop Wood: Tropical Mahogany\nTuners: Die-Cast Chrome\nHard Case / Bag: Bag\nNumber Of Strings: 6 strings', 0, NULL),
('Taylor Big Baby Acoustic Guitar', 33, 5, 8450000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/T25-BBT_1567051680400_735x735.jpg?v=1567051689', 'Versi Baby Taylor yang diperbesar ini menambahkan proyeksi dan karakter pada seri Baby Taylor yang sejak awal sudah sangat fleksibel. Fleksibilitas dan portabilitas masih dimilikinya. Big Baby Taylor sangat ideal untuk anak-anak, musisi dan penulis lagu muda.\n\nSeries/Shape: Big Baby\nBody Wood: Layered Sapele Back and Sides\nBracing: X-Bracing\nFingerboard: Ebony\nFinish: Varnish\nFrets: 20\nInlays: 6mm Dots\nModel: Baby Taylor\nNeck Finish: Varnish\nNeck Wood: Sapele\nNut Material: Nubone\nPickguard: Tortoise\nScale Length: 25-1/2\"\nStrings: Elixir Phosphor Bronze Light\nTop Wood: Sitka Spruce\nTuners: Die-Cast Chrome\nHard Case / Bag: Bag\nNumber Of Strings: 6 strings', 0, NULL),
('Taylor GS Mini Acoustic Guitar', 33, 5, 9250000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT25-GS-MINI-MAH_2FT25-GS-MINI-MAH_1634017570330_735x735.jpg?v=1634017578', 'Sebuah keajaiban desain scaled-down, GS Mini adalah instrumen akustik kecil yang fun yang mengejutkan dunia. Menghasilkan suara berkarakter penuh meski berukuran mungil, Mini sangat mudah dibawa-bawa, tapi juga nyaman digunakan di rumah anda, menjadikannya gitar parlour modern terbaik. Menampilkan Taylor neck yang telah dipatenkan, edisi Mini ini menggunakan solid Sitka spruce top.\n\nBody Material	Sitka Spruce Top, Layered Sapele Body\nBody Finish	Varnish\nFretboard Material	West African Ebony\nScale Length	23-1/2\"\nNo. of Frets	20\nFretboard Inlays	4mm Dot Italian Acrylic\nPickguard	Tortoise\nStrings	Elixir Phosphor Bronze Medium\nTuning Machines	Die-cast\nHardware Finish	Chrome\nCase	GS Mini Hard Bag', 0, NULL),
('Taylor GS Mini-e RW Acoustic Guitar', 33, 5, 11550000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FT25-GS-MINI-E-RW_2FT25-GS-MINI-E-RW_1605244466600_735x735.jpg?v=1605244479', 'Tambahan kreatif lainnya pada jajaran GS Mini dengan bahan layered rosewood di bagian back dan sides. GS Mini-e RW memiliki ukuran parlor yang dimodifikasi, sesuai untuk dimainkan setiap hari dan dibawa ke mana saja. Ia juga dilengkapi dengan ES-T pickup, siap untuk dihubungkan dengan amplifier.\nSeries/Shape	GS Mini\nBody Wood	Layered Rosewood Back and Sides\nBracing	GS Mini with Relief Rout\nFingerboard	Ebony\nFinish	Varnish\nFrets	20\nInlays	5mm Dots\nModel	GS Mini-e RW\nNeck Finish	Varnish\nNeck Wood	Sapele\nNut Material	Nubone Nut/Tusq Saddle\nPickguard	Tortoise\nPickups	ES-T\nScale Length	23-1/2\"\nStrings	Elixir Phosphor Bronze Medium\nTop Wood	Sitka Spruce\nTuners	Taylor Chrome\nHard Case / Bag	Bag\nNumber Of Strings	6 strings', 0, NULL),
('VOX Telstar Drum Set', 34, 4, 30000000, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/8/31/a5a95e39-110c-4ba1-a066-b94aa41b772d.png', 'desc', 0, NULL),
('Yamaha APX600 Thinline Acoustic-Electric Guitar', 35, 5, 4279500, 'https://cdn.shopify.com/s/files/1/1369/1865/products/apx600ovs_360x.jpg?v=1585848026', 'APX600 menggabungkan semua atribut yang membuat pendahulunya, APX500, salah satu gitar akustik-elektrik terlaris di dunia, dengan beberapa peningkatan kenyamanan dan kosmetik. Ini memiliki lubang suara oval yang berbeda untuk respons menengah bawah yang lebih tebal dan ujung bawah yang lebih menarik perhatian, dengan roset abalon manis untuk melengkapinya dengan sempurna. Dibuat dari kombinasi spruce top dan body nato dengan finishing gloss dan tonewood tropis lokal untuk neck dengan fingerboard dan bridge rosewood. APX600 yang ditingkatkan ini memiliki pickup piezo undersaddle yang unik, transduser SRT milik Yamaha. Ini sama dengan yang ditampilkan dalam rangkaian Seri A yang sangat terkenal, dan menangkap nada alami gitar Anda sambil menolak umpan balik untuk suara yang ramah campuran. Meski gayanya telah berkembang, esensi APX tetap sama. Hari ini, ia menawarkan tampilan yang lebih alami, bodi yang lebih dalam untuk respons bass yang lebih baik dan volume yang lebih besar, dan pola penyangga yang tidak bergigi untuk nada yang responsif dan dinamis.', 0, NULL),
('Yamaha APXT2 3/4-Size Thinline Acoustic-Electric Guitar', 35, 5, 2981385, 'https://cdn.shopify.com/s/files/1/1369/1865/products/APXT2-OVS1_41f6b3b9-903c-4f21-bb65-120127196e65_360x.jpg?v=1633629926', 'Gitar akustik-elektrik Yamaha APXT2 yang ringkas memberi Anda kualitas dan kinerja salah satu instrumen terlaris sepanjang masa Yamaha dalam skala yang lebih kecil. Berdasarkan APX500 yang sangat populer, APXT2 ukuran 3/4 adalah instrumen yang menyenangkan dan mudah dimainkan yang sempurna jika Anda memiliki tangan yang lebih kecil atau mencari gitar bepergian yang hebat. Terlebih lagi, Yamaha melengkapi APXT2 dengan pickup kontak System 68 dan preamp aktif, yang mencakup tuner onboard yang sangat praktis. Tambahkan ke tas pertunjukan empuk, dan Anda siap bermain di mana saja dengan gitar akustik-elektrik Yamaha APXT2 Anda.', 0, NULL),
('Yamaha CGS104AII Student Accoustic Guitar', 35, 5, 2134695, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Yamaha_CGS104aII_01.jpg?v=1618681450', 'desc', 0, NULL),
('Yamaha CPX600 Medium-Jumbo Acoustic-Electric Guitar', 35, 5, 5420700, 'https://cdn.shopify.com/s/files/1/1369/1865/products/yamaha-cpx600bl-black-medium-jumbo-acoustic-electric-guitar-for-sale-waukegan-il-family-piano_3_ba9d0b8d-5430-4333-b6e0-ed4c9c20743a_360x.png?v=1633629929', 'Menggabungkan playability, kejelasan dan nada dinamis dari seri akustik-elektrik tipis Yamaha APX dengan desain bodi jumbo menengah untuk suara akustik yang lebih bertenaga dan lebih keras serta tampilan tradisional, CPX600 menawarkan keseimbangan ideal antara kinerja terpasang dan gaya akustik. Yamaha CPX600 adalah gitar akustik-elektrik jumbo medium, yang berarti memiliki bodi yang sedikit lebih besar daripada APX500 thinline. Desain bodi yang sedikit lebih besar ini berarti suara yang besar. CPX600 menampilkan bagian atas spruce dan fingerboard rosewood serta bridge yang berpadu untuk menghasilkan nada yang solid dan menjangkau jauh. Yamaha menggunakan tonewood lokal untuk leher dan bodi dalam upaya meminimalkan limbah dan mendukung pemanenan kayu yang berkelanjutan. Saat Anda ingin mencolokkan Yamaha CPX600 Anda, Anda akan memiliki sistem yang solid untuk menghasilkan nada yang diperkuat. Ini memiliki sistem pickup piezo System65+SRT Yamaha, yang menggunakan elemen individual untuk setiap string untuk memberikan sinyal bandwidth ultra-jelas dan sangat lebar dengan respons dinamis dan akurasi nada yang jauh lebih baik daripada pickup piezo biasa. Ini menghasilkan suara akustik alami yang benar-benar realistis saat dipompa melalui sistem PA. System65 juga memiliki tuner onboard yang selalu merupakan sentuhan yang nyaman dan dihargai. Yamaha CPX600 adalah contoh lain dari pengerjaan berkualitas tinggi dan keterjangkauan yang terkenal dengan Yamaha. Ini menawarkan suara yang luar biasa, nuansa permainan yang halus, dan gaya yang menarik, semuanya dengan harga yang terjangkau.', 0, NULL),
('Yamaha CSF1M Parlor Acoustic-Electric Guitar', 35, 5, 6420000, 'https://cdn.shopify.com/s/files/1/1369/1865/products/yamaha-csf1m-parlor-guitar-for-sale-waukegan-il-family-piano_3_b50f0199-b1b0-49c0-8a4f-b4bfbfc0e0d7_360x.jpg?v=1633629931', 'Dengan suara yang kaya dan bersemangat yang melampaui ukurannya, Yamaha CSF1M terasa hebat untuk dimainkan dan tidak kekurangan apa pun dibandingkan dengan banyak rekan-rekannya yang lebih besar. Ini adalah gitar akustik bergaya ruang tamu yang mengingatkan kembali ke awal abad kedua puluh, ketika gitaris keliling menjelajahi negara, bermain untuk audiens apa pun yang dapat mereka temukan dan duduk bersama pemain instrumen akustik lainnya saat itu — biola, banjo, dan mandolin . CSF1M memunculkan periode ini dalam musik Amerika dengan indah — dan dengan harga yang mahal. Dengan atasan Sitka spruce yang solid dan bracing bergigi yang baru dirancang, CSF1M memiliki proyeksi yang kuat dan nada yang indah, menghasilkan high end murni dan midrange bintang. Bagian belakang dan samping kayu mahoni laminasi menambahkan lapisan kehangatan low-end untuk keseimbangan nada yang luar biasa. Fingerboard dan bridge rosewood juga menambah kedalaman tonewood. Saat Anda siap untuk mencolokkan, CSF1M hadir dengan pickup piezo SRT Zero-Impact pasif untuk nada akustik yang diperkuat dengan indah. Baik Anda bermain di rumah, di atas panggung, atau di mana pun Anda bepergian, CSF1M memberi Anda pengalaman gitar ruang tamu terbaik.', 0, NULL),
('Yamaha Drum Electronic DTX-6K2X', 35, 4, 13050000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FY01-DTX6K2X_2FY01-DTX6K2X_1625200063630_735x735.jpg?v=1625200075', 'Secara akurat mereproduksi suara drum kit sungguhan dan ambience yang direkam di studio terkenal dunia\nKenop AMBIENCE, COMP, dan EFFECT Kit Modifier yang memungkinkan Anda membuat sendiri suara yang unik\nHead TCS asli Yamaha digunakan untuk semua pad yang menghasilkan nuansa yang menyenangkan dan alami serta rebound yang membuat Anda ingin terus bermain\n3-zone pad untuk snare, crash, dan ride. Cymbal dapat di-choke dan mute. Ride cymbal dilengkapi dengan fungsi hit point detection (sensor posisi)\nSistem hardware Yamaha digunakan untuk stand hi-hat dan snare arm.\nConfiguration:\n\nSnare	XP80 (8 inci) Head TCS 3-zone pad\nTom 1, 2	TP70 (7 inci) Head karet 1-zone pad\nFloor Tom	TP70 (7 inci) Head karet 1-zone pad\nBass Drum	KP90 (7,5 inci) head karet dengan pad Multi-layer\nHi-Hat	RHH135 (13 inci) 2-zone pad\nCrash Cymbal 1	PCY135 (13 inci) 3-zone pad\nCrash Cymbal 2	PCY135 (13 inci) 3-zone pad\nRide Cymbal	PCY135 (13 inci) 3-zone pad\nStand Hi-hat	HS650A\nSistem Rak	RS6', 0, NULL);
INSERT INTO `items` (`name`, `id_brand`, `id_instrument`, `price`, `image`, `description`, `stock`, `id_diskon`) VALUES
('Yamaha Drum Electronic DTX-6KX', 35, 4, 9500000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FY01-DTX6KX_2FY01-DTX6KX_1624337829340_735x735.jpg?v=1624337838', 'Secara akurat mereproduksi suara drum kit sungguhan dan ambience yang direkam di studio terkenal dunia\nKenop AMBIENCE, COMP, dan EFFECT Kit Modifier yang memungkinkan Anda membuat sendiri suara yang unik\nHead TCS asli Yamaha digunakan untuk semua pad yang menghasilkan nuansa yang menyenangkan dan alami serta rebound yang membuat Anda ingin terus bermain\n3-zone pad untuk snare, dan ride. Cymbal dapat di-choke dan mute. Ride cymbal dilengkapi dengan fungsi hit point detection (sensor posisi)\nTraditional ball clamp Yamaha digunakan untuk snare clamp.\nConfiguration:\n\nSnare	XP80 (8 inci) Head TCS 3-zone pad\nTom 1, 2	TP70 (7 inci) Head karet 1-zone pad\nFloor Tom	TP70 (7 inci) Head karet 1-zone pad\nBass Drum	KP65 (5 inci) pad karet kompatibel dengan double foot pedal\nHi-Hat	Pad 10 inci dan HH65 Hi-hat cotroller\nCrash Cymbal 1	Pad 10 inci dengan kemampuan Choke\nCrash Cymbal 2	-\nRide Cymbal	PCY135 (13 inci) 3-zone pad\nStand Hi-hat	-\nSistem Rak	Rak DTX6K-X', 0, NULL),
('Yamaha FG800 Solid Top Dreadnought Accoustic Guitar', 35, 5, 3130952, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Yamaha_FG800_01.jpg?v=1571573328', 'desc', 0, NULL),
('Yamaha FS820 Folk Body Accoustic Guitar', 35, 5, 3984887, 'https://cdn.shopify.com/s/files/1/0494/8113/products/yamaha_FS820_full.jpg?v=1608144577', 'desc', 0, NULL),
('Yamaha FSX800C Folk Body Accoustic Electric Guitar', 35, 5, 4838822, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Yamaha_FSX800c_01.jpg?v=1571573295', 'desc', 0, NULL),
('Yamaha PAC112V Electric Guitar', 35, 5, 4411855, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Yamaha_PAC112V_NaturalSat_01.jpg?v=1613513279', 'desc', 0, NULL),
('Yamaha PAC311H Electric Guitar', 35, 5, 5977402, 'https://cdn.shopify.com/s/files/1/0494/8113/products/Yamaha_PAC311H_blk_01.jpg?v=1613514339', 'desc', 0, NULL),
('Yamaha Pacifica PAC012 Electric Guitar', 35, 5, 2995650, 'https://cdn.shopify.com/s/files/1/1369/1865/products/yamaha-pac012-electric-guitar-for-sale-waukegan-il-family-piano_2_694c8170-a795-43fd-8963-569dffb38245_360x.jpg?v=1633629947', 'Gitar listrik Yamaha PAC012 Pacifica adalah instrumen pemula yang bagus untuk pemain muda yang baru muncul dengan harga yang luar biasa. PAC012 memiliki bodi yang ringan dengan leher maple yang halus dan fingerboard rosewood. Trio pembunuh pickup serbaguna memungkinkan Anda memutar nada dalam berbagai nada mulai dari nada tinggi yang bersih hingga nada menengah yang kuat hingga geraman nada rendah. Yamaha PAC012 Pacifica hadir dengan humbucker keramik custom Yamaha di posisi bridge, cocok untuk Anda yang ingin bergoyang keras dan berat. Dua pickup single-coil di posisi tengah dan leher menawarkan semua jenis nada single-coil yang bersih dan goyang juga. Kisaran yang ditawarkan trio pickup serbaguna ini memungkinkan Anda menjelajahi semua jenis pendekatan gaya di hampir semua genre! Anda akan menyukai leher maple ramping berbentuk C dengan fingerboard rosewood di PAC012. Ini halus, responsif, dan langsung dimainkan — bagus untuk lead play atau chording. Dan dengan jembatan tremolo vintage, Anda dapat bermain dengan percaya diri bahwa Anda akan tetap selaras. Gitar Yamaha Pacifica adalah contoh nada yang bagus dan kemampuan bermain yang luar biasa. Hasil akhir warna yang indah, perangkat keras krom, dan konstruksi berkualitas -- Pacifica mencakup semuanya.', 0, NULL),
('Yamaha PSR-E273 61-key Portable Arranger', 35, 6, 2000000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FY01-PSRE273_2FY01-PSRE273_1619586538660.jpg?v=1623681793', 'Saat bermain itu menyenangkan, Anda ingin terus berlatih, semakin banyak berlatih, semakin meningkat, dan semakin meningkat, semakin ingin bermain. Dengan 61-key, Keyboard Portabel entry-level menampilkan berbagai macam suara dan fungsi dan menjadikan PSR-E273 adalah keyboard pertama yang ideal untuk calon musisi yang baru memulai.\n\nSelain sebagai alat pembelajaran pendidikan, PSR-E273 menggabungkan Suara dan Gaya berkualitas Yamaha dengan fungsi pembelajaran praktis canggih yang menginspirasi pemain pemula untuk menyadari potensi mereka dan mengembangkan antusiasme untuk belajar dan bermain musik. Berbagai fitur menyenangkan dan mendidik dari PSR-E273 memastikan kemajuan yang cepat, menjadikan seluruh pengalaman belajar—bahkan berlatih—begitu menyenangkan sehingga anak-anak Anda tidak akan pernah bosan bermain, bahkan sendirian. Itu masuk akal.\nFeatures:\n\nQuiz Mode\nSmart Chord\n401 high-quality Voices, 143 auto accompaniment Styles\n112 Songs, easy Song Book (available via web download)', 0, NULL),
('Yamaha PSR-E373 61-key Portable Keyboard', 35, 6, 2950000, 'https://cdn.shopify.com/s/files/1/0117/8740/3323/products/products_2FY01-PSRE373_2FY01-PSRE373_1619583193230.jpg?v=1623682551', 'PSR-E373 adalah 61-tombol, model standar Keyboard Portabel bagi mereka yang menyentuh instrumen keyboard untuk pertama kalinya, atau bahkan untuk pemain untuk penggunaan kinerja. Ini sarat dengan fungsi serbaguna, aksi keyboard sensitif sentuhan ekspresif dan banyak fungsi yang nyaman sehingga bahkan pemula pun dapat langsung menikmati memainkannya.\n\nFeatures:\n\n622 high quality Voices with improved sampling\nTouch-sensitive keyboard with 48-note polyphony\nBrand new DSP effects and 11 Super Articulation Lite Voices\n205 auto accompaniment Styles\n26 Harmony types\n150 Arpeggio types\n\"Keys to Success\" with other lesson functions\nDuo mode\nEasy Song Book available for download\nUSB TO HOST allowing two-way MIDI and digital audio transfer\nMelody Suppressor for both analogue and digital audio input\nSpecifications:\n\nDimensions: 945mm W x 118mm H x 369mm D\nWeight: 4.6kg\nNo. of Keys: 61\nKeyboard Type: Organ Style\nKeyboard Response: Hard/medium/soft/fixed\nDisplay: LCD\nTone Generation: AWM Stereo Samp', 0, NULL),
('Yamaha Rydeen Drum Set', 35, 4, 10300000, 'https://images.tokopedia.net/img/cache/900/VqbcmM/2021/7/2/18984bf3-8d56-4678-97de-88892e44370e.jpg', 'desc', 0, NULL),
('Yamaha Storia I Small-Body Acoustic Guitar - Off White', 35, 5, 6404985, 'https://cdn.shopify.com/s/files/1/1369/1865/products/yamaha-storia-i-small-body-acoustic-guitar-off-white-for-sale-waukegan-il-family-piano_2_4fb61188-4c7a-4adc-b08d-f5723acab296_360x.jpg?v=1633629952', 'STORIA I Yamaha menyenangkan dengan nada yang jelas namun kaya, dan estetika modern yang bersih yang menarik perhatian dan mencerahkan ruangan mana pun. Dengan desain yang membangkitkan warna alami hari Anda, gitar STORIA menampilkan sentuhan akhir yang memukau dan detail cemerlang seperti tatahan berkilauan, perhiasan kuningan, dan tuner emas sampanye yang menarik. Bentuk bodi yang akomodatif, leher walnut yang ramping, tinggi senar yang nyaman, dan tepi fingerboard yang digulung dengan tangan membuat STORIA mudah diambil dan dimainkan kapan saja. Masing-masing gitar STORIA dirancang untuk membawa keindahan ke rumah Anda dan memberi Anda jalan menuju kreativitas dan ekspresi diri. STORIA I secara khusus menampilkan bagian atas kayu cemara yang kokoh, bagian belakang dan samping mahoni, tatahan mahoni dan gading, dan lapisan semi-gloss. Kayu off white menonjol karena nada dan keindahannya. Pin bridge kuningan menghadirkan sustain tambahan, nada midrange yang tebal, dan suar visual. Tatahan lubang suara mahoni dan gading, ditambah interior biru muda, melengkapi jalur warna off white dengan sempurna. Selain itu, konfigurasi pickup pasif dirancang untuk meminimalkan dampak pickup pada nada dan tampilan tradisional instrumen. STORIA mengubah gitar akustik tradisional menjadi satu-of-a-kind statement piece. Baik Anda seorang musisi atau gitaris pemula, undang musik ke dalam hidup Anda dengan Yamaha STORIA I yang penuh gaya dan inspiratif.', 0, NULL),
('Yamaha Storia III Small-Body Acoustic-Electric Guitar - Chocolate Brown', 35, 5, 6404985, 'https://cdn.shopify.com/s/files/1/1369/1865/products/yamaha-storia-iii-concert-acoustic-electric-guitar-chocolate-brown-for-sale-waukegan-il-family-piano_5_2b2e5981-196b-4a22-bd99-f473dcd005c2_360x.jpg?v=1633629953', 'STORIA III Yamaha menghadirkan nada hangat namun seimbang dan hasil akhir yang bercahaya—tambahan halus untuk lingkungan Anda yang menenangkan sekaligus merangsang. Dengan desain yang membangkitkan warna alami hari Anda, gitar STORIA menampilkan sentuhan akhir yang memukau dan detail cemerlang seperti tatahan berkilauan, perhiasan kuningan, dan tuner emas sampanye yang menarik. Bentuk bodi yang akomodatif, leher walnut yang ramping, tinggi senar yang nyaman, dan tepi fingerboard yang digulung dengan tangan membuat STORIA mudah diambil dan dimainkan kapan saja. Masing-masing gitar STORIA dirancang untuk membawa keindahan ke rumah Anda dan memberi Anda jalan menuju kreativitas dan ekspresi diri. STORIA III secara khusus menampilkan bagian atas kayu mahoni yang kokoh dan konstruksi bagian belakang dan samping kayu mahoni. Memiliki respon transien yang lebih lambat daripada tonewood lainnya, konstruksi ini memberikan gitar nada yang hangat dan kayu dengan midrange yang kuat. Kayu cokelatnya menonjol karena nada dan keindahannya. Pin bridge kuningan menghadirkan sustain tambahan, nada midrange yang tebal, dan suar visual. Tatahan lubang suara hitam, merah anggur, dan gading, ditambah interior merah anggur, melengkapi jalur warna cokelat pekat dengan sempurna. Selain itu, konfigurasi pickup pasif dirancang untuk meminimalkan dampak pickup pada nada dan tampilan tradisional instrumen. STORIA mengubah gitar akustik tradisional menjadi satu-of-a-kind statement piece. Baik Anda seorang musisi atau gitaris pemula, undang musik ke dalam hidup Anda dengan Yamaha STORIA III yang penuh gaya dan inspiratif.', 0, NULL);

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
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `items_name` varchar(250) NOT NULL,
  `review` varchar(1000) NOT NULL,
  `rating` double NOT NULL
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
  `alamat` varchar(500) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `user_email`, `items_name`, `quantity`, `total`, `alamat`, `status`) VALUES
(1, 'weifuk@gmail.com', 'Ludwig Classic Maple Drums', 1, 31296717, 'Jl. Permata Gatsu no 14, Denpasar, Bali', 2);

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
  `status` int(11) NOT NULL COMMENT '1=>Aktif, 2=>Ban'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `username`, `password`, `name`, `id_provinsi`, `id_kota`, `birth_date`, `gender`, `status`) VALUES
('weifuk@gmail.com', 'billyk', 'coba123', 'Billy Kelvianto', 8, 123, '2002-11-26', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `items_name` varchar(250) NOT NULL
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
-- Indexes for table `diskon`
--
ALTER TABLE `diskon`
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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `color_items`
--
ALTER TABLE `color_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `diskon`
--
ALTER TABLE `diskon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
