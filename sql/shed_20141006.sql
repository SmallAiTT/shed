/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : shed

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2014-10-06 23:59:42
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
) ENGINE=InnoDB AUTO_INCREMENT=540 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comp
-- ----------------------------
INSERT INTO `comp` VALUES ('460', 'comp_0001', 'L型连接片无角', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('461', 'comp_0002', 'L型连接片有角（右）', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('462', 'comp_0003', 'L型连接片有角（左）', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('463', 'comp_0004', 'M架01', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('464', 'comp_0005', 'M架02', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('465', 'comp_0006', 'M架横杆', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('466', 'comp_0007', 'T型连接片无角', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('467', 'comp_0008', 'T型连接片有角', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('468', 'comp_0009', 'V架1', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('469', 'comp_0010', 'V架2', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('470', 'comp_0011', '弹簧夹', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('471', 'comp_0012', 'M8吊环螺母', '1', null, null, null, 'PCS', '');
INSERT INTO `comp` VALUES ('472', 'comp_0013', '附加立柱', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('473', 'comp_0014', '附加立柱链接片', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('474', 'comp_0015', '拱管', '1', null, null, null, 'PCS', '需要根据具体的情况，决定没根拱管的组成');
INSERT INTO `comp` VALUES ('475', 'comp_0016', '夹箍', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('476', 'comp_0017', '角铁', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('477', 'comp_0018', '螺母', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('478', 'comp_0019', '马攻钉', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('479', 'comp_0020', '棚内平横钢丝', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('480', 'comp_0021', '棚头横杆', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('481', 'comp_0022', '棚头直杆', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('482', 'comp_0023', '平垫', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('483', 'comp_0024', '骑马铁（单）', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('484', 'comp_0025', '骑马铁（双）', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('485', 'comp_0026', '外六角螺栓', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('486', 'comp_0027', '自攻钉', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('487', 'comp_0028', '纵向拉杆', '1', null, null, null, 'PCS', '两头缩口');
INSERT INTO `comp` VALUES ('488', 'comp_0029', '纵向拉杆固定接头', '1', null, null, null, 'PCS', '一头缩口、一头打扁');
INSERT INTO `comp` VALUES ('489', 'comp_0030', '纵向拉杆接头', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('490', 'comp_0031', '立柱', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('491', 'comp_0032', '纵梁', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('492', 'comp_0033', '水槽', '1', null, null, null, 'PCS', '');
INSERT INTO `comp` VALUES ('493', 'comp_0034', '水槽头', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('494', 'comp_0035', '下水管', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('495', 'comp_0036', '落水管管夹', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('496', 'comp_0037', '90度弯头', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('497', 'comp_0038', '卡槽', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('498', 'comp_0039', '卡槽连接片', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('499', 'comp_0040', '卡簧', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('500', 'comp_0041', '顶卷膜器', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('501', 'comp_0042', '侧卷膜器', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('502', 'comp_0043', '顶卷膜固定杆', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('503', 'comp_0044', '侧卷膜固定杆', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('504', 'comp_0045', '顶卷膜薄膜', '1', null, null, null, 'm', null);
INSERT INTO `comp` VALUES ('505', 'comp_0046', '侧卷膜薄膜', '1', null, null, null, 'm', null);
INSERT INTO `comp` VALUES ('506', 'comp_0047', '顶卷膜防虫网', '1', null, null, null, 'm', null);
INSERT INTO `comp` VALUES ('507', 'comp_0048', '侧卷膜防虫网', '1', null, null, null, 'm', null);
INSERT INTO `comp` VALUES ('508', 'comp_0049', '压膜夹', '1', null, null, null, 'PCS', null);
INSERT INTO `comp` VALUES ('509', 'comp_0050', '压膜线', '1', null, null, null, 'm', null);
INSERT INTO `comp` VALUES ('510', 'comp_0051', '压膜线挂钩', '1', null, null, null, '个', null);
INSERT INTO `comp` VALUES ('511', 'comp_1001', 'M架组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('512', 'comp_1002', 'V架组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('513', 'comp_1003', '棚内平横钢丝组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('514', 'comp_1004', '纵向拉杆组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('515', 'comp_1005', '棚头横杆组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('516', 'comp_1006', '棚头直杆组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('517', 'comp_1007', '拱管组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('518', 'comp_1008', '附加立柱组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('519', 'comp_1009', '骑马铁（单）组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('520', 'comp_1010', '骑马铁（双）组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('521', 'comp_1011', 'T型（外）组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('522', 'comp_1012', 'T型（内）组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('523', 'comp_1013', 'L型（左）组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('524', 'comp_1014', 'L型（右）组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('525', 'comp_1015', 'L型（中）组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('526', 'comp_1016', '水槽组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('527', 'comp_1017', '水槽头组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('528', 'comp_0052', '漏斗', '1', null, null, null, 'PCS', '');
INSERT INTO `comp` VALUES ('529', 'comp_1018', '卡槽组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('530', 'comp_1019', '顶卷膜组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('531', 'comp_1020', '侧卷膜组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('532', 'comp_0053', '外侧抗风绳', '1', null, null, null, 'PCS', '');
INSERT INTO `comp` VALUES ('533', 'comp_0054', '顶弧撑', '1', null, null, null, 'PCS', '');
INSERT INTO `comp` VALUES ('534', 'comp_0055', 'U型扣', '1', null, null, null, 'PCS', '');
INSERT INTO `comp` VALUES ('535', 'comp_0056', '钢丝绳', '1', null, null, null, 'PCS', '钢丝绳（剪刀叉的）');
INSERT INTO `comp` VALUES ('536', 'comp_0057', '抱箍', '1', null, null, null, 'PCS', '');
INSERT INTO `comp` VALUES ('537', 'comp_1021', '外侧抗风绳组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('538', 'comp_1022', '顶弧撑组', '0', null, null, null, '个', '');
INSERT INTO `comp` VALUES ('539', 'comp_1023', '剪刀叉组', '0', null, null, null, '个', '');

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
INSERT INTO `compdtl` VALUES ('511', '463', '2');
INSERT INTO `compdtl` VALUES ('511', '464', '2');
INSERT INTO `compdtl` VALUES ('511', '465', '1');
INSERT INTO `compdtl` VALUES ('511', '475', '5');
INSERT INTO `compdtl` VALUES ('511', '476', '2');
INSERT INTO `compdtl` VALUES ('511', '477', '7');
INSERT INTO `compdtl` VALUES ('511', '482', '7');
INSERT INTO `compdtl` VALUES ('511', '485', '7');
INSERT INTO `compdtl` VALUES ('512', '465', '1');
INSERT INTO `compdtl` VALUES ('512', '468', '1');
INSERT INTO `compdtl` VALUES ('512', '469', '2');
INSERT INTO `compdtl` VALUES ('512', '475', '4');
INSERT INTO `compdtl` VALUES ('512', '476', '2');
INSERT INTO `compdtl` VALUES ('512', '477', '6');
INSERT INTO `compdtl` VALUES ('512', '482', '6');
INSERT INTO `compdtl` VALUES ('512', '485', '6');
INSERT INTO `compdtl` VALUES ('513', '471', '1');
INSERT INTO `compdtl` VALUES ('513', '479', '1');
INSERT INTO `compdtl` VALUES ('514', '475', '2');
INSERT INTO `compdtl` VALUES ('514', '477', '2');
INSERT INTO `compdtl` VALUES ('514', '482', '2');
INSERT INTO `compdtl` VALUES ('514', '485', '2');
INSERT INTO `compdtl` VALUES ('514', '486', '4');
INSERT INTO `compdtl` VALUES ('514', '488', '2');
INSERT INTO `compdtl` VALUES ('515', '475', '2');
INSERT INTO `compdtl` VALUES ('515', '477', '2');
INSERT INTO `compdtl` VALUES ('515', '480', '1');
INSERT INTO `compdtl` VALUES ('515', '482', '2');
INSERT INTO `compdtl` VALUES ('515', '485', '2');
INSERT INTO `compdtl` VALUES ('516', '470', '4');
INSERT INTO `compdtl` VALUES ('516', '475', '4');
INSERT INTO `compdtl` VALUES ('516', '477', '4');
INSERT INTO `compdtl` VALUES ('516', '481', '4');
INSERT INTO `compdtl` VALUES ('516', '482', '4');
INSERT INTO `compdtl` VALUES ('516', '485', '4');
INSERT INTO `compdtl` VALUES ('517', '470', '3');
INSERT INTO `compdtl` VALUES ('517', '474', '1');
INSERT INTO `compdtl` VALUES ('517', '486', '4');
INSERT INTO `compdtl` VALUES ('518', '472', '1');
INSERT INTO `compdtl` VALUES ('518', '473', '1');
INSERT INTO `compdtl` VALUES ('518', '486', '4');
INSERT INTO `compdtl` VALUES ('519', '483', '1');
INSERT INTO `compdtl` VALUES ('519', '486', '3');
INSERT INTO `compdtl` VALUES ('520', '484', '1');
INSERT INTO `compdtl` VALUES ('520', '486', '4');
INSERT INTO `compdtl` VALUES ('521', '466', '1');
INSERT INTO `compdtl` VALUES ('521', '467', '1');
INSERT INTO `compdtl` VALUES ('521', '477', '6');
INSERT INTO `compdtl` VALUES ('521', '478', '6');
INSERT INTO `compdtl` VALUES ('521', '482', '6');
INSERT INTO `compdtl` VALUES ('522', '467', '2');
INSERT INTO `compdtl` VALUES ('522', '477', '6');
INSERT INTO `compdtl` VALUES ('522', '478', '6');
INSERT INTO `compdtl` VALUES ('522', '482', '6');
INSERT INTO `compdtl` VALUES ('523', '460', '1');
INSERT INTO `compdtl` VALUES ('523', '462', '1');
INSERT INTO `compdtl` VALUES ('523', '477', '4');
INSERT INTO `compdtl` VALUES ('523', '478', '4');
INSERT INTO `compdtl` VALUES ('523', '482', '4');
INSERT INTO `compdtl` VALUES ('524', '460', '1');
INSERT INTO `compdtl` VALUES ('524', '461', '1');
INSERT INTO `compdtl` VALUES ('524', '477', '4');
INSERT INTO `compdtl` VALUES ('524', '478', '4');
INSERT INTO `compdtl` VALUES ('524', '482', '4');
INSERT INTO `compdtl` VALUES ('525', '461', '1');
INSERT INTO `compdtl` VALUES ('525', '462', '1');
INSERT INTO `compdtl` VALUES ('525', '477', '4');
INSERT INTO `compdtl` VALUES ('525', '478', '4');
INSERT INTO `compdtl` VALUES ('525', '482', '4');
INSERT INTO `compdtl` VALUES ('526', '486', '4');
INSERT INTO `compdtl` VALUES ('526', '492', '1');
INSERT INTO `compdtl` VALUES ('527', '486', '2');
INSERT INTO `compdtl` VALUES ('527', '493', '2');
INSERT INTO `compdtl` VALUES ('527', '494', '2');
INSERT INTO `compdtl` VALUES ('527', '495', '2');
INSERT INTO `compdtl` VALUES ('527', '496', '2');
INSERT INTO `compdtl` VALUES ('527', '528', '2');
INSERT INTO `compdtl` VALUES ('529', '497', '1');
INSERT INTO `compdtl` VALUES ('529', '499', '3');
INSERT INTO `compdtl` VALUES ('530', '500', '1');
INSERT INTO `compdtl` VALUES ('530', '502', '1');
INSERT INTO `compdtl` VALUES ('531', '501', '1');
INSERT INTO `compdtl` VALUES ('531', '503', '1');
INSERT INTO `compdtl` VALUES ('537', '471', '1');
INSERT INTO `compdtl` VALUES ('537', '532', '1');
INSERT INTO `compdtl` VALUES ('538', '475', '4');
INSERT INTO `compdtl` VALUES ('538', '482', '4');
INSERT INTO `compdtl` VALUES ('538', '485', '4');
INSERT INTO `compdtl` VALUES ('538', '533', '2');
INSERT INTO `compdtl` VALUES ('538', '534', '4');
INSERT INTO `compdtl` VALUES ('539', '482', '4');
INSERT INTO `compdtl` VALUES ('539', '485', '4');
INSERT INTO `compdtl` VALUES ('539', '535', '2');
INSERT INTO `compdtl` VALUES ('539', '536', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of compexp
-- ----------------------------
INSERT INTO `compexp` VALUES ('4', '2', '511', '3', '1', '', '');
INSERT INTO `compexp` VALUES ('5', '2', '513', '4', '2', '', '');
INSERT INTO `compexp` VALUES ('6', '2', '514', '5', '3', '', '');
INSERT INTO `compexp` VALUES ('7', '2', '515', '8', '4', '', '');
INSERT INTO `compexp` VALUES ('8', '2', '516', '9', '5', '', '');
INSERT INTO `compexp` VALUES ('9', '2', '517', '10', '6', '', '');
INSERT INTO `compexp` VALUES ('10', '2', '518', '2', '7', '', '');
INSERT INTO `compexp` VALUES ('11', '2', '519', '11', '8', '', '');
INSERT INTO `compexp` VALUES ('12', '2', '520', '12', '9', '', '');
INSERT INTO `compexp` VALUES ('13', '2', '521', '13', '10', '', '');
INSERT INTO `compexp` VALUES ('14', '2', '522', '17', '11', '', '');
INSERT INTO `compexp` VALUES ('15', '2', '523', '14', '12', '', '');
INSERT INTO `compexp` VALUES ('16', '2', '524', '15', '13', '', '');
INSERT INTO `compexp` VALUES ('17', '2', '525', '16', '14', '', '');
INSERT INTO `compexp` VALUES ('18', '2', '526', '18', '15', '', '');
INSERT INTO `compexp` VALUES ('19', '2', '527', '19', '16', '', '');
INSERT INTO `compexp` VALUES ('20', '2', '529', '20', '17', '', '');
INSERT INTO `compexp` VALUES ('21', '2', '490', '1', '18', '', '');
INSERT INTO `compexp` VALUES ('22', '2', '498', '21', '17', '', '');
INSERT INTO `compexp` VALUES ('23', '2', '489', '7', '3', '', '');
INSERT INTO `compexp` VALUES ('24', '2', '487', '6', '3', '', '');
INSERT INTO `compexp` VALUES ('25', '2', '491', '22', '19', '', '');
INSERT INTO `compexp` VALUES ('26', '2', '539', '23', '20', '', '');
INSERT INTO `compexp` VALUES ('27', '2', '537', '24', '21', '', '');
INSERT INTO `compexp` VALUES ('28', '2', '538', '25', '22', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exp
-- ----------------------------
INSERT INTO `exp` VALUES ('1', '立柱通用计算公式', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var pre = 0;//先设置pre为0\r\n    var count = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        var length = Math.max(pre, lengths[i]);//取出最大数\r\n        pre = lengths[i];//重新设置pre\r\n        var c = Math.ceil(length/3) + 1;//每隔3米一根立柱\r\n//        console.log(length, c);\r\n        count += c;\r\n    }\r\n    //还得再计算最后一下\r\n    var c = Math.ceil(pre/3) + 1;\r\n//    console.log(pre, c);\r\n    count += c;\r\n    return count;\r\n}', '立柱计算公式');
INSERT INTO `exp` VALUES ('2', '附加立柱组通用计算公式', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var pre = 0;//先设置pre为0\r\n    var count = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        var length = Math.max(pre, lengths[i]);//取出最大数\r\n        pre = lengths[i];//重新设置pre\r\n        var c = Math.ceil(length/3) + 1;//每隔3米一根立柱\r\n//        console.log(length, c);\r\n        count += c;\r\n    }\r\n    //还得再计算最后一下\r\n    var c = Math.ceil(pre/3) + 1;\r\n//    console.log(pre, c);\r\n    count += c;\r\n    return count;\r\n}', '附加立柱计算公式');
INSERT INTO `exp` VALUES ('3', 'M架组、V架组通用计算公式', '/*\r\n M架组、V架组通用计算公式。\r\n 每隔6米一个架组。\r\n */\r\n\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        var length = lengths[i];//棚长\r\n        count += Math.ceil((length+3)/6) - 1;//每隔6米一个架组。\r\n    }\r\n    return count;\r\n}', ' M架组、V架组通用计算公式。\r\n 每隔6米一个架组。');
INSERT INTO `exp` VALUES ('4', '棚内平横钢丝组通用计算公式', '/*\r\n 棚内平横钢丝组通用计算公式。\r\n 每6米一个，第一个在3米处出现。\r\n */\r\n\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        var length = lengths[i];//棚长\r\n        count += Math.ceil((length+6)/6) - 1 - 1;//每隔6米一个组。因为第一个出现在3米处，所以这么操作\r\n    }\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('5', '纵向拉杆组通用计算公式', '/*\r\n 纵向拉杆组通用计算公式。\r\n 每一棚有三根，组合里，不把纵向拉杆和纵向拉杆接头算上，因为这两个要根据棚长来算\r\n */\r\n\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    return lengths.length * 3;\r\n}', '');
INSERT INTO `exp` VALUES ('6', '纵向拉杆通用计算公式', '/*\r\n 纵向拉杆组通用计算公式。\r\n 每一棚有三根组合的纵向拉杆，组合里，每根纵向拉杆长度为6米.\r\n 遇到非6的整数倍时，仍然是算一根。例如27米仍为5根\r\n */\r\n\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        count += Math.ceil(lengths[i]/6);//每隔3米一根立柱\r\n    }\r\n    count *= 3;\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('7', '纵向拉杆接头通用计算公式', '/*\r\n 纵向拉杆组通用计算公式。\r\n 每一棚有三根组合的纵向拉杆，组合里，每根纵向拉杆长度为6米.\r\n 每根组合里的接头个数为拉杆个数-1.\r\n */\r\n\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        count += (Math.ceil(lengths[i]/6) - 1);//每隔3米一根立柱\r\n    }\r\n    count *= 3;\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('8', '棚头横杆组通用计算公式', '/*\r\n 每个棚前后各一个\r\n */\r\n\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    return lengths.length * 2;\r\n}', '');
INSERT INTO `exp` VALUES ('9', '棚头直杆组通用计算公式', '/*\r\n 每个棚前后各一个\r\n */\r\n\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    return lengths.length * 2;\r\n}', '');
INSERT INTO `exp` VALUES ('10', '拱管组通用计算公式', '/*\r\n 每1米一个\r\n */\r\n\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        count += lengths[i] + 1;//每隔6米一个架组。\r\n    }\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('11', '骑马铁（单）组通用计算公式', '/*\r\n 每3米有两个，在外侧\r\n */\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var max = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        if(max < lengths[i]) max = lengths[i];\r\n    }\r\n   return (max*2/3) * 2;\r\n}', '');
INSERT INTO `exp` VALUES ('12', '骑马铁（双）组通用计算公式', '/*\r\n 每3米有两个，在内侧\r\n */\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    for(var i = 1; i < lengths.length; ++i){\r\n        var length = Math.min(lengths[i-1], lengths[i]);\r\n        count += length*2/3;\r\n    }\r\n   return count;\r\n}', '');
INSERT INTO `exp` VALUES ('13', 'T型（外）组通用计算公式', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    count += lengths[0]/3 - 1;//第一排\r\n    count += lengths[lengths.length - 1]/3 - 1;//最后一排\r\n    for(var i = 1; i < lengths.length; ++i){\r\n        var l = Math.abs(lengths[i] - lengths[i-1]);\r\n        if(l > 0){\r\n            count += l/3 - 1;\r\n        }\r\n    }\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('14', 'L型（左）组通用计算公式', '/*\r\n对角线初始化时两个，然后对比\r\n */\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 2;//初始化时，对角线两个\r\n    for(var i = 1; i < lengths.length; ++i){\r\n        if(lengths[i] < lengths[i-1]) count++;\r\n    }\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('15', 'L型（右）组通用计算公式', '/*\r\n对角线初始化时两个，然后对比\r\n */\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 2;//初始化时，对角线两个\r\n    for(var i = 1; i < lengths.length; ++i){\r\n        if(lengths[i] > lengths[i-1]) count++;\r\n    }\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('16', 'L型（中）组通用计算公式', '/*\r\n对角线初始化时两个，然后对比\r\n */\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = lengths.length - 1;//初始化时，棚头，棚的个数-1\r\n    for(var i = 1; i < lengths.length; ++i){\r\n        if(lengths[i] == lengths[i-1]) count++;\r\n    }\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('17', 'T型（内）组通用计算公式', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    for(var i = 1; i < lengths.length; ++i){\r\n        var l = Math.min(lengths[i], lengths[i-1]);\r\n        if(l > 0){\r\n            count += l/3;\r\n        }\r\n        if(lengths[i] == lengths[i-1]){\r\n            count--;//这个时候要扣除一个\r\n        }\r\n    }\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('18', '水槽组通用计算公式', '/*\r\n 水槽片3米长。\r\n 按最短的棚长来算。\r\n */\r\n\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    for(var i = 1; i < lengths.length; ++i){\r\n        var l = Math.min(lengths[i], lengths[i-1]);\r\n        count += l/3;//每3米一个\r\n    }\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('19', '水槽头组通用计算公式', '/*\r\n棚拱数量-1\r\n */\r\n\r\nfunction run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    return lengths.length - 1;\r\n}', '');
INSERT INTO `exp` VALUES ('20', '卡槽组通用计算公式', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    for(var i = 1; i < lengths.length; ++i){\r\n        var l = Math.min(lengths[i], lengths[i-1]);\r\n        count += Math.ceil(l/6);//每6米一个\r\n    }\r\n    return count * 2;\r\n}', '');
INSERT INTO `exp` VALUES ('21', '卡槽连接片通用计算公式', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var count = 0;\r\n    for(var i = 1; i < lengths.length; ++i){\r\n        var l = Math.min(lengths[i], lengths[i-1]);\r\n        count += Math.ceil(l/6) - 1;//每6米一个\r\n    }\r\n    return count * 2;\r\n}', '');
INSERT INTO `exp` VALUES ('22', '纵梁通用计算公式', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var pre = 0;//先设置pre为0\r\n    var count = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        var length = Math.max(pre, lengths[i]);//取出最大数\r\n        pre = lengths[i];//重新设置pre\r\n        var c = length/3;//每隔3米一根纵梁\r\n        count += c;\r\n    }\r\n    //还得再计算最后一下\r\n    var c = pre/3;\r\n    count += c;\r\n    return count;\r\n}', '');
INSERT INTO `exp` VALUES ('23', '剪刀叉组通用计算公式', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var length = lengths[0];\r\n    return (Math.ceil(length/15)) * 2;\r\n}', '');
INSERT INTO `exp` VALUES ('24', '外侧抗风绳组通用计算公式', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var length = lengths[0];\r\n   return (Math.ceil(length/6) + 1) * 2;\r\n}', '');
INSERT INTO `exp` VALUES ('25', '顶弧撑组通用计算公式', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    return lengths.length * 2;\r\n}', '');

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
INSERT INTO `proj` VALUES ('2', '测试_简易棚_8m_001', '000', '测试用。');
INSERT INTO `proj` VALUES ('3', '测试_简易棚_8m_002', '000', 'asdf;ljdsaf');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sche
-- ----------------------------
INSERT INTO `sche` VALUES ('2', '简易棚_8m_M架', '8m简易棚方案，M架');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shed
-- ----------------------------
INSERT INTO `shed` VALUES ('2', '简易棚_8m_001', '2', '2', '1', '30,30,30', '1,1,1', '1,1', '1,1', '');
INSERT INTO `shed` VALUES ('3', '测试', '3', '2', '1', '30,30,30', '1,1,1', '1,1,1', '1,1', '');

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
