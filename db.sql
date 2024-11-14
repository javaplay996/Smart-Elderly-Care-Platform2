/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhihuiyangdao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhihuiyangdao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhihuiyangdao`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-07 19:40:59'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-07 19:40:59'),(3,'duju_types','是否独居',1,'独居',NULL,'2021-05-07 19:40:59'),(4,'duju_types','是否独居',2,'不独居',NULL,'2021-05-07 19:41:00'),(5,'canji_types','是否残疾',1,'残疾',NULL,'2021-05-07 19:41:00'),(6,'canji_types','是否残疾',2,'健康',NULL,'2021-05-07 19:41:00'),(7,'yanglaofanghsi_types','养老方式类型名称',1,'社区',NULL,'2021-05-07 19:41:00'),(8,'yanglaofanghsi_types','养老方式类型名称',2,'机构',NULL,'2021-05-07 19:41:00'),(9,'yanglaofanghsi_types','养老方式类型名称',3,'组团',NULL,'2021-05-07 19:41:00'),(10,'yanglaofanghsi_types','养老方式类型名称',4,'居家',NULL,'2021-05-07 19:41:00'),(11,'qiuzhu_types','求助类型名称',1,'搬家',NULL,'2021-05-07 19:41:00'),(12,'qiuzhu_types','求助类型名称',2,'约诊',NULL,'2021-05-07 19:41:00'),(13,'qiuzhu_types','求助类型名称',3,'代购',NULL,'2021-05-07 19:41:00'),(14,'qiuzhu_types','求助类型名称',4,'遛狗',NULL,'2021-05-07 19:41:00'),(15,'qiuzhu_yesno_types','求助是否处理',1,'未处理',NULL,'2021-05-07 19:41:00'),(16,'qiuzhu_yesno_types','求助是否处理',2,'已处理',NULL,'2021-05-07 19:41:00'),(17,'jiuzhenjilu_types','就诊类型名称',1,'就诊类型1',NULL,'2021-05-07 19:41:00'),(18,'jiuzhenjilu_types','就诊类型名称',2,'就诊类型2',NULL,'2021-05-07 19:41:00'),(19,'fuwujilu_types','评价星级类型名称',1,'一星(最低)',NULL,'2021-05-07 19:41:00'),(20,'fuwujilu_types','评价星级类型名称',2,'二星',NULL,'2021-05-07 19:41:00'),(21,'fuwujilu_types','评价星级类型名称',3,'三星',NULL,'2021-05-07 19:41:00'),(22,'fuwujilu_types','评价星级类型名称',4,'四星',NULL,'2021-05-07 19:41:00'),(23,'fuwujilu_types','评价星级类型名称',5,'五星(最高)',NULL,'2021-05-07 19:41:00'),(24,'liuyan_types','留言类型名称',1,'留言类型1',NULL,'2021-05-07 19:41:00'),(25,'liuyan_types','留言类型名称',2,'留言类型2',NULL,'2021-05-07 19:41:00'),(26,'yule_types','活动类型名称',1,'室外踏青',NULL,'2021-05-07 19:41:00'),(27,'yule_types','活动类型名称',2,'打羽毛球',NULL,'2021-05-07 19:41:00'),(28,'yule_types','活动类型名称',3,'诗友会',NULL,'2021-05-07 19:41:00'),(29,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-07 19:41:00'),(30,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-07 19:41:00'),(31,'gonggao_types','公告类型名称',3,'公告类型3',NULL,'2021-05-07 20:32:01');

/*Table structure for table `fuwujilu` */

DROP TABLE IF EXISTS `fuwujilu`;

CREATE TABLE `fuwujilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `jigoushequ_id` int(11) DEFAULT NULL COMMENT '服务人员',
  `fuwu_time` timestamp NULL DEFAULT NULL COMMENT '服务时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `fuwujilu_content` text COMMENT '服务详情',
  `fuwujilu_types` int(11) DEFAULT NULL COMMENT '评价星级类型 Search111 ',
  `pingjia_content` text COMMENT '评价详情',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='服务记录';

/*Data for the table `fuwujilu` */

insert  into `fuwujilu`(`id`,`laoren_id`,`jigoushequ_id`,`fuwu_time`,`insert_time`,`fuwujilu_content`,`fuwujilu_types`,`pingjia_content`,`update_time`,`create_time`) values (25,25,0,'2021-05-06 00:00:00','2021-05-07 19:39:11','服务详情\r\n',3,'还可以\r\n','2021-05-07 20:38:35','2021-05-07 19:39:11'),(26,26,0,'2021-05-14 00:00:00','2021-05-07 20:25:06','擦背\r\n',NULL,NULL,NULL,'2021-05-07 20:25:06'),(27,25,25,'2021-05-10 00:00:00','2021-05-07 20:33:29','服务详情\r\n',5,'服务的很好\r\n','2021-05-07 20:38:18','2021-05-07 20:33:29');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',2,'2021-05-07 20:13:18','公告1的详情\r\n','2021-05-07 20:13:18'),(4,'公告2',1,'2021-05-07 20:34:57','公告3的详情\r\n','2021-05-07 20:34:57');

