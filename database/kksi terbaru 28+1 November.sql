/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : kksi24112020

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-11-29 12:56:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for msadmin
-- ----------------------------
DROP TABLE IF EXISTS `msadmin`;
CREATE TABLE `msadmin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of msadmin
-- ----------------------------
INSERT INTO `msadmin` VALUES ('1', 'Moch Arizal Fauzi', 'muhammadarizalfauzi2@gmail.com', 'much12');
INSERT INTO `msadmin` VALUES ('3', 'Admin', 'admin@admin.com', 'admin');

-- ----------------------------
-- Table structure for msbidang
-- ----------------------------
DROP TABLE IF EXISTS `msbidang`;
CREATE TABLE `msbidang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_bidang` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of msbidang
-- ----------------------------
INSERT INTO `msbidang` VALUES ('1', 'TIK');
INSERT INTO `msbidang` VALUES ('2', 'Otomotif');
INSERT INTO `msbidang` VALUES ('3', 'Mesin');
INSERT INTO `msbidang` VALUES ('4', 'Elektro');
INSERT INTO `msbidang` VALUES ('5', 'Bisnis Daring');

-- ----------------------------
-- Table structure for mscompany
-- ----------------------------
DROP TABLE IF EXISTS `mscompany`;
CREATE TABLE `mscompany` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(75) DEFAULT NULL,
  `alamat_perusahaan` text,
  `telp_perusahaan` varchar(75) DEFAULT NULL,
  `id_bidang` int(11) DEFAULT NULL,
  `id_pembimbing` int(11) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `nama_pembimbing_perusahaan` varchar(100) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mscompany
-- ----------------------------
INSERT INTO `mscompany` VALUES ('1', 'BENGKEL MOBIL SOLEH', 'Torongrejo Krajan Junrejo Batu', '094832432', '4', '9', null, null, null, 'ade', 'ade@ade.com', 'adeade', '2');
INSERT INTO `mscompany` VALUES ('2', 'Bengkel Supri', 'Raya Beji No 87', '08123223578', null, '9', null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('3', 'PT. MITRA SEHATI MAJU BERSAMA', 'Kawasan Industri Candi Blok 20 No 1A Semarang', '02476175852', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('4', 'PT. NUSANTARANTAMA MULTI MEDIA', 'Jl. Bunga Andong Selatan Kav. 12 Malang', '0341 402055', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('5', 'SMK PGRI 3 MALANG', 'Jl. Tlogomas IX No 29 Malang', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('6', 'SURYA KENCANA', 'Jl. Candi Panggung Kota Malang', '081235727779', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('7', 'Transmart MX', 'Jl. Veteran Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('8', 'AHASS TONGAN MALANG', 'Jl. Ade Irma Suryani', '0341-325220', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('9', 'ALFAMART GEMEKAN MOJOKERTO', 'Jl. Raya Brangkal MOJOKERTO', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('10', 'ALFAMART JATILANGKUNG MOJOKERTO', 'Jl Raya Pacet KM 3 RT :01 RW :01 Pungging MOJOKERTO', '081294670767', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('11', 'ALFAMART KEBON WARIS PASURUAN', 'jl.kebon waris Pasuruan RT.0 RW.0', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('12', 'ALFAMART KEPULUNGAN PASURUAN', 'jln.surabaya malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('13', 'ALFAMART LOSARI MOJOKERTO', ' losari mojokerto', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('14', 'ALFAMART MONA SUWAYUWO PASURUAN', 'jl raya suwayuwo perum candra kartika. PASURUAN', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('15', 'ALFAMART NGROWO MOJOKERTO', 'Jl. Raya Ngrowo kec. Bangsal Bangsal MOJOKERTO', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('16', 'ALFAMART TAMAN SAFARI BARU', 'Dusun Palang Sukorejo RT.01 RW.01 ', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('17', 'ASCO DAIHATSU JEMBER', 'JL. HAYAM WURUK JEMBER', '0331-428665', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('18', 'AUTO 2000 PECINDILAN SURABAYA', 'Surabaya', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('19', 'BAMBANG DJAJA MOJOKERTO', 'Ngoro Industri Park Block C 1-2 Ngoro Mojokerto', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('20', 'BE IMAGE CINEMA', 'Perum Asabri Bumiayu Indah Blok C3 Malang', '087859796889', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('21', 'BENGKEL BOROBUDUR', 'Jl. Borobudur Malang', '0341-7468000', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('22', 'BENGKEL BUDI SERVICE', 'Jl. Kedoya Barat 16', '0818388431', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('23', 'Bengkel Feri', 'Jl. Kalisongo Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('24', 'bengkel hadi', 'Jl. WR Supratman No 58 Batu', '08125254540', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('25', 'BENGKEL RAPI', 'Jl. Maijen Panjaitan 14 C Malang', '0341-552285', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('26', 'Bengkel Tomo', 'Jl Bend. Sutami 49', '0818389266', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('27', 'Bintang Jaya Listrik', 'Jl. Sartono SH No 6', '0341-367903 / 368224', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('28', 'CENTRA KOMPUTER GALUNGGUNG', 'Jl. Galunggung Malang', '085855955530', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('29', 'CV TATA MITRA SENTOSA', 'Jl. Sigura-gura 35 Malang', '0341578420', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('30', 'CV. GARUDA MUDA', 'Jl. Danar Jonge H4 E42 RT. 5/10 Sawojajar', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('31', 'CV. INDONESIA ONLINE', 'Jl. Flamboyan No 45B', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('32', 'CV. MEDIA UTAMA', 'Jln. Sigura-Gura', '0341-559736', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('33', 'CV. MULTI MEDIA PRATAMA', 'Jl. Bendungan Sagulingt No. 06 Malang', '0341-552497', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('34', 'CV. SARI MUTIARA ABADI', 'Dsn. Krajan, Srigading Lawang Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('35', 'Dako Brand & Comunication', 'Jl. Dako Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('36', 'Deka Hotel Surabaya', 'HR. Muhammad No. 24, Surabaya', '081331981380', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('37', 'delta prima', 'Jl. Pisang Kipas', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('38', 'HAWAI WATERPARK', 'Jl. Graha Kencana Utara V, Karanglo, Banjararum, Kec. Singosari, Malang, Jawa Timur 65153', '(0341) 4351797', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('39', 'HEASOFT INDONESIA', 'Ruko Mergan Kelurahan Jl Terusan Mergan Raya 1 Tanjung Rejo Sukun Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('40', 'HEIMA (SUBBING TITLE)', 'Bukit Cemara Tidar Block L3 No 25-26 Karang Besuki Sukun Malang', '081298109990', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('41', 'HOTEL ARIA GAJAYANA', 'Jl. Kawi No 24, Malang', '085258774333', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('42', 'HOTEL CIPTANINGATI', 'Jl. Argopuro No.154 Batu', '081555459845', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('43', 'HOTEL SWISS-BELINN MALANG', 'Jl. Veteran No.8A, Penanggungan, Klojen, Kota Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('44', 'IMARKS', 'IMARKS : RUKO SOEHAT INDAH B.4', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('45', 'INOT PRODUCTION', 'Jln. Batujajar 24 Malang', '03419393366/ 085691886545', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('46', 'JAMBU LUWUK HOTEL', 'BATU', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('47', 'JANTRA BALI', 'Jl. Gunung Galunggung No. 168C', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('48', 'JANTRA JOGJAKARTA', 'JL. DAMAI 168 NGUDAL SARI HARJO, NGAGLIK, SLEMAN', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('49', 'Jantra Malang', 'Jl. Ki Ageng Gribig Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('50', 'JANTRA SEMARANG', 'JL. KEDUNG MUNDU RAYA SENDANGGUWO, TEMBALANG, KEDUNGMUNDU NO. 47 SEMARANG', '02476411269', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('51', 'JANTRA SOLO', 'SOLO', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('52', 'LAS Damai', 'Jl. Sarimun Gg III No. 344 RT. 03 RW.02 Kec. Junrejo Kota Batu', '0341-595748', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('53', 'MAJESTY', 'Jl. Brigjen Slamet Riadi 44 Malang', '0341-369800', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('54', 'MAXZFOOD', 'KARANG BESUKI SUKUN MALANG', '03415082875', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('55', 'MOCCA ANIMATION', 'Jl. Maninjau Raya No. 19', '085749696020', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('56', 'POLYTRON SURABAYA - KAPAS KRAMPUNG', 'SURABAYA', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('57', 'PPPPTK Pendem', 'Jl. Arhanud Ds. Junrejo Pendem Kota Batu', '081-333633311', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('58', 'PT DHARMA POLIPLAST', 'Jl. Meranti 1 Blok LI-10 Delta Silicon I Cikarang, Bekasi', '021 89909898/082817039898', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('59', 'PT ISTANA MOBIL RODA MAS BANYUWANGI', 'Jl. Raya Rogojampi - pakistaji Banyuwangi', '0333 417888', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('60', 'PT ISTANA MOBIL RODA MAS jember', 'Jl. Hayam Wuruk No 187-189 Jember 68136', '1331-421888', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('61', 'PT. ADI PUTRO WIRASEJATI', 'Jl. Bale Arjosari 35 Malang', '087859072494', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('62', 'PT. AGUNG HIDRAULICH MACHINERY', 'Jl. Raya Pendem 50 Junrejo Batu', '0341463225', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('63', 'PT. ANGLER BIO CHEMLAB', 'Jl. Raya Sawo No. 17-19, Kel. Bridgin, Kec. Sambikerep Surabaya', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('64', 'PT. Arthawena Gemilang (Otomotif)', 'Jl. Kertanegara 45 Karangploso Malang', '0341-468500', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('65', 'PT. Arthawenasakti Gemilang', 'Jl. Kertanegara 45 Karangploso Malang', '0341-468500', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('66', 'PT. ASIA PROTENDO GRAHA BOYOLALI SOLO', 'Jl. Raya Solo Boyolali Km 147 Jawa tengah', '0271-780150', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('67', 'PT. ASTRA INTERNASIONAL, TBK. (DAIHATSU MALANG)', 'Jl. Ahmad Yani No 175 Malang', '085100711700', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('68', 'PT. DEPO GLOBAL INDONESIA', 'MALANG', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('69', 'PT. INDO JAYA MOTOR', 'Jl. LA Adi Sucipto - Sleman Yogyakarta', '0274-487982', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('70', 'PT. INDO SENTOSA TRADA INDOMOBIL (NISSAN JEMBER)', 'JL. HAYAM WURUK NO 181-183 MANGLI, KALIWATES JEMBER', '0331-412828', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('71', 'PT. INDONESIA PRECISION PART', 'Kawasan Industri Candi B3 No 9 Semarang', '0247617891', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('72', 'PT. INDONESIAN MARINE', 'Jl. Raya Ardimulya 2 Singosari', '0341-458952', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('73', 'PT. INTI KARYA TEKNIK', 'Jl. Batu Bara 32 Malang', '0341-491144', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('74', 'PT. KEDIRI GLOBAL MEDIATAMA (KS TV)', 'Jl. Ruko Hayam Wuruk Trade Center F-4/F-5 Kediri', '(0354 682888)', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('75', 'PT. KOPESERA ENGINEERING', 'Jl. Jembawan 4B/21 Sawojajar 2 Malang', '0341-720654', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('76', 'PT. LG ELECTRONICS INDONESIA SC JEMBER', 'Jl. Gajah Mada No 74 - Jember', '0331-320462', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('77', 'PT. LG ELECTRONICS INDONESIA SC KEDIRI', 'Jl. Balowerti Gang I No 15 ', '0354683162', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('78', 'PT. LG ELECTRONICS INDONESIA SC MALANG', 'Jl. Letjen Sunandar Priyo Sudarmo', '0341 403900', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('79', 'PT. LG ELECTRONICS INDONESIA SC SURABAYA', 'Jl. Tegal Sari no. 41 Surabaya', '031-5342277', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('80', 'PT. MAXZER SOLUSI STERIL', 'Jl. Karya Barat 21 Malang', '0341373093', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('81', 'PT. MAYANGSARI BERLIAN MOTOR JEMBER', 'Jl. Gajah mada 224 A - Jember', '0331-484366/484368', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('82', 'PT. MGG SOFTWARE ', 'Jl. Bantaran terusan 2 No. 62 Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('83', 'PT. NAYATI INDONESIA', 'Kaw. Ind. Terboyo Megah 19 Semarang', '024-6580573', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('84', 'PT. PJB UBJOM PLTU INDRAMAYU', 'Desa Sumur Adem Kec Sukra Kab Indramayu Jawa Barat', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('85', 'PT. PJB UBJOM PLTU PAITON BARU', 'Jl. Raya Surabaya-Situbondo km 142 Paiton Probolinggo', '0335-771668', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('86', 'PT. PJB UBJOM PLTU REMBANG', 'Jl. Raya Semarang Surabaya Km. 130, Desa Leran dan Desa Trahan, Kec. Sluke, Kab. Rembang', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('87', 'PT. PLN (PERSERO) ULP DINOYO', 'Jln. MT Haryono Malang', '081252607611', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('88', 'PT. PLN (PERSERO) ULP KEPANJEN', 'Jl. Panji No. 2 Kepanjen', '0341-395033', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('89', 'PT. PRIMAKOM SURABAYA', 'Jl. Jajar Tunggal 1 Blok D-12A Wiyung Surabaya', '0318284901;081234535981', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('90', 'PT. RETGOO SENTRIS INFORMA', 'Terra Building Lantai 2-3 Jl. Terusan Candi Mendut 9B Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('91', 'PT. Surabaya Autocomp Indonesia', 'Ngoro Industri Persada (NIP) - Mojokerto', '082230072003', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('92', 'RADAR MALANG', 'Jl. Kawi II B Malang', '0341363700', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('93', 'ROLEPLAY ANIMATION', 'Jl. Sulfat Agung XI/ 4C Malang', '081216489381', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('94', 'Royal ATK', 'Jl. Ciliwung No.2 Malang', '081333007790', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('95', 'ROYAL ATK DAN ROYAL OLE OLE BATU', 'Jl. Raya Soekarno No.159 Batu', '0341-5104464', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('96', 'SENTRA MEDIA KOMPUTINDO', 'Jl. Bendungan Sigura-Gura L2 No. 4 Kav 3', '0341 569636', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('97', 'SION DIGITAL PRINTING', 'Jln. Bendungan Sutami', '0341568873', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('98', 'SUZUKI TLOGOMAS MALANG', 'Jl. Raya Tlogomas Malang', '0341-575666', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('99', 'The Onsen Hot Spring Resort Songgoriti', 'Jl. Raya Arumdulu 98 Songgoriti Batu', '03415101888', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('100', 'Ubud Hotel & Villas', 'Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('101', 'WAHID PRINTING', 'Jl. Candi Panggung Barat 17 C Malang', '085100589438', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('102', 'YPPII BATU. ', 'Jl. Indragiri No. 5 Batu', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('103', 'ACT DIGITAL AGENCY', 'Griyasanta Blok H 253', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('104', 'AHASS ALIM JAYA MOTOR', 'Jl. Tenaga 2B - Kav 1 Malang', '0341-491005', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('105', 'AHASS ASIA', 'Jl Raya Pakisaji', '0341809912', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('106', 'AHASS DIPONEGORO MOTOR', 'Jl. Diponegoro 73 Batu P. Hozi', '0341-591689', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('107', 'AHASS KOTA LAMA JAYA MOTOR', 'Jl. Laksamana Mardinata 129 B Malang', '0341-353561', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('108', 'AHASS KURNIA MOTOR BATU', 'Jl. Diponegoro 173 Batu', '0341-511888', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('109', 'AHASS MURNI MOTOR', 'Jl. Galunggung 76 DE Malang', '0341-569931', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('110', 'AHASS SAHABAT JUNIOR', 'Jl. Panji Suroso No 18 Malang', '03414352557', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('111', 'AHASS SINAR JAYA MOTOR', 'JL. Letjen S. Priyosudarmo 5N Malang', '0341-407000', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('112', 'ALFAMART CANDI WATES PASURUAN', 'Jl raya candi jawi Rt 05 Rw 02 Candi Wates prigen', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('113', 'ALFAMART GRIYATAMA JASEM MOJOKERTO', 'Jasem kel: Jasem kec: Ngoro kab: Mojokerto ', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('114', 'ALFAMART JAGIL PRIGEN PASURUAN', 'Alfamart Jagil Prigen', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('115', 'ALFAMART KUPANG JETIS MOJOKERTO', 'dsn kupang kec.jetis mojokerto', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('116', 'ALFAMART KUTOREJO PASURUAN', 'jln.Pahlawan Sunaryo No. 18,Magasari, kutorejo, kec. Pandaan pasuruan', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('117', 'ALFAMART LECARI PASURUAN', 'desa lecari banyak putih', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('118', 'ALFAMART LOLAWANG MOJOKERTO', 'Jl.Raya lolawang Dusun.sumberbendo RT2 RW2 Desa lolawang kec.Ngoro kab.Mojokerto', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('119', 'ALFAMART MANDURO MOJOKERTO', 'Dsn manduro rt/rw :014/003', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('120', 'ALFAMART MENANGGAL MOJOKERTO', 'Jl Raya Gajah Mada No.24,Menanggal,Mojosari,Mojokerto', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('121', 'ALFAMART MURIA MOJOKERTO', 'Jl MURIA RAYA WATES KELURAHAN WATES MAGERSAR', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('122', 'ALFAMART PENANGUNGAN PRIDGEN PASURUAN', 'jl. Raya gg. Temurejo no. 11 PASURUAN', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('123', 'ALFAMART RAYA KEPULUNGAN PASURUAN', 'Jl. Raya Kepulungan, Kepulungan Satu, Gempol, Kec. Gempol, Pasuruan, Jawa Timur 67155', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('124', 'ALFAMART RAYA SAMBIROTO MOJOKERTO', 'Jln raya sambiroto dsn sambiroto ds mlaten', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('125', 'ALFAMART RAYA TAMAN SAFARI PASURUAN', 'jl taman safari Kel. Pakukerto kec. Sukorejo Pasuruan', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('126', 'ALFAMART SUMOLAWANG MOJOKERTO', 'Perum Lawang Asri kec. Puri Sumolawang Mojokerto', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('127', 'ALFAMART SUWAYUWO PASURUAN', 'Suwayuwo dusun klanting no. 28', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('128', 'AREMA TV', 'Jl. Baiduri Pandan No.16 Tlogomas Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('129', 'ASTRA INTERNASIONAL DAIHATSU KEDIRI', 'Jl. Sukarno Hatta 152 Kediri', '0354-684412 / 081555615198', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('130', 'AUTO 2000  JEMURSARI SURABAYA', 'Jl. Raya Jemursari 215 Surabaya', '081337655487', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('131', 'AUTO 2000 KEDIRI', 'KEDIRI', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('132', 'AUTO 2000 KENJERAN', 'SURABAYA KENJERAN', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('133', 'AUTO 2000 KERTAJAYA SURABAYA', 'Surabaya', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('134', 'Auto 2000 Madiun', 'Jl. Cokroaminoto Madiun', '0351-492000', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('135', 'Auto 2000 Pasuruan', '-', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('136', 'Auto 2000 Probolinggo', 'PROBOLINGGO', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('137', 'Auto 2000 Singosari', 'Jl. Dr.Cipto NO. 150 Randu Agung Singosari', '03413062000', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('138', 'BATU COMPUTER', 'Jl. Diponegoro Kota Batu', '0341-5102706', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('139', 'Bayu Electronic Production', 'Jl. Soekarno Hatta 44 Malang', '082257846342;081937988843', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('140', 'BDI INIDIA STUDIO ANIMASI', 'Bali Creative Industry Center (Balai Diklat Industri Denpasar) Jl. WR. Supratman No. 302 Kesiman Kertalangu, Denpasar Timur, Bali', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('141', 'Bengkel Anugrah', 'Jl. MT Haryono Malang', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('142', 'BENGKEL BAGONG', 'Jl. Perusahaan 12 plambesan Tunjungtirto', '08980003423', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('143', 'Bengkel Bubut Crew', 'Jl. Raya Mendalan Wangi No. 34 Wagir Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('144', 'BENGKEL DIDIK MOTOR', 'Jl. Wukir RT. 1 RW.1', '085100686901', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('145', 'BENGKEL DIPONEGORO', 'Jl. Raya Diponegoro Batu', '085815444180', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('146', 'BENGKEL IRUL', 'Batu', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('147', 'Bengkel Kalpataru', 'Jl. Kalpataru No. 141 Malang', '0341-408731', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('148', 'bengkel M. Yusuf', 'Jl. Suropati Gg. III/14 Batu', '03419128841', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('149', 'Bengkel Setia jaya', 'Jl Sumber Wuni No 50 Lawang', '085100271712', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('150', 'BENGKEL SETYA MEKAR', 'Jl. Raya dau kab. Malang', '082244336625', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('151', 'Bengkel Soekarno Hatta Auto Service', 'Ters Candi  Mendut 37 Malang', '081252454545/08125266963', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('152', 'Bengkel Takim', 'Jl. Kenanga Bulukerto - Batu', '085102323989', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('153', 'BENING FOTOGRAPHI', 'Jl. Bendungan Bening 30-32 Malang', '0341567357/085649902008', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('154', 'Beringin putih', 'Jl. Kenikir no. 9 Malang', '0341-6108433', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('155', 'Breaker Video Production', 'Jl. Soekarno Hatta Indah IV No. 1 Mojolangu, Kec. Lowokwaru, Kota Malang', '085691919722', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('156', 'CAHAYA ADVERTISING', 'Jl. ters Sulfat 71 Malang', '0341-7304773', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('157', 'CARREFOUR', 'Jl. A. Yani No 2 Malang', '0341470234/082208255542', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('158', 'CV BUMI BUANA CITRA', 'Jl. Industri 78 - 82 Mangliawan Malang', '085755409719', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('159', 'CV. CAHAYA MUSTIKA', 'Jl. MT Hariyono Malang Ruko Istana Dinoyo B 11 Malang', '08155501980', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('160', 'CV. CARMEL HILL MACHINERY', 'Jl. Tumenggung Suryo 21 A Malang', '0341 492032', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('161', 'CV. GREEN YUFID GROUP / ASTON PRINTER', 'Jl. Sigura - gura Barat No 20F', '0341-558893 / 085790973323', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('162', 'CV. MESIN JATIM', 'Jl. Ronggolawe Kav. 18 No. 13', '085398000857', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('163', 'CV. RONGGOLAWE', 'Jl. Raya Jetis Mulyoagung No. 62 Dau Malang', '0341532138 / 7728434', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('164', 'CV. ROWELIN PERSADA UTAMA', 'Jalan Ikan Cucut No. 2 Kemirahan Malang', '081542478444', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('165', 'CV. UNO MEDIA', 'Jl. Kesatrian', '085749619148', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('166', 'CYBER AKSES', 'Jl. Piranha Atas 288 Malang', '08174822412', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('167', 'DATSUN MALANG', 'JL. S.Parman 95 Malang', '0341491101', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('168', 'DESRO DESIGN', 'Jl. LS Sucipto 192 Malang', '081233610878', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('169', 'DIANS PRINTS', 'Jl. Kendalsari Barat 1 No 4 Malang', '08123302100/08113038824', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('170', 'DIGITAL PHOTO GRAPHICS', 'Jl. Raya Siligita No. 12X Nusa Dua - Bali', '0361 778034', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('171', 'focus speed', 'Jl. Perusahaan No 31 Karanglo', '085234646699', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('172', 'HALMIN BALI', 'Jl. Diponegoro Komp. Pertokoan kertawijaya Blok A - 10 Denpasar', '0361-248803', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('173', 'HONDA MOBIL SUKUN', 'Jl. S. Supriadi nO 19.22 Malang', '0341363477', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('174', 'INET BALI', 'Pertokoan Imam Bonjol Square A-20', '089603012929', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('175', 'INIXINDO', 'Jl. Jemursari Utara II No 24 Surabaya', '031-8299398', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('176', 'JADIMAU.COM', 'Jl. Danau Surubec Sawojajar Kedung Kandang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('177', 'JANTRA KEDIRI', 'KEDIRI', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('178', 'JANTRA SIDOARJO', 'SIDOARJO', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('179', 'JOLO DAIHATSU MALANG', 'Malang', '081236686646', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('180', 'KOCHIRO', 'Bantaran 1 No. 45 Malang', '0341 784580', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('181', 'LENTERA ADV.', 'Jl. Letda Made Putra No. 26 Bali', '0361-254263', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('182', 'MALANG TV', 'Jl. Puncak Joyo Agung Merjosari', '0341 550088', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('183', 'MALANGTIMES.COM', 'Ruko Tlogomas Square Kav. 14 Malang Jatim, ', '03415074961', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('184', 'MAXZ LAB', 'Jl. Karya Barat 21 Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('185', 'merpati bali', 'Jl Raya Kuta 67 Bali', '0361764665', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('186', 'MITSUBISHI SERVICES', 'Jl Candi Mendut Utara No 15', '085855135006', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('187', 'PASSANG ORNAMEN', 'Jl. MT. Haryono Gg. 2 Malang', '08125437303', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('188', 'PERDANA PAINT REPAIR', 'Jl. Jaksa Agung Suprapto No. 7 Malang', '0341-7010000', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('189', 'PERUM DAMRI', 'Jl. Letjen S.Parman 11 Malang', '0341-473586', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('190', 'POLYTRON BOJONEGORO', 'Jl. Basuki Rahmad No 44 Bojonegoro', '0353-893131', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('191', 'POLYTRON JEMBER', 'Jl. Letjen Suprapto No 123 C Jember', '0331-337495', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('192', 'POLYTRON KEDIRI', 'Jl. Perintis kemerdekaan (ngronggo) no 23 Kediri', '0354-682235', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('193', 'POLYTRON MADIUN', 'Jl. Wuni No 24 A Madiun', '0351-499248', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('194', 'POLYTRON MALANG', 'Jl. Temenggung Suryo No 100 C', '4803320', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('195', 'POLYTRON PASURUAN', 'Jl. Raden Patah. No 98 Pasuruan', '082236926686', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('196', 'POLYTRON SURABAYA', 'Jl. Rungkut Industri IV No 26 Surabaya', '031-8478098', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('197', 'PROBIS UM MALANG', 'Jl. Semarang 5 Malang', '085100577764', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('198', 'PT BERKAH UTAMA ALLOY', 'Jl. Raya Sedati  38 Desa Wedi Gedangan Sidoarjo', '031-8913500', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('199', 'PT DAKWAH INTI MEDIA (TV9)', 'Jl. Raya Darmo 96 Surabaya', '031-5620999', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('200', 'PT MEDIA TELEVISI LESTARI SATU (METRO TV)', 'Jl. Ketampon Ruko Permata Bintoro Kav 118-123 Surabaya', '03156220991', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('201', 'PT. ADI PUTRO WIRA SEJATI (Mesin)', 'Jl. Bale arjosari 15 Malang', '0341-491139', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('202', 'PT. ARTHAWENA SAKTI GEMILANG TANGERANG', 'Jl. Raya Serang KM 12.5 Kp Cirewed. Ds Sukadamai. Kec Cikupa. Kab.Tangerang. Propinsi Banten', '021-5960499', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('203', 'PT. ASSIST SOFTWARE INDONESIA', 'Pondok Blimbing Indah Blok. E1-14 Malang 65126', '(0341) 419004/490447', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('204', 'PT. ASTRA INTERNASIONAL, TBK. (DAIHATSU MALANG/BODI REPAIR)', 'JL. LA SUCIPTO NO. 241 MALANG', '081803283186', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('205', 'PT. AUTOCHEM INDUSTRY', 'Jl. Raya Gatot Subroto Km.7 Jatake Jatiuwung Tangerang Banten - 15136', '021-5900131', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('206', 'PT. BROMO STEEL INDONESIA', 'Jl.RE Martadinata No. 18-20 Pasuruan', '0343-421074', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('207', 'PT. CAHAYA SURYA BALI INDAH (HINO DEVISION)', 'Jl. Cokroaminoto 470 Denpasar - Bali', '0361-410909', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('208', 'PT. CAHAYA SURYA BALI INDAH (TBSM)', 'Jl. Bypass Ngurahrai 110 C Denpasar', '0361-753887', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('209', 'PT. CENDANA TEKNIKA UTAMA', 'Jl. Raya Sukarno Hatta - Ruko Griya Shanta NR. 24-25 Malang', '0341-496497', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('210', 'PT. CM LAB DIGITAL INDONESIA', 'Jl. Seruni No.9 Malang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('211', 'PT. CYBER NETWORK INDONESIA', 'Jl. Gatsu Barat 333 Bali', '0361 9004770', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('212', 'PT. DEMPO LASER METALINDO', 'Jl. Rungkut Industri I No. 29 Surabaya', '031-8437363', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('213', 'PT. DHOHO MEDIA TELEVISI', 'Jl. Mayjend Panjaitan 1 Kediri', '0354-693999', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('214', 'PT. DOT INDONESIA', 'Perum Permata Hijau No. A.15', '081290090671  (P. Tofin)', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('215', 'PT. ESA SURYA ARCAPADA', 'Jl. Ir. Soekarno No. 17/266 Mojorejo', '08510150280', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('216', 'PT. GIRISA TEKNOLOGI', 'Ruko Taman Borobudur Indah Kav. 33 Jl. Puncak Borobudur No. 1 Malang', '0341-4345807', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('217', 'PT. Hartono Putra', 'Karangploso-Malang', '0341-402454', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('218', 'PT. INDIRATEX SPINDO', 'Jl. Raya Randuagung No.KM. 75, Randutelu, Randuangung, Kec. Singosari, Malang, Jawa Timur', '(0341) 450888', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('219', 'PT. INDONESIA ONLINE ALAMAYA', 'Jl. By Pass Prof. DR. IB Mantra Puri Chandra Asri A-25 Denpasar', '0361-468408', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('220', 'PT. Indonesia Power UPJP Perak Grati Pasuruan', 'Jl. Raya Sby Prob Km. 73 Grati Pasuruan', '0343 413582-3/413695-524-588', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('221', 'PT. Inovasi Tjaraka Buana (MYNET)', 'Jl. Sukabirus No. 88B, Dayeuhkolot, Bandung', '022-87301369', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('222', 'PT. INTERNUSA CIPTA SOLUSI PERDANA', 'Jl. Rawa Domba Kav. Agraria No 160 Jakarta Timur 13440', '021-86604931/08179983176', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('223', 'PT. INTI KARYA TEKNIK - Cikarang', 'Pasar Bersih - Cikarang', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('224', 'PT. KING MANUFACTURE', 'Jl. Amarta Raya No 17 Surakarta', '0271-783029', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('225', 'PT. KUSUMA SATRIA DINASASRI WISATAJAYA (KUSUMA AGRO)Elektro', 'Jalan Abdul Gani Atas Batu Malang', '0341-593333', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('226', 'PT. KUSUMA SATRIA DINASASRI WISATAJAYA (KUSUMA AGRO)Otomotif', 'Jalan Abdul Gani Atas Batu Malang', '0341-593333', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('227', 'PT. MAXZER SOLUSI STERIL CURUNG REJO', 'CURUNG REJO', '-', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('228', 'PT. MORODADI PRIMA 2', 'Jl. Raya Randuagung No.1, Karangkunci, Randuangung, Kec. Singosari, Malang, Jawa Timur 65153', '082339291961', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('229', 'PT. MURNI DIAMOND MOTOR (BP)', 'Jl. Kalijaten No. 4 Sidoarjo', '0317874640', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('230', 'PT. NARAYA TELEMATIKA', 'Ruko Taman Borobudur Indah Kav. 33 Jl. Puncak Borobudur No. 1 Malang', '0341-4345807', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('231', 'PT. PADINET MALANG', 'Malang', '0341404900', null, null, null, null, null, null, null, null, null);
INSERT INTO `mscompany` VALUES ('232', 'PT. PARAMITHA AUTOGRAHA (PAG)', 'Jl. Achmad Yani No 999 Denpasar', '0361 423188 / 422274', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for msguru
-- ----------------------------
DROP TABLE IF EXISTS `msguru`;
CREATE TABLE `msguru` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `chatid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of msguru
-- ----------------------------
INSERT INTO `msguru` VALUES ('1', 'Maskuri Anwar S. Si', null, null, null);
INSERT INTO `msguru` VALUES ('2', 'Ferdianto Utomo', null, null, null);
INSERT INTO `msguru` VALUES ('3', 'Ervina Rufiana Wati, S.Pd', null, null, null);
INSERT INTO `msguru` VALUES ('4', 'Wulan Ayu Sari Asmara S.Pd', null, null, null);
INSERT INTO `msguru` VALUES ('5', 'Dwi Slamet Santoso, SS, M.Pd', null, null, null);
INSERT INTO `msguru` VALUES ('6', 'Widodo Pangestu', null, null, null);
INSERT INTO `msguru` VALUES ('7', 'Soebariadi S.Si', null, null, null);
INSERT INTO `msguru` VALUES ('8', 'Nawan Cahyono M. Pd', null, null, null);
INSERT INTO `msguru` VALUES ('9', 'Kurnia Larasati S. Pd', null, null, null);
INSERT INTO `msguru` VALUES ('10', 'Lilik Fatmala S.Pd', null, null, null);
INSERT INTO `msguru` VALUES ('11', 'Sari Ratna Hidayati S. Si', null, null, null);
INSERT INTO `msguru` VALUES ('12', 'Eko Purwanto S. Pd', null, null, null);
INSERT INTO `msguru` VALUES ('13', 'Mohammad Ardiansyah Aris Setiawan S.Pd', null, null, null);
INSERT INTO `msguru` VALUES ('14', 'Prijo Pamudji S. Pd', null, null, null);
INSERT INTO `msguru` VALUES ('15', 'Hadi Bintoro SS', null, null, null);
INSERT INTO `msguru` VALUES ('16', 'Denny Tristiyanti S. Pd', null, null, null);
INSERT INTO `msguru` VALUES ('17', 'Diah Yuaningsih S. Pd', null, null, null);
INSERT INTO `msguru` VALUES ('18', 'Dwi Putranti Wardhani SS', null, null, null);
INSERT INTO `msguru` VALUES ('19', 'Fitriyah Nur Diana S.Pd', null, null, null);
INSERT INTO `msguru` VALUES ('20', 'Nita Resita S. Pd', null, null, null);
INSERT INTO `msguru` VALUES ('21', 'Willdan P', 'willdan@gmail.com', '123', null);

