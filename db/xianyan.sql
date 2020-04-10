/*
 Navicat MySQL Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : xianyan

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 18/03/2020 23:54:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(10) NULL DEFAULT NULL,
  `commentator` bigint(20) NULL DEFAULT NULL,
  `comment_count` int(10) NULL DEFAULT NULL,
  `like_count` bigint(20) NULL DEFAULT NULL,
  `gmt_create` bigint(20) NULL DEFAULT NULL,
  `gmt_modified` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 1, '这是第一条评论', 1, 1, 5, 0, 1584421861798, 1584421861798);
INSERT INTO `comment` VALUES (2, 1, '这是第一条评论的回复', 2, 1, 1, 0, 1584421882188, 1584421882188);
INSERT INTO `comment` VALUES (3, 1, '这是第二条评论', 1, 1, 2, 0, 1584421908661, 1584421908661);
INSERT INTO `comment` VALUES (4, 3, '这是第二条评论的回复', 2, 1, 1, 0, 1584423787315, 1584423787315);
INSERT INTO `comment` VALUES (5, 1, '这是第一条评论回复第二条', 2, 1, 1, 0, 1584426462741, 1584426462741);
INSERT INTO `comment` VALUES (6, 1, '这是第一条评论的第三条回复测试长回复下的效果这是第一条评论的第三条回复测试长回复下的效果这是第一条评论的第三条回复测试长回复下的效果这是第一条评论的第三条回复测试长回复下的效果这是第一条评论的第三条回复测试长回复下的效果这是第一条评论的第三条回复测试长回复下的效果这是第一条评论的第三条回复测试长回复下的效果这是第一条评论的第三条回复测试长回复下的效果这是第一条评论的第三条回复测试长回复下的效果这是第一条评论的第三条回复测试长回复下的效果这是第一条评论的第三条回复测试长回复下的效果', 2, 1, 1, 0, 1584427444529, 1584427444529);
INSERT INTO `comment` VALUES (7, 3, '二级评论圆满完成，技术欠佳后期继续完善', 2, 1, 1, 0, 1584427715618, 1584427715618);
INSERT INTO `comment` VALUES (8, 3, '不可以发图片表情吗', 2, 1, 1, 0, 1584427749568, 1584427749568);
INSERT INTO `comment` VALUES (9, 1, '不可以发表情哎', 1, 1, 3, 0, 1584427776556, 1584427776556);
INSERT INTO `comment` VALUES (10, 9, '测试累加评论数', 2, 1, 1, 0, 1584432809244, 1584432809244);
INSERT INTO `comment` VALUES (11, 9, '测试累加评论数', 2, 1, 1, 0, 1584432922653, 1584432922653);
INSERT INTO `comment` VALUES (12, 9, '测试累加评论数', 2, 1, 1, 0, 1584433072966, 1584433072966);
INSERT INTO `comment` VALUES (13, 9, '测试累加评论数', 2, 1, NULL, 0, 1584433166453, 1584433166453);
INSERT INTO `comment` VALUES (14, 9, '测试累加评论数', 2, 1, NULL, 0, 1584433447425, 1584433447425);
INSERT INTO `comment` VALUES (15, 9, '测试累加评论数', 2, 1, NULL, 0, 1584433482798, 1584433482798);
INSERT INTO `comment` VALUES (16, 9, '测试累加评论数', 2, 1, NULL, 0, 1584433515089, 1584433515089);
INSERT INTO `comment` VALUES (17, 9, '测试累加评论数', 2, 1, NULL, 0, 1584433679332, 1584433679332);
INSERT INTO `comment` VALUES (18, 3, '可以发表情吗', 2, 1, NULL, 0, 1584433712022, 1584433712022);
INSERT INTO `comment` VALUES (19, 9, '测试累加评论数', 2, 1, NULL, 0, 1584433802886, 1584433802886);

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` bigint(25) NULL DEFAULT NULL,
  `comment_count` int(25) NULL DEFAULT 0,
  `view_count` int(25) NULL DEFAULT 0,
  `like_count` int(25) NOT NULL DEFAULT 0,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gmt_create` bigint(20) NULL DEFAULT NULL,
  `gmt_modified` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '这是第一个问题？', '解决数据库连接失败问题？', 1, 3, 119, 0, '日志', 1584192126258, 1584192126258);
INSERT INTO `question` VALUES (2, 'SpringMVC', 'SpringMVC', 1, 0, 38, 0, 'SpringMVC，spring，Java', 1584443119120, 1584443119120);
INSERT INTO `question` VALUES (3, 'Spring', 'Spring', 1, 0, 0, 0, 'Spring', 1584498620703, 1584498620703);
INSERT INTO `question` VALUES (4, 'Java', 'Java', 1, 0, 0, 0, 'Java', 1584498635272, 1584498635272);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gmt_create` bigint(20) NULL DEFAULT NULL,
  `gmt_modified` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'biliit', '58796846', '18366f5d-54bb-4a44-a98a-5aa3c53f64a4', 'https://avatars1.githubusercontent.com/u/58796846?v=4', 1584192192447, 1584546831497);

SET FOREIGN_KEY_CHECKS = 1;
