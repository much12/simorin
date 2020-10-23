/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : kksi2020

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-10-23 09:55:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for msbidang
-- ----------------------------
DROP TABLE IF EXISTS `msbidang`;
CREATE TABLE `msbidang` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_bidang` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of msbidang
-- ----------------------------

-- ----------------------------
-- Table structure for mscompany
-- ----------------------------
DROP TABLE IF EXISTS `mscompany`;
CREATE TABLE `mscompany` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(75) DEFAULT NULL,
  `alamat_perusahaan` text,
  `telp_perusahaan` varchar(25) DEFAULT NULL,
  `nama_hrd` varchar(100) DEFAULT NULL,
  `telp_hrd` varchar(25) DEFAULT NULL,
  `id_bidang` int(11) DEFAULT NULL,
  `id_pembimbing` int(11) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `id_pembimbing_perusahaan` int(11) DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mscompany
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of msguru
-- ----------------------------

-- ----------------------------
-- Table structure for msjurusan
-- ----------------------------
DROP TABLE IF EXISTS `msjurusan`;
CREATE TABLE `msjurusan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(75) DEFAULT NULL,
  `id_bidang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of msjurusan
-- ----------------------------

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mspembimbing
-- ----------------------------

-- ----------------------------
-- Table structure for mspembimbingperusahaan
-- ----------------------------
DROP TABLE IF EXISTS `mspembimbingperusahaan`;
CREATE TABLE `mspembimbingperusahaan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_pembimbing` varchar(75) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mspembimbingperusahaan
-- ----------------------------

-- ----------------------------
-- Table structure for msrole
-- ----------------------------
DROP TABLE IF EXISTS `msrole`;
CREATE TABLE `msrole` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of msrole
-- ----------------------------

-- ----------------------------
-- Table structure for mssiswa
-- ----------------------------
DROP TABLE IF EXISTS `mssiswa`;
CREATE TABLE `mssiswa` (
  `nis` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(75) DEFAULT NULL,
  `id_jurusan` int(11) DEFAULT NULL,
  `id_guru` int(11) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mssiswa
-- ----------------------------

-- ----------------------------
-- Table structure for tbjurnal
-- ----------------------------
DROP TABLE IF EXISTS `tbjurnal`;
CREATE TABLE `tbjurnal` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nis` int(11) DEFAULT NULL,
  `waktu_masuk` time DEFAULT NULL,
  `waktu_pulang` time DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `kegiatan_kerja` text,
  `prosedur_pengerjaan` text,
  `spesifikasi_bahan` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbjurnal
-- ----------------------------
