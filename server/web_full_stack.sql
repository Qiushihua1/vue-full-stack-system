
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `role` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'text' COMMENT '角色',
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `menu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES (1, 'admin', 'admin权限，拥有所有页面的所有权限', NULL);
INSERT INTO `tb_role` VALUES (2, 'text', '普通用户，拥有一些常规权限', NULL);
INSERT INTO `tb_role` VALUES (3, 'editor', '作家，只拥有富文本等权限', NULL);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `createTime` datetime(0) NOT NULL COMMENT '创建日期',
  `updateTime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改日期',
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `role` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'text' COMMENT '权限',
  `flag` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'admin', '123456', '13999999999', '2022-01-13 15:26:30', '2022-01-13 15:26:30', '系统管理员，拥有所有权限', 'admin', 1);
INSERT INTO `tb_user` VALUES (2, 'test', '123456', '13888888888', '2022-01-13 15:26:30', '2022-01-13 15:26:30', 'admin签约金牌作家--马老师', 'test', 1);
INSERT INTO `tb_user` VALUES (3, 'editor', '123456', '13777777777', '2022-01-13 15:26:30', '2022-01-13 15:26:30', '死亡如风，常伴吾身', 'editor', 1);
INSERT INTO `tb_user` VALUES (30, '测试管理员', '1111111111', '13333333333', '2022-01-13 15:26:30', '2022-01-13 15:26:30', '测试', 'test', 1);
INSERT INTO `tb_user` VALUES (31, '测试管理员1', '123456', '14111111111', '2022-01-13 15:26:30', '2022-01-13 15:26:30', '测试', 'test', 1);
INSERT INTO `tb_user` VALUES (32, '测试管理员2', '123456', '15444444444', '2022-01-13 15:26:30', '2022-01-13 15:26:30', '测试', 'test', 1);
INSERT INTO `tb_user` VALUES (33, '测试管理员3', '123456', '15666666666', '2022-01-13 15:26:30', '2022-01-13 15:26:30', '测试', 'admin', 1);
INSERT INTO `tb_user` VALUES (34, '测试管理员4', '123456', '15888888888', '2022-01-13 15:26:30', '2022-01-13 15:26:30', '测试', 'test', 1);
INSERT INTO `tb_user` VALUES (35, '测试管理员5', '123456', '18888888888', '2022-01-13 15:26:30', '2022-01-13 15:26:30', '测试', 'admin', 1);
INSERT INTO `tb_user` VALUES (36, '测试管理员6', '123456', '18666666666', '2022-01-13 15:26:50', '2022-01-13 15:26:50', '测试', 'admin', 1);
INSERT INTO `tb_user` VALUES (37, '测试管理员7', '123456789', '17777777777', '2022-01-13 15:26:30', '2022-01-13 15:26:30', '测试', 'editor', 1);

-- ----------------------------
-- Table structure for tb_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_userinfo`;
CREATE TABLE `tb_userinfo`  (
  `id` int(11) NOT NULL,
  `username` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `role` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'test' COMMENT '权限',
  `location` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Wuhan' COMMENT '城市',
  `position` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无' COMMENT '职位',
  `label` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无' COMMENT '标签',
  `skill` varchar(155) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '暂无' COMMENT '技能',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_userinfo
-- ----------------------------
INSERT INTO `tb_userinfo` VALUES (1, 'admin', 'admin', 'Shenzhen', '搬砖人（小黑子）', '努力搬砖的打工人', '唱，跳，rap，篮球，music');
INSERT INTO `tb_userinfo` VALUES (2, 'test', 'test', 'Beijing', '大佬', '给我一个面子', '面子果实');
INSERT INTO `tb_userinfo` VALUES (3, 'editor', 'editor', 'Beijing', '大佬', '暂无', '暂无');
INSERT INTO `tb_userinfo` VALUES (30, 'gist006', 'test', 'ShangHai', '大佬', '月入40w', '996');

SET FOREIGN_KEY_CHECKS = 1;
