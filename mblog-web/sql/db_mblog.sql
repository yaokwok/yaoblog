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

 Date: 05/27/2017 14:13:52 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `mto_attachs`
-- ----------------------------
DROP TABLE IF EXISTS `mto_attachs`;
CREATE TABLE `mto_attachs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `height` int(11) NOT NULL,
  `original` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `preview` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `screenshot` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `to_id` bigint(20) DEFAULT NULL,
  `width` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `mto_auth_menu`
-- ----------------------------
DROP TABLE IF EXISTS `mto_auth_menu`;
CREATE TABLE `mto_auth_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_ids` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fynq2bfwabynqmnauw69b7ulc` (`parent_id`),
  CONSTRAINT `FK_fynq2bfwabynqmnauw69b7ulc` FOREIGN KEY (`parent_id`) REFERENCES `mto_auth_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mto_auth_menu`
-- ----------------------------
BEGIN;
INSERT INTO `mto_auth_menu` VALUES ('1', '根目录', '', '', '1', '/', null, null), ('2', '后台管理', null, 'admin', '1', 'admin', '1', null), ('3', '我的主页', null, '', '1', '', '1', null), ('4', '文章管理', null, 'posts:view', '2', 'admin/posts/list', '2', 'fa fa-clone icon-xlarge'), ('5', '文章修改', null, 'posts:edit', '1', null, '4', null), ('6', '用户管理', null, 'users:view', '3', 'admin/users/list', '2', 'fa fa-user icon-xlarge'), ('7', '禁用用户', null, 'users:edit', '1', '', '6', null), ('8', '修改密码', null, 'users:edit', '1', null, '6', null), ('9', '评论管理', null, 'comments:view', '4', 'admin/comments/list', '2', 'fa fa-comments-o icon-xlarge'), ('10', '删除评论', null, 'comments:edit', '1', null, '9', null), ('11', '标签管理', null, 'tags:view', '5', 'admin/tags/list', '2', 'fa fa-tags icon-xlarge'), ('12', '删除标签', null, 'tags:edit', '1', null, '11', null), ('13', '修改标签', null, 'tags:edit', '2', null, '11', null), ('14', '推荐标签', null, 'tags:edit', '3', null, '11', null), ('15', '系统配置', null, 'config:view', '6', 'admin/config/', '2', 'fa fa-sun-o icon-xlarge'), ('16', '修改配置', null, 'config:edit', '1', null, '15', null), ('17', '仪表盘', null, 'admin', '1', 'admin', '2', 'fa fa-dashboard icon-xlarge'), ('18', '角色管理', null, 'roles:view', '7', 'admin/roles/list', '2', 'fa fa fa-registered icon-xlarge'), ('19', '菜单管理', null, 'authMenus:view', '8', 'admin/authMenus/list', '2', 'fa fa-reorder icon-xlarge'), ('21', '菜单修改', null, 'authMenus:edit', '0', '', '19', null), ('22', '角色修改', null, 'roles:edit', '0', null, '18', null), ('23', '文章查看', null, 'posts:view', '1', '', '4', null), ('24', '用户查看', null, 'users:view', '1', '', '6', null), ('25', '评论查看', null, 'comments:view', '1', '', '9', null), ('26', '标签查看', null, 'tags:view', '1', '', '11', null), ('27', '角色查看', null, 'roles:view', '1', '', '18', null), ('28', '菜单查看', null, 'authMenus:view', '1', '', '19', null), ('29', '友情链接', null, 'friendLink:view', '8', 'admin/friendLink/list', '2', 'fa fa-link'), ('30', '友情链接修改', null, 'friendLink:edit', '0', '', '29', null), ('31', '友情链接查看', null, 'friendLink:view', '0', '', '29', null);
COMMIT;

-- ----------------------------
--  Table structure for `mto_comments`
-- ----------------------------
DROP TABLE IF EXISTS `mto_comments`;
CREATE TABLE `mto_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `pid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `to_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `mto_config`
-- ----------------------------
DROP TABLE IF EXISTS `mto_config`;
CREATE TABLE `mto_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_99vo6d7ci4wlxruo3gd0q2jq8` (`key_`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mto_config`
-- ----------------------------
BEGIN;
INSERT INTO `mto_config` VALUES ('1', 'site_name', '0', 'YaoKwok（邀客）- 程序员博客第一站'), ('2', 'site_welcomes', '0', '作个人之章，成众人之美'), ('3', 'site_domain', '0', 'http://yaokwok.com'), ('4', 'site_keywords', '0', 'yaokwok,邀客,编程,博客,社区,java,程序,软件,程序员,开发'), ('5', 'site_description', '0', 'yaokwok（邀客）, 轻松分享你的编程经验. 便捷的文字、图片发布,扁平化的响应式设计,美观、大气,也是您记录生活的最佳选择，现在开始做一个有态度的程序员吧！'), ('6', 'site_editor', '1', 'ueditor'), ('7', 'site_metas', '0', ''), ('8', 'site_copyright', '0', 'Copyright © YaoKwok'), ('9', 'site_icp', '0', '蜀ICP备15028341号-2'), ('10', 'site_advs_right', '0', ''), ('11', 'image_processor', '0', 'GraphicsMagick'), ('12', 'site_oauth_qq', '0', ''), ('13', 'qq_app_id', '0', ''), ('14', 'qq_app_key', '0', ''), ('15', 'site_oauth_weibo', '0', ''), ('16', 'weibo_client_id', '0', ''), ('17', 'weibo_client_sercret', '0', ''), ('18', 'site_oauth_douban', '0', ''), ('19', 'douban_api_key', '0', ''), ('20', 'douban_secret_key', '0', ''), ('21', 'site_mail_host', '0', 'smtp.qq.com'), ('22', 'site_mail_username', '0', '171627856'), ('23', 'site_mail_password', '0', 'yao123');
COMMIT;

