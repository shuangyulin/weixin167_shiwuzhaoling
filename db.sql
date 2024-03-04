/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanshiwuzhaoling
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanshiwuzhaoling` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanshiwuzhaoling`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1642153383789.jpg'),(2,'picture2','http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1642153391435.jpg'),(3,'picture3','http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1642153399172.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2022-01-09 17:29:17'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2022-01-09 17:29:18'),(67,'shiwuzhaoling_types','物品类型名称',1,'物品类型1',NULL,NULL,'2022-01-09 17:29:18'),(68,'shiwuzhaoling_types','物品类型名称',2,'物品类型2',NULL,NULL,'2022-01-09 17:29:18'),(69,'status_types','物品状态',1,'未找回',NULL,NULL,'2022-01-09 17:29:18'),(70,'status_types','物品状态',2,'已找回',NULL,NULL,'2022-01-09 17:29:18'),(73,'yesno_types','审核',1,'未审核',NULL,NULL,'2022-01-09 17:29:18'),(74,'yesno_types','审核',2,'通过',NULL,NULL,'2022-01-09 17:29:18'),(75,'yesno_types','审核',3,'拒绝',NULL,NULL,'2022-01-09 17:29:18'),(76,'news_types','公告类型名称',1,'公告类型1',NULL,NULL,'2022-01-09 17:29:18'),(77,'news_types','公告类型名称',2,'公告类型2',NULL,NULL,'2022-01-09 17:29:18'),(78,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-01-14 17:02:11'),(79,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-01-14 17:02:11'),(80,'shiwuzhaoling_types','物品类型名称',3,'物品类型3',NULL,'','2022-01-18 14:02:10');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'1111',1,'111',NULL,1,'2022-01-15 17:50:02',NULL,'2022-01-15 17:50:02'),(2,NULL,1,'99',1,2,'2022-01-18 09:07:25',NULL,'2022-01-18 09:07:25'),(4,NULL,3,'3333',1,2,'2022-01-18 14:40:40',NULL,'2022-01-18 14:40:40');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'公告1',1,'http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1636451095323.jpg','2022-01-09 17:44:59','<p><span style=\"color: rgb(96, 98, 102);\">公告详情1</span></p>','2022-01-09 17:44:59'),(4,'公告2',2,'http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1642486141916.jpg','2022-01-18 14:09:05','<p><span style=\"color: rgb(96, 98, 102);\">公告详情2</span></p>','2022-01-18 14:09:05');

/*Table structure for table `shiwurenling` */

DROP TABLE IF EXISTS `shiwurenling`;

CREATE TABLE `shiwurenling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoyuanshiwuzhaoling_id` int(11) DEFAULT NULL COMMENT '失物id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '认领用户',
  `yesno_types` int(11) DEFAULT NULL COMMENT '审核',
  `shiwurenling_text` text COMMENT '详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '认领时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='失物认领';

/*Data for the table `shiwurenling` */

insert  into `shiwurenling`(`id`,`xiaoyuanshiwuzhaoling_id`,`yonghu_id`,`yesno_types`,`shiwurenling_text`,`insert_time`,`create_time`) values (3,5,3,2,'33333','2022-01-18 14:38:26','2022-01-18 14:38:26');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','otkj28gygg5ds4uu8pyajnfs93ruruoi','2022-01-14 16:41:50','2022-01-18 16:10:23'),(2,1,'111','yonghu','用户','gp5x22byzsb8a5psb1d4q457v717o3mk','2022-01-15 09:38:14','2022-01-18 16:25:35'),(3,2,'222','yonghu','用户','vyzmfkjcgf2el7aexjnppxn565br7vlv','2022-01-18 10:06:45','2022-01-18 11:06:46'),(4,3,'123','yonghu','用户','oneu1iyuqwtzv8s8urhwp2j5f1kp634m','2022-01-18 14:36:58','2022-01-18 15:42:56');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xiaoyuanshiwuzhaoling` */

DROP TABLE IF EXISTS `xiaoyuanshiwuzhaoling`;

CREATE TABLE `xiaoyuanshiwuzhaoling` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoyuanshiwuzhaoling_uuid_number` varchar(200) DEFAULT NULL COMMENT '失物编号',
  `xiaoyuanshiwuzhaoling_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111',
  `shiwuzhaoling_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `status_types` int(11) DEFAULT NULL COMMENT '物品状态 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiaoyuanshiwuzhaoling_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `xiaoyuanshiwuzhaoling_time` timestamp NULL DEFAULT NULL COMMENT '拾遗时间',
  `xiaoyuanshiwuzhaoling_dizhi` varchar(200) DEFAULT NULL COMMENT '拾遗地址',
  `xiaoyuanshiwuzhaoling_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='失物招领';

