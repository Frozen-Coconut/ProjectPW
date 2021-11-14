-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2021 at 01:00 PM
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instrument`
--
ALTER TABLE `instrument`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