/*Table structure for table `jiaren` */

DROP TABLE IF EXISTS `jiaren`;

CREATE TABLE `jiaren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `jiaren_name` varchar(200) DEFAULT NULL COMMENT '家人姓名 Search111 ',
  `jiaren_phone` varchar(200) DEFAULT NULL COMMENT '家人手机号 Search111 ',
  `jiaren_id_number` varchar(200) DEFAULT NULL COMMENT '家人身份证号 Search111 ',
  `jiaren_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='家人';

/*Data for the table `jiaren` */

insert  into `jiaren`(`id`,`username`,`password`,`laoren_id`,`jiaren_name`,`jiaren_phone`,`jiaren_id_number`,`jiaren_photo`,`sex_types`,`create_time`) values (25,'a1','123456',25,'张11999','17703786911','410224199610232011','http://localhost:8080/zhihuiyangdao/file/download?fileName=1620386539580.jpg',1,'2021-05-07 19:22:22'),(26,'a22','123456',26,'张22','17703786922','410224199610232022','http://localhost:8080/zhihuiyangdao/file/download?fileName=1620386701459.jpg',2,'2021-05-07 19:25:05'),(27,'a3','123456',26,'张33','17703786933','410224199610232033','http://localhost:8080/zhihuiyangdao/file/download?fileName=1620390195321.jpg',1,'2021-05-07 20:23:16');

/*Table structure for table `jigoushequ` */

DROP TABLE IF EXISTS `jigoushequ`;

CREATE TABLE `jigoushequ` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jigoushequ_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `jigoushequ_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search111 ',
  `jigoushequ_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号 Search111 ',
  `jigoushequ_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='机构社区人员';

/*Data for the table `jigoushequ` */

insert  into `jigoushequ`(`id`,`username`,`password`,`jigoushequ_name`,`jigoushequ_phone`,`jigoushequ_id_number`,`jigoushequ_photo`,`sex_types`,`create_time`) values (25,'a111','123456','张11123121','17703786111','410224199610232111','http://localhost:8080/zhihuiyangdao/file/download?fileName=1620390267764.jpg',2,'2021-05-07 20:24:29');

/*Table structure for table `jiuzhenjilu` */

DROP TABLE IF EXISTS `jiuzhenjilu`;

CREATE TABLE `jiuzhenjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `jiuzhenjilu_types` int(11) DEFAULT NULL COMMENT '就诊类型 Search111 ',
  `yiyuan` varchar(200) DEFAULT NULL COMMENT '就诊医院 Search111 ',
  `yisheng` varchar(200) DEFAULT NULL COMMENT '就诊医生 Search111 ',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '医生手机号 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '就诊时间',
  `jiuzhenjilu_content` text COMMENT '就诊详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='就诊记录';

/*Data for the table `jiuzhenjilu` */

insert  into `jiuzhenjilu`(`id`,`laoren_id`,`jiuzhenjilu_types`,`yiyuan`,`yisheng`,`yisheng_phone`,`insert_time`,`jiuzhenjilu_content`,`create_time`) values (25,25,2,'医院名字1','医生名字1','17703786911','2021-05-07 19:46:42','就诊详情1\r\n','2021-05-07 19:46:42'),(26,27,2,'医院3','医生3','17703786933','2021-05-07 20:26:09','就诊并热浸\r\n','2021-05-07 20:26:09');

/*Table structure for table `laoren` */

DROP TABLE IF EXISTS `laoren`;

CREATE TABLE `laoren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoren_name` varchar(200) DEFAULT NULL COMMENT '老人姓名 Search111 ',
  `laoren_phone` varchar(200) DEFAULT NULL COMMENT '老人手机号 Search111 ',
  `laoren_id_number` varchar(200) DEFAULT NULL COMMENT '老人身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `duju_types` int(11) DEFAULT NULL COMMENT '是否独居',
  `canji_types` int(11) DEFAULT NULL COMMENT '是否残疾',
  `yanglaofanghsi_types` int(11) DEFAULT NULL COMMENT '养老方式类型 Search111 ',
  `jibing_content` text COMMENT '慢性疾病',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='老人';

/*Data for the table `laoren` */

insert  into `laoren`(`id`,`username`,`password`,`laoren_name`,`laoren_phone`,`laoren_id_number`,`yonghu_photo`,`sex_types`,`duju_types`,`canji_types`,`yanglaofanghsi_types`,`jibing_content`,`create_time`) values (25,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/zhihuiyangdao/file/download?fileName=1620386436442.jpg',1,1,1,3,'无\r\n','2021-05-07 19:20:48'),(26,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/zhihuiyangdao/file/download?fileName=1620386481833.jpg',1,1,2,2,'无\r\n','2021-05-07 19:21:40'),(27,'a3','123456','张3','17703786903','410224199610232003','http://localhost:8080/zhihuiyangdao/file/download?fileName=1620390130564.jpg',1,2,1,2,'无\r\n','2021-05-07 20:22:28');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言名称 Search111 ',
  `liuyan_types` int(11) DEFAULT NULL COMMENT '留言类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `liuyan_content` text COMMENT '留言详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`laoren_id`,`liuyan_name`,`liuyan_types`,`insert_time`,`liuyan_content`,`create_time`) values (3,25,'留言1',1,'2021-05-07 19:58:01','留言1的详情\r\n','2021-05-07 19:58:01'),(4,25,'留言13',2,'2021-05-07 20:39:02','留言13的详情\r\n','2021-05-07 20:39:02');

