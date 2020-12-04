-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2020 at 01:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kksi2020_u`
--

-- --------------------------------------------------------

--
-- Table structure for table `msadmin`
--

CREATE TABLE `msadmin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msadmin`
--

INSERT INTO `msadmin` (`id`, `nama`, `email`, `password`) VALUES
(1, 'Moch Arizal Fauzi', 'muhammadarizalfauzi2@gmail.com', 'much12'),
(3, 'Admin', 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `msbidang`
--

CREATE TABLE `msbidang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_bidang` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msbidang`
--

INSERT INTO `msbidang` (`id`, `nama_bidang`) VALUES
(1, 'TIK'),
(2, 'Otomotif'),
(3, 'Mesin'),
(4, 'Elektro'),
(5, 'Bisnis Daring');

-- --------------------------------------------------------

--
-- Table structure for table `mscompany`
--

CREATE TABLE `mscompany` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(75) DEFAULT NULL,
  `alamat_perusahaan` text DEFAULT NULL,
  `telp_perusahaan` varchar(75) DEFAULT NULL,
  `id_bidang` int(11) DEFAULT NULL,
  `id_pembimbing` int(11) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `nama_pembimbing_perusahaan` varchar(100) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mscompany`
--

INSERT INTO `mscompany` (`id`, `nama_perusahaan`, `alamat_perusahaan`, `telp_perusahaan`, `id_bidang`, `id_pembimbing`, `longitude`, `latitude`, `radius`, `nama_pembimbing_perusahaan`, `email`, `password`, `id_kategori`) VALUES
(1, 'BENGKEL MOBIL SOLEH', 'Torongrejo Krajan Junrejo Batu', '094832432', 4, 9, NULL, NULL, NULL, 'ade', 'ade@ade.com', 'adeade', 2),
(2, 'Bengkel Supri', 'Raya Beji No 87', '08123223578', NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'PT. MITRA SEHATI MAJU BERSAMA', 'Kawasan Industri Candi Blok 20 No 1A Semarang', '02476175852', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'PT. NUSANTARANTAMA MULTI MEDIA', 'Jl. Bunga Andong Selatan Kav. 12 Malang', '0341 402055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'SMK PGRI 3 MALANG', 'Jl. Tlogomas IX No 29 Malang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'SURYA KENCANA', 'Jl. Candi Panggung Kota Malang', '081235727779', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Transmart MX', 'Jl. Veteran Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'AHASS TONGAN MALANG', 'Jl. Ade Irma Suryani', '0341-325220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'ALFAMART GEMEKAN MOJOKERTO', 'Jl. Raya Brangkal MOJOKERTO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ALFAMART JATILANGKUNG MOJOKERTO', 'Jl Raya Pacet KM 3 RT :01 RW :01 Pungging MOJOKERTO', '081294670767', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'ALFAMART KEBON WARIS PASURUAN', 'jl.kebon waris Pasuruan RT.0 RW.0', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'ALFAMART KEPULUNGAN PASURUAN', 'jln.surabaya malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ALFAMART LOSARI MOJOKERTO', ' losari mojokerto', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ALFAMART MONA SUWAYUWO PASURUAN', 'jl raya suwayuwo perum candra kartika. PASURUAN', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ALFAMART NGROWO MOJOKERTO', 'Jl. Raya Ngrowo kec. Bangsal Bangsal MOJOKERTO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'ALFAMART TAMAN SAFARI BARU', 'Dusun Palang Sukorejo RT.01 RW.01 ', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'ASCO DAIHATSU JEMBER', 'JL. HAYAM WURUK JEMBER', '0331-428665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'AUTO 2000 PECINDILAN SURABAYA', 'Surabaya', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'BAMBANG DJAJA MOJOKERTO', 'Ngoro Industri Park Block C 1-2 Ngoro Mojokerto', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'BE IMAGE CINEMA', 'Perum Asabri Bumiayu Indah Blok C3 Malang', '087859796889', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'BENGKEL BOROBUDUR', 'Jl. Borobudur Malang', '0341-7468000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'BENGKEL BUDI SERVICE', 'Jl. Kedoya Barat 16', '0818388431', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Bengkel Feri', 'Jl. Kalisongo Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'bengkel hadi', 'Jl. WR Supratman No 58 Batu', '08125254540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'BENGKEL RAPI', 'Jl. Maijen Panjaitan 14 C Malang', '0341-552285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Bengkel Tomo', 'Jl Bend. Sutami 49', '0818389266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Bintang Jaya Listrik', 'Jl. Sartono SH No 6', '0341-367903 / 368224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'CENTRA KOMPUTER GALUNGGUNG', 'Jl. Galunggung Malang', '085855955530', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'CV TATA MITRA SENTOSA', 'Jl. Sigura-gura 35 Malang', '0341578420', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'CV. GARUDA MUDA', 'Jl. Danar Jonge H4 E42 RT. 5/10 Sawojajar', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'CV. INDONESIA ONLINE', 'Jl. Flamboyan No 45B', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'CV. MEDIA UTAMA', 'Jln. Sigura-Gura', '0341-559736', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'CV. MULTI MEDIA PRATAMA', 'Jl. Bendungan Sagulingt No. 06 Malang', '0341-552497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'CV. SARI MUTIARA ABADI', 'Dsn. Krajan, Srigading Lawang Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Dako Brand & Comunication', 'Jl. Dako Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Deka Hotel Surabaya', 'HR. Muhammad No. 24, Surabaya', '081331981380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'delta prima', 'Jl. Pisang Kipas', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'HAWAI WATERPARK', 'Jl. Graha Kencana Utara V, Karanglo, Banjararum, Kec. Singosari, Malang, Jawa Timur 65153', '(0341) 4351797', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'HEASOFT INDONESIA', 'Ruko Mergan Kelurahan Jl Terusan Mergan Raya 1 Tanjung Rejo Sukun Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'HEIMA (SUBBING TITLE)', 'Bukit Cemara Tidar Block L3 No 25-26 Karang Besuki Sukun Malang', '081298109990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'HOTEL ARIA GAJAYANA', 'Jl. Kawi No 24, Malang', '085258774333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'HOTEL CIPTANINGATI', 'Jl. Argopuro No.154 Batu', '081555459845', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'HOTEL SWISS-BELINN MALANG', 'Jl. Veteran No.8A, Penanggungan, Klojen, Kota Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'IMARKS', 'IMARKS : RUKO SOEHAT INDAH B.4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'INOT PRODUCTION', 'Jln. Batujajar 24 Malang', '03419393366/ 085691886545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'JAMBU LUWUK HOTEL', 'BATU', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'JANTRA BALI', 'Jl. Gunung Galunggung No. 168C', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'JANTRA JOGJAKARTA', 'JL. DAMAI 168 NGUDAL SARI HARJO, NGAGLIK, SLEMAN', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Jantra Malang', 'Jl. Ki Ageng Gribig Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'JANTRA SEMARANG', 'JL. KEDUNG MUNDU RAYA SENDANGGUWO, TEMBALANG, KEDUNGMUNDU NO. 47 SEMARANG', '02476411269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'JANTRA SOLO', 'SOLO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'LAS Damai', 'Jl. Sarimun Gg III No. 344 RT. 03 RW.02 Kec. Junrejo Kota Batu', '0341-595748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'MAJESTY', 'Jl. Brigjen Slamet Riadi 44 Malang', '0341-369800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'MAXZFOOD', 'KARANG BESUKI SUKUN MALANG', '03415082875', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'MOCCA ANIMATION', 'Jl. Maninjau Raya No. 19', '085749696020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'POLYTRON SURABAYA - KAPAS KRAMPUNG', 'SURABAYA', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'PPPPTK Pendem', 'Jl. Arhanud Ds. Junrejo Pendem Kota Batu', '081-333633311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'PT DHARMA POLIPLAST', 'Jl. Meranti 1 Blok LI-10 Delta Silicon I Cikarang, Bekasi', '021 89909898/082817039898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'PT ISTANA MOBIL RODA MAS BANYUWANGI', 'Jl. Raya Rogojampi - pakistaji Banyuwangi', '0333 417888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'PT ISTANA MOBIL RODA MAS jember', 'Jl. Hayam Wuruk No 187-189 Jember 68136', '1331-421888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'PT. ADI PUTRO WIRASEJATI', 'Jl. Bale Arjosari 35 Malang', '087859072494', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'PT. AGUNG HIDRAULICH MACHINERY', 'Jl. Raya Pendem 50 Junrejo Batu', '0341463225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'PT. ANGLER BIO CHEMLAB', 'Jl. Raya Sawo No. 17-19, Kel. Bridgin, Kec. Sambikerep Surabaya', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'PT. Arthawena Gemilang (Otomotif)', 'Jl. Kertanegara 45 Karangploso Malang', '0341-468500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'PT. Arthawenasakti Gemilang', 'Jl. Kertanegara 45 Karangploso Malang', '0341-468500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'PT. ASIA PROTENDO GRAHA BOYOLALI SOLO', 'Jl. Raya Solo Boyolali Km 147 Jawa tengah', '0271-780150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'PT. ASTRA INTERNASIONAL, TBK. (DAIHATSU MALANG)', 'Jl. Ahmad Yani No 175 Malang', '085100711700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'PT. DEPO GLOBAL INDONESIA', 'MALANG', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'PT. INDO JAYA MOTOR', 'Jl. LA Adi Sucipto - Sleman Yogyakarta', '0274-487982', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'PT. INDO SENTOSA TRADA INDOMOBIL (NISSAN JEMBER)', 'JL. HAYAM WURUK NO 181-183 MANGLI, KALIWATES JEMBER', '0331-412828', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'PT. INDONESIA PRECISION PART', 'Kawasan Industri Candi B3 No 9 Semarang', '0247617891', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'PT. INDONESIAN MARINE', 'Jl. Raya Ardimulya 2 Singosari', '0341-458952', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'PT. INTI KARYA TEKNIK', 'Jl. Batu Bara 32 Malang', '0341-491144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'PT. KEDIRI GLOBAL MEDIATAMA (KS TV)', 'Jl. Ruko Hayam Wuruk Trade Center F-4/F-5 Kediri', '(0354 682888)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'PT. KOPESERA ENGINEERING', 'Jl. Jembawan 4B/21 Sawojajar 2 Malang', '0341-720654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'PT. LG ELECTRONICS INDONESIA SC JEMBER', 'Jl. Gajah Mada No 74 - Jember', '0331-320462', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'PT. LG ELECTRONICS INDONESIA SC KEDIRI', 'Jl. Balowerti Gang I No 15 ', '0354683162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'PT. LG ELECTRONICS INDONESIA SC MALANG', 'Jl. Letjen Sunandar Priyo Sudarmo', '0341 403900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'PT. LG ELECTRONICS INDONESIA SC SURABAYA', 'Jl. Tegal Sari no. 41 Surabaya', '031-5342277', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'PT. MAXZER SOLUSI STERIL', 'Jl. Karya Barat 21 Malang', '0341373093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'PT. MAYANGSARI BERLIAN MOTOR JEMBER', 'Jl. Gajah mada 224 A - Jember', '0331-484366/484368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'PT. MGG SOFTWARE ', 'Jl. Bantaran terusan 2 No. 62 Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'PT. NAYATI INDONESIA', 'Kaw. Ind. Terboyo Megah 19 Semarang', '024-6580573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'PT. PJB UBJOM PLTU INDRAMAYU', 'Desa Sumur Adem Kec Sukra Kab Indramayu Jawa Barat', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'PT. PJB UBJOM PLTU PAITON BARU', 'Jl. Raya Surabaya-Situbondo km 142 Paiton Probolinggo', '0335-771668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'PT. PJB UBJOM PLTU REMBANG', 'Jl. Raya Semarang Surabaya Km. 130, Desa Leran dan Desa Trahan, Kec. Sluke, Kab. Rembang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'PT. PLN (PERSERO) ULP DINOYO', 'Jln. MT Haryono Malang', '081252607611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'PT. PLN (PERSERO) ULP KEPANJEN', 'Jl. Panji No. 2 Kepanjen', '0341-395033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'PT. PRIMAKOM SURABAYA', 'Jl. Jajar Tunggal 1 Blok D-12A Wiyung Surabaya', '0318284901;081234535981', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'PT. RETGOO SENTRIS INFORMA', 'Terra Building Lantai 2-3 Jl. Terusan Candi Mendut 9B Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'PT. Surabaya Autocomp Indonesia', 'Ngoro Industri Persada (NIP) - Mojokerto', '082230072003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'RADAR MALANG', 'Jl. Kawi II B Malang', '0341363700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'ROLEPLAY ANIMATION', 'Jl. Sulfat Agung XI/ 4C Malang', '081216489381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Royal ATK', 'Jl. Ciliwung No.2 Malang', '081333007790', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'ROYAL ATK DAN ROYAL OLE OLE BATU', 'Jl. Raya Soekarno No.159 Batu', '0341-5104464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'SENTRA MEDIA KOMPUTINDO', 'Jl. Bendungan Sigura-Gura L2 No. 4 Kav 3', '0341 569636', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'SION DIGITAL PRINTING', 'Jln. Bendungan Sutami', '0341568873', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'SUZUKI TLOGOMAS MALANG', 'Jl. Raya Tlogomas Malang', '0341-575666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'The Onsen Hot Spring Resort Songgoriti', 'Jl. Raya Arumdulu 98 Songgoriti Batu', '03415101888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Ubud Hotel & Villas', 'Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'WAHID PRINTING', 'Jl. Candi Panggung Barat 17 C Malang', '085100589438', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'YPPII BATU. ', 'Jl. Indragiri No. 5 Batu', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'ACT DIGITAL AGENCY', 'Griyasanta Blok H 253', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'AHASS ALIM JAYA MOTOR', 'Jl. Tenaga 2B - Kav 1 Malang', '0341-491005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'AHASS ASIA', 'Jl Raya Pakisaji', '0341809912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'AHASS DIPONEGORO MOTOR', 'Jl. Diponegoro 73 Batu P. Hozi', '0341-591689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'AHASS KOTA LAMA JAYA MOTOR', 'Jl. Laksamana Mardinata 129 B Malang', '0341-353561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'AHASS KURNIA MOTOR BATU', 'Jl. Diponegoro 173 Batu', '0341-511888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'AHASS MURNI MOTOR', 'Jl. Galunggung 76 DE Malang', '0341-569931', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'AHASS SAHABAT JUNIOR', 'Jl. Panji Suroso No 18 Malang', '03414352557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'AHASS SINAR JAYA MOTOR', 'JL. Letjen S. Priyosudarmo 5N Malang', '0341-407000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'ALFAMART CANDI WATES PASURUAN', 'Jl raya candi jawi Rt 05 Rw 02 Candi Wates prigen', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'ALFAMART GRIYATAMA JASEM MOJOKERTO', 'Jasem kel: Jasem kec: Ngoro kab: Mojokerto ', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'ALFAMART JAGIL PRIGEN PASURUAN', 'Alfamart Jagil Prigen', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'ALFAMART KUPANG JETIS MOJOKERTO', 'dsn kupang kec.jetis mojokerto', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'ALFAMART KUTOREJO PASURUAN', 'jln.Pahlawan Sunaryo No. 18,Magasari, kutorejo, kec. Pandaan pasuruan', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'ALFAMART LECARI PASURUAN', 'desa lecari banyak putih', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'ALFAMART LOLAWANG MOJOKERTO', 'Jl.Raya lolawang Dusun.sumberbendo RT2 RW2 Desa lolawang kec.Ngoro kab.Mojokerto', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'ALFAMART MANDURO MOJOKERTO', 'Dsn manduro rt/rw :014/003', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'ALFAMART MENANGGAL MOJOKERTO', 'Jl Raya Gajah Mada No.24,Menanggal,Mojosari,Mojokerto', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'ALFAMART MURIA MOJOKERTO', 'Jl MURIA RAYA WATES KELURAHAN WATES MAGERSAR', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'ALFAMART PENANGUNGAN PRIDGEN PASURUAN', 'jl. Raya gg. Temurejo no. 11 PASURUAN', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'ALFAMART RAYA KEPULUNGAN PASURUAN', 'Jl. Raya Kepulungan, Kepulungan Satu, Gempol, Kec. Gempol, Pasuruan, Jawa Timur 67155', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'ALFAMART RAYA SAMBIROTO MOJOKERTO', 'Jln raya sambiroto dsn sambiroto ds mlaten', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'ALFAMART RAYA TAMAN SAFARI PASURUAN', 'jl taman safari Kel. Pakukerto kec. Sukorejo Pasuruan', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'ALFAMART SUMOLAWANG MOJOKERTO', 'Perum Lawang Asri kec. Puri Sumolawang Mojokerto', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'ALFAMART SUWAYUWO PASURUAN', 'Suwayuwo dusun klanting no. 28', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'AREMA TV', 'Jl. Baiduri Pandan No.16 Tlogomas Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'ASTRA INTERNASIONAL DAIHATSU KEDIRI', 'Jl. Sukarno Hatta 152 Kediri', '0354-684412 / 081555615198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'AUTO 2000  JEMURSARI SURABAYA', 'Jl. Raya Jemursari 215 Surabaya', '081337655487', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'AUTO 2000 KEDIRI', 'KEDIRI', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'AUTO 2000 KENJERAN', 'SURABAYA KENJERAN', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'AUTO 2000 KERTAJAYA SURABAYA', 'Surabaya', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Auto 2000 Madiun', 'Jl. Cokroaminoto Madiun', '0351-492000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Auto 2000 Pasuruan', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Auto 2000 Probolinggo', 'PROBOLINGGO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Auto 2000 Singosari', 'Jl. Dr.Cipto NO. 150 Randu Agung Singosari', '03413062000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'BATU COMPUTER', 'Jl. Diponegoro Kota Batu', '0341-5102706', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Bayu Electronic Production', 'Jl. Soekarno Hatta 44 Malang', '082257846342;081937988843', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'BDI INIDIA STUDIO ANIMASI', 'Bali Creative Industry Center (Balai Diklat Industri Denpasar) Jl. WR. Supratman No. 302 Kesiman Kertalangu, Denpasar Timur, Bali', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Bengkel Anugrah', 'Jl. MT Haryono Malang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'BENGKEL BAGONG', 'Jl. Perusahaan 12 plambesan Tunjungtirto', '08980003423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Bengkel Bubut Crew', 'Jl. Raya Mendalan Wangi No. 34 Wagir Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'BENGKEL DIDIK MOTOR', 'Jl. Wukir RT. 1 RW.1', '085100686901', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'BENGKEL DIPONEGORO', 'Jl. Raya Diponegoro Batu', '085815444180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'BENGKEL IRUL', 'Batu', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'Bengkel Kalpataru', 'Jl. Kalpataru No. 141 Malang', '0341-408731', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'bengkel M. Yusuf', 'Jl. Suropati Gg. III/14 Batu', '03419128841', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'Bengkel Setia jaya', 'Jl Sumber Wuni No 50 Lawang', '085100271712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'BENGKEL SETYA MEKAR', 'Jl. Raya dau kab. Malang', '082244336625', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'Bengkel Soekarno Hatta Auto Service', 'Ters Candi  Mendut 37 Malang', '081252454545/08125266963', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Bengkel Takim', 'Jl. Kenanga Bulukerto - Batu', '085102323989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'BENING FOTOGRAPHI', 'Jl. Bendungan Bening 30-32 Malang', '0341567357/085649902008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'Beringin putih', 'Jl. Kenikir no. 9 Malang', '0341-6108433', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'Breaker Video Production', 'Jl. Soekarno Hatta Indah IV No. 1 Mojolangu, Kec. Lowokwaru, Kota Malang', '085691919722', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'CAHAYA ADVERTISING', 'Jl. ters Sulfat 71 Malang', '0341-7304773', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'CARREFOUR', 'Jl. A. Yani No 2 Malang', '0341470234/082208255542', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'CV BUMI BUANA CITRA', 'Jl. Industri 78 - 82 Mangliawan Malang', '085755409719', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'CV. CAHAYA MUSTIKA', 'Jl. MT Hariyono Malang Ruko Istana Dinoyo B 11 Malang', '08155501980', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'CV. CARMEL HILL MACHINERY', 'Jl. Tumenggung Suryo 21 A Malang', '0341 492032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'CV. GREEN YUFID GROUP / ASTON PRINTER', 'Jl. Sigura - gura Barat No 20F', '0341-558893 / 085790973323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'CV. MESIN JATIM', 'Jl. Ronggolawe Kav. 18 No. 13', '085398000857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'CV. RONGGOLAWE', 'Jl. Raya Jetis Mulyoagung No. 62 Dau Malang', '0341532138 / 7728434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'CV. ROWELIN PERSADA UTAMA', 'Jalan Ikan Cucut No. 2 Kemirahan Malang', '081542478444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'CV. UNO MEDIA', 'Jl. Kesatrian', '085749619148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'CYBER AKSES', 'Jl. Piranha Atas 288 Malang', '08174822412', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'DATSUN MALANG', 'JL. S.Parman 95 Malang', '0341491101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'DESRO DESIGN', 'Jl. LS Sucipto 192 Malang', '081233610878', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'DIANS PRINTS', 'Jl. Kendalsari Barat 1 No 4 Malang', '08123302100/08113038824', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'DIGITAL PHOTO GRAPHICS', 'Jl. Raya Siligita No. 12X Nusa Dua - Bali', '0361 778034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'focus speed', 'Jl. Perusahaan No 31 Karanglo', '085234646699', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'HALMIN BALI', 'Jl. Diponegoro Komp. Pertokoan kertawijaya Blok A - 10 Denpasar', '0361-248803', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'HONDA MOBIL SUKUN', 'Jl. S. Supriadi nO 19.22 Malang', '0341363477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'INET BALI', 'Pertokoan Imam Bonjol Square A-20', '089603012929', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'INIXINDO', 'Jl. Jemursari Utara II No 24 Surabaya', '031-8299398', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'JADIMAU.COM', 'Jl. Danau Surubec Sawojajar Kedung Kandang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'JANTRA KEDIRI', 'KEDIRI', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'JANTRA SIDOARJO', 'SIDOARJO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'JOLO DAIHATSU MALANG', 'Malang', '081236686646', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'KOCHIRO', 'Bantaran 1 No. 45 Malang', '0341 784580', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'LENTERA ADV.', 'Jl. Letda Made Putra No. 26 Bali', '0361-254263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'MALANG TV', 'Jl. Puncak Joyo Agung Merjosari', '0341 550088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'MALANGTIMES.COM', 'Ruko Tlogomas Square Kav. 14 Malang Jatim, ', '03415074961', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'MAXZ LAB', 'Jl. Karya Barat 21 Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'merpati bali', 'Jl Raya Kuta 67 Bali', '0361764665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'MITSUBISHI SERVICES', 'Jl Candi Mendut Utara No 15', '085855135006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'PASSANG ORNAMEN', 'Jl. MT. Haryono Gg. 2 Malang', '08125437303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'PERDANA PAINT REPAIR', 'Jl. Jaksa Agung Suprapto No. 7 Malang', '0341-7010000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'PERUM DAMRI', 'Jl. Letjen S.Parman 11 Malang', '0341-473586', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'POLYTRON BOJONEGORO', 'Jl. Basuki Rahmad No 44 Bojonegoro', '0353-893131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'POLYTRON JEMBER', 'Jl. Letjen Suprapto No 123 C Jember', '0331-337495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'POLYTRON KEDIRI', 'Jl. Perintis kemerdekaan (ngronggo) no 23 Kediri', '0354-682235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'POLYTRON MADIUN', 'Jl. Wuni No 24 A Madiun', '0351-499248', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'POLYTRON MALANG', 'Jl. Temenggung Suryo No 100 C', '4803320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'POLYTRON PASURUAN', 'Jl. Raden Patah. No 98 Pasuruan', '082236926686', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'POLYTRON SURABAYA', 'Jl. Rungkut Industri IV No 26 Surabaya', '031-8478098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'PROBIS UM MALANG', 'Jl. Semarang 5 Malang', '085100577764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'PT BERKAH UTAMA ALLOY', 'Jl. Raya Sedati  38 Desa Wedi Gedangan Sidoarjo', '031-8913500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'PT DAKWAH INTI MEDIA (TV9)', 'Jl. Raya Darmo 96 Surabaya', '031-5620999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'PT MEDIA TELEVISI LESTARI SATU (METRO TV)', 'Jl. Ketampon Ruko Permata Bintoro Kav 118-123 Surabaya', '03156220991', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'PT. ADI PUTRO WIRA SEJATI (Mesin)', 'Jl. Bale arjosari 15 Malang', '0341-491139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'PT. ARTHAWENA SAKTI GEMILANG TANGERANG', 'Jl. Raya Serang KM 12.5 Kp Cirewed. Ds Sukadamai. Kec Cikupa. Kab.Tangerang. Propinsi Banten', '021-5960499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'PT. ASSIST SOFTWARE INDONESIA', 'Pondok Blimbing Indah Blok. E1-14 Malang 65126', '(0341) 419004/490447', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'PT. ASTRA INTERNASIONAL, TBK. (DAIHATSU MALANG/BODI REPAIR)', 'JL. LA SUCIPTO NO. 241 MALANG', '081803283186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'PT. AUTOCHEM INDUSTRY', 'Jl. Raya Gatot Subroto Km.7 Jatake Jatiuwung Tangerang Banten - 15136', '021-5900131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'PT. BROMO STEEL INDONESIA', 'Jl.RE Martadinata No. 18-20 Pasuruan', '0343-421074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'PT. CAHAYA SURYA BALI INDAH (HINO DEVISION)', 'Jl. Cokroaminoto 470 Denpasar - Bali', '0361-410909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'PT. CAHAYA SURYA BALI INDAH (TBSM)', 'Jl. Bypass Ngurahrai 110 C Denpasar', '0361-753887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'PT. CENDANA TEKNIKA UTAMA', 'Jl. Raya Sukarno Hatta - Ruko Griya Shanta NR. 24-25 Malang', '0341-496497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'PT. CM LAB DIGITAL INDONESIA', 'Jl. Seruni No.9 Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'PT. CYBER NETWORK INDONESIA', 'Jl. Gatsu Barat 333 Bali', '0361 9004770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'PT. DEMPO LASER METALINDO', 'Jl. Rungkut Industri I No. 29 Surabaya', '031-8437363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'PT. DHOHO MEDIA TELEVISI', 'Jl. Mayjend Panjaitan 1 Kediri', '0354-693999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'PT. DOT INDONESIA', 'Perum Permata Hijau No. A.15', '081290090671  (P. Tofin)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'PT. ESA SURYA ARCAPADA', 'Jl. Ir. Soekarno No. 17/266 Mojorejo', '08510150280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'PT. GIRISA TEKNOLOGI', 'Ruko Taman Borobudur Indah Kav. 33 Jl. Puncak Borobudur No. 1 Malang', '0341-4345807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'PT. Hartono Putra', 'Karangploso-Malang', '0341-402454', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'PT. INDIRATEX SPINDO', 'Jl. Raya Randuagung No.KM. 75, Randutelu, Randuangung, Kec. Singosari, Malang, Jawa Timur', '(0341) 450888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'PT. INDONESIA ONLINE ALAMAYA', 'Jl. By Pass Prof. DR. IB Mantra Puri Chandra Asri A-25 Denpasar', '0361-468408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'PT. Indonesia Power UPJP Perak Grati Pasuruan', 'Jl. Raya Sby Prob Km. 73 Grati Pasuruan', '0343 413582-3/413695-524-588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'PT. Inovasi Tjaraka Buana (MYNET)', 'Jl. Sukabirus No. 88B, Dayeuhkolot, Bandung', '022-87301369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'PT. INTERNUSA CIPTA SOLUSI PERDANA', 'Jl. Rawa Domba Kav. Agraria No 160 Jakarta Timur 13440', '021-86604931/08179983176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'PT. INTI KARYA TEKNIK - Cikarang', 'Pasar Bersih - Cikarang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'PT. KING MANUFACTURE', 'Jl. Amarta Raya No 17 Surakarta', '0271-783029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'PT. KUSUMA SATRIA DINASASRI WISATAJAYA (KUSUMA AGRO)Elektro', 'Jalan Abdul Gani Atas Batu Malang', '0341-593333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'PT. KUSUMA SATRIA DINASASRI WISATAJAYA (KUSUMA AGRO)Otomotif', 'Jalan Abdul Gani Atas Batu Malang', '0341-593333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'PT. MAXZER SOLUSI STERIL CURUNG REJO', 'CURUNG REJO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'PT. MORODADI PRIMA 2', 'Jl. Raya Randuagung No.1, Karangkunci, Randuangung, Kec. Singosari, Malang, Jawa Timur 65153', '082339291961', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'PT. MURNI DIAMOND MOTOR (BP)', 'Jl. Kalijaten No. 4 Sidoarjo', '0317874640', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'PT. NARAYA TELEMATIKA', 'Ruko Taman Borobudur Indah Kav. 33 Jl. Puncak Borobudur No. 1 Malang', '0341-4345807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'PT. PADINET MALANG', 'Malang', '0341404900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'PT. PARAMITHA AUTOGRAHA (PAG)', 'Jl. Achmad Yani No 999 Denpasar', '0361 423188 / 422274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `msguru`
--

CREATE TABLE `msguru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `chatid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msguru`
--

