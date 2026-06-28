/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80034
 Source Host           : localhost:3306
 Source Schema         : huike_simple

 Target Server Type    : MySQL
 Target Server Version : 80034
 File Encoding         : 65001

 Date: 28/05/2026 06:35:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `mybatis_review`;
CREATE TABLE `mybatis_review` (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `age` int(0) NOT NULL COMMENT '年龄',
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '男' COMMENT '性别',
  `create_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '创建人',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '修改人',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

INSERT INTO `mybatis_review` VALUES (1, '张三', 18, '男', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (2, '李四', 19, '男', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (4, '王五', 20, '男', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (5, '赵六', 21, '男', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (6, '孙七', 22, '女', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (7, '周八', 23, '女', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (8, '吴九', 24, '女', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (9, '郑十', 25, '女', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (10, '刘一', 17, '女', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (11, '陈二', 16, '女', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (18, '吴思远', 18, '男', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (19, '吴思远', 18, '女', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (21, '吴思远', 18, '女', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (22, '吴思远', 18, '男', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');
INSERT INTO `mybatis_review` VALUES (23, '吴思远', 18, '女', '1', '2026-04-09 00:00:00', '1', '2026-04-17 00:00:00');

DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_bin COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2026-04-17 00:00:00', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2026-04-17 00:00:00', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2026-04-17 00:00:00', '', NULL, '深色主题theme-dark，浅色主题theme-light');

DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(12) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE,
  UNIQUE INDEX `sys_dept_dept_name_uindex`(`dept_name`) USING BTREE
);

-- 完整SQL脚本见本地 database.sql 文件（约2800行，包含所有表结构和数据）
-- 以上为建表语句示例