/*Table structure for table `qiuzhu` */

DROP TABLE IF EXISTS `qiuzhu`;

CREATE TABLE `qiuzhu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `qiuzhu_name` varchar(200) DEFAULT NULL COMMENT '求助名字 Search111 ',
  `qiuzhu_types` int(11) DEFAULT NULL COMMENT '求助类型 Search111 ',
  `zhixing_time` timestamp NULL DEFAULT NULL COMMENT '执行时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `qiuzhu_content` text COMMENT '求助详情',
  `qiuzhu_yesno_types` int(11) DEFAULT NULL COMMENT '是否处理 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='求助服务';

/*Data for the table `qiuzhu` */

insert  into `qiuzhu`(`id`,`laoren_id`,`qiuzhu_name`,`qiuzhu_types`,`zhixing_time`,`insert_time`,`qiuzhu_content`,`qiuzhu_yesno_types`,`create_time`) values (27,25,'求助名字1',4,'2021-05-08 00:00:00','2021-05-07 20:05:37','求助内容1\r\n',1,'2021-05-07 20:05:37'),(28,25,'求助名字1',4,'2021-05-08 00:00:00','2021-05-07 20:05:37','求助内容1\r\n',1,'2021-05-07 20:05:37'),(29,25,'求助名字2',3,'2021-05-15 00:00:00','2021-05-07 20:06:06','求助内容22\r\n',1,'2021-05-07 20:06:06'),(30,25,'求助名字3',4,'2021-05-14 00:00:00','2021-05-07 20:06:28','捱三顶五群二\r\n',2,'2021-05-07 20:06:28'),(31,25,'求助名字4',4,'2021-05-21 00:00:00','2021-05-07 20:06:51','无色大所\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n',2,'2021-05-07 20:06:51');

/*Table structure for table `suifangjilu` */

DROP TABLE IF EXISTS `suifangjilu`;

CREATE TABLE `suifangjilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_id` int(11) DEFAULT NULL COMMENT '老人',
  `jigoushequ_id` int(11) DEFAULT NULL COMMENT '随访人员',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '随访时间',
  `suifangjilu_content` text COMMENT '随访详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='随访记录';

/*Data for the table `suifangjilu` */

insert  into `suifangjilu`(`id`,`laoren_id`,`jigoushequ_id`,`insert_time`,`suifangjilu_content`,`create_time`) values (25,25,0,'2021-05-07 20:13:02','第一次随访\r\n','2021-05-07 20:13:02'),(26,27,0,'2021-05-07 20:26:46','随访内容3\r\n','2021-05-07 20:26:46'),(27,25,25,'2021-05-07 20:34:13','随访内容1111\r\n','2021-05-07 20:34:13');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','w193y9r47qhkg7okr2tefh422ua3rk1w','2021-05-07 19:19:34','2021-05-07 21:17:12'),(2,25,'a1','laoren','老人','v6407wjdcznhyl9y9enye75wjrtbdt0i','2021-05-07 19:46:56','2021-05-07 21:35:08'),(3,25,'a111','jigoushequ','机构社区人员','ja8bl5he9d4kh2gedjoc1sz2zrvvxuyw','2021-05-07 20:32:10','2021-05-07 21:32:11'),(4,25,'a11','jiaren','家人','ilfz6gxohedgpq7h62vjopivdm0fzn6f','2021-05-07 20:41:05','2021-05-07 21:41:05'),(5,26,'a2','laoren','老人','qnais10e8xqlflbbrxd9b632u87vmtpc','2021-05-07 20:51:56','2021-05-07 21:51:57');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yule` */

DROP TABLE IF EXISTS `yule`;

CREATE TABLE `yule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yule_name` varchar(200) DEFAULT NULL COMMENT '活动名称 Search111 ',
  `yule_types` int(11) DEFAULT NULL COMMENT '活动类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '通知时间',
  `yule_content` text COMMENT '活动详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='娱乐活动';

/*Data for the table `yule` */

insert  into `yule`(`id`,`yule_name`,`yule_types`,`insert_time`,`yule_content`,`create_time`) values (3,'诗会',3,'2021-05-07 20:27:49','本月13日将在北地公园展开诗会比赛,欢迎各位前来参加\r\n','2021-05-07 20:27:49'),(4,'羽毛球运动',2,'2021-05-07 20:34:42','羽毛球运动详情\r\n','2021-05-07 20:34:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