INSERT INTO `msguru` (`id`, `nama`, `email`, `password`, `chatid`) VALUES
(1, 'Maskuri Anwar S. Si', NULL, NULL, NULL),
(2, 'Ferdianto Utomo', NULL, NULL, NULL),
(3, 'Ervina Rufiana Wati, S.Pd', NULL, NULL, NULL),
(4, 'Wulan Ayu Sari Asmara S.Pd', NULL, NULL, NULL),
(5, 'Dwi Slamet Santoso, SS, M.Pd', NULL, NULL, NULL),
(6, 'Widodo Pangestu', NULL, NULL, NULL),
(7, 'Soebariadi S.Si', NULL, NULL, NULL),
(8, 'Nawan Cahyono M. Pd', NULL, NULL, NULL),
(9, 'Kurnia Larasati S. Pd', NULL, NULL, NULL),
(10, 'Lilik Fatmala S.Pd', NULL, NULL, NULL),
(11, 'Sari Ratna Hidayati S. Si', NULL, NULL, NULL),
(12, 'Eko Purwanto S. Pd', NULL, NULL, NULL),
(13, 'Mohammad Ardiansyah Aris Setiawan S.Pd', NULL, NULL, NULL),
(14, 'Prijo Pamudji S. Pd', NULL, NULL, NULL),
(15, 'Hadi Bintoro SS', NULL, NULL, NULL),
(16, 'Denny Tristiyanti S. Pd', NULL, NULL, NULL),
(17, 'Diah Yuaningsih S. Pd', NULL, NULL, NULL),
(18, 'Dwi Putranti Wardhani SS', NULL, NULL, NULL),
(19, 'Fitriyah Nur Diana S.Pd', NULL, NULL, NULL),
(20, 'Nita Resita S. Pd', NULL, NULL, NULL),
(21, 'Willdan P', 'willdan@gmail.com', '123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `msjurusan`
--

CREATE TABLE `msjurusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(75) DEFAULT NULL,
  `id_bidang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msjurusan`
--

INSERT INTO `msjurusan` (`id`, `nama_jurusan`, `id_bidang`) VALUES
(1, 'Multimedia', 1),
(2, 'Teknik Pengelasan', 3),
(3, 'Teknik Pembangkit Tenaga Listrik', 4),
(4, 'Teknik Sepeda Motor', 2),
(5, 'Rekayasa Perangkat Lunak', 1),
(6, 'Teknik Kendaraan Ringan', 2),
(7, 'Teknik Komputer dan Jaringan', 1),
(8, 'Teknik Pemesinan', 3),
(9, 'Teknik Audio Video', 3),
(10, 'Manageman Niaga', 3),
(11, 'Teknik Elektronika Industri', 4),
(12, 'Kimia Industri', 4),
(13, 'Animasi', 1),
(14, 'Teknik Perbaikan Bodi Otomotif', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mskategori`
--

CREATE TABLE `mskategori` (
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mskategori`
--

INSERT INTO `mskategori` (`id_kategori`, `kategori`) VALUES
(2, 'Barat');

-- --------------------------------------------------------

--
-- Table structure for table `mspembimbing`
--

CREATE TABLE `mspembimbing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pembimbing` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `chatid` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mspembimbing`
--

INSERT INTO `mspembimbing` (`id`, `nama_pembimbing`, `email`, `password`, `role`, `chatid`, `id_kategori`) VALUES
(1, 'Anthoni Rahman ST', '+6281231678058', 'antoni', NULL, NULL, NULL),
(2, 'Arif Isa Fakhrudi S. Pd', '+6281331818807', 'airifisa', NULL, NULL, NULL),
(3, 'Ervin Kurniawan S.Kom', '+6281944944916', 'ervin', NULL, NULL, NULL),
(4, 'Joko Mulyono A.Md', '+6281215805898', 'joko', NULL, NULL, NULL),
(5, 'Kamsuri S. Pd', '+6285233470102', 'kamsuri', NULL, NULL, NULL),
(6, 'Mustafa Darmanto ST', '+6285109680456', 'mustafa', NULL, NULL, NULL),
(9, 'Moch Arizal Fauzi', 'mhmmdarzl@gmail.com', 'much12', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mspembimbingperusahaan`
--

CREATE TABLE `mspembimbingperusahaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pembimbing` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mspembimbingperusahaan`
--

INSERT INTO `mspembimbingperusahaan` (`id`, `nama_pembimbing`, `email`, `password`, `role`) VALUES
(1, 'Moch Arizal Fauzi', 'testing@gmail.com', 'test', 4),
(3, 'Muhammad Andika Dayu Anglita Putra', 'andika@gmail.com', 'andika', 4);

-- --------------------------------------------------------

--
-- Table structure for table `msrole`
--

CREATE TABLE `msrole` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `msrole`
--

INSERT INTO `msrole` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Siswa'),
(3, 'Pembimbing Sekolah'),
(4, 'Pembimbing Perusahaan'),
(5, 'Orang Tua'),
(6, 'Wali Kelas');

-- --------------------------------------------------------

--
-- Table structure for table `mssiswa`
--

CREATE TABLE `mssiswa` (
  `nis` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL,
  `id_company` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mssiswa`
--

INSERT INTO `mssiswa` (`nis`, `nama`, `id_jurusan`, `id_guru`, `email`, `password`, `jam_masuk`, `jam_pulang`, `id_company`, `role`) VALUES
(18411, 'Arfando Wiyono Pamungkas', 1, 1, 'test@test.com', 'test', '07:00:00', '17:00:00', 1, 2),
(18615, 'Ahmad Faiz Satriawan', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2),
(18640, 'Elgi Aqmal Firdaus', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2),
(18664, 'Jangkung Sadewo Putro', 1, 0, NULL, NULL, NULL, NULL, 1, 2),
(18680, 'Muhammad Misbachul Fu Ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(18769, 'Galang Catur Wahyu Permadi', NULL, NULL, NULL, NULL, NULL, NULL, 31, 2),
(18823, 'Rifqi Pratama Putra', NULL, NULL, NULL, NULL, NULL, NULL, 32, 2),
(18855, 'Yoga Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, 33, 2),
(18871, 'Haidir Rahul Hammed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19115, 'Nelvi Ayunda Fatimatuzzahra', NULL, NULL, NULL, NULL, NULL, NULL, 163, 2),
(19121, 'R. Mukhlisul Ilman Muhammad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19154, 'Ananta Arviansah', NULL, NULL, NULL, NULL, NULL, NULL, 162, 2),
(19159, 'Devi Ashlihatu Amaliyah Putri', NULL, NULL, NULL, NULL, NULL, NULL, 156, 2),
(19244, 'Abdul Salam Raihan Syah Alam Sabilillah', NULL, NULL, NULL, NULL, NULL, NULL, 175, 2),
(19245, 'Abhiyasha Cipta Dewantara', NULL, NULL, NULL, NULL, NULL, NULL, 126, 2),
(19246, 'Adam Noval Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19247, 'Afif Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19248, 'Afrian Roy Anggoro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19249, 'Afrian Yuhan Fado Pradika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19250, 'Agung Hendrawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19251, 'Agung Setyawan Giantama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19252, 'Ahmad Saiful Hukama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19253, 'Aji Nugroho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19254, 'Akhsya Sukma Atikasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19255, 'Aldo Delvyano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19256, 'Al Rizky Candra Danantya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19257, 'Alvin Rafliane Dica Pramudya Wijaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19258, 'Anang Ifrandi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19259, 'Ananta Diva Pitaloka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19260, 'Andi Lorenza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19261, 'Andre Nesta Wijaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19262, 'Ar Rosy Ade Purwanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19263, 'Ari Endra Apta Sahasika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19264, 'Arya Farhan Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19265, 'Avfel Armenta Lesmana Putra', NULL, NULL, NULL, NULL, NULL, NULL, 103, 2),
(19266, 'Awwalul Ilmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19267, 'Bagas Bramantyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19268, 'Bagus Cahyo Utomo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19269, 'Bagus Tri Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19270, 'Baharudin Zakaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19271, 'Binzar Bahtiar Arlifudin Amara', NULL, NULL, NULL, NULL, NULL, NULL, 103, 2),
(19272, 'Bisma Alif Fauzin Wardani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19273, 'Cahya Ade Risma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19274, 'Danang Okta Putra Nugroho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19275, 'Daniel Kristianto Gabriel Farera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19276, 'Davin Ahnaf Eldiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19277, 'Deby Imas Nur Mawardah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19278, 'Debi Satria Tri Mardani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19279, 'Denny Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19282, 'Dhea Febrian Vanda Puspita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19283, 'Dian Cahya Pangestu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19284, 'Dikki Ilham Syahputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19285, 'Dimas Jibran Ashari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19286, 'Dimas Rachmadiyanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19287, 'Dimas Wahyu Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19288, 'Doni Ivan Rosadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19289, 'Dwi Candra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19291, 'Elvan Fahrezi Rahma Yula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19292, 'Eqistian Patria Wicaksono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19293, 'Fahmi Al Ahmad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19294, 'Fakhriza Akbar Fairuz Dewa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19295, 'Falendryal Marcho Falaqsa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19297, 'Febriyan Angga Putra Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19298, 'Fian Defris Anjasmoro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19299, 'Galang Nandita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19300, 'Galih Raka Siwi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19301, 'Gede Ryan Sanjaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19302, 'Hamsa Eka Aditya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19303, 'Hario Aditya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19304, 'Helmy Galang Malinda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19305, 'Ill Hansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19306, 'Indah Rahmawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19307, 'Jaditya Dipa Jaladri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19308, 'Kaka Rifky Al Aziz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19309, 'Kevving Etzuko', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19310, 'Kurniawan Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19311, 'La Ode Muhammad Zulhiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19312, 'M. Andhy Azka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19313, 'M. Refqi Hidayatullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19314, 'Manuel Yoga Sesario', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19315, 'Miftahul Hadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19316, 'Moch Albi Febriansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19318, 'Mochammad Alfath Akbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19319, 'Moh. Rizal Efendi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19320, 'Mohamad Nizar Baihaqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19321, 'Mohamad Yazid Habibie', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19322, 'Mohammad Elyas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19323, 'Muchamad Andika Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19324, 'Muhamad Yazid Al Bastomi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19326, 'Muhammad Arif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19327, 'Muhammad Arif Wahendra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19328, 'Muhammad Fairuz Abdal Mufid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19329, 'Muhammad Laroyba Rakha Iman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19330, 'Muhammad Thoriq Abid Yulistio', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19331, 'Muhammad Yazid Arzaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19333, 'Mukhamad Nur Alfan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19334, 'Munandar Priyo Wibisono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19335, 'Nicolas Wiroyuda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19336, 'Nur Hidayat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19337, 'Oktavia Cintya Arta Pertiwi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19338, 'Oktavian Dwi Prayoga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19339, 'Otniel Hansdai Rainfathan Hutabarat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19340, 'Penggi Ardi Angsah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19342, 'Qory Zaqla Azzahra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19343, 'Rachmad Dimas Andi Susilo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19344, 'Rachmad Gilang Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19345, 'Rahmad Hidayat Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19346, 'Ramadani Maulana Syah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19347, 'Rangga Rambu Hidayat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19348, 'Rendi Satrio Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19349, 'Rikki Nur Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19350, 'Rio Pamungkas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19351, 'Risdinata Iqbal Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19352, 'Rizal Cahya Adi Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19353, 'Roudhotul Jannah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19354, 'Saeza Andromeda Vegananda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19355, 'Syaiful Ari Maskur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19356, 'Savril Ibrahim Anwar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19357, 'Shaik Filhanlal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19359, 'Syifa Sahidah Qalbi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19360, 'Tiuzi Prima Asridho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19361, 'Vembri Novitasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19362, 'Wafa Muhammad Yusuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19363, 'Wahyu Bagus Suryananda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19364, 'Welda Kurnia Nova Hariyanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19365, 'Yoga Dwi Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19366, 'Yoga Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19367, 'Yogi Mochammad Abdul Kahfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19368, 'Yosiva Rizki Nurfitria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19369, 'Yuane Varenza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19370, 'Zaenal Arifin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19371, 'Zidan Hidayat Al Kausyar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19372, 'Achsanul Kholiqin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19373, 'Adhan Defa Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19374, 'Afrisal Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19375, 'Afrizal Nur Halim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19376, 'Ageng Ilhamsyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19378, 'Ahmad Choirul Asyuro', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19380, 'Akhmad Septian Dwi Cahyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19381, 'Alfiila Romadhona', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19382, 'Ali Khusna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19383, 'Alif Vicky Hendriansa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19384, 'Andi Rani Bayu Septian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19385, 'Arista Zhanuar Titon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19386, 'Arya Bagas Putra Nadila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19387, 'Bagas Prayogo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19388, 'Bagas Roy Pradana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19389, 'Beni Septian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19390, 'Briliant Bisma Saka Aditya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19391, 'Didin Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19392, 'Dimas Aria Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19393, 'Eka Adi Kristanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19394, 'Elia Sangu Ate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19395, 'Ernanda Ridhul Ihrom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19396, 'Erwin Kristiono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19397, 'Evan Kurnia Nuryahya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19398, 'Fatachul Alim Arisakdi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19399, 'Faza Abinsa Johari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19400, 'Fiko Ferdian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19402, 'Firman Abdul Jaelani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19404, 'Galang Badru Yaza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19405, 'Galih Rizky Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19406, 'Guntur Woro Etanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19407, 'Handak Tegas M.W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19408, 'Heksa Restu Masdiana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19409, 'Indra Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19410, 'Jofan Cahya Pradana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19411, 'Julio Sendy Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19412, 'Kiki Rafika Dahlan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19413, 'Lupus Niko Putra Priyanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19414, 'M Faizal Muzaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19415, 'M. Rizal Mantofani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19416, 'M.Ulin Nuha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19417, 'Mahdi Syarief Al Hasny', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19418, 'Miftahul Huda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19419, 'Mochamad Bintang Ryu A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19420, 'Mochammad Zanuar Reza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19421, 'Muhammad Ardiasyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19422, 'Muhammad Baihaqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19423, 'Muhammad Ismail Hidayatullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19424, 'Muhammad Mufliq Frediansah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19425, 'Muhammad Ramadani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19426, 'Muhammad Shirod Al Zidan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19427, 'Nur. Muhammad Ramadhana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19428, 'Ongky Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19429, 'Prasetya Ardhi Winata Oetomo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19430, 'Pulung Ardtya Sagotra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19431, 'Rahadian Insan Fitra Cendekia Kamila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19433, 'Rendi Adi Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19434, 'Rivan Agista', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19435, 'Rizki Sofyan Harianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19436, 'Rui Tegar Priyono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19437, 'Ryan Okky Juandisa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19438, 'Sukma Novianto Ludriansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19439, 'Trindi Septian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19440, 'Wahyu Teguh Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19441, 'Yoga Arfiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19443, 'Abdul Qodir Jailani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19444, 'Afgustian Alferransah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19445, 'Afu Asadil Akbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19446, 'Ahmad Syaifudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19448, 'Aldito Sadam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19449, 'Alfan Yulian Hadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19450, 'Ali Dwi Mashudi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19451, 'Andik Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19452, 'Andri Jamal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19453, 'Arik Yuliansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19456, 'David Dwi Christyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19457, 'Eka Rifki Ulul Amri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19458, 'Fiko Ferdiansah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19459, 'Galang Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19460, 'Gigih Dhuarma Nurdyansah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19461, 'Hadi Muhammad Zhakaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19463, 'Jery Valentino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19464, 'Kelvin Galang Samudra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19465, 'Luhur Ahmad Difa  Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19466, 'Lutvan Feri Pradana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19467, 'Maulana Afrizal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19468, 'Maulana Fatur Rohman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19469, 'Mochamad Nafis Hauzan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19470, 'Moh Zen Zain Afandi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19472, 'Mokhamad Doni Afrizal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19473, 'Muchammad Faisal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19474, 'Muhammad Badruddin Syafiq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19475, 'Muhamad Muhklis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19476, 'Renda Gusti Pramana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19477, 'Reza Diki Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19478, 'Rizki Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19479, 'Satria Ikhsan Aria Dillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19480, 'Septian Anggara Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19481, 'Wahyu Ahlul Firdaus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19482, 'Yahya Dedy Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19483, 'Yofi Hilmana Fadli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19484, 'Yoga Riza Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19485, 'Ahmad Khusnun Zaman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19486, 'Alvi Khotimah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19487, 'Ananda Elvina Sari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19488, 'Dela Egi Rahmawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19489, 'Dwita Rahmawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19490, 'Elsa Anggraeni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19491, 'Ilham Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19492, 'Khayun Rizqun Wasia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19493, 'Lily Farah Sasmita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19494, 'M. Fani Tri Erwin Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19495, 'Maristha Karin Narulita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19496, 'Maulidia Wahyuningsih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19497, 'Revina Fitri Krisnanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19498, 'Risma Ida Ariva', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19499, 'Rosa Nur Cahyani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19500, 'Shinta Puspita Dewi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19501, 'Yienza Daratista', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19502, 'Yuniar Fanny Saputri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19503, 'Achmad Dandi Putra Wijaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19504, 'Achmad Risal Montela', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19505, 'Achmad Zuhwa Nizar Zulmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19506, 'Ade Candra Wijaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19507, 'Adi Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19508, 'Aditya Riski Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19509, 'Aditya Trinanto Nugraha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19511, 'Ahmad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19512, 'Ahmad Athif Fikri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19513, 'Ahmad Saifudin Alawi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19514, 'Ahmad Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19516, 'Aldi Wanda Haristama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19517, 'Aldi Yulianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19518, 'Aldo Natalino Bernardliko', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19520, 'Ananda Bagus Oktavia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19521, 'Ananta Ferdiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19522, 'Andi Aditya Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19523, 'Andi Damai Rahardjo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19524, 'Angga Tri Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19525, 'Angger Ragil Dinar Maylian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19526, 'Aprilianto Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19527, 'Arif Affandi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19529, 'Audra Rivansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19530, 'Aureleo Duval', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19531, 'Ayu Firnanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19532, 'Azel Desca Putra Arnanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19533, 'Bagus Eka Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19534, 'Brian Ramadani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19535, 'Cahya Bintang Prakoso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19536, 'Ciko Sandy Amirulloh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19537, 'Dani Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19538, 'Deli Alfin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19539, 'Dewi Rahmawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19540, 'Dhani Nur Rahmad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19541, 'Dimas Guritno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19542, 'Dimas Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19544, 'Dino Sapta Rizki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19545, 'Dio Wahyu Wijoyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19547, 'Dwiky Yusuf Afandy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19548, 'Eko Bagus Rahmanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19549, 'Eko Susilo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19550, 'Eri Tri Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19552, 'Fadillah Noer Ashary', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19553, 'Farhan Daffa Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19554, 'Fatkhul Dhiya Ul Haqillah Al Qudus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19555, 'Febrian Putra Nugraha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19556, 'Febrian Septa Putra Prasetya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19557, 'Ferdi Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19558, 'Fiyo Apriliyo Rahmansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19559, 'Fransisco Musafet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19560, 'Galang Krisna Pramudika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19562, 'Gusti Indra Cahya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19563, 'Guvano Wildana Pramanta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19564, 'Hasrul Ginanjar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19565, 'Hermi Arif Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19566, 'Hisyam Badar Danuarta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19567, 'Indra Sucahyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19568, 'Irfan Agus Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19569, 'Irvan Yusnizar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19570, 'Isvanur Dwi Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19572, 'Jun Edi Catur Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19573, 'Koirul Hanam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19574, 'Krisna Putra Adi Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19575, 'Kurniawan Dwi Yulianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19576, 'Lintang Handal Galang Aradhana Sitangsu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19577, 'M. Adam Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19578, 'M.Deni Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19579, 'Marela Siska Dinda Wati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19580, 'Mochamad Aldo Versyo Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19581, 'Mochammad Khodir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19582, 'Mochammad Nurul Huda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19584, 'Mochammad Renaldi Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19585, 'Mohamad Denta Abdul Rosyid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19587, 'Mualif Fadhli Maula', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19588, 'Muhamad Ali Fahmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19589, 'Muhamad Misbach Suryo Nugroho', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19590, 'Muhamad Prasetyo Amarta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19591, 'Muhammad Abdy Hendrawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19592, 'Muhammad Adi Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19593, 'Muhammad Ainul Dzaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19594, 'Muhammad Adji Prasetya Darmawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19595, 'Muhammad Alfian Rizky S', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19596, 'Muhammad Alfin Syarif Hamizan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19597, 'Muhammad Amirudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19598, 'Muhammad Andy Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19599, 'Muhammad Bayu Aji Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19601, 'Muhammad Dzikryan Rifanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19602, 'Muhammad Farhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19603, 'Muhammad Hadiyyatulloh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19604, 'Muhammad Islahudin Akbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19605, 'Muhammad Nur Andika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19606, 'Muhammad Nurlianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19607, 'Muhammad Reza As Adi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19608, 'Muhammad Rizal Fahrudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19609, 'Muhammad Syahrul Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19611, 'Muhammad Wafik Wildan Zamroni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19612, 'Muhammad Yusron Arif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19613, 'Myco Wahyudha Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19614, 'Nadilla Putri Wijaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19615, 'Nadindra Sefa Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19617, 'Neda Putra C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19618, 'Nedo Putra C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19619, 'Muhammad Adam Rivaldo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19620, 'Nur Azis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19621, 'Oktavian Galih Wirandi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19622, 'Petra Febri Adi Kristian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19623, 'Priyo Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19624, 'Putra Regina Prayoga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19625, 'Raditya Surya Hermawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19627, 'Rahmat Pratama Hindarto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19628, 'Raihan Kevin Ardika Fahreza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19630, 'Rangga Januar Amayara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19631, 'Reksa Putra Adi Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19632, 'Reza Andrean Fernando', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19633, 'Rezon Aristo Efendy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19634, 'Riski Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19635, 'Risky Purba Adi Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19636, 'Risky Sahroni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19638, 'Rivky Firmansyah Al Farizi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19640, 'Rohan Irmansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19642, 'Rully Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19643, 'Ryan Wahyu Kurnianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19644, 'Ryco Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19646, 'Septa Hardi Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19647, 'Sofyan Adi Permana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19648, 'Surya Lintang Gumebyar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19650, 'Teguh Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19651, 'Tomas Adi Pranoto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19652, 'Toni Andrianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19653, 'Toriq Afif Fernanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19654, 'Valentino Frana Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19656, 'Venno Hari Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19657, 'Vila Yufen Arvino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19658, 'Wildhan Rafif Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19659, 'Wiranto Agung Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19660, 'Yuda Prasetyo Lestari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19661, 'Abdullah Moebin Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19662, 'Abdullah Roziqin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19663, 'Agung Ginanjar Mulyono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19665, 'Agus Ahmad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19666, 'Akhmad Wahyu Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19668, 'Aldi Septiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19669, 'Alfandri Setyawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19670, 'Alvin Bagus Aditya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19672, 'Anggi Narta Utama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19673, 'Aril Febrian Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19675, 'Arjun Ningrat Fajar Fadloli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19676, 'Arta Cahaya Sampurno', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19677, 'Arya Eka Putra Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19678, 'Brahmanarendra Arya Rahardja', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19679, 'Danny Baskara Wijaya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19680, 'Ditto Fransisco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19681, 'Donny Chrisendra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19682, 'Eka Mario Setyawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19683, 'Farhan Ramdani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19685, 'Fernanda Reza Syahputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19686, 'Irfan Mardiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19687, 'Jenny Septianingrum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19690, 'M. Fiki Aditya Candra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19691, 'Mohammad Ikhwanul Hakim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19692, 'Muh. David Dwiyanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19693, 'Muhamad Iqbal Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19695, 'Muhammad Fairus Zabadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19696, 'Muhammad Imam Fauzi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19697, 'Muhammad Ivani Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19699, 'Muhammad Rizki Andrianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19700, 'Naufal Akhdan Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19701, 'Novreza Arian Valen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19702, 'Rahayu Pinerkahan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19703, 'Rayhan Fauzani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19704, 'Reyvan Tresnaldi Aby Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19706, 'Reza Maulana A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19707, 'Ruly Arizqi Irfansyach', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19708, 'Ryan Abila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19709, 'Safryan Adhe Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19710, 'Saifuddin Akbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19711, 'Sandi Dewangga Priantoko', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19712, 'Satria Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19713, 'Tandi Andrian Wicaksono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19714, 'Vijay Gunawan Mahmud', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19715, 'Willy Arianto Pramana Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19716, 'Yeski Kristian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19717, 'Yohsafat Rehan Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19718, 'Yusril Aditya Yahya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19719, 'Zidan Machbubi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19721, 'Andi Yulpikar Anwar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19722, 'Ariya Pramasta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19723, 'Bagus Fadli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19724, 'Bakal Ibnu Afan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19725, 'Candra Krisna Dani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19726, 'David Aria Susanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19728, 'Dyon Mario Candra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19729, 'Fajar Arifian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19730, 'Farid Zaidan Abdillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19731, 'Frendy Flarezza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19732, 'Maulana Wahyu Putra Kusuma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19733, 'Muhamad Maulana Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19734, 'Muhammad Arwani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19735, 'Muhammad Farid Arya Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19736, 'Muhammad Muhaimin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19737, 'Muhammad Verza Kusnaendo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19738, 'Nedi Septyadiono', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19740, 'Nur Mukhlas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19741, 'Rio Ambar Frananda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19742, 'Salasa Muhammad Alim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19743, 'Septian Dimas Al Adam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19745, 'Syaheri Ramadhan Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19746, 'Vicenzo Dida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19747, 'Ade Marselia Agung Sekti W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19748, 'Arno Surya Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19749, 'Ayub Fardana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19750, 'Bunga Angnesta Arta Bhakti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19751, 'Dodik Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19752, 'Fastabichul Ayu Rahmadanti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19753, 'Muhammad Zainal Efendi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19754, 'Nanda Aji Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19755, 'Nanda Raenado', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19756, 'Okky Yulistya Pratiwi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19757, 'Ricky Andi Dwi Fernando', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19758, 'Sabilla Nur Triasa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19759, 'Adyan Ghozy Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19760, 'Agil Abdur Ruuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19761, 'Alfonsho Ady Rekliansha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19762, 'Aliffino Putra Mawardika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19763, 'Amanda Latifah Nur Pahlevy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19764, 'Ananta Wira Yudha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19765, 'Andre Edua Putra Irnanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19766, 'Aulia Dandi Firmansyah Sunardi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19768, 'Deni Setiyawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19769, 'Denny Asmara Hadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19770, 'Fayyadh Kholid Baswedan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19771, 'Ilham Aji Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19773, 'Muhamad Fiki Fahruroji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19774, 'Muhammad Arif Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19775, 'Muhammad Faizal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19776, 'Muhammad Rifki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19777, 'Nanda Marfin Yohanes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19778, 'Nur Hadi Muslimin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19779, 'Putra Yolanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19780, 'Reynaldy Harvye Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19781, 'Rifki Bagus Naufal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19782, 'Riski Vrayoga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19783, 'Rizal Himawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19786, 'Sulton Reisyha Afif Dinulloh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19787, 'Tria Agustin Nova Berliana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19788, 'Yusuf Halim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19789, 'Zefa Singgih Syahputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19790, 'Zefanya Febrian Ardianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19791, 'Abril Dhea Joti Pramanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19792, 'Adisty Nurjanah Ana Kirana', NULL, NULL, NULL, NULL, NULL, NULL, 82, 2),
(19794, 'Ahmad Sutikno Alfian', NULL, NULL, NULL, NULL, NULL, NULL, 82, 2),
(19795, 'Akmal', NULL, NULL, NULL, NULL, NULL, NULL, 95, 2),
(19796, 'Aliefian Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, 93, 2),
(19798, 'Aqshal Rizqullah', NULL, NULL, NULL, NULL, NULL, NULL, 82, 2),
(19799, 'Ardhillah Habibi Alfath', NULL, NULL, NULL, NULL, NULL, NULL, 205, 2),
(19800, 'Ariq Artriska', NULL, NULL, NULL, NULL, NULL, NULL, 81, 2),
(19801, 'Bagas Lintang Wicaksono', NULL, NULL, NULL, NULL, NULL, NULL, 222, 2),
(19802, 'Bagus Kurniawan Hafizh', NULL, NULL, NULL, NULL, NULL, NULL, 32, 2),
(19803, 'Bintang Indi Nargari', NULL, NULL, NULL, NULL, NULL, NULL, 59, 2),
(19804, 'Della Anggraeni', NULL, NULL, NULL, NULL, NULL, NULL, 54, 2),
(19805, 'Dida Wahyu Wirayoga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19806, 'Didan Putra Surya', NULL, NULL, NULL, NULL, NULL, NULL, 203, 2),
(19807, 'Diva Dwi Puspitasari', NULL, NULL, NULL, NULL, NULL, NULL, 203, 2),
(19808, 'Farid Muhajir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19809, 'Felly Tri Ayunda Aisa', NULL, NULL, NULL, NULL, NULL, NULL, 211, 2),
(19811, 'Gusti Aji Rizky Indarto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19812, 'Ian Alif Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19813, 'Igo Geo Gigih Hio Ilhamulloh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19814, 'Jemita Satya Kiranti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19816, 'Kharisma Romadhon Eka Safitri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19818, 'Mahendra Pujo Prianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19819, 'Muhammad Akbar Ilhamka', NULL, NULL, NULL, NULL, NULL, NULL, 222, 2),
(19820, 'Muhammad Andika Dayu Anglita Putra', NULL, NULL, NULL, NULL, NULL, NULL, 222, 2),
(19821, 'Novan Hadi Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19823, 'Putra Alan Rosydi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19824, 'Rachmad Nur Aditya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19825, 'Rafif Pradyatma Surya Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19826, 'Rahmad Nakula Zanuar', 1, 1, NULL, NULL, '08:00:00', '15:00:00', 1, 2),
(19828, 'Risqullah Fani Fadhil Rifat', NULL, NULL, NULL, NULL, NULL, NULL, 222, 2),
(19829, 'Robby Prawira Eka Pasha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19830, 'Sevin Ariel Leonanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19831, 'Solichan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19832, 'Sonia Putri Oktavia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19833, 'Suhardi Priyanata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19834, 'Surya Azhar Kusuma Haris', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19835, 'Tegar Primantara', NULL, NULL, NULL, NULL, NULL, NULL, 205, 2),
(19836, 'Vaskho Mochammad Andilla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19837, 'Vera Kristina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19838, 'Wahyu Prima Yuda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19839, 'Yogie Erlangga Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19840, 'Yulia Vaiza Febriana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19841, 'Yusinta Putri Febriana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19842, 'Achmadi Gusrif Kandola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19843, 'Aditiya Prasetiyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19844, 'Agung Brahmastha Krisnha Jagad Satria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19845, 'Ahmad Fashihudin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19846, 'Ahmad Tegar Dwipa Yoga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19847, 'Alexander Setya Pribadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19848, 'Bielqies Phatherecia Shelvyne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19851, 'Diovanda Reyhanandi Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19853, 'Eka Aditya Firdaus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19854, 'Faisal Aditya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19855, 'Febriyanti Naela Mahmudah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19856, 'Friscillia Melani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19857, 'Gilang Septiano', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19859, 'Ifa Kurniasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19860, 'Ilham Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19862, 'Jenni Presila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19863, 'Maftuh Afandi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19864, 'Mochamad Yanuar Karisma Yuda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19865, 'Muhammad Bashofi Sudirman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19866, 'Muhammad Shobirin Misbah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19868, 'Nia Oktavia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19869, 'Nuryatus Zahroh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19871, 'Putri Wahyuningsih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19872, 'Radhiva Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19873, 'Rahadian Yuwananda A. S.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19874, 'Raki Ammar Ismoko', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19875, 'Reno Iman Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19877, 'Rizal  Nur Afandi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19878, 'Sahrul Kirom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19879, 'Sandi Andika Akbarrulloh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19880, 'Steven Geovino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19881, 'Syahlan Hadi Nur Ichwan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19882, 'Syaifi Anwar Hidayatullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19883, 'Teggar Saputra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19884, 'Vera Anis Fitria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19885, 'Verlina Margaretha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19886, 'Yoga Dafin Ferdiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19887, 'A As Mia Desfitria Sari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19888, 'Abdul Ghofur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19889, 'Achmad Affandy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19890, 'Ady Ryan Yosafat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19891, 'Agathis Dammara Attariqi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19892, 'Ahmad Nasrukhan Andriansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19893, 'Akhdan Hafish Sofyan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19894, 'Alexander Benyamin Dandra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19895, 'Alfino Radtya Amanullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19896, 'Allaudin Bagus Satriaji', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19897, 'Anandia Shafina Salsabillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19898, 'Anggina Rose', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19899, 'Arya Putra Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19900, 'Asha Aurora Ninawa Mayantis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19901, 'Asnely Alvi Nurillah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19902, 'Aulia Dina Rosyidah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19903, 'Ayu Yulia Anggraeni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19904, 'Azhar Zakaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19905, 'Bachrul Ulum Ali Mahmud', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19906, 'Bawon Meilina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19907, 'Berlian Maharani Citra Dewi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19908, 'Bimo Manggala Vira Sakti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19909, 'Bintang Putra Sadewa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19911, 'Daffa Rizqi Septiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19912, 'Danang Alya Prakoso', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19916, 'Dendy Krisdianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19918, 'Dhea Nur Aisyiah Efendi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19919, 'Dian Permata Sari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19920, 'Diana Novita Sari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19921, 'Dicki Valentino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19922, 'Dio Febian Aditama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19923, 'Dita Via Pramesella', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19924, 'Djaduex  Saka Nugraha', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19925, 'Dwi Fatiawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19926, 'Dwiky Alfikriansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19927, 'Eka Bayu Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19929, 'Erly Tsamarah Difa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19930, 'Fahri Misbahul Munir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19931, 'Fajar Wahyu Setiawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19932, 'Fallah Adam Wardhana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19933, 'Farah Mufidah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19934, 'Febiana Wulandari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19935, 'Febriana Eka Alviandani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19936, 'Firman Syah Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19937, 'Galih Kusuma Putra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19939, 'Hanif Zulfikri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19941, 'Hendra Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19942, 'Hening Augusty Mukafaah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19943, 'Johan Aditya Hadinata', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19944, 'Juvita Avianti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19945, 'Kaisar Yulian Al Akbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19946, 'Khana Putri Mega', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19947, 'Khoirul Adi Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19949, 'Kurnia Nur Aisyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19950, 'M. Dimas Ariya Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19952, 'Meisya Afifa Rahma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19953, 'Miftahul Huda Nur Azis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19954, 'Moch Arizal Fauzi', 5, 5, 'mocharizalfauzi@gmail.com', 'much12', '07:00:00', '17:00:00', 205, 2),
(19955, 'Muhammad Arya Fandi Fardana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19956, 'Muhammad Aditiya Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19957, 'Muhammad Alief Rahman Hakim', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19958, 'Muhammad Alif Jamaludin Baharsyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19959, 'Muhammad Bagus Ferdiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19960, 'Muhammad Faiq Hidayatullah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19961, 'Muhammad Farhan Hamid', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19962, 'Muhammad Nur Ramadhan Syah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19963, 'Muhammad Rizki Zulfikar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19964, 'Nanda Dwiky Prayoga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19965, 'Nazhima Fakhira Farhaz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19966, 'Nicko Suhadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19967, 'Ninda Rosita Dewi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19969, 'Nur Ahmad Fajar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19970, 'Putra Dwi Cahyadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19971, 'Putri Novita Sari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19972, 'Putri Wahyu Oktaviani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19973, 'Raden Osa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19974, 'Rama Andika Priambada', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19975, 'Rayhan Hari Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19976, 'Riza Adhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19977, 'Roby Zainul Abidin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO `mssiswa` (`nis`, `nama`, `id_jurusan`, `id_guru`, `email`, `password`, `jam_masuk`, `jam_pulang`, `id_company`, `role`) VALUES
(19978, 'Safa Bintang Nabiyan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19979, 'Salsa Nabila Marta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19980, 'Selvita Aldina Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19981, 'Shirojul Munir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19982, 'Silfia Anggraeni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19983, 'Syalomiele Pratama Agustinus Susanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19985, 'Teuqilla Arni Sugianto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19986, 'Yanuar Bayu Yudhantara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19987, 'Yefta Putra N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19988, 'Yoan Putra Adetya', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19989, 'Yoga Adi Pratama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19990, 'Zahwa Dewi Syahrani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19991, 'Adinda Mutia Syahrani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19992, 'Adinda Nova Eliza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19993, 'Adinda Zahra Safira Nisaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19994, 'Aisyah Ulandari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19996, 'Amelia Amanda Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19997, 'Anggelya Mery Ningtyastuti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19998, 'Anjelina Lidia Ananda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(19999, 'Ariska Rahayu Ningtias', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20000, 'Aryani Rizky Rahmalia Ivani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20001, 'Aulia Jihan Salsabila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20002, 'Azizah Senja Mega Sari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20003, 'Daffa Nawwaf Nadirraihan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20004, 'Delva Ayu Riwanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20005, 'Devi Widia Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20006, 'Diah Ayu Safitri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20007, 'Dimas Dedi Septian', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20008, 'Dinda Ayu Patricia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20010, 'Dwi Nur Aini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20011, 'Eki Sutatik Irianti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20012, 'Eko Eriko Kusuma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20013, 'Elen Agustin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20014, 'Erlina Indah Safira', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20015, 'Feni Fatmasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20016, 'Fidiya Sri Astutik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20017, 'Finta Aulia Widianti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20018, 'Firdiah Agustina Sukmawati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20019, 'Fitri Dwi Pratiwi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20020, 'Fitri Muaiminah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20021, 'Gadhing Kusumaning Dewy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20023, 'Icha Valia Rahma Desianti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20024, 'Ifadatul Ummah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20025, 'Ika Syafaroh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20026, 'Ima Maulidah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20027, 'Indah Sutrianingsih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20029, 'Isma Fitri Nuraini', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20031, 'Levia Pinky Leoni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20032, 'Mariska Dwi Damayanti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20033, 'Martha Dinatha Avrilla Vanessa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20034, 'Meidensha Kurnia Fernanda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20035, 'Nabila Ardistyasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20036, 'Ning Anida', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20037, 'Nouval Ahmad Arhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20038, 'Nova Nur Aisyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20039, 'Pravangasta Sulihyang Levi Helda Valing Hyen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20040, 'Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20041, 'Putri Agustina Rahayu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20042, 'Putri Auliasari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20043, 'Putri Aurelia Munika', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20045, 'Quiesha Amalia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20047, 'Ranita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20048, 'Ria Adelia', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20049, 'Riska Dwi Hafifa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20051, 'Sasnanita Bintang V', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20052, 'Sherlina Wayu Astutik', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20053, 'Shesi Putri Prameswari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20054, 'Silvina Febiyanti', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20055, 'Siti Komariah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20056, 'Syifa Alifianti Andariesta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20057, 'Tri Dwi Eliga', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20058, 'Tsani Isma Sifana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20059, 'Tsaniatun Nabila', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20060, 'Wahyu Eka Lestari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20061, 'Wiji Lestari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20062, 'Winda Cindi Nurliyanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20063, 'Yuliati', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20064, 'Zulkaisa Ngaris Pramudita', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20065, 'Ahmat Rojikin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20066, 'Aldo Rizal Bagir Mahdi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20067, 'Angga Satria Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20068, 'Ismawanto', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20069, 'Jasmine Ayu Qumalya Putri', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20070, 'Muhamad Firdaus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20071, 'Muhammad Enrico Dwi Putra Perdana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20072, 'Naito Yuuki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20073, 'Rahmat Hadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20074, 'Rangga Elang Mustika Prabowo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20075, 'Tafania Ad Ha Safarah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20076, 'Titik Yulita Sari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20077, 'Dea Aulia Rachma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20078, 'Alvian Adi Purnama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20079, 'Aditia Eko Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20080, 'Felix Vannial Ramadhan Fiari', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20081, 'Salsabilla Zahrani Purnama', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20084, 'Raihan Almer Maulana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2),
(20085, 'Farhad Ehla Muzaki', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbjadwal`
--

CREATE TABLE `tbjadwal` (
  `id` int(11) NOT NULL,
  `id_pembimbing` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbjadwal`
--

INSERT INTO `tbjadwal` (`id`, `id_pembimbing`, `id_company`, `tanggal`) VALUES
(5, 1, 1, '2020-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `tbjurnal`
--

CREATE TABLE `tbjurnal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `waktu_masuk` datetime DEFAULT NULL,
  `waktu_pulang` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `kegiatan_kerja` text DEFAULT NULL,
  `prosedur_pengerjaan` text DEFAULT NULL,
  `spesifikasi_bahan` text DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `status_hadir` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbjurnal`
--

INSERT INTO `tbjurnal` (`id`, `nis`, `waktu_masuk`, `waktu_pulang`, `status`, `kegiatan_kerja`, `prosedur_pengerjaan`, `spesifikasi_bahan`, `longitude`, `latitude`, `status_hadir`) VALUES
(3, 18411, '2020-11-08 11:26:45', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 18411, '2020-11-09 09:43:14', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 18411, '2020-11-10 19:30:28', NULL, 1, NULL, NULL, NULL, '112.5428757', '-7.8938252', NULL),
(7, 18411, '2020-11-11 10:57:42', NULL, 2, 'Mamang', 'Saya mau ngisi jurnal', 'Tolong ACC ya', '112.6018943', '-7.9273865', NULL),
(8, 18411, '2020-11-20 14:30:50', '2020-11-20 15:03:01', 2, 'Tgjj', 'Ggg', 'Vhh', '112.6018943', '-7.9273865', NULL),
(9, 18411, '2020-11-21 09:56:09', NULL, 0, NULL, NULL, NULL, '112.5428757', '-7.8938252', NULL),
(10, 18615, '2020-11-21 09:56:09', NULL, 2, NULL, NULL, NULL, '112.5428757', '-7.8938252', NULL),
(11, 18615, '2020-11-22 09:56:09', NULL, 1, NULL, NULL, NULL, '112.5428757', '-7.8938252', NULL),
(12, 19826, '2020-12-02 08:00:00', '2020-12-02 15:00:00', 1, 'masak ayam', 'goreng ayam di wajan', 'wajan', NULL, NULL, 0),
(13, 18664, '2020-12-01 07:00:00', '2020-12-01 15:00:00', 1, 'sad', 'sda', 'sd', NULL, NULL, 0),
(14, 18411, '2020-12-03 08:00:00', '2020-12-03 15:00:00', 1, 'Cutting video dan pengambilan gambar', '- Hidupkan laptop/PC\r\n- Buka software editing video\r\n- Cari file video\r\n- Editing video', '- Laptop\r\n- Internet\r\n- Video Editor\r\n- Browser', NULL, NULL, NULL),
(15, 18615, '2020-12-04 08:00:00', '2020-12-04 15:00:00', 1, 'Pembersihan mesin mobil', '- Keluarkan baut yang dibutuhkan untuk di copot\r\n- Bersihkan menggunakan kompresor atau alat lainya\r\n- Tutup kembali dengan baut yang di lepas tadi', '- Kompresor\r\n- Kunci pas\r\n- Kunci T\r\n- Obeng', NULL, NULL, NULL),
(16, 18769, '2020-12-05 08:00:00', '2020-12-05 15:00:00', 1, 'Templating website', '- Hidupkan laptop/PC\r\n- Buka software editing code\r\n- Buka file code templating\r\n- Edit code ', '- Laptop\r\n- Internet\r\n- Browser\r\n- Software editing code', NULL, NULL, NULL),
(17, 18823, '2020-12-06 08:00:00', '2020-12-06 15:00:00', 1, 'Pembuatan animasi singkat', '- Hidupkan laptop/PC\r\n- Buka software pembuatan animasi\r\n- Buka file animasi\r\n- Pembuatan animasi singkat', '- Laptop\r\n- Internet\r\n- Browser\r\n- Software animas', NULL, NULL, NULL),
(18, 18855, '2020-12-07 08:00:00', '2020-12-07 15:00:00', 1, 'Pengambilan gambar film', '- Hidupkan kamera \r\n- Atur kecerahan atau mode kamera\r\n- Siapkan tripod atau stabilizer\r\n- Rekam pengambilan video', '- Kamera\r\n- Tripod\r\n- Stabilizer\r\n- Lightning', NULL, NULL, NULL),
(19, 19115, '2020-12-08 08:00:00', '2020-12-08 15:00:00', 1, 'Backend Website', '- Hidupkan laptop\r\n- Buka software editing code\r\n- Buka file code\r\n- Pembuatan backend website\r\n- Upload server', '- Laptop\r\n- Browser\r\n- Internet\r\n- Software editing code', NULL, NULL, NULL),
(20, 19154, '2020-12-09 08:00:00', '2020-12-09 15:00:00', 1, 'Pembersihan mesin motor', '- Buka body motor \r\n- Copot baut yang terdapat di motor\r\n- Bersihkan komponen motor dengan kompresor\r\n- Tutup kembali body tadi', '- Obeng\r\n- Kunci Pas\r\n- Kunci L\r\n- Kompresor', NULL, NULL, NULL),
(21, 19159, '2020-12-10 08:00:00', '2020-12-10 15:00:00', 1, 'Teknik Pemotongan Kawat listrik rumah', '- Bersihkan kawat listrik\r\n- Atur pemotongan kawat yang sesuai\r\n- Potong kawat menggunakan tang yang sesuai dengan kawat', '- Kawat\r\n- Tang\r\n- Kain pembersih\r\n- Sarung tangan karet', NULL, NULL, NULL),
(22, 19244, '2020-12-11 08:00:00', '2020-12-02 15:00:00', 1, 'Pembuatan senyawa sulfur', '- Siapkan botol kaca untuk wadah\r\n- Tuangkan senyawa ke dalam botol kaca\r\n- Campur dengan senyawa lain \r\n- Aduk hingga merata di atas api sedang', '- Senyawa sulfur\r\n- Botol kaca\r\n- Kompor kecil\r\n- Masker khusu', NULL, NULL, NULL),
(23, 19245, '2020-12-13 08:00:00', '2020-12-13 15:00:00', 1, 'Teknik penataan kosmetik', '- Ambil Barang kosmetik\r\n- Keluarkan dari box atau wadah\r\n- Letakan di dalam rak kosmetik\r\n- Sesuaikan penataan yang rapi', '- Alat Kosmetik\r\n- Rak khusus kosmetik\r\n- Buku pencatatan barang', NULL, NULL, NULL),
(24, 19271, '2020-12-14 08:00:00', '2020-12-14 15:00:00', 1, 'Front end website', '- Hidupkan Laptop/PC\r\n- Buka software editing code\r\n- Buka file code \r\n- Editing code front end dengan bootstrap,html,css dan lain nya\r\n', '- Laptop\r\n- Software editing code\r\n- Browser\r\n- Internet', NULL, NULL, NULL),
(25, 19265, '2020-12-15 08:00:00', '2020-12-15 15:00:00', 1, 'Pembenaran bug aplikasi', '- Hidupkan Laptop/PC\r\n- Buka software editing code\r\n- Buka aplikasi \r\n- Melakukan pengecekan bug aplikasi\r\n- Editing code ', '- Laptop\r\n- Internet\r\n- Browser\r\n- Software code editing', NULL, NULL, NULL),
(26, 19792, '2020-12-01 09:00:00', '2020-12-01 17:00:00', 1, 'Bloging website', '- Hidupkan Laptop/PC\r\n- BUka software editing code\r\n- Buka browser \r\n- Editing code website bloging', '- Laptop\r\n- Internet\r\n- Browser\r\n- Software editing code', NULL, NULL, NULL),
(27, 19794, '2020-12-02 09:00:00', '2020-12-02 17:00:00', 1, 'Pengisian kontent website dengan wordpress', '- Hidupkan laptop/PC\r\n- Buka browser \r\n- Buka file website wordpress\r\n- Penambahan konten website', '- Laptop\r\n- Internet\r\n- Browser', NULL, NULL, NULL),
(28, 19795, '2020-12-03 09:00:00', '2020-12-03 17:00:00', 1, 'Pembersihan lensa kamera', '- Copot lensa kamera\r\n- Bersihkan lensa kamera dengan lap bersih\r\n- semprot dengan pembersih kamera khusus\r\n- Keringkan dengan di angin angin', '- Kamera\r\n- Kain\r\n- Kain lap bersih', NULL, NULL, NULL),
(29, 19796, '2020-12-04 09:00:00', '2020-12-04 17:00:00', 1, 'Penginstalan software pembuat animasi', '- Hidupkan laptop/PC\r\n- Download software\r\n- Instal software sampai selesai\r\n- Coba buat satu project animasi', '- Laptop\r\n- Browser\r\n- Software pembuat animasi\r\n- Internet', NULL, NULL, NULL),
(30, 19798, '2020-12-05 09:00:00', '2020-12-03 17:00:00', 1, 'Pembuatan Login aplikasi android', '- Hidupkan laptop/PC\r\n- Buka software android studio\r\n- Buka file apk\r\n- Editing code dan layout\r\n- Run aplikasi', '- Laptop\r\n- Internet\r\n- Android studio\r\n- Tablet/Handphone', NULL, NULL, NULL),
(31, 19799, '2020-12-06 09:00:00', '2020-12-06 17:00:00', 1, 'Pembuatan aplikasi desktop rumah makan', '- Hidupkan laptop?PC\r\n- Buka software netbeans\r\n- Buka file project\r\n- Editing dan layouting project\r\n- Uji coba RUN project', '- Laptop\r\n- Internet\r\n- Software netbeans\r\n- Xampp', NULL, NULL, NULL),
(32, 19800, '2020-12-07 08:00:00', '2020-12-07 17:00:00', 1, 'Penggantian cakram motor', '- Copot ban motor\r\n- Copot baut pada cakram\r\n- Bersihkan tempat cakram\r\n- Copot kabel yang tersambung ke cakram\r\n- Pasang cakram baru\r\n- Pasang ban dan kabel cakram kembali', '- Obeng\r\n- Kunci pas\r\n- Kunci T \r\n- Kunci L\r\n- Lap kain', NULL, NULL, NULL),
(33, 19801, '2020-12-08 09:00:00', '2020-12-08 17:00:00', 1, 'Pembersihan karburator motor', '- LEpas body yang menututupi karburator\r\n- Lepas karburator \r\n- Bersihkan karburator dengan kompresor dan cairan pembersih khusus\r\n- Pasang kembali karburator', '- Kompresor\r\n- Obeng\r\n- KUnci pas \r\n- Kunci L\r\n- Cairan pemebersih khusus', NULL, NULL, NULL),
(34, 19802, '2020-12-10 09:00:00', '2020-12-10 17:00:00', 1, 'Editing video dan color grading', '- Hidupkan laptop/PC\r\n- Buka software editing video\r\n- Buka file video\r\n- Editing video \r\n- Penambahan Color grading pada video', '- Laptop\r\n- Software editing video\r\n- Internet', NULL, NULL, NULL),
(35, 19804, '2020-12-11 09:00:00', '2020-12-11 17:00:00', 1, 'Pengecekan stok barang swalayan', '- Cek stok barang di gudang stok\r\n- Ceklist barang di buku stok\r\n- upload data di komputer swalayan', '- Buku stok\r\n- Komputer\r\n- Internet', NULL, NULL, NULL),
(36, 19803, '2020-12-12 09:00:00', '2020-12-12 17:00:00', 1, 'Ganti oli mobil', '- Bershikan tutup oli terlebih dahulu\r\n- Buka tutup oli\r\n- Taruh wadah untuk menampung oli bekas\r\n- Tuangkan oli baru dengan corong', '- Corong\r\n- Oli\r\n- Lap kain\r\n- Kunci pas\r\n- Kunci y', NULL, NULL, NULL),
(37, 19806, '2020-12-13 09:00:00', '2020-12-13 17:00:00', 1, 'Penambahan Json dan JavaScript website', '- Hidupkan Laptop/PC\r\n- Buka software Editing code\r\n- Tambahkan code Json dan JS\r\n- Upload code', '- Internet\r\n- Browser\r\n- Laptop\r\n- Software editing code', NULL, NULL, NULL),
(38, 19807, '2020-12-14 09:00:00', '2020-12-14 17:00:00', 1, 'Penggantian konten about us website', '- Hidupkan Laptop/PC\r\n- Buka software editing code\r\n- Buka website pada browser\r\n- Ganti konten pada file code website', '- Internet\r\n- Laptop\r\n- Software editing code\r\n- Browser', NULL, NULL, NULL),
(39, 19809, '2020-12-15 09:00:00', '2020-12-15 17:00:00', 1, 'Instalasi jaringan network', '- Siapkan router network\r\n- Pasang kabel network\r\n- Instalasi network pada laptop/PC\r\n- Sambungkan kabel pada pemancar network', '- Laptop\r\n- Router\r\n- Kabel network\r\n- Tang pemutus kabel khusus', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_monitoring`
--

CREATE TABLE `tb_monitoring` (
  `id_monitoring` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL,
  `tgl_monitoring` date DEFAULT NULL,
  `division` varchar(75) NOT NULL,
  `evaluasi_hasil` text DEFAULT NULL,
  `penyelesaian` text DEFAULT NULL,
  `id_company` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_monitoring`
--

INSERT INTO `tb_monitoring` (`id_monitoring`, `id_user`, `tgl_monitoring`, `division`, `evaluasi_hasil`, `penyelesaian`, `id_company`) VALUES
(1, 3, '2020-11-16', 'TIK, ', 'Tidak Ada', 'Tidak Ada', 222),
(2, 3, '2020-11-19', 'TIK, ', 'Tidak Ada', 'Tidak Ada', 222),
(3, 3, '2020-12-04', 'TIK', 'Kurangnya Disiplin', 'Meeting untuk memberi solusi', 205);

-- --------------------------------------------------------

--
-- Table structure for table `tb_monitoring_detail`
--

CREATE TABLE `tb_monitoring_detail` (
  `id_monitoring_detail` bigint(20) NOT NULL,
  `id_monitoring` bigint(20) NOT NULL,
  `nis_siswa` bigint(20) NOT NULL,
  `check_jurnal` int(1) DEFAULT NULL,
  `check_apd` int(1) DEFAULT NULL,
  `check_rambut` int(1) DEFAULT NULL,
  `check_lksp` int(1) DEFAULT NULL,
  `check_kinerja` int(1) DEFAULT NULL,
  `check_penampilan` int(1) DEFAULT NULL,
  `alpa_siswa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_monitoring_detail`
--

INSERT INTO `tb_monitoring_detail` (`id_monitoring_detail`, `id_monitoring`, `nis_siswa`, `check_jurnal`, `check_apd`, `check_rambut`, `check_lksp`, `check_kinerja`, `check_penampilan`, `alpa_siswa`) VALUES
(1, 1, 19801, 1, NULL, NULL, NULL, 1, 1, '12 April 2019'),
(2, 1, 19819, NULL, NULL, 1, 1, 1, NULL, '16 April 2019'),
(3, 1, 19820, 1, 1, NULL, NULL, NULL, 1, '18 Mei 2019'),
(4, 1, 19828, 1, NULL, NULL, NULL, 1, 1, '19 Februari 2020'),
(5, 2, 19801, 1, NULL, 1, NULL, 1, NULL, '12 April 2019'),
(6, 2, 19819, NULL, 1, 1, 1, NULL, NULL, ''),
(7, 2, 19820, 1, NULL, NULL, NULL, 1, 1, ''),
(8, 2, 19828, 1, NULL, NULL, 1, NULL, 1, NULL),
(9, 3, 19954, 1, NULL, 1, NULL, 1, 1, NULL),
(10, 3, 19835, NULL, 1, NULL, 1, NULL, 1, NULL),
(11, 3, 19954, NULL, 1, 1, NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `msadmin`
--
ALTER TABLE `msadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msbidang`
--
ALTER TABLE `msbidang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mscompany`
--
ALTER TABLE `mscompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msguru`
--
ALTER TABLE `msguru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msjurusan`
--
ALTER TABLE `msjurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mskategori`
--
ALTER TABLE `mskategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `mspembimbing`
--
ALTER TABLE `mspembimbing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mspembimbingperusahaan`
--
ALTER TABLE `mspembimbingperusahaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msrole`
--
ALTER TABLE `msrole`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mssiswa`
--
ALTER TABLE `mssiswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tbjadwal`
--
ALTER TABLE `tbjadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbjurnal`
--
ALTER TABLE `tbjurnal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  ADD PRIMARY KEY (`id_monitoring`);

--
-- Indexes for table `tb_monitoring_detail`
--
ALTER TABLE `tb_monitoring_detail`
  ADD PRIMARY KEY (`id_monitoring_detail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msadmin`
--
ALTER TABLE `msadmin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `msbidang`
--
ALTER TABLE `msbidang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mscompany`
--
ALTER TABLE `mscompany`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `msguru`
--
ALTER TABLE `msguru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `msjurusan`
--
ALTER TABLE `msjurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mskategori`
--
ALTER TABLE `mskategori`
  MODIFY `id_kategori` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mspembimbing`
--
ALTER TABLE `mspembimbing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mspembimbingperusahaan`
--
ALTER TABLE `mspembimbingperusahaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `msrole`
--
ALTER TABLE `msrole`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mssiswa`
--
ALTER TABLE `mssiswa`
  MODIFY `nis` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20086;

--
-- AUTO_INCREMENT for table `tbjadwal`
--
ALTER TABLE `tbjadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbjurnal`
--
ALTER TABLE `tbjurnal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tb_monitoring`
--
ALTER TABLE `tb_monitoring`
  MODIFY `id_monitoring` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_monitoring_detail`
--
ALTER TABLE `tb_monitoring_detail`
  MODIFY `id_monitoring_detail` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
