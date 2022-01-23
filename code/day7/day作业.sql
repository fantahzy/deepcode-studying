/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : music

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 23/01/2022 16:54:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 个人信息
-- ----------------------------
DROP TABLE IF EXISTS `个人信息`;
CREATE TABLE `个人信息`  (
  `name` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `emai` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 个人信息
-- ----------------------------
INSERT INTO `个人信息` VALUES ('zhangsan', '123456', '123456', 'xxxxx', '2222222@qq.com');
INSERT INTO `个人信息` VALUES ('jame', '654321', '22222', 'newyork', '1111111@qq.com');

-- ----------------------------
-- Table structure for 交通及出行
-- ----------------------------
DROP TABLE IF EXISTS `交通及出行`;
CREATE TABLE `交通及出行`  (
  `家庭地址` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `工作地址` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `户籍地址` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `车牌号码` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `车型` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 交通及出行
-- ----------------------------

-- ----------------------------
-- Table structure for 工作信息
-- ----------------------------
DROP TABLE IF EXISTS `工作信息`;
CREATE TABLE `工作信息`  (
  `部门` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `职务` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `楼层` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL,
  `工作岗位` varchar(255) CHARACTER SET armscii8 COLLATE armscii8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = armscii8 COLLATE = armscii8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 工作信息
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