-- ----------------------------
--  Table structure for `mto_favors`
-- ----------------------------
DROP TABLE IF EXISTS `mto_favors`;
CREATE TABLE `mto_favors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `own_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `mto_feeds`
-- ----------------------------
DROP TABLE IF EXISTS `mto_feeds`;
CREATE TABLE `mto_feeds` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `own_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `mto_feeds`
-- ----------------------------
BEGIN;
INSERT INTO `mto_feeds` VALUES ('1', '1', '2017-05-26 19:07:27', '1', '1', '1'), ('2', '1', '2017-05-26 19:07:44', '1', '2', '1'), ('3', '1', '2017-05-26 19:07:51', '1', '3', '1'), ('4', '1', '2017-05-26 19:07:59', '1', '4', '1'), ('5', '1', '2017-05-26 19:08:05', '1', '5', '1'), ('6', '1', '2017-05-27 11:38:53', '1', '6', '1');
COMMIT;

-- ----------------------------
--  Table structure for `mto_follows`
-- ----------------------------
DROP TABLE IF EXISTS `mto_follows`;
CREATE TABLE `mto_follows` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `follow_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_t38um6ivtsbk34xph98levx4x` (`follow_id`),
  KEY `FK_3grh3868ek909r524m0kphmux` (`user_id`),
  CONSTRAINT `FK_3grh3868ek909r524m0kphmux` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`),
  CONSTRAINT `FK_t38um6ivtsbk34xph98levx4x` FOREIGN KEY (`follow_id`) REFERENCES `mto_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `mto_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `mto_friend_link`;
CREATE TABLE `mto_friend_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `mto_group`
-- ----------------------------
DROP TABLE IF EXISTS `mto_group`;
CREATE TABLE `mto_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `template` varchar(16) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mto_group`
-- ----------------------------
BEGIN;
INSERT INTO `mto_group` VALUES ('1', 'blog', '文章', '写文章', 'fa fa-pencil-square', 'blog', '0'), ('2', 'image', '图片', '发图片', 'fa fa-camera', 'image', '0'), ('3', 'video', '视频', '搬视频', 'fa fa-toggle-right', 'video', '0'), ('4', 'ask', '问答', '提问题', 'fa fa-question-circle', 'ask', '0');
COMMIT;

-- ----------------------------
--  Table structure for `mto_logs`
-- ----------------------------
DROP TABLE IF EXISTS `mto_logs`;
CREATE TABLE `mto_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` date DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `mto_menu`
-- ----------------------------
DROP TABLE IF EXISTS `mto_menu`;
CREATE TABLE `mto_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(18) DEFAULT NULL,
  `target` varchar(18) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mto_menu`
-- ----------------------------
BEGIN;
INSERT INTO `mto_menu` VALUES ('1', '文章', '_self', 'g/blog', '0', '0'), ('2', '视频', '_self', 'g/video', '0', '0'), ('3', '问答', '_self', 'g/ask', '0', '0'), ('4', '发现', '_self', 'tags', '0', '0'), ('5', '走廊', '_self', 'gallery?g=2', '0', '0');
COMMIT;

-- ----------------------------
--  Table structure for `mto_notify`
-- ----------------------------
DROP TABLE IF EXISTS `mto_notify`;
CREATE TABLE `mto_notify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `event` int(11) NOT NULL,
  `from_id` bigint(20) DEFAULT NULL,
  `own_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `mto_posts`
-- ----------------------------
DROP TABLE IF EXISTS `mto_posts`;
CREATE TABLE `mto_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `content` longtext COLLATE utf8_bin,
  `created` datetime DEFAULT NULL,
  `editor` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `favors` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `group_` int(11) DEFAULT NULL,
  `images` int(11) NOT NULL,
  `last_image_id` bigint(20) DEFAULT NULL,
  `markdown` longtext COLLATE utf8_bin,
  `privacy` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `title` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Records of `mto_posts`
