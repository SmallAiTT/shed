/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50610
Source Host           : localhost:3306
Source Database       : shed

Target Server Type    : MYSQL
Target Server Version : 50610
File Encoding         : 65001

Date: 2014-09-08 00:16:50
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `exp` VALUES ('1', '立柱', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var pre = 0;//先设置pre为0\r\n    var count = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        var length = Math.max(pre, lengths[i]);//取出最大数\r\n        pre = lengths[i];//重新设置pre\r\n        var c = Math.ceil(length/300) + 1;\r\n//        console.log(length, c);\r\n        count += c;\r\n        //立柱的间隔是600，但是立柱之间有根附加立柱，有可能在最后两根立柱之间的距离变成了300，例如2700长度。\r\n    }\r\n    //还得再计算最后一下\r\n    var c = Math.ceil(pre/300) + 1;\r\n//    console.log(pre, c);\r\n    count += c;\r\n    return count;\r\n}', '立柱计算公式');
INSERT INTO `exp` VALUES ('2', '附加立柱', 'function run(lengths, topScrolls, edgeScrolls, frontScrolls, store, args){\r\n    var pre = 0;//先设置pre为0\r\n    var count = 0;\r\n    for(var i = 0; i < lengths.length; ++i){\r\n        var length = Math.max(pre, lengths[i]);//取出最大数\r\n        pre = lengths[i];//重新设置pre\r\n        var c = Math.ceil((length - length%600)/600);\r\n//        console.log(length, c);\r\n        count += c;\r\n        //立柱的间隔是600，但是立柱之间有根附加立柱，有可能在最后两根立柱之间的距离变成了300，例如2700长度。\r\n    }\r\n    //还得再计算最后一下\r\n    var c = Math.ceil((pre - pre%600)/600);\r\n//    console.log(pre, c);\r\n    count += c;\r\n    return count;\r\n}', '附加立柱计算公式');
