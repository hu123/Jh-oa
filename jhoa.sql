﻿# MySQL-Front 4.2  (Build 2.83)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: jhoa
# ------------------------------------------------------
# Server version 5.1.54-community

DROP DATABASE IF EXISTS `jhoa`;
CREATE DATABASE `jhoa` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jhoa`;

#
# Table structure for table qt_menu
#

CREATE TABLE `qt_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(255) DEFAULT NULL COMMENT '菜单名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='菜单表';

#
# Dumping data for table qt_menu
#

INSERT INTO `qt_menu` VALUES (7,'个人中心');
INSERT INTO `qt_menu` VALUES (9,'用户管理');
INSERT INTO `qt_menu` VALUES (10,'菜单管理');
INSERT INTO `qt_menu` VALUES (11,'资源管理');
INSERT INTO `qt_menu` VALUES (12,'操作管理');
INSERT INTO `qt_menu` VALUES (13,'角色管理');
INSERT INTO `qt_menu` VALUES (14,'用户角色管理');
INSERT INTO `qt_menu` VALUES (15,'权限管理');
INSERT INTO `qt_menu` VALUES (16,'动态管理');
INSERT INTO `qt_menu` VALUES (17,'角色权限管理');
INSERT INTO `qt_menu` VALUES (18,'全局菜单');

#
# Table structure for table qt_news
#