-- ----------------------------
-- Table structure for msjurusan
-- ----------------------------
DROP TABLE IF EXISTS `msjurusan`;
CREATE TABLE `msjurusan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(75) DEFAULT NULL,
  `id_bidang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of msjurusan
-- ----------------------------
INSERT INTO `msjurusan` VALUES ('1', 'Multimedia', '1');
INSERT INTO `msjurusan` VALUES ('2', 'Teknik Pengelasan', '3');
INSERT INTO `msjurusan` VALUES ('3', 'Teknik Pembangkit Tenaga Listrik', '4');
INSERT INTO `msjurusan` VALUES ('4', 'Teknik Sepeda Motor', '2');
INSERT INTO `msjurusan` VALUES ('5', 'Rekayasa Perangkat Lunak', '1');
INSERT INTO `msjurusan` VALUES ('6', 'Teknik Kendaraan Ringan', '2');
INSERT INTO `msjurusan` VALUES ('7', 'Teknik Komputer dan Jaringan', '1');
INSERT INTO `msjurusan` VALUES ('8', 'Teknik Pemesinan', '3');
INSERT INTO `msjurusan` VALUES ('9', 'Teknik Audio Video', '3');
INSERT INTO `msjurusan` VALUES ('10', 'Manageman Niaga', '3');
INSERT INTO `msjurusan` VALUES ('11', 'Teknik Elektronika Industri', '4');
INSERT INTO `msjurusan` VALUES ('12', 'Kimia Industri', '4');
INSERT INTO `msjurusan` VALUES ('13', 'Animasi', '1');
INSERT INTO `msjurusan` VALUES ('14', 'Teknik Perbaikan Bodi Otomotif', '2');

