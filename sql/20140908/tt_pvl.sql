/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : shed

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2014-09-08 00:16:12
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `tt_pvl` VALUES ('shed_sche_mgr_t', '测试', '/shed/sche/test', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_sche_mgr_u', '修改方案', '/shed/sche/update', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_c', '新增大鹏', '/shed/shed/create', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_cal', '计算零件', '/shed/shed/calComp', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_d', '删除大鹏', '/shed/shed/delete', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_l', '大鹏列表', '/shed/shed/list', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_r', '浏览大鹏', '/shed/shed/read', 'biz', null);
INSERT INTO `tt_pvl` VALUES ('shed_shed_mgr_u', '修改大鹏', '/shed/shed/update', 'biz', null);
