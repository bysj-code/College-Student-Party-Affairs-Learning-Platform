/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - dxsdwxxpt
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dxsdwxxpt` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dxsdwxxpt`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dangan` */

DROP TABLE IF EXISTS `dangan`;

CREATE TABLE `dangan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dangan_name` varchar(200) DEFAULT NULL COMMENT '档案名称  Search111 ',
  `dangan_uuid_number` varchar(200) DEFAULT NULL COMMENT '档案编号',
  `dangan_photo` varchar(200) DEFAULT NULL COMMENT '档案照片',
  `dangan_types` int(11) DEFAULT NULL COMMENT '档案类型 Search111',
  `dangan_file` varchar(200) DEFAULT NULL COMMENT '档案文件',
  `dangan_content` longtext COMMENT '档案介绍 ',
  `dangan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3  listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='档案';

/*Data for the table `dangan` */

insert  into `dangan`(`id`,`yonghu_id`,`dangan_name`,`dangan_uuid_number`,`dangan_photo`,`dangan_types`,`dangan_file`,`dangan_content`,`dangan_delete`,`insert_time`,`create_time`) values (1,1,'档案名称1','1681868116512','upload/dangan1.jpg',3,'upload/file.rar','档案介绍1',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,2,'档案名称2','1681868116487','upload/dangan2.jpg',1,'upload/file.rar','档案介绍2',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,2,'档案名称3','1681868116479','upload/dangan3.jpg',4,'upload/file.rar','档案介绍3',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,2,'档案名称4','1681868116484','upload/dangan4.jpg',4,'upload/file.rar','档案介绍4',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,3,'档案名称5','1681868116488','upload/dangan5.jpg',1,'upload/file.rar','档案介绍5',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,1,'档案名称6','1681868116447','upload/dangan6.jpg',2,'upload/file.rar','档案介绍6',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,3,'档案名称7','1681868116439','upload/dangan7.jpg',1,'upload/file.rar','档案介绍7',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,2,'档案名称8','1681868116508','upload/dangan8.jpg',2,'upload/file.rar','档案介绍8',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,2,'档案名称9','1681868116467','upload/dangan9.jpg',4,'upload/file.rar','档案介绍9',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,2,'档案名称10','1681868116501','upload/dangan10.jpg',1,'upload/file.rar','档案介绍10',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,1,'档案名称11','1681868116430','upload/dangan11.jpg',2,'upload/file.rar','档案介绍11',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,1,'档案名称12','1681868116448','upload/dangan12.jpg',1,'upload/file.rar','档案介绍12',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,2,'档案名称13','1681868116438','upload/dangan13.jpg',1,'upload/file.rar','档案介绍13',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,2,'档案名称14','1681868116494','upload/dangan14.jpg',2,'upload/file.rar','档案介绍14',1,'2023-04-19 09:35:16','2023-04-19 09:35:16');

/*Table structure for table `dangke` */

DROP TABLE IF EXISTS `dangke`;

CREATE TABLE `dangke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `dangke_name` varchar(200) DEFAULT NULL COMMENT '党课名称  Search111 ',
  `dangke_uuid_number` varchar(200) DEFAULT NULL COMMENT '党课编号',
  `dangke_photo` varchar(200) DEFAULT NULL COMMENT '党课照片',
  `dangke_address` varchar(200) DEFAULT NULL COMMENT '党课地点',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `dangke_types` int(11) DEFAULT NULL COMMENT '党课类型 Search111',
  `dangke_kucun_number` int(11) DEFAULT NULL COMMENT '参加人员',
  `dangke_content` longtext COMMENT '党课介绍 ',
  `dangke_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='党课';

/*Data for the table `dangke` */

insert  into `dangke`(`id`,`dangke_name`,`dangke_uuid_number`,`dangke_photo`,`dangke_address`,`zan_number`,`cai_number`,`dangke_types`,`dangke_kucun_number`,`dangke_content`,`dangke_delete`,`insert_time`,`create_time`) values (1,'党课名称1','1681868116494','upload/dangke1.jpg','党课地点1',105,87,3,101,'党课介绍1',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,'党课名称2','1681868116548','upload/dangke2.jpg','党课地点2',78,60,4,102,'党课介绍2',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,'党课名称3','1681868116588','upload/dangke3.jpg','党课地点3',244,235,1,103,'党课介绍3',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,'党课名称4','1681868116490','upload/dangke4.jpg','党课地点4',55,428,4,104,'党课介绍4',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,'党课名称5','1681868116583','upload/dangke5.jpg','党课地点5',138,81,1,105,'党课介绍5',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,'党课名称6','1681868116536','upload/dangke6.jpg','党课地点6',164,405,2,106,'党课介绍6',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,'党课名称7','1681868116558','upload/dangke7.jpg','党课地点7',371,243,3,107,'党课介绍7',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,'党课名称8','1681868116533','upload/dangke8.jpg','党课地点8',73,433,3,108,'党课介绍8',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,'党课名称9','1681868116541','upload/dangke9.jpg','党课地点9',117,28,1,109,'党课介绍9',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,'党课名称10','1681868116536','upload/dangke10.jpg','党课地点10',123,288,3,1010,'党课介绍10',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,'党课名称11','1681868116583','upload/dangke11.jpg','党课地点11',422,101,4,1011,'党课介绍11',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,'党课名称12','1681868116577','upload/dangke12.jpg','党课地点12',120,469,4,1012,'党课介绍12',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,'党课名称13','1681868116554','upload/dangke13.jpg','党课地点13',266,80,3,1012,'党课介绍13',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,'党课名称14','1681868116520','upload/dangke14.jpg','党课地点14',350,140,4,1013,'党课介绍14',1,'2023-04-19 09:35:16','2023-04-19 09:35:16');