CREATE TABLE `qt_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_hungarian_ci COMMENT '富文本内容',
  `stext` varchar(255) DEFAULT NULL COMMENT '纯文本内容',
  `userID` int(11) DEFAULT NULL COMMENT '发布者ID',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `modifytime` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='新闻动态表';

#
# Dumping data for table qt_news
#

INSERT INTO `qt_news` VALUES (3,'测试标题长度为多少个字符长度＝HELLO','<p>测试用<b>动态标题1</b></p>\r\n<p>这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的</p>\r\n<p>测试<span style=\"color:#e56600;\">用动态标题</span>1</p>\r\n<p>测<span style=\"background-color:#b8d100;\">试用动态</span>标题1</p>\r\n<p>新闻列表：</p>\r\n<p></p>\r\n<ul><li>总则</li>\r\n<li>第一章</li>\r\n<li>第二章</li>\r\n<li>第三章</li>\r\n</ul>\r\n<div>你好，世界，<a href=\"http://a\">人生就是一场游戏</a>！</div>','测试用动态标题1\r\n这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的这行很长很长的\r\n测试用动态标题1\r\n测试用动态标题1\r\n新闻列表：\r\n\r\n总则\r\n第一章\r\n第二章\r\n第三章\r\n\r\n你好，世界，人生就是一场游戏！',2,'2011-09-09 14:10:39','2011-09-15 11:05:14');

#
# Table structure for table qt_operator
#

CREATE TABLE `qt_operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optname` varchar(255) DEFAULT NULL COMMENT '操作描述',
  `optvalue` varchar(255) DEFAULT NULL COMMENT '操作值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='操作表';

#
# Dumping data for table qt_operator
#

INSERT INTO `qt_operator` VALUES (2,'单条数据查看','show');
INSERT INTO `qt_operator` VALUES (4,'添加视图','viewAdd');
INSERT INTO `qt_operator` VALUES (5,'添加','add');
INSERT INTO `qt_operator` VALUES (6,'删除','delete');
INSERT INTO `qt_operator` VALUES (7,'编辑视图','viewModify');
INSERT INTO `qt_operator` VALUES (8,'编辑','modify');
INSERT INTO `qt_operator` VALUES (9,'筛选视图','viewFilter');
INSERT INTO `qt_operator` VALUES (10,'筛选','filter');
INSERT INTO `qt_operator` VALUES (11,'列表','list');
INSERT INTO `qt_operator` VALUES (12,'分页列表','listByPage');
INSERT INTO `qt_operator` VALUES (13,'批量删除','batchDelete');
INSERT INTO `qt_operator` VALUES (14,'私有数据查看','showMyself');
INSERT INTO `qt_operator` VALUES (15,'私有数据编辑视图','viewModifyMyself');
INSERT INTO `qt_operator` VALUES (16,'私有数据编辑','modifyMyself');
INSERT INTO `qt_operator` VALUES (17,'私有数据筛选视图','viewFilterMyself');
INSERT INTO `qt_operator` VALUES (18,'私有数据筛选','filterMyself');
INSERT INTO `qt_operator` VALUES (19,'私有数据列表','listMyself');
INSERT INTO `qt_operator` VALUES (20,'私有数据分页列表','listByPageMyself');
INSERT INTO `qt_operator` VALUES (21,'私有数据批量删除','batchDeleteMyself');
INSERT INTO `qt_operator` VALUES (22,'后台管理主页','manager');
INSERT INTO `qt_operator` VALUES (23,'上传图片','uploadImg');
INSERT INTO `qt_operator` VALUES (24,'退出系统','anonymous_logout');

#
# Table structure for table qt_permission
#

CREATE TABLE `qt_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuID` int(11) DEFAULT NULL COMMENT '菜单ID',
  `resourceID` int(11) DEFAULT NULL COMMENT '资源ID',
  `optID` int(11) DEFAULT NULL COMMENT '操作ID',
  `description` varchar(255) DEFAULT NULL COMMENT '权限描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='权限表';

#
# Dumping data for table qt_permission
#

INSERT INTO `qt_permission` VALUES (7,10,3,4,'添加菜单视图');
INSERT INTO `qt_permission` VALUES (8,10,3,5,'添加菜单');
INSERT INTO `qt_permission` VALUES (9,10,3,6,'删除菜单');
INSERT INTO `qt_permission` VALUES (10,10,3,7,'编辑菜单视图');
INSERT INTO `qt_permission` VALUES (11,10,3,8,'编辑菜单');
INSERT INTO `qt_permission` VALUES (12,10,3,11,'列表菜单');
INSERT INTO `qt_permission` VALUES (13,11,6,4,'添加资源视图');
INSERT INTO `qt_permission` VALUES (14,11,6,5,'添加资源');
INSERT INTO `qt_permission` VALUES (15,11,6,6,'删除资源');
INSERT INTO `qt_permission` VALUES (16,11,6,7,'编辑资源视图');
INSERT INTO `qt_permission` VALUES (17,11,6,8,'编辑资源');
INSERT INTO `qt_permission` VALUES (18,11,6,11,'列表资源');
INSERT INTO `qt_permission` VALUES (19,12,7,4,'添加操作视图');
INSERT INTO `qt_permission` VALUES (20,12,7,5,'添加操作');
INSERT INTO `qt_permission` VALUES (21,12,7,6,'删除操作');
INSERT INTO `qt_permission` VALUES (22,12,7,7,'编辑操作视图');
INSERT INTO `qt_permission` VALUES (23,12,7,8,'编辑操作');
INSERT INTO `qt_permission` VALUES (24,12,7,11,'列表操作');
INSERT INTO `qt_permission` VALUES (25,9,8,2,'查看用户');
INSERT INTO `qt_permission` VALUES (26,9,8,4,'添加用户视图');
INSERT INTO `qt_permission` VALUES (27,9,8,5,'添加用户');
INSERT INTO `qt_permission` VALUES (28,9,8,7,'编辑用户视图');
INSERT INTO `qt_permission` VALUES (29,9,8,8,'编辑用户');
INSERT INTO `qt_permission` VALUES (30,9,8,10,'筛选用户');
INSERT INTO `qt_permission` VALUES (31,16,9,2,'查看动态');
INSERT INTO `qt_permission` VALUES (32,16,9,4,'添加动态视图');
INSERT INTO `qt_permission` VALUES (33,16,9,5,'添加动态');
INSERT INTO `qt_permission` VALUES (34,16,9,7,'编辑动态视图');
INSERT INTO `qt_permission` VALUES (35,16,9,8,'编辑动态');
INSERT INTO `qt_permission` VALUES (36,16,9,10,'筛选动态');
INSERT INTO `qt_permission` VALUES (37,16,9,13,'批量删除动态');
INSERT INTO `qt_permission` VALUES (38,13,10,4,'添加角色视图');
INSERT INTO `qt_permission` VALUES (39,13,10,5,'添加角色');
INSERT INTO `qt_permission` VALUES (40,13,10,6,'删除角色');
INSERT INTO `qt_permission` VALUES (41,13,10,7,'编辑角色视图');
INSERT INTO `qt_permission` VALUES (42,13,10,8,'编辑角色');
INSERT INTO `qt_permission` VALUES (43,13,10,11,'列表角色');
INSERT INTO `qt_permission` VALUES (44,14,11,4,'添加用户角色视图');
INSERT INTO `qt_permission` VALUES (45,14,11,5,'添加用户角色');
INSERT INTO `qt_permission` VALUES (46,14,11,7,'编辑用户角色视图');
INSERT INTO `qt_permission` VALUES (47,14,11,8,'编辑用户角色');
INSERT INTO `qt_permission` VALUES (48,14,11,10,'筛选用户角色');
INSERT INTO `qt_permission` VALUES (49,14,11,13,'批量删除用户角色');
INSERT INTO `qt_permission` VALUES (50,15,12,4,'添加权限视图');
INSERT INTO `qt_permission` VALUES (51,15,12,5,'添加权限');
INSERT INTO `qt_permission` VALUES (52,15,12,7,'编辑权限视图');
INSERT INTO `qt_permission` VALUES (53,15,12,8,'编辑权限');
INSERT INTO `qt_permission` VALUES (54,15,12,10,'筛选权限');
INSERT INTO `qt_permission` VALUES (55,15,12,13,'批量删除权限');
INSERT INTO `qt_permission` VALUES (56,17,13,4,'添加角色权限视图');
INSERT INTO `qt_permission` VALUES (57,17,13,5,'添加角色权限');
INSERT INTO `qt_permission` VALUES (58,17,13,6,'删除角色权限');
INSERT INTO `qt_permission` VALUES (59,17,13,7,'编辑角色权限视图');
INSERT INTO `qt_permission` VALUES (60,17,13,8,'编辑角色权限');
INSERT INTO `qt_permission` VALUES (61,17,13,10,'筛选角色权限');
INSERT INTO `qt_permission` VALUES (62,18,14,22,'查看后台管理主页');
INSERT INTO `qt_permission` VALUES (63,18,14,23,'上传图片');
INSERT INTO `qt_permission` VALUES (64,18,14,24,'用户退出');

#
# Table structure for table qt_resource
#

CREATE TABLE `qt_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourcename` varchar(255) DEFAULT NULL COMMENT '资源描述',
  `resourcevalue` varchar(255) DEFAULT NULL COMMENT '资源值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='资源表';

#
# Dumping data for table qt_resource
#

INSERT INTO `qt_resource` VALUES (3,'菜单资源','menu');
INSERT INTO `qt_resource` VALUES (6,'资源','resource');
INSERT INTO `qt_resource` VALUES (7,'操作资源','operator');
INSERT INTO `qt_resource` VALUES (8,'用户资源','user');
INSERT INTO `qt_resource` VALUES (9,'动态资源','news');
INSERT INTO `qt_resource` VALUES (10,'角色资源','role');
INSERT INTO `qt_resource` VALUES (11,'用户角色资源','userrole');
INSERT INTO `qt_resource` VALUES (12,'权限资源','permission');
INSERT INTO `qt_resource` VALUES (13,'角色权限资源','rolepermission');
INSERT INTO `qt_resource` VALUES (14,'全局资源','global');

#
# Table structure for table qt_role
#

CREATE TABLE `qt_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL COMMENT '角色名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='角色表';

