CREATE DATABASE  IF NOT EXISTS `beego_blog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `beego_blog`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 192.168.90.11    Database: beego_blog
-- ------------------------------------------------------
-- Server version	5.6.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_album`
--

DROP TABLE IF EXISTS `tb_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `cover` varchar(70) NOT NULL DEFAULT '',
  `posttime` datetime NOT NULL,
  `ishide` tinyint(4) NOT NULL DEFAULT '0',
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  `photonum` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tb_album_name` (`name`),
  KEY `tb_album_posttime` (`posttime`),
  KEY `tb_album_ishide` (`ishide`),
  KEY `tb_album_rank` (`rank`),
  KEY `tb_album_photonum` (`photonum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_album`
--

LOCK TABLES `tb_album` WRITE;
/*!40000 ALTER TABLE `tb_album` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_comments`
--

DROP TABLE IF EXISTS `tb_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_comments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `obj_pk_id` bigint(20) NOT NULL,
  `reply_pk` bigint(20) NOT NULL DEFAULT '0',
  `reply_fk` bigint(20) NOT NULL DEFAULT '0',
  `user_id` bigint(20) NOT NULL,
  `comment` longtext NOT NULL,
  `submittime` datetime NOT NULL,
  `ipaddress` varchar(255) DEFAULT NULL,
  `is_removed` tinyint(4) NOT NULL DEFAULT '0',
  `obj_pk_type` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tb_comments_obj_pk_id` (`obj_pk_id`),
  KEY `tb_comments_reply_pk` (`reply_pk`),
  KEY `tb_comments_reply_fk` (`reply_fk`),
  KEY `tb_comments_user_id` (`user_id`),
  KEY `tb_comments_submittime` (`submittime`),
  KEY `tb_comments_is_removed` (`is_removed`),
  KEY `tb_comments_obj_pk_type` (`obj_pk_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_comments`
--

LOCK TABLES `tb_comments` WRITE;
/*!40000 ALTER TABLE `tb_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_link`
--

DROP TABLE IF EXISTS `tb_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(80) NOT NULL DEFAULT '',
  `siteavator` varchar(200) NOT NULL DEFAULT '/static/upload/default/user-default-60x60.png',
  `url` varchar(200) NOT NULL DEFAULT '',
  `sitedesc` varchar(300) NOT NULL DEFAULT '',
  `rank` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tb_link_sitename` (`sitename`),
  KEY `tb_link_url` (`url`),
  KEY `tb_link_rank` (`rank`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_link`
--

LOCK TABLES `tb_link` WRITE;
/*!40000 ALTER TABLE `tb_link` DISABLE KEYS */;
INSERT INTO `tb_link` VALUES (3,'python修行路','/static/upload/default/user-default-60x60.png','http://www.cnblogs.com/zhaof/','',0);
/*!40000 ALTER TABLE `tb_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mood`
--

DROP TABLE IF EXISTS `tb_mood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_mood` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `cover` varchar(70) NOT NULL DEFAULT '/static/upload/default/blog-default-0.png',
  `posttime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_mood_posttime` (`posttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mood`
--

LOCK TABLES `tb_mood` WRITE;
/*!40000 ALTER TABLE `tb_mood` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_mood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_option`
--

DROP TABLE IF EXISTS `tb_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_option` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_option_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_option`
--

LOCK TABLES `tb_option` WRITE;
/*!40000 ALTER TABLE `tb_option` DISABLE KEYS */;
INSERT INTO `tb_option` VALUES (1,'sitename','python修行路'),(2,'siteurl',''),(3,'subtitle','Stay hangury, Stay foolish'),(4,'pagesize','15'),(5,'keywords','Python,MySQL,Golang,Windows,Linux'),(6,'description','Stay hangury, Stay foolish'),(7,'theme','double'),(8,'timezone','8'),(9,'stat',''),(10,'weibo',''),(11,'github','https://github.com/pythonsite'),(12,'mybirth','1992-10-15'),(13,'albumsize','9'),(14,'nickname','coders'),(15,'myoldcity','河南'),(16,'mycity','北京'),(17,'myprifessional','python开发工程师'),(18,'myworkdesc','1、python服务端开发'),(19,'mylang','Python、Golang'),(20,'mylike','技术，音乐，恐怖电影');
/*!40000 ALTER TABLE `tb_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_permission`
--

DROP TABLE IF EXISTS `tb_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_permission`
--

LOCK TABLES `tb_permission` WRITE;
/*!40000 ALTER TABLE `tb_permission` DISABLE KEYS */;
INSERT INTO `tb_permission` VALUES (3,'album'),(2,'article'),(8,'fileupload'),(4,'link'),(5,'mood'),(7,'system'),(6,'tag'),(1,'user');
/*!40000 ALTER TABLE `tb_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_photo`
--

DROP TABLE IF EXISTS `tb_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_photo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `albumid` bigint(20) NOT NULL DEFAULT '0',
  `des` varchar(100) NOT NULL DEFAULT '',
  `posttime` datetime NOT NULL,
  `url` varchar(70) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `tb_photo_albumid` (`albumid`),
  KEY `tb_photo_des` (`des`),
  KEY `tb_photo_posttime` (`posttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_photo`
--

LOCK TABLES `tb_photo` WRITE;
/*!40000 ALTER TABLE `tb_photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_post`
--

DROP TABLE IF EXISTS `tb_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `color` varchar(7) NOT NULL DEFAULT '',
  `urlname` varchar(100) NOT NULL DEFAULT '',
  `urltype` tinyint(4) NOT NULL DEFAULT '0',
  `content` longtext NOT NULL,
  `tags` varchar(100) NOT NULL DEFAULT '',
  `posttime` datetime NOT NULL,
  `views` bigint(20) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `istop` tinyint(4) NOT NULL DEFAULT '0',
  `cover` varchar(70) NOT NULL DEFAULT '/static/upload/default/blog-default-0.png',
  PRIMARY KEY (`id`),
  KEY `tb_post_user_id` (`user_id`),
  KEY `tb_post_title` (`title`),
  KEY `tb_post_color` (`color`),
  KEY `tb_post_urlname` (`urlname`),
  KEY `tb_post_urltype` (`urltype`),
  KEY `tb_post_tags` (`tags`),
  KEY `tb_post_posttime` (`posttime`),
  KEY `tb_post_views` (`views`),
  KEY `tb_post_status` (`status`),
  KEY `tb_post_updated` (`updated`),
  KEY `tb_post_istop` (`istop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_post`
--

LOCK TABLES `tb_post` WRITE;
/*!40000 ALTER TABLE `tb_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tag`
--

DROP TABLE IF EXISTS `tb_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tb_tag_name` (`name`),
  KEY `tb_tag_count` (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tag`
--

LOCK TABLES `tb_tag` WRITE;
/*!40000 ALTER TABLE `tb_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tag_post`
--

DROP TABLE IF EXISTS `tb_tag_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) NOT NULL DEFAULT '0',
  `postid` bigint(20) NOT NULL DEFAULT '0',
  `poststatus` tinyint(4) NOT NULL DEFAULT '0',
  `posttime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_tag_post_tag_id` (`tag_id`),
  KEY `tb_tag_post_postid` (`postid`),
  KEY `tb_tag_post_poststatus` (`poststatus`),
  KEY `tb_tag_post_posttime` (`posttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tag_post`
--

LOCK TABLES `tb_tag_post` WRITE;
/*!40000 ALTER TABLE `tb_tag_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_tag_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `nickname` varchar(15) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `lastlogin` datetime NOT NULL,
  `logincount` bigint(20) NOT NULL DEFAULT '0',
  `lastip` varchar(32) NOT NULL DEFAULT '',
  `authkey` varchar(10) NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `permission` varchar(100) NOT NULL DEFAULT '',
  `avator` varchar(150) NOT NULL DEFAULT '/static/upload/default/user-default-60x60.png',
  `upcount` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `tb_user_nickname` (`nickname`),
  KEY `tb_user_email` (`email`),
  KEY `tb_user_lastlogin` (`lastlogin`),
  KEY `tb_user_logincount` (`logincount`),
  KEY `tb_user_lastip` (`lastip`),
  KEY `tb_user_permission` (`permission`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'admin','e10adc3949ba59abbe56e057f20f883e','coders','hjzhaofan@gmail.com','2019-02-18 13:16:17',2,'192.168.90.61','',1,'1|2|3|4|5|6|7|8','/static/upload/default/user-default-60x60.png',0);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-18 13:17:32