/*Table structure for table `dangke_collection` */

DROP TABLE IF EXISTS `dangke_collection`;

CREATE TABLE `dangke_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dangke_id` int(11) DEFAULT NULL COMMENT '党课',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dangke_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='党课收藏';

/*Data for the table `dangke_collection` */

insert  into `dangke_collection`(`id`,`dangke_id`,`yonghu_id`,`dangke_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,2,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,3,1,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,4,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,5,3,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,6,1,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,7,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,8,3,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,9,1,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,10,3,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,11,3,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,12,1,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,13,1,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,14,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16');

/*Table structure for table `dangke_commentback` */

DROP TABLE IF EXISTS `dangke_commentback`;

CREATE TABLE `dangke_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dangke_id` int(11) DEFAULT NULL COMMENT '党课',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dangke_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='党课评价';

/*Data for the table `dangke_commentback` */

insert  into `dangke_commentback`(`id`,`dangke_id`,`yonghu_id`,`dangke_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-04-19 09:35:16','回复信息1','2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,2,3,'评价内容2','2023-04-19 09:35:16','回复信息2','2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,3,1,'评价内容3','2023-04-19 09:35:16','回复信息3','2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,4,3,'评价内容4','2023-04-19 09:35:16','回复信息4','2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,5,2,'评价内容5','2023-04-19 09:35:16','回复信息5','2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,6,1,'评价内容6','2023-04-19 09:35:16','回复信息6','2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,7,3,'评价内容7','2023-04-19 09:35:16','回复信息7','2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,8,2,'评价内容8','2023-04-19 09:35:16','回复信息8','2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,9,1,'评价内容9','2023-04-19 09:35:16','回复信息9','2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,10,1,'评价内容10','2023-04-19 09:35:16','回复信息10','2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,11,1,'评价内容11','2023-04-19 09:35:16','回复信息11','2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,12,2,'评价内容12','2023-04-19 09:35:16','回复信息12','2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,13,3,'评价内容13','2023-04-19 09:35:16','回复信息13','2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,14,2,'评价内容14','2023-04-19 09:35:16','回复信息14','2023-04-19 09:35:16','2023-04-19 09:35:16');

/*Table structure for table `dangke_order` */

DROP TABLE IF EXISTS `dangke_order`;

