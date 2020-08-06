/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : rtmap

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 06/08/2020 16:59:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `department_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, '技术部', '开发');
INSERT INTO `departments` VALUES (2, '人事部', '人员管理');
INSERT INTO `departments` VALUES (3, '财务部', '发工资');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NULL DEFAULT NULL COMMENT '部门id',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '姓名',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 1, '李华', '男', 28, '13865423265', 'Java');
INSERT INTO `employees` VALUES (2, 1, '王林', '男', 23, '18896543256', 'C++');
INSERT INTO `employees` VALUES (3, 1, '赵萌', '女', 18, '15614536986', 'Python');
INSERT INTO `employees` VALUES (4, 2, '小明', '男', 28, '15685532413', 'HR');
INSERT INTO `employees` VALUES (5, 2, '小亮', '男', 23, '16856459856', 'HR助理');
INSERT INTO `employees` VALUES (6, 2, '小雪', '女', 18, '15614536986', '招聘专员');
INSERT INTO `employees` VALUES (7, 3, '张三', '男', 23, '18865423654', '会计');
INSERT INTO `employees` VALUES (8, 3, '小红', '女', 24, '15566893624', '会计');
INSERT INTO `employees` VALUES (9, 3, '小英', '女', 20, '15632586951', '财务');

SET FOREIGN_KEY_CHECKS = 1;
