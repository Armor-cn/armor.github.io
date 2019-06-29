/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : db_mblog

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 25/06/2019 20:29:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for flyway_schema_history
-- ----------------------------
DROP TABLE IF EXISTS `flyway_schema_history`;
CREATE TABLE `flyway_schema_history`  (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `checksum` int(11) NULL DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `installed_on` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  INDEX `flyway_schema_history_s_idx`(`success`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of flyway_schema_history
-- ----------------------------
INSERT INTO `flyway_schema_history` VALUES (1, '1', '<< Flyway Baseline >>', 'BASELINE', '<< Flyway Baseline >>', NULL, 'root', '2019-06-22 22:32:03', 0, 1);
INSERT INTO `flyway_schema_history` VALUES (2, '3.2', 'update', 'SQL', 'V3.2__update.sql', -53734780, 'root', '2019-06-22 22:32:04', 71, 1);

-- ----------------------------
-- Table structure for mto_attachs
-- ----------------------------
DROP TABLE IF EXISTS `mto_attachs`;
CREATE TABLE `mto_attachs`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `height` int(11) NOT NULL,
  `original` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `screenshot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `to_id` bigint(20) NULL DEFAULT NULL,
  `width` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_auth_menu
-- ----------------------------
DROP TABLE IF EXISTS `mto_auth_menu`;
CREATE TABLE `mto_auth_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` bigint(20) NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_fynq2bfwabynqmnauw69b7ulc`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_auth_menu
-- ----------------------------
INSERT INTO `mto_auth_menu` VALUES (1, '根目录', '', '', 1, '/', 0, NULL);
INSERT INTO `mto_auth_menu` VALUES (2, '后台管理', NULL, 'admin', 1, 'admin', 1, NULL);
INSERT INTO `mto_auth_menu` VALUES (4, '文章管理', NULL, 'posts:view', 2, 'admin/posts/list', 2, 'fa fa-clone icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES (5, '文章修改', NULL, 'posts:edit', 1, NULL, 4, NULL);
INSERT INTO `mto_auth_menu` VALUES (6, '文章查看', NULL, 'posts:view', 1, '', 4, NULL);
INSERT INTO `mto_auth_menu` VALUES (8, '评论管理', NULL, 'comments:view', 4, 'admin/comments/list', 2, 'fa fa-comments-o icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES (9, '删除评论', NULL, 'comments:edit', 1, NULL, 8, NULL);
INSERT INTO `mto_auth_menu` VALUES (10, '评论查看', NULL, 'comments:view', 1, '', 8, NULL);
INSERT INTO `mto_auth_menu` VALUES (11, '栏目管理', NULL, 'group:view', 5, 'admin/group/list', 2, 'fa fa-tags icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES (12, '删除栏目', NULL, 'group:edit', 1, NULL, 11, NULL);
INSERT INTO `mto_auth_menu` VALUES (13, '修改栏目', NULL, 'group:edit', 2, NULL, 11, NULL);
INSERT INTO `mto_auth_menu` VALUES (15, '系统配置', NULL, 'config:view', 6, 'admin/config/', 2, 'fa fa-sun-o icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES (16, '修改配置', NULL, 'config:edit', 1, NULL, 15, NULL);
INSERT INTO `mto_auth_menu` VALUES (17, '用户管理', NULL, 'users:view', 3, 'admin/users/list', 2, 'fa fa-user icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES (18, '禁用用户', NULL, 'users:edit', 1, '', 17, NULL);
INSERT INTO `mto_auth_menu` VALUES (19, '修改密码', NULL, 'users:edit', 1, NULL, 17, NULL);
INSERT INTO `mto_auth_menu` VALUES (20, '用户查看', NULL, 'users:view', 1, '', 17, NULL);
INSERT INTO `mto_auth_menu` VALUES (35, '角色管理', NULL, 'roles:view', 7, 'admin/roles/list', 2, 'fa fa fa-registered icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES (36, '角色修改', NULL, 'roles:edit', 0, NULL, 35, NULL);
INSERT INTO `mto_auth_menu` VALUES (37, '角色查看', NULL, 'roles:view', 1, '', 35, NULL);
INSERT INTO `mto_auth_menu` VALUES (41, '菜单管理', NULL, 'authMenus:view', 8, 'admin/authMenus/list', 2, 'fa fa-reorder icon-xlarge');
INSERT INTO `mto_auth_menu` VALUES (42, '菜单修改', NULL, 'authMenus:edit', 0, '', 41, NULL);
INSERT INTO `mto_auth_menu` VALUES (43, '菜单查看', NULL, 'authMenus:view', 1, '', 41, NULL);
INSERT INTO `mto_auth_menu` VALUES (45, '友情链接', NULL, 'friendLink:view', 8, 'admin/friendLink/list', 2, 'fa fa-link');
INSERT INTO `mto_auth_menu` VALUES (46, '友情链接修改', NULL, 'friendLink:edit', 0, '', 45, NULL);
INSERT INTO `mto_auth_menu` VALUES (47, '友情链接查看', NULL, 'friendLink:view', 0, '', 45, NULL);

-- ----------------------------
-- Table structure for mto_channel
-- ----------------------------
DROP TABLE IF EXISTS `mto_channel`;
CREATE TABLE `mto_channel`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(5) NOT NULL,
  `thumbnail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_channel
-- ----------------------------
INSERT INTO `mto_channel` VALUES (1, 'banner', 'banner', 0, '', 4);
INSERT INTO `mto_channel` VALUES (2, 'blog', '博客', 0, '', 2);
INSERT INTO `mto_channel` VALUES (3, 'jotting', '随笔', 0, '', 1);
INSERT INTO `mto_channel` VALUES (4, 'share', '分享', 0, '', 0);
INSERT INTO `mto_channel` VALUES (5, 'Node', 'Node', 0, '', 6);
INSERT INTO `mto_channel` VALUES (6, 'JAVA', 'JAVA', 0, '/storage/thumbnails/_signature/37SN05FQ70MQFTVGTA86L77K1N.jpg', 5);

-- ----------------------------
-- Table structure for mto_comment
-- ----------------------------
DROP TABLE IF EXISTS `mto_comment`;
CREATE TABLE `mto_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `pid` bigint(20) NOT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IK_POST_ID`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_comment
-- ----------------------------
INSERT INTO `mto_comment` VALUES (1, 1, '(╯&deg;A&deg;)╯︵○○○|&acute;・&omega;・)ノ喜欢呀', '2019-06-22 22:49:10', 0, 1, 0);
INSERT INTO `mto_comment` VALUES (2, 1, '嘤嘤嘤', '2019-06-23 00:03:40', 0, 6, 0);
INSERT INTO `mto_comment` VALUES (3, 1, '&phi;(￣&nabla;￣o) 嘤嘤嘤', '2019-06-23 00:03:52', 0, 6, 0);
INSERT INTO `mto_comment` VALUES (4, 1, 'xx', '2019-06-23 09:14:31', 0, 12, 0);
INSERT INTO `mto_comment` VALUES (5, 1, 'xx', '2019-06-23 09:14:47', 4, 12, 0);
INSERT INTO `mto_comment` VALUES (6, 1, 'xx(&acute;இ皿இ｀)', '2019-06-23 09:31:20', 0, 15, 0);
INSERT INTO `mto_comment` VALUES (7, 1, '( ,,&acute;･&omega;･)ﾉ&quot;(&acute;っ&omega;･｀｡)', '2019-06-23 09:31:25', 0, 15, 0);
INSERT INTO `mto_comment` VALUES (8, 1, '|&acute;・&omega;・)ノ', '2019-06-23 09:31:42', 0, 10, 0);
INSERT INTO `mto_comment` VALUES (9, 1, '(ノ&deg;&omicron;&deg;)ノ', '2019-06-23 09:31:54', 0, 4, 0);
INSERT INTO `mto_comment` VALUES (10, 1, 'ヾ(≧&nabla;≦*)ゝ', '2019-06-23 09:32:20', 0, 13, 0);
INSERT INTO `mto_comment` VALUES (12, 2, 'xx', '2019-06-23 12:18:11', 0, 16, 0);

-- ----------------------------
-- Table structure for mto_comments
-- ----------------------------
DROP TABLE IF EXISTS `mto_comments`;
CREATE TABLE `mto_comments`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `pid` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `to_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_config
-- ----------------------------
DROP TABLE IF EXISTS `mto_config`;
CREATE TABLE `mto_config`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_99vo6d7ci4wlxruo3gd0q2jq8`(`key_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_config
-- ----------------------------
INSERT INTO `mto_config` VALUES (1, 'site_name', '0', 'Jinks');
INSERT INTO `mto_config` VALUES (2, 'site_welcomes', '0', 'Mtons, 轻松分享你的兴趣');
INSERT INTO `mto_config` VALUES (3, 'site_domain', '0', 'http://mtons.com');
INSERT INTO `mto_config` VALUES (4, 'site_keywords', '0', 'mtons,博客,社区,摄影,旅游,艺术,娱乐');
INSERT INTO `mto_config` VALUES (5, 'site_description', '0', 'Mtons, 轻松分享你的兴趣. 便捷的文字、图片发布,扁平化的响应式设计,美观、大气,是您记录生活的最佳选择');
INSERT INTO `mto_config` VALUES (6, 'site_editor', '1', 'ueditor');
INSERT INTO `mto_config` VALUES (7, 'site_metas', '0', '');
INSERT INTO `mto_config` VALUES (8, 'site_copyright', '0', '');
INSERT INTO `mto_config` VALUES (9, 'site_icp', '0', '');
INSERT INTO `mto_config` VALUES (10, 'site_advs_right', '0', '');

-- ----------------------------
-- Table structure for mto_favorite
-- ----------------------------
DROP TABLE IF EXISTS `mto_favorite`;
CREATE TABLE `mto_favorite`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NULL DEFAULT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IK_USER_ID`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_favorite
-- ----------------------------
INSERT INTO `mto_favorite` VALUES (1, '2019-06-22 23:41:11', 2, 1);
INSERT INTO `mto_favorite` VALUES (2, '2019-06-23 00:03:28', 6, 1);
INSERT INTO `mto_favorite` VALUES (3, '2019-06-23 10:00:12', 16, 2);
INSERT INTO `mto_favorite` VALUES (4, '2019-06-23 10:13:25', 1, 2);

-- ----------------------------
-- Table structure for mto_favors
-- ----------------------------
DROP TABLE IF EXISTS `mto_favors`;
CREATE TABLE `mto_favors`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NULL DEFAULT NULL,
  `own_id` bigint(20) NULL DEFAULT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_feeds
-- ----------------------------
DROP TABLE IF EXISTS `mto_feeds`;
CREATE TABLE `mto_feeds`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `own_id` bigint(20) NULL DEFAULT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_follows
-- ----------------------------
DROP TABLE IF EXISTS `mto_follows`;
CREATE TABLE `mto_follows`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NULL DEFAULT NULL,
  `follow_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_t38um6ivtsbk34xph98levx4x`(`follow_id`) USING BTREE,
  INDEX `FK_3grh3868ek909r524m0kphmux`(`user_id`) USING BTREE,
  CONSTRAINT `FK_3grh3868ek909r524m0kphmux` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_t38um6ivtsbk34xph98levx4x` FOREIGN KEY (`follow_id`) REFERENCES `mto_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKlbcc3hcj1cikyow8cvlk1eupe` FOREIGN KEY (`follow_id`) REFERENCES `mto_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKso66aluvvri4r5a5x3lh31t8s` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_friend_link
-- ----------------------------
DROP TABLE IF EXISTS `mto_friend_link`;
CREATE TABLE `mto_friend_link`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `site_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(11) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_group
-- ----------------------------
DROP TABLE IF EXISTS `mto_group`;
CREATE TABLE `mto_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key_` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_2s863lts1h6m7c30152262cvj`(`key_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_group
-- ----------------------------
INSERT INTO `mto_group` VALUES (1, 'blog', '博文', 0);
INSERT INTO `mto_group` VALUES (2, 'web', 'WEB', 0);
INSERT INTO `mto_group` VALUES (3, 'tutorial', '教程', 0);

-- ----------------------------
-- Table structure for mto_logs
-- ----------------------------
DROP TABLE IF EXISTS `mto_logs`;
CREATE TABLE `mto_logs`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` date NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `target_id` bigint(20) NULL DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_menu
-- ----------------------------
DROP TABLE IF EXISTS `mto_menu`;
CREATE TABLE `mto_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `target` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_message
-- ----------------------------
DROP TABLE IF EXISTS `mto_message`;
CREATE TABLE `mto_message`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NULL DEFAULT NULL,
  `event` int(11) NOT NULL,
  `from_id` bigint(20) NULL DEFAULT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_message
-- ----------------------------
INSERT INTO `mto_message` VALUES (1, '2019-06-22 22:49:10', 3, 1, 1, 1, 1);
INSERT INTO `mto_message` VALUES (2, '2019-06-22 23:41:12', 1, 1, 2, 1, 1);
INSERT INTO `mto_message` VALUES (3, '2019-06-23 00:03:28', 1, 1, 6, 1, 1);
INSERT INTO `mto_message` VALUES (4, '2019-06-23 00:03:40', 3, 1, 6, 1, 1);
INSERT INTO `mto_message` VALUES (5, '2019-06-23 00:03:52', 3, 1, 6, 1, 1);
INSERT INTO `mto_message` VALUES (6, '2019-06-23 09:14:33', 3, 1, 12, 1, 1);
INSERT INTO `mto_message` VALUES (7, '2019-06-23 09:14:48', 4, 1, 12, 1, 1);
INSERT INTO `mto_message` VALUES (8, '2019-06-23 09:31:20', 3, 1, 15, 1, 1);
INSERT INTO `mto_message` VALUES (9, '2019-06-23 09:31:25', 3, 1, 15, 1, 1);
INSERT INTO `mto_message` VALUES (10, '2019-06-23 09:31:42', 3, 1, 10, 1, 1);
INSERT INTO `mto_message` VALUES (11, '2019-06-23 09:31:54', 3, 1, 4, 1, 1);
INSERT INTO `mto_message` VALUES (12, '2019-06-23 09:32:20', 3, 1, 13, 1, 1);
INSERT INTO `mto_message` VALUES (13, '2019-06-23 09:32:31', 3, 1, 13, 1, 1);
INSERT INTO `mto_message` VALUES (14, '2019-06-23 10:00:14', 1, 2, 16, 0, 2);
INSERT INTO `mto_message` VALUES (15, '2019-06-23 10:13:26', 1, 2, 1, 1, 1);
INSERT INTO `mto_message` VALUES (16, '2019-06-23 12:18:11', 3, 2, 16, 0, 2);

-- ----------------------------
-- Table structure for mto_notify
-- ----------------------------
DROP TABLE IF EXISTS `mto_notify`;
CREATE TABLE `mto_notify`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NULL DEFAULT NULL,
  `event` int(11) NOT NULL,
  `from_id` bigint(20) NULL DEFAULT NULL,
  `own_id` bigint(20) NULL DEFAULT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_options
-- ----------------------------
DROP TABLE IF EXISTS `mto_options`;
CREATE TABLE `mto_options`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(5) NULL DEFAULT 0,
  `value` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_options
-- ----------------------------
INSERT INTO `mto_options` VALUES (1, 'site_name', 0, 'Mtons');
INSERT INTO `mto_options` VALUES (2, 'site_domain', 0, 'http://localhost:8080');
INSERT INTO `mto_options` VALUES (3, 'site_keywords', 0, 'mtons,博客,社区');
INSERT INTO `mto_options` VALUES (4, 'site_description', 0, 'Mtons, 做一个有内涵的技术社区');
INSERT INTO `mto_options` VALUES (5, 'site_metas', 0, '');
INSERT INTO `mto_options` VALUES (6, 'site_copyright', 0, 'Copyright © Mtons');
INSERT INTO `mto_options` VALUES (7, 'site_icp', 0, '沪ICP备陈春48号');
INSERT INTO `mto_options` VALUES (8, 'qq_callback', 0, 'http://localhost:8080/oauth/callback/qq');
INSERT INTO `mto_options` VALUES (9, 'qq_app_id', 0, '1109438805');
INSERT INTO `mto_options` VALUES (10, 'qq_app_key', 0, 'MBJSYnb07E56mFpw');
INSERT INTO `mto_options` VALUES (11, 'weibo_callback', 0, 'http://localhost:8080/oauth/callback/weibo');
INSERT INTO `mto_options` VALUES (12, 'weibo_client_id', 0, '1109438805');
INSERT INTO `mto_options` VALUES (13, 'weibo_client_sercret', 0, 'MBJSYnb07E56mFpw');
INSERT INTO `mto_options` VALUES (14, 'github_callback', 0, 'http://localhost:8080/oauth/callback/github');
INSERT INTO `mto_options` VALUES (15, 'github_client_id', 0, 'fe084ca90b815af1dbf4');
INSERT INTO `mto_options` VALUES (16, 'github_secret_key', 0, 'e33742b3633de9186afc8adf2cd99bbd2a01e83e');
INSERT INTO `mto_options` VALUES (17, 'theme', 0, 'default');
INSERT INTO `mto_options` VALUES (18, 'mail_smtp_host', 0, 'smtp.qq.com');
INSERT INTO `mto_options` VALUES (19, 'mail_smtp_password', 0, '123456');
INSERT INTO `mto_options` VALUES (20, 'mail_smtp_username', 0, '1669487366@qq.com');
INSERT INTO `mto_options` VALUES (21, 'site_logo', 0, '/dist/images/logo/logo.png');
INSERT INTO `mto_options` VALUES (22, 'editor', 0, 'tinymce');
INSERT INTO `mto_options` VALUES (23, 'site_favicon', 0, '/dist/images/logo/m.png');

-- ----------------------------
-- Table structure for mto_post
-- ----------------------------
DROP TABLE IF EXISTS `mto_post`;
CREATE TABLE `mto_post`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `channel_id` int(11) NULL DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `favors` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tags` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thumbnail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `views` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IK_CHANNEL_ID`(`channel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_post
-- ----------------------------
INSERT INTO `mto_post` VALUES (1, 1, 2, 1, '2019-06-22 22:40:38', 1, 0, 0, '电饭锅电饭锅对方给大家尽快答复技能就那么d.d.f， 是打发士大夫，是打发士大夫士大夫，水电费水电费是，水电费是打发士大夫，水电费，水电房租水电费还包括了程序则让考官框架内蓄积在监督管理总局在第三方合作深度发展速度快就的忠实的粉丝的。', '情感', '/storage/thumbnails/_signature/1L6VCBDPN6PLQ5J2TB9T3DF5K3.jpg', '爱上你是我的错', 19, 0);
INSERT INTO `mto_post` VALUES (2, 1, 2, 0, '2019-06-22 23:04:45', 1, 1, 0, 'Mblog 开源Java博客系统, 支持多用户, 支持切换主题       技术选型：  JDK8 MySQL Spring-boot Spring-data-jpa Shiro Lombok Freemarker Bootstrap SeaJs...', '', '/storage/thumbnails/_signature/1AL5UP72J9VL6OIS6BV7BMFI7I.jpg', 'js 设计模式--策略模式', 10, 1);
INSERT INTO `mto_post` VALUES (3, 1, 3, 0, '2019-06-22 23:52:48', 0, 0, 0, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '', '/storage/thumbnails/_signature/V4NMTR7IN9CSS81ATO4IUP1PG.jpg', 'nestjs', 1, 0);
INSERT INTO `mto_post` VALUES (4, 1, 4, 1, '2019-06-22 23:53:54', 0, 0, 0, 'xxxxxxxxxxx', '', '/storage/thumbnails/_signature/837NP1OJDG4QIKPUFGEU3B5KB.jpg', '我的博客', 3, 0);
INSERT INTO `mto_post` VALUES (5, 1, 1, 0, '2019-06-22 23:55:04', 0, 0, 0, 'xxx', '华语流行', '/storage/thumbnails/_signature/733P1E4M3DK76UB67LODAQ04A.jpg', '穿越时空的爱恋', 3, 0);
INSERT INTO `mto_post` VALUES (6, 1, 5, 2, '2019-06-23 00:00:49', 1, 0, 0, 'XXXXXXXXXXXXX', 'NodeJS ,NestJS,Express', '/storage/thumbnails/_signature/1L6VCBDPN6PLQ5J2TB9T3DF5K3.jpg', 'NODE', 12, 2);
INSERT INTO `mto_post` VALUES (7, 1, 6, 0, '2019-06-23 00:09:15', 0, 0, 0, 'xxxxxxxxxxxxxxxxxxxxxxxx', '', '/storage/thumbnails/_signature/837NP1OJDG4QIKPUFGEU3B5KB.jpg', 'mybatis框架', 1, 0);
INSERT INTO `mto_post` VALUES (8, 1, 4, 0, '2019-06-23 00:12:36', 0, 0, 0, 'xxxxxxxxxxxxxxx', '', '/storage/thumbnails/_signature/1KQJV2VK3KMTGNONEH4OGRTSFH.jpg', '111', 1, 0);
INSERT INTO `mto_post` VALUES (9, 1, 1, 0, '2019-06-23 00:22:50', 0, 0, 0, 'xxxxxxxxxx', '', '/storage/thumbnails/_signature/O1RRTEKBEJ6JBO2Q9PA5KI8JI.jpg', '情感经历', 0, 0);
INSERT INTO `mto_post` VALUES (10, 1, 2, 1, '2019-06-23 00:23:27', 0, 0, 0, 'xxxxxxxxxxxxx', '', '/storage/thumbnails/_signature/2GEUPBRPSL8J7K46VPV0KQ11IQ.jpg', '社交圈', 2, 0);
INSERT INTO `mto_post` VALUES (11, 1, 1, 0, '2019-06-23 00:24:33', 0, 0, 0, 'xxxxxxx', '', '/storage/thumbnails/_signature/2IUHGU2V7Q94BL3NH6LH7MMPAU.jpg', '嘤嘤怪', 1, 0);
INSERT INTO `mto_post` VALUES (12, 1, 1, 2, '2019-06-23 00:31:02', 0, 0, 0, 'xxxxxxxxxx', '', '/storage/thumbnails/_signature/2AHAHMF3P2GU5O3AGTRD7K2TPQ.jpg', 'Banner', 3, 0);
INSERT INTO `mto_post` VALUES (13, 1, 1, 2, '2019-06-23 00:31:49', 0, 0, 0, 'xxxxxxxx', '', '/storage/thumbnails/_signature/2VCJ2ABSJGBOEFB5S9JRI2PBS0.jpg', '恋恋', 3, 0);
INSERT INTO `mto_post` VALUES (14, 1, 1, 0, '2019-06-23 00:33:37', 0, 1, 0, 'xxxxxxxxxx', '', '/storage/thumbnails/_signature/3FJPV0IPJL0KNFDN6RFRTJ4O2P.jpg', '恋情', 2, 0);
INSERT INTO `mto_post` VALUES (15, 1, 1, 2, '2019-06-23 00:36:29', 0, 0, 0, 'xxxxxxxxx', '', '/storage/thumbnails/_signature/2EO24ETHRHNBMOSB761FNIGSJR.jpg', '恋心', 5, 0);
INSERT INTO `mto_post` VALUES (16, 2, 2, 1, '2019-06-23 09:58:00', 1, 0, 0, 'xxxxxxxx', '嘤嘤怪', '/storage/thumbnails/_signature/DNH73HL2B29HREV5JQJS2FUFL.jpg', '软件开发', 7, 0);

-- ----------------------------
-- Table structure for mto_post_attribute
-- ----------------------------
DROP TABLE IF EXISTS `mto_post_attribute`;
CREATE TABLE `mto_post_attribute`  (
  `id` bigint(20) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `editor` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'tinymce',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_post_attribute
-- ----------------------------
INSERT INTO `mto_post_attribute` VALUES (1, '  电饭锅电饭锅对方给大家尽快答复技能就那么d.d.f， 是打发士大夫，是打发士大夫士大夫，水电费水电费是，水电费是打发士大夫，水电费，水电房租水电费还包括了程序则让考官框架内蓄积在监督管理总局在第三方合作深度发展速度快就的忠实的粉丝的。\r\n  ![logo.png](/storage/thumbnails/_signature/1UN7GRSL5MGUCTDRGKBMQU91LH.png)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (2, '### Mblog 开源Java博客系统, 支持多用户, 支持切换主题\r\n\r\n[![Author](https://img.shields.io/badge/author-landy-green.svg?style=flat-square)](http://mtons.com)\r\n[![JDK](https://img.shields.io/badge/jdk-1.8-green.svg?style=flat-square)](#)\r\n[![Release](https://img.shields.io/github/release/langhsu/mblog.svg?style=flat-square)](https://github.com/langhsu/mblog)\r\n[![license](https://img.shields.io/badge/license-GPL--3.0-green.svg)](https://github.com/langhsu/mblog/blob/master/LICENSE)\r\n[![Docker](https://img.shields.io/docker/automated/langhsu/mblog.svg?style=flat-square)](https://hub.docker.com/r/langhsu/mblog)\r\n[![QQ群](https://img.shields.io/badge/chat-Mtons-green.svg)](https://jq.qq.com/?_wv=1027&k=521CRdF)\r\n\r\n### 技术选型：\r\n\r\n* JDK8\r\n* MySQL\r\n* Spring-boot\r\n* Spring-data-jpa\r\n* Shiro\r\n* Lombok\r\n* Freemarker\r\n* Bootstrap\r\n* SeaJs\r\n\r\n### 启动：\r\n - main方法运行\r\n ```xml\r\n 配置：src/main/resources/application-mysql.yml (数据库账号密码)、新建db_mblog的数据库\r\n 运行：src/main/java/com/mtons/mblog/BootApplication\r\n 访问：http://localhost:8080/\r\n 后台：http://localhost:8080/admin\r\n 账号：默认管理员账号为 admin/12345\r\n \r\n TIPS: \r\n 如遇到启动失败/切换环境变量后启动失败的,请先maven clean后再尝试启动\r\n IDE得装lombok插件\r\n```\r\n\r\n- 文档: [说明文档](https://langhsu.github.io/mblog/#/)\r\n- 官网: [官网地址](http://www.mtons.com)\r\n- QQ交流群：378433412\r\n    \r\n### 版本(3.5)更新内容：\r\n    1. 文件存储目录可配置, 见 site.location, 默认为 user.dir\r\n    2. 支持在${site.location}/storage/templates 目录下扩展自己的主题(${site.location}具体位置见启动日志)\r\n    3. 后台未配置对应第三方登录信息时, 前端不显示对应的按钮\r\n    4. 模板优化\r\n    5. 后台配置主题改为自动从目录中加载\r\n    6. 新增markdown编辑器, 可在后台选择tinymce/markdown\r\n    \r\n### 版本(3.0)更新内容：\r\n    1. 新增开关控制(注册开关, 发文开关, 评论开发)\r\n    2. 后台重写, 替换了所有后台页面功能更完善\r\n    3. 上传图片添加更多支持(本地/又拍云/阿里云/七牛云), 详情见后台系统配置\r\n    4. 升级为spring-boot2\r\n    5. 调整模板静态资源引用,方便扩展\r\n    6. 表名调整, 旧版本升级时请自行在数据库重命名, 详情见change.log\r\n    7. 重写了config(改为options), 可在applicaiton.yaml设置默认配置, 启动后将以options中配置为准\r\n    8. 支持后台设置主题\r\n    9. 去除了本地文件上传目录配置, 改为自动取项目运行目录(会在jar同级目录生成storeage和indexes目录)\r\n    10. 替换表单验证插件, 评论表情改为颜文字\r\n    11. 我的主页和Ta人主页合并\r\n    12. 优化了图片裁剪功能\r\n    13. 支持Docker, 详情见 https://hub.docker.com/r/langhsu/mblog\r\n    14. 邮件服务后台可配\r\n    15. 新增标签页\r\n    16. 新增注册邮箱验证开关(需要手动删除之前的 mto_security_code 表)\r\n\r\n\r\n * Youth主题v2 （支持响应式）[更新中...](https://gitee.com/cuiweiboy/youth)\r\n * Praise主题v1  （支持响应式）[更新中...](https://gitee.com/cuiweiboy/praise)\r\n * Delicate主题v1 （支持响应式）[更新中...](https://gitee.com/cuiweiboy/delicate)\r\n * Concise主题v2 （支持响应式）[更新中...](https://gitee.com/cuiweiboy/concise)\r\n       \r\n### 图片演示 \r\n\r\n## Praise主题\r\n\r\n ![输入图片说明](https://images.gitee.com/uploads/images/2019/0414/175116_449ed877_1758849.jpeg \"1.jpg\")\r\n ![输入图片说明](https://images.gitee.com/uploads/images/2019/0414/175353_6185e4f1_1758849.jpeg \"2.jpg\")\r\n\r\n## 后台管理\r\n ![输入图片说明](https://images.gitee.com/uploads/images/2019/0414/175438_f3bf5604_1758849.jpeg \"3.jpg\")\r\n\r\n## 响应式\r\n ![输入图片说明](https://images.gitee.com/uploads/images/2019/0414/175505_86e7a9d0_1758849.jpeg \"4.jpg\")\r\n ![输入图片说明](https://images.gitee.com/uploads/images/2019/0414/175555_7c74ef37_1758849.jpeg \"5.jpg\")\r\n\r\n## 默认主题\r\n\r\n ![输入图片说明](https://images.gitee.com/uploads/images/2019/0414/175618_4cc45d39_1758849.jpeg \"6.jpg\")\r\n\r\n## 经典主题\r\n ![输入图片说明](https://images.gitee.com/uploads/images/2019/0414/175658_78ebdc6e_1758849.jpeg \"7.jpg\")\r\n\r\n## Delicate主题\r\n ![输入图片说明](https://images.gitee.com/uploads/images/2019/0414/175717_46fc1496_1758849.jpeg \"8.jpg\")\r\n\r\n', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (3, 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (4, 'xxxxxxxxxxx', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (5, 'xxx', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (6, 'XXXXXXXXXXXXX', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (7, ' xxxxxxxxxxxxxxxxxxxxxxxx', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (8, 'xxxxxxxxxxxxxxx', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (9, 'xxxxxxxxxx ', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (10, 'xxxxxxxxxxxxx', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (11, 'xxxxxxx', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (12, 'xxxxxxxxxx \r\n![13.jpg](/storage/thumbnails/_signature/7BEE98PS74CMVIO0RJ2KG2DDM.jpg)', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (13, 'xxxxxxxx', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (14, 'xxxxxxxxxx', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (15, 'xxxxxxxxx', 'markdown');
INSERT INTO `mto_post_attribute` VALUES (16, 'xxxxxxxx \r\n![u=3044695590,2876139278&fm=26&gp=0.jpg](/storage/thumbnails/_signature/B7HF8NKMLOGV4S6NC6GS10PU4.jpg)', 'markdown');

-- ----------------------------
-- Table structure for mto_post_resource
-- ----------------------------
DROP TABLE IF EXISTS `mto_post_resource`;
CREATE TABLE `mto_post_resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `resource_id` bigint(20) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IK_POST_ID`(`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_post_resource
-- ----------------------------
INSERT INTO `mto_post_resource` VALUES (1, '/storage/thumbnails/_signature/1UN7GRSL5MGUCTDRGKBMQU91LH.png', 1, 2, 0);
INSERT INTO `mto_post_resource` VALUES (2, '/storage/thumbnails/_signature/7BEE98PS74CMVIO0RJ2KG2DDM.jpg', 12, 15, 0);
INSERT INTO `mto_post_resource` VALUES (3, '/storage/thumbnails/_signature/B7HF8NKMLOGV4S6NC6GS10PU4.jpg', 16, 22, 0);

-- ----------------------------
-- Table structure for mto_post_tag
-- ----------------------------
DROP TABLE IF EXISTS `mto_post_tag`;
CREATE TABLE `mto_post_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) NULL DEFAULT NULL,
  `tag_id` bigint(20) NULL DEFAULT NULL,
  `weight` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `IK_TAG_ID`(`tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_post_tag
-- ----------------------------
INSERT INTO `mto_post_tag` VALUES (1, 1, 1, 1561219365757);
INSERT INTO `mto_post_tag` VALUES (2, 5, 2, 1561220054718);
INSERT INTO `mto_post_tag` VALUES (3, 6, 3, 1561219285608);
INSERT INTO `mto_post_tag` VALUES (4, 6, 4, 1561219285615);
INSERT INTO `mto_post_tag` VALUES (5, 6, 5, 1561219285620);
INSERT INTO `mto_post_tag` VALUES (6, 16, 6, 1561263645767);

-- ----------------------------
-- Table structure for mto_posts
-- ----------------------------
DROP TABLE IF EXISTS `mto_posts`;
CREATE TABLE `mto_posts`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author_id` bigint(20) NULL DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `editor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `favors` int(11) NOT NULL,
  `featured` int(11) NOT NULL,
  `group_` int(11) NULL DEFAULT NULL,
  `images` int(11) NOT NULL,
  `last_image_id` bigint(20) NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `views` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_posts_attach
-- ----------------------------
DROP TABLE IF EXISTS `mto_posts_attach`;
CREATE TABLE `mto_posts_attach`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `height` int(11) NOT NULL,
  `original` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `screenshot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `to_id` bigint(20) NULL DEFAULT NULL,
  `width` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_posts_attribute
-- ----------------------------
DROP TABLE IF EXISTS `mto_posts_attribute`;
CREATE TABLE `mto_posts_attribute`  (
  `id` bigint(20) NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_resource
-- ----------------------------
DROP TABLE IF EXISTS `mto_resource`;
CREATE TABLE `mto_resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` bigint(20) NOT NULL DEFAULT 0,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `md5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_MD5`(`md5`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_resource
-- ----------------------------
INSERT INTO `mto_resource` VALUES (1, 0, NULL, '2L3L6BC1U7LOP4GH6QQ6ND42FV', '/storage/thumbnails/_signature/2L3L6BC1U7LOP4GH6QQ6ND42FV.png', '2019-06-22 22:40:00');
INSERT INTO `mto_resource` VALUES (2, 1, NULL, '1UN7GRSL5MGUCTDRGKBMQU91LH', '/storage/thumbnails/_signature/1UN7GRSL5MGUCTDRGKBMQU91LH.png', '2019-06-22 22:41:59');
INSERT INTO `mto_resource` VALUES (3, 0, NULL, 'F707ODFAMCHHOIP6RBR1KPHUO', '/storage/thumbnails/_signature/F707ODFAMCHHOIP6RBR1KPHUO.png', '2019-06-22 22:53:34');
INSERT INTO `mto_resource` VALUES (4, 0, NULL, '1L6VCBDPN6PLQ5J2TB9T3DF5K3', '/storage/thumbnails/_signature/1L6VCBDPN6PLQ5J2TB9T3DF5K3.jpg', '2019-06-23 00:01:05');
INSERT INTO `mto_resource` VALUES (5, 0, NULL, '37SN05FQ70MQFTVGTA86L77K1N', '/storage/thumbnails/_signature/37SN05FQ70MQFTVGTA86L77K1N.jpg', '2019-06-23 00:08:19');
INSERT INTO `mto_resource` VALUES (6, 0, NULL, '1KQJV2VK3KMTGNONEH4OGRTSFH', '/storage/thumbnails/_signature/1KQJV2VK3KMTGNONEH4OGRTSFH.jpg', '2019-06-23 00:12:33');
INSERT INTO `mto_resource` VALUES (7, 0, NULL, '733P1E4M3DK76UB67LODAQ04A', '/storage/thumbnails/_signature/733P1E4M3DK76UB67LODAQ04A.jpg', '2019-06-23 00:14:12');
INSERT INTO `mto_resource` VALUES (8, 0, NULL, '1AL5UP72J9VL6OIS6BV7BMFI7I', '/storage/thumbnails/_signature/1AL5UP72J9VL6OIS6BV7BMFI7I.jpg', '2019-06-23 00:15:51');
INSERT INTO `mto_resource` VALUES (9, 0, NULL, '837NP1OJDG4QIKPUFGEU3B5KB', '/storage/thumbnails/_signature/837NP1OJDG4QIKPUFGEU3B5KB.jpg', '2019-06-23 00:17:59');
INSERT INTO `mto_resource` VALUES (10, 0, NULL, 'GO0LA574080G33NJE9VTBOQUI', '/storage/thumbnails/_signature/GO0LA574080G33NJE9VTBOQUI.jpg', '2019-06-23 00:18:12');
INSERT INTO `mto_resource` VALUES (11, 0, NULL, 'V4NMTR7IN9CSS81ATO4IUP1PG', '/storage/thumbnails/_signature/V4NMTR7IN9CSS81ATO4IUP1PG.jpg', '2019-06-23 00:19:16');
INSERT INTO `mto_resource` VALUES (12, 0, NULL, 'O1RRTEKBEJ6JBO2Q9PA5KI8JI', '/storage/thumbnails/_signature/O1RRTEKBEJ6JBO2Q9PA5KI8JI.jpg', '2019-06-23 00:22:44');
INSERT INTO `mto_resource` VALUES (13, 0, NULL, '2GEUPBRPSL8J7K46VPV0KQ11IQ', '/storage/thumbnails/_signature/2GEUPBRPSL8J7K46VPV0KQ11IQ.jpg', '2019-06-23 00:23:20');
INSERT INTO `mto_resource` VALUES (14, 0, NULL, '2IUHGU2V7Q94BL3NH6LH7MMPAU', '/storage/thumbnails/_signature/2IUHGU2V7Q94BL3NH6LH7MMPAU.jpg', '2019-06-23 00:24:30');
INSERT INTO `mto_resource` VALUES (15, 1, NULL, '7BEE98PS74CMVIO0RJ2KG2DDM', '/storage/thumbnails/_signature/7BEE98PS74CMVIO0RJ2KG2DDM.jpg', '2019-06-23 00:31:02');
INSERT INTO `mto_resource` VALUES (16, 0, NULL, '2AHAHMF3P2GU5O3AGTRD7K2TPQ', '/storage/thumbnails/_signature/2AHAHMF3P2GU5O3AGTRD7K2TPQ.jpg', '2019-06-23 00:31:00');
INSERT INTO `mto_resource` VALUES (17, 0, NULL, '12GE41M7NE1QH5TN89V5GNTELR', '/storage/thumbnails/_signature/12GE41M7NE1QH5TN89V5GNTELR.jpg', '2019-06-23 00:31:47');
INSERT INTO `mto_resource` VALUES (18, 0, NULL, '2VCJ2ABSJGBOEFB5S9JRI2PBS0', '/storage/thumbnails/_signature/2VCJ2ABSJGBOEFB5S9JRI2PBS0.jpg', '2019-06-23 00:32:31');
INSERT INTO `mto_resource` VALUES (19, 0, NULL, '3FJPV0IPJL0KNFDN6RFRTJ4O2P', '/storage/thumbnails/_signature/3FJPV0IPJL0KNFDN6RFRTJ4O2P.jpg', '2019-06-23 00:33:34');
INSERT INTO `mto_resource` VALUES (20, 0, NULL, '2EO24ETHRHNBMOSB761FNIGSJR', '/storage/thumbnails/_signature/2EO24ETHRHNBMOSB761FNIGSJR.jpg', '2019-06-23 00:36:24');
INSERT INTO `mto_resource` VALUES (21, 0, NULL, 'DNH73HL2B29HREV5JQJS2FUFL', '/storage/thumbnails/_signature/DNH73HL2B29HREV5JQJS2FUFL.jpg', '2019-06-23 09:57:38');
INSERT INTO `mto_resource` VALUES (22, 1, NULL, 'B7HF8NKMLOGV4S6NC6GS10PU4', '/storage/thumbnails/_signature/B7HF8NKMLOGV4S6NC6GS10PU4.jpg', '2019-06-23 12:20:45');

-- ----------------------------
-- Table structure for mto_role
-- ----------------------------
DROP TABLE IF EXISTS `mto_role`;
CREATE TABLE `mto_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_role
-- ----------------------------
INSERT INTO `mto_role` VALUES (1, '管理员');
INSERT INTO `mto_role` VALUES (2, '普通用户');
INSERT INTO `mto_role` VALUES (3, '半个管理员');

-- ----------------------------
-- Table structure for mto_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `mto_role_menu`;
CREATE TABLE `mto_role_menu`  (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  INDEX `FK_td8ih8aorlkpyop3gemfqxmbt`(`menu_id`) USING BTREE,
  INDEX `FK_5o5vaxfyg0d1qa0142dnkruiv`(`role_id`) USING BTREE,
  CONSTRAINT `FK1enh5yen34dpmson36gn7peq2` FOREIGN KEY (`menu_id`) REFERENCES `mto_auth_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK4c4m4bpj3t1f4ovq7y36n5dq7` FOREIGN KEY (`role_id`) REFERENCES `mto_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_role_menu
-- ----------------------------
INSERT INTO `mto_role_menu` VALUES (1, 1);
INSERT INTO `mto_role_menu` VALUES (1, 2);
INSERT INTO `mto_role_menu` VALUES (1, 4);
INSERT INTO `mto_role_menu` VALUES (1, 8);
INSERT INTO `mto_role_menu` VALUES (1, 11);
INSERT INTO `mto_role_menu` VALUES (1, 15);
INSERT INTO `mto_role_menu` VALUES (1, 17);
INSERT INTO `mto_role_menu` VALUES (1, 35);
INSERT INTO `mto_role_menu` VALUES (1, 41);
INSERT INTO `mto_role_menu` VALUES (1, 45);
INSERT INTO `mto_role_menu` VALUES (1, 5);
INSERT INTO `mto_role_menu` VALUES (1, 6);
INSERT INTO `mto_role_menu` VALUES (1, 9);
INSERT INTO `mto_role_menu` VALUES (1, 10);
INSERT INTO `mto_role_menu` VALUES (1, 12);
INSERT INTO `mto_role_menu` VALUES (1, 13);
INSERT INTO `mto_role_menu` VALUES (1, 16);
INSERT INTO `mto_role_menu` VALUES (1, 18);
INSERT INTO `mto_role_menu` VALUES (1, 19);
INSERT INTO `mto_role_menu` VALUES (1, 20);
INSERT INTO `mto_role_menu` VALUES (1, 36);
INSERT INTO `mto_role_menu` VALUES (1, 37);
INSERT INTO `mto_role_menu` VALUES (1, 42);
INSERT INTO `mto_role_menu` VALUES (1, 43);
INSERT INTO `mto_role_menu` VALUES (1, 46);
INSERT INTO `mto_role_menu` VALUES (1, 47);

-- ----------------------------
-- Table structure for mto_security_code
-- ----------------------------
DROP TABLE IF EXISTS `mto_security_code`;
CREATE TABLE `mto_security_code`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime(0) NULL,
  `expired` datetime(0) NULL,
  `key_` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NULL DEFAULT NULL,
  `target` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_shxjkbkgnpxa80pnv4ts57o19`(`key_`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_security_code
-- ----------------------------
INSERT INTO `mto_security_code` VALUES (1, '420012', '2019-06-22 22:46:06', '2019-06-22 23:16:06', '1', 0, '1669487366@qq.com', 1);
INSERT INTO `mto_security_code` VALUES (2, '607258', '2019-06-23 20:15:02', '2019-06-23 20:45:02', '3', 0, '1669487366@qq.com', 1);

-- ----------------------------
-- Table structure for mto_tag
-- ----------------------------
DROP TABLE IF EXISTS `mto_tag`;
CREATE TABLE `mto_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `latest_post_id` bigint(20) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `posts` int(11) NOT NULL,
  `thumbnail` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_9ki38gg59bw5agwxsc4xtednf`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_tag
-- ----------------------------
INSERT INTO `mto_tag` VALUES (1, '2019-06-22 22:40:38', NULL, 1, '情感', 1, NULL, '2019-06-22 22:40:38');
INSERT INTO `mto_tag` VALUES (2, '2019-06-22 23:55:04', NULL, 5, '华语流行', 1, NULL, '2019-06-22 23:55:04');
INSERT INTO `mto_tag` VALUES (3, '2019-06-23 00:00:49', NULL, 6, 'NodeJS', 1, NULL, '2019-06-23 00:00:49');
INSERT INTO `mto_tag` VALUES (4, '2019-06-23 00:00:49', NULL, 6, 'NestJS', 1, NULL, '2019-06-23 00:00:49');
INSERT INTO `mto_tag` VALUES (5, '2019-06-23 00:00:49', NULL, 6, 'Express', 1, NULL, '2019-06-23 00:00:49');
INSERT INTO `mto_tag` VALUES (6, '2019-06-23 09:58:00', NULL, 16, '嘤嘤怪', 1, NULL, '2019-06-23 09:58:00');

-- ----------------------------
-- Table structure for mto_user
-- ----------------------------
DROP TABLE IF EXISTS `mto_user`;
CREATE TABLE `mto_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/dist/images/ava/default.png',
  `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(5) NOT NULL,
  `created` datetime(0) NULL DEFAULT NULL,
  `updated` datetime(0) NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `gender` int(5) NOT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `posts` int(11) NOT NULL,
  `signature` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_USERNAME`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_user
-- ----------------------------
INSERT INTO `mto_user` VALUES (1, 'admin', '初末流年', '/storage/avatars/000/000/001_240.jpg', 'example@mtons.com', '15V7JP8CHR8KS8BT8O3SDM4J8B', 0, '2017-08-06 17:52:41', '2017-07-26 11:08:36', '2019-06-23 20:18:42', 0, 1, 10, 15, '');
INSERT INTO `mto_user` VALUES (2, 'admins', 'admins', '/storage/avatars/000/000/002_240.jpg', NULL, 'UUKHSDDI5KPA43A8VL06V0TU2', 0, '2019-06-22 23:14:19', NULL, '2019-06-23 12:20:46', 0, NULL, 1, 1, NULL);
INSERT INTO `mto_user` VALUES (3, 'GITHUB507536626', '流年githu', '/storage/avatars/000/000/003_240.jpg', NULL, '26JV8FENG24FD8NMDNV0KDAEPF', 0, '2019-06-23 20:14:08', NULL, '2019-06-23 22:08:48', 0, NULL, 0, 0, '');

-- ----------------------------
-- Table structure for mto_user_oauth
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_oauth`;
CREATE TABLE `mto_user_oauth`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `access_token` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expire_in` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oauth_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oauth_type` int(11) NULL DEFAULT NULL,
  `oauth_user_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `refresh_token` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_user_oauth
-- ----------------------------
INSERT INTO `mto_user_oauth` VALUES (1, 3, '1bb41deb84278ae8896852c85525b8c051a92a9b', 'Sinks', NULL, 4, 'MDQ6VXNlcjMxODIxNzE0', '');

-- ----------------------------
-- Table structure for mto_user_role
-- ----------------------------
DROP TABLE IF EXISTS `mto_user_role`;
CREATE TABLE `mto_user_role`  (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  INDEX `FK_fhtla2vc199mv0ru2r2kvakha`(`role_id`) USING BTREE,
  INDEX `FK_b4m7ef0uvkr4efrscf8r1ehy2`(`user_id`) USING BTREE,
  CONSTRAINT `FK_b4m7ef0uvkr4efrscf8r1ehy2` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_fhtla2vc199mv0ru2r2kvakha` FOREIGN KEY (`role_id`) REFERENCES `mto_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKi5bot5saeg7e7fkjleer6cl0q` FOREIGN KEY (`user_id`) REFERENCES `mto_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKklvl5j02s6eorfu88bbvr2e7x` FOREIGN KEY (`role_id`) REFERENCES `mto_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_user_role
-- ----------------------------
INSERT INTO `mto_user_role` VALUES (1, 1);

-- ----------------------------
-- Table structure for mto_users
-- ----------------------------
DROP TABLE IF EXISTS `mto_users`;
CREATE TABLE `mto_users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created` datetime(0) NULL DEFAULT NULL,
  `email` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/assets/images/ava/default.png',
  `updated` datetime(0) NULL DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `source` int(11) NOT NULL,
  `active_email` int(11) NULL DEFAULT NULL,
  `comments` int(11) NOT NULL,
  `fans` int(11) NOT NULL,
  `favors` int(11) NOT NULL,
  `follows` int(11) NOT NULL,
  `posts` int(11) NOT NULL,
  `signature` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mto_users
-- ----------------------------
INSERT INTO `mto_users` VALUES (1, '2015-08-06 17:52:41', 'admin@mtons.com', '2017-09-29 17:25:22', NULL, '3TGCQF25BLHU9R7IQUITN0FCC5', 0, 'admin', '小豆丁', '/assets/images/ava/default.png', '2015-07-26 11:08:36', 0, 1, 0, 1, 0, 0, 0, 0, 4, NULL);

-- ----------------------------
-- Table structure for mto_users_open_oauth
-- ----------------------------
DROP TABLE IF EXISTS `mto_users_open_oauth`;
CREATE TABLE `mto_users_open_oauth`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expire_in` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oauth_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oauth_type` int(11) NULL DEFAULT NULL,
  `oauth_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `refresh_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mto_verify
-- ----------------------------
DROP TABLE IF EXISTS `mto_verify`;
CREATE TABLE `mto_verify`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created` datetime(0) NULL,
  `expired` datetime(0) NULL,
  `status` int(11) NULL DEFAULT NULL,
  `target` varchar(96) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` int(11) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_m7p0b526c4xlgjn787t22om2g`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shiro_permission
-- ----------------------------
DROP TABLE IF EXISTS `shiro_permission`;
CREATE TABLE `shiro_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` bigint(11) NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `UK_NAME`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shiro_permission
-- ----------------------------
INSERT INTO `shiro_permission` VALUES (1, '进入后台', 'admin', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (2, '栏目管理', 'channel:list', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (3, '编辑栏目', 'channel:update', 2, 0, 0);
INSERT INTO `shiro_permission` VALUES (4, '删除栏目', 'channel:delete', 2, 0, 0);
INSERT INTO `shiro_permission` VALUES (5, '文章管理', 'post:list', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (6, '编辑文章', 'post:update', 5, 0, 0);
INSERT INTO `shiro_permission` VALUES (7, '删除文章', 'post:delete', 5, 0, 0);
INSERT INTO `shiro_permission` VALUES (8, '评论管理', 'comment:list', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (9, '删除评论', 'comment:delete', 8, 0, 0);
INSERT INTO `shiro_permission` VALUES (10, '用户管理', 'user:list', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (11, '用户授权', 'user:role', 10, 0, 0);
INSERT INTO `shiro_permission` VALUES (12, '修改密码', 'user:pwd', 10, 0, 0);
INSERT INTO `shiro_permission` VALUES (13, '激活用户', 'user:open', 10, 0, 0);
INSERT INTO `shiro_permission` VALUES (14, '关闭用户', 'user:close', 10, 0, 0);
INSERT INTO `shiro_permission` VALUES (15, '角色管理', 'role:list', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (16, '修改角色', 'role:update', 15, 0, 0);
INSERT INTO `shiro_permission` VALUES (17, '删除角色', 'role:delete', 15, 0, 0);
INSERT INTO `shiro_permission` VALUES (18, '主题管理', 'theme:index', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (19, '系统配置', 'options:index', 0, 0, 0);
INSERT INTO `shiro_permission` VALUES (20, '修改配置', 'options:update', 19, 0, 0);

-- ----------------------------
-- Table structure for shiro_role
-- ----------------------------
DROP TABLE IF EXISTS `shiro_role`;
CREATE TABLE `shiro_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shiro_role
-- ----------------------------
INSERT INTO `shiro_role` VALUES (1, NULL, 'admin', 0);
INSERT INTO `shiro_role` VALUES (2, NULL, '初末流年', 0);

-- ----------------------------
-- Table structure for shiro_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `shiro_role_permission`;
CREATE TABLE `shiro_role_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shiro_role_permission
-- ----------------------------
INSERT INTO `shiro_role_permission` VALUES (1, 1, 1);
INSERT INTO `shiro_role_permission` VALUES (2, 2, 1);
INSERT INTO `shiro_role_permission` VALUES (3, 3, 1);
INSERT INTO `shiro_role_permission` VALUES (4, 4, 1);
INSERT INTO `shiro_role_permission` VALUES (5, 5, 1);
INSERT INTO `shiro_role_permission` VALUES (6, 6, 1);
INSERT INTO `shiro_role_permission` VALUES (7, 7, 1);
INSERT INTO `shiro_role_permission` VALUES (8, 8, 1);
INSERT INTO `shiro_role_permission` VALUES (9, 9, 1);
INSERT INTO `shiro_role_permission` VALUES (10, 10, 1);
INSERT INTO `shiro_role_permission` VALUES (11, 11, 1);
INSERT INTO `shiro_role_permission` VALUES (12, 12, 1);
INSERT INTO `shiro_role_permission` VALUES (13, 13, 1);
INSERT INTO `shiro_role_permission` VALUES (14, 14, 1);
INSERT INTO `shiro_role_permission` VALUES (15, 15, 1);
INSERT INTO `shiro_role_permission` VALUES (16, 16, 1);
INSERT INTO `shiro_role_permission` VALUES (17, 17, 1);
INSERT INTO `shiro_role_permission` VALUES (18, 18, 1);
INSERT INTO `shiro_role_permission` VALUES (19, 19, 1);
INSERT INTO `shiro_role_permission` VALUES (20, 20, 1);
INSERT INTO `shiro_role_permission` VALUES (21, 1, 2);
INSERT INTO `shiro_role_permission` VALUES (22, 10, 2);
INSERT INTO `shiro_role_permission` VALUES (23, 4, 2);
INSERT INTO `shiro_role_permission` VALUES (24, 3, 2);
INSERT INTO `shiro_role_permission` VALUES (25, 5, 2);
INSERT INTO `shiro_role_permission` VALUES (26, 2, 2);
INSERT INTO `shiro_role_permission` VALUES (27, 8, 2);

-- ----------------------------
-- Table structure for shiro_user_role
-- ----------------------------
DROP TABLE IF EXISTS `shiro_user_role`;
CREATE TABLE `shiro_user_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shiro_user_role
-- ----------------------------
INSERT INTO `shiro_user_role` VALUES (1, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