CREATE TABLE `dangke_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dangke_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `dangke_id` int(11) DEFAULT NULL COMMENT '党课',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dangke_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='党课报名';

/*Data for the table `dangke_order` */

insert  into `dangke_order`(`id`,`dangke_order_uuid_number`,`dangke_id`,`yonghu_id`,`dangke_order_types`,`insert_time`,`create_time`) values (1,'1681870690934',13,1,102,'2023-04-19 10:18:11','2023-04-19 10:18:11'),(2,'1681874005131',14,1,103,'2023-04-19 11:13:25','2023-04-19 11:13:25');

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-19 09:34:38'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-19 09:34:38'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-19 09:34:38'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-19 09:34:38'),(5,'shenqing_yuyue_types','申请进度',1,'入党积极分子遴选',NULL,NULL,'2023-04-19 09:34:38'),(6,'shenqing_yuyue_types','申请进度',2,'发展对象培训',NULL,NULL,'2023-04-19 09:34:38'),(7,'shenqing_yuyue_types','申请进度',3,'预备党员',NULL,NULL,'2023-04-19 09:34:38'),(8,'shenqing_yuyue_types','申请进度',4,'正式党员',NULL,NULL,'2023-04-19 09:34:38'),(9,'shenqing_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-19 09:34:38'),(10,'shenqing_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-19 09:34:38'),(11,'shenqing_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-19 09:34:38'),(12,'dangan_types','档案类型',1,'档案类型1',NULL,NULL,'2023-04-19 09:34:38'),(13,'dangan_types','档案类型',2,'档案类型2',NULL,NULL,'2023-04-19 09:34:38'),(14,'dangan_types','档案类型',3,'档案类型3',NULL,NULL,'2023-04-19 09:34:38'),(15,'dangan_types','档案类型',4,'档案类型4',NULL,NULL,'2023-04-19 09:34:38'),(16,'xuexi_types','在线学习类型',1,'在线学习类型1',NULL,NULL,'2023-04-19 09:34:38'),(17,'xuexi_types','在线学习类型',2,'在线学习类型2',NULL,NULL,'2023-04-19 09:34:38'),(18,'xuexi_types','在线学习类型',3,'在线学习类型3',NULL,NULL,'2023-04-19 09:34:38'),(19,'xuexi_types','在线学习类型',4,'在线学习类型4',NULL,NULL,'2023-04-19 09:34:38'),(20,'xuexi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-19 09:34:38'),(21,'xuexi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-19 09:34:38'),(22,'xuexi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-19 09:34:38'),(23,'dangke_types','党课类型',1,'党课类型1',NULL,NULL,'2023-04-19 09:34:39'),(24,'dangke_types','党课类型',2,'党课类型2',NULL,NULL,'2023-04-19 09:34:39'),(25,'dangke_types','党课类型',3,'党课类型3',NULL,NULL,'2023-04-19 09:34:39'),(26,'dangke_types','党课类型',4,'党课类型4',NULL,NULL,'2023-04-19 09:34:39'),(27,'dangke_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-19 09:34:39'),(28,'dangke_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-04-19 09:34:39'),(29,'dangke_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-04-19 09:34:39'),(30,'dangke_order_types','订单类型',101,'已报名',NULL,NULL,'2023-04-19 09:34:39'),(31,'dangke_order_types','订单类型',102,'已取消报名',NULL,NULL,'2023-04-19 09:34:39'),(32,'dangke_order_types','订单类型',103,'已同意',NULL,NULL,'2023-04-19 09:34:39'),(33,'dangke_order_types','订单类型',104,'已参加',NULL,NULL,'2023-04-19 09:34:39'),(34,'dangke_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-19 09:34:39'),(35,'kaoqin_types','考勤结果',1,'签到',NULL,NULL,'2023-04-19 09:34:39'),(36,'kaoqin_types','考勤结果',2,'签退',NULL,NULL,'2023-04-19 09:34:39'),(37,'kaoqin_types','考勤结果',3,'请假',NULL,NULL,'2023-04-19 09:34:39'),(38,'zuoye_types','作业类型',1,'作业类型1',NULL,NULL,'2023-04-19 09:34:39'),(39,'zuoye_types','作业类型',2,'作业类型2',NULL,NULL,'2023-04-19 09:34:39'),(40,'zuoye_types','作业类型',3,'作业类型3',NULL,NULL,'2023-04-19 09:34:39'),(41,'zuoye_types','作业类型',4,'作业类型4',NULL,NULL,'2023-04-19 09:34:39'),(42,'zuoye_tijiao_yesno_types','提交状态',1,'待批改',NULL,NULL,'2023-04-19 09:34:39'),(43,'zuoye_tijiao_yesno_types','提交状态',2,'已批改',NULL,NULL,'2023-04-19 09:34:39'),(44,'zuoye_tijiao_yesno_types','提交状态',3,'未批改',NULL,NULL,'2023-04-19 09:34:39'),(45,'zujuan_types','组卷方式',1,'自动组卷',NULL,NULL,'2023-04-19 09:34:39'),(46,'zujuan_types','组卷方式',2,'手动组卷',NULL,NULL,'2023-04-19 09:34:39'),(47,'kemu_types','科目',1,'语文',NULL,NULL,'2023-04-19 09:34:39'),(48,'kemu_types','科目',2,'数学',NULL,NULL,'2023-04-19 09:34:39'),(49,'exampaper_types','试卷状态',1,'启用',NULL,NULL,'2023-04-19 09:34:39'),(50,'exampaper_types','试卷状态',2,'禁用',NULL,NULL,'2023-04-19 09:34:39'),(51,'examquestion_types','试题类型',1,'单选题',NULL,NULL,'2023-04-19 09:34:39'),(52,'examquestion_types','试题类型',2,'多选题',NULL,NULL,'2023-04-19 09:34:39'),(53,'examquestion_types','试题类型',3,'判断题',NULL,NULL,'2023-04-19 09:34:39'),(54,'examquestion_types','试题类型',4,'填空题',NULL,NULL,'2023-04-19 09:34:39');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_name` varchar(200) NOT NULL COMMENT '试卷名称 Search111',
  `exampaper_date` int(11) DEFAULT NULL COMMENT '考试时长(分钟)',
  `exampaper_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试卷总分数',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `exampaper_types` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态 Search111',
  `zujuan_types` int(11) DEFAULT NULL COMMENT '组卷方式',
  `exampaper_delete` int(255) DEFAULT '0' COMMENT '逻辑删除（1代表未删除 2代表已删除）',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='试卷';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`exampaper_name`,`exampaper_date`,`exampaper_myscore`,`kemu_types`,`exampaper_types`,`zujuan_types`,`exampaper_delete`,`create_time`) values (1,'测试试卷1',60,100,2,1,2,1,'2023-04-19 09:34:39'),(2,'测试试卷2',180,100,2,1,1,1,'2023-04-19 09:34:39');

/*Table structure for table `exampapertopic` */

DROP TABLE IF EXISTS `exampapertopic`;

CREATE TABLE `exampapertopic` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷',
  `examquestion_id` int(20) NOT NULL COMMENT '试题',
  `exampapertopic_number` int(20) NOT NULL COMMENT '试题分数',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='试卷选题';

/*Data for the table `exampapertopic` */

insert  into `exampapertopic`(`id`,`exampaper_id`,`examquestion_id`,`exampapertopic_number`,`create_time`) values (7,1,5,10,'2023-04-19 09:34:39'),(8,1,4,10,'2023-04-19 09:34:39'),(9,1,6,70,'2023-04-19 09:34:39'),(18,2,5,15,'2023-04-19 09:34:39'),(19,2,11,15,'2023-04-19 09:34:39'),(20,2,9,15,'2023-04-19 09:34:39'),(21,2,1,15,'2023-04-19 09:34:39'),(22,2,10,20,'2023-04-19 09:34:39'),(23,2,3,20,'2023-04-19 09:34:39'),(31,1,7,10,'2023-04-19 09:34:39'),(33,1,9,0,'2023-04-19 09:34:39'),(34,1,12,0,'2023-04-19 09:34:39');

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examquestion_name` varchar(200) DEFAULT NULL COMMENT '试题名称 Search111',
  `kemu_types` int(11) DEFAULT NULL COMMENT '科目 Search111',
  `examquestion_options` longtext COMMENT '选项，json字符串',
  `examquestion_answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `examquestion_analysis` longtext COMMENT '答案解析',
  `examquestion_types` int(20) DEFAULT '0' COMMENT '试题类型 Search111',
  `examquestion_sequence` int(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`examquestion_name`,`kemu_types`,`examquestion_options`,`examquestion_answer`,`examquestion_analysis`,`examquestion_types`,`examquestion_sequence`,`create_time`) values (1,'1-1=1',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','1-1=0',3,1,'2023-04-19 09:34:39'),(2,'1+1=？',2,'[{\"text\":\"1\",\"code\":\"A\"},{\"text\":\"2\",\"code\":\"B\"},{\"text\":\"3\",\"code\":\"C\"},{\"text\":\"4\",\"code\":\"D\"}]','B','1+1=2',1,2,'2023-04-19 09:34:39'),(3,'1+1-1=?',2,'[]','1','1+1-1=1',4,3,'2023-04-19 09:34:39'),(4,'2+2=?',2,'[]','4','2+2=4',4,4,'2023-04-19 09:34:39'),(5,'1-1-1+6=?',2,'[{\"text\":\"4\",\"code\":\"A\"},{\"text\":\"5\",\"code\":\"B\"},{\"text\":\"6\",\"code\":\"C\"},{\"text\":\"3\",\"code\":\"D\"}]','B','1-1-1+6=5',1,5,'2023-04-19 09:34:39'),(6,'3+3=9',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','B','3+3=6',3,6,'2023-04-19 09:34:39'),(7,'试题名称1',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A,B,C','答案解析1',2,7,'2023-04-19 09:34:39'),(8,'试题名称2',2,'[]','正确答案2','答案解析2',4,8,'2023-04-19 09:34:39'),(9,'试题名称3',2,'[{\"text\":\"对\",\"code\":\"A\"},{\"text\":\"错\",\"code\":\"B\"}]','A','答案解析3',3,9,'2023-04-19 09:34:39'),(10,'试题名称4',2,'[]','正确答案4','答案解析4',4,10,'2023-04-19 09:34:39'),(11,'试题名称5',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','B','答案解析5',1,11,'2023-04-19 09:34:39'),(12,'试题名称6',2,'[{\"text\":\"内容1\",\"code\":\"A\"},{\"text\":\"内容2\",\"code\":\"B\"},{\"text\":\"内容3\",\"code\":\"C\"},{\"text\":\"内容4\",\"code\":\"D\"}]','A','答案解析6',1,12,'2023-04-19 09:34:39');

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examrecord_uuid_number` varchar(200) DEFAULT NULL COMMENT '考试编号',
  `yonghu_id` int(20) NOT NULL COMMENT '考试用户',
  `exampaper_id` int(20) NOT NULL COMMENT '所属试卷id（外键）',
  `total_score` int(200) DEFAULT NULL COMMENT '所得总分',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '考试时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`examrecord_uuid_number`,`yonghu_id`,`exampaper_id`,`total_score`,`insert_time`,`create_time`) values (1,'1681874027104',1,2,60,'2023-04-19 11:13:47','2023-04-19 11:13:47');

