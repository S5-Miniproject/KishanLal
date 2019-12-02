/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 8.0.17 : Database - db_safez
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_safez` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_safez`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add devicereg',7,'add_devicereg'),
(26,'Can change devicereg',7,'change_devicereg'),
(27,'Can delete devicereg',7,'delete_devicereg'),
(28,'Can view devicereg',7,'view_devicereg'),
(29,'Can add login',8,'add_login'),
(30,'Can change login',8,'change_login'),
(31,'Can delete login',8,'delete_login'),
(32,'Can view login',8,'view_login'),
(33,'Can add notification',9,'add_notification'),
(34,'Can change notification',9,'change_notification'),
(35,'Can delete notification',9,'delete_notification'),
(36,'Can view notification',9,'view_notification'),
(37,'Can add user',10,'add_user'),
(38,'Can change user',10,'change_user'),
(39,'Can delete user',10,'delete_user'),
(40,'Can view user',10,'view_user'),
(41,'Can add zone',11,'add_zone'),
(42,'Can change zone',11,'change_zone'),
(43,'Can delete zone',11,'delete_zone'),
(44,'Can view zone',11,'view_zone'),
(45,'Can add userzone',12,'add_userzone'),
(46,'Can change userzone',12,'change_userzone'),
(47,'Can delete userzone',12,'delete_userzone'),
(48,'Can view userzone',12,'view_userzone'),
(49,'Can add trackuser',13,'add_trackuser'),
(50,'Can change trackuser',13,'change_trackuser'),
(51,'Can delete trackuser',13,'delete_trackuser'),
(52,'Can view trackuser',13,'view_trackuser'),
(53,'Can add trackpolice',14,'add_trackpolice'),
(54,'Can change trackpolice',14,'change_trackpolice'),
(55,'Can delete trackpolice',14,'delete_trackpolice'),
(56,'Can view trackpolice',14,'view_trackpolice'),
(57,'Can add police',15,'add_police'),
(58,'Can change police',15,'change_police'),
(59,'Can delete police',15,'delete_police'),
(60,'Can view police',15,'view_police'),
(61,'Can add helprequest',16,'add_helprequest'),
(62,'Can change helprequest',16,'change_helprequest'),
(63,'Can delete helprequest',16,'delete_helprequest'),
(64,'Can view helprequest',16,'view_helprequest'),
(65,'Can add feedback',17,'add_feedback'),
(66,'Can change feedback',17,'change_feedback'),
(67,'Can delete feedback',17,'delete_feedback'),
(68,'Can view feedback',17,'view_feedback'),
(69,'Can add emergency',18,'add_emergency'),
(70,'Can change emergency',18,'change_emergency'),
(71,'Can delete emergency',18,'delete_emergency'),
(72,'Can view emergency',18,'view_emergency'),
(73,'Can add complaints',19,'add_complaints'),
(74,'Can change complaints',19,'change_complaints'),
(75,'Can delete complaints',19,'delete_complaints'),
(76,'Can view complaints',19,'view_complaints'),
(77,'Can add assign',20,'add_assign'),
(78,'Can change assign',20,'change_assign'),
(79,'Can delete assign',20,'delete_assign'),
(80,'Can view assign',20,'view_assign');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(20,'safezone','assign'),
(19,'safezone','complaints'),
(7,'safezone','devicereg'),
(18,'safezone','emergency'),
(17,'safezone','feedback'),
(16,'safezone','helprequest'),
(8,'safezone','login'),
(9,'safezone','notification'),
(15,'safezone','police'),
(14,'safezone','trackpolice'),
(13,'safezone','trackuser'),
(10,'safezone','user'),
(12,'safezone','userzone'),
(11,'safezone','zone'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2019-11-27 07:53:14.614434'),
(2,'auth','0001_initial','2019-11-27 07:53:16.583589'),
(3,'admin','0001_initial','2019-11-27 07:53:31.274095'),
(4,'admin','0002_logentry_remove_auto_add','2019-11-27 07:53:33.649612'),
(5,'admin','0003_logentry_add_action_flag_choices','2019-11-27 07:53:33.774610'),
(6,'contenttypes','0002_remove_content_type_name','2019-11-27 07:53:37.181644'),
(7,'auth','0002_alter_permission_name_max_length','2019-11-27 07:53:39.697789'),
(8,'auth','0003_alter_user_email_max_length','2019-11-27 07:53:40.463497'),
(9,'auth','0004_alter_user_username_opts','2019-11-27 07:53:40.572916'),
(10,'auth','0005_alter_user_last_login_null','2019-11-27 07:53:42.088905'),
(11,'auth','0006_require_contenttypes_0002','2019-11-27 07:53:42.151344'),
(12,'auth','0007_alter_validators_add_error_messages','2019-11-27 07:53:42.307647'),
(13,'auth','0008_alter_user_username_max_length','2019-11-27 07:53:43.479738'),
(14,'auth','0009_alter_user_last_name_max_length','2019-11-27 07:53:44.386254'),
(15,'auth','0010_alter_group_name_max_length','2019-11-27 07:53:44.667562'),
(16,'auth','0011_update_proxy_permissions','2019-11-27 07:53:44.729993'),
(17,'safezone','0001_initial','2019-11-27 07:53:53.606824'),
(18,'sessions','0001_initial','2019-11-27 07:54:10.786472');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_session` */

/*Table structure for table `safezone_assign` */

DROP TABLE IF EXISTS `safezone_assign`;

CREATE TABLE `safezone_assign` (
  `assign_id` int(11) NOT NULL AUTO_INCREMENT,
  `as_login` varchar(20) NOT NULL,
  `as_logout` varchar(20) NOT NULL,
  `astatus` varchar(20) NOT NULL,
  `as_deviceid_id` int(11) NOT NULL,
  `as_policeid_id` int(11) NOT NULL,
  PRIMARY KEY (`assign_id`),
  KEY `safezone_assign_as_deviceid_id_6f95a365_fk_safezone_` (`as_deviceid_id`),
  KEY `safezone_assign_as_policeid_id_6e41e3e4_fk_safezone_` (`as_policeid_id`),
  CONSTRAINT `safezone_assign_as_deviceid_id_6f95a365_fk_safezone_` FOREIGN KEY (`as_deviceid_id`) REFERENCES `safezone_devicereg` (`d_id`),
  CONSTRAINT `safezone_assign_as_policeid_id_6e41e3e4_fk_safezone_` FOREIGN KEY (`as_policeid_id`) REFERENCES `safezone_login` (`loginid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_assign` */

insert  into `safezone_assign`(`assign_id`,`as_login`,`as_logout`,`astatus`,`as_deviceid_id`,`as_policeid_id`) values 
(1,'14:36:04.767929','pending','notassigned',2,3);

/*Table structure for table `safezone_complaints` */

DROP TABLE IF EXISTS `safezone_complaints`;

CREATE TABLE `safezone_complaints` (
  `complaintid` int(11) NOT NULL AUTO_INCREMENT,
  `complaint` varchar(100) NOT NULL,
  `c_date` varchar(20) NOT NULL,
  `c_userid_id` int(11) NOT NULL,
  PRIMARY KEY (`complaintid`),
  KEY `safezone_complaints_c_userid_id_33078d4a_fk_safezone_user_userid` (`c_userid_id`),
  CONSTRAINT `safezone_complaints_c_userid_id_33078d4a_fk_safezone_user_userid` FOREIGN KEY (`c_userid_id`) REFERENCES `safezone_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_complaints` */

insert  into `safezone_complaints`(`complaintid`,`complaint`,`c_date`,`c_userid_id`) values 
(1,'fuiio','2019-11-27',1),
(2,'hi','2019-12-02',5);

/*Table structure for table `safezone_devicereg` */

DROP TABLE IF EXISTS `safezone_devicereg`;

CREATE TABLE `safezone_devicereg` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `devicename` varchar(20) NOT NULL,
  `imei` varchar(20) NOT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_devicereg` */

insert  into `safezone_devicereg`(`d_id`,`devicename`,`imei`) values 
(1,'eagle','863406030690262'),
(2,'alpha','862188038648200'),
(3,'sgsag','856466543');

/*Table structure for table `safezone_emergency` */

DROP TABLE IF EXISTS `safezone_emergency`;

CREATE TABLE `safezone_emergency` (
  `em_id` int(11) NOT NULL AUTO_INCREMENT,
  `em_num` bigint(20) NOT NULL,
  `em_numb` bigint(20) NOT NULL,
  `em_userid_id` int(11) NOT NULL,
  PRIMARY KEY (`em_id`),
  KEY `safezone_emergency_em_userid_id_d5589485_fk_safezone_user_userid` (`em_userid_id`),
  CONSTRAINT `safezone_emergency_em_userid_id_d5589485_fk_safezone_user_userid` FOREIGN KEY (`em_userid_id`) REFERENCES `safezone_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_emergency` */

insert  into `safezone_emergency`(`em_id`,`em_num`,`em_numb`,`em_userid_id`) values 
(1,4523689512,1236987451,2);

/*Table structure for table `safezone_feedback` */

DROP TABLE IF EXISTS `safezone_feedback`;

CREATE TABLE `safezone_feedback` (
  `feedid` int(11) NOT NULL AUTO_INCREMENT,
  `f_date` date NOT NULL,
  `fedback` varchar(100) NOT NULL,
  `f_userid_id` int(11) NOT NULL,
  PRIMARY KEY (`feedid`),
  KEY `safezone_feedback_f_userid_id_006a8fd6_fk_safezone_user_userid` (`f_userid_id`),
  CONSTRAINT `safezone_feedback_f_userid_id_006a8fd6_fk_safezone_user_userid` FOREIGN KEY (`f_userid_id`) REFERENCES `safezone_user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_feedback` */

/*Table structure for table `safezone_helprequest` */

DROP TABLE IF EXISTS `safezone_helprequest`;

CREATE TABLE `safezone_helprequest` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `hr_latitude` varchar(30) NOT NULL,
  `hr_longitude` varchar(30) NOT NULL,
  `hr_time` time(6) NOT NULL,
  `hr_date` date NOT NULL,
  `hr_status` varchar(20) NOT NULL,
  `hr_userid_id` int(11) NOT NULL,
  PRIMARY KEY (`h_id`),
  KEY `safezone_helprequest_hr_userid_id_a0c82b6b_fk_safezone_` (`hr_userid_id`),
  CONSTRAINT `safezone_helprequest_hr_userid_id_a0c82b6b_fk_safezone_` FOREIGN KEY (`hr_userid_id`) REFERENCES `safezone_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_helprequest` */

insert  into `safezone_helprequest`(`h_id`,`hr_latitude`,`hr_longitude`,`hr_time`,`hr_date`,`hr_status`,`hr_userid_id`) values 
(1,'11.2554134','75.7860203','11:51:24.332986','2019-11-28','accepted',2),
(2,'11.2554134','75.7860203','14:22:50.236645','2019-11-28','accepted',2),
(3,'11.2977252','75.7751211','22:59:46.997303','2019-12-01','accepted',5),
(4,'','','09:58:43.054409','2019-12-02','accepted',1),
(5,'11.257730099999998','75.78451309999998','10:02:28.430828','2019-12-02','accepted',1),
(6,'','','10:08:39.669650','2019-12-02','pending',5);

/*Table structure for table `safezone_login` */

DROP TABLE IF EXISTS `safezone_login`;

CREATE TABLE `safezone_login` (
  `loginid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `logintype` varchar(20) NOT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_login` */

insert  into `safezone_login`(`loginid`,`username`,`password`,`logintype`) values 
(1,'admin','4567','admin'),
(2,'ashwati.nr7@gmail.com','9562757403','police'),
(3,'kish@gmail.com','8289903579','police');

/*Table structure for table `safezone_notification` */

DROP TABLE IF EXISTS `safezone_notification`;

CREATE TABLE `safezone_notification` (
  `notificationid` int(11) NOT NULL AUTO_INCREMENT,
  `ndate` date NOT NULL,
  `notificat` varchar(100) NOT NULL,
  PRIMARY KEY (`notificationid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_notification` */

insert  into `safezone_notification`(`notificationid`,`ndate`,`notificat`) values 
(1,'2019-12-02','hi');

/*Table structure for table `safezone_police` */

DROP TABLE IF EXISTS `safezone_police`;

CREATE TABLE `safezone_police` (
  `policeid` int(11) NOT NULL AUTO_INCREMENT,
  `policename` varchar(20) NOT NULL,
  `policeno` varchar(20) NOT NULL,
  `post` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contactno` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `p_logid_id` int(11) NOT NULL,
  PRIMARY KEY (`policeid`),
  KEY `safezone_police_p_logid_id_a3335138_fk_safezone_login_loginid` (`p_logid_id`),
  CONSTRAINT `safezone_police_p_logid_id_a3335138_fk_safezone_login_loginid` FOREIGN KEY (`p_logid_id`) REFERENCES `safezone_login` (`loginid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_police` */

insert  into `safezone_police`(`policeid`,`policename`,`policeno`,`post`,`gender`,`contactno`,`email`,`p_logid_id`) values 
(1,'police','121','673005','male',9562757403,'ashwati.nr7@gmail.com',2),
(2,'kishan','124','edakkad','male',8289903579,'kish@gmail.com',3);

/*Table structure for table `safezone_trackpolice` */

DROP TABLE IF EXISTS `safezone_trackpolice`;

CREATE TABLE `safezone_trackpolice` (
  `trackid` int(11) NOT NULL AUTO_INCREMENT,
  `tp_latitude` varchar(30) NOT NULL,
  `tp_longitude` varchar(30) NOT NULL,
  `tp_deviceid_id` int(11) NOT NULL,
  PRIMARY KEY (`trackid`),
  KEY `safezone_trackpolice_tp_deviceid_id_fb7369c8_fk_safezone_` (`tp_deviceid_id`),
  CONSTRAINT `safezone_trackpolice_tp_deviceid_id_fb7369c8_fk_safezone_` FOREIGN KEY (`tp_deviceid_id`) REFERENCES `safezone_devicereg` (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_trackpolice` */

insert  into `safezone_trackpolice`(`trackid`,`tp_latitude`,`tp_longitude`,`tp_deviceid_id`) values 
(1,'11.2557236','75.7852937',2);

/*Table structure for table `safezone_trackuser` */

DROP TABLE IF EXISTS `safezone_trackuser`;

CREATE TABLE `safezone_trackuser` (
  `tracku_id` int(11) NOT NULL AUTO_INCREMENT,
  `tu_latitude` varchar(30) NOT NULL,
  `tu_longitude` varchar(30) NOT NULL,
  `tu_userid_id` int(11) NOT NULL,
  PRIMARY KEY (`tracku_id`),
  KEY `safezone_trackuser_tu_userid_id_2b5a47f7_fk_safezone_user_userid` (`tu_userid_id`),
  CONSTRAINT `safezone_trackuser_tu_userid_id_2b5a47f7_fk_safezone_user_userid` FOREIGN KEY (`tu_userid_id`) REFERENCES `safezone_user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_trackuser` */

/*Table structure for table `safezone_user` */

DROP TABLE IF EXISTS `safezone_user`;

CREATE TABLE `safezone_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `phoneno` bigint(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_user` */

insert  into `safezone_user`(`userid`,`phoneno`,`status`) values 
(1,9745234789,'blocked'),
(2,9562757403,'user'),
(3,4657890889,'blocked'),
(4,66879898,'user'),
(5,8289903579,'user');

/*Table structure for table `safezone_userzone` */

DROP TABLE IF EXISTS `safezone_userzone`;

CREATE TABLE `safezone_userzone` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `uz_zonetype` varchar(10) NOT NULL,
  `uz_place` varchar(50) NOT NULL,
  `uz_criteria` varchar(100) NOT NULL,
  `uz_latitude` varchar(30) NOT NULL,
  `uz_longitude` varchar(30) NOT NULL,
  `uz_time` time(6) NOT NULL,
  `uz_userid_id` int(11) NOT NULL,
  PRIMARY KEY (`zid`),
  KEY `safezone_userzone_uz_userid_id_ce723aa0_fk_safezone_user_userid` (`uz_userid_id`),
  CONSTRAINT `safezone_userzone_uz_userid_id_ce723aa0_fk_safezone_user_userid` FOREIGN KEY (`uz_userid_id`) REFERENCES `safezone_user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_userzone` */

insert  into `safezone_userzone`(`zid`,`uz_zonetype`,`uz_place`,`uz_criteria`,`uz_latitude`,`uz_longitude`,`uz_time`,`uz_userid_id`) values 
(1,'RED','calicut','theft','11.2459092','75.7803858','10:30:00.000000',1),
(2,'RED','calicut','theft','11.2459092','75.7803858','10:30:00.000000',2),
(3,'YELLOW','calicut','theft','11.2459092','75.7803858','10:30:00.000000',3),
(4,'YELLOW','calicut','HGJH','11.2459092','75.7803858','10:30:00.000000',4),
(77,'RED','global road','Drunkards','11.255','75.88','22:57:40.124936',5),
(78,'RED','calicut','Theft','11.255','75.88','09:49:07.290070',5);

/*Table structure for table `safezone_zone` */

DROP TABLE IF EXISTS `safezone_zone`;

CREATE TABLE `safezone_zone` (
  `zoneid` int(11) NOT NULL AUTO_INCREMENT,
  `zonetype` varchar(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `criteria` varchar(100) NOT NULL,
  `z_latitude` varchar(30) NOT NULL,
  `z_longitude` varchar(30) NOT NULL,
  `ztime` time(6) NOT NULL,
  PRIMARY KEY (`zoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `safezone_zone` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
