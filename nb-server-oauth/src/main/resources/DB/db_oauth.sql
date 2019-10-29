/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50605
 Source Host           : localhost:3306
 Source Schema         : db_oauth

 Target Server Type    : MySQL
 Target Server Version : 50605
 File Encoding         : 65001

 Date: 27/10/2019 22:03:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for audit_log
-- ----------------------------
DROP TABLE IF EXISTS `audit_log`;
CREATE TABLE `audit_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'http方法GET POST',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求路径',
  `status` int(4) NULL DEFAULT NULL COMMENT 'http状态码',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求用户名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of audit_log
-- ----------------------------
INSERT INTO `audit_log` VALUES (1, 'GET', '/users/2', NULL, NULL, '2019-10-27 22:02:00', NULL);
INSERT INTO `audit_log` VALUES (2, 'GET', '/error', NULL, NULL, '2019-10-27 22:02:00', NULL);
INSERT INTO `audit_log` VALUES (3, 'GET', '/users/2', 200, NULL, '2019-10-27 22:02:25', '2019-10-27 22:02:25');
INSERT INTO `audit_log` VALUES (4, 'GET', '/error', 500, NULL, '2019-10-27 22:02:26', '2019-10-27 22:02:26');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'lhy', '123');
INSERT INTO `user` VALUES (2, 'nb', '123');

SET FOREIGN_KEY_CHECKS = 1;