/*Table structure for table `examredetails` */

DROP TABLE IF EXISTS `examredetails`;

CREATE TABLE `examredetails` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `examredetails_uuid_number` varchar(200) DEFAULT NULL COMMENT '试卷编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  `examredetails_myscore` int(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='答题详情表';

/*Data for the table `examredetails` */

insert  into `examredetails`(`id`,`examredetails_uuid_number`,`yonghu_id`,`examquestion_id`,`examredetails_myanswer`,`examredetails_myscore`,`create_time`) values (1,'1681874027104',1,3,'3',0,'2023-04-19 11:13:47'),(2,'1681874027104',1,10,'4',0,'2023-04-19 11:13:47'),(3,'1681874027104',1,1,'B',15,'2023-04-19 11:13:47'),(4,'1681874027104',1,9,'A',15,'2023-04-19 11:13:47'),(5,'1681874027104',1,11,'B',15,'2023-04-19 11:13:47'),(6,'1681874027104',1,5,'B',15,'2023-04-19 11:13:47');

/*Table structure for table `examrewrongquestion` */

DROP TABLE IF EXISTS `examrewrongquestion`;

CREATE TABLE `examrewrongquestion` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `exampaper_id` int(20) NOT NULL COMMENT '试卷（外键）',
  `examquestion_id` int(20) NOT NULL COMMENT '试题id（外键）',
  `examredetails_myanswer` varchar(200) DEFAULT NULL COMMENT '考生作答',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='错题表';

/*Data for the table `examrewrongquestion` */