/*Data for the table `xiaoyuanshiwuzhaoling` */

insert  into `xiaoyuanshiwuzhaoling`(`id`,`xiaoyuanshiwuzhaoling_uuid_number`,`xiaoyuanshiwuzhaoling_name`,`shiwuzhaoling_types`,`status_types`,`yonghu_id`,`xiaoyuanshiwuzhaoling_photo`,`xiaoyuanshiwuzhaoling_time`,`xiaoyuanshiwuzhaoling_dizhi`,`xiaoyuanshiwuzhaoling_content`,`create_time`) values (2,'1636450742221','物品1',1,2,1,'http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1636450760144.jpg','2022-01-08 00:00:00','拾遗地址1','<p><span style=\"color: rgb(96, 98, 102);\">详情1</span></p>','2022-01-09 17:39:39'),(4,'1642153177997','物品2',2,1,2,'http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1642153196163.jpg','2022-01-14 00:00:00','xx小区','<p><span style=\"color: rgb(96, 98, 102);\">详情1</span></p>','2022-01-09 17:37:49'),(5,'1642485225958','物品3',1,2,1,'http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1642485242542.jpg','2022-01-11 00:00:00','拾遗地址3','<p><span style=\"color: rgb(96, 98, 102);\">详情3</span></p>','2022-01-09 17:37:49');

/*Table structure for table `xiaoyuanshiwuzhaoling_liuyan` */

DROP TABLE IF EXISTS `xiaoyuanshiwuzhaoling_liuyan`;

CREATE TABLE `xiaoyuanshiwuzhaoling_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoyuanshiwuzhaoling_id` int(11) DEFAULT NULL COMMENT '物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiaoyuanshiwuzhaoling_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='失物招领留言';

/*Data for the table `xiaoyuanshiwuzhaoling_liuyan` */

insert  into `xiaoyuanshiwuzhaoling_liuyan`(`id`,`xiaoyuanshiwuzhaoling_id`,`yonghu_id`,`xiaoyuanshiwuzhaoling_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,4,1,'548879',NULL,'2022-01-15 17:33:46',NULL,'2022-01-15 17:33:46'),(2,5,3,'33333',NULL,'2022-01-18 14:38:19',NULL,'2022-01-18 14:38:19');

/*Table structure for table `xunwuqishi` */

DROP TABLE IF EXISTS `xunwuqishi`;

CREATE TABLE `xunwuqishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xunwuqishi_name` varchar(200) DEFAULT NULL COMMENT '物品名称 Search111',
  `shiwuzhaoling_types` int(11) DEFAULT NULL COMMENT '物品类型 Search111',
  `status_types` int(11) DEFAULT NULL COMMENT '物品状态 Search111',
  `xunwuqishi_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `xunwuqishi_time` timestamp NULL DEFAULT NULL COMMENT '丢失时间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xunwuqishi_dizhi` varchar(200) DEFAULT NULL COMMENT '丢失地址',
  `xunwuqishi_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='寻物启事';

/*Data for the table `xunwuqishi` */

insert  into `xunwuqishi`(`id`,`xunwuqishi_name`,`shiwuzhaoling_types`,`status_types`,`xunwuqishi_photo`,`xunwuqishi_time`,`yonghu_id`,`xunwuqishi_dizhi`,`xunwuqishi_content`,`create_time`) values (2,'寻物启事名称1',1,2,'http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1636450836093.jpg','2022-01-04 13:04:07',1,'丢失地址1','<p><span style=\"color: rgb(96, 98, 102);\">详情1111</span></p>','2022-01-09 17:37:49'),(3,'物品2',2,1,'http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1642483461577.jpg','2022-01-17 00:00:00',1,'丢失地址2','<p><span style=\"color: rgb(96, 98, 102);\">物品详情21112</span></p>','2022-01-09 17:37:49');

/*Table structure for table `xunwuqishi_liuyan` */

DROP TABLE IF EXISTS `xunwuqishi_liuyan`;

CREATE TABLE `xunwuqishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xunwuqishi_id` int(11) DEFAULT NULL COMMENT '物品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xunwuqishi_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='寻物启事留言';

/*Data for the table `xunwuqishi_liuyan` */

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011121114','17788559631','http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1642484443905.jpg','2022-01-09 17:37:49'),(2,'222','123456','用户2',1,'410882200011121123','17788559623','http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1636450676144.jpg','2022-01-09 17:37:49'),(3,'123','123456','用户123',2,'311321199312111111','13311333142','http://localhost:8080/xiaoyuanshiwuzhaoling/upload/1642488049914.webp','2022-01-18 14:37:51');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
