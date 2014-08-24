/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : shed

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2014-08-24 22:59:57
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
-- Records of comp
-- ----------------------------
INSERT INTO `comp` VALUES ('183', 'circle_6mx2m_0003', '立柱', '1', null, '1.5-∮48*2500', '板管', '12', null);
INSERT INTO `comp` VALUES ('184', 'circle_6mx2m_0004', '纵梁', '1', null, '1.5-∮42*6000', '板管', '4', null);
INSERT INTO `comp` VALUES ('185', 'circle_6mx2m_0005', '附加立柱', '1', null, '1.2-∮25*2300', '板管', '10', null);
INSERT INTO `comp` VALUES ('186', 'circle_6mx2m_0006', '拱管1', '1', null, '1.2-∮25*6000', '板管', '16', null);
INSERT INTO `comp` VALUES ('187', 'circle_6mx2m_0007', '拱管2', '1', null, '1.2-∮25*960', '板管', '16', null);
INSERT INTO `comp` VALUES ('188', 'circle_6mx2m_0008', '纵向拉杆', '1', null, '1.2-∮25*6000', '板管', '8', null);
INSERT INTO `comp` VALUES ('189', 'circle_6mx2m_0009', '纵向拉杆接头', '1', null, '1.2-∮25*300', '板管', '6', null);
INSERT INTO `comp` VALUES ('190', 'circle_6mx2m_0010', '纵向拉杆固定接头', '1', null, '1.2-∮25*300', '板管', '6', null);
INSERT INTO `comp` VALUES ('191', 'circle_6mx2m_0011', '棚头横杆01', '1', null, '1.2-∮25*5955', '板管', '2', null);
INSERT INTO `comp` VALUES ('192', 'circle_6mx2m_0012', '棚头直杆0', '1', null, '1-1', '板管', '4', null);
INSERT INTO `comp` VALUES ('193', 'circle_6mx2m_0013', '一头打扁', '1', null, '棚头直杆0', '板管', '4', null);
INSERT INTO `comp` VALUES ('194', 'circle_6mx2m_0014', '1-2', '1', null, '1.2-∮25*5955', '板管', '2', null);
INSERT INTO `comp` VALUES ('195', 'circle_6mx2m_0015', '1.2-∮25*3300', '1', null, '三叉架横杆', '板管', '4', null);
INSERT INTO `comp` VALUES ('196', 'circle_6mx2m_0016', '三叉架1', '1', null, '1.2-∮25*1500', '板管', '4', null);
INSERT INTO `comp` VALUES ('197', 'circle_6mx2m_0017', '三叉架2', '1', null, '1.2-∮25*1800', '板管', '44', null);
INSERT INTO `comp` VALUES ('198', 'circle_6mx2m_0018', '卷膜转动轴', '1', null, '1.2-∮', '板管', '42', null);
INSERT INTO `comp` VALUES ('199', 'circle_6mx2m_0019', '25*6000', '1', null, '1.2-∮25*1800', '板管', null, null);
INSERT INTO `comp` VALUES ('200', 'circle_6mx2m_0020', '卷膜转动轴接头', '1', null, '1.2-∮', '板管', null, null);
INSERT INTO `comp` VALUES ('201', 'circle_6mx2m_0021', '25*300', '1', null, '卷膜器固定杆0', '板管', '8', null);
INSERT INTO `comp` VALUES ('202', 'circle_6mx2m_0022', '卷膜器固定杆2', '1', null, '1.2-∮', '板管', '4', null);
INSERT INTO `comp` VALUES ('203', 'circle_6mx2m_0023', '25*200', '1', null, '卷膜器固定杆0', '板管', 'PCS', null);
INSERT INTO `comp` VALUES ('204', 'circle_6mx2m_0024', '单耳连接件1', '1', null, '1.2-∮', '板管', 'PCS', null);
INSERT INTO `comp` VALUES ('205', 'circle_6mx2m_0025', '∮48*50', '1', null, '焊角为∮20*65', '板管', 'PCS', null);
INSERT INTO `comp` VALUES ('206', 'circle_6mx2m_0026', '单耳连接件2', '1', null, '焊角为∮20*65', '板管', '20', null);
INSERT INTO `comp` VALUES ('207', 'circle_6mx2m_0027', '∮48*120', '1', null, '焊角为∮20*65', '板管', '10', null);
INSERT INTO `comp` VALUES ('208', 'circle_6mx2m_0028', '双耳连接件1', '1', null, '双耳连接件2', '板管', null, null);
INSERT INTO `comp` VALUES ('209', 'circle_6mx2m_0029', '骑马铁（双）', '1', null, '∮48*40', '骑马铁（单）', '12', null);
INSERT INTO `comp` VALUES ('210', 'circle_6mx2m_0030', '附加立柱连接件', '1', null, '纵梁内接件', null, null, null);
INSERT INTO `comp` VALUES ('211', 'circle_6mx2m_0031', '∮32*20 ', '1', null, '立柱附加钢筋', '∮6', '18.733333333333334', null);
INSERT INTO `comp` VALUES ('212', 'circle_6mx2m_0032', '*150', '1', null, 'Q', '∮6', '10', null);
INSERT INTO `comp` VALUES ('213', 'circle_6mx2m_0033', '235', '1', null, '水槽布', '宽60cm', '57', null);
INSERT INTO `comp` VALUES ('214', 'circle_6mx2m_0034', '卡槽', '1', null, '0.5*6000', null, '1', null);
INSERT INTO `comp` VALUES ('215', 'circle_6mx2m_0035', '0', '1', null, '.5镀锌板', '卡槽连接片', '24', null);
INSERT INTO `comp` VALUES ('216', 'circle_6mx2m_0036', '0.5*120', '1', null, '卡簧', '宽60cm', '50', null);
INSERT INTO `comp` VALUES ('217', 'circle_6mx2m_0037', '∮3', '1', null, '*2000', '浸塑', '6', null);
INSERT INTO `comp` VALUES ('218', 'circle_6mx2m_0038', '门（含配件）', '1', null, '2000*2000', '夹箍', null, null);
INSERT INTO `comp` VALUES ('219', 'circle_6mx2m_0039', '∮25', '1', null, '0', null, '3', null);
INSERT INTO `comp` VALUES ('220', 'circle_6mx2m_0040', '.8', '1', null, '镀锌板', null, '8', null);
INSERT INTO `comp` VALUES ('221', 'circle_6mx2m_0041', '弹簧夹', '1', null, '25-25', null, '5', null);
INSERT INTO `comp` VALUES ('222', 'circle_6mx2m_0042', '角铁', '1', null, null, null, '67.5', null);
INSERT INTO `comp` VALUES ('223', 'circle_6mx2m_0043', '4', '1', null, null, null, null, null);
INSERT INTO `comp` VALUES ('224', 'circle_6mx2m_0044', '2*42*56', '1', null, '冷扎板', '抱箍（含螺丝）', '30', null);
INSERT INTO `comp` VALUES ('225', 'circle_6mx2m_0045', '2*42*56', '1', null, '∮48', '抱箍（含螺丝）', null, null);
INSERT INTO `comp` VALUES ('226', 'circle_6mx2m_0046', '2*42*56', '1', null, '2.5镀锌板', '抱箍（含螺丝）', null, null);
INSERT INTO `comp` VALUES ('227', 'circle_6mx2m_0047', '棚内平横钢丝', '1', null, '∮4*5900', '抱箍（含螺丝）', 'PCS', null);
INSERT INTO `comp` VALUES ('228', 'circle_6mx2m_0048', '剪刀抗风拉绳', '1', null, '∮4*3550', '抱箍（含螺丝）', null, null);
INSERT INTO `comp` VALUES ('229', 'circle_6mx2m_0049', '外侧抗风拉绳', '1', null, '∮4*2500', '压膜线', null, null);
INSERT INTO `comp` VALUES ('230', 'circle_6mx2m_0050', '外六角螺栓', '1', null, 'M8*25', '骑马铁（单）', null, null);
INSERT INTO `comp` VALUES ('231', 'circle_6mx2m_0051', '4', '1', null, '.8级', '骑马铁（单）', null, null);
INSERT INTO `comp` VALUES ('232', 'circle_6mx2m_0052', 'M8*40', '1', null, 'M8*60', '抱箍（含螺丝）', '324', null);
INSERT INTO `comp` VALUES ('233', 'circle_6mx2m_0053', '双牙螺杆', '1', null, null, null, null, null);
INSERT INTO `comp` VALUES ('234', 'circle_6mx2m_0054', 'M8*75', '1', null, null, null, null, null);
INSERT INTO `comp` VALUES ('235', 'circle_6mx2m_0055', '吊环螺母', '1', null, 'M8*55', '平垫（大）', '1', null);
INSERT INTO `comp` VALUES ('236', 'circle_6mx2m_0056', '吊环螺母', '1', null, '内∮8、外∮35', '平垫（大）', null, null);
INSERT INTO `comp` VALUES ('237', 'circle_6mx2m_0057', '吊环螺母', '1', null, 'Q235', '平垫（大）', null, null);
INSERT INTO `comp` VALUES ('238', 'circle_6mx2m_0058', '吊环螺母', '1', null, '垫掉环螺母-锁底杆', '平垫（大）', null, null);
INSERT INTO `comp` VALUES ('239', 'circle_6mx2m_0059', '吊环螺母', '1', null, '平垫', '平垫（大）', null, null);
INSERT INTO `comp` VALUES ('240', 'cube_8mx2.5m_0003', '立柱', '1', null, '1.5-60*40*3000', '热镀锌管', 'PCS', null);
INSERT INTO `comp` VALUES ('241', 'cube_8mx2.5m_0004', '纵梁', '1', null, '1.5-60*40*3000', '热镀锌管', 'PCS', null);
INSERT INTO `comp` VALUES ('242', 'cube_8mx2.5m_0005', '纵梁（一端孔位加长）', '1', null, '1.5-60*40*3000', '热镀锌管', 'PCS', null);
INSERT INTO `comp` VALUES ('243', 'cube_8mx2.5m_0006', '附加立柱', '1', null, '1.2-∮25*2800', '热镀锌管', 'PCS', null);
INSERT INTO `comp` VALUES ('244', 'cube_8mx2.5m_0007', '拱管', '1', null, '1.2-∮32*6000', '热镀锌管', 'PCS', '拱高1700');
INSERT INTO `comp` VALUES ('245', 'cube_8mx2.5m_0008', '拱管', '1', null, '1.2-∮32*2960', '热镀锌管', 'PCS', '一头缩口');
INSERT INTO `comp` VALUES ('246', 'cube_8mx2.5m_0009', '纵向拉杆', '1', null, '1.2-∮25*6000', '热镀锌管', 'PCS', null);
INSERT INTO `comp` VALUES ('247', 'cube_8mx2.5m_0010', '纵向拉杆接头', '1', null, '1.2-∮25*300', '热镀锌管', 'PCS', '两头缩口');
INSERT INTO `comp` VALUES ('248', 'cube_8mx2.5m_0011', '纵向拉杆固定接头', '1', null, '1.2-∮25*300', '热镀锌管', 'PCS', '一头缩口、一头打扁');
INSERT INTO `comp` VALUES ('249', 'cube_8mx2.5m_0012', '棚头横杆', '1', null, '1.2-∮32*6000', '热镀锌管', 'PCS', null);
INSERT INTO `comp` VALUES ('250', 'cube_8mx2.5m_0013', '棚头横杆固定接头', '1', null, '1.2-∮32*1025', '热镀锌管', 'PCS', '一头缩口、一头打扁');
INSERT INTO `comp` VALUES ('251', 'cube_8mx2.5m_0014', '棚头直杆01-1', '1', null, '1.2-∮25*3700', '热镀锌管', 'PCS', '一头打扁');
INSERT INTO `comp` VALUES ('252', 'cube_8mx2.5m_0015', '棚头直杆01-2', '1', null, '1.2-∮25*4200', '热镀锌管', 'PCS', '一头打扁');
INSERT INTO `comp` VALUES ('253', 'cube_8mx2.5m_0016', '棚头直杆01-3', '1', null, '1.2-∮25*4450', '热镀锌管', 'PCS', '一头打扁');
INSERT INTO `comp` VALUES ('254', 'cube_8mx2.5m_0017', 'M架横杆', '1', null, '1.2-∮32*6000', '热镀锌管', 'PCS', null);
INSERT INTO `comp` VALUES ('255', 'cube_8mx2.5m_0018', 'M架固定接头', '1', null, '1.2-∮32*1025', '热镀锌管', 'PCS', '一头缩口、一头打扁');
INSERT INTO `comp` VALUES ('256', 'cube_8mx2.5m_0019', 'M架01', '1', null, '1.2-∮25*1300', '热镀锌管', 'PCS', '两头打扁');
INSERT INTO `comp` VALUES ('257', 'cube_8mx2.5m_0020', 'M架02', '1', null, '1.2-∮25*2400', '热镀锌管', 'PCS', '两头打扁');
INSERT INTO `comp` VALUES ('258', 'cube_8mx2.5m_0021', '卷膜转动轴', '1', null, '1.2-∮25*6000', '热镀锌管', 'PCS', null);
INSERT INTO `comp` VALUES ('259', 'cube_8mx2.5m_0022', '卷膜转动轴接头', '1', null, '1.2-∮25*300', '热镀锌管', 'PCS', '两头缩口');
INSERT INTO `comp` VALUES ('260', 'cube_8mx2.5m_0023', '卷膜器固定杆01', '1', null, '1.2-∮25*6000', '热镀锌管', 'PCS', null);
INSERT INTO `comp` VALUES ('261', 'cube_8mx2.5m_0024', '卷膜器固定杆02', '1', null, '1.2-∮25*200', '热镀锌管', 'PCS', '两头打扁');
INSERT INTO `comp` VALUES ('262', 'cube_8mx2.5m_0025', 'L型连接片无角', '1', null, '100*60*2.5', '冷扎板', 'PCS', null);
INSERT INTO `comp` VALUES ('263', 'cube_8mx2.5m_0026', 'L型连接片有角（左）', '1', null, '100*60*2.5', '冷扎板', 'PCS', null);
INSERT INTO `comp` VALUES ('264', 'cube_8mx2.5m_0027', 'L型连接片有角（右）', '1', null, '100*60*2.5', '冷扎板', 'PCS', null);
INSERT INTO `comp` VALUES ('265', 'cube_8mx2.5m_0028', 'T型连接片无角', '1', null, '103.5*80*11.5', '冷扎板', 'PCS', null);
INSERT INTO `comp` VALUES ('266', 'cube_8mx2.5m_0029', 'T型连接片有角', '1', null, '103.5*80*11.5', '冷扎板', 'PCS', null);
INSERT INTO `comp` VALUES ('267', 'cube_8mx2.5m_0030', '附加立柱连接片', '1', null, '∮20', '冷扎板', 'PCS', null);
INSERT INTO `comp` VALUES ('268', 'cube_8mx2.5m_0031', '骑马铁（单）', '1', null, '57*20*56', '冷扎板', 'PCS', null);
INSERT INTO `comp` VALUES ('269', 'cube_8mx2.5m_0032', '骑马铁（双）', '1', null, '57*40*56', '冷扎板', 'PCS', null);
INSERT INTO `comp` VALUES ('270', 'cube_8mx2.5m_0033', '角铁', '1', null, '42*42*56', '冷扎板', 'PCS', null);
INSERT INTO `comp` VALUES ('271', 'cube_8mx2.5m_0034', '立柱附加钢筋', '1', null, '∮6*100', 'Q235', 'PCS', null);
INSERT INTO `comp` VALUES ('272', 'cube_8mx2.5m_0035', '卡槽', '1', null, '0.5*6000', '0.5镀锌板', 'PCS', null);
INSERT INTO `comp` VALUES ('273', 'cube_8mx2.5m_0036', '卡槽连接片', '1', null, '0.5*120', '0.5镀锌板', 'PCS', null);
INSERT INTO `comp` VALUES ('274', 'cube_8mx2.5m_0037', '卡簧', '1', null, '∮3*2000', '浸塑', 'PCS', null);
INSERT INTO `comp` VALUES ('275', 'cube_8mx2.5m_0038', '门（含配件）', '1', null, '2000*2000', '热镀锌管', 'PCS', '滑轨.滑轮、角铁及M5螺丝');
INSERT INTO `comp` VALUES ('276', 'cube_8mx2.5m_0039', '水槽', '1', null, '0.7*3060', '0.7镀锌板', 'PCS', null);
INSERT INTO `comp` VALUES ('277', 'cube_8mx2.5m_0040', '水槽头', '1', null, '0.7*200', '0.7镀锌板', 'PCS', null);
INSERT INTO `comp` VALUES ('278', 'cube_8mx2.5m_0041', '漏斗', '1', null, '∮110', 'PVC', 'PCS', null);
INSERT INTO `comp` VALUES ('279', 'cube_8mx2.5m_0042', '下水管', '1', null, '∮110*2500', 'PVC', 'PCS', null);
INSERT INTO `comp` VALUES ('280', 'cube_8mx2.5m_0043', '落水管管夹', '1', null, '∮110', 'PVC', 'PCS', null);
INSERT INTO `comp` VALUES ('281', 'cube_8mx2.5m_0044', '90度弯头', '1', null, '∮110', 'PVC', 'PCS', null);
INSERT INTO `comp` VALUES ('282', 'cube_8mx2.5m_0045', '夹箍', '1', null, '∮32', '1.0镀锌板', 'PCS', null);
INSERT INTO `comp` VALUES ('283', 'cube_8mx2.5m_0046', '压膜夹', '1', null, '∮25', 'PE', 'PCS', null);
INSERT INTO `comp` VALUES ('284', 'cube_8mx2.5m_0047', '弹簧夹', '1', null, '32-25', '浸塑', 'PCS', null);
INSERT INTO `comp` VALUES ('285', 'cube_8mx2.5m_0048', '棚内平横钢丝绳', '1', null, '∮4*7900', '钢绞线', 'PCS', null);
INSERT INTO `comp` VALUES ('286', 'cube_8mx2.5m_0049', '外侧抗风绳', '1', null, '∮4*2900', '钢绞线', 'PCS', null);
INSERT INTO `comp` VALUES ('287', 'cube_8mx2.5m_0050', '剪刀叉钢丝绳', '1', null, '∮4*3800', '钢绞线', 'PCS', null);
INSERT INTO `comp` VALUES ('288', 'cube_8mx2.5m_0051', '马攻钉', '1', null, 'M8*55', '4.8级', 'PCS', null);
INSERT INTO `comp` VALUES ('289', 'cube_8mx2.5m_0052', '马攻钉', '1', null, 'M8*62', '4.8级', 'PCS', null);
INSERT INTO `comp` VALUES ('290', 'cube_8mx2.5m_0053', '吊环螺母', '1', null, 'M8', 'Q235', 'PCS', null);
INSERT INTO `comp` VALUES ('291', 'cube_8mx2.5m_0054', '外六角螺栓', '1', null, 'M8*25', '4.8级', 'PCS', null);
INSERT INTO `comp` VALUES ('292', 'cube_8mx2.5m_0055', '平垫', '1', null, 'M8', 'Q235', 'PCS', null);
INSERT INTO `comp` VALUES ('293', 'cube_8mx2.5m_0056', '螺母', '1', null, 'M8', 'Q235', 'PCS', null);
INSERT INTO `comp` VALUES ('294', 'cube_8mx2.5m_0057', '自攻钉', '1', null, '5.5*19', '4.8级', 'PCS', null);
INSERT INTO `comp` VALUES ('295', 'cube_8mx2.5m_0058', '韩式卷膜器（摇杆）', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('296', 'cube_8mx2.5m_0059', '卷膜器（小）', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('297', 'cube_8mx2.5m_0060', '压膜线', '1', null, null, null, 'm', null);
INSERT INTO `comp` VALUES ('298', 'cube_8mx2.5m_0061', '压膜线挂钩', '1', null, null, null, '个', null);
INSERT INTO `comp` VALUES ('299', 'cube_8mx2.5m_0062', '抱箍60*40', '1', null, '25*125', '热扎板', '个', null);
INSERT INTO `comp` VALUES ('300', 'cube_8mx2.5m_0063', '胶水', '1', null, '小瓶', null, '瓶', null);
INSERT INTO `comp` VALUES ('301', 'cube_8mx2.5m_0064', '玻璃胶', '1', null, '透明', null, '瓶', '8片水槽一瓶');
INSERT INTO `comp` VALUES ('302', 'cube_8mx2.5m_0065', '水槽密封胶条', '1', null, null, null, '卷', '10片水槽一卷');
INSERT INTO `comp` VALUES ('303', 'cube_8mx2.5m_0066', '薄膜（8丝）', '1', null, '9m宽', '普通膜', 'm', null);
INSERT INTO `comp` VALUES ('304', 'cube_8mx2.5m_0067', '薄膜（8丝）', '1', null, '2.5m宽', '普通膜', 'm', null);
INSERT INTO `comp` VALUES ('305', 'cube_8mx2.5m_0068', '薄膜（8丝）', '1', null, '2m宽', '普通膜', 'm', null);
INSERT INTO `comp` VALUES ('306', 'cube_8mx2.5m_0069', '薄膜（8丝）', '1', null, '0.5m宽', '普通膜', 'm', null);
INSERT INTO `comp` VALUES ('307', 'cube_8mx2.5m_0070', '防虫网', '1', null, '40目（宽1.5m)', null, 'm', null);
INSERT INTO `comp` VALUES ('308', 'cube_8mx2.5m_0071', '防虫网', '1', null, '40目（宽2m)', null, 'm', null);

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

-- ----------------------------
-- Table structure for shed
-- ----------------------------
DROP TABLE IF EXISTS `shed`;
CREATE TABLE `shed` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `projId` bigint(64) DEFAULT NULL,
  `scheId` bigint(64) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `lengths` varchar(50) DEFAULT NULL,
  `topScrolls` varchar(50) DEFAULT NULL,
  `edgeScrolls` varchar(50) DEFAULT NULL,
  `frontScrolls` varchar(50) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
