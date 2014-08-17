/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : shed

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2014-08-17 22:54:12
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comp
-- ----------------------------
INSERT INTO `comp` VALUES ('7', 'a1', 'a1', '1', '', '12', 'RDC', 'asdf', '');
INSERT INTO `comp` VALUES ('10', 'a2', 'a2', '1', '', '12', 'PT', 'asdf', '');
INSERT INTO `comp` VALUES ('11', 'a3', 'a3', '0', '', '12', 'PT', 'a', '');

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
-- Records of compdtl
-- ----------------------------
INSERT INTO `compdtl` VALUES ('11', '7', '2');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compexp
-- ----------------------------
INSERT INTO `compexp` VALUES ('1', '0', '7', '2', '1', '', 'asdf');
INSERT INTO `compexp` VALUES ('2', '1', '10', '2', '1', '', '');

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
-- Records of exp
-- ----------------------------
INSERT INTO `exp` VALUES ('2', 'exp1', 'asdf', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of proj
-- ----------------------------
INSERT INTO `proj` VALUES ('1', 'Project1', '000', 'asdf');
INSERT INTO `proj` VALUES ('3', 'a', '001', 'asdf');

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
-- Records of projcomp
-- ----------------------------

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
-- Records of sche
-- ----------------------------
INSERT INTO `sche` VALUES ('1', 's1', '');

-- ----------------------------
-- Table structure for shed
-- ----------------------------
DROP TABLE IF EXISTS `shed`;
CREATE TABLE `shed` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `projId` bigint(64) DEFAULT NULL,
  `scheId` bigint(64) DEFAULT NULL,
  `lengths` varchar(50) DEFAULT NULL,
  `topScrolls` varchar(50) DEFAULT NULL,
  `edgeScrolls` varchar(50) DEFAULT NULL,
  `frontScrolls` varchar(50) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shed
-- ----------------------------

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
-- Records of tt_pvl
-- ----------------------------
INSERT INTO `tt_pvl` VALUES ('pvl', '权限模块', '', 'menu', '');
INSERT INTO `tt_pvl` VALUES ('pvl_mgr', '权限管理', '/pvl/pvl_mgr', 'menu', 'pvl');
INSERT INTO `tt_pvl` VALUES ('pvl_mgr_c', '新增权限', '/pvl/ctrl/create', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('pvl_mgr_d', '删除权限', '/pvl/ctrl/delete', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('pvl_mgr_l', '权限列表', '/pvl/ctrl/list', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('pvl_mgr_r', '浏览权限', '/pvl/ctrl/read', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('pvl_mgr_u', '修改权限', '/pvl/ctrl/update', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('pvl_test1', '权限测试1', '', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed', '大鹏管理', null, 'menu', null);
INSERT INTO `tt_pvl` VALUES ('shed_compExp_mgr_c', '新增零件公式', '/shed/compExp/create', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_compExp_mgr_d', '删除零件公式', '/shed/compExp/delete', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_compExp_mgr_l', '零件公式列表', '/shed/compExp/list', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_compExp_mgr_r', '浏览零件公式', '/shed/compExp/read', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_compExp_mgr_u', '修改零件公式', '/shed/compExp/update', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr', '零件管理', '/shed/comp_mgr', 'menu', 'shed');
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_c', '新增零件', '/shed/comp/create', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_cc', '添加子零件', '/shed/comp/addChild', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_d', '删除零件', '/shed/comp/delete', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_dc', '删除子零件', '/shed/comp/deleteChild', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_l', '零件列表', '/shed/comp/list', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_lc', '子零件列表', '/shed/comp/children', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_r', '浏览零件', '/shed/comp/read', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_rc', '浏览子零件', null, 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_sc', '选择子零件', '/shed/comp/compToBeSelected', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_u', '修改零件', '/shed/comp/update', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_comp_mgr_uc', '修改子零件', '/shed/comp/updateChild', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_exp_mgr', '公式管理', '/shed/exp_mgr', 'menu', 'shed');
INSERT INTO `tt_pvl` VALUES ('shed_exp_mgr_c', '新增公式', '/shed/exp/create', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_exp_mgr_d', '删除公式', '/shed/exp/delete', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_exp_mgr_l', '公式列表', '/shed/exp/list', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_exp_mgr_r', '浏览公式', '/shed/exp/read', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_exp_mgr_u', '修改公式', '/shed/exp/update', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_proj_mgr', '项目管理', '/shed/proj_mgr', 'menu', 'shed');
INSERT INTO `tt_pvl` VALUES ('shed_proj_mgr_c', '新增项目', '/shed/proj/create', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_proj_mgr_cal', '计算零件', '/shed/proj/calComp', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_proj_mgr_d', '删除项目', '/shed/proj/delete', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_proj_mgr_f', '完成', '/shed/proj/finish', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_proj_mgr_l', '项目列表', '/shed/proj/list', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_proj_mgr_r', '浏览项目', '/shed/proj/read', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_proj_mgr_u', '修改项目', '/shed/proj/update', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_sche_mgr', '方案管理', '/shed/sche_mgr', 'menu', 'shed');
INSERT INTO `tt_pvl` VALUES ('shed_sche_mgr_c', '新增方案', '/shed/sche/create', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_sche_mgr_d', '删除方案', '/shed/sche/delete', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_sche_mgr_l', '方案列表', '/shed/sche/list', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_sche_mgr_r', '浏览方案', '/shed/sche/read', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_sche_mgr_u', '修改方案', '/shed/sche/update', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_c', '新增大鹏', '/shed/shed/create', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_cal', '计算零件', '/shed/shed/calComp', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_d', '删除大鹏', '/shed/shed/delete', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_l', '大鹏列表', '/shed/shed/list', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_r', '浏览大鹏', '/shed/shed/read', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_u', '修改大鹏', '/shed/shed/update', 'biz', null);

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
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '管理员', '管理员角色，拥有对其他人员的权限赋值操作。');

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
-- Records of t_rolepvlrlt
-- ----------------------------
INSERT INTO `t_rolepvlrlt` VALUES ('1', '2', 'menu');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '3', 'menu');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '4', 'menu');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '11', 'menu');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '12', 'menu');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '13', 'menu');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '14', 'menu');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '17', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '18', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '19', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '20', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '21', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '24', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '25', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '26', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '27', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '28', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '29', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '31', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '32', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '33', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '34', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '35', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '36', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '37', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '38', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '39', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '41', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '42', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '43', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '44', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '45', 'url');
INSERT INTO `t_rolepvlrlt` VALUES ('1', '99', 'btn');

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
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '1111', 'Admin', '1111', 'M', '', '', '', null, null, '');

-- ----------------------------
-- Table structure for t_userrolerlt
-- ----------------------------
DROP TABLE IF EXISTS `t_userrolerlt`;
CREATE TABLE `t_userrolerlt` (
  `userId` varchar(50) DEFAULT NULL,
  `roleId` bigint(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_userrolerlt
-- ----------------------------
INSERT INTO `t_userrolerlt` VALUES ('1111', '1');
