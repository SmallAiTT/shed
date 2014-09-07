/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : shed

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2014-09-08 00:15:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comp
-- ----------------------------
DROP TABLE IF EXISTS `comp`;
CREATE TABLE `comp` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `isBase` int(1) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `spec` varchar(50) DEFAULT NULL,
  `mates` varchar(50) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for compdtl
-- ----------------------------
DROP TABLE IF EXISTS `compdtl`;
CREATE TABLE `compdtl` (
  `id` bigint(64) NOT NULL,
  `childId` bigint(64) NOT NULL,
  `count` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`,`childId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for compexp
-- ----------------------------
DROP TABLE IF EXISTS `compexp`;
CREATE TABLE `compexp` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `scheId` bigint(64) DEFAULT NULL,
  `compId` bigint(64) DEFAULT NULL,
  `expId` bigint(64) DEFAULT NULL,
  `seq` int(32) DEFAULT NULL,
  `args` varchar(512) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for exp
-- ----------------------------
DROP TABLE IF EXISTS `exp`;
CREATE TABLE `exp` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `exp` varchar(2048) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for proj
-- ----------------------------
DROP TABLE IF EXISTS `proj`;
CREATE TABLE `proj` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `state` varchar(3) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for projcomp
-- ----------------------------
DROP TABLE IF EXISTS `projcomp`;
CREATE TABLE `projcomp` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `projId` bigint(64) DEFAULT NULL,
  `scheId` bigint(64) DEFAULT NULL,
  `scheName` varchar(126) DEFAULT NULL,
  `shedId` bigint(64) DEFAULT NULL,
  `shedName` varchar(126) DEFAULT NULL,
  `compCode` bigint(64) DEFAULT NULL,
  `compName` varchar(126) DEFAULT NULL,
  `value` decimal(15,10) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sche
-- ----------------------------
DROP TABLE IF EXISTS `sche`;
CREATE TABLE `sche` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shed
-- ----------------------------
DROP TABLE IF EXISTS `shed`;
CREATE TABLE `shed` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `projId` bigint(64) DEFAULT NULL,
  `scheId` bigint(64) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `lengths` varchar(50) DEFAULT NULL,
  `topScrolls` varchar(50) DEFAULT NULL,
  `edgeScrolls` varchar(50) DEFAULT NULL,
  `frontScrolls` varchar(50) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tt_pvl
-- ----------------------------
DROP TABLE IF EXISTS `tt_pvl`;
CREATE TABLE `tt_pvl` (
  `code` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `parent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_rolepvlrlt
-- ----------------------------
DROP TABLE IF EXISTS `t_rolepvlrlt`;
CREATE TABLE `t_rolepvlrlt` (
  `roleId` bigint(64) DEFAULT NULL,
  `pvlId` bigint(64) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `empId` int(32) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `entryDate` datetime DEFAULT NULL,
  `birthDate` datetime DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_userrolerlt
-- ----------------------------
DROP TABLE IF EXISTS `t_userrolerlt`;
CREATE TABLE `t_userrolerlt` (
  `userId` varchar(50) DEFAULT NULL,
  `roleId` bigint(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
