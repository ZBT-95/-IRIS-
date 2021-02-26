/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80021
Source Host           : localhost:3306
Source Database       : 测试

Target Server Type    : MYSQL
Target Server Version : 80021
File Encoding         : 65001

Date: 2021-02-26 14:07:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jhip_dict_dept
-- ----------------------------
DROP TABLE IF EXISTS `jhip_dict_dept`;
CREATE TABLE `jhip_dict_dept` (
  `DEPT_CODE` varchar(255) DEFAULT NULL,
  `DEPT_NAME` varchar(255) DEFAULT NULL,
  `DEPT_ALIAS` varchar(255) DEFAULT NULL,
  `CLINIC_ATTR` varchar(255) DEFAULT NULL,
  `OUTP_OR_INP` varchar(255) DEFAULT NULL,
  `INTERNAL_OR_SERGERY` varchar(255) DEFAULT NULL,
  `DISPLAY_ORDER` varchar(255) DEFAULT NULL,
  `TOTAL_BED_NUM` varchar(255) DEFAULT NULL,
  `PYM` varchar(255) DEFAULT NULL,
  `ROW_KEY` varchar(255) DEFAULT NULL,
  `DEPT_LV` varchar(255) DEFAULT NULL,
  `SUPER_CODE` varchar(255) DEFAULT NULL,
  `ID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jhip_dict_dept
-- ----------------------------
INSERT INTO `jhip_dict_dept` VALUES ('1010000', '门诊部', '门诊部', '0', '0', '9', '', '', 'MZB', null, null, '', '1');
INSERT INTO `jhip_dict_dept` VALUES ('1010100', '门诊大楼门诊部', '门诊大楼门诊', '0', '0', '9', '', '', 'MZDLMZB', null, null, '', '2');
INSERT INTO `jhip_dict_dept` VALUES ('1010200', '120急诊大楼门诊部', '120急诊大楼', '0', '0', '9', '', '', '120JZDLM', null, null, '', '3');
INSERT INTO `jhip_dict_dept` VALUES ('1010300', '导医组', '导医组', '0', '0', '9', '', '', 'DYZ', null, null, '', '4');
INSERT INTO `jhip_dict_dept` VALUES ('1010400', '急诊科', '急诊科', '0', '0', '9', '', '', 'JZK', null, null, '', '5');
INSERT INTO `jhip_dict_dept` VALUES ('1020100', '急诊观察病区', '急诊观察病区', '0', '1', '9', '', '', 'JZGCBQ', null, null, '', '6');
INSERT INTO `jhip_dict_dept` VALUES ('1020200', '急诊院前', '急诊院前', '0', '0', '9', '', '', 'JZYQ', null, null, '', '7');
INSERT INTO `jhip_dict_dept` VALUES ('1020300', '急诊综合病区', '急诊综合病区', '0', '1', '9', '', '', 'JZZHBQ', null, null, '', '8');
INSERT INTO `jhip_dict_dept` VALUES ('1020400', '急诊小儿病区', '急诊小儿病区', '0', '1', '9', '', '', 'JZXEBQ', null, null, '', '9');
INSERT INTO `jhip_dict_dept` VALUES ('1030100', '门诊手术室', '门诊手术室', '0', '0', '9', '', '', 'MZSSS', null, null, '', '10');
INSERT INTO `jhip_dict_dept` VALUES ('1040100', '咨询处', '咨询处', '0', '0', '9', '', '', 'ZXC', null, null, '', '11');
INSERT INTO `jhip_dict_dept` VALUES ('1040200', '服务中心', '服务中心', '0', '0', '9', '', '', 'FWZX', null, null, '', '12');
INSERT INTO `jhip_dict_dept` VALUES ('1040300', '体检中心', '体检中心', '0', '0', '9', '', '', 'TJZX', null, null, '', '13');
INSERT INTO `jhip_dict_dept` VALUES ('1040400', '眼镜室', '眼镜室', '0', '0', '9', '', '', 'YJS', null, null, '', '14');
INSERT INTO `jhip_dict_dept` VALUES ('1040500', '疾控科', '疾控科', '0', '0', '9', '', '', 'JKK', null, null, '', '15');
INSERT INTO `jhip_dict_dept` VALUES ('1050100', '门诊注射室', '门诊注射室', '0', '0', '9', '', '', 'MZZSS', null, null, '', '16');
INSERT INTO `jhip_dict_dept` VALUES ('1060100', '内科门诊', '内科门诊', '0', '0', '0', '', '', 'NKMZ', null, null, '', '17');
INSERT INTO `jhip_dict_dept` VALUES ('1060200', '中医门诊', '中医门诊', '0', '0', '9', '', '', 'ZYMZ', null, null, '', '18');
INSERT INTO `jhip_dict_dept` VALUES ('1060300', '外科门诊', '外科门诊', '0', '0', '1', '', '', 'WKMZ', null, null, '', '19');
INSERT INTO `jhip_dict_dept` VALUES ('1060400', '皮肤科门诊', '皮肤科门诊', '0', '0', '1', '', '', 'PFKMZ', null, null, '', '20');
INSERT INTO `jhip_dict_dept` VALUES ('1060500', '妇产科门诊', '妇产科门诊', '0', '0', '0', '', '', 'FCKMZ', null, null, '', '21');
INSERT INTO `jhip_dict_dept` VALUES ('1060510', '人流门诊', '人流门诊', '0', '0', '9', '', '', 'RLMZ', null, null, '', '22');
INSERT INTO `jhip_dict_dept` VALUES ('1060600', '儿科门诊', '儿科门诊', '0', '0', '0', '', '', 'EKMZ', null, null, '', '23');
INSERT INTO `jhip_dict_dept` VALUES ('1060700', '五官科门诊', '五官科门诊', '0', '0', '1', '', '', 'WGKMZ', null, null, '', '24');
INSERT INTO `jhip_dict_dept` VALUES ('1060800', '口腔门诊', '口腔门诊', '0', '0', '1', '', '', 'KQMZ', null, null, '', '25');
INSERT INTO `jhip_dict_dept` VALUES ('1060900', '肠道门诊', '肠道门诊', '0', '0', '0', '', '', 'CDMZ', null, null, '', '26');
INSERT INTO `jhip_dict_dept` VALUES ('1070100', '发热门诊', '发热门诊', '0', '0', '0', '', '', 'FRMZ', null, null, '', '27');
INSERT INTO `jhip_dict_dept` VALUES ('2010100', '消化内科', '消化内科', '0', '1', '0', '', '', 'XHNK', null, null, '', '28');
INSERT INTO `jhip_dict_dept` VALUES ('2010200', '心血管内科一区', '心血管内科一', '0', '1', '0', '', '', 'XXGNK', null, null, '', '29');
INSERT INTO `jhip_dict_dept` VALUES ('2010210', '心血管内科二区', '心血管内科二', '0', '1', '0', '', '', 'XXGNKEQ', null, null, '', '30');
INSERT INTO `jhip_dict_dept` VALUES ('2010300', '肾内科、内分泌内科', '肾内科、内分', '0', '1', '0', '', '', 'SNKKNFMN', null, null, '', '31');
INSERT INTO `jhip_dict_dept` VALUES ('2010500', '发热病区', '发热病区', '0', '0', '0', '', '', 'FRBQ', null, null, '', '32');
INSERT INTO `jhip_dict_dept` VALUES ('2010600', '呼吸内科', '呼吸内科', '0', '1', '0', '', '', 'HXNK', null, null, '', '33');
INSERT INTO `jhip_dict_dept` VALUES ('2010610', '神经内科', '琼海市人民医院', '0', '1', '0', null, null, 'SJNK', null, null, null, '34');
INSERT INTO `jhip_dict_dept` VALUES ('2010700', '中西医结合科', '中西医结合科', '0', '1', '9', '', '', 'ZXYJHK', null, null, '', '35');
INSERT INTO `jhip_dict_dept` VALUES ('2010710', '普内、肿内科', '普内、肿内科', '0', '1', '0', '', '', 'PNZNK', null, null, '', '36');
INSERT INTO `jhip_dict_dept` VALUES ('2020100', 'ICU科室', 'ICU科室', '0', '1', '9', '', '', 'ICUKS', null, null, '', '37');
INSERT INTO `jhip_dict_dept` VALUES ('2040100', '感染性疾病科', '感染性疾病科', '0', '1', '9', '', '', 'GRXJBK', null, null, '', '38');
INSERT INTO `jhip_dict_dept` VALUES ('2040200', '传染病门诊', '传染病门诊', '0', '0', '9', '', '', 'CRBMZ', null, null, '', '39');
INSERT INTO `jhip_dict_dept` VALUES ('2050100', '神经外科', '神经外科', '0', '1', '1', '', '', 'SJWK', null, null, '', '40');
INSERT INTO `jhip_dict_dept` VALUES ('2050200', '骨关节外科', '骨关节外科', '0', '1', '1', '', '', 'GGJWK', null, null, '', '41');
INSERT INTO `jhip_dict_dept` VALUES ('2050210', '骨病外科', '骨病外科', '0', '1', '1', '', '', 'GBWK', null, null, '', '42');
INSERT INTO `jhip_dict_dept` VALUES ('2050300', '普通外科、肛肠外科', '普通外科、肛', '0', '1', '1', '', '', 'PTWKKGCW', null, null, '', '43');
INSERT INTO `jhip_dict_dept` VALUES ('2050400', '普通肿瘤外科', '普通肿瘤外科', '0', '1', '1', '', '', 'PTZLWK', null, null, '', '44');
INSERT INTO `jhip_dict_dept` VALUES ('2050500', '创伤外科、创伤显微外科', '创伤外科、创', '0', '1', '1', '', '', 'CSWKKCSX', null, null, '', '45');
INSERT INTO `jhip_dict_dept` VALUES ('2050600', '泌尿外科', '泌尿外科', '0', '1', '1', '', '', 'MNWK', null, null, '', '46');
INSERT INTO `jhip_dict_dept` VALUES ('2050700', '胸外科', '胸外科', '0', '1', '1', '', '', 'XWK', null, null, '', '47');
INSERT INTO `jhip_dict_dept` VALUES ('2050710', '心脏血管外科', '心脏血管外科', '0', '1', '1', '', '', 'XZXGWK', null, null, '', '48');
INSERT INTO `jhip_dict_dept` VALUES ('2060100', 'VIP科室', 'VIP科室', '0', '1', '9', '', '', 'VIPKS', null, null, '', '49');
INSERT INTO `jhip_dict_dept` VALUES ('2070100', '信息科', '琼海市人民医院', '0', '1', '1', null, null, 'XXK', null, null, null, '50');
INSERT INTO `jhip_dict_dept` VALUES ('2070200', '妇科', '妇科', '0', '1', '0', '', '', 'FK', null, null, '', '51');
INSERT INTO `jhip_dict_dept` VALUES ('2070300', '产科二区', '产科二区', '0', '1', '0', '', '', 'CKEQ', null, null, '', '52');
INSERT INTO `jhip_dict_dept` VALUES ('2070400', '产科门诊', '产科门诊', '0', '0', '0', '', '', 'CKMZ', null, null, '', '53');
INSERT INTO `jhip_dict_dept` VALUES ('2070500', '妇科门诊', '妇科门诊', '0', '0', '0', '', '', 'FKMZ', null, null, '', '54');
INSERT INTO `jhip_dict_dept` VALUES ('2080100', '儿科', '儿科', '0', '1', '0', '', '', 'EK', null, null, '', '55');
INSERT INTO `jhip_dict_dept` VALUES ('2080200', '新生儿科', '新生儿科', '0', '1', '0', '', '', 'XSEK', null, null, '', '56');
INSERT INTO `jhip_dict_dept` VALUES ('2080300', '儿童输液中心', '儿童输液中心', '0', '0', '9', '', '', 'ETSYZX', null, null, '', '57');
INSERT INTO `jhip_dict_dept` VALUES ('2090100', '眼科', '眼科', '0', '1', '1', '', '', 'YK', null, null, '', '58');
INSERT INTO `jhip_dict_dept` VALUES ('2090200', '耳鼻喉头颈外科', '耳鼻喉头颈外', '0', '1', '1', '', '', 'EBHTJWK', null, null, '', '59');
INSERT INTO `jhip_dict_dept` VALUES ('2090300', '耳鼻喉门诊', '耳鼻喉门诊', '0', '0', '9', '', '', 'EBHMZ', null, null, '', '60');
INSERT INTO `jhip_dict_dept` VALUES ('2100300', '手术室', '手术室', '0', '1', '9', '', '', 'SSS', null, null, '', '61');
INSERT INTO `jhip_dict_dept` VALUES ('2110100', '保健科', '保健科', '0', '1', '9', '', '', 'BJK', null, null, '', '62');
INSERT INTO `jhip_dict_dept` VALUES ('2120100', '康复科', '康复科', '0', '1', '9', '', '', 'KFK', null, null, '', '63');
INSERT INTO `jhip_dict_dept` VALUES ('3010100', '放射科', '放射科', '0', '0', '9', '', '', 'FSK', null, null, '', '64');
INSERT INTO `jhip_dict_dept` VALUES ('3010200', 'CT/MR科', 'CT/MR科', '0', '0', '9', '', '', 'CTMRK', null, null, '', '65');
INSERT INTO `jhip_dict_dept` VALUES ('3020100', '血透室', '血透室', '0', '1', '9', '', '', 'XTS', null, null, '', '66');
INSERT INTO `jhip_dict_dept` VALUES ('3020200', '骨科', '骨科', '0', '0', '1', '', '', 'GK', null, null, '', '67');
INSERT INTO `jhip_dict_dept` VALUES ('3030100', 'B超室', 'B超室', '0', '0', '9', '', '', 'BCS', null, null, '', '68');
INSERT INTO `jhip_dict_dept` VALUES ('3040100', '心电图室', '心电图室', '0', '0', '9', '', '', 'XDTS', null, null, '', '69');
INSERT INTO `jhip_dict_dept` VALUES ('3040200', '脑电图室', '脑电图室', '0', '0', '9', '', '', 'NDTS', null, null, '', '70');
INSERT INTO `jhip_dict_dept` VALUES ('3050100', '胃镜室', '胃镜室', '0', '0', '9', '', '', 'WJS', null, null, '', '71');
INSERT INTO `jhip_dict_dept` VALUES ('3060100', '检验科', '检验科', '0', '0', '9', '', '', 'JYK', null, null, '', '72');
INSERT INTO `jhip_dict_dept` VALUES ('3060200', '输血科', '输血科', '0', '0', '9', '', '', 'SXK', null, null, '', '73');
INSERT INTO `jhip_dict_dept` VALUES ('3070100', '病理科', '病理科', '0', '0', '9', '', '', 'BLK', null, null, '', '74');
INSERT INTO `jhip_dict_dept` VALUES ('3080100', '痔疮(激光)', '痔疮(激光)', '0', '0', '9', '', '', 'ZC(JG)', null, null, '', '75');
INSERT INTO `jhip_dict_dept` VALUES ('3090100', '验光配镜', '验光配镜', '0', '0', '9', '', '', 'YGPJ', null, null, '', '76');
INSERT INTO `jhip_dict_dept` VALUES ('3110100', '理疗科', '理疗科', '0', '0', '9', '', '', 'LLK', null, null, '', '77');
INSERT INTO `jhip_dict_dept` VALUES ('3110200', '按摩室', '按摩室', '0', '0', '9', '', '', 'AMS', null, null, '', '78');
INSERT INTO `jhip_dict_dept` VALUES ('3120100', '反搏室', '反搏室', '0', '0', '9', '', '', 'FBS', null, null, '', '79');
INSERT INTO `jhip_dict_dept` VALUES ('3130100', '整形美容', '整形美容', '0', '0', '9', '', '', 'ZXMR', null, null, '', '80');
INSERT INTO `jhip_dict_dept` VALUES ('3140100', '社区按摩', '社区按摩', '0', '0', '9', '', '', 'SQAM', null, null, '', '81');
INSERT INTO `jhip_dict_dept` VALUES ('3140200', '社区体检', '社区体检', '0', '0', '9', '', '', 'SQTJ', null, null, '', '82');
INSERT INTO `jhip_dict_dept` VALUES ('3150100', '麻醉科', '麻醉科', '0', '0', '9', '', '', 'MZK', null, null, '', '83');
INSERT INTO `jhip_dict_dept` VALUES ('3160100', '功能科', '功能科', '0', '0', '9', '', '', 'GNK', null, null, '', '84');
INSERT INTO `jhip_dict_dept` VALUES ('3160200', '功能科护士站', '功能科护士站', '0', '0', '9', '', '', 'GNKHSZ', null, null, '', '85');
INSERT INTO `jhip_dict_dept` VALUES ('3170100', '支气管镜室', '支气管镜室', '0', '0', '9', '', '', 'ZQGJS', null, null, '', '86');
INSERT INTO `jhip_dict_dept` VALUES ('4010100', '门诊西药房', '西药房', '0', '0', '9', '', '', 'MZXYF', null, null, '', '87');
INSERT INTO `jhip_dict_dept` VALUES ('4010101', '手术室专用库', '手术室专用库', '0', '0', '9', '', '', 'SSSZYK', null, null, '', '88');
INSERT INTO `jhip_dict_dept` VALUES ('4010200', '急诊西药房', '西药房', '0', '0', '9', '', '', 'JZXYF', null, null, '', '89');
INSERT INTO `jhip_dict_dept` VALUES ('4010300', '门诊中药房', '中药房', '0', '0', '9', '', '', 'MZZYF', null, null, '', '90');
INSERT INTO `jhip_dict_dept` VALUES ('4010500', '门诊中成药房', '门诊中成药房', '0', '0', '9', '', '', 'MZZCYF', null, null, '', '91');
INSERT INTO `jhip_dict_dept` VALUES ('4010600', '发热门诊药房', '发热门诊药房', '0', '0', '9', '', '', 'FRMZYF', null, null, '', '92');
INSERT INTO `jhip_dict_dept` VALUES ('4010800', '中心药房', '中心药房', '0', '0', '9', '', '', 'ZXYF', null, null, '', '93');
INSERT INTO `jhip_dict_dept` VALUES ('4010900', '供应室', '供应室', '0', '0', '9', '', '', 'GYS', null, null, '', '94');
INSERT INTO `jhip_dict_dept` VALUES ('4020100', '西药库', '西药库', '0', '0', '9', '', '', 'XYK', null, null, '', '95');
INSERT INTO `jhip_dict_dept` VALUES ('4020200', '中药库', '草药库', '0', '0', '9', '', '', 'ZYK', null, null, '', '96');
INSERT INTO `jhip_dict_dept` VALUES ('4020300', '中成药库', '中成药库', '0', '0', '9', '', '', 'ZCYK', null, null, '', '97');
INSERT INTO `jhip_dict_dept` VALUES ('4020400', '卫材库', '卫材库', '0', '0', '9', '', '', 'WCK', null, null, '', '98');
INSERT INTO `jhip_dict_dept` VALUES ('4020500', '器械库', '器械库', '0', '0', '9', '', '', 'QXK', null, null, '', '99');
INSERT INTO `jhip_dict_dept` VALUES ('4020700', '物资库', '物资库', '0', '0', '9', '', '', 'WZK', null, null, '', '100');
INSERT INTO `jhip_dict_dept` VALUES ('4020800', '配镜中心库', '配镜中心库', '0', '0', '9', '', '', 'PJZXK', null, null, '', '101');
INSERT INTO `jhip_dict_dept` VALUES ('4021100', '后勤仓库', '后勤仓库', '0', '0', '9', '', '', 'HQCK', null, null, '', '102');
INSERT INTO `jhip_dict_dept` VALUES ('4030100', '制剂室', '制剂室', '0', '0', '9', '', '', 'ZJS', null, null, '', '103');
INSERT INTO `jhip_dict_dept` VALUES ('4030200', '中药加工场', '中药加工场', '0', '0', '9', '', '', 'ZYJGC', null, null, '', '104');
INSERT INTO `jhip_dict_dept` VALUES ('5010100', '王院长办公室', '院长办公室', '0', '0', '9', '', '', 'WYCBGS', null, null, '', '105');
INSERT INTO `jhip_dict_dept` VALUES ('5010200', '王立副院长办公室', '院长办公室', '0', '0', '9', '', '', 'WLFYCBGS', null, null, '', '106');
INSERT INTO `jhip_dict_dept` VALUES ('5010300', '王龙副院长办公室', '院长办公室', '0', '0', '9', '', '', 'WLFYCBGS', null, null, '', '107');
INSERT INTO `jhip_dict_dept` VALUES ('5010400', '姚振宇副院长办公室', '院长办公室', '0', '0', '9', '', '', 'WZYFYCBG', null, null, '', '108');
INSERT INTO `jhip_dict_dept` VALUES ('5020100', '行政办公室', '行政办公室', '0', '0', '9', '', '', 'XZBGS', null, null, '', '109');
INSERT INTO `jhip_dict_dept` VALUES ('5030100', '院感管理科', '院感管理科', '0', '0', '9', '', '', 'YGGLK', null, null, '', '110');
INSERT INTO `jhip_dict_dept` VALUES ('5040100', '团总支', '团总支', '0', '0', '9', '', '', 'TZZ', null, null, '', '111');
INSERT INTO `jhip_dict_dept` VALUES ('5040200', '党办', '党办', '0', '0', '9', '', '', 'DB', null, null, '', '112');
INSERT INTO `jhip_dict_dept` VALUES ('5050100', '医务办', '医务办', '0', '0', '9', '', '', 'YWB', null, null, '', '113');
INSERT INTO `jhip_dict_dept` VALUES ('5060100', '质控办', '质控办', '0', '0', '9', '', '', 'ZKB', null, null, '', '114');
INSERT INTO `jhip_dict_dept` VALUES ('5070100', '护理部', '护理部', '0', '0', '9', '', '', 'HLB', null, null, '', '115');
INSERT INTO `jhip_dict_dept` VALUES ('5080100', '招待区', '招待区', '0', '0', '9', '', '', 'ZDQ', null, null, '', '116');
INSERT INTO `jhip_dict_dept` VALUES ('5090100', '工会', '工会', '0', '0', '9', '', '', 'GH', null, null, '', '117');
INSERT INTO `jhip_dict_dept` VALUES ('5100100', '三甲办', '三甲办', '0', '0', '9', '', '', 'SJB', null, null, '', '118');
INSERT INTO `jhip_dict_dept` VALUES ('5110100', '财务科', '财务科', '0', '0', '9', '', '', 'CWK', null, null, '', '119');
INSERT INTO `jhip_dict_dept` VALUES ('5110200', '出纳室', '出纳室', '0', '0', '9', '', '', 'CNS', null, null, '', '120');
INSERT INTO `jhip_dict_dept` VALUES ('5110300', '医保办', '医保办', '0', '0', '9', '', '', 'YBB', null, null, '', '121');
INSERT INTO `jhip_dict_dept` VALUES ('5110400', '科教科', '科教科', '0', '0', '9', '', '', 'KJK', null, null, '', '122');
INSERT INTO `jhip_dict_dept` VALUES ('5120100', '审计室', '审计室', '0', '0', '9', '', '', 'SJS', null, null, '', '123');
INSERT INTO `jhip_dict_dept` VALUES ('5130100', '人事部', '人事部', '0', '0', '9', '', '', 'RSB', null, null, '', '124');
INSERT INTO `jhip_dict_dept` VALUES ('6010100', '门诊挂号收费', '门诊挂号收费', '0', '0', '9', '', '', 'MZGHSF', null, null, '', '125');
INSERT INTO `jhip_dict_dept` VALUES ('6010200', '门诊收费', '门诊收费', '0', '0', '9', '', '', 'MZSF', null, null, '', '126');
INSERT INTO `jhip_dict_dept` VALUES ('6010300', '急诊收费', '急诊收费', '0', '0', '9', '', '', 'JZSF', null, null, '', '127');
INSERT INTO `jhip_dict_dept` VALUES ('6020100', '住院收费', '住院收费', '0', '0', '9', '', '', 'ZYSF', null, null, '', '128');
INSERT INTO `jhip_dict_dept` VALUES ('6030100', '经济核算室', '经济核算室', '0', '0', '9', '', '', 'JJHSS', null, null, '', '129');
INSERT INTO `jhip_dict_dept` VALUES ('6040100', '设备科', '设备科', '0', '0', '9', '', '', 'SBK', null, null, '', '130');
INSERT INTO `jhip_dict_dept` VALUES ('6050100', '氧库', '氧库', '0', '0', '9', '', '', 'YK', null, null, '', '131');
INSERT INTO `jhip_dict_dept` VALUES ('6060100', '总务科', '总务科', '0', '0', '9', '', '', 'ZWK', null, null, '', '132');
INSERT INTO `jhip_dict_dept` VALUES ('6060200', '海南大祥物业服务公司', '海南大祥物业', '0', '0', '9', '', '', 'HNDXWYFW', null, null, '', '133');
INSERT INTO `jhip_dict_dept` VALUES ('6070100', '水电工组', '水电工组', '0', '0', '9', '', '', 'SDGZ', null, null, '', '134');
INSERT INTO `jhip_dict_dept` VALUES ('6080100', '图书室', '图书室', '0', '0', '9', '', '', 'TSS', null, null, '', '135');
INSERT INTO `jhip_dict_dept` VALUES ('6080200', '病案室', '病案室', '0', '0', '9', '', '', 'BAS', null, null, '', '136');
INSERT INTO `jhip_dict_dept` VALUES ('6080300', '计算机中心', '计算机中心', '0', '0', '9', '', '', 'JSJZX', null, null, '', '137');
INSERT INTO `jhip_dict_dept` VALUES ('6100100', '洗衣室', '洗衣室', '0', '0', '9', '', '', 'XYS', null, null, '', '138');
INSERT INTO `jhip_dict_dept` VALUES ('6110100', '太平间', '太平间', '0', '0', '9', '', '', 'TPJ', null, null, '', '139');
INSERT INTO `jhip_dict_dept` VALUES ('6120100', '环卫组', '环卫组', '0', '0', '9', '', '', 'HWZ', null, null, '', '140');
INSERT INTO `jhip_dict_dept` VALUES ('6130100', '职工食堂', '职工食堂', '0', '0', '9', '', '', 'ZGST', null, null, '', '141');
INSERT INTO `jhip_dict_dept` VALUES ('6140100', '基建组', '基建组', '0', '0', '9', '', '', 'JJZ', null, null, '', '142');
INSERT INTO `jhip_dict_dept` VALUES ('6150100', '打字室', '打字室', '0', '0', '9', '', '', 'DZS', null, null, '', '143');
INSERT INTO `jhip_dict_dept` VALUES ('6160100', '营销部', '营销部', '0', '0', '9', '', '', 'YXB', null, null, '', '144');
INSERT INTO `jhip_dict_dept` VALUES ('6170100', '保卫组', '保卫组', '0', '0', '9', '', '', 'BWZ', null, null, '', '145');
INSERT INTO `jhip_dict_dept` VALUES ('6180000', '药械科', '药械科', '0', '0', '9', '', '', 'YXK', null, null, '', '146');
INSERT INTO `jhip_dict_dept` VALUES ('6180100', '司机组', '司机组', '0', '0', '9', '', '', 'SJZ', null, null, '', '147');
INSERT INTO `jhip_dict_dept` VALUES ('6180200', '疼痛门诊', '疼痛门诊', '0', '0', '9', '', '', 'TTMZ', null, null, '', '148');
INSERT INTO `jhip_dict_dept` VALUES ('6180300', '检验科试剂库', '检验科试剂库', '0', '0', '9', '', '', 'JYKSJK', null, null, '', '149');
INSERT INTO `jhip_dict_dept` VALUES ('6180400', '手术室耗材库', '手术室耗材库', '0', '0', '9', '', '', 'SSSHCK', null, null, '', '150');
INSERT INTO `jhip_dict_dept` VALUES ('6180500', '麻醉耗材库', '麻醉耗材库', '0', '0', '9', '', '', 'MZHCK', null, null, '', '151');
INSERT INTO `jhip_dict_dept` VALUES ('6180600', '造影剂库', '造影剂库', '0', '0', '9', '', '', 'ZYJK', null, null, '', '152');
INSERT INTO `jhip_dict_dept` VALUES ('6280000', '药事委', '药事委', '0', '0', '9', '', '', 'YSW', null, null, '', '153');
INSERT INTO `jhip_dict_dept` VALUES ('6280200', '伤口造口门诊', '伤口造口门诊', '0', '0', '9', '', '', 'CKZKMZ', null, null, '', '154');
INSERT INTO `jhip_dict_dept` VALUES ('7010100', '大路镇卫生院', '大路镇卫生院', '0', '0', '9', '', '', 'DLZWSY', null, null, '', '155');
INSERT INTO `jhip_dict_dept` VALUES ('7020100', '博鳌卫生院', '博鳌卫生院', '0', '0', '9', '', '', 'BAWSY', null, null, '', '156');
INSERT INTO `jhip_dict_dept` VALUES ('8010100', '120指挥中心', '120指挥中心', '0', '0', '9', '', '', '120ZHZX', null, null, '', '157');
