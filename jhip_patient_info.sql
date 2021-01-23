/*
Navicat MySQL Data Transfer

Source Server         : 我的MYSQL
Source Server Version : 80021
Source Host           : localhost:3306
Source Database       : 测试

Target Server Type    : MYSQL
Target Server Version : 80021
File Encoding         : 65001

Date: 2021-01-23 10:26:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jhip_patient_info
-- ----------------------------
DROP TABLE IF EXISTS `jhip_patient_info`;
CREATE TABLE `jhip_patient_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `mpi_id` varchar(45) DEFAULT NULL COMMENT '患者主索引号',
  `patient_id` varchar(45) DEFAULT NULL COMMENT '患者住院ID',
  `patient_type` varchar(45) DEFAULT NULL,
  `outp_no` varchar(45) DEFAULT NULL,
  `inp_no` varchar(45) DEFAULT NULL,
  `hospital_domain_code` varchar(15) DEFAULT NULL COMMENT '医院域代码',
  `hospital_domain_name` varchar(45) DEFAULT NULL COMMENT '医院名称',
  `name` varchar(45) DEFAULT NULL COMMENT '患者姓名',
  `pyname` varchar(45) DEFAULT NULL COMMENT '患者拼音名',
  `sex` varchar(20) DEFAULT NULL COMMENT '性别',
  `date_of_birth` date DEFAULT NULL COMMENT '出生日期',
  `id_type` varchar(10) NOT NULL COMMENT '证件类别',
  `id_card` varchar(45) DEFAULT NULL COMMENT '证件号码',
  `company` varchar(50) DEFAULT NULL COMMENT '工作单位',
  `street_address` varchar(100) DEFAULT NULL COMMENT '街道地址',
  `zone` varchar(30) DEFAULT NULL COMMENT '区，镇，乡',
  `city` varchar(30) DEFAULT NULL COMMENT '所在城市',
  `province` varchar(40) DEFAULT NULL COMMENT '省，市，自治区，直辖市',
  `post_code` varchar(12) DEFAULT NULL COMMENT '邮编',
  `country_code` varchar(45) DEFAULT NULL COMMENT '国家代码',
  `addr_type` varchar(2) DEFAULT NULL COMMENT '地址类型 ',
  `phone_home` varchar(20) DEFAULT NULL COMMENT '家庭手机',
  `phone_business` varchar(20) DEFAULT NULL COMMENT '工作手机',
  `marriage` varchar(10) DEFAULT NULL COMMENT '婚姻状况',
  `mother_pid` varchar(45) DEFAULT NULL COMMENT '母亲住院ID',
  `nation` varchar(45) DEFAULT NULL COMMENT '民族',
  `birth_place` varchar(100) DEFAULT NULL COMMENT '出生地',
  `blood_type` varchar(20) DEFAULT NULL COMMENT '血型',
  `nationnality` varchar(45) DEFAULT NULL COMMENT '国籍',
  `death_date` varchar(0) DEFAULT NULL COMMENT '患者死亡日期和时间',
  `death_id` varchar(45) DEFAULT NULL COMMENT '患者死亡标识',
  `profession` varchar(45) DEFAULT NULL COMMENT '职业',
  `contact_name` varchar(45) DEFAULT NULL COMMENT '联系人姓名',
  `contact_phone` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `contact_relation` varchar(45) DEFAULT NULL COMMENT '与联系人关系',
  `contact_name2` varchar(45) DEFAULT NULL COMMENT '联系人姓名2',
  `contact_phone2` varchar(20) DEFAULT NULL COMMENT '联系人电话2',
  `contact_relation2` varchar(45) DEFAULT NULL COMMENT '与联系人关系2',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `updated` datetime DEFAULT NULL COMMENT '更新时间',
  `removed` varchar(0) DEFAULT NULL COMMENT '删除时间',
  `is_master` tinyint(1) DEFAULT '0' COMMENT '是否患者主索引',
  `supplier_system_id` varchar(20) DEFAULT NULL COMMENT '患者来源系统ID',
  `inp_on_supplier` varchar(12) DEFAULT NULL COMMENT '患者在业务系统ID',
  `domian_id` varchar(20) DEFAULT NULL COMMENT '区域ID',
  `combine_type` int DEFAULT NULL COMMENT '合并方式',
  `is_matched` tinyint(1) DEFAULT NULL COMMENT '是否已匹配',
  `register` varchar(45) DEFAULT NULL COMMENT '挂号员信息',
  PRIMARY KEY (`id`,`id_type`),
  KEY `name` (`name`),
  KEY `phone_home` (`phone_home`),
  KEY `phone_business` (`phone_business`),
  KEY `patient_id` (`patient_id`),
  KEY `id_card` (`id_card`)
) ENGINE=InnoDB AUTO_INCREMENT=5013 DEFAULT CHARSET=utf8 COMMENT='���滼�߻�����Ϣ';

-- ----------------------------
-- Records of jhip_patient_info
-- ----------------------------
INSERT INTO `jhip_patient_info` VALUES ('1', '21d6e7a04b3743e38d1cdcc80ae705f3', '658**25', '', '', '', '', '', '李琴娥', '', 'F', '2019-02-01', 'PN', '4331011*****000', '', '湖南省吉首市***2组', '', '', '湖南省', '416000', '', '', '', '', '', '', '', '', '', '中国', '', '', '', '', '', '', '', '', '', '2021-01-23 16:25:49', '2021-01-23 17:20:11', '', '0', '', '', '', '1', '1', '');
