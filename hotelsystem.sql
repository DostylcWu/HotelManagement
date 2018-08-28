/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : hotelsystem

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-08-23 18:47:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for checkin
-- ----------------------------
DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin` (
  `ci_id` varchar(40) NOT NULL,
  `ci_rid` int(11) DEFAULT NULL,
  `ci_arrive` datetime DEFAULT NULL,
  `ci_leave` datetime DEFAULT NULL,
  `ci_day` int(11) DEFAULT NULL,
  `ci_pledge` int(11) DEFAULT NULL,
  `ci_account` decimal(9,5) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`ci_id`),
  KEY `FK_Reference_13` (`ci_rid`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`ci_rid`) REFERENCES `room_info` (`ri_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkin
-- ----------------------------
INSERT INTO `checkin` VALUES ('20180822132548118183936', '102', '2018-08-22 17:33:24', '2018-08-24 00:00:00', '2', '100', '276.00000', '0');
INSERT INTO `checkin` VALUES ('2018082378193356701696', '103', '2018-08-23 10:21:25', '2018-08-24 00:00:00', '1', '100', '168.00000', '0');
INSERT INTO `checkin` VALUES ('2018082378519291871232', '201', '2018-08-23 10:24:01', '2018-08-24 00:00:01', '1', '100', '208.00000', '0');

