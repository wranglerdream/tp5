/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : domain

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-03-20 16:21:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for al_main
-- ----------------------------
DROP TABLE IF EXISTS `al_main`;
CREATE TABLE `al_main` (
  `dId` int(11) NOT NULL AUTO_INCREMENT,
  `dName` varchar(50) DEFAULT NULL,
  `dRegistrantName` varchar(255) DEFAULT NULL,
  `dRegistrantEmail` varchar(255) DEFAULT NULL,
  `dSponsoringRegistrar` varchar(255) DEFAULT NULL,
  `dRegistrationDate` datetime DEFAULT NULL,
  `dExpirationDate` datetime DEFAULT NULL,
  `dDomainStatus` varchar(255) DEFAULT NULL,
  `dStatus` varchar(255) DEFAULT '1' COMMENT '1,正常，2，停用，3，搞定',
  `dGrade` tinyint(4) DEFAULT NULL COMMENT '1,com ,2,cn 3,shop',
  PRIMARY KEY (`dId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of al_main
-- ----------------------------
INSERT INTO `al_main` VALUES ('1', 'a', null, null, ' 	RESERVED-INTERNET ASSIGNED NUMBERS AUTHORITY', '1993-12-01 16:03:42', '2017-12-08 16:04:13', '1', '1', '1');
INSERT INTO `al_main` VALUES ('2', 'a', '厦门隐私保护服务有限公司 ', 'temp@ename.com ', '厦门易名科技股份有限公司', '2013-12-27 16:05:46', '2017-12-27 16:06:01', '1', '1', '2');

-- ----------------------------
-- Table structure for al_member
-- ----------------------------
DROP TABLE IF EXISTS `al_member`;
CREATE TABLE `al_member` (
  `mId` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mName` varchar(50) DEFAULT NULL,
  `mPassencry` varchar(50) DEFAULT NULL,
  `mPass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of al_member
-- ----------------------------
INSERT INTO `al_member` VALUES ('1', 'admin', null, 'e10adc3949ba59abbe56e057f20f883e');
