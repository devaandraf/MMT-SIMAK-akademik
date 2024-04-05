/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : simak_database

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2024-04-05 14:16:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `anggota`
-- ----------------------------
DROP TABLE IF EXISTS `anggota`;
CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `periode_ajar` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of anggota
-- ----------------------------

-- ----------------------------
-- Table structure for `guru`
-- ----------------------------
DROP TABLE IF EXISTS `guru`;
CREATE TABLE `guru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `jk` enum('Laki - laki','Perempuan','','') NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of guru
-- ----------------------------

-- ----------------------------
-- Table structure for `jawaban_pembiasaan`
-- ----------------------------
DROP TABLE IF EXISTS `jawaban_pembiasaan`;
CREATE TABLE `jawaban_pembiasaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `pertanyaan_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `nilai_angka` int(11) NOT NULL,
  `form_habit_id` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jawaban_pembiasaan
-- ----------------------------
INSERT INTO `jawaban_pembiasaan` VALUES ('1', '1', '1', '4', '3', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('2', '1', '2', '4', '3', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('3', '1', '3', '4', '3', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('4', '1', '4', '4', '3', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('5', '1', '5', '4', '3', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('6', '2', '6', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('7', '2', '7', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('8', '2', '8', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('9', '2', '9', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('10', '3', '10', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('11', '3', '11', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('12', '3', '12', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('13', '3', '13', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('14', '4', '14', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('15', '4', '15', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('16', '4', '16', '1', '0', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('17', '1', '1', '4', '3', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('18', '1', '2', '4', '3', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('19', '1', '3', '4', '3', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('20', '1', '4', '4', '3', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('21', '1', '5', '4', '3', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('22', '2', '6', '6', '3', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('23', '2', '7', '7', '2', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('24', '2', '8', '9', '3', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('25', '2', '9', '7', '2', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('26', '3', '10', '11', '2', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('27', '3', '11', '7', '2', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('28', '3', '12', '7', '2', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('29', '3', '13', '7', '2', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('30', '4', '14', '7', '2', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('31', '4', '15', '7', '2', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('32', '4', '16', '7', '2', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('33', '1', '1', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('34', '1', '2', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('35', '1', '3', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('36', '1', '4', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('37', '1', '5', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('38', '2', '6', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('39', '2', '7', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('40', '2', '8', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('41', '2', '9', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('42', '3', '10', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('43', '3', '11', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('44', '3', '12', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('45', '3', '13', '1', '0', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('46', '4', '14', '7', '2', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('47', '4', '15', '7', '2', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('48', '4', '16', '7', '2', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('49', '1', '1', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('50', '1', '2', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('51', '1', '3', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('52', '1', '4', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('53', '1', '5', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('54', '2', '6', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('55', '2', '7', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('56', '2', '8', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('57', '2', '9', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('58', '3', '10', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('59', '3', '11', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('60', '3', '12', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('61', '3', '13', '1', '0', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('62', '4', '14', '7', '2', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('63', '4', '15', '7', '2', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('64', '4', '16', '7', '2', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('65', '1', '1', '4', '3', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('66', '1', '2', '4', '3', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('67', '1', '3', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('68', '1', '4', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('69', '1', '5', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('70', '2', '6', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('71', '2', '7', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('72', '2', '8', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('73', '2', '9', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('74', '3', '10', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('75', '3', '11', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('76', '3', '12', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('77', '3', '13', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('78', '4', '14', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('79', '4', '15', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('80', '4', '16', '1', '0', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('81', '1', '1', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('82', '1', '2', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('83', '1', '3', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('84', '1', '4', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('85', '1', '5', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('86', '2', '6', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('87', '2', '7', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('88', '2', '8', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('89', '2', '9', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('90', '3', '10', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('91', '3', '11', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('92', '3', '12', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('93', '3', '13', '1', '0', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('94', '4', '14', '13', '3', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('95', '4', '15', '13', '3', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('96', '4', '16', '7', '2', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('97', '1', '1', '4', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('98', '1', '2', '4', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('99', '1', '3', '4', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('100', '1', '4', '4', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('101', '1', '5', '4', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('102', '2', '6', '6', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('103', '2', '7', '7', '2', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('104', '2', '8', '9', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('105', '2', '9', '7', '2', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('106', '3', '10', '12', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('107', '3', '11', '7', '2', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('108', '3', '12', '7', '2', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('109', '3', '13', '7', '2', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('110', '4', '14', '13', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('111', '4', '15', '13', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_pembiasaan` VALUES ('112', '4', '16', '7', '2', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `jawaban_profil`
-- ----------------------------
DROP TABLE IF EXISTS `jawaban_profil`;
CREATE TABLE `jawaban_profil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `pertanyaan_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `form_profil_id` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jawaban_profil
-- ----------------------------
INSERT INTO `jawaban_profil` VALUES ('1', '1', '1', '1', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('2', '1', '1', '2', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('3', '1', '1', '3', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('4', '1', '1', '4', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('5', '1', '1', '5', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('6', '1', '1', '6', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('7', '1', '1', '7', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('8', '1', '1', '8', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('9', '1', '1', '1', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('10', '1', '1', '2', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('11', '1', '1', '3', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('12', '1', '1', '4', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('13', '1', '1', '5', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('14', '1', '1', '6', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('15', '1', '1', '7', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('16', '1', '1', '8', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('17', '1', '1', '1', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('18', '1', '1', '2', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('19', '1', '1', '1', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('20', '1', '1', '2', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('21', '1', '1', '3', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('22', '1', '1', '4', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('23', '1', '1', '5', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('24', '1', '1', '6', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('25', '1', '1', '7', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('26', '1', '1', '8', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('27', '1', '1', '9', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('28', '1', '1', '10', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('29', '1', '1', '1', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('30', '1', '1', '2', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('31', '1', '1', '3', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('32', '1', '1', '4', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('33', '1', '1', '5', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('34', '1', '1', '6', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('35', '1', '1', '7', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('36', '1', '1', '8', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('37', '1', '1', '9', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('38', '1', '1', '10', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('39', '1', '1', '1', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('40', '1', '1', '2', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('41', '1', '1', '3', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('42', '1', '1', '4', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('43', '1', '1', '5', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('44', '1', '1', '6', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('45', '1', '1', '7', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('46', '1', '1', '8', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('47', '1', '1', '9', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('48', '1', '1', '10', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('49', '1', '2', '11', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('50', '1', '2', '12', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('51', '1', '2', '13', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('52', '1', '2', '14', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('53', '1', '2', '15', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('54', '1', '2', '16', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('55', '1', '2', '17', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('56', '1', '2', '18', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('57', '1', '2', '19', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('58', '1', '3', '20', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('59', '1', '3', '21', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('60', '1', '3', '22', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('61', '1', '3', '23', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('62', '1', '3', '24', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('63', '1', '3', '25', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('64', '1', '3', '26', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('65', '1', '4', '27', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('66', '1', '4', '29', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('67', '1', '4', '30', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('68', '1', '4', '31', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('69', '1', '4', '32', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('70', '1', '4', '33', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('71', '1', '4', '34', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('72', '1', '4', '36', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('73', '1', '5', '37', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('74', '1', '5', '38', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('75', '1', '5', '42', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('76', '1', '5', '43', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('77', '1', '5', '44', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('78', '1', '5', '45', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('79', '2', '6', '47', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('80', '2', '6', '48', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('81', '2', '6', '49', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('82', '2', '6', '50', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('83', '2', '6', '51', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('84', '2', '6', '52', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('85', '2', '6', '53', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('86', '2', '7', '54', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('87', '2', '7', '55', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('88', '2', '7', '56', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('89', '2', '7', '57', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('90', '2', '7', '58', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('91', '2', '7', '59', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('92', '2', '8', '60', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('93', '2', '8', '61', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('94', '2', '8', '62', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('95', '2', '8', '63', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('96', '2', '8', '64', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('97', '2', '8', '65', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('98', '2', '8', '66', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('99', '3', '9', '67', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('100', '3', '9', '69', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('101', '3', '9', '72', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('102', '3', '9', '73', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('103', '3', '10', '74', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('104', '3', '10', '75', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('105', '3', '10', '76', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('106', '3', '10', '77', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('107', '3', '10', '78', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('108', '3', '10', '79', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('109', '3', '10', '80', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('110', '3', '10', '81', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('111', '3', '10', '82', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('112', '3', '10', '83', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('113', '3', '11', '84', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('114', '3', '11', '85', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('115', '3', '11', '86', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('116', '3', '11', '87', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('117', '3', '11', '88', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('118', '4', '12', '89', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('119', '4', '12', '90', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('120', '4', '12', '91', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('121', '4', '12', '92', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('122', '4', '12', '93', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('123', '4', '12', '94', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('124', '4', '12', '95', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('125', '4', '12', '96', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('126', '4', '12', '97', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('127', '4', '12', '98', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('128', '4', '13', '99', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('129', '4', '13', '100', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('130', '4', '13', '101', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('131', '4', '13', '102', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('132', '4', '13', '103', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('133', '4', '13', '104', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('134', '4', '13', '105', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('135', '4', '13', '106', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('136', '4', '13', '107', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('137', '4', '13', '108', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('138', '5', '14', '109', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('139', '5', '14', '110', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('140', '5', '14', '111', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('141', '5', '14', '112', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('142', '6', '19', '133', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('143', '6', '19', '134', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('144', '6', '19', '135', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('145', '6', '19', '136', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('146', '6', '19', '137', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('147', '1', '1', '1', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('148', '1', '1', '2', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('149', '1', '1', '3', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('150', '1', '1', '4', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('151', '1', '1', '5', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('152', '1', '1', '6', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('153', '1', '1', '7', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('154', '1', '1', '8', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('155', '1', '1', '9', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('156', '1', '1', '10', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('157', '1', '2', '11', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('158', '1', '2', '12', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('159', '1', '2', '13', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('160', '1', '2', '14', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('161', '1', '2', '15', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('162', '1', '2', '16', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('163', '1', '2', '17', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('164', '1', '2', '18', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('165', '1', '2', '19', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('166', '1', '4', '27', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('167', '1', '4', '28', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('168', '1', '4', '29', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('169', '1', '4', '30', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('170', '1', '4', '31', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('171', '1', '4', '32', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('172', '1', '4', '33', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('173', '1', '4', '34', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('174', '1', '4', '35', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('175', '1', '4', '36', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('176', '1', '5', '37', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('177', '1', '5', '38', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('178', '1', '5', '39', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('179', '1', '5', '40', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('180', '1', '5', '41', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('181', '1', '5', '42', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('182', '1', '5', '43', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('183', '1', '5', '44', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('184', '1', '5', '45', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('185', '1', '5', '46', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('186', '2', '6', '47', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('187', '2', '6', '48', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('188', '2', '6', '49', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('189', '2', '6', '50', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('190', '2', '6', '51', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('191', '2', '6', '52', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('192', '2', '6', '53', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('193', '2', '7', '54', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('194', '2', '7', '55', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('195', '2', '7', '56', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('196', '2', '7', '57', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('197', '2', '7', '58', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('198', '2', '7', '59', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('199', '2', '8', '60', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('200', '2', '8', '61', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('201', '2', '8', '62', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('202', '2', '8', '63', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('203', '2', '8', '64', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('204', '2', '8', '65', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('205', '2', '8', '66', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('206', '3', '9', '67', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('207', '3', '9', '68', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('208', '3', '9', '69', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('209', '3', '9', '70', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('210', '3', '9', '71', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('211', '3', '9', '72', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('212', '3', '9', '73', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('213', '3', '10', '74', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('214', '3', '10', '75', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('215', '3', '10', '76', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('216', '3', '10', '77', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('217', '3', '10', '78', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('218', '3', '10', '79', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('219', '3', '10', '80', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('220', '3', '10', '81', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('221', '3', '10', '82', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('222', '3', '10', '83', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('223', '3', '11', '84', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('224', '3', '11', '85', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('225', '3', '11', '86', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('226', '3', '11', '87', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('227', '3', '11', '88', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('228', '1', '1', '1', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('229', '1', '1', '2', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('230', '1', '1', '3', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('231', '1', '1', '4', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('232', '1', '1', '5', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('233', '1', '1', '6', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('234', '1', '1', '7', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('235', '1', '1', '8', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('236', '1', '1', '1', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('237', '1', '1', '2', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('238', '1', '1', '3', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('239', '1', '1', '4', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('240', '1', '1', '5', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('241', '1', '1', '6', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('242', '1', '1', '7', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('243', '1', '1', '8', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('244', '1', '1', '9', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('245', '1', '1', '10', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('246', '1', '2', '11', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('247', '1', '2', '12', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('248', '1', '2', '13', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('249', '1', '2', '14', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('250', '1', '2', '15', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('251', '1', '2', '16', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('252', '1', '2', '17', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('253', '1', '2', '18', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('254', '1', '2', '19', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('255', '1', '1', '1', '10', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('256', '1', '1', '2', '10', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('257', '1', '1', '3', '10', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('258', '1', '1', '4', '10', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('259', '1', '1', '5', '10', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('260', '1', '1', '6', '10', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('261', '1', '1', '1', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('262', '1', '1', '2', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('263', '1', '1', '3', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('264', '1', '1', '4', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('265', '1', '1', '5', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('266', '1', '1', '6', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('267', '1', '1', '7', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('268', '1', '1', '8', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('269', '1', '1', '9', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jawaban_profil` VALUES ('270', '1', '1', '10', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `jnt_pertanyaan_kategori`
-- ----------------------------
DROP TABLE IF EXISTS `jnt_pertanyaan_kategori`;
CREATE TABLE `jnt_pertanyaan_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jnt_pertanyaan_kategori
-- ----------------------------
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('1', '1', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('2', '2', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('3', '3', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('4', '4', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('5', '5', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('6', '6', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('7', '7', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('8', '8', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('9', '9', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('10', '10', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('11', '11', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('12', '12', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('13', '13', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('14', '14', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('15', '15', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_kategori` VALUES ('16', '16', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `jnt_pertanyaan_nilai`
-- ----------------------------
DROP TABLE IF EXISTS `jnt_pertanyaan_nilai`;
CREATE TABLE `jnt_pertanyaan_nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan_id` int(11) NOT NULL,
  `nilai_id` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jnt_pertanyaan_nilai
-- ----------------------------
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('1', '1', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('2', '1', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('3', '1', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('4', '2', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('5', '2', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('6', '2', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('7', '3', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('8', '3', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('9', '3', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('10', '4', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('11', '4', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('12', '4', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('13', '5', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('14', '5', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('15', '5', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('16', '6', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('17', '6', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('18', '6', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('19', '7', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('20', '7', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('21', '8', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('22', '8', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('23', '8', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('24', '9', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('25', '9', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('26', '10', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('27', '10', '10', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('28', '10', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('29', '10', '12', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('30', '11', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('31', '11', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('32', '12', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('33', '12', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('34', '13', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('35', '13', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('36', '14', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('37', '14', '13', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('38', '15', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('39', '15', '13', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('40', '16', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pertanyaan_nilai` VALUES ('41', '16', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `jnt_pp_kategori_pertanyaan`
-- ----------------------------
DROP TABLE IF EXISTS `jnt_pp_kategori_pertanyaan`;
CREATE TABLE `jnt_pp_kategori_pertanyaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_id` int(11) NOT NULL,
  `pertanyaan_id` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jnt_pp_kategori_pertanyaan
-- ----------------------------
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('1', '1', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('2', '1', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('3', '1', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('4', '1', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('5', '1', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('6', '2', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('7', '2', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('8', '2', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('9', '3', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('10', '3', '10', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('11', '3', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('12', '4', '12', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('13', '4', '13', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('14', '5', '14', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('15', '5', '15', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('16', '5', '16', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('17', '5', '17', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('18', '6', '18', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_kategori_pertanyaan` VALUES ('19', '6', '19', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `jnt_pp_pertanyaan_nilai`
-- ----------------------------
DROP TABLE IF EXISTS `jnt_pp_pertanyaan_nilai`;
CREATE TABLE `jnt_pp_pertanyaan_nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pertanyaan` int(11) NOT NULL,
  `id_nilai` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of jnt_pp_pertanyaan_nilai
-- ----------------------------
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('1', '1', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('2', '1', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('3', '1', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('4', '1', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('5', '1', '5', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('6', '1', '6', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('7', '1', '7', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('8', '1', '8', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('9', '1', '9', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('10', '1', '10', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('11', '2', '11', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('12', '2', '12', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('13', '2', '13', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('14', '2', '14', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('15', '2', '15', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('16', '2', '16', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('17', '2', '17', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('18', '2', '18', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('19', '2', '19', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('20', '3', '20', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('21', '3', '21', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('22', '3', '22', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('23', '3', '23', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('24', '3', '24', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('25', '3', '25', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('26', '3', '26', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('27', '4', '27', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('28', '4', '28', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('29', '4', '29', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('30', '4', '30', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('31', '4', '31', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('32', '4', '32', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('33', '4', '33', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('34', '4', '34', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('35', '4', '35', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('36', '4', '36', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('37', '5', '37', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('38', '5', '38', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('39', '5', '39', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('40', '5', '40', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('41', '5', '41', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('42', '5', '42', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('43', '5', '43', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('44', '5', '44', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('45', '5', '45', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('46', '5', '46', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('47', '6', '47', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('48', '6', '48', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('49', '6', '49', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('50', '6', '50', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('51', '6', '51', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('52', '6', '52', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('53', '6', '53', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('54', '7', '54', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('55', '7', '55', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('56', '7', '56', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('57', '7', '57', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('58', '7', '58', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('59', '7', '59', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('60', '8', '60', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('61', '8', '61', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('62', '8', '62', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('63', '8', '63', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('64', '8', '64', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('65', '8', '65', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('66', '8', '66', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('67', '9', '67', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('68', '9', '68', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('69', '9', '69', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('70', '9', '70', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('71', '9', '71', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('72', '9', '72', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('73', '9', '73', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('74', '10', '74', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('75', '10', '75', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('76', '10', '76', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('77', '10', '77', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('78', '10', '78', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('79', '10', '79', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('80', '10', '80', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('81', '10', '81', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('82', '10', '82', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('83', '10', '83', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('84', '11', '84', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('85', '11', '85', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('86', '11', '86', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('87', '11', '87', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('88', '11', '88', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('89', '12', '89', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('90', '12', '90', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('91', '12', '91', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('92', '12', '92', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('93', '12', '93', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('94', '12', '94', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('95', '12', '95', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('96', '12', '96', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('97', '12', '97', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('98', '12', '98', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('99', '13', '99', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('100', '13', '100', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('101', '13', '101', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('102', '13', '102', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('103', '13', '103', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('104', '13', '104', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('105', '13', '105', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('106', '13', '106', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('107', '13', '107', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('108', '13', '108', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('109', '14', '109', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('110', '14', '110', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('111', '14', '111', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('112', '14', '112', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('113', '15', '113', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('114', '15', '114', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('115', '15', '115', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('116', '15', '116', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('117', '16', '117', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('118', '16', '118', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('119', '16', '119', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('120', '16', '120', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('121', '16', '121', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('122', '16', '122', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('123', '17', '123', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('124', '17', '124', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('125', '17', '125', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('126', '17', '126', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('127', '17', '127', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('128', '18', '128', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('129', '18', '129', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('130', '18', '130', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('131', '18', '131', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('132', '18', '132', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('133', '19', '133', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('134', '19', '134', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('135', '19', '135', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('136', '19', '136', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `jnt_pp_pertanyaan_nilai` VALUES ('137', '19', '137', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `kelas`
-- ----------------------------
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `guru_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of kelas
-- ----------------------------

-- ----------------------------
-- Table structure for `mst_grade`
-- ----------------------------
DROP TABLE IF EXISTS `mst_grade`;
CREATE TABLE `mst_grade` (
  `id` int(11) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_grade
-- ----------------------------

-- ----------------------------
-- Table structure for `mst_kategori`
-- ----------------------------
DROP TABLE IF EXISTS `mst_kategori`;
CREATE TABLE `mst_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_kategori
-- ----------------------------
INSERT INTO `mst_kategori` VALUES ('1', 'Ibadah Wajib', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_kategori` VALUES ('2', 'Ibadah Sunnah', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_kategori` VALUES ('3', 'Literasi', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_kategori` VALUES ('4', 'Muamalah', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `mst_nilai`
-- ----------------------------
DROP TABLE IF EXISTS `mst_nilai`;
CREATE TABLE `mst_nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_nilai` varchar(255) NOT NULL,
  `nilai_angka` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_nilai
-- ----------------------------
INSERT INTO `mst_nilai` VALUES ('1', 'Tidak', '0', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('3', 'Munfarid', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('4', 'Berjamaah', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('5', '3 Rakaat', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('6', 'Lebih dari 3 Rakaat', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('7', 'Ya', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('8', '1-2 Shalat Wajib', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('9', '3-5 Shalat Wajib', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('10', 'Setengah Halaman', '1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('11', '1 Halaman', '2', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('12', '2 Halaman / Lebih', '3', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_nilai` VALUES ('13', 'Mengikuti', '4', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `mst_pendamping`
-- ----------------------------
DROP TABLE IF EXISTS `mst_pendamping`;
CREATE TABLE `mst_pendamping` (
  `id` int(11) NOT NULL,
  `pendamping` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_pendamping
-- ----------------------------

-- ----------------------------
-- Table structure for `mst_periode`
-- ----------------------------
DROP TABLE IF EXISTS `mst_periode`;
CREATE TABLE `mst_periode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_periode
-- ----------------------------

-- ----------------------------
-- Table structure for `mst_pertanyaan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_pertanyaan`;
CREATE TABLE `mst_pertanyaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pertanyaan` varchar(255) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sts_berhalangan` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_pertanyaan
-- ----------------------------
INSERT INTO `mst_pertanyaan` VALUES ('1', 'Subuh', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `mst_pertanyaan` VALUES ('2', 'Dhuhur', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `mst_pertanyaan` VALUES ('3', 'Ashar', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `mst_pertanyaan` VALUES ('4', 'Maghrib', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `mst_pertanyaan` VALUES ('5', 'Isya', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `mst_pertanyaan` VALUES ('6', 'Tahajud', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `mst_pertanyaan` VALUES ('7', 'Dhuha', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `mst_pertanyaan` VALUES ('8', 'Rawatib', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Y');
INSERT INTO `mst_pertanyaan` VALUES ('9', 'Puasa Sunnah', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `mst_pertanyaan` VALUES ('10', 'Tadarus Al Quran', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `mst_pertanyaan` VALUES ('11', 'Baca Buku Agama', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `mst_pertanyaan` VALUES ('12', 'Baca Buku Pelajaran', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `mst_pertanyaan` VALUES ('13', 'Baca Buku Pengembangan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `mst_pertanyaan` VALUES ('14', 'Mengikuti Kajian / Seminar', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `mst_pertanyaan` VALUES ('15', 'Meringkas Kajian / Seminar', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `mst_pertanyaan` VALUES ('16', 'Infaq', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');
INSERT INTO `mst_pertanyaan` VALUES ('17', 'Berhalangan / Haid', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

-- ----------------------------
-- Table structure for `mst_pp_kategori`
-- ----------------------------
DROP TABLE IF EXISTS `mst_pp_kategori`;
CREATE TABLE `mst_pp_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_pp_kategori
-- ----------------------------
INSERT INTO `mst_pp_kategori` VALUES ('1', 'Beriman dan Bertakwa Kepada Allah Subhanahu Wa Ta\'ala dan Berakhlak Mulia.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_kategori` VALUES ('2', 'Berkebinekaan Global', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_kategori` VALUES ('3', 'Gotong Royong', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_kategori` VALUES ('4', 'Mandiri', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_kategori` VALUES ('5', 'Bernalar Kritis', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_kategori` VALUES ('6', 'Kreatif', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `mst_pp_nilai`
-- ----------------------------
DROP TABLE IF EXISTS `mst_pp_nilai`;
CREATE TABLE `mst_pp_nilai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_nilai` varchar(255) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_pp_nilai
-- ----------------------------
INSERT INTO `mst_pp_nilai` VALUES ('1', 'Tidak menyekutukan Allah', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('2', 'Shalat wajib 5 waktu', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('3', 'Membaca dzikir dan doa setelah shalat', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('4', 'Shalat rawatib', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('5', 'Membaca Al-Quran setiap hari', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('6', 'Puasa', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('7', 'Berpakaian menutup aurat ketika berjumpa dengan orang bukan mahram', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('8', 'Shalat tahajud minimal 1 kali dalam seminggu', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('9', 'Shalat dhuha minimal 1 kali dalam seminggu', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('10', 'Tidak melakukan tindakan hudud dan sesuatu yang dikenai hukuman qisas/diyat dalam syariat', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('11', 'Berpakaian bersih/rapi, berseragam sekolah/atribut lengkap', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('12', 'Tidak pendedam', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('13', 'Rendah hati / tidak sombong', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('14', 'Menjaga kesehatan dengan makan makanan yang sehat dan halal, istirahat yang cukup dan berolahraga', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('15', 'Memperhatikan kebersihan rohani dengan melakukan segala perintah Allah dan menjauhi laranganNya', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('16', 'Senantiasa jujur, bertanggung jawab, dan disiplin', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('17', 'Menghindari pergaulan bebas, menjauhi alkohol, rokok, dan obat obatan berbahaya lainya', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('18', 'Memanfaatkan waktu dengan bijak dengan kegiatan yang produktif dan bermanfaat', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('19', 'Pemaaf', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('20', 'Sopan santun dan taat patuh kepada orang tua', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('21', 'Sopan santun dan taat patuh kepada guru', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('22', 'Tidak melakukan pencemoohan (bullying)', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('23', 'Menghargai orang-orang yang lebih muda dari kita', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('24', 'Saling membantu terhadap sesama', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('25', 'Selalu rendah hati di depan orang lain', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('26', 'Benar dan jujur dalam ucapan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('27', 'Membuang sampah pada tempatnya', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('28', 'Tidak merusak tanaman atau tumbuhan di sekitar', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('29', 'Memanfaatkan sumber daya alam dengan baik dan benar (menjaga keseimbangan alam)\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('30', 'Rajin menanam pohon dan tumbuhan\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('31', 'Merawat/ memelihara tanaman maupun hewan dengan baik.\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('32', 'Tidak menebang pohon sembarangan\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('33', 'Rajin menanam pohon dan tumbuhan hijau\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('34', 'Memanfaatkan sumber daya alam dengan bijaksana\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('35', 'Tidak mencemari tanah, sungai dan air laut\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('36', 'Mengasihi semua makhluk Allah SWT termasuk binatang dan tumbuhan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('37', 'Mengikuti upacara hari senin maupun kemerdekaan RI\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('38', 'Turut kerja bakti persiapan peringatan HUT RI\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('39', 'Memecahkan masalah dengan bermusyawarah\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('40', 'Menegakkan keadilan antar sesama\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('41', 'Melaksanakan pemilihan dengan demokrasi\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('42', 'Tidak memaksakan kehendak dalam bermusyawarah\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('43', 'Menjunjung tinggi HAM dalam kehidupan sehari-hari\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('44', 'Mematuhi hukum yang berlaku dengan kesadaran yang tinggi, seperti menggunakan helm saat berkendara dll.\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('45', 'Memelihara fasilitas umum\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('46', 'Selalu menjaga persatuan antar warga negara Indonesia', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('47', 'Tidak menghina suku dan bahasa dan budaya daerah lain\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('48', 'Berteman dengan siapapun tanpa menglihat asal budaya\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('49', 'Mengikuti pawai budaya\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('50', 'Menonton pagelaran kebudayaan nusantara\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('51', 'Mengikuti pelestarian budaya yang ada dilingkungan sekitar\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('52', 'Tidak merusak cagar budaya yang ada di lingkungan sekitar\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('53', 'Mengikuti lomba-lomba kebudayaan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('54', 'Menjalin hubungan baik dengan teman di luar daerah\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('55', 'Menjalin hubungan baik dengan teman di luar daerah\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('56', 'Tidak memaksakan kehendak pada teman yang memiliki perbedaan dengan kita\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('57', 'Menjaga kerukunan antar teman\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('58', 'Tidak mengejek teman yang berbeda budaya\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('59', 'Tidak berbicara kotor, kasar, dan takabur kepada orang lain', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('60', 'Menghayati sebab timbulnya konflik antara suku dan daerah\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('61', 'Menghayati sebab akibat terjadinya tawuran antar pelajar, antar supporter atau antar kelompok\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('62', 'Melalukan filterisasi terhadap segala pengaruh budaya asing yang masuk ke Indonesia\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('63', 'Tidak mengganggu jalannya peribadatan orang lain\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('64', 'Menunjukan sikap mencintai produk dalam negeri\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('65', 'Mendukung bedirinya tempat-tempat ibadah\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('66', 'Menjaga keamanan dan ketertibaan menjelang hari raya umat beragama', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('67', 'Berkegiatan organisasi di sekolah contoh IPM, HW, PKS, UKS, KOKAM.\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('68', 'Berkegiatan organisasi di masyarakat contoh karang taruna dan remaja masjid.\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('69', 'Melaksankan piket kelompok secara aktif sesuai jadwal.\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('70', 'Bekerjasama dalam menyelesaikan tugas kelompok\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('71', 'Aktif dalam kegiatan gotong royong persiapan hajatan tetangga\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('72', 'Berbagi tugas kerja di rumah dengan anggota keluarga\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('73', 'Menyelesaikan tugas sesuai kesepakatan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('74', 'Membantu teman ke sekolah yang kesulitan sepeda motor\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('75', 'Berbagi dengan teman yang tidak membawa uang jajan\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('76', 'Mentaati peraturan sekolah\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('77', 'Membela teman yang menjadi korban bullying\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('78', 'Meminjamkan pena kepada teman yang tidak membawa\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('79', 'Bersedia membantu orang lain tanpa mengharap imbalan\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('80', 'Menjenguk teman yang sedang sakit\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('81', 'Merawat keluarga yang sakit\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('82', 'Menolong tetangga yang kesusahan\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('83', 'Memposisikan sesuatu pada tempat dan keadaan yang semestinya dimanapun berada.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('84', 'Berinfak di hari jumat\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('85', 'Memberikan sumbangan kepada teman yang mendapatkan musibah\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('86', 'Menyisihkan uang jajan untuk teman yang kurang mampu\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('87', 'Menyumbangkan seragam layak pakai teman sekolah yang membutuhkan.\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('88', 'Berbagi bekal makanan dengan teman', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('89', 'Tidak sedih yang berkelanjutan\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('90', 'Segera bangkit saat terpuruk\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('91', 'Semangat', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('92', 'Terbuka saat berinterksi dengan orang lain\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('93', 'Santun saat berinterasi dengan orang lain\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('94', 'Mampu mengatasi masalah\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('95', 'Mampu memperbaiki diri\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('96', 'Bisa menerima kritik yang membangun\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('97', 'Siap menerima tanggung jawab\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('98', 'Disiplin dalam belajar', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('99', 'Menggunakan seragam sesuai waktu yang ditentukan sekolah\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('100', 'Membawa buku dan bahan belajar sesuai jadwal\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('101', 'Mampu melaksanakan tugas-tugas sekolah tepat waktu\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('102', 'Menjaga dan ikut bertanggung jawab terhadap kebersihan, kerapian lingkungan\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('103', 'Taat dan tertib berkendara\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('104', 'Santun dan menerapkan tata karma dengan baik\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('105', 'Menjaga kesehatan diri dengan baik\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('106', 'Mempunyai motivasi yang tinggi untuk mewujudkan cita-cita\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('107', 'Membangun sikap dan mental positif\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('108', 'Membangun skill/keahlian kerja', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('109', 'Mencari sumber yang valid dari informasi dan gagasan yang diterima\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('110', 'Menanyakan kebenaran kepada orang lain atau sumber lainnya terkait informasi yang diterima (tabayun)\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('111', 'Memproses informasi dan gagasan dengan dimusyawarahkan dengan pihak-pihak yang terkait\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('112', 'Mengambil keputusan yang terbaik dari gagasan dan informasi yang telah di musyawarahkan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('113', 'Merenungkan kemampuan saya dalam menalar pada setiap menerima informasi\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('114', 'Memiliki pemikiran yang terbuka\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('115', 'Menerima ide atau gagasan baru yang memang sudah terbukti kejelasan informasinya\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('116', 'Tidak gengsi mengakui kesalahan jika ide atau gagasannya salah', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('117', 'Mengambil informasi / pengetahuan yang telah direkam sebelumnya dengan cara menghafal\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('118', 'Mempunyai kemampuan untuk mengambil apa yang Anda rasakan atau rasakan sebagai kenyataan dan, tanpa pengetahuan atau bukti, secara tepat dijadikan keputusan akhir.\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('119', 'Dapat menghasilkan ide-ide baru atau cara-cara baru untuk menciptakan kemungkinan dan peluang.\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('120', 'Mempunyai kemampuan untuk menemukan koneksi atau pola antara ide-ide abstrak kemudian mengumpulkannya untuk membentuk gambaran yang lengkap.\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('121', 'Mempunyai kemampuan untuk mengorganisasikan ide dan rencana dengan cara yang dilakukan secara efektif.\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('122', 'Mempunyai proses mental untuk menganalisis situasi secara objektif dengan mengumpulkan informasi dari semua  sumber  yang  mungkin,  dan  kemudian mengevaluasi aspek yang nyata dan tidak berwujud, serta implikasi dari setiap tindakan.', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('123', 'Berani mengambil risiko\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('124', 'Berpandangan luas ke masa mendatang\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('125', 'Tidak berdasarkan pada subyektifitas\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('126', 'Cepat, akurat dan tepat\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('127', 'Dapat mengantisipasi masalah yang timbul', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('128', 'Menyampaikan pendapat saat diskusi di dalam kelas\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('129', 'Memberikan gagasan yang baru dalam menyelesaikan masalah\n\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('130', 'Membuat kombinasi -kombinasi yang tidak lazim dari bagian-bagian dan usnsur-unsur pembelajaran di', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('131', 'Mengemukakan pendapat dan gagasan yang masuk akal\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('132', 'Mempunyai kesadaran untuk memberi bantuan saat teman mengalami kesulitan (Tutor Sebaya dan metode demonstrasi', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('133', 'Memiliki karya yang dapat menghasilkan nilai tambah', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('134', 'Mampu membuat produk berkualitas dari bahan baku yang mudah diperoleh\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('135', 'Menghasilkan karya yang sesuai dengan minat/hobi siswa\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('136', 'Menghasilkan karya baru dari modifikasi karya yang sudah ada\n', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_nilai` VALUES ('137', 'Menghasilkan karya dengan menampilkan kekhasan/keunikan agar mudah dikenali', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `mst_pp_pertanyaan`
-- ----------------------------
DROP TABLE IF EXISTS `mst_pp_pertanyaan`;
CREATE TABLE `mst_pp_pertanyaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pertanyaan` varchar(255) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_pp_pertanyaan
-- ----------------------------
INSERT INTO `mst_pp_pertanyaan` VALUES ('1', 'Berakhlak dalam beragama', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('2', 'Berakhlak terhadap diri pribadi', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('3', 'Berakhlak terhadap orang lain', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('4', 'Berakhlak terhadap alam', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('5', 'Berakhlak dalam bernegara', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('6', 'Mengenal dan menghargai budaya', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('7', 'Kemampuan komunikasi interkultural dalam berinteraksi dengan sesama', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('8', 'Refleksi dan tanggung jawab terhadap pengalaman kebinekaan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('9', 'Kolaborasi', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('10', 'Kepedulian', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('11', 'Berbagi', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('12', 'Kesadaran akan diri dan situasi yang dihadapi', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('13', 'Regulasi diri', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('14', 'Memperoleh dan memproses informasi dan gagasan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('15', 'Menganalisis dan mengevaluasi penalaran', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('16', 'Merefleksi pikiran dan proses berpikir', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('17', 'Mengambil keputusan', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('18', 'Menghasilkan gagasan yang orisinal', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `mst_pp_pertanyaan` VALUES ('19', 'Menghasilkan karya dan tindakan yang orisinal', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `mst_role`
-- ----------------------------
DROP TABLE IF EXISTS `mst_role`;
CREATE TABLE `mst_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_role
-- ----------------------------

-- ----------------------------
-- Table structure for `mst_setting`
-- ----------------------------
DROP TABLE IF EXISTS `mst_setting`;
CREATE TABLE `mst_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_sekolah` varchar(255) NOT NULL,
  `alamat_sekolah` text NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `periode` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of mst_setting
-- ----------------------------

-- ----------------------------
-- Table structure for `pembiasaan_form`
-- ----------------------------
DROP TABLE IF EXISTS `pembiasaan_form`;
CREATE TABLE `pembiasaan_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa_id` int(11) NOT NULL,
  `wkt_input` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `berhalangan` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of pembiasaan_form
-- ----------------------------
INSERT INTO `pembiasaan_form` VALUES ('2', '7', '2024-04-01', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'tidak');
INSERT INTO `pembiasaan_form` VALUES ('7', '9', '2024-04-02', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'tidak');

-- ----------------------------
-- Table structure for `profil_form`
-- ----------------------------
DROP TABLE IF EXISTS `profil_form`;
CREATE TABLE `profil_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa_id` int(11) NOT NULL,
  `wkt_input` date NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of profil_form
-- ----------------------------
INSERT INTO `profil_form` VALUES ('6', '7', '2023-06-01', '', '', '0000-00-00', '0000-00-00');
INSERT INTO `profil_form` VALUES ('11', '9', '2024-01-01', '', '', '0000-00-00', '0000-00-00');

-- ----------------------------
-- Table structure for `siswa`
-- ----------------------------
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `jk` enum('Laki - laki','Perempuan') NOT NULL,
  `file_gambar` varchar(255) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of siswa
-- ----------------------------
INSERT INTO `siswa` VALUES ('5', '0', 'Naruto', '215150709111001', 'Laki - laki', null, 'sistem', '', '2024-02-29 10:00:11', '0000-00-00 00:00:00');
INSERT INTO `siswa` VALUES ('7', '0', 'Deva Andra Fadila', '215150709111002', 'Laki - laki', null, 'sistem', '', '2024-03-01 03:59:25', '0000-00-00 00:00:00');
INSERT INTO `siswa` VALUES ('9', '0', 'Leo Constantine Pinochle', '215150709111003', 'Laki - laki', null, 'sistem', '', '2024-03-05 08:07:35', '0000-00-00 00:00:00');
INSERT INTO `siswa` VALUES ('15', '0', 'Finn Oldman', '215150709111004', 'Laki - laki', null, 'sistem', '', '2024-03-07 17:51:50', '0000-00-00 00:00:00');
INSERT INTO `siswa` VALUES ('29', '0', 'Wendy Walters', '215150709111005', 'Perempuan', null, 'sistem', '', '2024-03-07 18:34:18', '0000-00-00 00:00:00');
INSERT INTO `siswa` VALUES ('30', '0', 'Alexander Anderson', '215150709111006', 'Laki - laki', null, 'sistem', '', '2024-04-03 08:57:28', '0000-00-00 00:00:00');
INSERT INTO `siswa` VALUES ('31', '0', 'Cristiano Ronaldo', '215150709111007', 'Laki - laki', null, 'sistem', '', '2024-04-04 08:37:28', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tahfidz`
-- ----------------------------
DROP TABLE IF EXISTS `tahfidz`;
CREATE TABLE `tahfidz` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa_id` int(11) DEFAULT NULL,
  `nama_surat` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `ayat_awal` int(11) NOT NULL,
  `ayat_akhir` int(11) NOT NULL,
  `pendamping` varchar(100) NOT NULL,
  `catatan` text NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tahfidz
-- ----------------------------
INSERT INTO `tahfidz` VALUES ('1', '7', '5. Al-Ma\'idah', 'Surat Al Maa\'idah terdiri dari 120 ayat; termasuk golongan surat Madaniyyah. Sekalipun ada ayatnya yang turun di Mekah, namun ayat ini diturunkan sesudah Nabi Muhammad s.a.w. hijrah ke Medinah, yaitu di waktu haji wadaa\'. Surat ini dinamakan &lt;i&gt;Al Maa\'idah (hidangan) karena memuat kisah pengikut-pengikut setia Nabi Isa a.s. meminta kepada Nabi Isa a.s. agar Allah menurunkan untuk mereka Al Maa\'idah (hidangan makanan) dari langit (ayat 112). Dan dinamakan &lt;i&gt;Al Uqud&lt;/i&gt; (perjanjian), karena kata itu terdapat pada ayat pertama surat ini, dimana Allah menyuruh agar hamba-hamba-Nya memenuhi janji prasetia terhadap Allah dan perjanjian-perjanjian yang mereka buat sesamanya. Dinamakan juga &lt;i&gt;Al Munqidz&lt;/i&gt; (yang menyelamatkan), karena akhir surat ini mengandung kisah tentang Nabi Isa a.s. penyelamat pengikut-pengikut setianya dari azab Allah.', '1', '17', 'Sendiri', 'tidak ada', '', '', '2024-04-04 05:20:02', '0000-00-00 00:00:00');
INSERT INTO `tahfidz` VALUES ('2', '9', '10. Yunus', 'Surat Yunus terdiri atas 109 ayat, termasuk golongan surat-surat Makkiyyah kecuali ayat 40, 94, 95, yang diturunkan pada masa Nabi Muhmmad s.a.w. berada di Madinah. Surat ini dinamai &lt;i&gt;surat Yunus karena dalam surat ini terutama ditampilkan kisah Nabi Yunus a.s. dan pengikut-pengikutnya yang teguh imannya.', '11', '80', 'Orangtua', 'tidak ada', '', '', '2024-04-04 05:46:01', '0000-00-00 00:00:00');
INSERT INTO `tahfidz` VALUES ('3', '7', '5. Al-Ma\'idah', 'Surat Al Maa\'idah terdiri dari 120 ayat; termasuk golongan surat Madaniyyah. Sekalipun ada ayatnya yang turun di Mekah, namun ayat ini diturunkan sesudah Nabi Muhammad s.a.w. hijrah ke Medinah, yaitu di waktu haji wadaa\'. Surat ini dinamakan &lt;i&gt;Al Maa\'idah (hidangan) karena memuat kisah pengikut-pengikut setia Nabi Isa a.s. meminta kepada Nabi Isa a.s. agar Allah menurunkan untuk mereka Al Maa\'idah (hidangan makanan) dari langit (ayat 112). Dan dinamakan &lt;i&gt;Al Uqud&lt;/i&gt; (perjanjian), karena kata itu terdapat pada ayat pertama surat ini, dimana Allah menyuruh agar hamba-hamba-Nya memenuhi janji prasetia terhadap Allah dan perjanjian-perjanjian yang mereka buat sesamanya. Dinamakan juga &lt;i&gt;Al Munqidz&lt;/i&gt; (yang menyelamatkan), karena akhir surat ini mengandung kisah tentang Nabi Isa a.s. penyelamat pengikut-pengikut setianya dari azab Allah.', '1', '13', 'Sendiri', 'tidak ada', '', '', '2024-04-04 07:40:17', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tahsin`
-- ----------------------------
DROP TABLE IF EXISTS `tahsin`;
CREATE TABLE `tahsin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siswa_id` int(11) DEFAULT NULL,
  `nama_surat` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `ayat_awal` int(11) NOT NULL,
  `ayat_akhir` int(11) NOT NULL,
  `pendamping` varchar(100) NOT NULL,
  `catatan` text NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tahsin
-- ----------------------------
INSERT INTO `tahsin` VALUES ('1', '7', '15. Al-Hijr', 'Surat ini terdiri atas 99 ayat, termasuk golongan surat-surat Makkiyyah,  karena diturunkan di Mekah sebelum hijrah. Al Hijr  adalah nama  sebuah daerah  pegunungan yang didiami zaman dahulu  oleh kaum  Tsamud terletak  di  pinggir  jalan antara Madinah dan Syam (Syria).&lt;br&gt; Nama surat ini diambil dari nama daerah pegunungan itu, berhubung nasib  penduduknya yaitu  kaum Tsamud  diceritakan pada ayat  80 sampai  dengan 84,  mereka  telah  dimusnahkan Allah  s.w.t.,  karena  mendustakan  Nabi  Shaleh  a.s.  dan berpaling   dari ayat-ayat  Allah. Dalam  surat ini terdapat juga kisah-kisah  kaum yang lain yang telah dibinasakan oleh Allah seperti  kaum Luth  a.s. dan kaum Syu\'aib a.s. Dari ke semua kisah-kisah  itu dapat  diambil pelajaran bahwa orang-orang  yang  menentang  ajaran  rasul-rasul  akan  mengalami kehancuran.', '3', '58', 'Sendiri', 'tidak ada', '', '', '2024-04-04 05:55:09', '0000-00-00 00:00:00');
INSERT INTO `tahsin` VALUES ('2', '9', '1. Al-Fatihah', 'Surat &lt;i&gt;Al Faatihah (Pembukaan) yang diturunkan di Mekah dan terdiri dari 7 ayat adalah surat yang pertama-tama diturunkan dengan lengkap  diantara surat-surat yang ada dalam Al Quran dan termasuk golongan surat Makkiyyah. Surat ini disebut &lt;i&gt;Al Faatihah&lt;/i&gt; (Pembukaan), karena dengan surat inilah dibuka dan dimulainya Al Quran. Dinamakan &lt;i&gt;Ummul Quran&lt;/i&gt; (induk Al Quran) atau &lt;i&gt;Ummul Kitaab&lt;/i&gt; (induk Al Kitaab) karena dia merupakan induk dari semua isi Al Quran, dan karena itu diwajibkan membacanya pada tiap-tiap sembahyang.&lt;br&gt; Dinamakan pula &lt;i&gt;As Sab\'ul matsaany&lt;/i&gt; (tujuh yang berulang-ulang) karena ayatnya tujuh dan dibaca berulang-ulang dalam sholat.', '2', '7', 'Sendiri', 'tidak ada', '', '', '2024-04-04 05:58:37', '0000-00-00 00:00:00');
INSERT INTO `tahsin` VALUES ('3', '7', '3. Ali \'Imran', 'Surat &lt;i&gt;Ali \'Imran yang terdiri dari 200 ayat ini adalah surat Madaniyyah.  Dinamakan &lt;i&gt;Ali \'Imran&lt;/i&gt; karena memuat kisah keluarga \'Imran yang di dalam kisah itu disebutkan kelahiran Nabi Isa a.s., persamaan kejadiannya dengan Nabi Adam a. s., kenabian dan beberapa mukjizatnya, serta disebut pula kelahiran Maryam puteri \'Imran, ibu dari Nabi Isa a.s. Surat Al Baqarah dan Ali \'Imran ini dinamakan &lt;i&gt;Az Zahrawaani&lt;/i&gt; (dua yang cemerlang), karena kedua surat ini menyingkapkan hal-hal yang disembunyikan oleh para Ahli Kitab, seperti kejadian dan kelahiran Nabi Isa a.s., kedatangan Nabi Muhammad s.a.w. dan sebagainya.', '1', '96', 'Orangtua', 'tidak ada', '', '', '2024-04-04 08:58:24', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `updated_by` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