-- ----------------------------
-- Table structure for checkin_person
-- ----------------------------
DROP TABLE IF EXISTS `checkin_person`;
CREATE TABLE `checkin_person` (
  `cp_id` int(11) NOT NULL AUTO_INCREMENT,
  `cp_name` varchar(20) NOT NULL,
  `cp_rr_id` varchar(40) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`cp_id`),
  KEY `FK_reserve_room_rr_id_PK_checkin_person_cp_rr_id_FK` (`cp_rr_id`),
  CONSTRAINT `FK_reserve_room_rr_id_PK_checkin_person_cp_rr_id_FK` FOREIGN KEY (`cp_rr_id`) REFERENCES `reserve_room` (`rr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checkin_person
-- ----------------------------
INSERT INTO `checkin_person` VALUES ('1', '籍慧中', '2018082298832771710976', '0');
INSERT INTO `checkin_person` VALUES ('8', '李根', '20180822B3G6DTP37C', '1');
INSERT INTO `checkin_person` VALUES ('9', '测试1', '20180822B5R4G4ZX1P', '1');
INSERT INTO `checkin_person` VALUES ('10', '测试1', '20180822B6756XMT9P', '1');
INSERT INTO `checkin_person` VALUES ('11', '测试2', '20180822B7NBM7A7MW', '1');
INSERT INTO `checkin_person` VALUES ('12', '测试入住11', '20180822BSZS0BCGMW', '0');
INSERT INTO `checkin_person` VALUES ('13', '测试入住12', '20180822BTBKMG02Y8', '0');
INSERT INTO `checkin_person` VALUES ('14', '李根', '20180822133552106635264', '0');
INSERT INTO `checkin_person` VALUES ('15', '测试过滤', '20180822F9P1KC61S8', '1');
INSERT INTO `checkin_person` VALUES ('16', '测试修改', '20180822F9P1KC61S8', '0');
INSERT INTO `checkin_person` VALUES ('17', '籍慧中', '2018082305553950556160', '0');
INSERT INTO `checkin_person` VALUES ('18', '籍慧中', '201808230W0SP30X40', '0');
INSERT INTO `checkin_person` VALUES ('19', '测试插入数据', '201808237YXF4PH000', '1');
INSERT INTO `checkin_person` VALUES ('20', 'damon', '20180823C24GCS465P', '1');
INSERT INTO `checkin_person` VALUES ('21', '1', '20180823C4DSSMST9P', '0');
INSERT INTO `checkin_person` VALUES ('22', '1', '20180823C5FFDCGB0H', '0');
INSERT INTO `checkin_person` VALUES ('23', '赵信', '20180823C68BFBDRKP', '0');
INSERT INTO `checkin_person` VALUES ('24', 'a', '20180823C6RMAGRY5P', '1');
INSERT INTO `checkin_person` VALUES ('25', 'a', '20180823C7C5YHF7MW', '0');
INSERT INTO `checkin_person` VALUES ('26', '张加林', '20180823C7N7SXX4ZC', '0');
INSERT INTO `checkin_person` VALUES ('27', '陈邱跃', '20180823C7N7SXX4ZC', '0');
INSERT INTO `checkin_person` VALUES ('28', '1', '20180823C8T1SS8S5P', '0');
INSERT INTO `checkin_person` VALUES ('29', '哈哈哈', '20180823C8TSKW8P6W', '0');
INSERT INTO `checkin_person` VALUES ('30', '1', '20180823C93AWN6W94', '0');
INSERT INTO `checkin_person` VALUES ('31', 'aaa', '20180823CAHT6DTT2W', '0');
INSERT INTO `checkin_person` VALUES ('32', '1', '20180823CBB087RGR4', '0');
INSERT INTO `checkin_person` VALUES ('33', '莫甘娜', '20180823CC8FTPAG54', '0');
INSERT INTO `checkin_person` VALUES ('34', '莫甘娜', '20180823CD5PK0XS80', '0');
INSERT INTO `checkin_person` VALUES ('35', '1', '20180823CDC0YC4SFW', '0');
INSERT INTO `checkin_person` VALUES ('36', '1', '20180823CDKXMA5R8H', '0');
INSERT INTO `checkin_person` VALUES ('37', '1', '20180823CDW1FZMC6W', '0');
INSERT INTO `checkin_person` VALUES ('38', '1', '20180823CFMY7S6S14', '0');
INSERT INTO `checkin_person` VALUES ('39', '1', '20180823CFYZFHGH6W', '0');
INSERT INTO `checkin_person` VALUES ('40', '1', '20180823CGGN8C3B9P', '0');
INSERT INTO `checkin_person` VALUES ('41', '艾希', '20180823CHFY8TRPZC', '1');
INSERT INTO `checkin_person` VALUES ('42', '1', '20180823CKCH5FDWH0', '0');
INSERT INTO `checkin_person` VALUES ('43', 'weizhengyi', '20180823CKH0ZC0000', '0');
INSERT INTO `checkin_person` VALUES ('44', '魏', '20180823CMZFR1SZHH', '0');
INSERT INTO `checkin_person` VALUES ('45', '李白', '20180823CPTMDSWZC0', '0');
INSERT INTO `checkin_person` VALUES ('46', '李根', '20180823CR4A3CFXYW', '0');
INSERT INTO `checkin_person` VALUES ('47', '李白', '20180823CR8H59NFY8', '0');
INSERT INTO `checkin_person` VALUES ('48', '1', '20180823CW714Y158H', '0');
INSERT INTO `checkin_person` VALUES ('49', '测试前入住', '20180823CZFW24WMY8', '0');
INSERT INTO `checkin_person` VALUES ('50', '测试前入住2', '20180823D21PD4AKS8', '0');

-- ----------------------------
-- Table structure for consume
-- ----------------------------
DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume` (
  `c_id` varchar(40) NOT NULL,
  `c_alipay_id` varchar(40) DEFAULT NULL,
  `c_ci_id` varchar(40) DEFAULT NULL,
  `c_name` varchar(20) DEFAULT NULL,
  `c_qty` int(11) DEFAULT NULL,
  `c_extra` decimal(9,5) DEFAULT NULL,
  `c_date` datetime DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`),
  KEY `FK_Reference_14` (`c_ci_id`),
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`c_ci_id`) REFERENCES `checkin` (`ci_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consume
-- ----------------------------

-- ----------------------------
-- Table structure for guest
-- ----------------------------
DROP TABLE IF EXISTS `guest`;
CREATE TABLE `guest` (
  `g_idcode` varchar(18) NOT NULL,
  `g_ri_id` int(11) DEFAULT NULL,
  `g_name` varchar(20) DEFAULT NULL,
  `g_sex` char(4) DEFAULT NULL,
  `g_contact` varchar(11) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`g_idcode`),
  KEY `FK_Reference_15` (`g_ri_id`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`g_ri_id`) REFERENCES `room_info` (`ri_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guest
-- ----------------------------
INSERT INTO `guest` VALUES ('12315', '102', '李根', '男', '13378187939', '0');

-- ----------------------------
-- Table structure for hotel_discount
-- ----------------------------
DROP TABLE IF EXISTS `hotel_discount`;
CREATE TABLE `hotel_discount` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `d_stime` date DEFAULT NULL,
  `d_etime` date DEFAULT NULL,
  `d_value` decimal(2,2) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel_discount
-- ----------------------------
INSERT INTO `hotel_discount` VALUES ('1', '2018-08-22', '2018-08-23', '0.88', '0');
INSERT INTO `hotel_discount` VALUES ('2', '2018-10-01', '2018-10-05', '0.70', '0');

-- ----------------------------
-- Table structure for hotel_overtime
-- ----------------------------
DROP TABLE IF EXISTS `hotel_overtime`;
CREATE TABLE `hotel_overtime` (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `o_etime1` time DEFAULT NULL,
  `o_etime2` time DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel_overtime
-- ----------------------------
INSERT INTO `hotel_overtime` VALUES ('1', '12:00:00', '18:00:00', '0');

-- ----------------------------
-- Table structure for level_discount
-- ----------------------------
DROP TABLE IF EXISTS `level_discount`;
CREATE TABLE `level_discount` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) DEFAULT NULL,
  `c_discount` decimal(2,2) DEFAULT NULL,
  `c_consume` decimal(13,5) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of level_discount
-- ----------------------------
INSERT INTO `level_discount` VALUES ('1', '白银会员', '0.98', '500.00000', '0');
INSERT INTO `level_discount` VALUES ('2', '黄金会员', '0.93', '5000.00000', '0');
INSERT INTO `level_discount` VALUES ('3', '白金会员', '0.88', '10000.00000', '0');
INSERT INTO `level_discount` VALUES ('4', '钻石会员', '0.85', '50000.00000', '0');
INSERT INTO `level_discount` VALUES ('5', '黑金会员', '0.80', '100000.00000', '0');

-- ----------------------------
-- Table structure for manager_login
-- ----------------------------
DROP TABLE IF EXISTS `manager_login`;
CREATE TABLE `manager_login` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) DEFAULT NULL,
  `u_pwd` varchar(10) DEFAULT NULL,
  `u_identity` int(11) DEFAULT '0',
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager_login
-- ----------------------------
INSERT INTO `manager_login` VALUES ('1', 'admin', 'admin', '1', '0');
INSERT INTO `manager_login` VALUES ('2', 'admin1', 'admin', '0', '0');

-- ----------------------------
-- Table structure for manager_record
-- ----------------------------
DROP TABLE IF EXISTS `manager_record`;
CREATE TABLE `manager_record` (
  `mr_id` int(11) NOT NULL AUTO_INCREMENT,
  `mr_ontime` datetime DEFAULT NULL,
  `mr_offtime` datetime DEFAULT NULL,
  `mr_status` varchar(20) DEFAULT NULL,
  `u_mr_id` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`mr_id`),
  KEY `FK_manager_record_mr_m_id_FK_manager_m_id` (`u_mr_id`),
  CONSTRAINT `FK_manager_record_mr_m_id_FK_manager_m_id` FOREIGN KEY (`u_mr_id`) REFERENCES `manager_login` (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager_record
-- ----------------------------
INSERT INTO `manager_record` VALUES ('1', '2018-08-18 15:52:57', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('2', '2018-08-18 15:55:37', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('3', '2018-08-18 16:17:54', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('4', '2018-08-18 17:12:29', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('5', '2018-08-18 21:02:00', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('6', '2018-08-19 11:42:53', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('7', '2018-08-19 11:44:03', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('8', '2018-08-19 11:44:40', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('9', '2018-08-20 00:38:15', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('10', '2018-08-20 09:52:30', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('11', '2018-08-20 10:13:37', '2018-08-20 10:59:27', '早退', '1', '0');
INSERT INTO `manager_record` VALUES ('12', '2018-08-20 10:59:34', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('13', '2018-08-20 12:10:49', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('14', '2018-08-20 15:12:26', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('15', '2018-08-20 15:41:35', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('16', '2018-08-20 16:00:37', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('17', '2018-08-20 16:03:51', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('18', '2018-08-20 16:35:41', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('19', '2018-08-20 17:54:31', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('20', '2018-08-21 23:49:01', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('21', '2018-08-22 00:45:43', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('22', '2018-08-22 16:31:37', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('23', '2018-08-22 17:08:55', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('24', '2018-08-22 17:27:54', '2018-08-22 17:28:54', '早退', '1', '0');
INSERT INTO `manager_record` VALUES ('25', '2018-08-22 17:29:05', '2018-08-22 17:29:24', '早退', '2', '0');
INSERT INTO `manager_record` VALUES ('26', '2018-08-22 17:29:32', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('27', '2018-08-22 17:29:55', '2018-08-22 17:30:17', '早退', '2', '0');
INSERT INTO `manager_record` VALUES ('28', '2018-08-22 17:30:26', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('29', '2018-08-22 17:30:40', null, '旷工', '2', '0');
INSERT INTO `manager_record` VALUES ('30', '2018-08-22 17:31:20', '2018-08-22 17:53:32', '早退', '1', '0');
INSERT INTO `manager_record` VALUES ('31', '2018-08-22 17:53:41', '2018-08-22 17:53:57', '早退', '2', '0');
INSERT INTO `manager_record` VALUES ('32', '2018-08-22 17:56:26', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('33', '2018-08-22 18:06:56', '2018-08-22 18:13:27', '早退', '1', '0');
INSERT INTO `manager_record` VALUES ('34', '2018-08-23 00:43:31', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('35', '2018-08-23 01:51:24', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('36', '2018-08-23 09:31:15', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('37', '2018-08-23 10:17:11', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('38', '2018-08-23 12:19:16', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('39', '2018-08-23 14:17:00', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('40', '2018-08-23 16:55:15', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('41', '2018-08-23 17:01:49', '2018-08-23 17:03:30', '早退', '1', '0');
INSERT INTO `manager_record` VALUES ('42', '2018-08-23 17:05:53', '2018-08-23 17:05:56', '早退', '1', '0');
INSERT INTO `manager_record` VALUES ('43', '2018-08-23 17:13:58', null, '旷工', '1', '0');
INSERT INTO `manager_record` VALUES ('44', '2018-08-23 17:17:23', null, '旷工', '1', '0');

-- ----------------------------
-- Table structure for menmbers
-- ----------------------------
DROP TABLE IF EXISTS `menmbers`;
CREATE TABLE `menmbers` (
  `m_id` varchar(11) NOT NULL,
  `m_name` varchar(20) DEFAULT NULL,
  `m_consume` decimal(12,5) DEFAULT NULL,
  `m_c_id` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`m_id`),
  KEY `FK_member_m_c_id_FK_class_id_PK` (`m_c_id`),
  CONSTRAINT `FK_member_m_c_id_FK_class_id_PK` FOREIGN KEY (`m_c_id`) REFERENCES `level_discount` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menmbers
-- ----------------------------
INSERT INTO `menmbers` VALUES ('13555555555', '阿萨德', null, '1', '0');
INSERT INTO `menmbers` VALUES ('18835179897', '籍慧中', '1000.00000', '1', '0');

-- ----------------------------
-- Table structure for reserve_number
-- ----------------------------
DROP TABLE IF EXISTS `reserve_number`;
CREATE TABLE `reserve_number` (
  `rn_id` int(11) NOT NULL AUTO_INCREMENT,
  `rn_rr_id` varchar(40) DEFAULT NULL,
  `rn_rt_id` int(11) DEFAULT NULL,
  `rn_count` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`rn_id`),
  KEY `FK_reserve_room_rr_id_PK_reserve_number_rn_rr_id_FK` (`rn_rr_id`),
  KEY `FK_reserve_room_rr_rt_id_PK_room_type_rt_id_primary` (`rn_rt_id`),
  CONSTRAINT `FK_reserve_room_rr_id_PK_reserve_number_rn_rr_id_FK` FOREIGN KEY (`rn_rr_id`) REFERENCES `reserve_room` (`rr_id`),
  CONSTRAINT `FK_reserve_room_rr_rt_id_PK_room_type_rt_id_primary` FOREIGN KEY (`rn_rt_id`) REFERENCES `room_type` (`rt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reserve_number
-- ----------------------------
INSERT INTO `reserve_number` VALUES ('1', '2018082298832771710976', '3', '1', '0');
INSERT INTO `reserve_number` VALUES ('8', '20180822B3G6DTP37C', '1', '1', '1');
INSERT INTO `reserve_number` VALUES ('9', '20180822B5R4G4ZX1P', '1', '1', '1');
INSERT INTO `reserve_number` VALUES ('10', '20180822B6756XMT9P', '1', '1', '1');
INSERT INTO `reserve_number` VALUES ('11', '20180822B7NBM7A7MW', '1', '1', '1');
INSERT INTO `reserve_number` VALUES ('12', '20180822BSZS0BCGMW', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('13', '20180822BTBKMG02Y8', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('14', '20180822133552106635264', '3', '1', '0');
INSERT INTO `reserve_number` VALUES ('15', '20180822133552106635264', '2', '1', '0');
INSERT INTO `reserve_number` VALUES ('16', '20180822133552106635264', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('17', '20180822F9P1KC61S8', '2', '1', '0');
INSERT INTO `reserve_number` VALUES ('18', '2018082305553950556160', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('19', '201808230W0SP30X40', '4', '1', '0');
INSERT INTO `reserve_number` VALUES ('20', '201808237YXF4PH000', '1', '1', '1');
INSERT INTO `reserve_number` VALUES ('21', '20180823C24GCS465P', '2', '1', '1');
INSERT INTO `reserve_number` VALUES ('22', '20180823C4DSSMST9P', '4', '1', '0');
INSERT INTO `reserve_number` VALUES ('23', '20180823C5FFDCGB0H', '3', '1', '0');
INSERT INTO `reserve_number` VALUES ('24', '20180823C68BFBDRKP', '4', '1', '0');
INSERT INTO `reserve_number` VALUES ('25', '20180823C6RMAGRY5P', '1', '1', '1');
INSERT INTO `reserve_number` VALUES ('26', '20180823C7C5YHF7MW', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('27', '20180823C7N7SXX4ZC', '2', '1', '0');
INSERT INTO `reserve_number` VALUES ('28', '20180823C8T1SS8S5P', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('29', '20180823C8TSKW8P6W', '3', '1', '0');
INSERT INTO `reserve_number` VALUES ('30', '20180823C93AWN6W94', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('31', '20180823CAHT6DTT2W', '2', '1', '0');
INSERT INTO `reserve_number` VALUES ('32', '20180823CBB087RGR4', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('33', '20180823CC8FTPAG54', '3', '1', '0');
INSERT INTO `reserve_number` VALUES ('34', '20180823CD5PK0XS80', '3', '1', '0');
INSERT INTO `reserve_number` VALUES ('35', '20180823CDC0YC4SFW', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('36', '20180823CDKXMA5R8H', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('37', '20180823CDW1FZMC6W', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('38', '20180823CFMY7S6S14', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('39', '20180823CFYZFHGH6W', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('40', '20180823CGGN8C3B9P', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('41', '20180823CHFY8TRPZC', '1', '1', '1');
INSERT INTO `reserve_number` VALUES ('42', '20180823CKCH5FDWH0', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('43', '20180823CKH0ZC0000', '3', '1', '0');
INSERT INTO `reserve_number` VALUES ('44', '20180823CMZFR1SZHH', '6', '1', '0');
INSERT INTO `reserve_number` VALUES ('45', '20180823CPTMDSWZC0', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('46', '20180823CR4A3CFXYW', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('47', '20180823CR8H59NFY8', '5', '1', '0');
INSERT INTO `reserve_number` VALUES ('48', '20180823CW714Y158H', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('49', '20180823CZFW24WMY8', '1', '1', '0');
INSERT INTO `reserve_number` VALUES ('50', '20180823D21PD4AKS8', '1', '1', '0');

-- ----------------------------
-- Table structure for reserve_people
-- ----------------------------
DROP TABLE IF EXISTS `reserve_people`;
CREATE TABLE `reserve_people` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `rp_name` varchar(40) NOT NULL,
  `rp_tel` varchar(11) NOT NULL,
  `rp_msg` varchar(150) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`rp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reserve_people
-- ----------------------------
INSERT INTO `reserve_people` VALUES ('1', '籍慧中', '18835179896', '可能会晚到啊', '0');
INSERT INTO `reserve_people` VALUES ('8', '伍益民', '15651648169', '', '0');
INSERT INTO `reserve_people` VALUES ('9', '李根', '18784758481', '111', '0');
INSERT INTO `reserve_people` VALUES ('10', '王俊兰', '15035789558', '', '0');
INSERT INTO `reserve_people` VALUES ('11', '籍慧中', '18835179897', '吃午餐', '0');
INSERT INTO `reserve_people` VALUES ('12', 'damon', '18512814265', 'damon', '1');
INSERT INTO `reserve_people` VALUES ('13', 'linweichao', '18396232157', '', '0');
INSERT INTO `reserve_people` VALUES ('14', '谢向明', '15196411791', '', '0');
INSERT INTO `reserve_people` VALUES ('15', '吴培源', '18408280492', '', '1');
INSERT INTO `reserve_people` VALUES ('16', '张加林', '13980797589', '无敌双人房', '0');
INSERT INTO `reserve_people` VALUES ('17', '老牛', '15928096706', '能打折吗', '0');
INSERT INTO `reserve_people` VALUES ('18', '吴培源', '18408280492', '', '0');
INSERT INTO `reserve_people` VALUES ('19', '魏正镒', '13060039916', '11', '0');

-- ----------------------------
-- Table structure for reserve_room
-- ----------------------------
DROP TABLE IF EXISTS `reserve_room`;
CREATE TABLE `reserve_room` (
  `rr_id` varchar(40) NOT NULL,
  `rr_alipay_id` varchar(40) DEFAULT NULL,
  `rr_rp_id` int(11) DEFAULT NULL,
  `rr_in` date DEFAULT NULL,
  `rr_out` date DEFAULT NULL,
  `rr_arrive` datetime DEFAULT NULL,
  `rr_money` decimal(9,5) DEFAULT NULL,
  `rr_state` int(11) DEFAULT '0',
  `rr_cancel` datetime DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`rr_id`),
  KEY `FK_reserve_room_rp_rr_id_FK_reserve_people_rp_id_PK` (`rr_rp_id`),
  CONSTRAINT `FK_reserve_room_rp_rr_id_FK_reserve_people_rp_id_PK` FOREIGN KEY (`rr_rp_id`) REFERENCES `reserve_people` (`rp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reserve_room
-- ----------------------------
INSERT INTO `reserve_room` VALUES ('20180822133552106635264', null, '9', '2018-08-23', '2018-08-24', '2018-08-23 12:00:00', '0.00000', '0', '2018-08-23 00:00:00', '0');
INSERT INTO `reserve_room` VALUES ('2018082298832771710976', null, '1', '2018-08-24', '2018-08-25', '2018-08-24 12:00:00', '0.00000', '0', '2018-08-29 00:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180822B3G6DTP37C', '0', '8', '2018-08-23', '2018-08-25', '2018-08-23 00:00:00', '276.00000', '10', '2018-08-23 00:00:00', '1');
INSERT INTO `reserve_room` VALUES ('20180822B5R4G4ZX1P', '0', '1', '2018-08-30', '2018-08-31', '2018-08-30 00:00:00', '138.00000', '10', '2018-08-30 00:00:00', '1');
INSERT INTO `reserve_room` VALUES ('20180822B6756XMT9P', '0', '1', '2018-08-30', '2018-08-31', '2018-08-30 00:00:00', '138.00000', '10', '2018-08-30 00:00:00', '1');
INSERT INTO `reserve_room` VALUES ('20180822B7NBM7A7MW', '2018082221001004330200635957', '1', '2018-08-28', '2018-08-29', '2018-08-28 00:00:00', '138.00000', '20', '2018-08-28 00:00:00', '1');
INSERT INTO `reserve_room` VALUES ('20180822BSZS0BCGMW', '0', '1', '2018-08-25', '2018-08-26', '2018-08-25 12:00:00', '0.00000', '0', '2018-08-25 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180822BTBKMG02Y8', '2018082221001004330200636141', '1', '2018-08-24', '2018-08-26', '2018-08-24 00:00:00', '276.00000', '20', '2018-08-24 00:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180822F9P1KC61S8', '0', '8', '2018-08-24', '2018-08-25', '2018-08-24 12:00:00', '0.00000', '0', '2018-08-24 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('2018082305553950556160', null, '10', '2018-08-25', '2018-08-26', '2018-08-25 12:00:00', '0.00000', '0', '2018-08-25 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('201808230W0SP30X40', '2018082321001004330200635963', '11', '2018-08-23', '2018-08-25', '2018-08-23 12:00:00', '1776.00000', '20', '2018-08-23 13:00:00', '0');
INSERT INTO `reserve_room` VALUES ('201808237YXF4PH000', '2018082321001004330200636468', '11', '2018-08-23', '2018-08-24', '2018-08-23 12:00:00', '168.00000', '20', '2018-08-23 12:00:00', '1');
INSERT INTO `reserve_room` VALUES ('20180823C24GCS465P', '2018082321001004330500312631', '12', '2018-08-23', '2018-08-24', '2018-08-23 12:00:00', '208.00000', '20', '2018-08-23 12:00:00', '1');
INSERT INTO `reserve_room` VALUES ('20180823C4DSSMST9P', '0', '13', '2018-08-24', '2018-08-24', '2018-08-24 12:00:00', '0.00000', '10', '2018-08-24 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823C5FFDCGB0H', '0', '13', '2018-08-24', '2018-08-25', '2018-08-24 18:00:00', '0.00000', '0', '2018-08-24 20:50:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823C68BFBDRKP', '0', '14', '2018-08-23', '2018-08-24', '2018-08-23 12:00:00', '0.00000', '0', '2018-08-23 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823C6RMAGRY5P', '0', '15', '2018-08-24', '2018-08-24', '2018-08-24 13:00:00', '0.00000', '10', '2018-08-24 23:00:00', '1');
INSERT INTO `reserve_room` VALUES ('20180823C7C5YHF7MW', '2018082321001004330200636471', '15', '2018-08-24', '2018-08-25', '2018-08-24 12:00:00', '168.00000', '20', '2018-08-24 16:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823C7N7SXX4ZC', '0', '16', '2018-08-23', '2018-08-26', '2018-08-23 12:00:00', '624.00000', '10', '2018-08-23 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823C8T1SS8S5P', '0', '17', '2018-08-24', '2018-08-25', '2018-08-24 12:00:00', '168.00000', '10', '2018-08-24 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823C8TSKW8P6W', '0', '14', '2018-08-24', '2018-08-25', '2018-08-24 12:00:00', '0.00000', '0', '2018-08-24 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823C93AWN6W94', '0', '13', '2018-08-24', '2018-08-25', '2018-08-24 12:00:00', '168.00000', '10', '2018-08-24 14:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CAHT6DTT2W', '0', '18', '2018-08-24', '2018-08-25', '2018-08-24 13:00:00', '0.00000', '0', '2018-08-24 14:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CBB087RGR4', '0', '17', '2018-08-24', '2018-08-25', '2018-08-24 12:00:00', '168.00000', '10', '2018-08-24 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CC8FTPAG54', '0', '14', '2018-08-23', '2018-08-24', '2018-08-23 12:00:00', '198.00000', '10', '2018-08-23 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CD5PK0XS80', '0', '14', '2018-08-23', '2018-08-24', '2018-08-23 12:00:00', '198.00000', '10', '2018-08-23 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CDC0YC4SFW', '0', '17', '2018-08-24', '2018-08-24', '2018-08-24 12:00:00', '0.00000', '10', '2018-08-24 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CDKXMA5R8H', '0', '17', '2018-08-25', '2018-08-25', '2018-08-25 12:00:00', '0.00000', '10', '2018-08-25 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CDW1FZMC6W', '0', '17', '2018-08-26', '2018-08-26', '2018-08-26 12:00:00', '0.00000', '10', '2018-08-26 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CFMY7S6S14', '0', '17', '2018-08-30', '2018-08-30', '2018-08-30 12:00:00', '0.00000', '10', '2018-08-30 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CFYZFHGH6W', '0', '17', '2018-08-30', '2018-08-30', '2018-08-30 12:00:00', '0.00000', '10', '2018-08-30 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CGGN8C3B9P', '0', '17', '2018-08-26', '2018-08-26', '2018-08-26 12:00:00', '0.00000', '10', '2018-08-26 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CHFY8TRPZC', '2018082321001004330500312636', '14', '2018-08-23', '2018-08-24', '2018-08-23 12:00:00', '168.00000', '20', '2018-08-23 12:00:00', '1');
INSERT INTO `reserve_room` VALUES ('20180823CKCH5FDWH0', '0', '17', '2018-08-25', '2018-08-25', '2018-08-25 12:00:00', '0.00000', '10', '2018-08-25 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CKH0ZC0000', '2018082321001004330200636474', '19', '2018-08-24', '2018-08-25', '2018-08-24 18:00:00', '198.00000', '20', '2018-08-24 23:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CMZFR1SZHH', '2018082321001004330500312637', '19', '2018-08-24', '2018-08-25', '2018-08-24 16:00:00', '388.00000', '20', '2018-08-24 22:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CPTMDSWZC0', '0', '14', '2018-08-23', '2018-08-23', '2018-08-23 12:00:00', '0.00000', '10', '2018-08-23 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CR4A3CFXYW', '0', '16', '2018-08-30', '2018-08-31', '2018-08-30 12:00:00', '168.00000', '10', '2018-08-30 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CR8H59NFY8', '0', '14', '2018-08-23', '2018-08-26', '2018-08-23 12:00:00', '2064.00000', '10', '2018-08-23 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CW714Y158H', '0', '17', '2018-08-24', '2018-08-24', '2018-08-24 12:00:00', '0.00000', '10', '2018-08-24 12:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823CZFW24WMY8', '0', '11', '2018-08-24', '2018-08-25', '2018-08-24 12:00:00', '168.00000', '10', '2018-08-24 13:00:00', '0');
INSERT INTO `reserve_room` VALUES ('20180823D21PD4AKS8', '2018082321001004330500312641', '11', '2018-08-23', '2018-08-24', '2018-08-23 12:00:00', '168.00000', '20', '2018-08-23 12:00:00', '0');

-- ----------------------------
-- Table structure for room_info
-- ----------------------------
DROP TABLE IF EXISTS `room_info`;
CREATE TABLE `room_info` (
  `ri_id` int(11) NOT NULL,
  `ri_floor` int(11) DEFAULT NULL,
  `ri_s_id` int(11) DEFAULT NULL,
  `ri_rt_id` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`ri_id`),
  KEY `FK_room_state_rs_id_PK_room_info_ri_rs_id_FK` (`ri_s_id`),
  KEY `FK_room_type_rt_id_PK_room_info_ri_rt_id_FK` (`ri_rt_id`),
  CONSTRAINT `FK_room_state_rs_id_PK_room_info_ri_rs_id_FK` FOREIGN KEY (`ri_s_id`) REFERENCES `room_state` (`rs_id`),
  CONSTRAINT `FK_room_type_rt_id_PK_room_info_ri_rt_id_FK` FOREIGN KEY (`ri_rt_id`) REFERENCES `room_type` (`rt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_info
-- ----------------------------
INSERT INTO `room_info` VALUES ('101', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('102', '1', '3', '1', '0');
INSERT INTO `room_info` VALUES ('103', '1', '3', '1', '0');
INSERT INTO `room_info` VALUES ('104', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('105', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('106', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('107', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('108', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('109', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('110', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('201', '2', '3', '2', '0');
INSERT INTO `room_info` VALUES ('202', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('203', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('204', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('205', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('206', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('207', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('208', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('209', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('210', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('301', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('302', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('303', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('304', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('305', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('306', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('307', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('308', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('309', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('310', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('401', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('402', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('403', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('404', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('405', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('406', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('407', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('408', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('409', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('410', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('501', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('502', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('503', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('504', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('505', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('506', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('507', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('508', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('509', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('510', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('601', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('602', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('603', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('604', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('605', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('606', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('607', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('608', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('609', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('610', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('1001', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('1002', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('1003', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('1004', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('1005', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('1006', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('1007', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('1008', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('1009', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('1010', '1', '1', '1', '0');
INSERT INTO `room_info` VALUES ('2001', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('2002', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('2003', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('2004', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('2005', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('2006', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('2007', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('2008', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('2009', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('2010', '2', '1', '2', '0');
INSERT INTO `room_info` VALUES ('3001', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('3002', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('3003', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('3004', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('3005', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('3006', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('3007', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('3008', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('3009', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('3010', '3', '1', '3', '0');
INSERT INTO `room_info` VALUES ('4001', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('4002', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('4003', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('4004', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('4005', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('4006', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('4007', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('4008', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('4009', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('4010', '4', '1', '4', '0');
INSERT INTO `room_info` VALUES ('5001', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('5002', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('5003', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('5004', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('5005', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('5006', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('5007', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('5008', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('5009', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('5010', '5', '1', '5', '0');
INSERT INTO `room_info` VALUES ('6001', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('6002', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('6003', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('6004', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('6005', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('6006', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('6007', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('6008', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('6009', '6', '1', '6', '0');
INSERT INTO `room_info` VALUES ('6010', '6', '1', '6', '0');

-- ----------------------------
-- Table structure for room_state
-- ----------------------------
DROP TABLE IF EXISTS `room_state`;
CREATE TABLE `room_state` (
  `rs_id` int(11) NOT NULL AUTO_INCREMENT,
  `rs_name` varchar(10) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`rs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_state
-- ----------------------------
INSERT INTO `room_state` VALUES ('1', '可入住', '0');
INSERT INTO `room_state` VALUES ('2', '待打扫', '0');
INSERT INTO `room_state` VALUES ('3', '已入住', '0');

-- ----------------------------
-- Table structure for room_type
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type` (
  `rt_id` int(11) NOT NULL AUTO_INCREMENT,
  `rt_name` varchar(20) DEFAULT NULL,
  `rt_price` decimal(9,2) DEFAULT NULL,
  `rt_img` varchar(200) DEFAULT NULL,
  `rt_people` int(11) DEFAULT NULL,
  `rt_area` int(11) DEFAULT NULL,
  `rt_bedtype` varchar(10) DEFAULT NULL,
  `rt_nettype` varchar(10) DEFAULT NULL,
  `rt_window` varchar(5) DEFAULT NULL,
  `rt_breakfirst` varchar(5) DEFAULT NULL,
  `rt_nosmoking` varchar(10) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`rt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES ('1', '单人间', '168.00', '/HotelManagement/admin/img/singleroom.jpg', '1', '20', '单人床', '有WIFI', '有窗', '无早餐', '禁烟', '0');
INSERT INTO `room_type` VALUES ('2', '双人间', '208.00', '/HotelManagement/admin/img/doubleroom.jpg', '2', '40', '双人床', '有WIFI', '有窗', '提供早餐', '禁烟', '0');
INSERT INTO `room_type` VALUES ('3', '大床房', '198.00', '/HotelManagement/admin/img/bigroom.jpg', '2', '50', '大床', '有WIFI', '有窗', '提供早餐', '禁烟', '0');
INSERT INTO `room_type` VALUES ('4', '总统套房', '888.00', '/HotelManagement/admin/img/president.jpg', '3', '100', '好多床', '有WIFI', '有窗', '提供早餐', '禁烟', '0');
INSERT INTO `room_type` VALUES ('5', '海景房', '688.00', '/HotelManagement/user/assets/images/best-rooms/4.jpg', '2', '88', '双人床', '有WIFI', '有窗', '提供早餐', '禁烟', '0');
INSERT INTO `room_type` VALUES ('6', '桑拿房', '388.00', '/HotelManagement/user/assets/images/best-rooms/5.jpg', '2', '66', '双人床', '有WIFI', '有窗', '提供早餐', '禁烟', '0');

-- ----------------------------
-- Table structure for serial
-- ----------------------------
DROP TABLE IF EXISTS `serial`;
CREATE TABLE `serial` (
  `se_id` varchar(40) NOT NULL,
  `se_paid_money` varchar(40) DEFAULT NULL,
  `se_arr_day` datetime DEFAULT NULL,
  `se_phone` varchar(20) DEFAULT NULL,
  `se_time_now` datetime DEFAULT NULL,
  `se_day_now` int(11) DEFAULT NULL,
  `se_con_id` varchar(40) DEFAULT NULL,
  `se_c_room` varchar(10) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`se_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of serial
-- ----------------------------
INSERT INTO `serial` VALUES ('20180818159974917406720', 'bHkUq/8+rcjIHWUeUG9rQw==', '2018-08-19 02:35:56', '18835179897', '2018-08-19 05:05:24', '1', '20180818140416366149632', '101', '0');
INSERT INTO `serial` VALUES ('20180820106469586370560', 'bHkUq/8+rcjIHWUeUG9rQw==', '2018-08-20 18:44:01', '', '2018-08-20 22:06:03', '1', '2018082081036067209216', '101', '0');
INSERT INTO `serial` VALUES ('20180820128198186631168', 'nMJOZnjbTNN54PzEWkv38w==', '2018-08-21 00:36:20', '13113131313', '2018-08-21 00:57:12', '1', '20180820125368333762560', '105', '0');
INSERT INTO `serial` VALUES ('2018082085714907693056', 'bHkUq/8+rcjIHWUeUG9rQw==', '2018-08-20 19:06:28', '', '2018-08-20 19:20:54', '1', '2018082083860788346880', '3004', '0');

-- ----------------------------
-- Table structure for user_comment
-- ----------------------------
DROP TABLE IF EXISTS `user_comment`;
CREATE TABLE `user_comment` (
  `uc_id` int(11) NOT NULL AUTO_INCREMENT,
  `uc_time` date DEFAULT NULL,
  `uc_content` text,
  `uc_name` int(11) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`uc_id`),
  KEY `FK_Reference_10` (`uc_name`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`uc_name`) REFERENCES `user_login` (`ul_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_comment
-- ----------------------------
INSERT INTO `user_comment` VALUES ('1', '2018-08-06', '1离机场很近，出行也方便，房间卫生干净，第一次来成1都感觉很不错，酒店提供接送机服务24小时接送，非常负责，早餐也很丰富，下次来成都还会选择这里，会推荐给朋友，希望酒店可以继续保持更好的服务，再接再厉！！', '1', '0');
INSERT INTO `user_comment` VALUES ('2', '2018-08-07', '2酒店离机场不远，打车也就十几元，最好是用滴滴快车，不要打出租，出租要加50%的返城费。前台服务好，有免费接送机服务，房1很大，48平方，床是2.2*2.6米，就是被子有点单薄。卫生间和洗澡间是分开的，有双人浴缸。淋浴有点漏水，洗澡水渗出来了。早餐还行吧，品种不是太多，但也够吃了。', '1', '0');
INSERT INTO `user_comment` VALUES ('3', '2018-07-29', '3酒店设施齐全，宽敞明亮，房间很大很舒服，卫生间分两部分很贴心，有接送机服务，整体感觉非常舒适，安静，周边吃饭也很方便，价格合理，离奥特莱斯非常近，购物及其方便，物美价廉。客房价格实惠，确实物超所值，很棒。', '1', '0');
INSERT INTO `user_comment` VALUES ('4', '2018-07-30', '4为了方便赶飞机， 订的这个酒店 ，免费升级豪华单间 ，环境出乎意料的好 ，安静 ，不吵闹 ，独立冲凉房 ，并有大浴缸 ，独立卫生间 ，泡茶工具， 咖啡 ，茶叶都免费提供， 房间空间大， 干净卫生， 定的标准单间 ，免费升级豪华单间 ，最重要的是 ，还有免费送机服务 ，下次出差还会入住', '1', '0');
INSERT INTO `user_comment` VALUES ('5', '2018-08-06', '5成都最后一站 给我些许惊喜 酒店非常好 环境安逸整洁 前台一位姓赵的女孩很热情周到 酒店有几个特色 一是免费接送机 二是有机会你们来可以体验下2.6的大床 空间安排合理 舒适 非常值得推荐的一家酒店', '1', '0');
INSERT INTO `user_comment` VALUES ('6', '2018-05-30', '6位置不错，清静，有餐厅，房间很大，主要位置大概离机场有15分钟车程，做为转机是个不错的选择，餐厅很好，适合外地人，有地方特色菜，没有拍照片，到整体环境很好，值得推荐，环境安静，下次转机的首选地方！！！', '2', '0');
INSERT INTO `user_comment` VALUES ('7', '2018-08-07', '7非常好的酒店！房间很宽敞，中式风格，方正规矩。衣柜很大，一家人在成都深度游，带了很多东西，全部放进衣柜！卫生间和浴室是分开的，干湿分离很合理！并且有双人的浴盆，小孩子可以在里面游泳了！酒店服务也很好，服务人员友善和蔼，特别推荐前台叫陈金凤的妹妹服务很好，很喜欢她！ 酒店的地下车库也不错，管理严格，很安全！', '2', '0');
INSERT INTO `user_comment` VALUES ('8', '2018-08-20', 'nice', '2', '0');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `ui_id` int(11) NOT NULL AUTO_INCREMENT,
  `ui_ul_id` int(11) DEFAULT NULL,
  `ui_name` varchar(20) NOT NULL,
  `ui_iden` char(18) NOT NULL,
  `ui_mail` varchar(40) DEFAULT NULL,
  `ui_comment` int(11) DEFAULT '0',
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`ui_id`),
  KEY `FK_login_primary_userinfo_u_l_id_foreign` (`ui_ul_id`),
  CONSTRAINT `FK_login_primary_userinfo_u_l_id_foreign` FOREIGN KEY (`ui_ul_id`) REFERENCES `user_login` (`ul_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '1', '籍慧中', '142621454874545412', '18835179897@163.com', '0', '0');
INSERT INTO `user_info` VALUES ('2', '2', '伍益民', '142625199802035410', '18835179897@163.com', '0', '0');
INSERT INTO `user_info` VALUES ('3', '3', 'damon', '511381199508240010', 'Tstory9@foxmail.com', '0', '0');
INSERT INTO `user_info` VALUES ('4', '4', 'linweichao', '350521199402208016', '18396232158@139.com', '0', '0');
INSERT INTO `user_info` VALUES ('5', '5', 'kai', '510108199411111111', '1014686014@qq.com', '0', '0');
INSERT INTO `user_info` VALUES ('6', '6', '魏正镒', '130802199403090618', '1351242519@qq.com', '0', '0');
INSERT INTO `user_info` VALUES ('7', '7', '张加林', '511011199503243559', '1370559470@qq.com', '0', '0');
INSERT INTO `user_info` VALUES ('8', '8', '吴培源', '350583199412094373', '', '0', '0');
INSERT INTO `user_info` VALUES ('9', '9', '谢向明', '513721199110274939', '489651389@qq.com', '0', '0');
INSERT INTO `user_info` VALUES ('10', '10', '老牛', '510781199501234251', '1234@qq.com', '0', '0');

-- ----------------------------
-- Table structure for user_login
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `ul_id` int(11) NOT NULL AUTO_INCREMENT,
  `ul_account` char(11) DEFAULT NULL,
  `ul_pass` varchar(30) DEFAULT NULL,
  `flag` int(11) DEFAULT '0',
  PRIMARY KEY (`ul_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('1', '18835179897', 'pTAYkFL36R39g/dGQmm9YQ==', '0');
INSERT INTO `user_login` VALUES ('2', '15651648169', 'pTAYkFL36R39g/dGQmm9YQ==', '0');
INSERT INTO `user_login` VALUES ('3', '18512814265', '2Lu125E+sm3yzXHnf1y5QA==', '0');
INSERT INTO `user_login` VALUES ('4', '18396232157', '/PDl2tYaU6Snl/xSSs7o2Q==', '0');
INSERT INTO `user_login` VALUES ('5', '13658061702', '/PDl2tYaU6Snl/xSSs7o2Q==', '0');
INSERT INTO `user_login` VALUES ('6', '13060039916', 'cNk1BzH9T9rjqm8LzBM5jA==', '0');
INSERT INTO `user_login` VALUES ('7', '13980797589', 'tWDUEYXPUBL+JPeC5pJ4fg==', '0');
INSERT INTO `user_login` VALUES ('8', '18408280492', 'syvCxP+9OXpUkHGC/7vhPA==', '0');
INSERT INTO `user_login` VALUES ('9', '15196411791', '7WlBnGUI5LjSakYKMgnwyA==', '0');
INSERT INTO `user_login` VALUES ('10', '15928096706', 'VEcOpdJPiQ5ulfXRiwlffw==', '0');

-- ----------------------------
-- View structure for checkin_roominfo_type_state
-- ----------------------------
DROP VIEW IF EXISTS `checkin_roominfo_type_state`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `checkin_roominfo_type_state` AS select `checkin`.`ci_id` AS `ci_id`,`checkin`.`ci_rid` AS `ci_rid`,`checkin`.`ci_arrive` AS `ci_arrive`,`checkin`.`ci_leave` AS `ci_leave`,`checkin`.`ci_day` AS `ci_day`,`checkin`.`ci_pledge` AS `ci_pledge`,`checkin`.`ci_account` AS `ci_account`,`room_info`.`ri_id` AS `ri_id`,`room_info`.`ri_floor` AS `ri_floor`,`room_info`.`ri_s_id` AS `ri_s_id`,`room_info`.`ri_rt_id` AS `ri_rt_id`,`room_state`.`rs_id` AS `rs_id`,`room_state`.`rs_name` AS `rs_name`,`room_type`.`rt_id` AS `rt_id`,`room_type`.`rt_name` AS `rt_name`,`room_type`.`rt_price` AS `rt_price`,`room_type`.`rt_img` AS `rt_img`,`room_type`.`rt_people` AS `rt_people`,`room_type`.`rt_area` AS `rt_area`,`room_type`.`rt_bedtype` AS `rt_bedtype`,`room_type`.`rt_window` AS `rt_window`,`room_type`.`rt_breakfirst` AS `rt_breakfirst`,`room_type`.`rt_nosmoking` AS `rt_nosmoking`,`checkin`.`flag` AS `cflag`,`room_info`.`flag` AS `iflag`,`room_state`.`flag` AS `sflag`,`room_type`.`flag` AS `tflag` from (((`checkin` join `room_info` on((`checkin`.`ci_rid` = `room_info`.`ri_id`))) join `room_state` on((`room_info`.`ri_s_id` = `room_state`.`rs_id`))) join `room_type` on((`room_info`.`ri_rt_id` = `room_type`.`rt_id`))) ;

-- ----------------------------
-- View structure for new
-- ----------------------------
DROP VIEW IF EXISTS `new`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `new` AS select `checkin_roominfo_type_state`.`ci_id` AS `ci_id`,`checkin_roominfo_type_state`.`ci_rid` AS `ci_rid`,`checkin_roominfo_type_state`.`ci_arrive` AS `ci_arrive`,`checkin_roominfo_type_state`.`ci_leave` AS `ci_leave`,`checkin_roominfo_type_state`.`ci_day` AS `ci_day`,`checkin_roominfo_type_state`.`ci_pledge` AS `ci_pledge`,`checkin_roominfo_type_state`.`ci_account` AS `ci_account`,`checkin_roominfo_type_state`.`ri_id` AS `ri_id`,`checkin_roominfo_type_state`.`ri_floor` AS `ri_floor`,`checkin_roominfo_type_state`.`ri_s_id` AS `ri_s_id`,`checkin_roominfo_type_state`.`ri_rt_id` AS `ri_rt_id`,`checkin_roominfo_type_state`.`rs_id` AS `rs_id`,`checkin_roominfo_type_state`.`rs_name` AS `rs_name`,`checkin_roominfo_type_state`.`rt_id` AS `rt_id`,`checkin_roominfo_type_state`.`rt_name` AS `rt_name`,`checkin_roominfo_type_state`.`rt_price` AS `rt_price`,`checkin_roominfo_type_state`.`rt_img` AS `rt_img`,`checkin_roominfo_type_state`.`rt_people` AS `rt_people`,`checkin_roominfo_type_state`.`rt_area` AS `rt_area`,`checkin_roominfo_type_state`.`rt_bedtype` AS `rt_bedtype`,`checkin_roominfo_type_state`.`rt_window` AS `rt_window`,`checkin_roominfo_type_state`.`rt_breakfirst` AS `rt_breakfirst`,`checkin_roominfo_type_state`.`rt_nosmoking` AS `rt_nosmoking`,`checkin_roominfo_type_state`.`cflag` AS `cflag`,`checkin_roominfo_type_state`.`iflag` AS `iflag`,`checkin_roominfo_type_state`.`sflag` AS `sflag`,`checkin_roominfo_type_state`.`tflag` AS `tflag`,`guest`.`g_idcode` AS `g_idcode`,`guest`.`g_ri_id` AS `g_ri_id`,`guest`.`g_name` AS `g_name`,`guest`.`g_sex` AS `g_sex`,`guest`.`g_contact` AS `g_contact`,`guest`.`flag` AS `flag` from (`checkin_roominfo_type_state` left join `guest` on((`checkin_roominfo_type_state`.`ci_rid` = `guest`.`g_ri_id`))) ;

-- ----------------------------
-- View structure for roomtypeinfo
-- ----------------------------
DROP VIEW IF EXISTS `roomtypeinfo`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `roomtypeinfo` AS select count(`room_state`.`rs_name`) AS `num`,`room_type`.`rt_name` AS `rt_name`,`room_type`.`rt_img` AS `rt_img`,`room_info`.`ri_s_id` AS `ri_s_id`,`room_info`.`ri_rt_id` AS `ri_rt_id`,`room_state`.`rs_name` AS `rs_name` from ((`room_type` join `room_info` on((`room_type`.`rt_id` = `room_info`.`ri_rt_id`))) join `room_state` on((`room_info`.`ri_s_id` = `room_state`.`rs_id`))) where (`room_info`.`flag` = 0) group by `room_type`.`rt_name`,`room_state`.`rs_name` ;

-- ----------------------------
-- View structure for vi_managerlogin
-- ----------------------------
DROP VIEW IF EXISTS `vi_managerlogin`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_managerlogin` AS select `ml`.`u_id` AS `u_id`,`ml`.`u_name` AS `u_name`,`mr`.`mr_ontime` AS `mr_ontime`,`mr`.`mr_offtime` AS `mr_offtime`,`mr`.`mr_status` AS `mr_status` from (`manager_login` `ml` join `manager_record` `mr` on((`ml`.`u_id` = `mr`.`u_mr_id`))) where ((`ml`.`flag` = 0) and (`mr`.`flag` = 0)) ;

-- ----------------------------
-- View structure for vi_reserveroom
-- ----------------------------
DROP VIEW IF EXISTS `vi_reserveroom`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vi_reserveroom` AS select `reserve_room`.`rr_id` AS `rr_id`,`reserve_room`.`rr_in` AS `rr_in`,`reserve_room`.`rr_out` AS `rr_out`,`reserve_room`.`rr_arrive` AS `rr_arrive`,`reserve_room`.`rr_cancel` AS `rr_cancel`,`reserve_room`.`rr_money` AS `rr_money`,`reserve_room`.`rr_state` AS `rr_state`,`reserve_people`.`rp_id` AS `rp_id`,`reserve_people`.`rp_name` AS `rp_name`,`reserve_people`.`rp_tel` AS `rp_tel`,`reserve_people`.`rp_msg` AS `rp_msg`,`reserve_number`.`rn_id` AS `rn_id`,`reserve_number`.`rn_count` AS `rn_count`,`room_type`.`rt_id` AS `rt_id`,`room_type`.`rt_name` AS `rt_name`,`room_type`.`rt_price` AS `rt_price`,`checkin_person`.`cp_id` AS `cp_id`,`checkin_person`.`cp_name` AS `cp_name` from ((((`reserve_room` join `reserve_people`) join `checkin_person`) join `reserve_number`) join `room_type`) where ((`reserve_room`.`rr_rp_id` = `reserve_people`.`rp_id`) and (`checkin_person`.`cp_rr_id` = `reserve_room`.`rr_id`) and (`reserve_number`.`rn_rr_id` = `reserve_room`.`rr_id`) and (`reserve_number`.`rn_rt_id` = `room_type`.`rt_id`) and (`checkin_person`.`flag` = 0) and (`reserve_room`.`flag` = 0) and (`reserve_people`.`flag` = 0) and (`reserve_number`.`flag` = 0)) ;

-- ----------------------------
-- Procedure structure for delete_hotel_discount_when_invalid
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_hotel_discount_when_invalid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_hotel_discount_when_invalid`()
BEGIN
update hotel_discount set flag=1 where curdate() >d_etime and flag=0;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pro_manager
-- ----------------------------
DROP PROCEDURE IF EXISTS `pro_manager`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_manager`()
BEGIN
UPDATE manager_record set mr_offtime=NULL WHERE mr_offtime is NULL;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for update_status
-- ----------------------------
DROP PROCEDURE IF EXISTS `update_status`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_status`()
BEGIN
IF exists 
(SELECT rr_id from reserve_room where rr_state = 10 and flag = 0
and TIMESTAMPDIFF(MINUTE,currentTime,CURRENT_TIME()) > 2)
THEN
UPDATE reserve_room SET rr_state = 30
WHERE rr_id in (SELECT rr_id from (SELECT * from reserve_room) as a where a.flag = 0
and TIMESTAMPDIFF(MINUTE,currentTime,CURRENT_TIME()) > 0)  and rr_state = 10
and flag = 0;
END if;
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for discount_event
-- ----------------------------
DROP EVENT IF EXISTS `discount_event`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `discount_event` ON SCHEDULE EVERY 1 SECOND STARTS '2018-08-18 15:22:28' ON COMPLETION NOT PRESERVE ENABLE DO CALL delete_hotel_discount_when_invalid()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for event_update_status
-- ----------------------------
DROP EVENT IF EXISTS `event_update_status`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `event_update_status` ON SCHEDULE EVERY 1 SECOND STARTS '2018-08-23 18:46:07' ON COMPLETION PRESERVE ENABLE DO CALL update_status()
;;
DELIMITER ;

-- ----------------------------
-- Event structure for timefresh
-- ----------------------------
DROP EVENT IF EXISTS `timefresh`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `timefresh` ON SCHEDULE EVERY 2 SECOND STARTS '2018-08-22 10:39:52' ON COMPLETION NOT PRESERVE ENABLE DO CALL pro_manager
;
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_update_hotel_discount`;
DELIMITER ;;
CREATE TRIGGER `tri_update_hotel_discount` BEFORE UPDATE ON `hotel_discount` FOR EACH ROW BEGIN
IF new.d_stime > new.d_etime
THEN set new.d_stime=old.d_stime;
END IF;
IF new.d_stime > new.d_etime
THEN set new.d_etime=old.d_etime;
END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_update_hotel_overtime`;
DELIMITER ;;
CREATE TRIGGER `tri_update_hotel_overtime` BEFORE UPDATE ON `hotel_overtime` FOR EACH ROW BEGIN
IF new.o_etime1 >= new.o_etime2
THEN set new.o_etime1=old.o_etime1;
END IF;
IF new.o_etime1 >= new.o_etime2
THEN set new.o_etime2=old.o_etime2;
END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_record`;
DELIMITER ;;
CREATE TRIGGER `tri_record` BEFORE UPDATE ON `manager_record` FOR EACH ROW BEGIN
DECLARE d INT;

SET d=(SELECT TIMESTAMPDIFF(SECOND,new.mr_ontime,new.mr_offtime)); 

IF d>=28800 THEN
	SET new.mr_status='正常';
ELSEIF  d<28800  THEN
	SET new.mr_status='早退';
ELSE
	SET new.mr_status='旷工';
END IF;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `tri_menmbers`;
DELIMITER ;;
CREATE TRIGGER `tri_menmbers` BEFORE UPDATE ON `menmbers` FOR EACH ROW BEGIN
DECLARE f DOUBLE;
DECLARE a DOUBLE;
DECLARE b DOUBLE;
DECLARE c DOUBLE;
DECLARE d DOUBLE;
DECLARE e DOUBLE;
SET a=(SELECT c_consume FROM level_discount WHERE c_id=1);
SET b=(SELECT c_consume FROM level_discount WHERE c_id=2);
SET c=(SELECT c_consume FROM level_discount WHERE c_id=3);
SET d=(SELECT c_consume FROM level_discount WHERE c_id=4);
SET e=(SELECT c_consume FROM level_discount WHERE c_id=5);
set f=(SELECT new.m_consume from menmbers WHERE m_id=old.m_id);
IF f>=a and f<b THEN
	SET new.m_c_id=1;
ELSEIF  f>=b and f<c THEN
	SET new.m_c_id=2;
ELSEIF  f>=c AND f<d THEN
	SET new.m_c_id=3;
ELSEIF 	f>=d AND f<e THEN
	SET new.m_c_id=4;
ELSE
	SET new.m_c_id=5;
END IF;
END
;;
DELIMITER ;
