DROP database IF EXISTS `homework10_23`;
create database `homework10_23`;
use `homework10_23`;

-- ----------------------------
-- Table structure for tb_bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookinfo`;
CREATE TABLE `tb_bookinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(30) DEFAULT NULL,
  `bookname` varchar(70) DEFAULT NULL,
  `typeid` int(10) unsigned DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `page` int(10) unsigned DEFAULT NULL,
  `bookcase` int(10) unsigned DEFAULT NULL,
  `inTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `del` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bookinfo
-- ----------------------------
INSERT INTO `tb_bookinfo` VALUES ('7', '9787302210337', 'Java Web开发实战宝典', '4', '王国辉', '', '302', '89.00', '834', '4', '2021-02-24', 'mr', '0');
INSERT INTO `tb_bookinfo` VALUES ('8', '9787115195975', 'Java Web开发典型模块大全', '4', '王国辉、王毅、王殊宇', '', '115', '89.00', '752', '5', '2021-02-24', 'mr', '0');
INSERT INTO `tb_bookinfo` VALUES ('9', '9787115195966', 'Java Web程序设计慕课版', '5', '明日科技', '', '115', '49.80', '350', '4', '2021-02-24', 'mr', '1');
INSERT INTO `tb_bookinfo` VALUES ('10', '9787115195988', 'Android程序设计慕课版', '4', '明日科技', '', '111', '49.80', '360', '4', '2021-02-24', 'mr', '1');

-- ----------------------------
-- Table structure for tb_bookinfo1
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookinfo1`;
CREATE TABLE `tb_bookinfo1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `barcode` varchar(30) DEFAULT NULL,
  `bookname` varchar(70) DEFAULT NULL,
  `typeid` int(10) unsigned DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `translator` varchar(30) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `price` float(8,2) DEFAULT NULL,
  `page` int(10) unsigned DEFAULT NULL,
  `bookcase` int(10) unsigned DEFAULT NULL,
  `inTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `del` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bookinfo1
-- ----------------------------
INSERT INTO `tb_bookinfo1` VALUES ('7', '9787302210337', 'Java Web开发实战宝典', '4', '王国辉', '', '302', '89.00', '834', '4', '2021-02-24', 'mr', '0');
INSERT INTO `tb_bookinfo1` VALUES ('8', '9787115195975', 'Java Web开发典型模块大全', '4', '王国辉、王毅、王殊宇', '', '115', '89.00', '752', '5', '2021-02-24', 'mr', '0');
INSERT INTO `tb_bookinfo1` VALUES ('9', '9787115195966', 'Android开发实战', '5', '明日科技', '', '115', '49.80', '350', '4', '2021-02-24', 'mr', '1');
INSERT INTO `tb_bookinfo1` VALUES ('10', '9787115195988', 'Android从入门到精通', '4', '明日科技', '', '111', '49.80', '360', '4', '2021-02-24', 'mr', '1');

-- ----------------------------
-- Table structure for tb_booktype
-- ----------------------------
DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE `tb_booktype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(30) DEFAULT NULL,
  `days` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_booktype
-- ----------------------------
INSERT INTO `tb_booktype` VALUES ('4', '网络编程', '20');
INSERT INTO `tb_booktype` VALUES ('5', '数据库开发', '15');

-- ----------------------------
-- Table structure for tb_borrow
-- ----------------------------
DROP TABLE IF EXISTS `tb_borrow`;
CREATE TABLE `tb_borrow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `readerid` int(10) unsigned DEFAULT NULL,
  `bookid` int(10) DEFAULT NULL,
  `borrowTime` date DEFAULT NULL,
  `backTime` date DEFAULT NULL,
  `operator` varchar(30) DEFAULT NULL,
  `ifback` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_borrow
-- ----------------------------
INSERT INTO `tb_borrow` VALUES ('7', '4', '7', '2021-02-24', '2021-03-16', 'mr', '1');
INSERT INTO `tb_borrow` VALUES ('8', '4', '7', '2021-02-24', '2021-03-16', 'mr', '0');
INSERT INTO `tb_borrow` VALUES ('9', '5', '8', '2021-02-24', '2021-04-05', 'mr', '0');