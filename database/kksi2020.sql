-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2020 at 06:56 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kksi2020`
--

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
(4, 'Elektro');

-- --------------------------------------------------------

--
-- Table structure for table `mscompany`
--

CREATE TABLE `mscompany` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(75) DEFAULT NULL,
  `alamat_perusahaan` text DEFAULT NULL,
  `telp_perusahaan` varchar(75) DEFAULT NULL,
  `nama_hrd` varchar(100) DEFAULT NULL,
  `telp_hrd` varchar(25) DEFAULT NULL,
  `id_bidang` int(11) DEFAULT NULL,
  `id_pembimbing` int(11) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `id_pembimbing_perusahaan` int(11) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mscompany`
--

INSERT INTO `mscompany` (`id`, `nama_perusahaan`, `alamat_perusahaan`, `telp_perusahaan`, `nama_hrd`, `telp_hrd`, `id_bidang`, `id_pembimbing`, `longitude`, `latitude`, `id_pembimbing_perusahaan`, `radius`) VALUES
(1, 'BENGKEL MOBIL SOLEH\r\n', 'Torongrejo Krajan Junrejo Batu\r\n', '0341-511619\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Bengkel Supri', 'Raya Beji No 87', '08123223578', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'PT. MITRA SEHATI MAJU BERSAMA', 'Kawasan Industri Candi Blok 20 No 1A Semarang', '02476175852', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'PT. NUSANTARANTAMA MULTI MEDIA', 'Jl. Bunga Andong Selatan Kav. 12 Malang', '0341 402055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'SMK PGRI 3 MALANG', 'Jl. Tlogomas IX No 29 Malang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'SURYA KENCANA', 'Jl. Candi Panggung Kota Malang', '081235727779', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Transmart MX', 'Jl. Veteran Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'AHASS TONGAN MALANG', 'Jl. Ade Irma Suryani', '0341-325220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'ALFAMART GEMEKAN MOJOKERTO', 'Jl. Raya Brangkal MOJOKERTO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'ALFAMART JATILANGKUNG MOJOKERTO', 'Jl Raya Pacet KM 3 RT :01 RW :01 Pungging MOJOKERTO', '081294670767', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'ALFAMART KEBON WARIS PASURUAN', 'jl.kebon waris Pasuruan RT.0 RW.0', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'ALFAMART KEPULUNGAN PASURUAN', 'jln.surabaya malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ALFAMART LOSARI MOJOKERTO', ' losari mojokerto', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ALFAMART MONA SUWAYUWO PASURUAN', 'jl raya suwayuwo perum candra kartika. PASURUAN', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ALFAMART NGROWO MOJOKERTO', 'Jl. Raya Ngrowo kec. Bangsal Bangsal MOJOKERTO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'ALFAMART TAMAN SAFARI BARU', 'Dusun Palang Sukorejo RT.01 RW.01 ', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'ASCO DAIHATSU JEMBER', 'JL. HAYAM WURUK JEMBER', '0331-428665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'AUTO 2000 PECINDILAN SURABAYA', 'Surabaya', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'BAMBANG DJAJA MOJOKERTO', 'Ngoro Industri Park Block C 1-2 Ngoro Mojokerto', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'BE IMAGE CINEMA', 'Perum Asabri Bumiayu Indah Blok C3 Malang', '087859796889', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'BENGKEL BOROBUDUR', 'Jl. Borobudur Malang', '0341-7468000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'BENGKEL BUDI SERVICE', 'Jl. Kedoya Barat 16', '0818388431', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Bengkel Feri', 'Jl. Kalisongo Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'bengkel hadi', 'Jl. WR Supratman No 58 Batu', '08125254540', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'BENGKEL RAPI', 'Jl. Maijen Panjaitan 14 C Malang', '0341-552285', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Bengkel Tomo', 'Jl Bend. Sutami 49', '0818389266', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Bintang Jaya Listrik', 'Jl. Sartono SH No 6', '0341-367903 / 368224', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'CENTRA KOMPUTER GALUNGGUNG', 'Jl. Galunggung Malang', '085855955530', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'CV TATA MITRA SENTOSA', 'Jl. Sigura-gura 35 Malang', '0341578420', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'CV. GARUDA MUDA', 'Jl. Danar Jonge H4 E42 RT. 5/10 Sawojajar', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'CV. INDONESIA ONLINE', 'Jl. Flamboyan No 45B', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'CV. MEDIA UTAMA', 'Jln. Sigura-Gura', '0341-559736', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'CV. MULTI MEDIA PRATAMA', 'Jl. Bendungan Sagulingt No. 06 Malang', '0341-552497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'CV. SARI MUTIARA ABADI', 'Dsn. Krajan, Srigading Lawang Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Dako Brand & Comunication', 'Jl. Dako Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Deka Hotel Surabaya', 'HR. Muhammad No. 24, Surabaya', '081331981380', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'delta prima', 'Jl. Pisang Kipas', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'HAWAI WATERPARK', 'Jl. Graha Kencana Utara V, Karanglo, Banjararum, Kec. Singosari, Malang, Jawa Timur 65153', '(0341) 4351797', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'HEASOFT INDONESIA', 'Ruko Mergan Kelurahan Jl Terusan Mergan Raya 1 Tanjung Rejo Sukun Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'HEIMA (SUBBING TITLE)', 'Bukit Cemara Tidar Block L3 No 25-26 Karang Besuki Sukun Malang', '081298109990', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'HOTEL ARIA GAJAYANA', 'Jl. Kawi No 24, Malang', '085258774333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'HOTEL CIPTANINGATI', 'Jl. Argopuro No.154 Batu', '081555459845', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'HOTEL SWISS-BELINN MALANG', 'Jl. Veteran No.8A, Penanggungan, Klojen, Kota Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'IMARKS', 'IMARKS : RUKO SOEHAT INDAH B.4', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'INOT PRODUCTION', 'Jln. Batujajar 24 Malang', '03419393366/ 085691886545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'JAMBU LUWUK HOTEL', 'BATU', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'JANTRA BALI', 'Jl. Gunung Galunggung No. 168C', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'JANTRA JOGJAKARTA', 'JL. DAMAI 168 NGUDAL SARI HARJO, NGAGLIK, SLEMAN', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Jantra Malang', 'Jl. Ki Ageng Gribig Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'JANTRA SEMARANG', 'JL. KEDUNG MUNDU RAYA SENDANGGUWO, TEMBALANG, KEDUNGMUNDU NO. 47 SEMARANG', '02476411269', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'JANTRA SOLO', 'SOLO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'LAS Damai', 'Jl. Sarimun Gg III No. 344 RT. 03 RW.02 Kec. Junrejo Kota Batu', '0341-595748', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'MAJESTY', 'Jl. Brigjen Slamet Riadi 44 Malang', '0341-369800', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'MAXZFOOD', 'KARANG BESUKI SUKUN MALANG', '03415082875', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'MOCCA ANIMATION', 'Jl. Maninjau Raya No. 19', '085749696020', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'POLYTRON SURABAYA - KAPAS KRAMPUNG', 'SURABAYA', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'PPPPTK Pendem', 'Jl. Arhanud Ds. Junrejo Pendem Kota Batu', '081-333633311', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'PT DHARMA POLIPLAST', 'Jl. Meranti 1 Blok LI-10 Delta Silicon I Cikarang, Bekasi', '021 89909898/082817039898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'PT ISTANA MOBIL RODA MAS BANYUWANGI', 'Jl. Raya Rogojampi - pakistaji Banyuwangi', '0333 417888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'PT ISTANA MOBIL RODA MAS jember', 'Jl. Hayam Wuruk No 187-189 Jember 68136', '1331-421888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'PT. ADI PUTRO WIRASEJATI', 'Jl. Bale Arjosari 35 Malang', '087859072494', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'PT. AGUNG HIDRAULICH MACHINERY', 'Jl. Raya Pendem 50 Junrejo Batu', '0341463225', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'PT. ANGLER BIO CHEMLAB', 'Jl. Raya Sawo No. 17-19, Kel. Bridgin, Kec. Sambikerep Surabaya', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'PT. Arthawena Gemilang (Otomotif)', 'Jl. Kertanegara 45 Karangploso Malang', '0341-468500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'PT. Arthawenasakti Gemilang', 'Jl. Kertanegara 45 Karangploso Malang', '0341-468500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'PT. ASIA PROTENDO GRAHA BOYOLALI SOLO', 'Jl. Raya Solo Boyolali Km 147 Jawa tengah', '0271-780150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'PT. ASTRA INTERNASIONAL, TBK. (DAIHATSU MALANG)', 'Jl. Ahmad Yani No 175 Malang', '085100711700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'PT. DEPO GLOBAL INDONESIA', 'MALANG', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'PT. INDO JAYA MOTOR', 'Jl. LA Adi Sucipto - Sleman Yogyakarta', '0274-487982', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'PT. INDO SENTOSA TRADA INDOMOBIL (NISSAN JEMBER)', 'JL. HAYAM WURUK NO 181-183 MANGLI, KALIWATES JEMBER', '0331-412828', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'PT. INDONESIA PRECISION PART', 'Kawasan Industri Candi B3 No 9 Semarang', '0247617891', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'PT. INDONESIAN MARINE', 'Jl. Raya Ardimulya 2 Singosari', '0341-458952', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'PT. INTI KARYA TEKNIK', 'Jl. Batu Bara 32 Malang', '0341-491144', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'PT. KEDIRI GLOBAL MEDIATAMA (KS TV)', 'Jl. Ruko Hayam Wuruk Trade Center F-4/F-5 Kediri', '(0354 682888)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'PT. KOPESERA ENGINEERING', 'Jl. Jembawan 4B/21 Sawojajar 2 Malang', '0341-720654', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'PT. LG ELECTRONICS INDONESIA SC JEMBER', 'Jl. Gajah Mada No 74 - Jember', '0331-320462', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'PT. LG ELECTRONICS INDONESIA SC KEDIRI', 'Jl. Balowerti Gang I No 15 ', '0354683162', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'PT. LG ELECTRONICS INDONESIA SC MALANG', 'Jl. Letjen Sunandar Priyo Sudarmo', '0341 403900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'PT. LG ELECTRONICS INDONESIA SC SURABAYA', 'Jl. Tegal Sari no. 41 Surabaya', '031-5342277', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'PT. MAXZER SOLUSI STERIL', 'Jl. Karya Barat 21 Malang', '0341373093', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'PT. MAYANGSARI BERLIAN MOTOR JEMBER', 'Jl. Gajah mada 224 A - Jember', '0331-484366/484368', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'PT. MGG SOFTWARE ', 'Jl. Bantaran terusan 2 No. 62 Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'PT. NAYATI INDONESIA', 'Kaw. Ind. Terboyo Megah 19 Semarang', '024-6580573', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'PT. PJB UBJOM PLTU INDRAMAYU', 'Desa Sumur Adem Kec Sukra Kab Indramayu Jawa Barat', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'PT. PJB UBJOM PLTU PAITON BARU', 'Jl. Raya Surabaya-Situbondo km 142 Paiton Probolinggo', '0335-771668', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'PT. PJB UBJOM PLTU REMBANG', 'Jl. Raya Semarang Surabaya Km. 130, Desa Leran dan Desa Trahan, Kec. Sluke, Kab. Rembang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'PT. PLN (PERSERO) ULP DINOYO', 'Jln. MT Haryono Malang', '081252607611', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'PT. PLN (PERSERO) ULP KEPANJEN', 'Jl. Panji No. 2 Kepanjen', '0341-395033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'PT. PRIMAKOM SURABAYA', 'Jl. Jajar Tunggal 1 Blok D-12A Wiyung Surabaya', '0318284901;081234535981', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'PT. RETGOO SENTRIS INFORMA', 'Terra Building Lantai 2-3 Jl. Terusan Candi Mendut 9B Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'PT. Surabaya Autocomp Indonesia', 'Ngoro Industri Persada (NIP) - Mojokerto', '082230072003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'RADAR MALANG', 'Jl. Kawi II B Malang', '0341363700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'ROLEPLAY ANIMATION', 'Jl. Sulfat Agung XI/ 4C Malang', '081216489381', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'Royal ATK', 'Jl. Ciliwung No.2 Malang', '081333007790', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'ROYAL ATK DAN ROYAL OLE OLE BATU', 'Jl. Raya Soekarno No.159 Batu', '0341-5104464', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'SENTRA MEDIA KOMPUTINDO', 'Jl. Bendungan Sigura-Gura L2 No. 4 Kav 3', '0341 569636', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'SION DIGITAL PRINTING', 'Jln. Bendungan Sutami', '0341568873', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'SUZUKI TLOGOMAS MALANG', 'Jl. Raya Tlogomas Malang', '0341-575666', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'The Onsen Hot Spring Resort Songgoriti', 'Jl. Raya Arumdulu 98 Songgoriti Batu', '03415101888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Ubud Hotel & Villas', 'Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'WAHID PRINTING', 'Jl. Candi Panggung Barat 17 C Malang', '085100589438', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'YPPII BATU. ', 'Jl. Indragiri No. 5 Batu', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'ACT DIGITAL AGENCY', 'Griyasanta Blok H 253', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'AHASS ALIM JAYA MOTOR', 'Jl. Tenaga 2B - Kav 1 Malang', '0341-491005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'AHASS ASIA', 'Jl Raya Pakisaji', '0341809912', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'AHASS DIPONEGORO MOTOR', 'Jl. Diponegoro 73 Batu P. Hozi', '0341-591689', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'AHASS KOTA LAMA JAYA MOTOR', 'Jl. Laksamana Mardinata 129 B Malang', '0341-353561', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'AHASS KURNIA MOTOR BATU', 'Jl. Diponegoro 173 Batu', '0341-511888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'AHASS MURNI MOTOR', 'Jl. Galunggung 76 DE Malang', '0341-569931', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'AHASS SAHABAT JUNIOR', 'Jl. Panji Suroso No 18 Malang', '03414352557', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'AHASS SINAR JAYA MOTOR', 'JL. Letjen S. Priyosudarmo 5N Malang', '0341-407000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'ALFAMART CANDI WATES PASURUAN', 'Jl raya candi jawi Rt 05 Rw 02 Candi Wates prigen', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'ALFAMART GRIYATAMA JASEM MOJOKERTO', 'Jasem kel: Jasem kec: Ngoro kab: Mojokerto ', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'ALFAMART JAGIL PRIGEN PASURUAN', 'Alfamart Jagil Prigen', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'ALFAMART KUPANG JETIS MOJOKERTO', 'dsn kupang kec.jetis mojokerto', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'ALFAMART KUTOREJO PASURUAN', 'jln.Pahlawan Sunaryo No. 18,Magasari, kutorejo, kec. Pandaan pasuruan', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'ALFAMART LECARI PASURUAN', 'desa lecari banyak putih', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'ALFAMART LOLAWANG MOJOKERTO', 'Jl.Raya lolawang Dusun.sumberbendo RT2 RW2 Desa lolawang kec.Ngoro kab.Mojokerto', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'ALFAMART MANDURO MOJOKERTO', 'Dsn manduro rt/rw :014/003', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'ALFAMART MENANGGAL MOJOKERTO', 'Jl Raya Gajah Mada No.24,Menanggal,Mojosari,Mojokerto', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'ALFAMART MURIA MOJOKERTO', 'Jl MURIA RAYA WATES KELURAHAN WATES MAGERSAR', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'ALFAMART PENANGUNGAN PRIDGEN PASURUAN', 'jl. Raya gg. Temurejo no. 11 PASURUAN', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'ALFAMART RAYA KEPULUNGAN PASURUAN', 'Jl. Raya Kepulungan, Kepulungan Satu, Gempol, Kec. Gempol, Pasuruan, Jawa Timur 67155', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'ALFAMART RAYA SAMBIROTO MOJOKERTO', 'Jln raya sambiroto dsn sambiroto ds mlaten', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'ALFAMART RAYA TAMAN SAFARI PASURUAN', 'jl taman safari Kel. Pakukerto kec. Sukorejo Pasuruan', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'ALFAMART SUMOLAWANG MOJOKERTO', 'Perum Lawang Asri kec. Puri Sumolawang Mojokerto', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'ALFAMART SUWAYUWO PASURUAN', 'Suwayuwo dusun klanting no. 28', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'AREMA TV', 'Jl. Baiduri Pandan No.16 Tlogomas Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'ASTRA INTERNASIONAL DAIHATSU KEDIRI', 'Jl. Sukarno Hatta 152 Kediri', '0354-684412 / 081555615198', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'AUTO 2000  JEMURSARI SURABAYA', 'Jl. Raya Jemursari 215 Surabaya', '081337655487', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'AUTO 2000 KEDIRI', 'KEDIRI', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'AUTO 2000 KENJERAN', 'SURABAYA KENJERAN', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'AUTO 2000 KERTAJAYA SURABAYA', 'Surabaya', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Auto 2000 Madiun', 'Jl. Cokroaminoto Madiun', '0351-492000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Auto 2000 Pasuruan', '-', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Auto 2000 Probolinggo', 'PROBOLINGGO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'Auto 2000 Singosari', 'Jl. Dr.Cipto NO. 150 Randu Agung Singosari', '03413062000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'BATU COMPUTER', 'Jl. Diponegoro Kota Batu', '0341-5102706', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Bayu Electronic Production', 'Jl. Soekarno Hatta 44 Malang', '082257846342;081937988843', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'BDI INIDIA STUDIO ANIMASI', 'Bali Creative Industry Center (Balai Diklat Industri Denpasar) Jl. WR. Supratman No. 302 Kesiman Kertalangu, Denpasar Timur, Bali', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Bengkel Anugrah', 'Jl. MT Haryono Malang', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'BENGKEL BAGONG', 'Jl. Perusahaan 12 plambesan Tunjungtirto', '08980003423', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'Bengkel Bubut Crew', 'Jl. Raya Mendalan Wangi No. 34 Wagir Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'BENGKEL DIDIK MOTOR', 'Jl. Wukir RT. 1 RW.1', '085100686901', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'BENGKEL DIPONEGORO', 'Jl. Raya Diponegoro Batu', '085815444180', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'BENGKEL IRUL', 'Batu', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'Bengkel Kalpataru', 'Jl. Kalpataru No. 141 Malang', '0341-408731', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'bengkel M. Yusuf', 'Jl. Suropati Gg. III/14 Batu', '03419128841', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'Bengkel Setia jaya', 'Jl Sumber Wuni No 50 Lawang', '085100271712', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'BENGKEL SETYA MEKAR', 'Jl. Raya dau kab. Malang', '082244336625', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'Bengkel Soekarno Hatta Auto Service', 'Ters Candi  Mendut 37 Malang', '081252454545/08125266963', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Bengkel Takim', 'Jl. Kenanga Bulukerto - Batu', '085102323989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'BENING FOTOGRAPHI', 'Jl. Bendungan Bening 30-32 Malang', '0341567357/085649902008', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'Beringin putih', 'Jl. Kenikir no. 9 Malang', '0341-6108433', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'Breaker Video Production', 'Jl. Soekarno Hatta Indah IV No. 1 Mojolangu, Kec. Lowokwaru, Kota Malang', '085691919722', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'CAHAYA ADVERTISING', 'Jl. ters Sulfat 71 Malang', '0341-7304773', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'CARREFOUR', 'Jl. A. Yani No 2 Malang', '0341470234/082208255542', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'CV BUMI BUANA CITRA', 'Jl. Industri 78 - 82 Mangliawan Malang', '085755409719', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'CV. CAHAYA MUSTIKA', 'Jl. MT Hariyono Malang Ruko Istana Dinoyo B 11 Malang', '08155501980', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'CV. CARMEL HILL MACHINERY', 'Jl. Tumenggung Suryo 21 A Malang', '0341 492032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'CV. GREEN YUFID GROUP / ASTON PRINTER', 'Jl. Sigura - gura Barat No 20F', '0341-558893 / 085790973323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'CV. MESIN JATIM', 'Jl. Ronggolawe Kav. 18 No. 13', '085398000857', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'CV. RONGGOLAWE', 'Jl. Raya Jetis Mulyoagung No. 62 Dau Malang', '0341532138 / 7728434', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'CV. ROWELIN PERSADA UTAMA', 'Jalan Ikan Cucut No. 2 Kemirahan Malang', '081542478444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'CV. UNO MEDIA', 'Jl. Kesatrian', '085749619148', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'CYBER AKSES', 'Jl. Piranha Atas 288 Malang', '08174822412', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'DATSUN MALANG', 'JL. S.Parman 95 Malang', '0341491101', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'DESRO DESIGN', 'Jl. LS Sucipto 192 Malang', '081233610878', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'DIANS PRINTS', 'Jl. Kendalsari Barat 1 No 4 Malang', '08123302100/08113038824', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'DIGITAL PHOTO GRAPHICS', 'Jl. Raya Siligita No. 12X Nusa Dua - Bali', '0361 778034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'focus speed', 'Jl. Perusahaan No 31 Karanglo', '085234646699', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'HALMIN BALI', 'Jl. Diponegoro Komp. Pertokoan kertawijaya Blok A - 10 Denpasar', '0361-248803', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'HONDA MOBIL SUKUN', 'Jl. S. Supriadi nO 19.22 Malang', '0341363477', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'INET BALI', 'Pertokoan Imam Bonjol Square A-20', '089603012929', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'INIXINDO', 'Jl. Jemursari Utara II No 24 Surabaya', '031-8299398', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'JADIMAU.COM', 'Jl. Danau Surubec Sawojajar Kedung Kandang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'JANTRA KEDIRI', 'KEDIRI', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'JANTRA SIDOARJO', 'SIDOARJO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'JOLO DAIHATSU MALANG', 'Malang', '081236686646', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'KOCHIRO', 'Bantaran 1 No. 45 Malang', '0341 784580', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'LENTERA ADV.', 'Jl. Letda Made Putra No. 26 Bali', '0361-254263', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'MALANG TV', 'Jl. Puncak Joyo Agung Merjosari', '0341 550088', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'MALANGTIMES.COM', 'Ruko Tlogomas Square Kav. 14 Malang Jatim, ', '03415074961', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'MAXZ LAB', 'Jl. Karya Barat 21 Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'merpati bali', 'Jl Raya Kuta 67 Bali', '0361764665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'MITSUBISHI SERVICES', 'Jl Candi Mendut Utara No 15', '085855135006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'PASSANG ORNAMEN', 'Jl. MT. Haryono Gg. 2 Malang', '08125437303', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'PERDANA PAINT REPAIR', 'Jl. Jaksa Agung Suprapto No. 7 Malang', '0341-7010000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'PERUM DAMRI', 'Jl. Letjen S.Parman 11 Malang', '0341-473586', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'POLYTRON BOJONEGORO', 'Jl. Basuki Rahmad No 44 Bojonegoro', '0353-893131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'POLYTRON JEMBER', 'Jl. Letjen Suprapto No 123 C Jember', '0331-337495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'POLYTRON KEDIRI', 'Jl. Perintis kemerdekaan (ngronggo) no 23 Kediri', '0354-682235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'POLYTRON MADIUN', 'Jl. Wuni No 24 A Madiun', '0351-499248', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'POLYTRON MALANG', 'Jl. Temenggung Suryo No 100 C', '4803320', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'POLYTRON PASURUAN', 'Jl. Raden Patah. No 98 Pasuruan', '082236926686', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'POLYTRON SURABAYA', 'Jl. Rungkut Industri IV No 26 Surabaya', '031-8478098', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'PROBIS UM MALANG', 'Jl. Semarang 5 Malang', '085100577764', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'PT BERKAH UTAMA ALLOY', 'Jl. Raya Sedati  38 Desa Wedi Gedangan Sidoarjo', '031-8913500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'PT DAKWAH INTI MEDIA (TV9)', 'Jl. Raya Darmo 96 Surabaya', '031-5620999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'PT MEDIA TELEVISI LESTARI SATU (METRO TV)', 'Jl. Ketampon Ruko Permata Bintoro Kav 118-123 Surabaya', '03156220991', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'PT. ADI PUTRO WIRA SEJATI (Mesin)', 'Jl. Bale arjosari 15 Malang', '0341-491139', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'PT. ARTHAWENA SAKTI GEMILANG TANGERANG', 'Jl. Raya Serang KM 12.5 Kp Cirewed. Ds Sukadamai. Kec Cikupa. Kab.Tangerang. Propinsi Banten', '021-5960499', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'PT. ASSIST SOFTWARE INDONESIA', 'Pondok Blimbing Indah Blok. E1-14 Malang 65126', '(0341) 419004/490447', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'PT. ASTRA INTERNASIONAL, TBK. (DAIHATSU MALANG/BODI REPAIR)', 'JL. LA SUCIPTO NO. 241 MALANG', '081803283186', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'PT. AUTOCHEM INDUSTRY', 'Jl. Raya Gatot Subroto Km.7 Jatake Jatiuwung Tangerang Banten - 15136', '021-5900131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'PT. BROMO STEEL INDONESIA', 'Jl.RE Martadinata No. 18-20 Pasuruan', '0343-421074', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'PT. CAHAYA SURYA BALI INDAH (HINO DEVISION)', 'Jl. Cokroaminoto 470 Denpasar - Bali', '0361-410909', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'PT. CAHAYA SURYA BALI INDAH (TBSM)', 'Jl. Bypass Ngurahrai 110 C Denpasar', '0361-753887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'PT. CENDANA TEKNIKA UTAMA', 'Jl. Raya Sukarno Hatta - Ruko Griya Shanta NR. 24-25 Malang', '0341-496497', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'PT. CM LAB DIGITAL INDONESIA', 'Jl. Seruni No.9 Malang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'PT. CYBER NETWORK INDONESIA', 'Jl. Gatsu Barat 333 Bali', '0361 9004770', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'PT. DEMPO LASER METALINDO', 'Jl. Rungkut Industri I No. 29 Surabaya', '031-8437363', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'PT. DHOHO MEDIA TELEVISI', 'Jl. Mayjend Panjaitan 1 Kediri', '0354-693999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'PT. DOT INDONESIA', 'Perum Permata Hijau No. A.15', '081290090671  (P. Tofin)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'PT. ESA SURYA ARCAPADA', 'Jl. Ir. Soekarno No. 17/266 Mojorejo', '08510150280', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'PT. GIRISA TEKNOLOGI', 'Ruko Taman Borobudur Indah Kav. 33 Jl. Puncak Borobudur No. 1 Malang', '0341-4345807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'PT. Hartono Putra', 'Karangploso-Malang', '0341-402454', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'PT. INDIRATEX SPINDO', 'Jl. Raya Randuagung No.KM. 75, Randutelu, Randuangung, Kec. Singosari, Malang, Jawa Timur', '(0341) 450888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'PT. INDONESIA ONLINE ALAMAYA', 'Jl. By Pass Prof. DR. IB Mantra Puri Chandra Asri A-25 Denpasar', '0361-468408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'PT. Indonesia Power UPJP Perak Grati Pasuruan', 'Jl. Raya Sby Prob Km. 73 Grati Pasuruan', '0343 413582-3/413695-524-588', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'PT. Inovasi Tjaraka Buana (MYNET)', 'Jl. Sukabirus No. 88B, Dayeuhkolot, Bandung', '022-87301369', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'PT. INTERNUSA CIPTA SOLUSI PERDANA', 'Jl. Rawa Domba Kav. Agraria No 160 Jakarta Timur 13440', '021-86604931/08179983176', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'PT. INTI KARYA TEKNIK - Cikarang', 'Pasar Bersih - Cikarang', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'PT. KING MANUFACTURE', 'Jl. Amarta Raya No 17 Surakarta', '0271-783029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'PT. KUSUMA SATRIA DINASASRI WISATAJAYA (KUSUMA AGRO)Elektro', 'Jalan Abdul Gani Atas Batu Malang', '0341-593333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'PT. KUSUMA SATRIA DINASASRI WISATAJAYA (KUSUMA AGRO)Otomotif', 'Jalan Abdul Gani Atas Batu Malang', '0341-593333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'PT. MAXZER SOLUSI STERIL CURUNG REJO', 'CURUNG REJO', '-', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'PT. MORODADI PRIMA 2', 'Jl. Raya Randuagung No.1, Karangkunci, Randuangung, Kec. Singosari, Malang, Jawa Timur 65153', '082339291961', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'PT. MURNI DIAMOND MOTOR (BP)', 'Jl. Kalijaten No. 4 Sidoarjo', '0317874640', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'PT. NARAYA TELEMATIKA', 'Ruko Taman Borobudur Indah Kav. 33 Jl. Puncak Borobudur No. 1 Malang', '0341-4345807', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'PT. PADINET MALANG', 'Malang', '0341404900', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'PT. PARAMITHA AUTOGRAHA (PAG)', 'Jl. Achmad Yani No 999 Denpasar', '0361 423188 / 422274', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(20, 'Nita Resita S. Pd', NULL, NULL, NULL);

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
-- Table structure for table `mspembimbing`
--

CREATE TABLE `mspembimbing` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pembimbing` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `chatid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mspembimbing`
--

INSERT INTO `mspembimbing` (`id`, `nama_pembimbing`, `email`, `password`, `role`, `chatid`) VALUES
(1, 'Anthoni Rahman ST', '+6281231678058', 'antoni', NULL, NULL),
(2, 'Arif Isa Fakhrudi S. Pd', '+6281331818807', 'airifisa', NULL, NULL),
(3, 'Ervin Kurniawan S.Kom', '+6281944944916', 'ervin', NULL, NULL),
(4, 'Joko Mulyono A.Md', '+6281215805898', 'joko', NULL, NULL),
(5, 'Kamsuri S. Pd', '+6285233470102', 'kamsuri', NULL, NULL),
(6, 'Mustafa Darmanto ST', '+6285109680456', 'mustafa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mspembimbingperusahaan`
--

CREATE TABLE `mspembimbingperusahaan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pembimbing` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `jam_pulang` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mssiswa`
--

INSERT INTO `mssiswa` (`nis`, `nama`, `id_jurusan`, `id_guru`, `email`, `password`, `jam_masuk`, `jam_pulang`) VALUES
(18411, 'Arfando Wiyono Pamungkas', NULL, NULL, NULL, NULL, NULL, NULL),
(18615, 'Ahmad Faiz Satriawan', NULL, NULL, NULL, NULL, NULL, NULL),
(18640, 'Elgi Aqmal Firdaus', NULL, NULL, NULL, NULL, NULL, NULL),
(18664, 'Jangkung Sadewo Putro', NULL, NULL, NULL, NULL, NULL, NULL),
(18680, 'Muhammad Misbachul Fu Ad', NULL, NULL, NULL, NULL, NULL, NULL),
(18769, 'Galang Catur Wahyu Permadi', NULL, NULL, NULL, NULL, NULL, NULL),
(18823, 'Rifqi Pratama Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(18855, 'Yoga Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL),
(18871, 'Haidir Rahul Hammed', NULL, NULL, NULL, NULL, NULL, NULL),
(19115, 'Nelvi Ayunda Fatimatuzzahra', NULL, NULL, NULL, NULL, NULL, NULL),
(19121, 'R. Mukhlisul Ilman Muhammad', NULL, NULL, NULL, NULL, NULL, NULL),
(19154, 'Ananta Arviansah', NULL, NULL, NULL, NULL, NULL, NULL),
(19159, 'Devi Ashlihatu Amaliyah Putri', NULL, NULL, NULL, NULL, NULL, NULL),
(19244, 'Abdul Salam Raihan Syah Alam Sabilillah', NULL, NULL, NULL, NULL, NULL, NULL),
(19245, 'Abhiyasha Cipta Dewantara', NULL, NULL, NULL, NULL, NULL, NULL),
(19246, 'Adam Noval Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL),
(19247, 'Afif Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(19248, 'Afrian Roy Anggoro', NULL, NULL, NULL, NULL, NULL, NULL),
(19249, 'Afrian Yuhan Fado Pradika', NULL, NULL, NULL, NULL, NULL, NULL),
(19250, 'Agung Hendrawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19251, 'Agung Setyawan Giantama', NULL, NULL, NULL, NULL, NULL, NULL),
(19252, 'Ahmad Saiful Hukama', NULL, NULL, NULL, NULL, NULL, NULL),
(19253, 'Aji Nugroho', NULL, NULL, NULL, NULL, NULL, NULL),
(19254, 'Akhsya Sukma Atikasari', NULL, NULL, NULL, NULL, NULL, NULL),
(19255, 'Aldo Delvyano', NULL, NULL, NULL, NULL, NULL, NULL),
(19256, 'Al Rizky Candra Danantya', NULL, NULL, NULL, NULL, NULL, NULL),
(19257, 'Alvin Rafliane Dica Pramudya Wijaya', NULL, NULL, NULL, NULL, NULL, NULL),
(19258, 'Anang Ifrandi', NULL, NULL, NULL, NULL, NULL, NULL),
(19259, 'Ananta Diva Pitaloka', NULL, NULL, NULL, NULL, NULL, NULL),
(19260, 'Andi Lorenza', NULL, NULL, NULL, NULL, NULL, NULL),
(19261, 'Andre Nesta Wijaya', NULL, NULL, NULL, NULL, NULL, NULL),
(19262, 'Ar Rosy Ade Purwanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19263, 'Ari Endra Apta Sahasika', NULL, NULL, NULL, NULL, NULL, NULL),
(19264, 'Arya Farhan Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19265, 'Avfel Armenta Lesmana Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19266, 'Awwalul Ilmi', NULL, NULL, NULL, NULL, NULL, NULL),
(19267, 'Bagas Bramantyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19268, 'Bagus Cahyo Utomo', NULL, NULL, NULL, NULL, NULL, NULL),
(19269, 'Bagus Tri Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19270, 'Baharudin Zakaria', NULL, NULL, NULL, NULL, NULL, NULL),
(19271, 'Binzar Bahtiar Arlifudin Amara', NULL, NULL, NULL, NULL, NULL, NULL),
(19272, 'Bisma Alif Fauzin Wardani', NULL, NULL, NULL, NULL, NULL, NULL),
(19273, 'Cahya Ade Risma', NULL, NULL, NULL, NULL, NULL, NULL),
(19274, 'Danang Okta Putra Nugroho', NULL, NULL, NULL, NULL, NULL, NULL),
(19275, 'Daniel Kristianto Gabriel Farera', NULL, NULL, NULL, NULL, NULL, NULL),
(19276, 'Davin Ahnaf Eldiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19277, 'Deby Imas Nur Mawardah', NULL, NULL, NULL, NULL, NULL, NULL),
(19278, 'Debi Satria Tri Mardani', NULL, NULL, NULL, NULL, NULL, NULL),
(19279, 'Denny Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19282, 'Dhea Febrian Vanda Puspita', NULL, NULL, NULL, NULL, NULL, NULL),
(19283, 'Dian Cahya Pangestu', NULL, NULL, NULL, NULL, NULL, NULL),
(19284, 'Dikki Ilham Syahputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19285, 'Dimas Jibran Ashari', NULL, NULL, NULL, NULL, NULL, NULL),
(19286, 'Dimas Rachmadiyanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19287, 'Dimas Wahyu Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19288, 'Doni Ivan Rosadi', NULL, NULL, NULL, NULL, NULL, NULL),
(19289, 'Dwi Candra', NULL, NULL, NULL, NULL, NULL, NULL),
(19291, 'Elvan Fahrezi Rahma Yula', NULL, NULL, NULL, NULL, NULL, NULL),
(19292, 'Eqistian Patria Wicaksono', NULL, NULL, NULL, NULL, NULL, NULL),
(19293, 'Fahmi Al Ahmad', NULL, NULL, NULL, NULL, NULL, NULL),
(19294, 'Fakhriza Akbar Fairuz Dewa', NULL, NULL, NULL, NULL, NULL, NULL),
(19295, 'Falendryal Marcho Falaqsa', NULL, NULL, NULL, NULL, NULL, NULL),
(19297, 'Febriyan Angga Putra Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19298, 'Fian Defris Anjasmoro', NULL, NULL, NULL, NULL, NULL, NULL),
(19299, 'Galang Nandita', NULL, NULL, NULL, NULL, NULL, NULL),
(19300, 'Galih Raka Siwi', NULL, NULL, NULL, NULL, NULL, NULL),
(19301, 'Gede Ryan Sanjaya', NULL, NULL, NULL, NULL, NULL, NULL),
(19302, 'Hamsa Eka Aditya', NULL, NULL, NULL, NULL, NULL, NULL),
(19303, 'Hario Aditya', NULL, NULL, NULL, NULL, NULL, NULL),
(19304, 'Helmy Galang Malinda', NULL, NULL, NULL, NULL, NULL, NULL),
(19305, 'Ill Hansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19306, 'Indah Rahmawati', NULL, NULL, NULL, NULL, NULL, NULL),
(19307, 'Jaditya Dipa Jaladri', NULL, NULL, NULL, NULL, NULL, NULL),
(19308, 'Kaka Rifky Al Aziz', NULL, NULL, NULL, NULL, NULL, NULL),
(19309, 'Kevving Etzuko', NULL, NULL, NULL, NULL, NULL, NULL),
(19310, 'Kurniawan Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19311, 'La Ode Muhammad Zulhiya', NULL, NULL, NULL, NULL, NULL, NULL),
(19312, 'M. Andhy Azka', NULL, NULL, NULL, NULL, NULL, NULL),
(19313, 'M. Refqi Hidayatullah', NULL, NULL, NULL, NULL, NULL, NULL),
(19314, 'Manuel Yoga Sesario', NULL, NULL, NULL, NULL, NULL, NULL),
(19315, 'Miftahul Hadi', NULL, NULL, NULL, NULL, NULL, NULL),
(19316, 'Moch Albi Febriansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19318, 'Mochammad Alfath Akbar', NULL, NULL, NULL, NULL, NULL, NULL),
(19319, 'Moh. Rizal Efendi', NULL, NULL, NULL, NULL, NULL, NULL),
(19320, 'Mohamad Nizar Baihaqi', NULL, NULL, NULL, NULL, NULL, NULL),
(19321, 'Mohamad Yazid Habibie', NULL, NULL, NULL, NULL, NULL, NULL),
(19322, 'Mohammad Elyas', NULL, NULL, NULL, NULL, NULL, NULL),
(19323, 'Muchamad Andika Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19324, 'Muhamad Yazid Al Bastomi', NULL, NULL, NULL, NULL, NULL, NULL),
(19326, 'Muhammad Arif', NULL, NULL, NULL, NULL, NULL, NULL),
(19327, 'Muhammad Arif Wahendra', NULL, NULL, NULL, NULL, NULL, NULL),
(19328, 'Muhammad Fairuz Abdal Mufid', NULL, NULL, NULL, NULL, NULL, NULL),
(19329, 'Muhammad Laroyba Rakha Iman', NULL, NULL, NULL, NULL, NULL, NULL),
(19330, 'Muhammad Thoriq Abid Yulistio', NULL, NULL, NULL, NULL, NULL, NULL),
(19331, 'Muhammad Yazid Arzaki', NULL, NULL, NULL, NULL, NULL, NULL),
(19333, 'Mukhamad Nur Alfan', NULL, NULL, NULL, NULL, NULL, NULL),
(19334, 'Munandar Priyo Wibisono', NULL, NULL, NULL, NULL, NULL, NULL),
(19335, 'Nicolas Wiroyuda', NULL, NULL, NULL, NULL, NULL, NULL),
(19336, 'Nur Hidayat', NULL, NULL, NULL, NULL, NULL, NULL),
(19337, 'Oktavia Cintya Arta Pertiwi', NULL, NULL, NULL, NULL, NULL, NULL),
(19338, 'Oktavian Dwi Prayoga', NULL, NULL, NULL, NULL, NULL, NULL),
(19339, 'Otniel Hansdai Rainfathan Hutabarat', NULL, NULL, NULL, NULL, NULL, NULL),
(19340, 'Penggi Ardi Angsah', NULL, NULL, NULL, NULL, NULL, NULL),
(19342, 'Qory Zaqla Azzahra', NULL, NULL, NULL, NULL, NULL, NULL),
(19343, 'Rachmad Dimas Andi Susilo', NULL, NULL, NULL, NULL, NULL, NULL),
(19344, 'Rachmad Gilang Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19345, 'Rahmad Hidayat Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19346, 'Ramadani Maulana Syah', NULL, NULL, NULL, NULL, NULL, NULL),
(19347, 'Rangga Rambu Hidayat', NULL, NULL, NULL, NULL, NULL, NULL),
(19348, 'Rendi Satrio Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19349, 'Rikki Nur Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL),
(19350, 'Rio Pamungkas', NULL, NULL, NULL, NULL, NULL, NULL),
(19351, 'Risdinata Iqbal Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(19352, 'Rizal Cahya Adi Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19353, 'Roudhotul Jannah', NULL, NULL, NULL, NULL, NULL, NULL),
(19354, 'Saeza Andromeda Vegananda', NULL, NULL, NULL, NULL, NULL, NULL),
(19355, 'Syaiful Ari Maskur', NULL, NULL, NULL, NULL, NULL, NULL),
(19356, 'Savril Ibrahim Anwar', NULL, NULL, NULL, NULL, NULL, NULL),
(19357, 'Shaik Filhanlal', NULL, NULL, NULL, NULL, NULL, NULL),
(19359, 'Syifa Sahidah Qalbi', NULL, NULL, NULL, NULL, NULL, NULL),
(19360, 'Tiuzi Prima Asridho', NULL, NULL, NULL, NULL, NULL, NULL),
(19361, 'Vembri Novitasari', NULL, NULL, NULL, NULL, NULL, NULL),
(19362, 'Wafa Muhammad Yusuf', NULL, NULL, NULL, NULL, NULL, NULL),
(19363, 'Wahyu Bagus Suryananda', NULL, NULL, NULL, NULL, NULL, NULL),
(19364, 'Welda Kurnia Nova Hariyanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19365, 'Yoga Dwi Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19366, 'Yoga Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19367, 'Yogi Mochammad Abdul Kahfi', NULL, NULL, NULL, NULL, NULL, NULL),
(19368, 'Yosiva Rizki Nurfitria', NULL, NULL, NULL, NULL, NULL, NULL),
(19369, 'Yuane Varenza', NULL, NULL, NULL, NULL, NULL, NULL),
(19370, 'Zaenal Arifin', NULL, NULL, NULL, NULL, NULL, NULL),
(19371, 'Zidan Hidayat Al Kausyar', NULL, NULL, NULL, NULL, NULL, NULL),
(19372, 'Achsanul Kholiqin', NULL, NULL, NULL, NULL, NULL, NULL),
(19373, 'Adhan Defa Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19374, 'Afrisal Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL),
(19375, 'Afrizal Nur Halim', NULL, NULL, NULL, NULL, NULL, NULL),
(19376, 'Ageng Ilhamsyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19378, 'Ahmad Choirul Asyuro', NULL, NULL, NULL, NULL, NULL, NULL),
(19380, 'Akhmad Septian Dwi Cahyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19381, 'Alfiila Romadhona', NULL, NULL, NULL, NULL, NULL, NULL),
(19382, 'Ali Khusna', NULL, NULL, NULL, NULL, NULL, NULL),
(19383, 'Alif Vicky Hendriansa', NULL, NULL, NULL, NULL, NULL, NULL),
(19384, 'Andi Rani Bayu Septian', NULL, NULL, NULL, NULL, NULL, NULL),
(19385, 'Arista Zhanuar Titon', NULL, NULL, NULL, NULL, NULL, NULL),
(19386, 'Arya Bagas Putra Nadila', NULL, NULL, NULL, NULL, NULL, NULL),
(19387, 'Bagas Prayogo', NULL, NULL, NULL, NULL, NULL, NULL),
(19388, 'Bagas Roy Pradana', NULL, NULL, NULL, NULL, NULL, NULL),
(19389, 'Beni Septian', NULL, NULL, NULL, NULL, NULL, NULL),
(19390, 'Briliant Bisma Saka Aditya', NULL, NULL, NULL, NULL, NULL, NULL),
(19391, 'Didin Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19392, 'Dimas Aria Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19393, 'Eka Adi Kristanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19394, 'Elia Sangu Ate', NULL, NULL, NULL, NULL, NULL, NULL),
(19395, 'Ernanda Ridhul Ihrom', NULL, NULL, NULL, NULL, NULL, NULL),
(19396, 'Erwin Kristiono', NULL, NULL, NULL, NULL, NULL, NULL),
(19397, 'Evan Kurnia Nuryahya', NULL, NULL, NULL, NULL, NULL, NULL),
(19398, 'Fatachul Alim Arisakdi', NULL, NULL, NULL, NULL, NULL, NULL),
(19399, 'Faza Abinsa Johari', NULL, NULL, NULL, NULL, NULL, NULL),
(19400, 'Fiko Ferdian', NULL, NULL, NULL, NULL, NULL, NULL),
(19402, 'Firman Abdul Jaelani', NULL, NULL, NULL, NULL, NULL, NULL),
(19404, 'Galang Badru Yaza', NULL, NULL, NULL, NULL, NULL, NULL),
(19405, 'Galih Rizky Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(19406, 'Guntur Woro Etanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19407, 'Handak Tegas M.W', NULL, NULL, NULL, NULL, NULL, NULL),
(19408, 'Heksa Restu Masdiana', NULL, NULL, NULL, NULL, NULL, NULL),
(19409, 'Indra Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19410, 'Jofan Cahya Pradana', NULL, NULL, NULL, NULL, NULL, NULL),
(19411, 'Julio Sendy Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19412, 'Kiki Rafika Dahlan', NULL, NULL, NULL, NULL, NULL, NULL),
(19413, 'Lupus Niko Putra Priyanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19414, 'M Faizal Muzaki', NULL, NULL, NULL, NULL, NULL, NULL),
(19415, 'M. Rizal Mantofani', NULL, NULL, NULL, NULL, NULL, NULL),
(19416, 'M.Ulin Nuha', NULL, NULL, NULL, NULL, NULL, NULL),
(19417, 'Mahdi Syarief Al Hasny', NULL, NULL, NULL, NULL, NULL, NULL),
(19418, 'Miftahul Huda', NULL, NULL, NULL, NULL, NULL, NULL),
(19419, 'Mochamad Bintang Ryu A', NULL, NULL, NULL, NULL, NULL, NULL),
(19420, 'Mochammad Zanuar Reza', NULL, NULL, NULL, NULL, NULL, NULL),
(19421, 'Muhammad Ardiasyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19422, 'Muhammad Baihaqi', NULL, NULL, NULL, NULL, NULL, NULL),
(19423, 'Muhammad Ismail Hidayatullah', NULL, NULL, NULL, NULL, NULL, NULL),
(19424, 'Muhammad Mufliq Frediansah', NULL, NULL, NULL, NULL, NULL, NULL),
(19425, 'Muhammad Ramadani', NULL, NULL, NULL, NULL, NULL, NULL),
(19426, 'Muhammad Shirod Al Zidan', NULL, NULL, NULL, NULL, NULL, NULL),
(19427, 'Nur. Muhammad Ramadhana', NULL, NULL, NULL, NULL, NULL, NULL),
(19428, 'Ongky Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19429, 'Prasetya Ardhi Winata Oetomo', NULL, NULL, NULL, NULL, NULL, NULL),
(19430, 'Pulung Ardtya Sagotra', NULL, NULL, NULL, NULL, NULL, NULL),
(19431, 'Rahadian Insan Fitra Cendekia Kamila', NULL, NULL, NULL, NULL, NULL, NULL),
(19433, 'Rendi Adi Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19434, 'Rivan Agista', NULL, NULL, NULL, NULL, NULL, NULL),
(19435, 'Rizki Sofyan Harianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19436, 'Rui Tegar Priyono', NULL, NULL, NULL, NULL, NULL, NULL),
(19437, 'Ryan Okky Juandisa', NULL, NULL, NULL, NULL, NULL, NULL),
(19438, 'Sukma Novianto Ludriansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19439, 'Trindi Septian', NULL, NULL, NULL, NULL, NULL, NULL),
(19440, 'Wahyu Teguh Pribadi', NULL, NULL, NULL, NULL, NULL, NULL),
(19441, 'Yoga Arfiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19443, 'Abdul Qodir Jailani', NULL, NULL, NULL, NULL, NULL, NULL),
(19444, 'Afgustian Alferransah', NULL, NULL, NULL, NULL, NULL, NULL),
(19445, 'Afu Asadil Akbar', NULL, NULL, NULL, NULL, NULL, NULL),
(19446, 'Ahmad Syaifudin', NULL, NULL, NULL, NULL, NULL, NULL),
(19448, 'Aldito Sadam', NULL, NULL, NULL, NULL, NULL, NULL),
(19449, 'Alfan Yulian Hadi', NULL, NULL, NULL, NULL, NULL, NULL),
(19450, 'Ali Dwi Mashudi', NULL, NULL, NULL, NULL, NULL, NULL),
(19451, 'Andik Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19452, 'Andri Jamal', NULL, NULL, NULL, NULL, NULL, NULL),
(19453, 'Arik Yuliansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19456, 'David Dwi Christyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19457, 'Eka Rifki Ulul Amri', NULL, NULL, NULL, NULL, NULL, NULL),
(19458, 'Fiko Ferdiansah', NULL, NULL, NULL, NULL, NULL, NULL),
(19459, 'Galang Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19460, 'Gigih Dhuarma Nurdyansah', NULL, NULL, NULL, NULL, NULL, NULL),
(19461, 'Hadi Muhammad Zhakaria', NULL, NULL, NULL, NULL, NULL, NULL),
(19463, 'Jery Valentino', NULL, NULL, NULL, NULL, NULL, NULL),
(19464, 'Kelvin Galang Samudra', NULL, NULL, NULL, NULL, NULL, NULL),
(19465, 'Luhur Ahmad Difa  Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19466, 'Lutvan Feri Pradana', NULL, NULL, NULL, NULL, NULL, NULL),
(19467, 'Maulana Afrizal', NULL, NULL, NULL, NULL, NULL, NULL),
(19468, 'Maulana Fatur Rohman', NULL, NULL, NULL, NULL, NULL, NULL),
(19469, 'Mochamad Nafis Hauzan', NULL, NULL, NULL, NULL, NULL, NULL),
(19470, 'Moh Zen Zain Afandi', NULL, NULL, NULL, NULL, NULL, NULL),
(19472, 'Mokhamad Doni Afrizal', NULL, NULL, NULL, NULL, NULL, NULL),
(19473, 'Muchammad Faisal', NULL, NULL, NULL, NULL, NULL, NULL),
(19474, 'Muhammad Badruddin Syafiq', NULL, NULL, NULL, NULL, NULL, NULL),
(19475, 'Muhamad Muhklis', NULL, NULL, NULL, NULL, NULL, NULL),
(19476, 'Renda Gusti Pramana', NULL, NULL, NULL, NULL, NULL, NULL),
(19477, 'Reza Diki Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19478, 'Rizki Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(19479, 'Satria Ikhsan Aria Dillah', NULL, NULL, NULL, NULL, NULL, NULL),
(19480, 'Septian Anggara Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19481, 'Wahyu Ahlul Firdaus', NULL, NULL, NULL, NULL, NULL, NULL),
(19482, 'Yahya Dedy Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19483, 'Yofi Hilmana Fadli', NULL, NULL, NULL, NULL, NULL, NULL),
(19484, 'Yoga Riza Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19485, 'Ahmad Khusnun Zaman', NULL, NULL, NULL, NULL, NULL, NULL),
(19486, 'Alvi Khotimah', NULL, NULL, NULL, NULL, NULL, NULL),
(19487, 'Ananda Elvina Sari', NULL, NULL, NULL, NULL, NULL, NULL),
(19488, 'Dela Egi Rahmawati', NULL, NULL, NULL, NULL, NULL, NULL),
(19489, 'Dwita Rahmawati', NULL, NULL, NULL, NULL, NULL, NULL),
(19490, 'Elsa Anggraeni', NULL, NULL, NULL, NULL, NULL, NULL),
(19491, 'Ilham Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19492, 'Khayun Rizqun Wasia', NULL, NULL, NULL, NULL, NULL, NULL),
(19493, 'Lily Farah Sasmita', NULL, NULL, NULL, NULL, NULL, NULL),
(19494, 'M. Fani Tri Erwin Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19495, 'Maristha Karin Narulita', NULL, NULL, NULL, NULL, NULL, NULL),
(19496, 'Maulidia Wahyuningsih', NULL, NULL, NULL, NULL, NULL, NULL),
(19497, 'Revina Fitri Krisnanda', NULL, NULL, NULL, NULL, NULL, NULL),
(19498, 'Risma Ida Ariva', NULL, NULL, NULL, NULL, NULL, NULL),
(19499, 'Rosa Nur Cahyani', NULL, NULL, NULL, NULL, NULL, NULL),
(19500, 'Shinta Puspita Dewi', NULL, NULL, NULL, NULL, NULL, NULL),
(19501, 'Yienza Daratista', NULL, NULL, NULL, NULL, NULL, NULL),
(19502, 'Yuniar Fanny Saputri', NULL, NULL, NULL, NULL, NULL, NULL),
(19503, 'Achmad Dandi Putra Wijaya', NULL, NULL, NULL, NULL, NULL, NULL),
(19504, 'Achmad Risal Montela', NULL, NULL, NULL, NULL, NULL, NULL),
(19505, 'Achmad Zuhwa Nizar Zulmi', NULL, NULL, NULL, NULL, NULL, NULL),
(19506, 'Ade Candra Wijaya', NULL, NULL, NULL, NULL, NULL, NULL),
(19507, 'Adi Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19508, 'Aditya Riski Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19509, 'Aditya Trinanto Nugraha', NULL, NULL, NULL, NULL, NULL, NULL),
(19511, 'Ahmad', NULL, NULL, NULL, NULL, NULL, NULL),
(19512, 'Ahmad Athif Fikri', NULL, NULL, NULL, NULL, NULL, NULL),
(19513, 'Ahmad Saifudin Alawi', NULL, NULL, NULL, NULL, NULL, NULL),
(19514, 'Ahmad Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19516, 'Aldi Wanda Haristama', NULL, NULL, NULL, NULL, NULL, NULL),
(19517, 'Aldi Yulianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19518, 'Aldo Natalino Bernardliko', NULL, NULL, NULL, NULL, NULL, NULL),
(19520, 'Ananda Bagus Oktavia', NULL, NULL, NULL, NULL, NULL, NULL),
(19521, 'Ananta Ferdiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19522, 'Andi Aditya Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19523, 'Andi Damai Rahardjo', NULL, NULL, NULL, NULL, NULL, NULL),
(19524, 'Angga Tri Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19525, 'Angger Ragil Dinar Maylian', NULL, NULL, NULL, NULL, NULL, NULL),
(19526, 'Aprilianto Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19527, 'Arif Affandi', NULL, NULL, NULL, NULL, NULL, NULL),
(19529, 'Audra Rivansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19530, 'Aureleo Duval', NULL, NULL, NULL, NULL, NULL, NULL),
(19531, 'Ayu Firnanda', NULL, NULL, NULL, NULL, NULL, NULL),
(19532, 'Azel Desca Putra Arnanda', NULL, NULL, NULL, NULL, NULL, NULL),
(19533, 'Bagus Eka Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19534, 'Brian Ramadani', NULL, NULL, NULL, NULL, NULL, NULL),
(19535, 'Cahya Bintang Prakoso', NULL, NULL, NULL, NULL, NULL, NULL),
(19536, 'Ciko Sandy Amirulloh', NULL, NULL, NULL, NULL, NULL, NULL),
(19537, 'Dani Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19538, 'Deli Alfin', NULL, NULL, NULL, NULL, NULL, NULL),
(19539, 'Dewi Rahmawati', NULL, NULL, NULL, NULL, NULL, NULL),
(19540, 'Dhani Nur Rahmad', NULL, NULL, NULL, NULL, NULL, NULL),
(19541, 'Dimas Guritno', NULL, NULL, NULL, NULL, NULL, NULL),
(19542, 'Dimas Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19544, 'Dino Sapta Rizki', NULL, NULL, NULL, NULL, NULL, NULL),
(19545, 'Dio Wahyu Wijoyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19547, 'Dwiky Yusuf Afandy', NULL, NULL, NULL, NULL, NULL, NULL),
(19548, 'Eko Bagus Rahmanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19549, 'Eko Susilo', NULL, NULL, NULL, NULL, NULL, NULL),
(19550, 'Eri Tri Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL),
(19552, 'Fadillah Noer Ashary', NULL, NULL, NULL, NULL, NULL, NULL),
(19553, 'Farhan Daffa Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19554, 'Fatkhul Dhiya Ul Haqillah Al Qudus', NULL, NULL, NULL, NULL, NULL, NULL),
(19555, 'Febrian Putra Nugraha', NULL, NULL, NULL, NULL, NULL, NULL),
(19556, 'Febrian Septa Putra Prasetya', NULL, NULL, NULL, NULL, NULL, NULL),
(19557, 'Ferdi Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19558, 'Fiyo Apriliyo Rahmansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19559, 'Fransisco Musafet', NULL, NULL, NULL, NULL, NULL, NULL),
(19560, 'Galang Krisna Pramudika', NULL, NULL, NULL, NULL, NULL, NULL),
(19562, 'Gusti Indra Cahya', NULL, NULL, NULL, NULL, NULL, NULL),
(19563, 'Guvano Wildana Pramanta', NULL, NULL, NULL, NULL, NULL, NULL),
(19564, 'Hasrul Ginanjar', NULL, NULL, NULL, NULL, NULL, NULL),
(19565, 'Hermi Arif Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19566, 'Hisyam Badar Danuarta', NULL, NULL, NULL, NULL, NULL, NULL),
(19567, 'Indra Sucahyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19568, 'Irfan Agus Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL),
(19569, 'Irvan Yusnizar', NULL, NULL, NULL, NULL, NULL, NULL),
(19570, 'Isvanur Dwi Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19572, 'Jun Edi Catur Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19573, 'Koirul Hanam', NULL, NULL, NULL, NULL, NULL, NULL),
(19574, 'Krisna Putra Adi Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19575, 'Kurniawan Dwi Yulianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19576, 'Lintang Handal Galang Aradhana Sitangsu', NULL, NULL, NULL, NULL, NULL, NULL),
(19577, 'M. Adam Ramadhani', NULL, NULL, NULL, NULL, NULL, NULL),
(19578, 'M.Deni Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19579, 'Marela Siska Dinda Wati', NULL, NULL, NULL, NULL, NULL, NULL),
(19580, 'Mochamad Aldo Versyo Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19581, 'Mochammad Khodir', NULL, NULL, NULL, NULL, NULL, NULL),
(19582, 'Mochammad Nurul Huda', NULL, NULL, NULL, NULL, NULL, NULL),
(19584, 'Mochammad Renaldi Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19585, 'Mohamad Denta Abdul Rosyid', NULL, NULL, NULL, NULL, NULL, NULL),
(19587, 'Mualif Fadhli Maula', NULL, NULL, NULL, NULL, NULL, NULL),
(19588, 'Muhamad Ali Fahmi', NULL, NULL, NULL, NULL, NULL, NULL),
(19589, 'Muhamad Misbach Suryo Nugroho', NULL, NULL, NULL, NULL, NULL, NULL),
(19590, 'Muhamad Prasetyo Amarta', NULL, NULL, NULL, NULL, NULL, NULL),
(19591, 'Muhammad Abdy Hendrawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19592, 'Muhammad Adi Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19593, 'Muhammad Ainul Dzaki', NULL, NULL, NULL, NULL, NULL, NULL),
(19594, 'Muhammad Adji Prasetya Darmawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19595, 'Muhammad Alfian Rizky S', NULL, NULL, NULL, NULL, NULL, NULL),
(19596, 'Muhammad Alfin Syarif Hamizan', NULL, NULL, NULL, NULL, NULL, NULL),
(19597, 'Muhammad Amirudin', NULL, NULL, NULL, NULL, NULL, NULL),
(19598, 'Muhammad Andy Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19599, 'Muhammad Bayu Aji Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19601, 'Muhammad Dzikryan Rifanda', NULL, NULL, NULL, NULL, NULL, NULL),
(19602, 'Muhammad Farhan', NULL, NULL, NULL, NULL, NULL, NULL),
(19603, 'Muhammad Hadiyyatulloh', NULL, NULL, NULL, NULL, NULL, NULL),
(19604, 'Muhammad Islahudin Akbar', NULL, NULL, NULL, NULL, NULL, NULL),
(19605, 'Muhammad Nur Andika', NULL, NULL, NULL, NULL, NULL, NULL),
(19606, 'Muhammad Nurlianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19607, 'Muhammad Reza As Adi', NULL, NULL, NULL, NULL, NULL, NULL),
(19608, 'Muhammad Rizal Fahrudin', NULL, NULL, NULL, NULL, NULL, NULL),
(19609, 'Muhammad Syahrul Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL),
(19611, 'Muhammad Wafik Wildan Zamroni', NULL, NULL, NULL, NULL, NULL, NULL),
(19612, 'Muhammad Yusron Arif', NULL, NULL, NULL, NULL, NULL, NULL),
(19613, 'Myco Wahyudha Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19614, 'Nadilla Putri Wijaya', NULL, NULL, NULL, NULL, NULL, NULL),
(19615, 'Nadindra Sefa Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(19617, 'Neda Putra C', NULL, NULL, NULL, NULL, NULL, NULL),
(19618, 'Nedo Putra C', NULL, NULL, NULL, NULL, NULL, NULL),
(19619, 'Muhammad Adam Rivaldo', NULL, NULL, NULL, NULL, NULL, NULL),
(19620, 'Nur Azis', NULL, NULL, NULL, NULL, NULL, NULL),
(19621, 'Oktavian Galih Wirandi', NULL, NULL, NULL, NULL, NULL, NULL),
(19622, 'Petra Febri Adi Kristian', NULL, NULL, NULL, NULL, NULL, NULL),
(19623, 'Priyo Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19624, 'Putra Regina Prayoga', NULL, NULL, NULL, NULL, NULL, NULL),
(19625, 'Raditya Surya Hermawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19627, 'Rahmat Pratama Hindarto', NULL, NULL, NULL, NULL, NULL, NULL),
(19628, 'Raihan Kevin Ardika Fahreza', NULL, NULL, NULL, NULL, NULL, NULL),
(19630, 'Rangga Januar Amayara', NULL, NULL, NULL, NULL, NULL, NULL),
(19631, 'Reksa Putra Adi Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19632, 'Reza Andrean Fernando', NULL, NULL, NULL, NULL, NULL, NULL),
(19633, 'Rezon Aristo Efendy', NULL, NULL, NULL, NULL, NULL, NULL),
(19634, 'Riski Firmansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19635, 'Risky Purba Adi Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19636, 'Risky Sahroni', NULL, NULL, NULL, NULL, NULL, NULL),
(19638, 'Rivky Firmansyah Al Farizi', NULL, NULL, NULL, NULL, NULL, NULL),
(19640, 'Rohan Irmansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19642, 'Rully Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19643, 'Ryan Wahyu Kurnianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19644, 'Ryco Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19646, 'Septa Hardi Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19647, 'Sofyan Adi Permana', NULL, NULL, NULL, NULL, NULL, NULL),
(19648, 'Surya Lintang Gumebyar', NULL, NULL, NULL, NULL, NULL, NULL),
(19650, 'Teguh Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL),
(19651, 'Tomas Adi Pranoto', NULL, NULL, NULL, NULL, NULL, NULL),
(19652, 'Toni Andrianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19653, 'Toriq Afif Fernanda', NULL, NULL, NULL, NULL, NULL, NULL),
(19654, 'Valentino Frana Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19656, 'Venno Hari Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19657, 'Vila Yufen Arvino', NULL, NULL, NULL, NULL, NULL, NULL),
(19658, 'Wildhan Rafif Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19659, 'Wiranto Agung Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19660, 'Yuda Prasetyo Lestari', NULL, NULL, NULL, NULL, NULL, NULL),
(19661, 'Abdullah Moebin Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(19662, 'Abdullah Roziqin', NULL, NULL, NULL, NULL, NULL, NULL),
(19663, 'Agung Ginanjar Mulyono', NULL, NULL, NULL, NULL, NULL, NULL),
(19665, 'Agus Ahmad', NULL, NULL, NULL, NULL, NULL, NULL),
(19666, 'Akhmad Wahyu Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19668, 'Aldi Septiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19669, 'Alfandri Setyawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19670, 'Alvin Bagus Aditya', NULL, NULL, NULL, NULL, NULL, NULL),
(19672, 'Anggi Narta Utama', NULL, NULL, NULL, NULL, NULL, NULL),
(19673, 'Aril Febrian Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(19675, 'Arjun Ningrat Fajar Fadloli', NULL, NULL, NULL, NULL, NULL, NULL),
(19676, 'Arta Cahaya Sampurno', NULL, NULL, NULL, NULL, NULL, NULL),
(19677, 'Arya Eka Putra Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19678, 'Brahmanarendra Arya Rahardja', NULL, NULL, NULL, NULL, NULL, NULL),
(19679, 'Danny Baskara Wijaya', NULL, NULL, NULL, NULL, NULL, NULL),
(19680, 'Ditto Fransisco', NULL, NULL, NULL, NULL, NULL, NULL),
(19681, 'Donny Chrisendra', NULL, NULL, NULL, NULL, NULL, NULL),
(19682, 'Eka Mario Setyawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19683, 'Farhan Ramdani', NULL, NULL, NULL, NULL, NULL, NULL),
(19685, 'Fernanda Reza Syahputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19686, 'Irfan Mardiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19687, 'Jenny Septianingrum', NULL, NULL, NULL, NULL, NULL, NULL),
(19690, 'M. Fiki Aditya Candra', NULL, NULL, NULL, NULL, NULL, NULL),
(19691, 'Mohammad Ikhwanul Hakim', NULL, NULL, NULL, NULL, NULL, NULL),
(19692, 'Muh. David Dwiyanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19693, 'Muhamad Iqbal Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19695, 'Muhammad Fairus Zabadi', NULL, NULL, NULL, NULL, NULL, NULL),
(19696, 'Muhammad Imam Fauzi', NULL, NULL, NULL, NULL, NULL, NULL),
(19697, 'Muhammad Ivani Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19699, 'Muhammad Rizki Andrianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19700, 'Naufal Akhdan Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19701, 'Novreza Arian Valen', NULL, NULL, NULL, NULL, NULL, NULL),
(19702, 'Rahayu Pinerkahan', NULL, NULL, NULL, NULL, NULL, NULL),
(19703, 'Rayhan Fauzani', NULL, NULL, NULL, NULL, NULL, NULL),
(19704, 'Reyvan Tresnaldi Aby Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL),
(19706, 'Reza Maulana A', NULL, NULL, NULL, NULL, NULL, NULL),
(19707, 'Ruly Arizqi Irfansyach', NULL, NULL, NULL, NULL, NULL, NULL),
(19708, 'Ryan Abila', NULL, NULL, NULL, NULL, NULL, NULL),
(19709, 'Safryan Adhe Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19710, 'Saifuddin Akbar', NULL, NULL, NULL, NULL, NULL, NULL),
(19711, 'Sandi Dewangga Priantoko', NULL, NULL, NULL, NULL, NULL, NULL),
(19712, 'Satria Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19713, 'Tandi Andrian Wicaksono', NULL, NULL, NULL, NULL, NULL, NULL),
(19714, 'Vijay Gunawan Mahmud', NULL, NULL, NULL, NULL, NULL, NULL),
(19715, 'Willy Arianto Pramana Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19716, 'Yeski Kristian', NULL, NULL, NULL, NULL, NULL, NULL),
(19717, 'Yohsafat Rehan Dwi Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19718, 'Yusril Aditya Yahya', NULL, NULL, NULL, NULL, NULL, NULL),
(19719, 'Zidan Machbubi', NULL, NULL, NULL, NULL, NULL, NULL),
(19721, 'Andi Yulpikar Anwar', NULL, NULL, NULL, NULL, NULL, NULL),
(19722, 'Ariya Pramasta', NULL, NULL, NULL, NULL, NULL, NULL),
(19723, 'Bagus Fadli', NULL, NULL, NULL, NULL, NULL, NULL),
(19724, 'Bakal Ibnu Afan', NULL, NULL, NULL, NULL, NULL, NULL),
(19725, 'Candra Krisna Dani', NULL, NULL, NULL, NULL, NULL, NULL),
(19726, 'David Aria Susanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19728, 'Dyon Mario Candra', NULL, NULL, NULL, NULL, NULL, NULL),
(19729, 'Fajar Arifian', NULL, NULL, NULL, NULL, NULL, NULL),
(19730, 'Farid Zaidan Abdillah', NULL, NULL, NULL, NULL, NULL, NULL),
(19731, 'Frendy Flarezza', NULL, NULL, NULL, NULL, NULL, NULL),
(19732, 'Maulana Wahyu Putra Kusuma', NULL, NULL, NULL, NULL, NULL, NULL),
(19733, 'Muhamad Maulana Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19734, 'Muhammad Arwani', NULL, NULL, NULL, NULL, NULL, NULL),
(19735, 'Muhammad Farid Arya Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19736, 'Muhammad Muhaimin', NULL, NULL, NULL, NULL, NULL, NULL),
(19737, 'Muhammad Verza Kusnaendo', NULL, NULL, NULL, NULL, NULL, NULL),
(19738, 'Nedi Septyadiono', NULL, NULL, NULL, NULL, NULL, NULL),
(19740, 'Nur Mukhlas', NULL, NULL, NULL, NULL, NULL, NULL),
(19741, 'Rio Ambar Frananda', NULL, NULL, NULL, NULL, NULL, NULL),
(19742, 'Salasa Muhammad Alim', NULL, NULL, NULL, NULL, NULL, NULL),
(19743, 'Septian Dimas Al Adam', NULL, NULL, NULL, NULL, NULL, NULL),
(19745, 'Syaheri Ramadhan Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19746, 'Vicenzo Dida', NULL, NULL, NULL, NULL, NULL, NULL),
(19747, 'Ade Marselia Agung Sekti W', NULL, NULL, NULL, NULL, NULL, NULL),
(19748, 'Arno Surya Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19749, 'Ayub Fardana', NULL, NULL, NULL, NULL, NULL, NULL),
(19750, 'Bunga Angnesta Arta Bhakti', NULL, NULL, NULL, NULL, NULL, NULL),
(19751, 'Dodik Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19752, 'Fastabichul Ayu Rahmadanti', NULL, NULL, NULL, NULL, NULL, NULL),
(19753, 'Muhammad Zainal Efendi', NULL, NULL, NULL, NULL, NULL, NULL),
(19754, 'Nanda Aji Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19755, 'Nanda Raenado', NULL, NULL, NULL, NULL, NULL, NULL),
(19756, 'Okky Yulistya Pratiwi', NULL, NULL, NULL, NULL, NULL, NULL),
(19757, 'Ricky Andi Dwi Fernando', NULL, NULL, NULL, NULL, NULL, NULL),
(19758, 'Sabilla Nur Triasa', NULL, NULL, NULL, NULL, NULL, NULL),
(19759, 'Adyan Ghozy Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(19760, 'Agil Abdur Ruuf', NULL, NULL, NULL, NULL, NULL, NULL),
(19761, 'Alfonsho Ady Rekliansha', NULL, NULL, NULL, NULL, NULL, NULL),
(19762, 'Aliffino Putra Mawardika', NULL, NULL, NULL, NULL, NULL, NULL),
(19763, 'Amanda Latifah Nur Pahlevy', NULL, NULL, NULL, NULL, NULL, NULL),
(19764, 'Ananta Wira Yudha', NULL, NULL, NULL, NULL, NULL, NULL),
(19765, 'Andre Edua Putra Irnanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19766, 'Aulia Dandi Firmansyah Sunardi', NULL, NULL, NULL, NULL, NULL, NULL),
(19768, 'Deni Setiyawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19769, 'Denny Asmara Hadi', NULL, NULL, NULL, NULL, NULL, NULL),
(19770, 'Fayyadh Kholid Baswedan', NULL, NULL, NULL, NULL, NULL, NULL),
(19771, 'Ilham Aji Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL),
(19773, 'Muhamad Fiki Fahruroji', NULL, NULL, NULL, NULL, NULL, NULL),
(19774, 'Muhammad Arif Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(19775, 'Muhammad Faizal', NULL, NULL, NULL, NULL, NULL, NULL),
(19776, 'Muhammad Rifki', NULL, NULL, NULL, NULL, NULL, NULL),
(19777, 'Nanda Marfin Yohanes', NULL, NULL, NULL, NULL, NULL, NULL),
(19778, 'Nur Hadi Muslimin', NULL, NULL, NULL, NULL, NULL, NULL),
(19779, 'Putra Yolanda', NULL, NULL, NULL, NULL, NULL, NULL),
(19780, 'Reynaldy Harvye Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19781, 'Rifki Bagus Naufal', NULL, NULL, NULL, NULL, NULL, NULL),
(19782, 'Riski Vrayoga', NULL, NULL, NULL, NULL, NULL, NULL),
(19783, 'Rizal Himawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19786, 'Sulton Reisyha Afif Dinulloh', NULL, NULL, NULL, NULL, NULL, NULL),
(19787, 'Tria Agustin Nova Berliana', NULL, NULL, NULL, NULL, NULL, NULL),
(19788, 'Yusuf Halim', NULL, NULL, NULL, NULL, NULL, NULL),
(19789, 'Zefa Singgih Syahputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19790, 'Zefanya Febrian Ardianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19791, 'Abril Dhea Joti Pramanda', NULL, NULL, NULL, NULL, NULL, NULL),
(19792, 'Adisty Nurjanah Ana Kirana', NULL, NULL, NULL, NULL, NULL, NULL),
(19794, 'Ahmad Sutikno Alfian', NULL, NULL, NULL, NULL, NULL, NULL),
(19795, 'Akmal', NULL, NULL, NULL, NULL, NULL, NULL),
(19796, 'Aliefian Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL),
(19798, 'Aqshal Rizqullah', NULL, NULL, NULL, NULL, NULL, NULL),
(19799, 'Ardhillah Habibi Alfath', NULL, NULL, NULL, NULL, NULL, NULL),
(19800, 'Ariq Artriska', NULL, NULL, NULL, NULL, NULL, NULL),
(19801, 'Bagas Lintang Wicaksono', NULL, NULL, NULL, NULL, NULL, NULL),
(19802, 'Bagus Kurniawan Hafizh', NULL, NULL, NULL, NULL, NULL, NULL),
(19803, 'Bintang Indi Nargari', NULL, NULL, NULL, NULL, NULL, NULL),
(19804, 'Della Anggraeni', NULL, NULL, NULL, NULL, NULL, NULL),
(19805, 'Dida Wahyu Wirayoga', NULL, NULL, NULL, NULL, NULL, NULL),
(19806, 'Didan Putra Surya', NULL, NULL, NULL, NULL, NULL, NULL),
(19807, 'Diva Dwi Puspitasari', NULL, NULL, NULL, NULL, NULL, NULL),
(19808, 'Farid Muhajir', NULL, NULL, NULL, NULL, NULL, NULL),
(19809, 'Felly Tri Ayunda Aisa', NULL, NULL, NULL, NULL, NULL, NULL),
(19811, 'Gusti Aji Rizky Indarto', NULL, NULL, NULL, NULL, NULL, NULL),
(19812, 'Ian Alif Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19813, 'Igo Geo Gigih Hio Ilhamulloh', NULL, NULL, NULL, NULL, NULL, NULL),
(19814, 'Jemita Satya Kiranti', NULL, NULL, NULL, NULL, NULL, NULL),
(19816, 'Kharisma Romadhon Eka Safitri', NULL, NULL, NULL, NULL, NULL, NULL),
(19818, 'Mahendra Pujo Prianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19819, 'Muhammad Akbar Ilhamka', NULL, NULL, NULL, NULL, NULL, NULL),
(19820, 'Muhammad Andika Dayu Anglita Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19821, 'Novan Hadi Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19823, 'Putra Alan Rosydi', NULL, NULL, NULL, NULL, NULL, NULL),
(19824, 'Rachmad Nur Aditya', NULL, NULL, NULL, NULL, NULL, NULL),
(19825, 'Rafif Pradyatma Surya Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL),
(19826, 'Rahmad Nakula Zanuar', NULL, NULL, NULL, NULL, NULL, NULL),
(19828, 'Risqullah Fani Fadhil Rifat', NULL, NULL, NULL, NULL, NULL, NULL),
(19829, 'Robby Prawira Eka Pasha', NULL, NULL, NULL, NULL, NULL, NULL),
(19830, 'Sevin Ariel Leonanda', NULL, NULL, NULL, NULL, NULL, NULL),
(19831, 'Solichan', NULL, NULL, NULL, NULL, NULL, NULL),
(19832, 'Sonia Putri Oktavia', NULL, NULL, NULL, NULL, NULL, NULL),
(19833, 'Suhardi Priyanata', NULL, NULL, NULL, NULL, NULL, NULL),
(19834, 'Surya Azhar Kusuma Haris', NULL, NULL, NULL, NULL, NULL, NULL),
(19835, 'Tegar Primantara', NULL, NULL, NULL, NULL, NULL, NULL),
(19836, 'Vaskho Mochammad Andilla', NULL, NULL, NULL, NULL, NULL, NULL),
(19837, 'Vera Kristina', NULL, NULL, NULL, NULL, NULL, NULL),
(19838, 'Wahyu Prima Yuda', NULL, NULL, NULL, NULL, NULL, NULL),
(19839, 'Yogie Erlangga Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19840, 'Yulia Vaiza Febriana', NULL, NULL, NULL, NULL, NULL, NULL),
(19841, 'Yusinta Putri Febriana', NULL, NULL, NULL, NULL, NULL, NULL),
(19842, 'Achmadi Gusrif Kandola', NULL, NULL, NULL, NULL, NULL, NULL),
(19843, 'Aditiya Prasetiyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19844, 'Agung Brahmastha Krisnha Jagad Satria', NULL, NULL, NULL, NULL, NULL, NULL),
(19845, 'Ahmad Fashihudin', NULL, NULL, NULL, NULL, NULL, NULL),
(19846, 'Ahmad Tegar Dwipa Yoga', NULL, NULL, NULL, NULL, NULL, NULL),
(19847, 'Alexander Setya Pribadi', NULL, NULL, NULL, NULL, NULL, NULL),
(19848, 'Bielqies Phatherecia Shelvyne', NULL, NULL, NULL, NULL, NULL, NULL),
(19851, 'Diovanda Reyhanandi Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19853, 'Eka Aditya Firdaus', NULL, NULL, NULL, NULL, NULL, NULL),
(19854, 'Faisal Aditya', NULL, NULL, NULL, NULL, NULL, NULL),
(19855, 'Febriyanti Naela Mahmudah', NULL, NULL, NULL, NULL, NULL, NULL),
(19856, 'Friscillia Melani', NULL, NULL, NULL, NULL, NULL, NULL),
(19857, 'Gilang Septiano', NULL, NULL, NULL, NULL, NULL, NULL),
(19859, 'Ifa Kurniasari', NULL, NULL, NULL, NULL, NULL, NULL),
(19860, 'Ilham Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19862, 'Jenni Presila', NULL, NULL, NULL, NULL, NULL, NULL),
(19863, 'Maftuh Afandi', NULL, NULL, NULL, NULL, NULL, NULL),
(19864, 'Mochamad Yanuar Karisma Yuda', NULL, NULL, NULL, NULL, NULL, NULL),
(19865, 'Muhammad Bashofi Sudirman', NULL, NULL, NULL, NULL, NULL, NULL),
(19866, 'Muhammad Shobirin Misbah', NULL, NULL, NULL, NULL, NULL, NULL),
(19868, 'Nia Oktavia', NULL, NULL, NULL, NULL, NULL, NULL),
(19869, 'Nuryatus Zahroh', NULL, NULL, NULL, NULL, NULL, NULL),
(19871, 'Putri Wahyuningsih', NULL, NULL, NULL, NULL, NULL, NULL),
(19872, 'Radhiva Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(19873, 'Rahadian Yuwananda A. S.', NULL, NULL, NULL, NULL, NULL, NULL),
(19874, 'Raki Ammar Ismoko', NULL, NULL, NULL, NULL, NULL, NULL),
(19875, 'Reno Iman Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19877, 'Rizal  Nur Afandi', NULL, NULL, NULL, NULL, NULL, NULL),
(19878, 'Sahrul Kirom', NULL, NULL, NULL, NULL, NULL, NULL),
(19879, 'Sandi Andika Akbarrulloh', NULL, NULL, NULL, NULL, NULL, NULL),
(19880, 'Steven Geovino', NULL, NULL, NULL, NULL, NULL, NULL),
(19881, 'Syahlan Hadi Nur Ichwan', NULL, NULL, NULL, NULL, NULL, NULL),
(19882, 'Syaifi Anwar Hidayatullah', NULL, NULL, NULL, NULL, NULL, NULL),
(19883, 'Teggar Saputra', NULL, NULL, NULL, NULL, NULL, NULL),
(19884, 'Vera Anis Fitria', NULL, NULL, NULL, NULL, NULL, NULL),
(19885, 'Verlina Margaretha', NULL, NULL, NULL, NULL, NULL, NULL),
(19886, 'Yoga Dafin Ferdiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19887, 'A As Mia Desfitria Sari', NULL, NULL, NULL, NULL, NULL, NULL),
(19888, 'Abdul Ghofur', NULL, NULL, NULL, NULL, NULL, NULL),
(19889, 'Achmad Affandy', NULL, NULL, NULL, NULL, NULL, NULL),
(19890, 'Ady Ryan Yosafat', NULL, NULL, NULL, NULL, NULL, NULL),
(19891, 'Agathis Dammara Attariqi', NULL, NULL, NULL, NULL, NULL, NULL),
(19892, 'Ahmad Nasrukhan Andriansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19893, 'Akhdan Hafish Sofyan', NULL, NULL, NULL, NULL, NULL, NULL),
(19894, 'Alexander Benyamin Dandra', NULL, NULL, NULL, NULL, NULL, NULL),
(19895, 'Alfino Radtya Amanullah', NULL, NULL, NULL, NULL, NULL, NULL),
(19896, 'Allaudin Bagus Satriaji', NULL, NULL, NULL, NULL, NULL, NULL),
(19897, 'Anandia Shafina Salsabillah', NULL, NULL, NULL, NULL, NULL, NULL),
(19898, 'Anggina Rose', NULL, NULL, NULL, NULL, NULL, NULL),
(19899, 'Arya Putra Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19900, 'Asha Aurora Ninawa Mayantis', NULL, NULL, NULL, NULL, NULL, NULL),
(19901, 'Asnely Alvi Nurillah', NULL, NULL, NULL, NULL, NULL, NULL),
(19902, 'Aulia Dina Rosyidah', NULL, NULL, NULL, NULL, NULL, NULL),
(19903, 'Ayu Yulia Anggraeni', NULL, NULL, NULL, NULL, NULL, NULL),
(19904, 'Azhar Zakaria', NULL, NULL, NULL, NULL, NULL, NULL),
(19905, 'Bachrul Ulum Ali Mahmud', NULL, NULL, NULL, NULL, NULL, NULL),
(19906, 'Bawon Meilina', NULL, NULL, NULL, NULL, NULL, NULL),
(19907, 'Berlian Maharani Citra Dewi', NULL, NULL, NULL, NULL, NULL, NULL),
(19908, 'Bimo Manggala Vira Sakti', NULL, NULL, NULL, NULL, NULL, NULL),
(19909, 'Bintang Putra Sadewa', NULL, NULL, NULL, NULL, NULL, NULL),
(19911, 'Daffa Rizqi Septiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19912, 'Danang Alya Prakoso', NULL, NULL, NULL, NULL, NULL, NULL),
(19916, 'Dendy Krisdianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19918, 'Dhea Nur Aisyiah Efendi', NULL, NULL, NULL, NULL, NULL, NULL),
(19919, 'Dian Permata Sari', NULL, NULL, NULL, NULL, NULL, NULL),
(19920, 'Diana Novita Sari', NULL, NULL, NULL, NULL, NULL, NULL),
(19921, 'Dicki Valentino', NULL, NULL, NULL, NULL, NULL, NULL),
(19922, 'Dio Febian Aditama', NULL, NULL, NULL, NULL, NULL, NULL),
(19923, 'Dita Via Pramesella', NULL, NULL, NULL, NULL, NULL, NULL),
(19924, 'Djaduex  Saka Nugraha', NULL, NULL, NULL, NULL, NULL, NULL),
(19925, 'Dwi Fatiawati', NULL, NULL, NULL, NULL, NULL, NULL),
(19926, 'Dwiky Alfikriansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19927, 'Eka Bayu Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19929, 'Erly Tsamarah Difa', NULL, NULL, NULL, NULL, NULL, NULL),
(19930, 'Fahri Misbahul Munir', NULL, NULL, NULL, NULL, NULL, NULL),
(19931, 'Fajar Wahyu Setiawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19932, 'Fallah Adam Wardhana', NULL, NULL, NULL, NULL, NULL, NULL),
(19933, 'Farah Mufidah', NULL, NULL, NULL, NULL, NULL, NULL),
(19934, 'Febiana Wulandari', NULL, NULL, NULL, NULL, NULL, NULL),
(19935, 'Febriana Eka Alviandani', NULL, NULL, NULL, NULL, NULL, NULL),
(19936, 'Firman Syah Kurniawan', NULL, NULL, NULL, NULL, NULL, NULL),
(19937, 'Galih Kusuma Putra', NULL, NULL, NULL, NULL, NULL, NULL),
(19939, 'Hanif Zulfikri', NULL, NULL, NULL, NULL, NULL, NULL),
(19941, 'Hendra Wahyudi', NULL, NULL, NULL, NULL, NULL, NULL),
(19942, 'Hening Augusty Mukafaah', NULL, NULL, NULL, NULL, NULL, NULL),
(19943, 'Johan Aditya Hadinata', NULL, NULL, NULL, NULL, NULL, NULL),
(19944, 'Juvita Avianti', NULL, NULL, NULL, NULL, NULL, NULL),
(19945, 'Kaisar Yulian Al Akbar', NULL, NULL, NULL, NULL, NULL, NULL),
(19946, 'Khana Putri Mega', NULL, NULL, NULL, NULL, NULL, NULL),
(19947, 'Khoirul Adi Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19949, 'Kurnia Nur Aisyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19950, 'M. Dimas Ariya Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19952, 'Meisya Afifa Rahma', NULL, NULL, NULL, NULL, NULL, NULL),
(19953, 'Miftahul Huda Nur Azis', NULL, NULL, NULL, NULL, NULL, NULL),
(19954, 'Moch Arizal Fauzi', NULL, NULL, NULL, NULL, NULL, NULL),
(19955, 'Muhammad Arya Fandi Fardana', NULL, NULL, NULL, NULL, NULL, NULL),
(19956, 'Muhammad Aditiya Ramadhan', NULL, NULL, NULL, NULL, NULL, NULL),
(19957, 'Muhammad Alief Rahman Hakim', NULL, NULL, NULL, NULL, NULL, NULL),
(19958, 'Muhammad Alif Jamaludin Baharsyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19959, 'Muhammad Bagus Ferdiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(19960, 'Muhammad Faiq Hidayatullah', NULL, NULL, NULL, NULL, NULL, NULL),
(19961, 'Muhammad Farhan Hamid', NULL, NULL, NULL, NULL, NULL, NULL),
(19962, 'Muhammad Nur Ramadhan Syah', NULL, NULL, NULL, NULL, NULL, NULL),
(19963, 'Muhammad Rizki Zulfikar', NULL, NULL, NULL, NULL, NULL, NULL),
(19964, 'Nanda Dwiky Prayoga', NULL, NULL, NULL, NULL, NULL, NULL),
(19965, 'Nazhima Fakhira Farhaz', NULL, NULL, NULL, NULL, NULL, NULL),
(19966, 'Nicko Suhadi', NULL, NULL, NULL, NULL, NULL, NULL),
(19967, 'Ninda Rosita Dewi', NULL, NULL, NULL, NULL, NULL, NULL),
(19969, 'Nur Ahmad Fajar', NULL, NULL, NULL, NULL, NULL, NULL),
(19970, 'Putra Dwi Cahyadi', NULL, NULL, NULL, NULL, NULL, NULL),
(19971, 'Putri Novita Sari', NULL, NULL, NULL, NULL, NULL, NULL),
(19972, 'Putri Wahyu Oktaviani', NULL, NULL, NULL, NULL, NULL, NULL),
(19973, 'Raden Osa', NULL, NULL, NULL, NULL, NULL, NULL),
(19974, 'Rama Andika Priambada', NULL, NULL, NULL, NULL, NULL, NULL),
(19975, 'Rayhan Hari Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(19976, 'Riza Adhani', NULL, NULL, NULL, NULL, NULL, NULL),
(19977, 'Roby Zainul Abidin', NULL, NULL, NULL, NULL, NULL, NULL),
(19978, 'Safa Bintang Nabiyan', NULL, NULL, NULL, NULL, NULL, NULL),
(19979, 'Salsa Nabila Marta', NULL, NULL, NULL, NULL, NULL, NULL),
(19980, 'Selvita Aldina Putri', NULL, NULL, NULL, NULL, NULL, NULL),
(19981, 'Shirojul Munir', NULL, NULL, NULL, NULL, NULL, NULL),
(19982, 'Silfia Anggraeni', NULL, NULL, NULL, NULL, NULL, NULL),
(19983, 'Syalomiele Pratama Agustinus Susanto', NULL, NULL, NULL, NULL, NULL, NULL),
(19985, 'Teuqilla Arni Sugianto', NULL, NULL, NULL, NULL, NULL, NULL),
(19986, 'Yanuar Bayu Yudhantara', NULL, NULL, NULL, NULL, NULL, NULL),
(19987, 'Yefta Putra N', NULL, NULL, NULL, NULL, NULL, NULL),
(19988, 'Yoan Putra Adetya', NULL, NULL, NULL, NULL, NULL, NULL),
(19989, 'Yoga Adi Pratama', NULL, NULL, NULL, NULL, NULL, NULL),
(19990, 'Zahwa Dewi Syahrani', NULL, NULL, NULL, NULL, NULL, NULL),
(19991, 'Adinda Mutia Syahrani', NULL, NULL, NULL, NULL, NULL, NULL),
(19992, 'Adinda Nova Eliza', NULL, NULL, NULL, NULL, NULL, NULL),
(19993, 'Adinda Zahra Safira Nisaa', NULL, NULL, NULL, NULL, NULL, NULL),
(19994, 'Aisyah Ulandari', NULL, NULL, NULL, NULL, NULL, NULL),
(19996, 'Amelia Amanda Putri', NULL, NULL, NULL, NULL, NULL, NULL),
(19997, 'Anggelya Mery Ningtyastuti', NULL, NULL, NULL, NULL, NULL, NULL),
(19998, 'Anjelina Lidia Ananda', NULL, NULL, NULL, NULL, NULL, NULL),
(19999, 'Ariska Rahayu Ningtias', NULL, NULL, NULL, NULL, NULL, NULL),
(20000, 'Aryani Rizky Rahmalia Ivani', NULL, NULL, NULL, NULL, NULL, NULL),
(20001, 'Aulia Jihan Salsabila', NULL, NULL, NULL, NULL, NULL, NULL),
(20002, 'Azizah Senja Mega Sari', NULL, NULL, NULL, NULL, NULL, NULL),
(20003, 'Daffa Nawwaf Nadirraihan', NULL, NULL, NULL, NULL, NULL, NULL),
(20004, 'Delva Ayu Riwanda', NULL, NULL, NULL, NULL, NULL, NULL),
(20005, 'Devi Widia Putri', NULL, NULL, NULL, NULL, NULL, NULL),
(20006, 'Diah Ayu Safitri', NULL, NULL, NULL, NULL, NULL, NULL),
(20007, 'Dimas Dedi Septian', NULL, NULL, NULL, NULL, NULL, NULL),
(20008, 'Dinda Ayu Patricia', NULL, NULL, NULL, NULL, NULL, NULL),
(20010, 'Dwi Nur Aini', NULL, NULL, NULL, NULL, NULL, NULL),
(20011, 'Eki Sutatik Irianti', NULL, NULL, NULL, NULL, NULL, NULL),
(20012, 'Eko Eriko Kusuma', NULL, NULL, NULL, NULL, NULL, NULL),
(20013, 'Elen Agustin', NULL, NULL, NULL, NULL, NULL, NULL),
(20014, 'Erlina Indah Safira', NULL, NULL, NULL, NULL, NULL, NULL),
(20015, 'Feni Fatmasari', NULL, NULL, NULL, NULL, NULL, NULL),
(20016, 'Fidiya Sri Astutik', NULL, NULL, NULL, NULL, NULL, NULL),
(20017, 'Finta Aulia Widianti', NULL, NULL, NULL, NULL, NULL, NULL),
(20018, 'Firdiah Agustina Sukmawati', NULL, NULL, NULL, NULL, NULL, NULL),
(20019, 'Fitri Dwi Pratiwi', NULL, NULL, NULL, NULL, NULL, NULL),
(20020, 'Fitri Muaiminah', NULL, NULL, NULL, NULL, NULL, NULL),
(20021, 'Gadhing Kusumaning Dewy', NULL, NULL, NULL, NULL, NULL, NULL),
(20023, 'Icha Valia Rahma Desianti', NULL, NULL, NULL, NULL, NULL, NULL),
(20024, 'Ifadatul Ummah', NULL, NULL, NULL, NULL, NULL, NULL),
(20025, 'Ika Syafaroh', NULL, NULL, NULL, NULL, NULL, NULL),
(20026, 'Ima Maulidah', NULL, NULL, NULL, NULL, NULL, NULL),
(20027, 'Indah Sutrianingsih', NULL, NULL, NULL, NULL, NULL, NULL),
(20029, 'Isma Fitri Nuraini', NULL, NULL, NULL, NULL, NULL, NULL),
(20031, 'Levia Pinky Leoni', NULL, NULL, NULL, NULL, NULL, NULL),
(20032, 'Mariska Dwi Damayanti', NULL, NULL, NULL, NULL, NULL, NULL),
(20033, 'Martha Dinatha Avrilla Vanessa', NULL, NULL, NULL, NULL, NULL, NULL),
(20034, 'Meidensha Kurnia Fernanda', NULL, NULL, NULL, NULL, NULL, NULL),
(20035, 'Nabila Ardistyasari', NULL, NULL, NULL, NULL, NULL, NULL),
(20036, 'Ning Anida', NULL, NULL, NULL, NULL, NULL, NULL),
(20037, 'Nouval Ahmad Arhan', NULL, NULL, NULL, NULL, NULL, NULL),
(20038, 'Nova Nur Aisyah', NULL, NULL, NULL, NULL, NULL, NULL),
(20039, 'Pravangasta Sulihyang Levi Helda Valing Hyen', NULL, NULL, NULL, NULL, NULL, NULL),
(20040, 'Putri', NULL, NULL, NULL, NULL, NULL, NULL),
(20041, 'Putri Agustina Rahayu', NULL, NULL, NULL, NULL, NULL, NULL),
(20042, 'Putri Auliasari', NULL, NULL, NULL, NULL, NULL, NULL),
(20043, 'Putri Aurelia Munika', NULL, NULL, NULL, NULL, NULL, NULL),
(20045, 'Quiesha Amalia', NULL, NULL, NULL, NULL, NULL, NULL),
(20047, 'Ranita', NULL, NULL, NULL, NULL, NULL, NULL),
(20048, 'Ria Adelia', NULL, NULL, NULL, NULL, NULL, NULL),
(20049, 'Riska Dwi Hafifa', NULL, NULL, NULL, NULL, NULL, NULL),
(20051, 'Sasnanita Bintang V', NULL, NULL, NULL, NULL, NULL, NULL),
(20052, 'Sherlina Wayu Astutik', NULL, NULL, NULL, NULL, NULL, NULL),
(20053, 'Shesi Putri Prameswari', NULL, NULL, NULL, NULL, NULL, NULL),
(20054, 'Silvina Febiyanti', NULL, NULL, NULL, NULL, NULL, NULL),
(20055, 'Siti Komariah', NULL, NULL, NULL, NULL, NULL, NULL),
(20056, 'Syifa Alifianti Andariesta', NULL, NULL, NULL, NULL, NULL, NULL),
(20057, 'Tri Dwi Eliga', NULL, NULL, NULL, NULL, NULL, NULL),
(20058, 'Tsani Isma Sifana', NULL, NULL, NULL, NULL, NULL, NULL),
(20059, 'Tsaniatun Nabila', NULL, NULL, NULL, NULL, NULL, NULL),
(20060, 'Wahyu Eka Lestari', NULL, NULL, NULL, NULL, NULL, NULL),
(20061, 'Wiji Lestari', NULL, NULL, NULL, NULL, NULL, NULL),
(20062, 'Winda Cindi Nurliyanto', NULL, NULL, NULL, NULL, NULL, NULL),
(20063, 'Yuliati', NULL, NULL, NULL, NULL, NULL, NULL),
(20064, 'Zulkaisa Ngaris Pramudita', NULL, NULL, NULL, NULL, NULL, NULL),
(20065, 'Ahmat Rojikin', NULL, NULL, NULL, NULL, NULL, NULL),
(20066, 'Aldo Rizal Bagir Mahdi', NULL, NULL, NULL, NULL, NULL, NULL),
(20067, 'Angga Satria Ardiansyah', NULL, NULL, NULL, NULL, NULL, NULL),
(20068, 'Ismawanto', NULL, NULL, NULL, NULL, NULL, NULL),
(20069, 'Jasmine Ayu Qumalya Putri', NULL, NULL, NULL, NULL, NULL, NULL),
(20070, 'Muhamad Firdaus', NULL, NULL, NULL, NULL, NULL, NULL),
(20071, 'Muhammad Enrico Dwi Putra Perdana', NULL, NULL, NULL, NULL, NULL, NULL),
(20072, 'Naito Yuuki', NULL, NULL, NULL, NULL, NULL, NULL),
(20073, 'Rahmat Hadi', NULL, NULL, NULL, NULL, NULL, NULL),
(20074, 'Rangga Elang Mustika Prabowo', NULL, NULL, NULL, NULL, NULL, NULL),
(20075, 'Tafania Ad Ha Safarah', NULL, NULL, NULL, NULL, NULL, NULL),
(20076, 'Titik Yulita Sari', NULL, NULL, NULL, NULL, NULL, NULL),
(20077, 'Dea Aulia Rachma', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `mssiswa` (`nis`, `nama`, `id_jurusan`, `id_guru`, `email`, `password`, `jam_masuk`, `jam_pulang`) VALUES
(20078, 'Alvian Adi Purnama', NULL, NULL, NULL, NULL, NULL, NULL),
(20079, 'Aditia Eko Prasetyo', NULL, NULL, NULL, NULL, NULL, NULL),
(20080, 'Felix Vannial Ramadhan Fiari', NULL, NULL, NULL, NULL, NULL, NULL),
(20081, 'Salsabilla Zahrani Purnama', NULL, NULL, NULL, NULL, NULL, NULL),
(20084, 'Raihan Almer Maulana', NULL, NULL, NULL, NULL, NULL, NULL),
(20085, 'Farhad Ehla Muzaki', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbjurnal`
--

CREATE TABLE `tbjurnal` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nis` int(11) DEFAULT NULL,
  `waktu_masuk` time DEFAULT NULL,
  `waktu_pulang` time DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `kegiatan_kerja` text DEFAULT NULL,
  `prosedur_pengerjaan` text DEFAULT NULL,
  `spesifikasi_bahan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tbjurnal`
--
ALTER TABLE `tbjurnal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msbidang`
--
ALTER TABLE `msbidang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mscompany`
--
ALTER TABLE `mscompany`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `msguru`
--
ALTER TABLE `msguru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `msjurusan`
--
ALTER TABLE `msjurusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mspembimbing`
--
ALTER TABLE `mspembimbing`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mspembimbingperusahaan`
--
ALTER TABLE `mspembimbingperusahaan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `tbjurnal`
--
ALTER TABLE `tbjurnal`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
