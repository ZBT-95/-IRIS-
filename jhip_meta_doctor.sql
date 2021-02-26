/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80021
Source Host           : localhost:3306
Source Database       : 测试

Target Server Type    : MYSQL
Target Server Version : 80021
File Encoding         : 65001

Date: 2021-02-26 14:07:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jhip_meta_doctor
-- ----------------------------
DROP TABLE IF EXISTS `jhip_meta_doctor`;
CREATE TABLE `jhip_meta_doctor` (
  `rid` bigint unsigned NOT NULL,
  `job_code` varchar(20) DEFAULT NULL COMMENT '专业技术职务代码',
  `job_name` varchar(30) DEFAULT NULL COMMENT '专业技术职务代码对应名称',
  `start_time` varchar(30) DEFAULT NULL COMMENT '角色有效时间（起始）',
  `end_time` varchar(30) DEFAULT NULL COMMENT '角色有效时间（结束）',
  `pn_card` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `sex_code` varchar(10) DEFAULT NULL COMMENT '性别代码',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `birthdate` varchar(30) DEFAULT NULL COMMENT '出生日期',
  `dept_code` varchar(20) DEFAULT NULL COMMENT '科室号',
  `dept_name` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `birth_place` varchar(255) DEFAULT NULL COMMENT '出生地',
  `register_code` varchar(30) DEFAULT NULL COMMENT '申请者标识',
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jhip_meta_doctor
-- ----------------------------
INSERT INTO `jhip_meta_doctor` VALUES ('6435628399588', '231', '主任医师', '20100101', '20501231', '120109197706015518', '1', '男性', '19570323', 'xxx12345-X', '呼吸内科', null, '120109197706015518', 'Dr.Li');
