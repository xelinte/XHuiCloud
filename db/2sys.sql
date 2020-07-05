USE sys;
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_client_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_client_details`;
CREATE TABLE `sys_client_details` (
  `client_id` varchar(256) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int DEFAULT NULL,
  `refresh_token_validity` int DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_client_details
-- ----------------------------
BEGIN;
INSERT INTO `sys_client_details` VALUES ('web', NULL, '$2a$10$IMcVKbShh6vwqHV6bJoZO.xgQ8wJXXRMqYvTczdkJVBjbaBkkC3da', 'all', 'password,authorization_code,refresh_token', 'https://www.baidu.com', NULL, 3600, NULL, '{\"home\":\"https://www.baidu.com\",\"name\":\"百度\"}', 'false');
INSERT INTO `sys_client_details` VALUES ('WkRKV2FRJTNEJTNE', '', '$2a$10$xP0Iv4Pd4kn.7msrJOCiC.ttRprLRk2fo3xbCdmPPLYuDo/H4gcdq', 'all', 'password,authorization_code,refresh_token', 'https://www.baidu.com', NULL, 3600, NULL, '{\"home\":\"https://www.baidu.com\",\"name\":\"百度\"}', 'false');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` int NOT NULL COMMENT '部门id',
  `name` varchar(50) NOT NULL COMMENT '部门名称',
  `address` varchar(100) DEFAULT NULL COMMENT '区域、地址、工位',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '上级ID',
  `sort` int DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` int NOT NULL DEFAULT '1' COMMENT '0: 禁用 1：启用',
  `tenant_id` int DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='部门';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_dept` VALUES (1, '董事会', NULL, 0, 1, '2020-03-21 15:17:09', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (2, '总经理', NULL, 1, 1, '2020-03-21 15:18:17', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (3, '营销策划中心', NULL, 2, 1, '2020-03-21 15:18:49', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (4, '工程管理中心', NULL, 2, 2, '2020-03-21 15:19:48', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (5, '运营中心', NULL, 2, 3, '2020-03-21 15:20:32', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (6, '财务中心', NULL, 2, 4, '2020-03-21 15:20:58', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (7, '行政人力资源中心', NULL, 2, 5, '2020-03-21 15:21:33', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (8, '策划部', NULL, 3, 1, '2020-03-21 15:22:13', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (9, '销售部', NULL, 3, 2, '2020-03-21 15:22:30', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (10, '项目开发部', NULL, 4, 1, '2020-03-21 15:22:52', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (11, '设计部', NULL, 4, 2, '2020-03-21 15:23:30', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (12, '工程部', NULL, 4, 3, '2020-03-21 15:24:00', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (13, '总工室', NULL, 4, 4, '2020-03-21 15:24:15', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (14, '项目一部', NULL, 4, 5, '2020-03-21 15:24:52', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (15, '战略投资部', NULL, 5, 1, '2020-03-21 15:25:38', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (16, '法律事务部', NULL, 5, 2, '2020-03-21 15:25:48', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (17, '财务部', NULL, 6, 1, '2020-03-21 15:26:17', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (18, '融资部', NULL, 6, 2, '2020-03-21 15:26:38', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (19, '人力资源部', NULL, 7, 1, '2020-03-21 15:27:47', '2020-05-11 18:31:20', 1, 1);
INSERT INTO `sys_dept` VALUES (20, '行政部', NULL, 7, 2, '2020-03-21 15:27:59', '2020-05-11 18:31:20', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` int NOT NULL COMMENT '字典项主键',
  `type` varchar(100) NOT NULL COMMENT '字典项类型',
  `description` varchar(200) NOT NULL COMMENT '字典项描述',
  `remark` varchar(255) DEFAULT NULL COMMENT '字典项备注',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_id` int NOT NULL COMMENT '创建者id',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_id` int DEFAULT NULL COMMENT '更新者id',
  `del_flag` int NOT NULL DEFAULT '1' COMMENT '0: 禁用 1：启用',
  `tenant_id` int DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict` VALUES (1, 'sys_parameters', '系统参数', '系统全局参数', NULL, '2020-03-23 09:47:52', 1, '2020-05-11 18:32:05', NULL, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `id` int NOT NULL COMMENT '字典数据id',
  `dict_id` int NOT NULL COMMENT '字典项id',
  `type` varchar(100) DEFAULT NULL COMMENT '字典项名称',
  `label` varchar(100) DEFAULT NULL COMMENT '字典标签',
  `value` varchar(100) DEFAULT NULL COMMENT '字典键值',
  `description` varchar(200) DEFAULT NULL COMMENT '字典描述',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_id` int NOT NULL COMMENT '创建者id',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `update_id` int DEFAULT NULL COMMENT '更新者id',
  `del_flag` int NOT NULL DEFAULT '1' COMMENT '0: 禁用 1：启用',
  PRIMARY KEY (`id`,`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='字典项';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 1, 'sys_parameters', '默认密码', NULL, '系统账户默认密码', '用户管理-账号初始密码', 1, '2020-03-23 10:16:57', 1, '2020-03-23 11:41:37', NULL, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_file
-- ----------------------------
DROP TABLE IF EXISTS `sys_file`;
CREATE TABLE `sys_file` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `url` longtext NOT NULL COMMENT '图片Url',
  `file_name` varchar(100) NOT NULL COMMENT '桶内文件名称',
  `name` varchar(100) NOT NULL COMMENT '原本文件名称',
  `file_size` bigint DEFAULT NULL COMMENT '文件大小',
  `file_type` varchar(50) DEFAULT NULL COMMENT '文件类型',
  `bucket_name` varchar(100) DEFAULT NULL COMMENT '桶名称',
  `create_id` int NOT NULL COMMENT '上传用户id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '上传时间',
  `tenant_id` int DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COMMENT='文件';

-- ----------------------------
-- Records of sys_file
-- ----------------------------
BEGIN;
INSERT INTO `sys_file` VALUES (11, '', '22', '', 323, '2323', '323', 323, '2020-05-06 18:30:59', 1);
INSERT INTO `sys_file` VALUES (12, 'fafbe92862934bfc80de5b7e73a49f62.gif', 'fafbe92862934bfc80de5b7e73a49f62.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-07 22:33:28', 1);
INSERT INTO `sys_file` VALUES (13, '1eaf80e8c6c348949df66d924574bb06.gif', '1eaf80e8c6c348949df66d924574bb06.gif', '', 957517, 'avatar', 'fdp', 1, '2020-05-08 15:51:53', 1);
INSERT INTO `sys_file` VALUES (14, 'd1d5aae0adec46daa7ff33f167d19775.gif', 'd1d5aae0adec46daa7ff33f167d19775.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-08 16:11:44', 1);
INSERT INTO `sys_file` VALUES (15, 'd0b157e42cec4847b5c32b0b7e75bc7b.gif', 'd0b157e42cec4847b5c32b0b7e75bc7b.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-08 17:00:49', 1);
INSERT INTO `sys_file` VALUES (16, '35abd4312f2544efa81ff6bd82037b36.gif', '35abd4312f2544efa81ff6bd82037b36.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-08 17:01:23', 1);
INSERT INTO `sys_file` VALUES (17, '5ab9cbea72544930873043f2524fda32.gif', '5ab9cbea72544930873043f2524fda32.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-08 17:12:10', 1);
INSERT INTO `sys_file` VALUES (18, '4d3f068f6faf4971807348a3d610c986.gif', '4d3f068f6faf4971807348a3d610c986.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-08 17:18:16', 1);
INSERT INTO `sys_file` VALUES (19, '9b514383e5a34d27b556c4d3b2ddc853.gif', '9b514383e5a34d27b556c4d3b2ddc853.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-08 17:27:33', 1);
INSERT INTO `sys_file` VALUES (20, '82fc408d04244370aba02ab2da3d2332.gif', '82fc408d04244370aba02ab2da3d2332.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-08 17:30:20', 1);
INSERT INTO `sys_file` VALUES (21, '69394b3da72e4e20b54e83325e1c432f.gif', '69394b3da72e4e20b54e83325e1c432f.gif', '', 957517, 'avatar', 'fdp', 1, '2020-05-08 18:29:25', 1);
INSERT INTO `sys_file` VALUES (22, 'ea14109e60b8482e8707e56f991040b4.gif', 'ea14109e60b8482e8707e56f991040b4.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-08 18:31:06', 1);
INSERT INTO `sys_file` VALUES (23, '3f3e0178080343a0a9505bd10e8482aa.gif', '3f3e0178080343a0a9505bd10e8482aa.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-08 18:34:38', 1);
INSERT INTO `sys_file` VALUES (24, '243a429eaafa4192b85631a488560fea.gif', '243a429eaafa4192b85631a488560fea.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-09 10:17:45', 1);
INSERT INTO `sys_file` VALUES (25, '62eb3ab4eca54b7499bd2b0c5d933094.gif', '62eb3ab4eca54b7499bd2b0c5d933094.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-09 10:22:49', 1);
INSERT INTO `sys_file` VALUES (26, 'a873057a9f7b4359a3eb15e58c3783c3.gif', 'a873057a9f7b4359a3eb15e58c3783c3.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-09 10:33:02', 1);
INSERT INTO `sys_file` VALUES (27, '4832f0f205a348da93cc4d5681e381c5.gif', '4832f0f205a348da93cc4d5681e381c5.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-09 10:38:46', 1);
INSERT INTO `sys_file` VALUES (28, 'b0560cefba56400391e8299878c37bc5.gif', 'b0560cefba56400391e8299878c37bc5.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-09 10:42:26', 1);
INSERT INTO `sys_file` VALUES (29, 'f77367dbe1234dd3b244b762a1171b98.gif', 'f77367dbe1234dd3b244b762a1171b98.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-09 11:06:39', 1);
INSERT INTO `sys_file` VALUES (30, 'c47dc011226c44baa992bc2563580880.gif', 'c47dc011226c44baa992bc2563580880.gif', '', 1151310, 'avatar', 'fdp', 1, '2020-05-09 16:24:57', 1);
INSERT INTO `sys_file` VALUES (31, '14dd8508f41b4cb3af5b3540daccea2f.gif', '14dd8508f41b4cb3af5b3540daccea2f.gif', '', 957517, 'avatar', 'fdp', 1, '2020-05-09 16:25:06', 1);
INSERT INTO `sys_file` VALUES (33, '4765cba65be743c280e30418c9c3ac5d.jpg', '4765cba65be743c280e30418c9c3ac5d.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 14:48:38', 1);
INSERT INTO `sys_file` VALUES (34, '6d4719df818b41f0afd71171a85788b3.jpg', '6d4719df818b41f0afd71171a85788b3.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 16:16:58', 1);
INSERT INTO `sys_file` VALUES (35, '7a187e5479c94f92917ef11180031cc6.jpg', '7a187e5479c94f92917ef11180031cc6.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 16:17:13', 1);
INSERT INTO `sys_file` VALUES (36, '23c7a38e414c4e888c9b48f761288efe.jpg', '23c7a38e414c4e888c9b48f761288efe.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 16:18:39', 1);
INSERT INTO `sys_file` VALUES (37, '9a1e2aa88d4b414f8a7b6338dc243c6a.jpg', '9a1e2aa88d4b414f8a7b6338dc243c6a.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 16:18:59', 1);
INSERT INTO `sys_file` VALUES (38, '51cee17471284c13a71a7a0db81c1822.jpg', '51cee17471284c13a71a7a0db81c1822.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 16:19:28', 1);
INSERT INTO `sys_file` VALUES (39, 'c9107f2ded6f46ad8288d3f38db1830a.jpg', 'c9107f2ded6f46ad8288d3f38db1830a.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 16:23:34', 1);
INSERT INTO `sys_file` VALUES (40, '69ecc740bab34609a8a8aad6f1094b86.jpg', '69ecc740bab34609a8a8aad6f1094b86.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 16:34:23', 1);
INSERT INTO `sys_file` VALUES (41, '11a0dd02bbdd48859d9e2e2d781d16bd.jpg', '11a0dd02bbdd48859d9e2e2d781d16bd.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 16:34:32', 1);
INSERT INTO `sys_file` VALUES (42, '179be63db5824c0b87c9f6d125cff7a1.jpg', '179be63db5824c0b87c9f6d125cff7a1.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 16:37:07', 1);
INSERT INTO `sys_file` VALUES (43, '8b9b2db0a67445c5b55428bf122ccaef.jpg', '8b9b2db0a67445c5b55428bf122ccaef.jpg', '', 30487, 'avatar', 'fdp', 1, '2020-05-29 18:01:48', 1);
INSERT INTO `sys_file` VALUES (44, '7d5cb2b6c60b42a3a78592d434bd5dce.jpg', '7d5cb2b6c60b42a3a78592d434bd5dce.jpg', '', 8449, 'avatar', 'fdp', 1, '2020-05-29 18:02:25', 1);
INSERT INTO `sys_file` VALUES (45, '932235ea685946fb963e4046243526fd.jpg', '932235ea685946fb963e4046243526fd.jpg', '', 40712, 'avatar', 'fdp', 1, '2020-05-29 22:43:24', 1);
INSERT INTO `sys_file` VALUES (46, '876780536b8d4513850d5e1ebc052fc2.jpg', '876780536b8d4513850d5e1ebc052fc2.jpg', '', 27198, 'avatar', 'fdp', 1, '2020-05-29 22:43:39', 1);
INSERT INTO `sys_file` VALUES (47, 'ad38adbbbdb7422baf3f8c602b8004a6.jpg', 'ad38adbbbdb7422baf3f8c602b8004a6.jpg', '', 40712, 'avatar', 'fdp', 1, '2020-05-29 22:43:52', 1);
INSERT INTO `sys_file` VALUES (48, '2b89fa61812149f581e2adab5d9b0c36.jpg', '2b89fa61812149f581e2adab5d9b0c36.jpg', 'ceshi', 8449, 'avatar', 'fdp', 1, '2020-05-29 22:44:50', 1);
INSERT INTO `sys_file` VALUES (49, '682df9ff82ba40af99c1179c913146e8.jpg', '682df9ff82ba40af99c1179c913146e8.jpg', '头像专用图.jpg', 10272, 'avatar', 'fdp', 1, '2020-06-26 13:16:27', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `request_ip` varchar(50) DEFAULT '' COMMENT '操作IP',
  `type` char(1) DEFAULT '0' COMMENT '日志类型\n#LogType{0:操作类型;1:异常类型}',
  `user_name` varchar(50) DEFAULT '' COMMENT '操作人',
  `description` varchar(255) DEFAULT '' COMMENT '操作描述',
  `class_path` varchar(255) DEFAULT '' COMMENT '类路径',
  `request_method` varchar(50) DEFAULT '' COMMENT '请求方法',
  `request_uri` varchar(50) DEFAULT '' COMMENT '请求地址',
  `http_method` varchar(10) DEFAULT 'GET' COMMENT '请求类型 {GET:GET请求;POST:POST请求;PUT:PUT请求;DELETE:DELETE请求;PATCH:PATCH请求;TRACE:TRACE请求;HEAD:HEAD请求;OPTIONS:OPTIONS请求;}',
  `params` longtext COMMENT '请求参数',
  `result` longtext COMMENT '返回值',
  `ex_desc` longtext COMMENT '异常详情信息',
  `ex_detail` longtext COMMENT '异常描述',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `finish_time` datetime DEFAULT NULL COMMENT '结束时间',
  `time` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '执行时间',
  `user_agent` varchar(1000) DEFAULT '' COMMENT '浏览器',
  `del_flag` char(1) DEFAULT '1' COMMENT '0: 禁用 1：启用',
  `tenant_id` int DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sys_log_create_by` (`user_name`) USING BTREE,
  KEY `sys_log_request_uri` (`request_uri`) USING BTREE,
  KEY `sys_log_type` (`type`) USING BTREE,
  KEY `sys_log_create_date` (`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_log` VALUES (5, '218.19.136.121', '0', 'admin', '上传文件', 'com.zsinda.fdp.service.impl.SysFileServiceImpl', 'upload', '/file/upload/avatar', 'POST', '[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@6e3e68c8, avatar]', NULL, NULL, NULL, '2020-06-26 13:16:27', '2020-06-26 13:16:27', '814', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4173.2 Safari/537.36', '1', NULL);
INSERT INTO `sys_log` VALUES (6, '218.19.136.121', '0', 'admin', '上传文件', 'com.zsinda.fdp.controller.SysFileController', 'upload', '/file/upload/avatar', 'POST', '[org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@6e3e68c8, avatar]', NULL, NULL, NULL, '2020-06-26 13:16:27', '2020-06-26 13:16:27', '841', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4173.2 Safari/537.36', '1', NULL);
INSERT INTO `sys_log` VALUES (7, '218.19.136.121', '0', 'admin', '添加用户', 'com.zsinda.fdp.controller.SysUserController', 'save', '/user', 'POST', '[SysUser(userId=null, username=demo, password=, avatar=682df9ff82ba40af99c1179c913146e8.jpg, phone=13392222222, email=1692488900@qq.com, sex=1, createTime=null, updateTime=null, lockFlag=1, delFlag=1, tenantId=null, roleIds=[4], deptIds=[8, 9, 18])]', NULL, NULL, NULL, '2020-06-26 13:17:16', '2020-06-26 13:17:16', '90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4173.2 Safari/537.36', '1', NULL);
INSERT INTO `sys_log` VALUES (8, '218.19.136.121', '0', 'admin', '更新角色菜单', 'com.zsinda.fdp.controller.SysRoleController', 'saveRoleMenus', '/role/menus', 'POST', '[4, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,31,32,33,34]', NULL, NULL, NULL, '2020-06-26 13:17:52', '2020-06-26 13:17:52', '95', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4173.2 Safari/537.36', '1', NULL);
INSERT INTO `sys_log` VALUES (9, '218.19.136.121', '0', 'admin', '新增菜单', 'com.zsinda.fdp.controller.SysMenuController', 'save', '/menu', 'POST', '[SysMenu(menuId=null, name=新增数据源, permission=sys_add_dataSource, path=, redirect=null, icon=, createTime=null, updateTime=null, delFlag=null, parentId=34, sort=1, type=1)]', NULL, NULL, NULL, '2020-06-26 13:23:05', '2020-06-26 13:23:05', '15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4173.2 Safari/537.36', '1', NULL);
INSERT INTO `sys_log` VALUES (10, '218.19.136.121', '0', 'admin', '新增菜单', 'com.zsinda.fdp.controller.SysMenuController', 'save', '/menu', 'POST', '[SysMenu(menuId=null, name=批量生成, permission=sys_download_code, path=, redirect=null, icon=, createTime=null, updateTime=null, delFlag=null, parentId=34, sort=2, type=1)]', NULL, NULL, NULL, '2020-06-26 13:25:05', '2020-06-26 13:25:05', '18', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4173.2 Safari/537.36', '1', NULL);
INSERT INTO `sys_log` VALUES (11, '218.19.136.121', '0', 'admin', '更新角色菜单', 'com.zsinda.fdp.controller.SysRoleController', 'saveRoleMenus', '/role/menus', 'POST', '[2, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,31,32,33,34,35,36]', NULL, NULL, NULL, '2020-06-26 13:25:27', '2020-06-26 13:25:27', '83', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4173.2 Safari/537.36', '1', NULL);
INSERT INTO `sys_log` VALUES (12, '218.19.136.121', '0', 'admin', '更新角色菜单', 'com.zsinda.fdp.controller.SysRoleController', 'saveRoleMenus', '/role/menus', 'POST', '[4, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,30,31,32,33,34,35,36]', NULL, NULL, NULL, '2020-06-26 13:25:41', '2020-06-26 13:25:41', '77', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4173.2 Safari/537.36', '1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int NOT NULL AUTO_INCREMENT COMMENT '菜单id',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限',
  `path` varchar(200) DEFAULT NULL COMMENT '路径',
  `icon` varchar(200) DEFAULT NULL COMMENT '图标',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT '父级目录',
  `sort` int DEFAULT NULL COMMENT '排序值',
  `type` int DEFAULT '0' COMMENT '菜单类型:0菜单，1按钮，3其他',
  `redirect` varchar(200) NOT NULL DEFAULT '' COMMENT '重定向地址',
  `del_flag` int DEFAULT '1' COMMENT '0: 禁用 1：启用',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COMMENT='系统菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, '权限管理', '', '/admin', 'permissionmanager', '2020-03-17 09:58:22', '2020-06-04 14:18:38', 0, 1, 0, '', 1);
INSERT INTO `sys_menu` VALUES (2, '角色管理', '', '/admin/roles/index', 'role', '2020-03-16 22:25:06', '2019-12-14 19:44:00', 1, 1, 0, '', 1);
INSERT INTO `sys_menu` VALUES (3, '新增角色', 'sys_add_role', NULL, NULL, '2020-03-17 09:50:16', '2020-01-16 22:09:13', 2, 1, 1, '', 1);
INSERT INTO `sys_menu` VALUES (4, '编辑角色', 'sys_editor_role', NULL, NULL, '2020-03-17 09:50:22', '2020-01-16 22:09:16', 2, 2, 1, '', 1);
INSERT INTO `sys_menu` VALUES (5, '删除角色', 'sys_delete_role', NULL, NULL, '2020-03-17 09:50:23', '2020-01-16 22:09:19', 2, 3, 1, '', 1);
INSERT INTO `sys_menu` VALUES (6, '角色权限', 'sys_permission_role', NULL, NULL, '2020-03-17 09:50:26', NULL, 2, 4, 1, '', 1);
INSERT INTO `sys_menu` VALUES (7, '菜单管理', NULL, '/admin/menus/index', 'menus', '2020-03-17 09:36:11', '2020-01-16 22:09:22', 1, 2, 0, '', 1);
INSERT INTO `sys_menu` VALUES (8, '新增菜单', 'sys_add_menu', NULL, NULL, '2020-03-17 10:10:31', '2020-03-11 00:22:12', 7, 1, 1, '', 1);
INSERT INTO `sys_menu` VALUES (9, '编辑菜单', 'sys_editor_menu', NULL, NULL, '2020-03-17 10:10:31', '2020-03-11 00:22:15', 7, 2, 1, '', 1);
INSERT INTO `sys_menu` VALUES (10, '删除菜单', 'sys_delete_menu', NULL, NULL, '2020-03-17 10:10:33', '2020-03-11 00:22:18', 7, 3, 1, '', 1);
INSERT INTO `sys_menu` VALUES (11, '系统管理', NULL, '/sys', 'sysmanager', '2020-03-17 09:52:09', '2020-03-20 22:37:26', 0, 2, 0, '', 1);
INSERT INTO `sys_menu` VALUES (12, '用户管理', '', '/admin/user/index', 'usermanager', '2020-03-17 11:07:04', NULL, 1, 3, 0, '', 1);
INSERT INTO `sys_menu` VALUES (13, '新增用户', 'sys_add_user', '', '', '2020-03-17 11:07:04', NULL, 12, 1, 1, '', 1);
INSERT INTO `sys_menu` VALUES (14, '编辑用户', 'sys_editor_user', '', '', '2020-03-17 11:07:04', NULL, 12, 2, 1, '', 1);
INSERT INTO `sys_menu` VALUES (15, '删除用户', 'sys_delete_user', '', '', '2020-03-17 11:07:04', NULL, 12, 3, 1, '', 1);
INSERT INTO `sys_menu` VALUES (16, '禁用用户', 'sys_ban_user', '', '', '2020-03-21 21:35:45', NULL, 12, 4, 1, '', 1);
INSERT INTO `sys_menu` VALUES (17, '导出用户', 'sys_export_user', '', '', '2020-03-22 16:30:49', '2020-03-22 16:31:11', 12, 5, 1, '', 1);
INSERT INTO `sys_menu` VALUES (18, '导入用户', 'sys_import_user', '', '', '2020-03-22 16:31:43', NULL, 12, 6, 1, '', 1);
INSERT INTO `sys_menu` VALUES (19, '公共参数', '', '/sys/param/index', 'data', '2020-03-24 17:19:34', '2020-05-29 18:36:35', 11, 1, 0, '', 1);
INSERT INTO `sys_menu` VALUES (20, '文件管理', '', '/sys/file/index', 'file', '2020-05-07 22:16:20', '2020-05-07 22:17:35', 11, 2, 0, '', 1);
INSERT INTO `sys_menu` VALUES (21, '上传文件', 'sys_upload_file', '', NULL, '2020-05-07 22:22:58', NULL, 20, 1, 1, '', 1);
INSERT INTO `sys_menu` VALUES (22, '租户管理', '', '/admin/tenant/index', 'tenant', '2020-05-25 17:45:49', '2020-05-25 17:49:02', 1, 4, 0, '', 1);
INSERT INTO `sys_menu` VALUES (23, '新增租户', 'sys_add_tenant', '', '', '2020-05-25 18:23:01', NULL, 22, 1, 1, '', 1);
INSERT INTO `sys_menu` VALUES (24, '编辑租户', 'sys_editor_tenant', '', '', '2020-05-25 18:23:41', NULL, 22, 2, 1, '', 1);
INSERT INTO `sys_menu` VALUES (25, '删除租户', 'sys_delete_tenant', '', '', '2020-05-25 18:24:13', NULL, 22, 3, 1, '', 1);
INSERT INTO `sys_menu` VALUES (26, '新增参数', 'sys_add_param', '', '', '2020-05-31 22:32:28', '2020-05-31 22:50:32', 19, 1, 1, '', 1);
INSERT INTO `sys_menu` VALUES (27, '编辑参数', 'sys_editor_param', '', '', '2020-05-31 22:36:57', NULL, 19, 2, 1, '', 1);
INSERT INTO `sys_menu` VALUES (28, '删除参数', 'sys_delete_param', '', '', '2020-05-31 23:06:10', NULL, 19, 3, 1, '', 1);
INSERT INTO `sys_menu` VALUES (30, '删除文件', 'sys_delete_file', '', '', '2020-06-01 15:52:52', NULL, 20, 2, 1, '', 1);
INSERT INTO `sys_menu` VALUES (31, '支付管理', '', '/pay', 'pay', '2020-06-01 16:17:11', NULL, 0, 3, 0, '', 1);
INSERT INTO `sys_menu` VALUES (32, '聚合支付', '', '/pay/qrcode/index', 'QrCode', '2020-06-04 14:19:45', NULL, 31, 1, 0, '', 1);
INSERT INTO `sys_menu` VALUES (33, '开发管理', '', '/dev', 'dev', '2020-06-23 20:34:42', NULL, 0, 4, 0, '', 1);
INSERT INTO `sys_menu` VALUES (34, '数据源', '', '/dev/datasource/index', 'datasource', '2020-06-23 20:43:40', '2020-06-23 20:44:25', 33, 1, 0, '', 1);
INSERT INTO `sys_menu` VALUES (35, '新增数据源', 'sys_add_dataSource', '', '', '2020-06-26 13:23:05', NULL, 34, 1, 1, '', 1);
INSERT INTO `sys_menu` VALUES (36, '批量生成', 'sys_download_code', '', '', '2020-06-26 13:25:05', NULL, 34, 2, 1, '', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_param`;
CREATE TABLE `sys_param` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `param_name` varchar(100) NOT NULL DEFAULT '' COMMENT '参数名称',
  `param_key` varchar(100) NOT NULL DEFAULT '' COMMENT '参数键名',
  `param_value` varchar(500) NOT NULL DEFAULT '' COMMENT '参数键值',
  `param_type` int NOT NULL DEFAULT '0' COMMENT '0:系统参数  1:业务参数',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_id` int NOT NULL COMMENT '创建者id',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_id` int DEFAULT NULL COMMENT '更新者id',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` int NOT NULL DEFAULT '1' COMMENT '0: 禁用 1：启用',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `KEY` (`param_key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='参数配置';

-- ----------------------------
-- Records of sys_param
-- ----------------------------
BEGIN;
INSERT INTO `sys_param` VALUES (1, '系统账号默认密码', 'sys_user_default_password', '$2a$10$BL2.s4TnW9Es2kVm5hqvlOvd7aVo0CM1xjvGRDwoTbsJm1gvnlScm', 0, '系统用户默认密码', 1, 1, '2020-03-23 12:00:50', 1, '2020-03-23 15:07:21', 1);
INSERT INTO `sys_param` VALUES (2, '系统账号默认角色', 'sys_user_default_role', '4', 0, '系统用户默认角色', 2, 1, '2020-03-23 15:06:52', 1, '2020-06-26 14:01:11', 1);
INSERT INTO `sys_param` VALUES (3, '系统账号默认部门', 'sys_user_default_dept', '1', 0, '系统用户默认部门', 3, 1, '2020-03-23 15:07:34', 1, '2020-03-23 15:08:56', 1);
INSERT INTO `sys_param` VALUES (4, '系统默认cdn域名', 'sys_cdn_default_domain', 'http://cdn.zsinda.cn/', 0, '系统默认cdn域名', 4, 1, '2020-05-09 16:46:33', NULL, NULL, 1);
INSERT INTO `sys_param` VALUES (5, '系统默认域名', 'sys_default_domain', 'http://admin.xhuicloud.com/', 0, '系统默认域名', 5, 1, '2020-06-09 15:51:13', NULL, '2020-06-26 14:01:48', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` int NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_code` varchar(50) NOT NULL COMMENT '角色标识',
  `role_name` varchar(255) NOT NULL COMMENT '角色名称',
  `role_desc` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` int DEFAULT '1' COMMENT '0: 禁用 1：启用',
  `tenant_id` int DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COMMENT='系统角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, 'ROLE_ORDINARY', 'ordinary', '普通用户', '2020-01-12 22:18:59', '2020-05-12 12:13:14', 1, 1);
INSERT INTO `sys_role` VALUES (2, 'ROLE_ADMIN', 'ROOT', '系统管理员(勿删)', '2020-01-12 22:18:59', '2020-06-26 13:10:47', 1, 1);
INSERT INTO `sys_role` VALUES (3, 'ROLE_TEST', 'Test', '测试专用', '2020-01-13 00:40:55', '2020-06-26 13:10:59', 1, 1);
INSERT INTO `sys_role` VALUES (4, 'ROOT_DEMO', 'Demo', '演示环境角色', '2020-01-13 01:06:56', '2020-06-26 13:11:01', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` int NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统角色菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (1, 1);
INSERT INTO `sys_role_menu` VALUES (1, 2);
INSERT INTO `sys_role_menu` VALUES (1, 6);
INSERT INTO `sys_role_menu` VALUES (1, 7);
INSERT INTO `sys_role_menu` VALUES (1, 10);
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 5);
INSERT INTO `sys_role_menu` VALUES (2, 6);
INSERT INTO `sys_role_menu` VALUES (2, 7);
INSERT INTO `sys_role_menu` VALUES (2, 8);
INSERT INTO `sys_role_menu` VALUES (2, 9);
INSERT INTO `sys_role_menu` VALUES (2, 10);
INSERT INTO `sys_role_menu` VALUES (2, 11);
INSERT INTO `sys_role_menu` VALUES (2, 12);
INSERT INTO `sys_role_menu` VALUES (2, 13);
INSERT INTO `sys_role_menu` VALUES (2, 14);
INSERT INTO `sys_role_menu` VALUES (2, 15);
INSERT INTO `sys_role_menu` VALUES (2, 16);
INSERT INTO `sys_role_menu` VALUES (2, 17);
INSERT INTO `sys_role_menu` VALUES (2, 18);
INSERT INTO `sys_role_menu` VALUES (2, 19);
INSERT INTO `sys_role_menu` VALUES (2, 20);
INSERT INTO `sys_role_menu` VALUES (2, 21);
INSERT INTO `sys_role_menu` VALUES (2, 22);
INSERT INTO `sys_role_menu` VALUES (2, 23);
INSERT INTO `sys_role_menu` VALUES (2, 24);
INSERT INTO `sys_role_menu` VALUES (2, 25);
INSERT INTO `sys_role_menu` VALUES (2, 26);
INSERT INTO `sys_role_menu` VALUES (2, 27);
INSERT INTO `sys_role_menu` VALUES (2, 28);
INSERT INTO `sys_role_menu` VALUES (2, 30);
INSERT INTO `sys_role_menu` VALUES (2, 31);
INSERT INTO `sys_role_menu` VALUES (2, 32);
INSERT INTO `sys_role_menu` VALUES (2, 33);
INSERT INTO `sys_role_menu` VALUES (2, 34);
INSERT INTO `sys_role_menu` VALUES (2, 35);
INSERT INTO `sys_role_menu` VALUES (2, 36);
INSERT INTO `sys_role_menu` VALUES (4, 1);
INSERT INTO `sys_role_menu` VALUES (4, 2);
INSERT INTO `sys_role_menu` VALUES (4, 3);
INSERT INTO `sys_role_menu` VALUES (4, 4);
INSERT INTO `sys_role_menu` VALUES (4, 5);
INSERT INTO `sys_role_menu` VALUES (4, 6);
INSERT INTO `sys_role_menu` VALUES (4, 7);
INSERT INTO `sys_role_menu` VALUES (4, 8);
INSERT INTO `sys_role_menu` VALUES (4, 9);
INSERT INTO `sys_role_menu` VALUES (4, 10);
INSERT INTO `sys_role_menu` VALUES (4, 11);
INSERT INTO `sys_role_menu` VALUES (4, 12);
INSERT INTO `sys_role_menu` VALUES (4, 13);
INSERT INTO `sys_role_menu` VALUES (4, 14);
INSERT INTO `sys_role_menu` VALUES (4, 15);
INSERT INTO `sys_role_menu` VALUES (4, 16);
INSERT INTO `sys_role_menu` VALUES (4, 17);
INSERT INTO `sys_role_menu` VALUES (4, 18);
INSERT INTO `sys_role_menu` VALUES (4, 19);
INSERT INTO `sys_role_menu` VALUES (4, 20);
INSERT INTO `sys_role_menu` VALUES (4, 21);
INSERT INTO `sys_role_menu` VALUES (4, 22);
INSERT INTO `sys_role_menu` VALUES (4, 23);
INSERT INTO `sys_role_menu` VALUES (4, 24);
INSERT INTO `sys_role_menu` VALUES (4, 25);
INSERT INTO `sys_role_menu` VALUES (4, 26);
INSERT INTO `sys_role_menu` VALUES (4, 27);
INSERT INTO `sys_role_menu` VALUES (4, 28);
INSERT INTO `sys_role_menu` VALUES (4, 30);
INSERT INTO `sys_role_menu` VALUES (4, 31);
INSERT INTO `sys_role_menu` VALUES (4, 32);
INSERT INTO `sys_role_menu` VALUES (4, 33);
INSERT INTO `sys_role_menu` VALUES (4, 34);
INSERT INTO `sys_role_menu` VALUES (4, 35);
INSERT INTO `sys_role_menu` VALUES (4, 36);
COMMIT;

-- ----------------------------
-- Table structure for sys_route_conf
-- ----------------------------
DROP TABLE IF EXISTS `sys_route_conf`;
CREATE TABLE `sys_route_conf` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `route_name` varchar(30) DEFAULT NULL COMMENT '路由名称',
  `route_id` varchar(30) DEFAULT NULL COMMENT '路由id',
  `predicates` json DEFAULT NULL COMMENT '谓词/断言',
  `filters` json DEFAULT NULL COMMENT '过滤器',
  `uri` varchar(100) DEFAULT NULL,
  `sort` int DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` char(1) DEFAULT '1' COMMENT '0: 禁用 1：启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='全局路由';

-- ----------------------------
-- Records of sys_route_conf
-- ----------------------------
BEGIN;
INSERT INTO `sys_route_conf` VALUES (1, '认证中心', 'FDP-auth', '[{\"args\": {\"_genkey_0\": \"/auth/**\", \"_genkey_1\": \"/token/**\"}, \"name\": \"Path\"}]', '[{\"args\": {}, \"name\": \"CodeGatewayFilter\"}]', 'lb://FDP-auth', 1, '2020-03-02 16:21:24', '2020-06-18 18:11:57', '1');
INSERT INTO `sys_route_conf` VALUES (2, '用户中心', 'FDP-upmm-business', '[{\"args\": {\"_genkey_0\": \"/admin/**\"}, \"name\": \"Path\"}]', '[]', 'lb://FDP-upmm-business', 2, '2020-03-03 11:28:42', '2020-06-09 16:26:07', '1');
INSERT INTO `sys_route_conf` VALUES (3, '支付中心', 'FDP-pay-business', '[{\"args\": {\"_genkey_0\": \"/pay/**\"}, \"name\": \"Path\"}]', '[]', 'lb://FDP-pay-business', 3, '2020-06-09 16:21:26', '2020-06-09 16:26:08', '1');
INSERT INTO `sys_route_conf` VALUES (4, '开发管理', 'FDP-generator', '[{\"args\": {\"_genkey_0\": \"/dev/**\"}, \"name\": \"Path\"}]', '[]', 'lb://FDP-generator', 4, '2020-06-23 22:26:55', '2020-06-23 22:27:42', '1');
COMMIT;

-- ----------------------------
-- Table structure for sys_social
-- ----------------------------
DROP TABLE IF EXISTS `sys_social`;
CREATE TABLE `sys_social` (
  `id` int NOT NULL COMMENT 'id',
  `type` varchar(10) DEFAULT NULL COMMENT '类型',
  `app_id` varchar(100) NOT NULL COMMENT '开放平台id',
  `app_ secret` varchar(255) NOT NULL COMMENT '开放平台密钥',
  `app_desc` varchar(255) DEFAULT NULL COMMENT '开放平台描述',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT '重定向url',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `del_flag` int DEFAULT '1' COMMENT '0: 禁用 1：启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统开放平台';

-- ----------------------------
-- Records of sys_social
-- ----------------------------
BEGIN;
INSERT INTO `sys_social` VALUES (1, 'QQ', '101887822', 'e3e1d28a222689591ed7a1256ffc4c62', '星辉云', 'http://admin.xhuicloud.com/#/auth-redirect', '2019-12-15 17:22:54', '2020-06-26 09:36:15', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_tenant
-- ----------------------------
DROP TABLE IF EXISTS `sys_tenant`;
CREATE TABLE `sys_tenant` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '租户id',
  `name` varchar(255) NOT NULL COMMENT '租户名称',
  `state` int DEFAULT '2' COMMENT '状态\n0:禁用; 1:正常;  2:待审核;  3:拒绝',
  `expiration_time` datetime DEFAULT NULL COMMENT '有效期',
  `logo` varchar(255) DEFAULT '' COMMENT 'logo地址',
  `remark` text COMMENT '租户描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `del_flag` int DEFAULT '1' COMMENT '0: 禁用 1：启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='系统租户';

-- ----------------------------
-- Records of sys_tenant
-- ----------------------------
BEGIN;
INSERT INTO `sys_tenant` VALUES (1, '星辉云', 1, '2027-03-29 18:12:28', 'ad38adbbbdb7422baf3f8c602b8004a6.jpg', NULL, '2020-05-11 18:13:31', '2020-05-25 18:18:43', 1);
INSERT INTO `sys_tenant` VALUES (2, '测试', 1, '2023-05-25 18:13:03', '876780536b8d4513850d5e1ebc052fc2.jpg', NULL, '2020-05-13 16:00:59', '2020-06-05 15:35:39', 1);
INSERT INTO `sys_tenant` VALUES (3, '分公司', 2, '2029-09-25 18:13:08', '932235ea685946fb963e4046243526fd.jpg', NULL, '2020-05-13 16:02:26', '2020-06-26 13:12:43', 1);
INSERT INTO `sys_tenant` VALUES (4, '广东公司', 3, '2021-05-21 00:00:00', '7d5cb2b6c60b42a3a78592d434bd5dce.jpg', NULL, '2020-05-25 18:18:38', '2020-05-25 18:18:48', 1);
INSERT INTO `sys_tenant` VALUES (5, '测试租户1', 1, '2029-12-06 00:00:00', '8b9b2db0a67445c5b55428bf122ccaef.jpg', '测试租户', '2020-05-29 16:38:52', '2020-05-29 18:01:57', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `sex` int NOT NULL DEFAULT '1' COMMENT '性别:0 女、1  男、2  其他',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `lock_flag` int DEFAULT '1' COMMENT '0:账号被锁',
  `del_flag` int DEFAULT '1' COMMENT '0: 禁用 1：启用',
  `tenant_id` int DEFAULT NULL COMMENT '租户id',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', '$2a$10$F85EXBqBGSdq0HrAhYwK5eXqRUPSaD9ko1SQBODKmnYV9KfdDngtu', '2b89fa61812149f581e2adab5d9b0c36.jpg', '13333323333', 'sindazeng@gmail.com', 1, '2020-01-13 13:48:46', '2020-06-26 14:05:47', 1, 1, 1);
INSERT INTO `sys_user` VALUES (2, 'root', '$2a$10$BL2.s4TnW9Es2kVm5hqvlOvd7aVo0CM1xjvGRDwoTbsJm1gvnlScm', 'cat2.gif', '123123123', '12332@ee.com', 0, '2020-02-15 10:01:19', '2020-05-29 17:54:23', 1, 1, 1);
INSERT INTO `sys_user` VALUES (43, 'demo', '$2a$10$BL2.s4TnW9Es2kVm5hqvlOvd7aVo0CM1xjvGRDwoTbsJm1gvnlScm', '682df9ff82ba40af99c1179c913146e8.jpg', '13392222222', '1692488900@qq.com', 1, '2020-06-26 13:17:15', NULL, 1, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept` (
  `user_id` int NOT NULL,
  `dept_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户部门';

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_dept` VALUES (1, 1);
INSERT INTO `sys_user_dept` VALUES (1, 9);
INSERT INTO `sys_user_dept` VALUES (2, 11);
INSERT INTO `sys_user_dept` VALUES (43, 8);
INSERT INTO `sys_user_dept` VALUES (43, 9);
INSERT INTO `sys_user_dept` VALUES (43, 18);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` int NOT NULL COMMENT '用户id',
  `role_id` int NOT NULL COMMENT '角色id',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1, 2);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (43, 4);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_social
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_social`;
CREATE TABLE `sys_user_social` (
  `user_id` int NOT NULL COMMENT '用户id',
  `social_type` varchar(10) NOT NULL COMMENT '开放平台类型',
  `user_openid` varchar(200) NOT NULL COMMENT '用户openid',
  PRIMARY KEY (`user_id`,`user_openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户社交';

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
DROP TABLE IF EXISTS `undo_log`;
CREATE TABLE `undo_log` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'increment id',
  `branch_id` bigint NOT NULL COMMENT 'branch transaction id',
  `xid` varchar(100) NOT NULL COMMENT 'global transaction id',
  `context` varchar(128) NOT NULL COMMENT 'undo_log context,such as serialization',
  `rollback_info` longblob NOT NULL COMMENT 'rollback info',
  `log_status` int NOT NULL COMMENT '0:normal status,1:defense status',
  `log_created` datetime NOT NULL COMMENT 'create datetime',
  `log_modified` datetime NOT NULL COMMENT 'modify datetime',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='AT transaction mode undo table';

SET FOREIGN_KEY_CHECKS = 1;