-- ----------------------------
-- Table structure for mskategori
-- ----------------------------
DROP TABLE IF EXISTS `mskategori`;
CREATE TABLE `mskategori` (
  `id_kategori` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kategori` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mskategori
-- ----------------------------
INSERT INTO `mskategori` VALUES ('2', 'Barat');

-- ----------------------------
-- Table structure for mspembimbing
-- ----------------------------
DROP TABLE IF EXISTS `mspembimbing`;
CREATE TABLE `mspembimbing` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_pembimbing` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `chatid` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mspembimbing
-- ----------------------------
INSERT INTO `mspembimbing` VALUES ('1', 'Anthoni Rahman ST', '+6281231678058', 'antoni', null, null, null);
INSERT INTO `mspembimbing` VALUES ('2', 'Arif Isa Fakhrudi S. Pd', '+6281331818807', 'airifisa', null, null, null);
INSERT INTO `mspembimbing` VALUES ('3', 'Ervin Kurniawan S.Kom', '+6281944944916', 'ervin', null, null, null);
INSERT INTO `mspembimbing` VALUES ('4', 'Joko Mulyono A.Md', '+6281215805898', 'joko', null, null, null);
INSERT INTO `mspembimbing` VALUES ('5', 'Kamsuri S. Pd', '+6285233470102', 'kamsuri', null, null, null);
INSERT INTO `mspembimbing` VALUES ('6', 'Mustafa Darmanto ST', '+6285109680456', 'mustafa', null, null, null);
INSERT INTO `mspembimbing` VALUES ('9', 'Moch Arizal Fauzi', 'mhmmdarzl@gmail.com', 'much12', '3', null, null);

-- ----------------------------
-- Table structure for mspembimbingperusahaan
-- ----------------------------
DROP TABLE IF EXISTS `mspembimbingperusahaan`;
CREATE TABLE `mspembimbingperusahaan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_pembimbing` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mspembimbingperusahaan
-- ----------------------------
INSERT INTO `mspembimbingperusahaan` VALUES ('1', 'Moch Arizal Fauzi', 'testing@gmail.com', 'test', '4');
INSERT INTO `mspembimbingperusahaan` VALUES ('3', 'Muhammad Andika Dayu Anglita Putra', 'andika@gmail.com', 'andika', '4');

-- ----------------------------
-- Table structure for msrole
-- ----------------------------
DROP TABLE IF EXISTS `msrole`;
CREATE TABLE `msrole` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of msrole
-- ----------------------------
INSERT INTO `msrole` VALUES ('1', 'Admin');
INSERT INTO `msrole` VALUES ('2', 'Siswa');
INSERT INTO `msrole` VALUES ('3', 'Pembimbing Sekolah');
INSERT INTO `msrole` VALUES ('4', 'Pembimbing Perusahaan');
INSERT INTO `msrole` VALUES ('5', 'Orang Tua');
INSERT INTO `msrole` VALUES ('6', 'Wali Kelas');

-- ----------------------------
-- Table structure for mssiswa
-- ----------------------------
DROP TABLE IF EXISTS `mssiswa`;
CREATE TABLE `mssiswa` (
  `nis` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL,
  `id_company` int(11) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB AUTO_INCREMENT=20086 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mssiswa
-- ----------------------------
INSERT INTO `mssiswa` VALUES ('18411', 'Arfando Wiyono Pamungkas', '1', '1', 'test@test.com', 'test', '07:00:00', '17:00:00', '1', '2');
INSERT INTO `mssiswa` VALUES ('18615', 'Ahmad Faiz Satriawan', null, null, null, null, null, null, '1', '2');
INSERT INTO `mssiswa` VALUES ('18640', 'Elgi Aqmal Firdaus', null, null, null, null, null, null, '2', '2');
INSERT INTO `mssiswa` VALUES ('18664', 'Jangkung Sadewo Putro', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('18680', 'Muhammad Misbachul Fu Ad', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('18769', 'Galang Catur Wahyu Permadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('18823', 'Rifqi Pratama Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('18855', 'Yoga Kurniawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('18871', 'Haidir Rahul Hammed', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19115', 'Nelvi Ayunda Fatimatuzzahra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19121', 'R. Mukhlisul Ilman Muhammad', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19154', 'Ananta Arviansah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19159', 'Devi Ashlihatu Amaliyah Putri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19244', 'Abdul Salam Raihan Syah Alam Sabilillah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19245', 'Abhiyasha Cipta Dewantara', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19246', 'Adam Noval Ramadhan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19247', 'Afif Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19248', 'Afrian Roy Anggoro', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19249', 'Afrian Yuhan Fado Pradika', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19250', 'Agung Hendrawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19251', 'Agung Setyawan Giantama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19252', 'Ahmad Saiful Hukama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19253', 'Aji Nugroho', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19254', 'Akhsya Sukma Atikasari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19255', 'Aldo Delvyano', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19256', 'Al Rizky Candra Danantya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19257', 'Alvin Rafliane Dica Pramudya Wijaya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19258', 'Anang Ifrandi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19259', 'Ananta Diva Pitaloka', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19260', 'Andi Lorenza', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19261', 'Andre Nesta Wijaya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19262', 'Ar Rosy Ade Purwanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19263', 'Ari Endra Apta Sahasika', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19264', 'Arya Farhan Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19265', 'Avfel Armenta Lesmana Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19266', 'Awwalul Ilmi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19267', 'Bagas Bramantyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19268', 'Bagus Cahyo Utomo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19269', 'Bagus Tri Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19270', 'Baharudin Zakaria', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19271', 'Binzar Bahtiar Arlifudin Amara', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19272', 'Bisma Alif Fauzin Wardani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19273', 'Cahya Ade Risma', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19274', 'Danang Okta Putra Nugroho', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19275', 'Daniel Kristianto Gabriel Farera', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19276', 'Davin Ahnaf Eldiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19277', 'Deby Imas Nur Mawardah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19278', 'Debi Satria Tri Mardani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19279', 'Denny Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19282', 'Dhea Febrian Vanda Puspita', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19283', 'Dian Cahya Pangestu', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19284', 'Dikki Ilham Syahputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19285', 'Dimas Jibran Ashari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19286', 'Dimas Rachmadiyanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19287', 'Dimas Wahyu Firmansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19288', 'Doni Ivan Rosadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19289', 'Dwi Candra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19291', 'Elvan Fahrezi Rahma Yula', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19292', 'Eqistian Patria Wicaksono', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19293', 'Fahmi Al Ahmad', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19294', 'Fakhriza Akbar Fairuz Dewa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19295', 'Falendryal Marcho Falaqsa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19297', 'Febriyan Angga Putra Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19298', 'Fian Defris Anjasmoro', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19299', 'Galang Nandita', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19300', 'Galih Raka Siwi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19301', 'Gede Ryan Sanjaya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19302', 'Hamsa Eka Aditya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19303', 'Hario Aditya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19304', 'Helmy Galang Malinda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19305', 'Ill Hansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19306', 'Indah Rahmawati', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19307', 'Jaditya Dipa Jaladri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19308', 'Kaka Rifky Al Aziz', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19309', 'Kevving Etzuko', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19310', 'Kurniawan Dwi Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19311', 'La Ode Muhammad Zulhiya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19312', 'M. Andhy Azka', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19313', 'M. Refqi Hidayatullah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19314', 'Manuel Yoga Sesario', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19315', 'Miftahul Hadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19316', 'Moch Albi Febriansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19318', 'Mochammad Alfath Akbar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19319', 'Moh. Rizal Efendi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19320', 'Mohamad Nizar Baihaqi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19321', 'Mohamad Yazid Habibie', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19322', 'Mohammad Elyas', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19323', 'Muchamad Andika Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19324', 'Muhamad Yazid Al Bastomi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19326', 'Muhammad Arif', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19327', 'Muhammad Arif Wahendra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19328', 'Muhammad Fairuz Abdal Mufid', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19329', 'Muhammad Laroyba Rakha Iman', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19330', 'Muhammad Thoriq Abid Yulistio', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19331', 'Muhammad Yazid Arzaki', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19333', 'Mukhamad Nur Alfan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19334', 'Munandar Priyo Wibisono', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19335', 'Nicolas Wiroyuda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19336', 'Nur Hidayat', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19337', 'Oktavia Cintya Arta Pertiwi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19338', 'Oktavian Dwi Prayoga', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19339', 'Otniel Hansdai Rainfathan Hutabarat', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19340', 'Penggi Ardi Angsah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19342', 'Qory Zaqla Azzahra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19343', 'Rachmad Dimas Andi Susilo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19344', 'Rachmad Gilang Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19345', 'Rahmad Hidayat Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19346', 'Ramadani Maulana Syah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19347', 'Rangga Rambu Hidayat', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19348', 'Rendi Satrio Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19349', 'Rikki Nur Wahyudi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19350', 'Rio Pamungkas', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19351', 'Risdinata Iqbal Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19352', 'Rizal Cahya Adi Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19353', 'Roudhotul Jannah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19354', 'Saeza Andromeda Vegananda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19355', 'Syaiful Ari Maskur', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19356', 'Savril Ibrahim Anwar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19357', 'Shaik Filhanlal', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19359', 'Syifa Sahidah Qalbi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19360', 'Tiuzi Prima Asridho', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19361', 'Vembri Novitasari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19362', 'Wafa Muhammad Yusuf', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19363', 'Wahyu Bagus Suryananda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19364', 'Welda Kurnia Nova Hariyanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19365', 'Yoga Dwi Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19366', 'Yoga Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19367', 'Yogi Mochammad Abdul Kahfi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19368', 'Yosiva Rizki Nurfitria', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19369', 'Yuane Varenza', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19370', 'Zaenal Arifin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19371', 'Zidan Hidayat Al Kausyar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19372', 'Achsanul Kholiqin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19373', 'Adhan Defa Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19374', 'Afrisal Ramadhani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19375', 'Afrizal Nur Halim', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19376', 'Ageng Ilhamsyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19378', 'Ahmad Choirul Asyuro', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19380', 'Akhmad Septian Dwi Cahyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19381', 'Alfiila Romadhona', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19382', 'Ali Khusna', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19383', 'Alif Vicky Hendriansa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19384', 'Andi Rani Bayu Septian', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19385', 'Arista Zhanuar Titon', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19386', 'Arya Bagas Putra Nadila', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19387', 'Bagas Prayogo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19388', 'Bagas Roy Pradana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19389', 'Beni Septian', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19390', 'Briliant Bisma Saka Aditya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19391', 'Didin Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19392', 'Dimas Aria Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19393', 'Eka Adi Kristanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19394', 'Elia Sangu Ate', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19395', 'Ernanda Ridhul Ihrom', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19396', 'Erwin Kristiono', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19397', 'Evan Kurnia Nuryahya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19398', 'Fatachul Alim Arisakdi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19399', 'Faza Abinsa Johari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19400', 'Fiko Ferdian', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19402', 'Firman Abdul Jaelani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19404', 'Galang Badru Yaza', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19405', 'Galih Rizky Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19406', 'Guntur Woro Etanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19407', 'Handak Tegas M.W', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19408', 'Heksa Restu Masdiana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19409', 'Indra Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19410', 'Jofan Cahya Pradana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19411', 'Julio Sendy Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19412', 'Kiki Rafika Dahlan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19413', 'Lupus Niko Putra Priyanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19414', 'M Faizal Muzaki', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19415', 'M. Rizal Mantofani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19416', 'M.Ulin Nuha', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19417', 'Mahdi Syarief Al Hasny', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19418', 'Miftahul Huda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19419', 'Mochamad Bintang Ryu A', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19420', 'Mochammad Zanuar Reza', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19421', 'Muhammad Ardiasyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19422', 'Muhammad Baihaqi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19423', 'Muhammad Ismail Hidayatullah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19424', 'Muhammad Mufliq Frediansah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19425', 'Muhammad Ramadani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19426', 'Muhammad Shirod Al Zidan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19427', 'Nur. Muhammad Ramadhana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19428', 'Ongky Dwi Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19429', 'Prasetya Ardhi Winata Oetomo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19430', 'Pulung Ardtya Sagotra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19431', 'Rahadian Insan Fitra Cendekia Kamila', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19433', 'Rendi Adi Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19434', 'Rivan Agista', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19435', 'Rizki Sofyan Harianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19436', 'Rui Tegar Priyono', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19437', 'Ryan Okky Juandisa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19438', 'Sukma Novianto Ludriansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19439', 'Trindi Septian', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19440', 'Wahyu Teguh Pribadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19441', 'Yoga Arfiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19443', 'Abdul Qodir Jailani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19444', 'Afgustian Alferransah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19445', 'Afu Asadil Akbar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19446', 'Ahmad Syaifudin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19448', 'Aldito Sadam', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19449', 'Alfan Yulian Hadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19450', 'Ali Dwi Mashudi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19451', 'Andik Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19452', 'Andri Jamal', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19453', 'Arik Yuliansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19456', 'David Dwi Christyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19457', 'Eka Rifki Ulul Amri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19458', 'Fiko Ferdiansah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19459', 'Galang Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19460', 'Gigih Dhuarma Nurdyansah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19461', 'Hadi Muhammad Zhakaria', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19463', 'Jery Valentino', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19464', 'Kelvin Galang Samudra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19465', 'Luhur Ahmad Difa  Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19466', 'Lutvan Feri Pradana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19467', 'Maulana Afrizal', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19468', 'Maulana Fatur Rohman', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19469', 'Mochamad Nafis Hauzan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19470', 'Moh Zen Zain Afandi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19472', 'Mokhamad Doni Afrizal', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19473', 'Muchammad Faisal', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19474', 'Muhammad Badruddin Syafiq', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19475', 'Muhamad Muhklis', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19476', 'Renda Gusti Pramana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19477', 'Reza Diki Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19478', 'Rizki Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19479', 'Satria Ikhsan Aria Dillah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19480', 'Septian Anggara Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19481', 'Wahyu Ahlul Firdaus', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19482', 'Yahya Dedy Firmansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19483', 'Yofi Hilmana Fadli', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19484', 'Yoga Riza Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19485', 'Ahmad Khusnun Zaman', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19486', 'Alvi Khotimah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19487', 'Ananda Elvina Sari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19488', 'Dela Egi Rahmawati', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19489', 'Dwita Rahmawati', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19490', 'Elsa Anggraeni', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19491', 'Ilham Firmansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19492', 'Khayun Rizqun Wasia', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19493', 'Lily Farah Sasmita', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19494', 'M. Fani Tri Erwin Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19495', 'Maristha Karin Narulita', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19496', 'Maulidia Wahyuningsih', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19497', 'Revina Fitri Krisnanda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19498', 'Risma Ida Ariva', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19499', 'Rosa Nur Cahyani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19500', 'Shinta Puspita Dewi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19501', 'Yienza Daratista', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19502', 'Yuniar Fanny Saputri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19503', 'Achmad Dandi Putra Wijaya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19504', 'Achmad Risal Montela', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19505', 'Achmad Zuhwa Nizar Zulmi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19506', 'Ade Candra Wijaya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19507', 'Adi Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19508', 'Aditya Riski Kurniawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19509', 'Aditya Trinanto Nugraha', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19511', 'Ahmad', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19512', 'Ahmad Athif Fikri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19513', 'Ahmad Saifudin Alawi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19514', 'Ahmad Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19516', 'Aldi Wanda Haristama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19517', 'Aldi Yulianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19518', 'Aldo Natalino Bernardliko', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19520', 'Ananda Bagus Oktavia', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19521', 'Ananta Ferdiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19522', 'Andi Aditya Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19523', 'Andi Damai Rahardjo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19524', 'Angga Tri Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19525', 'Angger Ragil Dinar Maylian', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19526', 'Aprilianto Ardiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19527', 'Arif Affandi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19529', 'Audra Rivansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19530', 'Aureleo Duval', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19531', 'Ayu Firnanda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19532', 'Azel Desca Putra Arnanda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19533', 'Bagus Eka Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19534', 'Brian Ramadani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19535', 'Cahya Bintang Prakoso', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19536', 'Ciko Sandy Amirulloh', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19537', 'Dani Kurniawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19538', 'Deli Alfin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19539', 'Dewi Rahmawati', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19540', 'Dhani Nur Rahmad', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19541', 'Dimas Guritno', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19542', 'Dimas Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19544', 'Dino Sapta Rizki', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19545', 'Dio Wahyu Wijoyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19547', 'Dwiky Yusuf Afandy', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19548', 'Eko Bagus Rahmanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19549', 'Eko Susilo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19550', 'Eri Tri Wahyudi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19552', 'Fadillah Noer Ashary', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19553', 'Farhan Daffa Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19554', 'Fatkhul Dhiya Ul Haqillah Al Qudus', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19555', 'Febrian Putra Nugraha', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19556', 'Febrian Septa Putra Prasetya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19557', 'Ferdi Kurniawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19558', 'Fiyo Apriliyo Rahmansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19559', 'Fransisco Musafet', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19560', 'Galang Krisna Pramudika', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19562', 'Gusti Indra Cahya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19563', 'Guvano Wildana Pramanta', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19564', 'Hasrul Ginanjar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19565', 'Hermi Arif Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19566', 'Hisyam Badar Danuarta', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19567', 'Indra Sucahyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19568', 'Irfan Agus Wahyudi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19569', 'Irvan Yusnizar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19570', 'Isvanur Dwi Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19572', 'Jun Edi Catur Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19573', 'Koirul Hanam', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19574', 'Krisna Putra Adi Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19575', 'Kurniawan Dwi Yulianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19576', 'Lintang Handal Galang Aradhana Sitangsu', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19577', 'M. Adam Ramadhani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19578', 'M.Deni Kurniawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19579', 'Marela Siska Dinda Wati', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19580', 'Mochamad Aldo Versyo Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19581', 'Mochammad Khodir', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19582', 'Mochammad Nurul Huda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19584', 'Mochammad Renaldi Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19585', 'Mohamad Denta Abdul Rosyid', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19587', 'Mualif Fadhli Maula', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19588', 'Muhamad Ali Fahmi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19589', 'Muhamad Misbach Suryo Nugroho', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19590', 'Muhamad Prasetyo Amarta', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19591', 'Muhammad Abdy Hendrawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19592', 'Muhammad Adi Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19593', 'Muhammad Ainul Dzaki', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19594', 'Muhammad Adji Prasetya Darmawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19595', 'Muhammad Alfian Rizky S', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19596', 'Muhammad Alfin Syarif Hamizan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19597', 'Muhammad Amirudin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19598', 'Muhammad Andy Firmansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19599', 'Muhammad Bayu Aji Kurniawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19601', 'Muhammad Dzikryan Rifanda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19602', 'Muhammad Farhan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19603', 'Muhammad Hadiyyatulloh', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19604', 'Muhammad Islahudin Akbar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19605', 'Muhammad Nur Andika', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19606', 'Muhammad Nurlianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19607', 'Muhammad Reza As Adi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19608', 'Muhammad Rizal Fahrudin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19609', 'Muhammad Syahrul Ramadhan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19611', 'Muhammad Wafik Wildan Zamroni', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19612', 'Muhammad Yusron Arif', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19613', 'Myco Wahyudha Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19614', 'Nadilla Putri Wijaya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19615', 'Nadindra Sefa Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19617', 'Neda Putra C', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19618', 'Nedo Putra C', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19619', 'Muhammad Adam Rivaldo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19620', 'Nur Azis', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19621', 'Oktavian Galih Wirandi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19622', 'Petra Febri Adi Kristian', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19623', 'Priyo Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19624', 'Putra Regina Prayoga', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19625', 'Raditya Surya Hermawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19627', 'Rahmat Pratama Hindarto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19628', 'Raihan Kevin Ardika Fahreza', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19630', 'Rangga Januar Amayara', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19631', 'Reksa Putra Adi Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19632', 'Reza Andrean Fernando', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19633', 'Rezon Aristo Efendy', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19634', 'Riski Firmansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19635', 'Risky Purba Adi Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19636', 'Risky Sahroni', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19638', 'Rivky Firmansyah Al Farizi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19640', 'Rohan Irmansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19642', 'Rully Dwi Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19643', 'Ryan Wahyu Kurnianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19644', 'Ryco Ardiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19646', 'Septa Hardi Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19647', 'Sofyan Adi Permana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19648', 'Surya Lintang Gumebyar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19650', 'Teguh Wahyudi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19651', 'Tomas Adi Pranoto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19652', 'Toni Andrianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19653', 'Toriq Afif Fernanda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19654', 'Valentino Frana Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19656', 'Venno Hari Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19657', 'Vila Yufen Arvino', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19658', 'Wildhan Rafif Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19659', 'Wiranto Agung Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19660', 'Yuda Prasetyo Lestari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19661', 'Abdullah Moebin Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19662', 'Abdullah Roziqin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19663', 'Agung Ginanjar Mulyono', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19665', 'Agus Ahmad', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19666', 'Akhmad Wahyu Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19668', 'Aldi Septiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19669', 'Alfandri Setyawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19670', 'Alvin Bagus Aditya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19672', 'Anggi Narta Utama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19673', 'Aril Febrian Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19675', 'Arjun Ningrat Fajar Fadloli', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19676', 'Arta Cahaya Sampurno', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19677', 'Arya Eka Putra Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19678', 'Brahmanarendra Arya Rahardja', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19679', 'Danny Baskara Wijaya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19680', 'Ditto Fransisco', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19681', 'Donny Chrisendra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19682', 'Eka Mario Setyawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19683', 'Farhan Ramdani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19685', 'Fernanda Reza Syahputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19686', 'Irfan Mardiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19687', 'Jenny Septianingrum', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19690', 'M. Fiki Aditya Candra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19691', 'Mohammad Ikhwanul Hakim', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19692', 'Muh. David Dwiyanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19693', 'Muhamad Iqbal Dwi Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19695', 'Muhammad Fairus Zabadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19696', 'Muhammad Imam Fauzi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19697', 'Muhammad Ivani Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19699', 'Muhammad Rizki Andrianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19700', 'Naufal Akhdan Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19701', 'Novreza Arian Valen', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19702', 'Rahayu Pinerkahan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19703', 'Rayhan Fauzani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19704', 'Reyvan Tresnaldi Aby Ramadhan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19706', 'Reza Maulana A', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19707', 'Ruly Arizqi Irfansyach', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19708', 'Ryan Abila', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19709', 'Safryan Adhe Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19710', 'Saifuddin Akbar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19711', 'Sandi Dewangga Priantoko', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19712', 'Satria Ardiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19713', 'Tandi Andrian Wicaksono', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19714', 'Vijay Gunawan Mahmud', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19715', 'Willy Arianto Pramana Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19716', 'Yeski Kristian', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19717', 'Yohsafat Rehan Dwi Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19718', 'Yusril Aditya Yahya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19719', 'Zidan Machbubi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19721', 'Andi Yulpikar Anwar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19722', 'Ariya Pramasta', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19723', 'Bagus Fadli', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19724', 'Bakal Ibnu Afan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19725', 'Candra Krisna Dani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19726', 'David Aria Susanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19728', 'Dyon Mario Candra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19729', 'Fajar Arifian', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19730', 'Farid Zaidan Abdillah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19731', 'Frendy Flarezza', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19732', 'Maulana Wahyu Putra Kusuma', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19733', 'Muhamad Maulana Ardiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19734', 'Muhammad Arwani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19735', 'Muhammad Farid Arya Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19736', 'Muhammad Muhaimin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19737', 'Muhammad Verza Kusnaendo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19738', 'Nedi Septyadiono', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19740', 'Nur Mukhlas', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19741', 'Rio Ambar Frananda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19742', 'Salasa Muhammad Alim', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19743', 'Septian Dimas Al Adam', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19745', 'Syaheri Ramadhan Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19746', 'Vicenzo Dida', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19747', 'Ade Marselia Agung Sekti W', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19748', 'Arno Surya Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19749', 'Ayub Fardana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19750', 'Bunga Angnesta Arta Bhakti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19751', 'Dodik Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19752', 'Fastabichul Ayu Rahmadanti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19753', 'Muhammad Zainal Efendi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19754', 'Nanda Aji Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19755', 'Nanda Raenado', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19756', 'Okky Yulistya Pratiwi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19757', 'Ricky Andi Dwi Fernando', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19758', 'Sabilla Nur Triasa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19759', 'Adyan Ghozy Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19760', 'Agil Abdur Ruuf', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19761', 'Alfonsho Ady Rekliansha', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19762', 'Aliffino Putra Mawardika', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19763', 'Amanda Latifah Nur Pahlevy', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19764', 'Ananta Wira Yudha', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19765', 'Andre Edua Putra Irnanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19766', 'Aulia Dandi Firmansyah Sunardi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19768', 'Deni Setiyawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19769', 'Denny Asmara Hadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19770', 'Fayyadh Kholid Baswedan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19771', 'Ilham Aji Ramadhan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19773', 'Muhamad Fiki Fahruroji', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19774', 'Muhammad Arif Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19775', 'Muhammad Faizal', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19776', 'Muhammad Rifki', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19777', 'Nanda Marfin Yohanes', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19778', 'Nur Hadi Muslimin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19779', 'Putra Yolanda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19780', 'Reynaldy Harvye Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19781', 'Rifki Bagus Naufal', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19782', 'Riski Vrayoga', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19783', 'Rizal Himawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19786', 'Sulton Reisyha Afif Dinulloh', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19787', 'Tria Agustin Nova Berliana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19788', 'Yusuf Halim', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19789', 'Zefa Singgih Syahputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19790', 'Zefanya Febrian Ardianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19791', 'Abril Dhea Joti Pramanda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19792', 'Adisty Nurjanah Ana Kirana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19794', 'Ahmad Sutikno Alfian', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19795', 'Akmal', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19796', 'Aliefian Ramadhan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19798', 'Aqshal Rizqullah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19799', 'Ardhillah Habibi Alfath', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19800', 'Ariq Artriska', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19801', 'Bagas Lintang Wicaksono', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19802', 'Bagus Kurniawan Hafizh', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19803', 'Bintang Indi Nargari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19804', 'Della Anggraeni', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19805', 'Dida Wahyu Wirayoga', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19806', 'Didan Putra Surya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19807', 'Diva Dwi Puspitasari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19808', 'Farid Muhajir', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19809', 'Felly Tri Ayunda Aisa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19811', 'Gusti Aji Rizky Indarto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19812', 'Ian Alif Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19813', 'Igo Geo Gigih Hio Ilhamulloh', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19814', 'Jemita Satya Kiranti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19816', 'Kharisma Romadhon Eka Safitri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19818', 'Mahendra Pujo Prianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19819', 'Muhammad Akbar Ilhamka', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19820', 'Muhammad Andika Dayu Anglita Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19821', 'Novan Hadi Kurniawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19823', 'Putra Alan Rosydi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19824', 'Rachmad Nur Aditya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19825', 'Rafif Pradyatma Surya Wahyudi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19826', 'Rahmad Nakula Zanuar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19828', 'Risqullah Fani Fadhil Rifat', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19829', 'Robby Prawira Eka Pasha', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19830', 'Sevin Ariel Leonanda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19831', 'Solichan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19832', 'Sonia Putri Oktavia', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19833', 'Suhardi Priyanata', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19834', 'Surya Azhar Kusuma Haris', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19835', 'Tegar Primantara', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19836', 'Vaskho Mochammad Andilla', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19837', 'Vera Kristina', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19838', 'Wahyu Prima Yuda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19839', 'Yogie Erlangga Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19840', 'Yulia Vaiza Febriana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19841', 'Yusinta Putri Febriana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19842', 'Achmadi Gusrif Kandola', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19843', 'Aditiya Prasetiyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19844', 'Agung Brahmastha Krisnha Jagad Satria', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19845', 'Ahmad Fashihudin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19846', 'Ahmad Tegar Dwipa Yoga', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19847', 'Alexander Setya Pribadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19848', 'Bielqies Phatherecia Shelvyne', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19851', 'Diovanda Reyhanandi Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19853', 'Eka Aditya Firdaus', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19854', 'Faisal Aditya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19855', 'Febriyanti Naela Mahmudah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19856', 'Friscillia Melani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19857', 'Gilang Septiano', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19859', 'Ifa Kurniasari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19860', 'Ilham Ardiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19862', 'Jenni Presila', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19863', 'Maftuh Afandi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19864', 'Mochamad Yanuar Karisma Yuda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19865', 'Muhammad Bashofi Sudirman', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19866', 'Muhammad Shobirin Misbah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19868', 'Nia Oktavia', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19869', 'Nuryatus Zahroh', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19871', 'Putri Wahyuningsih', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19872', 'Radhiva Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19873', 'Rahadian Yuwananda A. S.', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19874', 'Raki Ammar Ismoko', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19875', 'Reno Iman Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19877', 'Rizal  Nur Afandi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19878', 'Sahrul Kirom', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19879', 'Sandi Andika Akbarrulloh', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19880', 'Steven Geovino', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19881', 'Syahlan Hadi Nur Ichwan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19882', 'Syaifi Anwar Hidayatullah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19883', 'Teggar Saputra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19884', 'Vera Anis Fitria', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19885', 'Verlina Margaretha', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19886', 'Yoga Dafin Ferdiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19887', 'A As Mia Desfitria Sari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19888', 'Abdul Ghofur', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19889', 'Achmad Affandy', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19890', 'Ady Ryan Yosafat', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19891', 'Agathis Dammara Attariqi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19892', 'Ahmad Nasrukhan Andriansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19893', 'Akhdan Hafish Sofyan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19894', 'Alexander Benyamin Dandra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19895', 'Alfino Radtya Amanullah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19896', 'Allaudin Bagus Satriaji', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19897', 'Anandia Shafina Salsabillah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19898', 'Anggina Rose', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19899', 'Arya Putra Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19900', 'Asha Aurora Ninawa Mayantis', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19901', 'Asnely Alvi Nurillah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19902', 'Aulia Dina Rosyidah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19903', 'Ayu Yulia Anggraeni', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19904', 'Azhar Zakaria', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19905', 'Bachrul Ulum Ali Mahmud', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19906', 'Bawon Meilina', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19907', 'Berlian Maharani Citra Dewi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19908', 'Bimo Manggala Vira Sakti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19909', 'Bintang Putra Sadewa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19911', 'Daffa Rizqi Septiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19912', 'Danang Alya Prakoso', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19916', 'Dendy Krisdianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19918', 'Dhea Nur Aisyiah Efendi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19919', 'Dian Permata Sari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19920', 'Diana Novita Sari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19921', 'Dicki Valentino', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19922', 'Dio Febian Aditama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19923', 'Dita Via Pramesella', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19924', 'Djaduex  Saka Nugraha', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19925', 'Dwi Fatiawati', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19926', 'Dwiky Alfikriansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19927', 'Eka Bayu Kurniawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19929', 'Erly Tsamarah Difa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19930', 'Fahri Misbahul Munir', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19931', 'Fajar Wahyu Setiawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19932', 'Fallah Adam Wardhana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19933', 'Farah Mufidah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19934', 'Febiana Wulandari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19935', 'Febriana Eka Alviandani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19936', 'Firman Syah Kurniawan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19937', 'Galih Kusuma Putra', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19939', 'Hanif Zulfikri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19941', 'Hendra Wahyudi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19942', 'Hening Augusty Mukafaah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19943', 'Johan Aditya Hadinata', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19944', 'Juvita Avianti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19945', 'Kaisar Yulian Al Akbar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19946', 'Khana Putri Mega', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19947', 'Khoirul Adi Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19949', 'Kurnia Nur Aisyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19950', 'M. Dimas Ariya Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19952', 'Meisya Afifa Rahma', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19953', 'Miftahul Huda Nur Azis', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19954', 'Moch Arizal Fauzi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19955', 'Muhammad Arya Fandi Fardana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19956', 'Muhammad Aditiya Ramadhan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19957', 'Muhammad Alief Rahman Hakim', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19958', 'Muhammad Alif Jamaludin Baharsyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19959', 'Muhammad Bagus Ferdiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19960', 'Muhammad Faiq Hidayatullah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19961', 'Muhammad Farhan Hamid', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19962', 'Muhammad Nur Ramadhan Syah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19963', 'Muhammad Rizki Zulfikar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19964', 'Nanda Dwiky Prayoga', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19965', 'Nazhima Fakhira Farhaz', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19966', 'Nicko Suhadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19967', 'Ninda Rosita Dewi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19969', 'Nur Ahmad Fajar', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19970', 'Putra Dwi Cahyadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19971', 'Putri Novita Sari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19972', 'Putri Wahyu Oktaviani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19973', 'Raden Osa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19974', 'Rama Andika Priambada', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19975', 'Rayhan Hari Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19976', 'Riza Adhani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19977', 'Roby Zainul Abidin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19978', 'Safa Bintang Nabiyan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19979', 'Salsa Nabila Marta', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19980', 'Selvita Aldina Putri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19981', 'Shirojul Munir', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19982', 'Silfia Anggraeni', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19983', 'Syalomiele Pratama Agustinus Susanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19985', 'Teuqilla Arni Sugianto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19986', 'Yanuar Bayu Yudhantara', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19987', 'Yefta Putra N', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19988', 'Yoan Putra Adetya', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19989', 'Yoga Adi Pratama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19990', 'Zahwa Dewi Syahrani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19991', 'Adinda Mutia Syahrani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19992', 'Adinda Nova Eliza', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19993', 'Adinda Zahra Safira Nisaa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19994', 'Aisyah Ulandari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19996', 'Amelia Amanda Putri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19997', 'Anggelya Mery Ningtyastuti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19998', 'Anjelina Lidia Ananda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('19999', 'Ariska Rahayu Ningtias', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20000', 'Aryani Rizky Rahmalia Ivani', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20001', 'Aulia Jihan Salsabila', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20002', 'Azizah Senja Mega Sari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20003', 'Daffa Nawwaf Nadirraihan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20004', 'Delva Ayu Riwanda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20005', 'Devi Widia Putri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20006', 'Diah Ayu Safitri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20007', 'Dimas Dedi Septian', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20008', 'Dinda Ayu Patricia', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20010', 'Dwi Nur Aini', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20011', 'Eki Sutatik Irianti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20012', 'Eko Eriko Kusuma', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20013', 'Elen Agustin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20014', 'Erlina Indah Safira', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20015', 'Feni Fatmasari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20016', 'Fidiya Sri Astutik', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20017', 'Finta Aulia Widianti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20018', 'Firdiah Agustina Sukmawati', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20019', 'Fitri Dwi Pratiwi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20020', 'Fitri Muaiminah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20021', 'Gadhing Kusumaning Dewy', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20023', 'Icha Valia Rahma Desianti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20024', 'Ifadatul Ummah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20025', 'Ika Syafaroh', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20026', 'Ima Maulidah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20027', 'Indah Sutrianingsih', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20029', 'Isma Fitri Nuraini', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20031', 'Levia Pinky Leoni', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20032', 'Mariska Dwi Damayanti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20033', 'Martha Dinatha Avrilla Vanessa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20034', 'Meidensha Kurnia Fernanda', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20035', 'Nabila Ardistyasari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20036', 'Ning Anida', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20037', 'Nouval Ahmad Arhan', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20038', 'Nova Nur Aisyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20039', 'Pravangasta Sulihyang Levi Helda Valing Hyen', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20040', 'Putri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20041', 'Putri Agustina Rahayu', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20042', 'Putri Auliasari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20043', 'Putri Aurelia Munika', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20045', 'Quiesha Amalia', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20047', 'Ranita', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20048', 'Ria Adelia', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20049', 'Riska Dwi Hafifa', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20051', 'Sasnanita Bintang V', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20052', 'Sherlina Wayu Astutik', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20053', 'Shesi Putri Prameswari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20054', 'Silvina Febiyanti', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20055', 'Siti Komariah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20056', 'Syifa Alifianti Andariesta', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20057', 'Tri Dwi Eliga', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20058', 'Tsani Isma Sifana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20059', 'Tsaniatun Nabila', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20060', 'Wahyu Eka Lestari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20061', 'Wiji Lestari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20062', 'Winda Cindi Nurliyanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20063', 'Yuliati', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20064', 'Zulkaisa Ngaris Pramudita', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20065', 'Ahmat Rojikin', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20066', 'Aldo Rizal Bagir Mahdi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20067', 'Angga Satria Ardiansyah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20068', 'Ismawanto', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20069', 'Jasmine Ayu Qumalya Putri', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20070', 'Muhamad Firdaus', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20071', 'Muhammad Enrico Dwi Putra Perdana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20072', 'Naito Yuuki', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20073', 'Rahmat Hadi', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20074', 'Rangga Elang Mustika Prabowo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20075', 'Tafania Ad Ha Safarah', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20076', 'Titik Yulita Sari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20077', 'Dea Aulia Rachma', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20078', 'Alvian Adi Purnama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20079', 'Aditia Eko Prasetyo', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20080', 'Felix Vannial Ramadhan Fiari', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20081', 'Salsabilla Zahrani Purnama', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20084', 'Raihan Almer Maulana', null, null, null, null, null, null, null, '2');
INSERT INTO `mssiswa` VALUES ('20085', 'Farhad Ehla Muzaki', null, null, null, null, null, null, null, '2');

-- ----------------------------
-- Table structure for tbjadwal
-- ----------------------------
DROP TABLE IF EXISTS `tbjadwal`;
CREATE TABLE `tbjadwal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembimbing` int(11) NOT NULL,
  `id_company` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbjadwal
-- ----------------------------
INSERT INTO `tbjadwal` VALUES ('5', '1', '1', '2020-11-27');

-- ----------------------------
-- Table structure for tbjurnal
-- ----------------------------
DROP TABLE IF EXISTS `tbjurnal`;
CREATE TABLE `tbjurnal` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nis` int(11) DEFAULT NULL,
  `waktu_masuk` datetime DEFAULT NULL,
  `waktu_pulang` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `kegiatan_kerja` text,
  `prosedur_pengerjaan` text,
  `spesifikasi_bahan` text,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `status_hadir` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbjurnal
-- ----------------------------
INSERT INTO `tbjurnal` VALUES ('3', '18411', '2020-11-08 11:26:45', null, '1', null, null, null, null, null, null);
INSERT INTO `tbjurnal` VALUES ('5', '18411', '2020-11-09 09:43:14', null, '1', null, null, null, null, null, null);
INSERT INTO `tbjurnal` VALUES ('6', '18411', '2020-11-10 19:30:28', null, '1', null, null, null, '112.5428757', '-7.8938252', null);
INSERT INTO `tbjurnal` VALUES ('7', '18411', '2020-11-11 10:57:42', null, '2', 'Mamang', 'Saya mau ngisi jurnal', 'Tolong ACC ya', '112.6018943', '-7.9273865', null);
INSERT INTO `tbjurnal` VALUES ('8', '18411', '2020-11-20 14:30:50', '2020-11-20 15:03:01', '2', 'Tgjj', 'Ggg', 'Vhh', '112.6018943', '-7.9273865', null);
INSERT INTO `tbjurnal` VALUES ('9', '18411', '2020-11-21 09:56:09', null, '0', null, null, null, '112.5428757', '-7.8938252', null);
INSERT INTO `tbjurnal` VALUES ('10', '18615', '2020-11-21 09:56:09', null, '2', null, null, null, '112.5428757', '-7.8938252', null);
INSERT INTO `tbjurnal` VALUES ('11', '18615', '2020-11-22 09:56:09', null, '1', null, null, null, '112.5428757', '-7.8938252', null);

-- ----------------------------
-- Table structure for tb_monitoring
-- ----------------------------
DROP TABLE IF EXISTS `tb_monitoring`;
CREATE TABLE `tb_monitoring` (
  `id_monitoring` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL,
  `tgl_monitoring` date DEFAULT NULL,
  `division` varchar(75) NOT NULL,
  `evaluasi_hasil` text,
  `penyelesaian` text,
  `id_company` bigint(20) NOT NULL,
  PRIMARY KEY (`id_monitoring`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_monitoring
-- ----------------------------

-- ----------------------------
-- Table structure for tb_monitoring_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_monitoring_detail`;
CREATE TABLE `tb_monitoring_detail` (
  `id_monitoring_detail` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_monitoring` bigint(20) NOT NULL,
  `nis_siswa` bigint(20) NOT NULL,
  `check_jurnal` int(1) DEFAULT NULL,
  `check_apd` int(1) DEFAULT NULL,
  `check_rambut` int(1) DEFAULT NULL,
  `check_lksp` int(1) DEFAULT NULL,
  `check_kinerja` int(1) DEFAULT NULL,
  `check_penampilan` int(1) DEFAULT NULL,
  `alpa_siswa` text,
  PRIMARY KEY (`id_monitoring_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_monitoring_detail
-- ----------------------------