-- ----------------------------
BEGIN;
INSERT INTO `mto_posts` VALUES ('1', '1', '0', '<p>111</p>', '2017-05-26 19:07:26', 'ueditor', '0', '0', '1', '0', '0', null, '0', '0', '111', '', '1', '0'), ('2', '1', '0', '<p>22</p>', '2017-05-26 19:07:44', 'ueditor', '0', '0', '1', '0', '0', null, '0', '0', '22', '', '2', '0'), ('3', '1', '0', '<p>33</p>', '2017-05-26 19:07:51', 'ueditor', '0', '0', '1', '0', '0', null, '0', '0', '33', '', '3', '1'), ('4', '1', '0', '<p>444</p>', '2017-05-26 19:07:59', 'ueditor', '0', '0', '1', '0', '0', null, '0', '0', '444', '', '4', '1'), ('5', '1', '0', '<p>555</p>', '2017-05-26 19:08:05', 'ueditor', '0', '0', '1', '0', '0', null, '0', '0', '555', '', '5', '4'), ('6', '1', '0', '<p>222</p>', '2017-05-27 11:38:52', 'ueditor', '0', '0', '1', '0', '0', null, '0', '0', '222', '', '965', '0');
COMMIT;

-- ----------------------------
--  Table structure for `mto_posts_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `mto_posts_attribute`;
CREATE TABLE `mto_posts_attribute` (
  `id` bigint(20) NOT NULL,
  `video_body` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `mto_role`
-- ----------------------------
DROP TABLE IF EXISTS `mto_role`;
CREATE TABLE `mto_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mto_role`
-- ----------------------------
BEGIN;
INSERT INTO `mto_role` VALUES ('1', '管理员'), ('2', '普通用户'), ('3', '半个管理员');
COMMIT;

-- ----------------------------
--  Table structure for `mto_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `mto_role_menu`;
CREATE TABLE `mto_role_menu` (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  KEY `FK_td8ih8aorlkpyop3gemfqxmbt` (`menu_id`),
  KEY `FK_5o5vaxfyg0d1qa0142dnkruiv` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mto_role_menu`
-- ----------------------------
BEGIN;
INSERT INTO `mto_role_menu` VALUES ('1', '1'), ('1', '2'), ('1', '4'), ('1', '5'), ('1', '23'), ('1', '6'), ('1', '7'), ('1', '8'), ('1', '24'), ('1', '9'), ('1', '10'), ('1', '25'), ('1', '11'), ('1', '12'), ('1', '13'), ('1', '14'), ('1', '26'), ('1', '15'), ('1', '16'), ('1', '17'), ('1', '18'), ('1', '22'), ('1', '27'), ('1', '19'), ('1', '21'), ('1', '28'), ('1', '3'), ('1', '29'), ('1', '30'), ('1', '31');
COMMIT;

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

-- ----------------------------
--  Table structure for `mto_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_role`;
CREATE TABLE `mto_user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  KEY `FK_fhtla2vc199mv0ru2r2kvakha` (`role_id`),
  KEY `FK_b4m7ef0uvkr4efrscf8r1ehy2` (`user_id`),
  CONSTRAINT `FK_b4m7ef0uvkr4efrscf8r1ehy2` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`),
  CONSTRAINT `FK_fhtla2vc199mv0ru2r2kvakha` FOREIGN KEY (`role_id`) REFERENCES `mto_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mto_user_role`
-- ----------------------------
BEGIN;
INSERT INTO `mto_user_role` VALUES ('1', '1'), ('1', '2');
COMMIT;

-- ----------------------------
--  Table structure for `mto_users`
-- ----------------------------
DROP TABLE IF EXISTS `mto_users`;
CREATE TABLE `mto_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT '/assets/images/ava/default.png',
  `updated` datetime DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `source` int(11) NOT NULL,
  `active_email` int(11) DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `fans` int(11) NOT NULL,
  `favors` int(11) NOT NULL,
  `follows` int(11) NOT NULL,
  `posts` int(11) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `mto_users`
-- ----------------------------
BEGIN;
INSERT INTO `mto_users` VALUES ('1', '2015-08-06 17:52:41', 'admin@mtons.com', '2017-05-27 11:28:33', null, '3TGCQF25BLHU9R7IQUITN0FCC5', '0', 'admin', 'admin', '/assets/images/ava/default.png', '2015-07-26 11:08:36', '0', '1', '0', '1', '0', '0', '0', '0', '6', '超级管理员');
COMMIT;

-- ----------------------------
--  Table structure for `mto_users_open_oauth`
-- ----------------------------
DROP TABLE IF EXISTS `mto_users_open_oauth`;
CREATE TABLE `mto_users_open_oauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `expire_in` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oauth_code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oauth_type` int(11) DEFAULT NULL,
  `oauth_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
--  Table structure for `mto_verify`
-- ----------------------------
DROP TABLE IF EXISTS `mto_verify`;
CREATE TABLE `mto_verify` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `expired` datetime NOT NULL,
  `status` int(11) DEFAULT NULL,
  `target` varchar(96) COLLATE utf8_bin DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_m7p0b526c4xlgjn787t22om2g` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

SET FOREIGN_KEY_CHECKS = 1;
