/*
 Navicat Premium Data Transfer

 Source Server         : yaokwok
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost
 Source Database       : db_mblog

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 05/27/2017 14:12:12 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `mto_tags`
-- ----------------------------
DROP TABLE IF EXISTS `mto_tags`;
CREATE TABLE `mto_tags` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL,
  `hots` int(11) NOT NULL,
  `last_post_id` bigint(20) DEFAULT NULL,
  `posts` int(11) NOT NULL,
  `locked` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
--  Records of `mto_tags`
-- ----------------------------
BEGIN;
INSERT INTO `mto_tags` VALUES ('1', 'MacOs', '1', '0', '0', '0', '0'), ('2', 'Java', '1', '0', '0', '0', '0'), ('3', 'Jquery', '1', '1', '0', '0', '0'), ('4', 'html/css', '1', '0', '0', '0', '0'), ('5', 'html5/css3', '1', '1', '3', '2', '0'), ('6', 'javascript', '1', '0', '0', '0', '0'), ('7', '架构开发', '1', '1', '0', '0', '0'), ('8', '互联网', '1', '2', '0', '0', '0'), ('9', '生活', '1', '0', '0', '0', '0'), ('10', 'node.js', '1', '0', '0', '0', '0'), ('11', 'vue', '1', '1', '0', '0', '0'), ('12', '数据库', '1', '2', '0', '0', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