insert  into `examrewrongquestion`(`id`,`yonghu_id`,`exampaper_id`,`examquestion_id`,`examredetails_myanswer`,`insert_time`,`create_time`) values (1,1,2,3,'3','2023-04-19 11:13:47','2023-04-19 11:13:47'),(2,1,2,10,'4','2023-04-19 11:13:47','2023-04-19 11:13:47');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-19 09:35:16','公告详情1','2023-04-19 09:35:16'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-04-19 09:35:16','公告详情2','2023-04-19 09:35:16'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-19 09:35:16','公告详情3','2023-04-19 09:35:16'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-19 09:35:16','公告详情4','2023-04-19 09:35:16'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-19 09:35:16','公告详情5','2023-04-19 09:35:16'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-19 09:35:16','公告详情6','2023-04-19 09:35:16'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-19 09:35:16','公告详情7','2023-04-19 09:35:16'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-04-19 09:35:16','公告详情8','2023-04-19 09:35:16'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-19 09:35:16','公告详情9','2023-04-19 09:35:16'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-04-19 09:35:16','公告详情10','2023-04-19 09:35:16'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-04-19 09:35:16','公告详情11','2023-04-19 09:35:16'),(12,'公告名称12','upload/gonggao12.jpg',1,'2023-04-19 09:35:16','公告详情12','2023-04-19 09:35:16'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-19 09:35:16','公告详情13','2023-04-19 09:35:16'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-19 09:35:16','公告详情14','2023-04-19 09:35:16');

/*Table structure for table `gongzuo` */

DROP TABLE IF EXISTS `gongzuo`;

CREATE TABLE `gongzuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuo_name` varchar(200) DEFAULT NULL COMMENT '党务工作者姓名 Search111 ',
  `gongzuo_phone` varchar(200) DEFAULT NULL COMMENT '党务工作者手机号',
  `gongzuo_id_number` varchar(200) DEFAULT NULL COMMENT '党务工作者身份证号',
  `gongzuo_photo` varchar(200) DEFAULT NULL COMMENT '党务工作者头像',
  `shenqing_yuyue_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `gongzuo_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='党务工作者';

/*Data for the table `gongzuo` */

insert  into `gongzuo`(`id`,`username`,`password`,`gongzuo_name`,`gongzuo_phone`,`gongzuo_id_number`,`gongzuo_photo`,`shenqing_yuyue_types`,`sex_types`,`gongzuo_email`,`create_time`) values (1,'a1','123456','党务工作者姓名1','17703786901','410224199010102001','upload/gongzuo1.jpg',4,1,'1@qq.com','2023-04-19 09:35:16'),(2,'a2','123456','党务工作者姓名2','17703786902','410224199010102002','upload/gongzuo2.jpg',3,2,'2@qq.com','2023-04-19 09:35:16'),(3,'a3','123456','党务工作者姓名3','17703786903','410224199010102003','upload/gongzuo3.jpg',3,1,'3@qq.com','2023-04-19 09:35:16');

/*Table structure for table `kaoqin` */

DROP TABLE IF EXISTS `kaoqin`;