#
# Dumping data for table qt_role
#

INSERT INTO `qt_role` VALUES (1,'超级管理员');
INSERT INTO `qt_role` VALUES (6,'部员');
INSERT INTO `qt_role` VALUES (7,'部长');
INSERT INTO `qt_role` VALUES (8,'主席团');

#
# Table structure for table qt_rolepermission
#

CREATE TABLE `qt_rolepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) DEFAULT NULL COMMENT '角色ID',
  `permissionID` int(11) DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='角色权限对应表';

#
# Dumping data for table qt_rolepermission
#

INSERT INTO `qt_rolepermission` VALUES (5,1,7);
INSERT INTO `qt_rolepermission` VALUES (6,1,8);
INSERT INTO `qt_rolepermission` VALUES (7,1,9);
INSERT INTO `qt_rolepermission` VALUES (8,1,10);
INSERT INTO `qt_rolepermission` VALUES (9,1,11);
INSERT INTO `qt_rolepermission` VALUES (10,1,12);
INSERT INTO `qt_rolepermission` VALUES (11,1,13);
INSERT INTO `qt_rolepermission` VALUES (12,1,14);
INSERT INTO `qt_rolepermission` VALUES (13,1,15);
INSERT INTO `qt_rolepermission` VALUES (14,1,16);
INSERT INTO `qt_rolepermission` VALUES (15,1,17);
INSERT INTO `qt_rolepermission` VALUES (16,1,18);
INSERT INTO `qt_rolepermission` VALUES (17,1,19);
INSERT INTO `qt_rolepermission` VALUES (18,1,20);
INSERT INTO `qt_rolepermission` VALUES (19,1,21);
INSERT INTO `qt_rolepermission` VALUES (20,1,22);
INSERT INTO `qt_rolepermission` VALUES (21,1,23);
INSERT INTO `qt_rolepermission` VALUES (22,1,24);
INSERT INTO `qt_rolepermission` VALUES (23,1,25);
INSERT INTO `qt_rolepermission` VALUES (24,1,26);
INSERT INTO `qt_rolepermission` VALUES (25,1,27);
INSERT INTO `qt_rolepermission` VALUES (26,1,28);
INSERT INTO `qt_rolepermission` VALUES (27,1,29);
INSERT INTO `qt_rolepermission` VALUES (28,1,30);
INSERT INTO `qt_rolepermission` VALUES (29,1,31);
INSERT INTO `qt_rolepermission` VALUES (30,1,32);
INSERT INTO `qt_rolepermission` VALUES (31,1,33);
INSERT INTO `qt_rolepermission` VALUES (32,1,34);
INSERT INTO `qt_rolepermission` VALUES (33,1,35);
INSERT INTO `qt_rolepermission` VALUES (34,1,36);
INSERT INTO `qt_rolepermission` VALUES (35,1,37);
INSERT INTO `qt_rolepermission` VALUES (36,1,38);
INSERT INTO `qt_rolepermission` VALUES (37,1,39);
INSERT INTO `qt_rolepermission` VALUES (38,1,40);
INSERT INTO `qt_rolepermission` VALUES (39,1,41);
INSERT INTO `qt_rolepermission` VALUES (40,1,42);
INSERT INTO `qt_rolepermission` VALUES (41,1,43);
INSERT INTO `qt_rolepermission` VALUES (42,1,44);
INSERT INTO `qt_rolepermission` VALUES (43,1,45);
INSERT INTO `qt_rolepermission` VALUES (44,1,46);
INSERT INTO `qt_rolepermission` VALUES (45,1,47);
INSERT INTO `qt_rolepermission` VALUES (46,1,48);
INSERT INTO `qt_rolepermission` VALUES (47,1,49);
INSERT INTO `qt_rolepermission` VALUES (48,1,50);
INSERT INTO `qt_rolepermission` VALUES (49,1,51);
INSERT INTO `qt_rolepermission` VALUES (50,1,52);
INSERT INTO `qt_rolepermission` VALUES (51,1,53);
INSERT INTO `qt_rolepermission` VALUES (52,1,54);
INSERT INTO `qt_rolepermission` VALUES (53,1,55);
INSERT INTO `qt_rolepermission` VALUES (54,1,56);
INSERT INTO `qt_rolepermission` VALUES (55,1,57);
INSERT INTO `qt_rolepermission` VALUES (56,1,58);
INSERT INTO `qt_rolepermission` VALUES (57,1,59);
INSERT INTO `qt_rolepermission` VALUES (58,1,60);
INSERT INTO `qt_rolepermission` VALUES (59,1,61);
INSERT INTO `qt_rolepermission` VALUES (60,1,62);
INSERT INTO `qt_rolepermission` VALUES (61,1,63);
INSERT INTO `qt_rolepermission` VALUES (62,1,64);

#
# Table structure for table qt_user
#

CREATE TABLE `qt_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) NOT NULL DEFAULT '' COMMENT '学号',
  `username` varchar(255) NOT NULL DEFAULT '' COMMENT '姓名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `modifytime` timestamp NULL DEFAULT NULL COMMENT '最后修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户表';

#
# Dumping data for table qt_user
#

INSERT INTO `qt_user` VALUES (2,'200826490109','李斌斌','1','2011-09-07 15:16:58','2011-09-07 15:16:58');
INSERT INTO `qt_user` VALUES (6,'200826490108','测试用户001','1','2011-09-15 17:01:44','2011-09-16 17:10:18');
INSERT INTO `qt_user` VALUES (7,'200826490110','测试用户002','1','2011-09-16 17:10:30','2011-09-16 17:10:30');
INSERT INTO `qt_user` VALUES (8,'200826490111','测试用户003','4','2011-09-16 17:35:08','2011-09-16 17:36:21');

#
# Table structure for table qt_userrole
#

CREATE TABLE `qt_userrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) DEFAULT NULL COMMENT '角色ID',
  `userID` int(11) DEFAULT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

#
# Dumping data for table qt_userrole
#

INSERT INTO `qt_userrole` VALUES (14,1,2);

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
