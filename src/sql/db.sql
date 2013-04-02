/*
SQLyog Ultimate v9.20 
MySQL - 5.6.10 : Database - memo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`memo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `memo`;

/*Table structure for table `mm_discussions` */

DROP TABLE IF EXISTS `mm_discussions`;

CREATE TABLE `mm_discussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mm_discussions` */

/*Table structure for table `mm_inbox` */

DROP TABLE IF EXISTS `mm_inbox`;

CREATE TABLE `mm_inbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `todo` varchar(120) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mm_inbox` */

/*Table structure for table `mm_invites` */

DROP TABLE IF EXISTS `mm_invites`;

CREATE TABLE `mm_invites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invite_code` char(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `used` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mm_invites` */

/*Table structure for table `mm_members` */

DROP TABLE IF EXISTS `mm_members`;

CREATE TABLE `mm_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mm_members` */

/*Table structure for table `mm_projects` */

DROP TABLE IF EXISTS `mm_projects`;

CREATE TABLE `mm_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `intro` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mm_projects` */

/*Table structure for table `mm_teams` */

DROP TABLE IF EXISTS `mm_teams`;

CREATE TABLE `mm_teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mm_teams` */

/*Table structure for table `mm_users` */

DROP TABLE IF EXISTS `mm_users`;

CREATE TABLE `mm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` char(10) NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mm_users` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