CREATE TABLE `kaoqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `dangke_id` int(11) DEFAULT NULL COMMENT '党课',
  `kaoqin_types` int(11) DEFAULT NULL COMMENT '考勤结果 Search111 ',
  `kaoqin_content` longtext COMMENT '考勤详情 ',
  `kaoqin_time` date DEFAULT NULL COMMENT '考勤日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='签到信息';

/*Data for the table `kaoqin` */

insert  into `kaoqin`(`id`,`yonghu_id`,`dangke_id`,`kaoqin_types`,`kaoqin_content`,`kaoqin_time`,`insert_time`,`create_time`) values (1,1,1,2,'考勤详情1','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,2,2,2,'考勤详情2','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,2,3,2,'考勤详情3','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,1,4,1,'考勤详情4','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,3,5,2,'考勤详情5','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,1,6,3,'考勤详情6','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,2,7,2,'考勤详情7','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,2,8,3,'考勤详情8','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,1,9,1,'考勤详情9','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,2,10,1,'考勤详情10','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,3,11,3,'考勤详情11','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,2,12,1,'考勤详情12','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,3,13,1,'考勤详情13','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,1,14,3,'考勤详情14','2023-04-19','2023-04-19 09:35:16','2023-04-19 09:35:16'),(15,1,14,1,'131','2023-04-19','2023-04-19 11:14:46','2023-04-19 11:14:46');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='谈心谈话';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,2,'留言内容1','2023-04-19 09:35:16','回复信息1','2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,2,'留言内容2','2023-04-19 09:35:16','回复信息2','2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,2,'留言内容3','2023-04-19 09:35:16','回复信息3','2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,1,'留言内容4','2023-04-19 09:35:16','回复信息4','2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,1,'留言内容5','2023-04-19 09:35:16','回复信息5','2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,2,'留言内容6','2023-04-19 09:35:16','回复信息6','2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,2,'留言内容7','2023-04-19 09:35:16','回复信息7','2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,3,'留言内容8','2023-04-19 09:35:16','回复信息8','2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,3,'留言内容9','2023-04-19 09:35:16','回复信息9','2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,3,'留言内容10','2023-04-19 09:35:16','回复信息10','2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,2,'留言内容11','2023-04-19 09:35:16','回复信息11','2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,2,'留言内容12','2023-04-19 09:35:16','回复信息12','2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,1,'留言内容13','2023-04-19 09:35:16','回复信息13','2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,2,'留言内容14','2023-04-19 09:35:16','回复信息14','2023-04-19 09:35:16','2023-04-19 09:35:16'),(18,1,'我要找党员谈心','2023-04-19 11:15:05','',NULL,'2023-04-19 11:15:05'),(19,1,'2626','2023-04-19 11:23:31','',NULL,'2023-04-19 11:23:31');

/*Table structure for table `shenqing_yuyue` */

DROP TABLE IF EXISTS `shenqing_yuyue`;

CREATE TABLE `shenqing_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shenqing_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shenqing_yuyue_text` longtext COMMENT '申请理由',
  `shenqing_yuyue_file` varchar(200) DEFAULT NULL COMMENT '上传图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '入党申请时间',
  `shenqing_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `shenqing_yuyue_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `shenqing_yuyue_yesno_text` longtext COMMENT '审核回复',
  `shenqing_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `shenqing_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='入党申请';

/*Data for the table `shenqing_yuyue` */

insert  into `shenqing_yuyue`(`id`,`shenqing_yuyue_uuid_number`,`yonghu_id`,`shenqing_yuyue_text`,`shenqing_yuyue_file`,`insert_time`,`shenqing_yuyue_yesno_types`,`shenqing_yuyue_types`,`shenqing_yuyue_yesno_text`,`shenqing_yuyue_shenhe_time`,`shenqing_yuyue_time`,`create_time`) values (1,'1681868116584',3,'申请理由1','upload/file.rar','2023-04-19 09:35:16',1,2,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,'1681868116507',3,'申请理由2','upload/file.rar','2023-04-19 09:35:16',1,4,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,'1681868116505',2,'申请理由3','upload/file.rar','2023-04-19 09:35:16',1,1,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,'1681868116508',3,'申请理由4','upload/file.rar','2023-04-19 09:35:16',1,3,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,'1681868116575',1,'申请理由5','upload/file.rar','2023-04-19 09:35:16',1,2,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,'1681868116569',3,'申请理由6','upload/file.rar','2023-04-19 09:35:16',1,3,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,'1681868116519',2,'申请理由7','upload/file.rar','2023-04-19 09:35:16',1,4,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,'1681868116536',3,'申请理由8','upload/file.rar','2023-04-19 09:35:16',1,4,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,'1681868116518',2,'申请理由9','upload/file.rar','2023-04-19 09:35:16',1,4,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,'1681868116560',1,'申请理由10','upload/file.rar','2023-04-19 09:35:16',1,3,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,'1681868116514',2,'申请理由11','upload/file.rar','2023-04-19 09:35:16',1,1,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,'1681868116558',2,'申请理由12','upload/file.rar','2023-04-19 09:35:16',1,1,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,'1681868116536',1,'申请理由13','upload/file.rar','2023-04-19 09:35:16',1,3,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,'1681868116595',3,'申请理由14','upload/file.rar','2023-04-19 09:35:16',1,2,NULL,NULL,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(15,'1681871746058',1,'11','upload/1681871762188.jpg','2023-04-19 10:36:05',1,1,'',NULL,'2023-04-19 10:35:46','2023-04-19 10:36:05'),(16,'1681874121444',1,'99','upload/1681874129098.jpg','2023-04-19 11:16:25',2,1,'好说的','2023-04-19 11:23:40','2023-04-19 11:15:21','2023-04-19 11:16:25');

/*Table structure for table `tixing` */

DROP TABLE IF EXISTS `tixing`;

CREATE TABLE `tixing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `tixing_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='提醒';

/*Data for the table `tixing` */

insert  into `tixing`(`id`,`yonghu_id`,`tixing_text`,`insert_time`,`create_time`) values (1,2,'留言内容1','2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,2,'留言内容2','2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,3,'留言内容3','2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,3,'留言内容4','2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,1,'留言内容5','2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,3,'留言内容6','2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,2,'留言内容7','2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,2,'留言内容8','2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,2,'留言内容9','2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,3,'留言内容10','2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,2,'留言内容11','2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,2,'留言内容12','2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,3,'留言内容13','2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,1,'留言内容14','2023-04-19 09:35:16','2023-04-19 09:35:16'),(15,1,'记得提交入党申请三个月了','2023-04-19 11:24:34','2023-04-19 11:24:34');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','6c2g2h8o783tougkvcpqgzpu9tj8s9lr','2023-04-19 09:39:13','2023-04-19 12:26:40'),(2,1,'a1','yonghu','用户','nss5lfi91ztu7kp8ak56wtbjvosra27m','2023-04-19 09:49:09','2023-04-19 12:19:54'),(3,1,'a1','gongzuo','党务工作者','ddsmp2yaw520m1gko857yg9vmp5ciiff','2023-04-19 11:20:42','2023-04-19 12:20:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-19 09:34:38');

/*Table structure for table `xuexi` */

DROP TABLE IF EXISTS `xuexi`;

CREATE TABLE `xuexi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuexi_name` varchar(200) DEFAULT NULL COMMENT '在线学习名称  Search111 ',
  `xuexi_uuid_number` varchar(200) DEFAULT NULL COMMENT '在线学习编号',
  `xuexi_photo` varchar(200) DEFAULT NULL COMMENT '在线学习照片',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `xuexi_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `xuexi_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `xuexi_types` int(11) DEFAULT NULL COMMENT '在线学习类型 Search111',
  `xuexi_content` longtext COMMENT '在线学习介绍 ',
  `xuexi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='在线学习';

