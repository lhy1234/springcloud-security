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

 Date: 17/01/2020 07:07:50
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
) ENGINE = InnoDB AUTO_INCREMENT = 978 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of audit_log
-- ----------------------------
INSERT INTO `audit_log` VALUES (1, 'GET', '/users/2', NULL, NULL, '2019-10-27 22:02:00', NULL);
INSERT INTO `audit_log` VALUES (2, 'GET', '/error', NULL, NULL, '2019-10-27 22:02:00', NULL);
INSERT INTO `audit_log` VALUES (3, 'GET', '/users/2', 200, NULL, '2019-10-27 22:02:25', '2019-10-27 22:02:25');
INSERT INTO `audit_log` VALUES (4, 'GET', '/error', 500, NULL, '2019-10-27 22:02:26', '2019-10-27 22:02:26');
INSERT INTO `audit_log` VALUES (5, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-02 20:56:15', NULL);
INSERT INTO `audit_log` VALUES (6, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-02 20:57:05', NULL);
INSERT INTO `audit_log` VALUES (7, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-02 20:57:40', NULL);
INSERT INTO `audit_log` VALUES (8, 'POST', '/order/orders', 401, NULL, '2019-11-02 20:58:45', '2019-11-02 20:58:50');
INSERT INTO `audit_log` VALUES (9, 'POST', '/order/orders', 401, NULL, '2019-11-02 20:59:19', '2019-11-02 20:59:45');
INSERT INTO `audit_log` VALUES (10, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:00:49', '2019-11-02 21:00:51');
INSERT INTO `audit_log` VALUES (11, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:01:38', '2019-11-02 21:01:38');
INSERT INTO `audit_log` VALUES (12, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:03:43', '2019-11-02 21:03:49');
INSERT INTO `audit_log` VALUES (13, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:04:14', '2019-11-02 21:04:17');
INSERT INTO `audit_log` VALUES (14, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:04:59', '2019-11-02 21:05:03');
INSERT INTO `audit_log` VALUES (15, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:05:32', '2019-11-02 21:05:36');
INSERT INTO `audit_log` VALUES (16, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:06:59', '2019-11-02 21:07:01');
INSERT INTO `audit_log` VALUES (17, 'POST', '/order/orders', 401, NULL, '2019-11-02 21:09:54', '2019-11-02 21:09:57');
INSERT INTO `audit_log` VALUES (18, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 09:40:37', NULL);
INSERT INTO `audit_log` VALUES (19, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 09:40:57', NULL);
INSERT INTO `audit_log` VALUES (20, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 09:44:27', NULL);
INSERT INTO `audit_log` VALUES (21, 'POST', '/order/orders', 403, 'lhy', '2019-11-03 09:45:19', '2019-11-03 09:45:19');
INSERT INTO `audit_log` VALUES (22, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 09:47:00', NULL);
INSERT INTO `audit_log` VALUES (23, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 09:48:37', NULL);
INSERT INTO `audit_log` VALUES (24, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 09:50:42', NULL);
INSERT INTO `audit_log` VALUES (25, 'POST', '/order/orders', 403, 'lhy', '2019-11-03 09:51:12', '2019-11-03 09:51:12');
INSERT INTO `audit_log` VALUES (26, 'POST', '/order/orders', 403, 'lhy', '2019-11-03 09:51:45', '2019-11-03 09:51:46');
INSERT INTO `audit_log` VALUES (27, 'POST', '/order/orders', 401, NULL, '2019-11-03 11:48:41', '2019-11-03 11:48:42');
INSERT INTO `audit_log` VALUES (28, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 11:49:08', NULL);
INSERT INTO `audit_log` VALUES (29, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 11:57:31', NULL);
INSERT INTO `audit_log` VALUES (30, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 12:02:00', NULL);
INSERT INTO `audit_log` VALUES (31, 'POST', '/order/orders', 401, NULL, '2019-11-03 13:09:34', '2019-11-03 13:09:36');
INSERT INTO `audit_log` VALUES (32, 'POST', '/order/orders', 401, NULL, '2019-11-03 13:10:39', '2019-11-03 13:10:40');
INSERT INTO `audit_log` VALUES (33, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 13:10:44', NULL);
INSERT INTO `audit_log` VALUES (34, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:00', NULL);
INSERT INTO `audit_log` VALUES (35, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:09', NULL);
INSERT INTO `audit_log` VALUES (36, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:10', NULL);
INSERT INTO `audit_log` VALUES (37, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:11', NULL);
INSERT INTO `audit_log` VALUES (38, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:11', NULL);
INSERT INTO `audit_log` VALUES (39, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:12', NULL);
INSERT INTO `audit_log` VALUES (40, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:13', NULL);
INSERT INTO `audit_log` VALUES (41, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:13', NULL);
INSERT INTO `audit_log` VALUES (42, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:14', NULL);
INSERT INTO `audit_log` VALUES (43, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:15', NULL);
INSERT INTO `audit_log` VALUES (44, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:16', NULL);
INSERT INTO `audit_log` VALUES (45, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:16', NULL);
INSERT INTO `audit_log` VALUES (46, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:17', NULL);
INSERT INTO `audit_log` VALUES (47, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:18', NULL);
INSERT INTO `audit_log` VALUES (48, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:18', NULL);
INSERT INTO `audit_log` VALUES (49, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:19', NULL);
INSERT INTO `audit_log` VALUES (50, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:19', NULL);
INSERT INTO `audit_log` VALUES (51, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:20', NULL);
INSERT INTO `audit_log` VALUES (52, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:21', NULL);
INSERT INTO `audit_log` VALUES (53, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:21', NULL);
INSERT INTO `audit_log` VALUES (54, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:11:22', NULL);
INSERT INTO `audit_log` VALUES (55, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:12:53', NULL);
INSERT INTO `audit_log` VALUES (56, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:12:55', NULL);
INSERT INTO `audit_log` VALUES (57, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:12:56', NULL);
INSERT INTO `audit_log` VALUES (58, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:12:56', NULL);
INSERT INTO `audit_log` VALUES (59, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:28', NULL);
INSERT INTO `audit_log` VALUES (60, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:30', NULL);
INSERT INTO `audit_log` VALUES (61, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:30', NULL);
INSERT INTO `audit_log` VALUES (62, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:31', NULL);
INSERT INTO `audit_log` VALUES (63, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:33', NULL);
INSERT INTO `audit_log` VALUES (64, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:34', NULL);
INSERT INTO `audit_log` VALUES (65, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 13:18:35', NULL);
INSERT INTO `audit_log` VALUES (66, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 14:02:50', NULL);
INSERT INTO `audit_log` VALUES (67, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 14:03:10', NULL);
INSERT INTO `audit_log` VALUES (68, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 14:03:12', NULL);
INSERT INTO `audit_log` VALUES (69, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 14:03:13', NULL);
INSERT INTO `audit_log` VALUES (70, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 18:00:37', NULL);
INSERT INTO `audit_log` VALUES (71, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:00:56', NULL);
INSERT INTO `audit_log` VALUES (72, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:08', NULL);
INSERT INTO `audit_log` VALUES (73, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:08', NULL);
INSERT INTO `audit_log` VALUES (74, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:10', NULL);
INSERT INTO `audit_log` VALUES (75, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:12', NULL);
INSERT INTO `audit_log` VALUES (76, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:13', NULL);
INSERT INTO `audit_log` VALUES (77, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:01:14', NULL);
INSERT INTO `audit_log` VALUES (78, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:02:39', NULL);
INSERT INTO `audit_log` VALUES (79, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:02:41', NULL);
INSERT INTO `audit_log` VALUES (80, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:02:43', NULL);
INSERT INTO `audit_log` VALUES (81, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:02:44', NULL);
INSERT INTO `audit_log` VALUES (82, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:02:45', NULL);
INSERT INTO `audit_log` VALUES (83, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:22:53', NULL);
INSERT INTO `audit_log` VALUES (84, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:22:56', NULL);
INSERT INTO `audit_log` VALUES (85, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:22:57', NULL);
INSERT INTO `audit_log` VALUES (86, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:22:58', NULL);
INSERT INTO `audit_log` VALUES (87, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:03', NULL);
INSERT INTO `audit_log` VALUES (88, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:04', NULL);
INSERT INTO `audit_log` VALUES (89, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:06', NULL);
INSERT INTO `audit_log` VALUES (90, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:07', NULL);
INSERT INTO `audit_log` VALUES (91, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:37', NULL);
INSERT INTO `audit_log` VALUES (92, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:46', NULL);
INSERT INTO `audit_log` VALUES (93, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:46', NULL);
INSERT INTO `audit_log` VALUES (94, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:48', NULL);
INSERT INTO `audit_log` VALUES (95, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:49', NULL);
INSERT INTO `audit_log` VALUES (96, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:50', NULL);
INSERT INTO `audit_log` VALUES (97, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:51', NULL);
INSERT INTO `audit_log` VALUES (98, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:43:52', NULL);
INSERT INTO `audit_log` VALUES (99, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:46:15', NULL);
INSERT INTO `audit_log` VALUES (100, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:46:16', NULL);
INSERT INTO `audit_log` VALUES (101, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:46:17', NULL);
INSERT INTO `audit_log` VALUES (102, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:46:18', NULL);
INSERT INTO `audit_log` VALUES (103, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:51:22', NULL);
INSERT INTO `audit_log` VALUES (104, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:51:23', NULL);
INSERT INTO `audit_log` VALUES (105, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:51:24', NULL);
INSERT INTO `audit_log` VALUES (106, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 18:51:24', NULL);
INSERT INTO `audit_log` VALUES (107, 'POST', '/order/orders', 401, NULL, '2019-11-03 20:05:06', '2019-11-03 20:05:06');
INSERT INTO `audit_log` VALUES (108, 'POST', '/order/orders', 401, NULL, '2019-11-03 20:05:13', '2019-11-03 20:05:13');
INSERT INTO `audit_log` VALUES (109, 'POST', '/order/orders', 401, NULL, '2019-11-03 20:05:14', '2019-11-03 20:05:14');
INSERT INTO `audit_log` VALUES (110, 'POST', '/token/oauth/token', NULL, NULL, '2019-11-03 20:05:18', NULL);
INSERT INTO `audit_log` VALUES (111, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 20:05:27', NULL);
INSERT INTO `audit_log` VALUES (112, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 20:05:29', NULL);
INSERT INTO `audit_log` VALUES (113, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 20:05:30', NULL);
INSERT INTO `audit_log` VALUES (114, 'POST', '/order/orders', NULL, 'lhy', '2019-11-03 20:05:32', NULL);
INSERT INTO `audit_log` VALUES (115, 'GET', '/users', 200, NULL, '2019-11-10 20:31:10', '2019-11-10 20:31:12');
INSERT INTO `audit_log` VALUES (116, 'GET', '/users', 200, NULL, '2019-11-10 20:31:12', '2019-11-10 20:31:12');
INSERT INTO `audit_log` VALUES (117, 'GET', '/users', 200, NULL, '2019-11-10 20:31:21', '2019-11-10 20:31:21');
INSERT INTO `audit_log` VALUES (118, 'GET', '/users', 200, NULL, '2019-11-10 20:32:36', '2019-11-10 20:32:36');
INSERT INTO `audit_log` VALUES (119, 'GET', '/users', 200, NULL, '2019-11-10 20:32:44', '2019-11-10 20:32:44');
INSERT INTO `audit_log` VALUES (120, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:45:55', '2019-11-12 22:45:56');
INSERT INTO `audit_log` VALUES (121, 'GET', '/error', 500, NULL, '2019-11-12 22:45:57', '2019-11-12 22:45:57');
INSERT INTO `audit_log` VALUES (122, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:48:41', '2019-11-12 22:48:42');
INSERT INTO `audit_log` VALUES (123, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:49:29', '2019-11-12 22:49:29');
INSERT INTO `audit_log` VALUES (124, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:51:14', '2019-11-12 22:51:14');
INSERT INTO `audit_log` VALUES (125, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:52:46', '2019-11-12 22:52:46');
INSERT INTO `audit_log` VALUES (126, 'GET', '/error', 500, NULL, '2019-11-12 22:52:46', '2019-11-12 22:52:46');
INSERT INTO `audit_log` VALUES (127, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:53:33', '2019-11-12 22:53:33');
INSERT INTO `audit_log` VALUES (128, 'GET', '/users/findByUsername', 200, NULL, '2019-11-12 22:56:37', '2019-11-12 22:56:37');
INSERT INTO `audit_log` VALUES (129, 'POST', '/users', 400, NULL, '2019-12-08 19:12:32', '2019-12-08 19:12:33');
INSERT INTO `audit_log` VALUES (130, 'POST', '/error', 400, NULL, '2019-12-08 19:12:33', '2019-12-08 19:12:33');
INSERT INTO `audit_log` VALUES (131, 'GET', '/users/1', 200, NULL, '2019-12-08 19:13:14', '2019-12-08 19:13:14');
INSERT INTO `audit_log` VALUES (132, 'GET', '/users/1', 200, NULL, '2019-12-08 19:15:00', '2019-12-08 19:15:12');
INSERT INTO `audit_log` VALUES (133, 'GET', '/users/1', 200, 'lhy', '2019-12-08 19:16:00', '2019-12-08 19:16:03');
INSERT INTO `audit_log` VALUES (134, 'GET', '/users/1', 200, 'lhy', '2019-12-08 19:16:21', '2019-12-08 19:16:39');
INSERT INTO `audit_log` VALUES (135, 'GET', '/users/1', 200, 'lhy', '2019-12-08 19:18:17', '2019-12-08 19:18:22');
INSERT INTO `audit_log` VALUES (136, 'GET', '/users/1', 200, 'lhy', '2019-12-08 19:18:40', '2019-12-08 19:18:52');
INSERT INTO `audit_log` VALUES (137, 'GET', '/users/1', 200, 'lhy', '2019-12-08 19:21:06', '2019-12-08 19:21:23');
INSERT INTO `audit_log` VALUES (138, 'GET', '/users/12', 200, 'lhy', '2019-12-08 19:23:35', '2019-12-08 19:23:43');
INSERT INTO `audit_log` VALUES (139, 'GET', '/error', 500, 'lhy', '2019-12-08 19:23:43', '2019-12-08 19:23:43');
INSERT INTO `audit_log` VALUES (140, 'GET', '/users/12', 500, 'lhy', '2019-12-08 19:46:34', '2019-12-08 19:46:38');
INSERT INTO `audit_log` VALUES (141, 'GET', '/users/12', 500, 'lhy', '2019-12-08 20:50:41', '2019-12-08 20:50:41');
INSERT INTO `audit_log` VALUES (142, 'GET', '/users/1', 200, 'lhy', '2019-12-08 20:50:51', '2019-12-08 20:50:51');
INSERT INTO `audit_log` VALUES (143, 'GET', '/users/1', 200, 'lhy', '2019-12-08 20:51:01', '2019-12-08 20:51:01');
INSERT INTO `audit_log` VALUES (144, 'GET', '/users/1', 200, 'lhy', '2019-12-08 20:52:34', '2019-12-08 20:52:34');
INSERT INTO `audit_log` VALUES (145, 'POST', '/users', 401, NULL, '2019-12-08 20:56:29', '2019-12-08 20:56:29');
INSERT INTO `audit_log` VALUES (146, 'POST', '/users', 401, NULL, '2019-12-08 20:58:52', '2019-12-08 20:58:52');
INSERT INTO `audit_log` VALUES (147, 'POST', '/users', 403, 'lhy', '2019-12-08 20:59:12', '2019-12-08 20:59:12');
INSERT INTO `audit_log` VALUES (148, 'GET', '/users/login', 200, NULL, '2019-12-15 11:22:35', '2019-12-15 11:22:37');
INSERT INTO `audit_log` VALUES (149, 'GET', '/users/login', 200, NULL, '2019-12-15 11:22:41', '2019-12-15 11:22:41');
INSERT INTO `audit_log` VALUES (150, 'GET', '/users/login', 200, NULL, '2019-12-15 11:23:24', '2019-12-15 11:23:24');
INSERT INTO `audit_log` VALUES (151, 'GET', '/users/login', 200, NULL, '2019-12-15 11:50:24', '2019-12-15 11:50:25');
INSERT INTO `audit_log` VALUES (152, 'POST', '/orders', 401, NULL, '2019-12-15 16:14:56', '2019-12-15 16:14:56');
INSERT INTO `audit_log` VALUES (153, 'POST', '/token/oauth/token', NULL, NULL, '2019-12-30 22:53:35', NULL);
INSERT INTO `audit_log` VALUES (154, 'POST', '/order/orders', 401, NULL, '2019-12-30 22:55:29', '2019-12-30 22:55:30');
INSERT INTO `audit_log` VALUES (155, 'POST', '/order/orders', 401, NULL, '2019-12-30 22:56:17', '2019-12-30 22:56:17');
INSERT INTO `audit_log` VALUES (156, 'POST', '/order/orders', 401, NULL, '2019-12-30 22:56:36', '2019-12-30 22:56:36');
INSERT INTO `audit_log` VALUES (157, 'POST', '/order/orders', 401, NULL, '2019-12-30 22:58:36', '2019-12-30 22:58:36');
INSERT INTO `audit_log` VALUES (158, 'POST', '/order/orders', 401, NULL, '2019-12-30 22:59:03', '2019-12-30 22:59:03');
INSERT INTO `audit_log` VALUES (159, 'POST', '/token/oauth/token', NULL, NULL, '2019-12-30 22:59:15', NULL);
INSERT INTO `audit_log` VALUES (160, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:00:13', '2019-12-30 23:00:13');
INSERT INTO `audit_log` VALUES (161, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:03:19', '2019-12-30 23:03:19');
INSERT INTO `audit_log` VALUES (162, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:03:22', '2019-12-30 23:03:22');
INSERT INTO `audit_log` VALUES (163, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:03:23', '2019-12-30 23:03:23');
INSERT INTO `audit_log` VALUES (164, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:03:24', '2019-12-30 23:03:24');
INSERT INTO `audit_log` VALUES (165, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:03:25', '2019-12-30 23:03:25');
INSERT INTO `audit_log` VALUES (166, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:08:07', '2019-12-30 23:08:07');
INSERT INTO `audit_log` VALUES (167, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:08:35', '2019-12-30 23:08:35');
INSERT INTO `audit_log` VALUES (168, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:08:45', '2019-12-30 23:08:45');
INSERT INTO `audit_log` VALUES (169, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:09:44', '2019-12-30 23:10:03');
INSERT INTO `audit_log` VALUES (170, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:10:26', '2019-12-30 23:10:54');
INSERT INTO `audit_log` VALUES (171, 'POST', '/token/oauth/token', NULL, NULL, '2019-12-30 23:11:08', NULL);
INSERT INTO `audit_log` VALUES (172, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:12:07', '2019-12-30 23:12:07');
INSERT INTO `audit_log` VALUES (173, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:12:58', '2019-12-30 23:12:58');
INSERT INTO `audit_log` VALUES (174, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:15:55', '2019-12-30 23:15:55');
INSERT INTO `audit_log` VALUES (175, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:22:01', '2019-12-30 23:22:01');
INSERT INTO `audit_log` VALUES (176, 'POST', '/order/orders', 401, NULL, '2019-12-30 23:23:20', '2019-12-30 23:23:20');
INSERT INTO `audit_log` VALUES (177, 'POST', '/order/orders', NULL, 'lhy', '2019-12-30 23:24:54', NULL);
INSERT INTO `audit_log` VALUES (178, 'POST', '/token/oauth/token', NULL, NULL, '2019-12-30 23:41:51', NULL);
INSERT INTO `audit_log` VALUES (179, 'POST', '/order/orders', NULL, 'lhy', '2019-12-30 23:42:04', NULL);
INSERT INTO `audit_log` VALUES (180, 'POST', '/token/oauth/token', NULL, NULL, '2019-12-31 23:09:19', NULL);
INSERT INTO `audit_log` VALUES (181, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:37', NULL);
INSERT INTO `audit_log` VALUES (182, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:39', NULL);
INSERT INTO `audit_log` VALUES (183, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:41', NULL);
INSERT INTO `audit_log` VALUES (184, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:43', NULL);
INSERT INTO `audit_log` VALUES (185, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:45', NULL);
INSERT INTO `audit_log` VALUES (186, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:46', NULL);
INSERT INTO `audit_log` VALUES (187, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:46', NULL);
INSERT INTO `audit_log` VALUES (188, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:47', NULL);
INSERT INTO `audit_log` VALUES (189, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:47', NULL);
INSERT INTO `audit_log` VALUES (190, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:48', NULL);
INSERT INTO `audit_log` VALUES (191, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:49', NULL);
INSERT INTO `audit_log` VALUES (192, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:09:50', NULL);
INSERT INTO `audit_log` VALUES (193, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:01', NULL);
INSERT INTO `audit_log` VALUES (194, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:01', NULL);
INSERT INTO `audit_log` VALUES (195, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:02', NULL);
INSERT INTO `audit_log` VALUES (196, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:03', NULL);
INSERT INTO `audit_log` VALUES (197, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:03', NULL);
INSERT INTO `audit_log` VALUES (198, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:04', NULL);
INSERT INTO `audit_log` VALUES (199, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:04', NULL);
INSERT INTO `audit_log` VALUES (200, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:05', NULL);
INSERT INTO `audit_log` VALUES (201, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:05', NULL);
INSERT INTO `audit_log` VALUES (202, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:06', NULL);
INSERT INTO `audit_log` VALUES (203, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:06', NULL);
INSERT INTO `audit_log` VALUES (204, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:07', NULL);
INSERT INTO `audit_log` VALUES (205, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:08', NULL);
INSERT INTO `audit_log` VALUES (206, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:09', NULL);
INSERT INTO `audit_log` VALUES (207, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:09', NULL);
INSERT INTO `audit_log` VALUES (208, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:10', NULL);
INSERT INTO `audit_log` VALUES (209, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:10', NULL);
INSERT INTO `audit_log` VALUES (210, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:11', NULL);
INSERT INTO `audit_log` VALUES (211, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:11', NULL);
INSERT INTO `audit_log` VALUES (212, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:12', NULL);
INSERT INTO `audit_log` VALUES (213, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:13', NULL);
INSERT INTO `audit_log` VALUES (214, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:13', NULL);
INSERT INTO `audit_log` VALUES (215, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:15', NULL);
INSERT INTO `audit_log` VALUES (216, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:15', NULL);
INSERT INTO `audit_log` VALUES (217, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:16', NULL);
INSERT INTO `audit_log` VALUES (218, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:16', NULL);
INSERT INTO `audit_log` VALUES (219, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:18', NULL);
INSERT INTO `audit_log` VALUES (220, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:19', NULL);
INSERT INTO `audit_log` VALUES (221, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:20', NULL);
INSERT INTO `audit_log` VALUES (222, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:20', NULL);
INSERT INTO `audit_log` VALUES (223, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:21', NULL);
INSERT INTO `audit_log` VALUES (224, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:21', NULL);
INSERT INTO `audit_log` VALUES (225, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:22', NULL);
INSERT INTO `audit_log` VALUES (226, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:53', NULL);
INSERT INTO `audit_log` VALUES (227, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:53', NULL);
INSERT INTO `audit_log` VALUES (228, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:54', NULL);
INSERT INTO `audit_log` VALUES (229, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:55', NULL);
INSERT INTO `audit_log` VALUES (230, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:55', NULL);
INSERT INTO `audit_log` VALUES (231, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:56', NULL);
INSERT INTO `audit_log` VALUES (232, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:56', NULL);
INSERT INTO `audit_log` VALUES (233, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:57', NULL);
INSERT INTO `audit_log` VALUES (234, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:57', NULL);
INSERT INTO `audit_log` VALUES (235, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:58', NULL);
INSERT INTO `audit_log` VALUES (236, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:58', NULL);
INSERT INTO `audit_log` VALUES (237, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:59', NULL);
INSERT INTO `audit_log` VALUES (238, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:10:59', NULL);
INSERT INTO `audit_log` VALUES (239, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:12:06', NULL);
INSERT INTO `audit_log` VALUES (240, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:12:07', NULL);
INSERT INTO `audit_log` VALUES (241, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:12:07', NULL);
INSERT INTO `audit_log` VALUES (242, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:12:08', NULL);
INSERT INTO `audit_log` VALUES (243, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:12:08', NULL);
INSERT INTO `audit_log` VALUES (244, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:12:09', NULL);
INSERT INTO `audit_log` VALUES (245, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:12:10', NULL);
INSERT INTO `audit_log` VALUES (246, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:12:10', NULL);
INSERT INTO `audit_log` VALUES (247, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:13:44', NULL);
INSERT INTO `audit_log` VALUES (248, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:13:45', NULL);
INSERT INTO `audit_log` VALUES (249, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:13:46', NULL);
INSERT INTO `audit_log` VALUES (250, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:13:47', NULL);
INSERT INTO `audit_log` VALUES (251, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:13:47', NULL);
INSERT INTO `audit_log` VALUES (252, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:13:48', NULL);
INSERT INTO `audit_log` VALUES (253, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:13:49', NULL);
INSERT INTO `audit_log` VALUES (254, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:13:49', NULL);
INSERT INTO `audit_log` VALUES (255, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:13:50', NULL);
INSERT INTO `audit_log` VALUES (256, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:23', NULL);
INSERT INTO `audit_log` VALUES (257, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:25', NULL);
INSERT INTO `audit_log` VALUES (258, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:26', NULL);
INSERT INTO `audit_log` VALUES (259, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:26', NULL);
INSERT INTO `audit_log` VALUES (260, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:27', NULL);
INSERT INTO `audit_log` VALUES (261, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:28', NULL);
INSERT INTO `audit_log` VALUES (262, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:29', NULL);
INSERT INTO `audit_log` VALUES (263, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:29', NULL);
INSERT INTO `audit_log` VALUES (264, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:30', NULL);
INSERT INTO `audit_log` VALUES (265, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:30', NULL);
INSERT INTO `audit_log` VALUES (266, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:31', NULL);
INSERT INTO `audit_log` VALUES (267, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:35', NULL);
INSERT INTO `audit_log` VALUES (268, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:36', NULL);
INSERT INTO `audit_log` VALUES (269, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:36', NULL);
INSERT INTO `audit_log` VALUES (270, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:37', NULL);
INSERT INTO `audit_log` VALUES (271, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:38', NULL);
INSERT INTO `audit_log` VALUES (272, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:38', NULL);
INSERT INTO `audit_log` VALUES (273, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:39', NULL);
INSERT INTO `audit_log` VALUES (274, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:15:39', NULL);
INSERT INTO `audit_log` VALUES (275, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:22:51', NULL);
INSERT INTO `audit_log` VALUES (276, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:23:15', NULL);
INSERT INTO `audit_log` VALUES (277, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:23:18', NULL);
INSERT INTO `audit_log` VALUES (278, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:23:18', NULL);
INSERT INTO `audit_log` VALUES (279, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:23:19', NULL);
INSERT INTO `audit_log` VALUES (280, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:04', NULL);
INSERT INTO `audit_log` VALUES (281, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:05', NULL);
INSERT INTO `audit_log` VALUES (282, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:06', NULL);
INSERT INTO `audit_log` VALUES (283, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:07', NULL);
INSERT INTO `audit_log` VALUES (284, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:07', NULL);
INSERT INTO `audit_log` VALUES (285, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:08', NULL);
INSERT INTO `audit_log` VALUES (286, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:08', NULL);
INSERT INTO `audit_log` VALUES (287, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:09', NULL);
INSERT INTO `audit_log` VALUES (288, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:10', NULL);
INSERT INTO `audit_log` VALUES (289, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:11', NULL);
INSERT INTO `audit_log` VALUES (290, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:12', NULL);
INSERT INTO `audit_log` VALUES (291, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:12', NULL);
INSERT INTO `audit_log` VALUES (292, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:13', NULL);
INSERT INTO `audit_log` VALUES (293, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:13', NULL);
INSERT INTO `audit_log` VALUES (294, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:14', NULL);
INSERT INTO `audit_log` VALUES (295, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:15', NULL);
INSERT INTO `audit_log` VALUES (296, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:15', NULL);
INSERT INTO `audit_log` VALUES (297, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:16', NULL);
INSERT INTO `audit_log` VALUES (298, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:17', NULL);
INSERT INTO `audit_log` VALUES (299, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:17', NULL);
INSERT INTO `audit_log` VALUES (300, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:18', NULL);
INSERT INTO `audit_log` VALUES (301, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:18', NULL);
INSERT INTO `audit_log` VALUES (302, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:19', NULL);
INSERT INTO `audit_log` VALUES (303, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:20', NULL);
INSERT INTO `audit_log` VALUES (304, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:20', NULL);
INSERT INTO `audit_log` VALUES (305, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:21', NULL);
INSERT INTO `audit_log` VALUES (306, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:21', NULL);
INSERT INTO `audit_log` VALUES (307, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:22', NULL);
INSERT INTO `audit_log` VALUES (308, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:22', NULL);
INSERT INTO `audit_log` VALUES (309, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:23', NULL);
INSERT INTO `audit_log` VALUES (310, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:24', NULL);
INSERT INTO `audit_log` VALUES (311, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:25', NULL);
INSERT INTO `audit_log` VALUES (312, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:25', NULL);
INSERT INTO `audit_log` VALUES (313, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:26', NULL);
INSERT INTO `audit_log` VALUES (314, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:27', NULL);
INSERT INTO `audit_log` VALUES (315, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:27', NULL);
INSERT INTO `audit_log` VALUES (316, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:28', NULL);
INSERT INTO `audit_log` VALUES (317, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:29', NULL);
INSERT INTO `audit_log` VALUES (318, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:29', NULL);
INSERT INTO `audit_log` VALUES (319, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:30', NULL);
INSERT INTO `audit_log` VALUES (320, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:31', NULL);
INSERT INTO `audit_log` VALUES (321, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:31', NULL);
INSERT INTO `audit_log` VALUES (322, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:32', NULL);
INSERT INTO `audit_log` VALUES (323, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:32', NULL);
INSERT INTO `audit_log` VALUES (324, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:33', NULL);
INSERT INTO `audit_log` VALUES (325, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:57', NULL);
INSERT INTO `audit_log` VALUES (326, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:57', NULL);
INSERT INTO `audit_log` VALUES (327, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:58', NULL);
INSERT INTO `audit_log` VALUES (328, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:24:58', NULL);
INSERT INTO `audit_log` VALUES (329, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:32', NULL);
INSERT INTO `audit_log` VALUES (330, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:33', NULL);
INSERT INTO `audit_log` VALUES (331, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:34', NULL);
INSERT INTO `audit_log` VALUES (332, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:34', NULL);
INSERT INTO `audit_log` VALUES (333, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:35', NULL);
INSERT INTO `audit_log` VALUES (334, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:36', NULL);
INSERT INTO `audit_log` VALUES (335, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:36', NULL);
INSERT INTO `audit_log` VALUES (336, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:37', NULL);
INSERT INTO `audit_log` VALUES (337, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:38', NULL);
INSERT INTO `audit_log` VALUES (338, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:38', NULL);
INSERT INTO `audit_log` VALUES (339, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:39', NULL);
INSERT INTO `audit_log` VALUES (340, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:40', NULL);
INSERT INTO `audit_log` VALUES (341, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:40', NULL);
INSERT INTO `audit_log` VALUES (342, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:41', NULL);
INSERT INTO `audit_log` VALUES (343, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:42', NULL);
INSERT INTO `audit_log` VALUES (344, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:42', NULL);
INSERT INTO `audit_log` VALUES (345, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:43', NULL);
INSERT INTO `audit_log` VALUES (346, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:44', NULL);
INSERT INTO `audit_log` VALUES (347, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:45', NULL);
INSERT INTO `audit_log` VALUES (348, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:46', NULL);
INSERT INTO `audit_log` VALUES (349, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:47', NULL);
INSERT INTO `audit_log` VALUES (350, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:48', NULL);
INSERT INTO `audit_log` VALUES (351, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:48', NULL);
INSERT INTO `audit_log` VALUES (352, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:49', NULL);
INSERT INTO `audit_log` VALUES (353, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:50', NULL);
INSERT INTO `audit_log` VALUES (354, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:51', NULL);
INSERT INTO `audit_log` VALUES (355, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:51', NULL);
INSERT INTO `audit_log` VALUES (356, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:52', NULL);
INSERT INTO `audit_log` VALUES (357, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:53', NULL);
INSERT INTO `audit_log` VALUES (358, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:54', NULL);
INSERT INTO `audit_log` VALUES (359, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:54', NULL);
INSERT INTO `audit_log` VALUES (360, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:55', NULL);
INSERT INTO `audit_log` VALUES (361, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:55', NULL);
INSERT INTO `audit_log` VALUES (362, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:56', NULL);
INSERT INTO `audit_log` VALUES (363, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:57', NULL);
INSERT INTO `audit_log` VALUES (364, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:58', NULL);
INSERT INTO `audit_log` VALUES (365, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:58', NULL);
INSERT INTO `audit_log` VALUES (366, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:38:59', NULL);
INSERT INTO `audit_log` VALUES (367, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:00', NULL);
INSERT INTO `audit_log` VALUES (368, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:00', NULL);
INSERT INTO `audit_log` VALUES (369, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:01', NULL);
INSERT INTO `audit_log` VALUES (370, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:02', NULL);
INSERT INTO `audit_log` VALUES (371, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:02', NULL);
INSERT INTO `audit_log` VALUES (372, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:03', NULL);
INSERT INTO `audit_log` VALUES (373, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:42', NULL);
INSERT INTO `audit_log` VALUES (374, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:45', NULL);
INSERT INTO `audit_log` VALUES (375, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:46', NULL);
INSERT INTO `audit_log` VALUES (376, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:57', NULL);
INSERT INTO `audit_log` VALUES (377, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:58', NULL);
INSERT INTO `audit_log` VALUES (378, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:39:59', NULL);
INSERT INTO `audit_log` VALUES (379, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:40:01', NULL);
INSERT INTO `audit_log` VALUES (380, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:40:47', NULL);
INSERT INTO `audit_log` VALUES (381, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:52:29', NULL);
INSERT INTO `audit_log` VALUES (382, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:52:31', NULL);
INSERT INTO `audit_log` VALUES (383, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:52:50', NULL);
INSERT INTO `audit_log` VALUES (384, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:52:51', NULL);
INSERT INTO `audit_log` VALUES (385, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:53:12', NULL);
INSERT INTO `audit_log` VALUES (386, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:53:13', NULL);
INSERT INTO `audit_log` VALUES (387, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:58:53', NULL);
INSERT INTO `audit_log` VALUES (388, 'POST', '/order/orders', NULL, 'lhy', '2019-12-31 23:58:55', NULL);
INSERT INTO `audit_log` VALUES (389, 'POST', '/order/orders', 401, NULL, '2020-01-01 00:22:56', '2020-01-01 00:22:56');
INSERT INTO `audit_log` VALUES (390, 'POST', '/order/orders', 401, NULL, '2020-01-01 00:22:57', '2020-01-01 00:22:57');
INSERT INTO `audit_log` VALUES (391, 'POST', '/order/orders', 401, NULL, '2020-01-01 00:54:39', '2020-01-01 00:54:39');
INSERT INTO `audit_log` VALUES (392, 'POST', '/order/orders', 401, NULL, '2020-01-01 00:54:40', '2020-01-01 00:54:40');
INSERT INTO `audit_log` VALUES (393, 'POST', '/order/orders', 401, NULL, '2020-01-01 00:55:26', '2020-01-01 00:55:26');
INSERT INTO `audit_log` VALUES (394, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 20:37:25', NULL);
INSERT INTO `audit_log` VALUES (395, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 20:41:05', NULL);
INSERT INTO `audit_log` VALUES (396, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 20:42:40', NULL);
INSERT INTO `audit_log` VALUES (397, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:06:25', NULL);
INSERT INTO `audit_log` VALUES (398, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:11:41', NULL);
INSERT INTO `audit_log` VALUES (399, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:14:10', NULL);
INSERT INTO `audit_log` VALUES (400, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:14:35', NULL);
INSERT INTO `audit_log` VALUES (401, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:14:46', NULL);
INSERT INTO `audit_log` VALUES (402, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:15:28', NULL);
INSERT INTO `audit_log` VALUES (403, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:15:34', NULL);
INSERT INTO `audit_log` VALUES (404, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:19:34', NULL);
INSERT INTO `audit_log` VALUES (405, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:20:33', NULL);
INSERT INTO `audit_log` VALUES (406, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:21:20', NULL);
INSERT INTO `audit_log` VALUES (407, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:21:59', NULL);
INSERT INTO `audit_log` VALUES (408, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:23:09', NULL);
INSERT INTO `audit_log` VALUES (409, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:24:22', NULL);
INSERT INTO `audit_log` VALUES (410, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:26:18', NULL);
INSERT INTO `audit_log` VALUES (411, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:28:32', NULL);
INSERT INTO `audit_log` VALUES (412, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:28:32', NULL);
INSERT INTO `audit_log` VALUES (413, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:28:49', NULL);
INSERT INTO `audit_log` VALUES (414, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:29:30', NULL);
INSERT INTO `audit_log` VALUES (415, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:29:59', NULL);
INSERT INTO `audit_log` VALUES (416, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:31:28', NULL);
INSERT INTO `audit_log` VALUES (417, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:31:32', NULL);
INSERT INTO `audit_log` VALUES (418, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:31:34', NULL);
INSERT INTO `audit_log` VALUES (419, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 21:50:49', NULL);
INSERT INTO `audit_log` VALUES (420, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 22:08:16', NULL);
INSERT INTO `audit_log` VALUES (421, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 22:10:09', NULL);
INSERT INTO `audit_log` VALUES (422, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 22:12:57', NULL);
INSERT INTO `audit_log` VALUES (423, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 22:14:20', NULL);
INSERT INTO `audit_log` VALUES (424, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 22:15:58', NULL);
INSERT INTO `audit_log` VALUES (425, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 22:23:20', NULL);
INSERT INTO `audit_log` VALUES (426, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 22:23:28', NULL);
INSERT INTO `audit_log` VALUES (427, 'GET', '/order/orders/1', 401, NULL, '2020-01-02 22:23:34', '2020-01-02 22:23:34');
INSERT INTO `audit_log` VALUES (428, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 23:00:38', NULL);
INSERT INTO `audit_log` VALUES (429, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:00:41', NULL);
INSERT INTO `audit_log` VALUES (430, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 23:03:18', NULL);
INSERT INTO `audit_log` VALUES (431, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 23:04:42', NULL);
INSERT INTO `audit_log` VALUES (432, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:04:44', NULL);
INSERT INTO `audit_log` VALUES (433, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 23:08:22', NULL);
INSERT INTO `audit_log` VALUES (434, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:08:24', NULL);
INSERT INTO `audit_log` VALUES (435, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 23:10:42', NULL);
INSERT INTO `audit_log` VALUES (436, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:10:45', NULL);
INSERT INTO `audit_log` VALUES (437, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:12:43', NULL);
INSERT INTO `audit_log` VALUES (438, 'GET', '/order/orders/1', 401, NULL, '2020-01-02 23:20:53', '2020-01-02 23:20:53');
INSERT INTO `audit_log` VALUES (439, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 23:21:10', NULL);
INSERT INTO `audit_log` VALUES (440, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:21:12', NULL);
INSERT INTO `audit_log` VALUES (441, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:21:13', NULL);
INSERT INTO `audit_log` VALUES (442, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:21:14', NULL);
INSERT INTO `audit_log` VALUES (443, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:21:15', NULL);
INSERT INTO `audit_log` VALUES (444, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:21:21', NULL);
INSERT INTO `audit_log` VALUES (445, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 23:31:17', NULL);
INSERT INTO `audit_log` VALUES (446, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:31:19', NULL);
INSERT INTO `audit_log` VALUES (447, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 23:32:05', NULL);
INSERT INTO `audit_log` VALUES (448, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:32:08', NULL);
INSERT INTO `audit_log` VALUES (449, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-02 23:35:03', NULL);
INSERT INTO `audit_log` VALUES (450, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-02 23:35:05', NULL);
INSERT INTO `audit_log` VALUES (451, 'GET', '/token/oauth/authorize', NULL, NULL, '2020-01-03 00:47:28', NULL);
INSERT INTO `audit_log` VALUES (452, 'GET', '/order/orders/1', 401, NULL, '2020-01-03 01:02:07', '2020-01-03 01:02:07');
INSERT INTO `audit_log` VALUES (453, 'GET', '/token/oauth/authorize', NULL, NULL, '2020-01-03 01:03:34', NULL);
INSERT INTO `audit_log` VALUES (454, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:05:12', NULL);
INSERT INTO `audit_log` VALUES (455, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:05:55', NULL);
INSERT INTO `audit_log` VALUES (456, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:06:06', NULL);
INSERT INTO `audit_log` VALUES (457, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:07:14', NULL);
INSERT INTO `audit_log` VALUES (458, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:09:03', NULL);
INSERT INTO `audit_log` VALUES (459, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-03 01:09:11', NULL);
INSERT INTO `audit_log` VALUES (460, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-03 01:09:13', NULL);
INSERT INTO `audit_log` VALUES (461, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-03 01:09:14', NULL);
INSERT INTO `audit_log` VALUES (462, 'GET', '/order/orders/1', NULL, 'lhy', '2020-01-03 01:09:15', NULL);
INSERT INTO `audit_log` VALUES (463, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:09:38', NULL);
INSERT INTO `audit_log` VALUES (464, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:10:29', NULL);
INSERT INTO `audit_log` VALUES (465, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:15:00', NULL);
INSERT INTO `audit_log` VALUES (466, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-03 01:15:03', NULL);
INSERT INTO `audit_log` VALUES (467, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:21:57', NULL);
INSERT INTO `audit_log` VALUES (468, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:26:22', NULL);
INSERT INTO `audit_log` VALUES (469, 'GET', '/order/orders/1', NULL, 'aaaaaa', '2020-01-03 01:27:31', NULL);
INSERT INTO `audit_log` VALUES (470, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-03 01:28:36', NULL);
INSERT INTO `audit_log` VALUES (471, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 11:29:38', NULL);
INSERT INTO `audit_log` VALUES (472, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 16:42:49', NULL);
INSERT INTO `audit_log` VALUES (473, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 16:43:48', NULL);
INSERT INTO `audit_log` VALUES (474, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 21:27:47', NULL);
INSERT INTO `audit_log` VALUES (475, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 21:28:31', NULL);
INSERT INTO `audit_log` VALUES (476, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 21:28:47', NULL);
INSERT INTO `audit_log` VALUES (477, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 21:33:00', NULL);
INSERT INTO `audit_log` VALUES (478, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 21:34:44', NULL);
INSERT INTO `audit_log` VALUES (479, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 21:37:57', NULL);
INSERT INTO `audit_log` VALUES (480, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 21:38:07', NULL);
INSERT INTO `audit_log` VALUES (481, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 21:38:24', NULL);
INSERT INTO `audit_log` VALUES (482, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 21:38:41', NULL);
INSERT INTO `audit_log` VALUES (483, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 22:24:20', NULL);
INSERT INTO `audit_log` VALUES (484, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 22:24:35', NULL);
INSERT INTO `audit_log` VALUES (485, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 22:27:45', NULL);
INSERT INTO `audit_log` VALUES (486, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 22:37:48', NULL);
INSERT INTO `audit_log` VALUES (487, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 22:37:58', NULL);
INSERT INTO `audit_log` VALUES (488, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 22:38:06', NULL);
INSERT INTO `audit_log` VALUES (489, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 22:38:08', NULL);
INSERT INTO `audit_log` VALUES (490, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 22:41:14', NULL);
INSERT INTO `audit_log` VALUES (491, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 22:41:17', NULL);
INSERT INTO `audit_log` VALUES (492, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 22:41:24', NULL);
INSERT INTO `audit_log` VALUES (493, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 22:51:51', NULL);
INSERT INTO `audit_log` VALUES (494, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 22:52:07', NULL);
INSERT INTO `audit_log` VALUES (495, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 23:21:55', NULL);
INSERT INTO `audit_log` VALUES (496, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 23:22:00', NULL);
INSERT INTO `audit_log` VALUES (497, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 23:22:02', NULL);
INSERT INTO `audit_log` VALUES (498, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 23:22:03', NULL);
INSERT INTO `audit_log` VALUES (499, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 23:22:04', NULL);
INSERT INTO `audit_log` VALUES (500, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 23:22:05', NULL);
INSERT INTO `audit_log` VALUES (501, 'GET', '/order/orders/1', 401, NULL, '2020-01-05 23:22:07', '2020-01-05 23:22:07');
INSERT INTO `audit_log` VALUES (502, 'GET', '/order/orders/1', 401, NULL, '2020-01-05 23:22:10', '2020-01-05 23:22:10');
INSERT INTO `audit_log` VALUES (503, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-05 23:28:18', NULL);
INSERT INTO `audit_log` VALUES (504, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 23:28:20', NULL);
INSERT INTO `audit_log` VALUES (505, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 23:28:21', NULL);
INSERT INTO `audit_log` VALUES (506, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 23:28:22', NULL);
INSERT INTO `audit_log` VALUES (507, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-05 23:28:28', NULL);
INSERT INTO `audit_log` VALUES (508, 'GET', '/order/orders/1', 401, NULL, '2020-01-05 23:28:34', '2020-01-05 23:28:34');
INSERT INTO `audit_log` VALUES (509, 'GET', '/order/orders/1', 401, NULL, '2020-01-05 23:32:04', '2020-01-05 23:32:04');
INSERT INTO `audit_log` VALUES (510, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:03:31', NULL);
INSERT INTO `audit_log` VALUES (511, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:03:34', NULL);
INSERT INTO `audit_log` VALUES (512, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:03:41', NULL);
INSERT INTO `audit_log` VALUES (513, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:03:46', NULL);
INSERT INTO `audit_log` VALUES (514, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:03:49', NULL);
INSERT INTO `audit_log` VALUES (515, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:03:49', NULL);
INSERT INTO `audit_log` VALUES (516, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:03:50', NULL);
INSERT INTO `audit_log` VALUES (517, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:03:53', NULL);
INSERT INTO `audit_log` VALUES (518, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:03:54', NULL);
INSERT INTO `audit_log` VALUES (519, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:04:09', NULL);
INSERT INTO `audit_log` VALUES (520, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:09', NULL);
INSERT INTO `audit_log` VALUES (521, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:13', NULL);
INSERT INTO `audit_log` VALUES (522, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:04:16', NULL);
INSERT INTO `audit_log` VALUES (523, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:17', NULL);
INSERT INTO `audit_log` VALUES (524, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:19', NULL);
INSERT INTO `audit_log` VALUES (525, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:04:24', NULL);
INSERT INTO `audit_log` VALUES (526, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:25', NULL);
INSERT INTO `audit_log` VALUES (527, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:28', NULL);
INSERT INTO `audit_log` VALUES (528, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:30', NULL);
INSERT INTO `audit_log` VALUES (529, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:04:33', NULL);
INSERT INTO `audit_log` VALUES (530, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:33', NULL);
INSERT INTO `audit_log` VALUES (531, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:34', NULL);
INSERT INTO `audit_log` VALUES (532, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:35', NULL);
INSERT INTO `audit_log` VALUES (533, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:36', NULL);
INSERT INTO `audit_log` VALUES (534, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:37', NULL);
INSERT INTO `audit_log` VALUES (535, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:38', NULL);
INSERT INTO `audit_log` VALUES (536, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:04:39', NULL);
INSERT INTO `audit_log` VALUES (537, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:40', NULL);
INSERT INTO `audit_log` VALUES (538, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:40', NULL);
INSERT INTO `audit_log` VALUES (539, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:42', NULL);
INSERT INTO `audit_log` VALUES (540, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:43', NULL);
INSERT INTO `audit_log` VALUES (541, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:44', NULL);
INSERT INTO `audit_log` VALUES (542, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:44', NULL);
INSERT INTO `audit_log` VALUES (543, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:45', NULL);
INSERT INTO `audit_log` VALUES (544, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:04:46', NULL);
INSERT INTO `audit_log` VALUES (545, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:46', NULL);
INSERT INTO `audit_log` VALUES (546, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:47', NULL);
INSERT INTO `audit_log` VALUES (547, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:48', NULL);
INSERT INTO `audit_log` VALUES (548, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:04:48', NULL);
INSERT INTO `audit_log` VALUES (549, 'GET', '/order/orders/1', 401, NULL, '2020-01-06 00:05:43', '2020-01-06 00:05:43');
INSERT INTO `audit_log` VALUES (550, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:05:46', NULL);
INSERT INTO `audit_log` VALUES (551, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:05:48', NULL);
INSERT INTO `audit_log` VALUES (552, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:05:50', NULL);
INSERT INTO `audit_log` VALUES (553, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:05:52', NULL);
INSERT INTO `audit_log` VALUES (554, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:05:56', NULL);
INSERT INTO `audit_log` VALUES (555, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:05:56', NULL);
INSERT INTO `audit_log` VALUES (556, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:05:59', NULL);
INSERT INTO `audit_log` VALUES (557, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:06:00', NULL);
INSERT INTO `audit_log` VALUES (558, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:06:01', NULL);
INSERT INTO `audit_log` VALUES (559, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:06:03', NULL);
INSERT INTO `audit_log` VALUES (560, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:06:03', NULL);
INSERT INTO `audit_log` VALUES (561, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:06:04', NULL);
INSERT INTO `audit_log` VALUES (562, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:06:05', NULL);
INSERT INTO `audit_log` VALUES (563, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:06:07', NULL);
INSERT INTO `audit_log` VALUES (564, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:06:08', NULL);
INSERT INTO `audit_log` VALUES (565, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-06 00:06:10', NULL);
INSERT INTO `audit_log` VALUES (566, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-06 00:06:10', NULL);
INSERT INTO `audit_log` VALUES (567, 'GET', '/order/orders/1', 401, NULL, '2020-01-07 22:06:07', '2020-01-07 22:06:07');
INSERT INTO `audit_log` VALUES (568, 'GET', '/order/orders/1', 401, NULL, '2020-01-07 22:06:07', '2020-01-07 22:06:07');
INSERT INTO `audit_log` VALUES (569, 'GET', '/order/orders/1', 401, NULL, '2020-01-07 22:08:02', '2020-01-07 22:08:02');
INSERT INTO `audit_log` VALUES (570, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:38:34', NULL);
INSERT INTO `audit_log` VALUES (571, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:39:03', NULL);
INSERT INTO `audit_log` VALUES (572, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:39:07', NULL);
INSERT INTO `audit_log` VALUES (573, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:39:10', NULL);
INSERT INTO `audit_log` VALUES (574, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:39:11', NULL);
INSERT INTO `audit_log` VALUES (575, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:39:12', NULL);
INSERT INTO `audit_log` VALUES (576, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:40:33', NULL);
INSERT INTO `audit_log` VALUES (577, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:40:36', NULL);
INSERT INTO `audit_log` VALUES (578, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:40:38', NULL);
INSERT INTO `audit_log` VALUES (579, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:40:40', NULL);
INSERT INTO `audit_log` VALUES (580, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:40:41', NULL);
INSERT INTO `audit_log` VALUES (581, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:40:44', NULL);
INSERT INTO `audit_log` VALUES (582, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:41:00', NULL);
INSERT INTO `audit_log` VALUES (583, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:46:21', NULL);
INSERT INTO `audit_log` VALUES (584, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:46:40', NULL);
INSERT INTO `audit_log` VALUES (585, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:46:41', NULL);
INSERT INTO `audit_log` VALUES (586, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:46:47', NULL);
INSERT INTO `audit_log` VALUES (587, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:49:57', NULL);
INSERT INTO `audit_log` VALUES (588, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:00', NULL);
INSERT INTO `audit_log` VALUES (589, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:02', NULL);
INSERT INTO `audit_log` VALUES (590, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:50:04', NULL);
INSERT INTO `audit_log` VALUES (591, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:04', NULL);
INSERT INTO `audit_log` VALUES (592, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:05', NULL);
INSERT INTO `audit_log` VALUES (593, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:06', NULL);
INSERT INTO `audit_log` VALUES (594, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:07', NULL);
INSERT INTO `audit_log` VALUES (595, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:09', NULL);
INSERT INTO `audit_log` VALUES (596, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:10', NULL);
INSERT INTO `audit_log` VALUES (597, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:50:11', NULL);
INSERT INTO `audit_log` VALUES (598, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:11', NULL);
INSERT INTO `audit_log` VALUES (599, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:13', NULL);
INSERT INTO `audit_log` VALUES (600, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:15', NULL);
INSERT INTO `audit_log` VALUES (601, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:50:16', NULL);
INSERT INTO `audit_log` VALUES (602, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:50:17', NULL);
INSERT INTO `audit_log` VALUES (603, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:59:15', NULL);
INSERT INTO `audit_log` VALUES (604, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:17', NULL);
INSERT INTO `audit_log` VALUES (605, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:19', NULL);
INSERT INTO `audit_log` VALUES (606, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:20', NULL);
INSERT INTO `audit_log` VALUES (607, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:59:22', NULL);
INSERT INTO `audit_log` VALUES (608, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:22', NULL);
INSERT INTO `audit_log` VALUES (609, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:23', NULL);
INSERT INTO `audit_log` VALUES (610, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:25', NULL);
INSERT INTO `audit_log` VALUES (611, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:26', NULL);
INSERT INTO `audit_log` VALUES (612, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:27', NULL);
INSERT INTO `audit_log` VALUES (613, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:28', NULL);
INSERT INTO `audit_log` VALUES (614, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:59:28', NULL);
INSERT INTO `audit_log` VALUES (615, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:29', NULL);
INSERT INTO `audit_log` VALUES (616, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:29', NULL);
INSERT INTO `audit_log` VALUES (617, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:30', NULL);
INSERT INTO `audit_log` VALUES (618, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:31', NULL);
INSERT INTO `audit_log` VALUES (619, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:32', NULL);
INSERT INTO `audit_log` VALUES (620, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:33', NULL);
INSERT INTO `audit_log` VALUES (621, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:34', NULL);
INSERT INTO `audit_log` VALUES (622, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:34', NULL);
INSERT INTO `audit_log` VALUES (623, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 22:59:35', NULL);
INSERT INTO `audit_log` VALUES (624, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:59:35', NULL);
INSERT INTO `audit_log` VALUES (625, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 22:59:48', NULL);
INSERT INTO `audit_log` VALUES (626, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 23:00:47', NULL);
INSERT INTO `audit_log` VALUES (627, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 23:00:49', NULL);
INSERT INTO `audit_log` VALUES (628, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 23:00:51', NULL);
INSERT INTO `audit_log` VALUES (629, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 23:00:53', NULL);
INSERT INTO `audit_log` VALUES (630, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 23:00:55', NULL);
INSERT INTO `audit_log` VALUES (631, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 23:00:56', NULL);
INSERT INTO `audit_log` VALUES (632, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 23:00:59', NULL);
INSERT INTO `audit_log` VALUES (633, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 23:01:03', NULL);
INSERT INTO `audit_log` VALUES (634, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 23:01:04', NULL);
INSERT INTO `audit_log` VALUES (635, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 23:01:05', NULL);
INSERT INTO `audit_log` VALUES (636, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-07 23:01:09', NULL);
INSERT INTO `audit_log` VALUES (637, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-07 23:01:11', NULL);
INSERT INTO `audit_log` VALUES (638, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:20:17', NULL);
INSERT INTO `audit_log` VALUES (639, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:20:24', NULL);
INSERT INTO `audit_log` VALUES (640, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:20:26', NULL);
INSERT INTO `audit_log` VALUES (641, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:20:27', NULL);
INSERT INTO `audit_log` VALUES (642, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:20:30', NULL);
INSERT INTO `audit_log` VALUES (643, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:20:31', NULL);
INSERT INTO `audit_log` VALUES (644, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:20:32', NULL);
INSERT INTO `audit_log` VALUES (645, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:20:33', NULL);
INSERT INTO `audit_log` VALUES (646, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:20:45', NULL);
INSERT INTO `audit_log` VALUES (647, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:23:45', NULL);
INSERT INTO `audit_log` VALUES (648, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:23:51', NULL);
INSERT INTO `audit_log` VALUES (649, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:23:53', NULL);
INSERT INTO `audit_log` VALUES (650, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:23:54', NULL);
INSERT INTO `audit_log` VALUES (651, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:23:55', NULL);
INSERT INTO `audit_log` VALUES (652, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:23:57', NULL);
INSERT INTO `audit_log` VALUES (653, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:23:58', NULL);
INSERT INTO `audit_log` VALUES (654, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:23:59', NULL);
INSERT INTO `audit_log` VALUES (655, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:24:00', NULL);
INSERT INTO `audit_log` VALUES (656, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:24:01', NULL);
INSERT INTO `audit_log` VALUES (657, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:24:02', NULL);
INSERT INTO `audit_log` VALUES (658, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:24:03', NULL);
INSERT INTO `audit_log` VALUES (659, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:24:04', NULL);
INSERT INTO `audit_log` VALUES (660, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:24:05', NULL);
INSERT INTO `audit_log` VALUES (661, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:24:12', NULL);
INSERT INTO `audit_log` VALUES (662, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:25:11', NULL);
INSERT INTO `audit_log` VALUES (663, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:25:28', NULL);
INSERT INTO `audit_log` VALUES (664, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:25:28', NULL);
INSERT INTO `audit_log` VALUES (665, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:25:29', NULL);
INSERT INTO `audit_log` VALUES (666, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:25:30', NULL);
INSERT INTO `audit_log` VALUES (667, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:25:34', NULL);
INSERT INTO `audit_log` VALUES (668, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:25:35', NULL);
INSERT INTO `audit_log` VALUES (669, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:25:39', NULL);
INSERT INTO `audit_log` VALUES (670, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:26:35', NULL);
INSERT INTO `audit_log` VALUES (671, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:38', NULL);
INSERT INTO `audit_log` VALUES (672, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:26:42', NULL);
INSERT INTO `audit_log` VALUES (673, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:43', NULL);
INSERT INTO `audit_log` VALUES (674, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:43', NULL);
INSERT INTO `audit_log` VALUES (675, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:44', NULL);
INSERT INTO `audit_log` VALUES (676, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:45', NULL);
INSERT INTO `audit_log` VALUES (677, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:46', NULL);
INSERT INTO `audit_log` VALUES (678, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:47', NULL);
INSERT INTO `audit_log` VALUES (679, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:48', NULL);
INSERT INTO `audit_log` VALUES (680, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:26:51', NULL);
INSERT INTO `audit_log` VALUES (681, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:51', NULL);
INSERT INTO `audit_log` VALUES (682, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:53', NULL);
INSERT INTO `audit_log` VALUES (683, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:54', NULL);
INSERT INTO `audit_log` VALUES (684, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:55', NULL);
INSERT INTO `audit_log` VALUES (685, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:55', NULL);
INSERT INTO `audit_log` VALUES (686, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:56', NULL);
INSERT INTO `audit_log` VALUES (687, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:26:57', NULL);
INSERT INTO `audit_log` VALUES (688, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:27:02', NULL);
INSERT INTO `audit_log` VALUES (689, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:29:41', NULL);
INSERT INTO `audit_log` VALUES (690, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:29:43', NULL);
INSERT INTO `audit_log` VALUES (691, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:29:45', NULL);
INSERT INTO `audit_log` VALUES (692, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:29:47', NULL);
INSERT INTO `audit_log` VALUES (693, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:29:48', NULL);
INSERT INTO `audit_log` VALUES (694, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:29:48', NULL);
INSERT INTO `audit_log` VALUES (695, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:29:48', NULL);
INSERT INTO `audit_log` VALUES (696, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:29:56', NULL);
INSERT INTO `audit_log` VALUES (697, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:29:56', NULL);
INSERT INTO `audit_log` VALUES (698, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:29:58', NULL);
INSERT INTO `audit_log` VALUES (699, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:29:59', NULL);
INSERT INTO `audit_log` VALUES (700, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:30:00', NULL);
INSERT INTO `audit_log` VALUES (701, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:30:00', NULL);
INSERT INTO `audit_log` VALUES (702, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:30:02', NULL);
INSERT INTO `audit_log` VALUES (703, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:30:03', NULL);
INSERT INTO `audit_log` VALUES (704, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:38:51', NULL);
INSERT INTO `audit_log` VALUES (705, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:38:53', NULL);
INSERT INTO `audit_log` VALUES (706, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:39:03', NULL);
INSERT INTO `audit_log` VALUES (707, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:39:04', NULL);
INSERT INTO `audit_log` VALUES (708, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:39:13', NULL);
INSERT INTO `audit_log` VALUES (709, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:39:22', NULL);
INSERT INTO `audit_log` VALUES (710, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:39:25', NULL);
INSERT INTO `audit_log` VALUES (711, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-08 23:39:27', NULL);
INSERT INTO `audit_log` VALUES (712, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:40:17', NULL);
INSERT INTO `audit_log` VALUES (713, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:41:10', NULL);
INSERT INTO `audit_log` VALUES (714, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-08 23:41:13', NULL);
INSERT INTO `audit_log` VALUES (715, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-08 23:41:14', NULL);
INSERT INTO `audit_log` VALUES (716, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-08 23:41:15', NULL);
INSERT INTO `audit_log` VALUES (717, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:41:18', NULL);
INSERT INTO `audit_log` VALUES (718, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-08 23:41:18', NULL);
INSERT INTO `audit_log` VALUES (719, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-08 23:41:20', NULL);
INSERT INTO `audit_log` VALUES (720, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-08 23:43:09', NULL);
INSERT INTO `audit_log` VALUES (721, 'GET', '/user/me', 401, NULL, '2020-01-09 01:47:14', '2020-01-09 01:47:15');
INSERT INTO `audit_log` VALUES (722, 'GET', '/user/me', 401, NULL, '2020-01-09 01:49:57', '2020-01-09 01:49:57');
INSERT INTO `audit_log` VALUES (723, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:50:05', NULL);
INSERT INTO `audit_log` VALUES (724, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:50:06', NULL);
INSERT INTO `audit_log` VALUES (725, 'GET', '/user/me', 401, NULL, '2020-01-09 01:51:30', '2020-01-09 01:51:30');
INSERT INTO `audit_log` VALUES (726, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:51:31', NULL);
INSERT INTO `audit_log` VALUES (727, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:51:32', NULL);
INSERT INTO `audit_log` VALUES (728, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:52:12', NULL);
INSERT INTO `audit_log` VALUES (729, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:52:13', NULL);
INSERT INTO `audit_log` VALUES (730, 'GET', '/order/orders/1', 401, NULL, '2020-01-09 01:52:42', '2020-01-09 01:52:42');
INSERT INTO `audit_log` VALUES (731, 'GET', '/user/me', 401, NULL, '2020-01-09 01:52:42', '2020-01-09 01:52:42');
INSERT INTO `audit_log` VALUES (732, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:52:45', NULL);
INSERT INTO `audit_log` VALUES (733, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:52:46', NULL);
INSERT INTO `audit_log` VALUES (734, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:52:48', NULL);
INSERT INTO `audit_log` VALUES (735, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:52:49', NULL);
INSERT INTO `audit_log` VALUES (736, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:52:50', NULL);
INSERT INTO `audit_log` VALUES (737, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:52:50', NULL);
INSERT INTO `audit_log` VALUES (738, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:52:51', NULL);
INSERT INTO `audit_log` VALUES (739, 'GET', '/user/me', 401, NULL, '2020-01-09 01:52:51', '2020-01-09 01:52:51');
INSERT INTO `audit_log` VALUES (740, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:53:06', NULL);
INSERT INTO `audit_log` VALUES (741, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:53:06', NULL);
INSERT INTO `audit_log` VALUES (742, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:53:25', NULL);
INSERT INTO `audit_log` VALUES (743, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:53:26', NULL);
INSERT INTO `audit_log` VALUES (744, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:53:50', NULL);
INSERT INTO `audit_log` VALUES (745, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:53:51', NULL);
INSERT INTO `audit_log` VALUES (746, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:53:52', NULL);
INSERT INTO `audit_log` VALUES (747, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:53:52', NULL);
INSERT INTO `audit_log` VALUES (748, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:53:53', NULL);
INSERT INTO `audit_log` VALUES (749, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:53:54', NULL);
INSERT INTO `audit_log` VALUES (750, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:54:08', NULL);
INSERT INTO `audit_log` VALUES (751, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:54:08', NULL);
INSERT INTO `audit_log` VALUES (752, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:55:31', NULL);
INSERT INTO `audit_log` VALUES (753, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:55:31', NULL);
INSERT INTO `audit_log` VALUES (754, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:55:32', NULL);
INSERT INTO `audit_log` VALUES (755, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:55:33', NULL);
INSERT INTO `audit_log` VALUES (756, 'GET', '/user/me', 401, NULL, '2020-01-09 01:56:00', '2020-01-09 01:56:00');
INSERT INTO `audit_log` VALUES (757, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:56:01', NULL);
INSERT INTO `audit_log` VALUES (758, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:56:01', NULL);
INSERT INTO `audit_log` VALUES (759, 'GET', '/user/me', 401, NULL, '2020-01-09 01:59:32', '2020-01-09 01:59:32');
INSERT INTO `audit_log` VALUES (760, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 01:59:54', NULL);
INSERT INTO `audit_log` VALUES (761, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 01:59:55', NULL);
INSERT INTO `audit_log` VALUES (762, 'GET', '/order/orders/1', 401, NULL, '2020-01-09 02:00:13', '2020-01-09 02:00:13');
INSERT INTO `audit_log` VALUES (763, 'GET', '/user/me', 401, NULL, '2020-01-09 02:01:39', '2020-01-09 02:01:39');
INSERT INTO `audit_log` VALUES (764, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 02:02:21', NULL);
INSERT INTO `audit_log` VALUES (765, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 02:02:22', NULL);
INSERT INTO `audit_log` VALUES (766, 'GET', '/user/me', 401, NULL, '2020-01-09 02:05:20', '2020-01-09 02:05:20');
INSERT INTO `audit_log` VALUES (767, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 02:05:57', NULL);
INSERT INTO `audit_log` VALUES (768, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 02:05:57', NULL);
INSERT INTO `audit_log` VALUES (769, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 02:06:14', NULL);
INSERT INTO `audit_log` VALUES (770, 'GET', '/user/me', 401, NULL, '2020-01-09 02:06:53', '2020-01-09 02:06:53');
INSERT INTO `audit_log` VALUES (771, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 02:07:07', NULL);
INSERT INTO `audit_log` VALUES (772, 'GET', '/user/me', 401, NULL, '2020-01-09 02:07:18', '2020-01-09 02:07:18');
INSERT INTO `audit_log` VALUES (773, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 02:12:16', NULL);
INSERT INTO `audit_log` VALUES (774, 'GET', '/user/me', NULL, 'asd', '2020-01-09 02:12:21', NULL);
INSERT INTO `audit_log` VALUES (775, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-09 02:12:23', NULL);
INSERT INTO `audit_log` VALUES (776, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-09 02:12:26', NULL);
INSERT INTO `audit_log` VALUES (777, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 02:12:40', NULL);
INSERT INTO `audit_log` VALUES (778, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 02:12:40', NULL);
INSERT INTO `audit_log` VALUES (779, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 02:12:41', NULL);
INSERT INTO `audit_log` VALUES (780, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:15:09', NULL);
INSERT INTO `audit_log` VALUES (781, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 21:15:10', NULL);
INSERT INTO `audit_log` VALUES (782, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:15:12', NULL);
INSERT INTO `audit_log` VALUES (783, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:15:14', NULL);
INSERT INTO `audit_log` VALUES (784, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:15:15', NULL);
INSERT INTO `audit_log` VALUES (785, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:15:33', NULL);
INSERT INTO `audit_log` VALUES (786, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 21:15:33', NULL);
INSERT INTO `audit_log` VALUES (787, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:15:35', NULL);
INSERT INTO `audit_log` VALUES (788, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:15:36', NULL);
INSERT INTO `audit_log` VALUES (789, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:15:37', NULL);
INSERT INTO `audit_log` VALUES (790, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:15:38', NULL);
INSERT INTO `audit_log` VALUES (791, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:15:39', NULL);
INSERT INTO `audit_log` VALUES (792, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:17:03', NULL);
INSERT INTO `audit_log` VALUES (793, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 21:17:07', NULL);
INSERT INTO `audit_log` VALUES (794, 'GET', '/order/orders/1', 401, NULL, '2020-01-09 21:17:14', '2020-01-09 21:17:14');
INSERT INTO `audit_log` VALUES (795, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:18:17', NULL);
INSERT INTO `audit_log` VALUES (796, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 21:18:27', NULL);
INSERT INTO `audit_log` VALUES (797, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:19:01', NULL);
INSERT INTO `audit_log` VALUES (798, 'GET', '/user/me', NULL, 'asd', '2020-01-09 21:19:02', NULL);
INSERT INTO `audit_log` VALUES (799, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-09 21:19:03', NULL);
INSERT INTO `audit_log` VALUES (800, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-09 21:19:04', NULL);
INSERT INTO `audit_log` VALUES (801, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-09 21:19:06', NULL);
INSERT INTO `audit_log` VALUES (802, 'GET', '/order/orders/1', NULL, 'asd', '2020-01-09 21:19:07', NULL);
INSERT INTO `audit_log` VALUES (803, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:21:48', NULL);
INSERT INTO `audit_log` VALUES (804, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 21:21:49', NULL);
INSERT INTO `audit_log` VALUES (805, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:23:09', NULL);
INSERT INTO `audit_log` VALUES (806, 'GET', '/user/me', 401, NULL, '2020-01-09 21:23:32', '2020-01-09 21:23:32');
INSERT INTO `audit_log` VALUES (807, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:24:31', NULL);
INSERT INTO `audit_log` VALUES (808, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 21:24:34', NULL);
INSERT INTO `audit_log` VALUES (809, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:57:36', NULL);
INSERT INTO `audit_log` VALUES (810, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:57:58', NULL);
INSERT INTO `audit_log` VALUES (811, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:58:00', NULL);
INSERT INTO `audit_log` VALUES (812, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:58:01', NULL);
INSERT INTO `audit_log` VALUES (813, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:58:02', NULL);
INSERT INTO `audit_log` VALUES (814, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:58:03', NULL);
INSERT INTO `audit_log` VALUES (815, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:58:03', NULL);
INSERT INTO `audit_log` VALUES (816, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:58:04', NULL);
INSERT INTO `audit_log` VALUES (817, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:58:17', NULL);
INSERT INTO `audit_log` VALUES (818, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:58:18', NULL);
INSERT INTO `audit_log` VALUES (819, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:58:19', NULL);
INSERT INTO `audit_log` VALUES (820, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:58:22', NULL);
INSERT INTO `audit_log` VALUES (821, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:58:25', NULL);
INSERT INTO `audit_log` VALUES (822, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 21:59:21', NULL);
INSERT INTO `audit_log` VALUES (823, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 21:59:22', NULL);
INSERT INTO `audit_log` VALUES (824, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:59:24', NULL);
INSERT INTO `audit_log` VALUES (825, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:59:25', NULL);
INSERT INTO `audit_log` VALUES (826, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 21:59:25', NULL);
INSERT INTO `audit_log` VALUES (827, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:12:52', NULL);
INSERT INTO `audit_log` VALUES (828, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:12:54', NULL);
INSERT INTO `audit_log` VALUES (829, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:16:03', NULL);
INSERT INTO `audit_log` VALUES (830, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:16:04', NULL);
INSERT INTO `audit_log` VALUES (831, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:16:09', NULL);
INSERT INTO `audit_log` VALUES (832, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:19:23', NULL);
INSERT INTO `audit_log` VALUES (833, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:19:23', NULL);
INSERT INTO `audit_log` VALUES (834, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:22:01', NULL);
INSERT INTO `audit_log` VALUES (835, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:22:07', NULL);
INSERT INTO `audit_log` VALUES (836, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:27:09', NULL);
INSERT INTO `audit_log` VALUES (837, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:27:10', NULL);
INSERT INTO `audit_log` VALUES (838, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:27:30', NULL);
INSERT INTO `audit_log` VALUES (839, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:27:31', NULL);
INSERT INTO `audit_log` VALUES (840, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:27:53', NULL);
INSERT INTO `audit_log` VALUES (841, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:27:53', NULL);
INSERT INTO `audit_log` VALUES (842, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:27:57', NULL);
INSERT INTO `audit_log` VALUES (843, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:28:10', NULL);
INSERT INTO `audit_log` VALUES (844, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:28:11', NULL);
INSERT INTO `audit_log` VALUES (845, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:28:13', NULL);
INSERT INTO `audit_log` VALUES (846, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:28:14', NULL);
INSERT INTO `audit_log` VALUES (847, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:28:15', NULL);
INSERT INTO `audit_log` VALUES (848, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:28:16', NULL);
INSERT INTO `audit_log` VALUES (849, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:28:16', NULL);
INSERT INTO `audit_log` VALUES (850, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:28:23', NULL);
INSERT INTO `audit_log` VALUES (851, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:28:24', NULL);
INSERT INTO `audit_log` VALUES (852, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:28:26', NULL);
INSERT INTO `audit_log` VALUES (853, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:28:26', NULL);
INSERT INTO `audit_log` VALUES (854, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:29:44', NULL);
INSERT INTO `audit_log` VALUES (855, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:29:45', NULL);
INSERT INTO `audit_log` VALUES (856, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:29:46', NULL);
INSERT INTO `audit_log` VALUES (857, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:29:47', NULL);
INSERT INTO `audit_log` VALUES (858, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:29:48', NULL);
INSERT INTO `audit_log` VALUES (859, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:29:49', NULL);
INSERT INTO `audit_log` VALUES (860, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:29:50', NULL);
INSERT INTO `audit_log` VALUES (861, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:29:51', NULL);
INSERT INTO `audit_log` VALUES (862, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:30:36', NULL);
INSERT INTO `audit_log` VALUES (863, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:30:37', NULL);
INSERT INTO `audit_log` VALUES (864, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:31:16', NULL);
INSERT INTO `audit_log` VALUES (865, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:31:16', NULL);
INSERT INTO `audit_log` VALUES (866, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:32:27', NULL);
INSERT INTO `audit_log` VALUES (867, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:32:27', NULL);
INSERT INTO `audit_log` VALUES (868, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:32:28', NULL);
INSERT INTO `audit_log` VALUES (869, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:32:29', NULL);
INSERT INTO `audit_log` VALUES (870, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:32:30', NULL);
INSERT INTO `audit_log` VALUES (871, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:32:31', NULL);
INSERT INTO `audit_log` VALUES (872, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:32:32', NULL);
INSERT INTO `audit_log` VALUES (873, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:32:32', NULL);
INSERT INTO `audit_log` VALUES (874, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:32:33', NULL);
INSERT INTO `audit_log` VALUES (875, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:34:20', NULL);
INSERT INTO `audit_log` VALUES (876, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:34:21', NULL);
INSERT INTO `audit_log` VALUES (877, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:34:22', NULL);
INSERT INTO `audit_log` VALUES (878, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:34:23', NULL);
INSERT INTO `audit_log` VALUES (879, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:34:24', NULL);
INSERT INTO `audit_log` VALUES (880, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:34:24', NULL);
INSERT INTO `audit_log` VALUES (881, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:44:23', NULL);
INSERT INTO `audit_log` VALUES (882, 'GET', '/user/me', NULL, 'aaa', '2020-01-09 22:44:24', NULL);
INSERT INTO `audit_log` VALUES (883, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:44:26', NULL);
INSERT INTO `audit_log` VALUES (884, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:44:26', NULL);
INSERT INTO `audit_log` VALUES (885, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:44:27', NULL);
INSERT INTO `audit_log` VALUES (886, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:44:27', NULL);
INSERT INTO `audit_log` VALUES (887, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:44:35', NULL);
INSERT INTO `audit_log` VALUES (888, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:44:36', NULL);
INSERT INTO `audit_log` VALUES (889, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:44:37', NULL);
INSERT INTO `audit_log` VALUES (890, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-09 22:44:38', NULL);
INSERT INTO `audit_log` VALUES (891, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-09 22:50:51', NULL);
INSERT INTO `audit_log` VALUES (892, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-16 23:21:08', NULL);
INSERT INTO `audit_log` VALUES (893, 'GET', '/user/me', NULL, 'aaa', '2020-01-16 23:21:09', NULL);
INSERT INTO `audit_log` VALUES (894, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:11', NULL);
INSERT INTO `audit_log` VALUES (895, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:13', NULL);
INSERT INTO `audit_log` VALUES (896, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:13', NULL);
INSERT INTO `audit_log` VALUES (897, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:14', NULL);
INSERT INTO `audit_log` VALUES (898, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:14', NULL);
INSERT INTO `audit_log` VALUES (899, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:21', NULL);
INSERT INTO `audit_log` VALUES (900, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:22', NULL);
INSERT INTO `audit_log` VALUES (901, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:23', NULL);
INSERT INTO `audit_log` VALUES (902, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:24', NULL);
INSERT INTO `audit_log` VALUES (903, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:25', NULL);
INSERT INTO `audit_log` VALUES (904, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-16 23:21:27', NULL);
INSERT INTO `audit_log` VALUES (905, 'GET', '/order/orders/1', 401, NULL, '2020-01-16 23:21:28', '2020-01-16 23:21:28');
INSERT INTO `audit_log` VALUES (906, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:34', NULL);
INSERT INTO `audit_log` VALUES (907, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:37', NULL);
INSERT INTO `audit_log` VALUES (908, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:38', NULL);
INSERT INTO `audit_log` VALUES (909, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:39', NULL);
INSERT INTO `audit_log` VALUES (910, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-16 23:21:44', NULL);
INSERT INTO `audit_log` VALUES (911, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-16 23:21:55', NULL);
INSERT INTO `audit_log` VALUES (912, 'GET', '/user/me', NULL, 'aaa', '2020-01-16 23:21:56', NULL);
INSERT INTO `audit_log` VALUES (913, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:57', NULL);
INSERT INTO `audit_log` VALUES (914, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:21:58', NULL);
INSERT INTO `audit_log` VALUES (915, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-16 23:22:53', NULL);
INSERT INTO `audit_log` VALUES (916, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-16 23:23:06', NULL);
INSERT INTO `audit_log` VALUES (917, 'GET', '/user/me', NULL, 'aaa', '2020-01-16 23:23:07', NULL);
INSERT INTO `audit_log` VALUES (918, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-16 23:23:09', NULL);
INSERT INTO `audit_log` VALUES (919, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 06:48:14', NULL);
INSERT INTO `audit_log` VALUES (920, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 06:52:49', NULL);
INSERT INTO `audit_log` VALUES (921, 'GET', '/user/me', NULL, 'aaa', '2020-01-17 06:52:49', NULL);
INSERT INTO `audit_log` VALUES (922, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 06:53:09', NULL);
INSERT INTO `audit_log` VALUES (923, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 06:56:21', NULL);
INSERT INTO `audit_log` VALUES (924, 'GET', '/user/me', NULL, 'aaa', '2020-01-17 06:56:22', NULL);
INSERT INTO `audit_log` VALUES (925, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:56:24', NULL);
INSERT INTO `audit_log` VALUES (926, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:56:27', NULL);
INSERT INTO `audit_log` VALUES (927, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:56:29', NULL);
INSERT INTO `audit_log` VALUES (928, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:56:31', NULL);
INSERT INTO `audit_log` VALUES (929, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:56:33', NULL);
INSERT INTO `audit_log` VALUES (930, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:56:35', NULL);
INSERT INTO `audit_log` VALUES (931, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:56:38', NULL);
INSERT INTO `audit_log` VALUES (932, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 06:56:39', NULL);
INSERT INTO `audit_log` VALUES (933, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 06:56:56', NULL);
INSERT INTO `audit_log` VALUES (934, 'GET', '/user/me', NULL, 'aaa', '2020-01-17 06:56:57', NULL);
INSERT INTO `audit_log` VALUES (935, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:56:58', NULL);
INSERT INTO `audit_log` VALUES (936, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:56:59', NULL);
INSERT INTO `audit_log` VALUES (937, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:57:00', NULL);
INSERT INTO `audit_log` VALUES (938, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 06:58:44', NULL);
INSERT INTO `audit_log` VALUES (939, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 06:59:22', NULL);
INSERT INTO `audit_log` VALUES (940, 'GET', '/user/me', NULL, 'aaa', '2020-01-17 06:59:23', NULL);
INSERT INTO `audit_log` VALUES (941, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:59:26', NULL);
INSERT INTO `audit_log` VALUES (942, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:59:28', NULL);
INSERT INTO `audit_log` VALUES (943, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:59:29', NULL);
INSERT INTO `audit_log` VALUES (944, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:59:31', NULL);
INSERT INTO `audit_log` VALUES (945, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:59:32', NULL);
INSERT INTO `audit_log` VALUES (946, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:59:34', NULL);
INSERT INTO `audit_log` VALUES (947, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:59:35', NULL);
INSERT INTO `audit_log` VALUES (948, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:59:36', NULL);
INSERT INTO `audit_log` VALUES (949, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 06:59:38', NULL);
INSERT INTO `audit_log` VALUES (950, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 06:59:39', NULL);
INSERT INTO `audit_log` VALUES (951, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 07:00:26', NULL);
INSERT INTO `audit_log` VALUES (952, 'GET', '/user/me', NULL, 'aaa', '2020-01-17 07:00:27', NULL);
INSERT INTO `audit_log` VALUES (953, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:29', NULL);
INSERT INTO `audit_log` VALUES (954, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:30', NULL);
INSERT INTO `audit_log` VALUES (955, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:31', NULL);
INSERT INTO `audit_log` VALUES (956, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:32', NULL);
INSERT INTO `audit_log` VALUES (957, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:33', NULL);
INSERT INTO `audit_log` VALUES (958, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:34', NULL);
INSERT INTO `audit_log` VALUES (959, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:36', NULL);
INSERT INTO `audit_log` VALUES (960, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:37', NULL);
INSERT INTO `audit_log` VALUES (961, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:38', NULL);
INSERT INTO `audit_log` VALUES (962, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:39', NULL);
INSERT INTO `audit_log` VALUES (963, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:40', NULL);
INSERT INTO `audit_log` VALUES (964, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:41', NULL);
INSERT INTO `audit_log` VALUES (965, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:00:42', NULL);
INSERT INTO `audit_log` VALUES (966, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 07:00:46', NULL);
INSERT INTO `audit_log` VALUES (967, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 07:01:02', NULL);
INSERT INTO `audit_log` VALUES (968, 'GET', '/user/me', NULL, 'aaa', '2020-01-17 07:01:03', NULL);
INSERT INTO `audit_log` VALUES (969, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:01:04', NULL);
INSERT INTO `audit_log` VALUES (970, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:01:05', NULL);
INSERT INTO `audit_log` VALUES (971, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:01:06', NULL);
INSERT INTO `audit_log` VALUES (972, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:01:06', NULL);
INSERT INTO `audit_log` VALUES (973, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:01:07', NULL);
INSERT INTO `audit_log` VALUES (974, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:01:17', NULL);
INSERT INTO `audit_log` VALUES (975, 'GET', '/order/orders/1', NULL, 'aaa', '2020-01-17 07:01:18', NULL);
INSERT INTO `audit_log` VALUES (976, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 07:01:34', NULL);
INSERT INTO `audit_log` VALUES (977, 'POST', '/token/oauth/token', NULL, NULL, '2020-01-17 07:04:54', NULL);

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token`  (
  `token_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `authentication` blob NULL,
  `refresh_token` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------
INSERT INTO `oauth_access_token` VALUES ('0b4789d81785dc02e639323e6798e3e8', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E000578707372001E6A6176612E7574696C2E436F6C6C656374696F6E7324456D7074794D6170593614855ADCE7D002000078707372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016FB096FBB3787372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E71007E0002787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C756571007E0005787074002437306532326166642D653634652D346534362D613565392D3763393330323462666239397371007E000977080000016FB09722C378737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F400000000000027400047265616474000577726974657874000662656172657274002431626633636636372D663233632D346338362D613461392D333961393037653135343865, '36fb37b40089ccae5059a952c76d39a2', 'aaa', 'admin', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001FE0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F41444D494E7871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E0014787074000561646D696E737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000006740004636F646574000637583630527774000A6772616E745F74797065740012617574686F72697A6174696F6E5F636F646574000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B74000573746174657400062F696E646578740009636C69656E745F696471007E001778737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000274000472656164740005777269746578017371007E002A770C000000103F40000000000000787371007E001A3F400000000000007708000000100000000078740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B707371007E002A770C000000103F4000000000000174000C6F726465722D736572766572787371007E002A770C000000103F4000000000000171007E0021787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001FE0200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0037737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001FE0200024C000D72656D6F74654164647265737371007E000E4C000973657373696F6E496471007E000E78707400093132372E302E302E3174002436666562623866362D366264612D346664612D623635662D62333164313938663462623870737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001FE0200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0027737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001FE020000787077040000000171007E000F7870740003616161, '9078d906cdacbc312032ef521afdb1f3');

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals`  (
  `userId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `clientId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `scope` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expiresAt` datetime(0) NULL DEFAULT NULL,
  `lastModifiedAt` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details`  (
  `client_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `resource_ids` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client_secret` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `scope` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `authorized_grant_types` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `authorities` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `access_token_validity` int(11) NULL DEFAULT NULL,
  `refresh_token_validity` int(11) NULL DEFAULT NULL,
  `additional_information` varchar(4096) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `autoapprove` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('admin', 'order-server', '$2a$10$U2QYW9P2F5Q9Eai1CP9px.GPdzWEBFzNXRfjaa9uCIIVyr/yABroC', 'read,write', 'password,authorization_code,refresh_token', 'http://admin.nb.com:8080/oauth/callback', NULL, 20, 30, NULL, 'true');
INSERT INTO `oauth_client_details` VALUES ('gateway', 'order-server', '$2a$10$I/gCU2wH5j.EsOBsKIWfF.zb2D6PvDGwjTWwBHKEp8f5XJLdUwTFO', 'read,write', 'password', NULL, NULL, 3600, NULL, NULL, NULL);
INSERT INTO `oauth_client_details` VALUES ('orderApp', 'order-server', '$2a$10$I/gCU2wH5j.EsOBsKIWfF.zb2D6PvDGwjTWwBHKEp8f5XJLdUwTFO', 'read,write', 'password', NULL, NULL, 3600, NULL, NULL, NULL);
INSERT INTO `oauth_client_details` VALUES ('orderService', 'order-server', '$2a$10$U2QYW9P2F5Q9Eai1CP9px.GPdzWEBFzNXRfjaa9uCIIVyr/yABroC', 'read', 'password', NULL, NULL, 3600, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token`  (
  `token_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authentication_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code`  (
  `code` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `authentication` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token`  (
  `token_id` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `token` blob NULL,
  `authentication` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------
INSERT INTO `oauth_refresh_token` VALUES ('a564a873b75b0f3a62ccd842a4c8138e', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002432646136326639342D313238322D343536632D383031352D6334633864323730383035387372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017010F1431278, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001FE0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F41444D494E7871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E0014787074000561646D696E737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000006740004636F64657400064149724E425374000A6772616E745F74797065740012617574686F72697A6174696F6E5F636F646574000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B74000573746174657400062F696E646578740009636C69656E745F696471007E001778737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000274000472656164740005777269746578017371007E002A770C000000103F40000000000000787371007E001A3F400000000000007708000000100000000078740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B707371007E002A770C000000103F4000000000000174000C6F726465722D736572766572787371007E002A770C000000103F4000000000000171007E0021787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001FE0200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0037737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001FE0200024C000D72656D6F74654164647265737371007E000E4C000973657373696F6E496471007E000E78707400093132372E302E302E3174002436633534353038322D303964352D343564632D393665322D34393138353263646463383170737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001FE0200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0027737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001FE020000787077040000000171007E000F7870740003616161);
INSERT INTO `oauth_refresh_token` VALUES ('7d132936366b46f50bd56eab258843d8', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002436393465326636362D626662352D346233392D393663642D3133323133363063636361667372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016F864C652478, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001FE0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F41444D494E7871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E0014787074000561646D696E737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000006740004636F64657400064E376335714674000A6772616E745F74797065740012617574686F72697A6174696F6E5F636F646574000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B74000573746174657400062F696E646578740009636C69656E745F696471007E001778737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000274000472656164740005777269746578017371007E002A770C000000103F40000000000000787371007E001A3F400000000000007708000000100000000078740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B707371007E002A770C000000103F4000000000000174000C6F726465722D736572766572787371007E002A770C000000103F4000000000000171007E0021787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001FE0200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0037737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001FE0200024C000D72656D6F74654164647265737371007E000E4C000973657373696F6E496471007E000E78707400093132372E302E302E3174002461363632366538332D396134632D346338302D396236662D66353033663536643865633670737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001FE0200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0027737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001FE020000787077040000000171007E000F7870740003616161);
INSERT INTO `oauth_refresh_token` VALUES ('c0c0713f6ce951759007e32b6e744ece', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002430373036363533342D363734352D346330652D383735332D6465653439336536343239667372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016F8A759D6378, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001FE0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F41444D494E7871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E0014787074000561646D696E737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000006740004636F646574000674354971644674000A6772616E745F74797065740012617574686F72697A6174696F6E5F636F646574000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B74000573746174657400062F696E646578740009636C69656E745F696471007E001778737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000274000472656164740005777269746578017371007E002A770C000000103F40000000000000787371007E001A3F400000000000007708000000100000000078740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B707371007E002A770C000000103F4000000000000174000C6F726465722D736572766572787371007E002A770C000000103F4000000000000171007E0021787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001FE0200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0037737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001FE0200024C000D72656D6F74654164647265737371007E000E4C000973657373696F6E496471007E000E78707400093132372E302E302E3174002465373134656534362D623735312D343161302D383438332D38363738326661356335303070737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001FE0200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0027737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001FE020000787077040000000171007E000F7870740003617364);
INSERT INTO `oauth_refresh_token` VALUES ('bfbde1d4cd19fd9c08219eb9c3727e70', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002436333035343866332D363539392D343561392D396532352D6562323135656434623837337372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016F8AB8D62578, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001FE0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F41444D494E7871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E0014787074000561646D696E737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000006740004636F64657400066E617A53453674000A6772616E745F74797065740012617574686F72697A6174696F6E5F636F646574000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B74000573746174657400062F696E646578740009636C69656E745F696471007E001778737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000274000472656164740005777269746578017371007E002A770C000000103F40000000000000787371007E001A3F400000000000007708000000100000000078740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B707371007E002A770C000000103F4000000000000174000C6F726465722D736572766572787371007E002A770C000000103F4000000000000171007E0021787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001FE0200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0037737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001FE0200024C000D72656D6F74654164647265737371007E000E4C000973657373696F6E496471007E000E78707400093132372E302E302E3174002465636462303265622D633263612D346638382D386230362D31623637303539653065353870737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001FE0200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0027737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001FE020000787077040000000171007E000F7870740003616161);
INSERT INTO `oauth_refresh_token` VALUES ('9078d906cdacbc312032ef521afdb1f3', 0xACED00057372004C6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744578706972696E674F417574683252656672657368546F6B656E2FDF47639DD0C9B70200014C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B787200446F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F417574683252656672657368546F6B656E73E10E0A6354D45E0200014C000576616C75657400124C6A6176612F6C616E672F537472696E673B787074002437306532326166642D653634652D346534362D613565392D3763393330323462666239397372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016FB09722C378, 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001FE0200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F41444D494E7871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E0014787074000561646D696E737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000006740004636F646574000637583630527774000A6772616E745F74797065740012617574686F72697A6174696F6E5F636F646574000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B74000573746174657400062F696E646578740009636C69656E745F696471007E001778737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000274000472656164740005777269746578017371007E002A770C000000103F40000000000000787371007E001A3F400000000000007708000000100000000078740027687474703A2F2F61646D696E2E6E622E636F6D3A383038302F6F617574682F63616C6C6261636B707371007E002A770C000000103F4000000000000174000C6F726465722D736572766572787371007E002A770C000000103F4000000000000171007E0021787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001FE0200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0037737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001FE0200024C000D72656D6F74654164647265737371007E000E4C000973657373696F6E496471007E000E78707400093132372E302E302E3174002436666562623866362D366264612D346664612D623635662D62333164313938663462623870737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001FE0200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0027737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001FE020000787077040000000171007E000F7870740003616161);

-- ----------------------------
-- Table structure for spring_session
-- ----------------------------
DROP TABLE IF EXISTS `spring_session`;
CREATE TABLE `spring_session`  (
  `PRIMARY_ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `SESSION_ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`) USING BTREE,
  UNIQUE INDEX `SPRING_SESSION_IX1`(`SESSION_ID`) USING BTREE,
  INDEX `SPRING_SESSION_IX2`(`EXPIRY_TIME`) USING BTREE,
  INDEX `SPRING_SESSION_IX3`(`PRINCIPAL_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for spring_session_attributes
-- ----------------------------
DROP TABLE IF EXISTS `spring_session_attributes`;
CREATE TABLE `spring_session_attributes`  (
  `SESSION_PRIMARY_ID` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ATTRIBUTE_NAME` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`) USING BTREE,
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录用户名',
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `permissions` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'lhy', '123', '阳仔', 'r');
INSERT INTO `user` VALUES (2, 'nb', '123', '牛呗', 'rw');

SET FOREIGN_KEY_CHECKS = 1;