/*Data for the table `xuexi` */

insert  into `xuexi`(`id`,`xuexi_name`,`xuexi_uuid_number`,`xuexi_photo`,`zan_number`,`cai_number`,`xuexi_file`,`xuexi_video`,`xuexi_types`,`xuexi_content`,`xuexi_delete`,`insert_time`,`create_time`) values (1,'在线学习名称1','1681868116581','upload/xuexi1.jpg',108,372,'upload/file.rar','upload/video.mp4',2,'在线学习介绍1',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,'在线学习名称2','1681868116597','upload/xuexi2.jpg',478,114,'upload/file.rar','upload/video.mp4',4,'在线学习介绍2',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,'在线学习名称3','1681868116575','upload/xuexi3.jpg',60,322,'upload/file.rar','upload/video.mp4',2,'在线学习介绍3',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,'在线学习名称4','1681868116579','upload/xuexi4.jpg',392,452,'upload/file.rar','upload/video.mp4',1,'在线学习介绍4',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,'在线学习名称5','1681868116516','upload/xuexi5.jpg',426,173,'upload/file.rar','upload/video.mp4',4,'在线学习介绍5',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,'在线学习名称6','1681868116584','upload/xuexi6.jpg',63,448,'upload/file.rar','upload/video.mp4',2,'在线学习介绍6',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,'在线学习名称7','1681868116604','upload/xuexi7.jpg',169,242,'upload/file.rar','upload/video.mp4',2,'在线学习介绍7',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,'在线学习名称8','1681868116591','upload/xuexi8.jpg',330,411,'upload/file.rar','upload/video.mp4',1,'在线学习介绍8',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,'在线学习名称9','1681868116567','upload/xuexi9.jpg',480,309,'upload/file.rar','upload/video.mp4',2,'在线学习介绍9',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,'在线学习名称10','1681868116570','upload/xuexi10.jpg',304,7,'upload/file.rar','upload/video.mp4',2,'在线学习介绍10',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,'在线学习名称11','1681868116582','upload/xuexi11.jpg',181,418,'upload/file.rar','upload/video.mp4',2,'在线学习介绍11',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,'在线学习名称12','1681868116514','upload/xuexi12.jpg',320,456,'upload/file.rar','upload/video.mp4',2,'在线学习介绍12',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,'在线学习名称13','1681868116568','upload/xuexi13.jpg',340,467,'upload/file.rar','upload/video.mp4',2,'在线学习介绍13',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,'在线学习名称14','1681868116596','upload/xuexi14.jpg',409,490,'upload/file.rar','upload/video.mp4',3,'在线学习介绍14',1,'2023-04-19 09:35:16','2023-04-19 09:35:16');

/*Table structure for table `xuexi_collection` */

DROP TABLE IF EXISTS `xuexi_collection`;

CREATE TABLE `xuexi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuexi_id` int(11) DEFAULT NULL COMMENT '在线学习',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xuexi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='在线学习收藏';

/*Data for the table `xuexi_collection` */

insert  into `xuexi_collection`(`id`,`xuexi_id`,`yonghu_id`,`xuexi_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,2,1,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,3,3,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,4,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,5,3,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,6,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,7,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,8,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,9,1,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,10,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,11,3,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,12,3,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,13,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,14,2,1,'2023-04-19 09:35:16','2023-04-19 09:35:16');

/*Table structure for table `xuexi_liuyan` */

DROP TABLE IF EXISTS `xuexi_liuyan`;

CREATE TABLE `xuexi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuexi_id` int(11) DEFAULT NULL COMMENT '在线学习',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xuexi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='在线学习留言';

/*Data for the table `xuexi_liuyan` */

insert  into `xuexi_liuyan`(`id`,`xuexi_id`,`yonghu_id`,`xuexi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'留言内容1','2023-04-19 09:35:16','回复信息1','2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,2,2,'留言内容2','2023-04-19 09:35:16','回复信息2','2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,3,3,'留言内容3','2023-04-19 09:35:16','回复信息3','2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,4,2,'留言内容4','2023-04-19 09:35:16','回复信息4','2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,5,3,'留言内容5','2023-04-19 09:35:16','回复信息5','2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,6,2,'留言内容6','2023-04-19 09:35:16','回复信息6','2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,7,1,'留言内容7','2023-04-19 09:35:16','回复信息7','2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,8,2,'留言内容8','2023-04-19 09:35:16','回复信息8','2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,9,1,'留言内容9','2023-04-19 09:35:16','回复信息9','2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,10,3,'留言内容10','2023-04-19 09:35:16','回复信息10','2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,11,3,'留言内容11','2023-04-19 09:35:16','回复信息11','2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,12,1,'留言内容12','2023-04-19 09:35:16','回复信息12','2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,13,3,'留言内容13','2023-04-19 09:35:16','回复信息13','2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,14,1,'留言内容14','2023-04-19 09:35:16','回复信息14','2023-04-19 09:35:16','2023-04-19 09:35:16'),(15,14,1,'56641','2023-04-19 11:16:49',NULL,NULL,'2023-04-19 11:16:49');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `shenqing_yuyue_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`shenqing_yuyue_types`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',3,1,'1@qq.com','2023-04-19 09:35:16'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',4,1,'2@qq.com','2023-04-19 09:35:16'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',3,1,'3@qq.com','2023-04-19 09:35:16');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `dangke_id` int(11) DEFAULT NULL COMMENT '党课',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名称  Search111 ',
  `zuoye_uuid_number` varchar(200) DEFAULT NULL COMMENT '作业编号',
  `zuoye_photo` varchar(200) DEFAULT NULL COMMENT '作业封面',
  `zuoye_types` int(11) DEFAULT NULL COMMENT '作业类型 Search111',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '作业下载',
  `zuoye_content` text COMMENT '作业介绍 ',
  `zuoye_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`dangke_id`,`zuoye_name`,`zuoye_uuid_number`,`zuoye_photo`,`zuoye_types`,`zuoye_file`,`zuoye_content`,`zuoye_delete`,`insert_time`,`create_time`) values (1,1,'作业名称1','1681868116568','upload/zuoye1.jpg',3,'upload/file.rar','作业介绍1',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,2,'作业名称2','1681868116545','upload/zuoye2.jpg',1,'upload/file.rar','作业介绍2',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,3,'作业名称3','1681868116542','upload/zuoye3.jpg',4,'upload/file.rar','作业介绍3',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,4,'作业名称4','1681868116609','upload/zuoye4.jpg',3,'upload/file.rar','作业介绍4',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,5,'作业名称5','1681868116524','upload/zuoye5.jpg',3,'upload/file.rar','作业介绍5',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,6,'作业名称6','1681868116518','upload/zuoye6.jpg',2,'upload/file.rar','作业介绍6',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,7,'作业名称7','1681868116581','upload/zuoye7.jpg',2,'upload/file.rar','作业介绍7',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,8,'作业名称8','1681868116578','upload/zuoye8.jpg',4,'upload/file.rar','作业介绍8',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,9,'作业名称9','1681868116608','upload/zuoye9.jpg',4,'upload/file.rar','作业介绍9',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,10,'作业名称10','1681868116518','upload/zuoye10.jpg',1,'upload/file.rar','作业介绍10',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,11,'作业名称11','1681868116544','upload/zuoye11.jpg',2,'upload/file.rar','作业介绍11',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,12,'作业名称12','1681868116563','upload/zuoye12.jpg',2,'upload/file.rar','作业介绍12',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,13,'作业名称13','1681868116603','upload/zuoye13.jpg',1,'upload/file.rar','作业介绍13',1,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,14,'作业名称14','1681868116539','upload/zuoye14.jpg',2,'upload/file.rar','作业介绍14',1,'2023-04-19 09:35:16','2023-04-19 09:35:16');

/*Table structure for table `zuoye_tijiao` */

DROP TABLE IF EXISTS `zuoye_tijiao`;

CREATE TABLE `zuoye_tijiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zuoye_tijiao_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名唯一编号 Search111 ',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `gongzuo_id` int(11) DEFAULT NULL COMMENT '党务工作者',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zuoye_tijiao_text` text COMMENT '内容',
  `zuoye_shangchuan_file` varchar(200) DEFAULT NULL COMMENT '作业上传',
  `zuoye_tijiao_yesno_types` int(11) DEFAULT NULL COMMENT '提交状态 Search111 ',
  `zuoye_tijiao_pigai` int(11) DEFAULT NULL COMMENT '批改分数',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '作业提交时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='作业提交';

/*Data for the table `zuoye_tijiao` */

insert  into `zuoye_tijiao`(`id`,`zuoye_tijiao_uuid_number`,`zuoye_id`,`gongzuo_id`,`yonghu_id`,`zuoye_tijiao_text`,`zuoye_shangchuan_file`,`zuoye_tijiao_yesno_types`,`zuoye_tijiao_pigai`,`insert_time`,`create_time`) values (1,'1681868116543',1,2,2,'内容1','upload/file.rar',1,70,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(2,'1681868116538',2,3,1,'内容2','upload/file.rar',1,17,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(3,'1681868116543',3,3,3,'内容3','upload/file.rar',1,156,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(4,'1681868116535',4,3,1,'内容4','upload/file.rar',1,53,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(5,'1681868116585',5,1,1,'内容5','upload/file.rar',1,204,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(6,'1681868116556',6,2,1,'内容6','upload/file.rar',1,205,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(7,'1681868116562',7,2,2,'内容7','upload/file.rar',1,62,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(8,'1681868116570',8,3,2,'内容8','upload/file.rar',1,220,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(9,'1681868116543',9,1,2,'内容9','upload/file.rar',1,304,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(10,'1681868116586',10,3,1,'内容10','upload/file.rar',1,481,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(11,'1681868116571',11,1,2,'内容11','upload/file.rar',1,232,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(12,'1681868116576',12,1,2,'内容12','upload/file.rar',1,456,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(13,'1681868116534',13,3,1,'内容13','upload/file.rar',1,398,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(14,'1681868116534',14,2,3,'内容14','upload/file.rar',1,338,'2023-04-19 09:35:16','2023-04-19 09:35:16'),(15,'1681871622427',13,1,1,'件大事sad撒','upload/1681871640753.jpg',1,0,'2023-04-19 10:34:04','2023-04-19 10:34:04'),(16,'1681874239389',13,1,1,'456','upload/1681874251764.jpg',2,60,'2023-04-19 11:18:10','2023-04-19 11:18:10');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
