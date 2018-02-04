-- MySQL dump 10.13  Distrib 5.7.18-ndb-7.6.3, for Linux (x86_64)
--
-- Host: localhost    Database: tiantian1
-- ------------------------------------------------------
-- Server version	5.7.18-ndb-7.6.3

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add user info',7,'add_userinfo'),(20,'Can change user info',7,'change_userinfo'),(21,'Can delete user info',7,'delete_userinfo'),(22,'Can add type info',8,'add_typeinfo'),(23,'Can change type info',8,'change_typeinfo'),(24,'Can delete type info',8,'delete_typeinfo'),(25,'Can add goods info',9,'add_goodsinfo'),(26,'Can change goods info',9,'change_goodsinfo'),(27,'Can delete goods info',9,'delete_goodsinfo'),(28,'Can add order info',10,'add_orderinfo'),(29,'Can change order info',10,'change_orderinfo'),(30,'Can delete order info',10,'delete_orderinfo'),(31,'Can add order detail info',11,'add_orderdetailinfo'),(32,'Can change order detail info',11,'change_orderdetailinfo'),(33,'Can delete order detail info',11,'delete_orderdetailinfo'),(34,'Can add cart info',12,'add_cartinfo'),(35,'Can change cart info',12,'change_cartinfo'),(36,'Can delete cart info',12,'delete_cartinfo');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$qscT6VGpbkFy$z0atVXC8qSGm3JDs1gO1BObPAFtLktqo+PQVCdxGI1E=','2018-01-26 15:25:24.268456',1,'python','','','python@163.com',1,1,'2018-01-20 06:16:34.439798');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_cart_cartinfo`
--

DROP TABLE IF EXISTS `df_cart_cartinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_cart_cartinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_cart_carti_goods_id_356f5ce0300c7f5f_fk_df_goods_goodsinfo_id` (`goods_id`),
  KEY `df_cart_cartinfo_user_id_2ac7dec92cce8599_fk_df_user_userinfo_id` (`user_id`),
  CONSTRAINT `df_cart_carti_goods_id_356f5ce0300c7f5f_fk_df_goods_goodsinfo_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_goodsinfo` (`id`),
  CONSTRAINT `df_cart_cartinfo_user_id_2ac7dec92cce8599_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_cart_cartinfo`
--

LOCK TABLES `df_cart_cartinfo` WRITE;
/*!40000 ALTER TABLE `df_cart_cartinfo` DISABLE KEYS */;
INSERT INTO `df_cart_cartinfo` VALUES (42,1,19,1);
/*!40000 ALTER TABLE `df_cart_cartinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_goodsinfo`
--

DROP TABLE IF EXISTS `df_goods_goodsinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_goodsinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gtitle` varchar(20) NOT NULL,
  `gpic` varchar(100) NOT NULL,
  `gprice` decimal(5,2) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `gunit` varchar(20) NOT NULL,
  `gclick` int(11) NOT NULL,
  `gjianjie` varchar(200) NOT NULL,
  `gkuncun` int(11) NOT NULL,
  `gcontent` longtext NOT NULL,
  `gtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_goods_goodsinfo_3204e418` (`gtype_id`),
  CONSTRAINT `df_goods_goodsi_gtype_id_36acf5bdedbbbe8_fk_df_goods_typeinfo_id` FOREIGN KEY (`gtype_id`) REFERENCES `df_goods_typeinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_goodsinfo`
--

LOCK TABLES `df_goods_goodsinfo` WRITE;
/*!40000 ALTER TABLE `df_goods_goodsinfo` DISABLE KEYS */;
INSERT INTO `df_goods_goodsinfo` VALUES (1,'水果1','goods/goods018.jpg',12.56,0,'500g',974,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(2,'水果2','goods/goods006.jpg',12.56,0,'500g',692,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(3,'水果3','goods/goods016.jpg',12.56,0,'500g',780,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(4,'水果4','goods/goods012.jpg',12.56,0,'500g',967,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(5,'水果5','goods/goods004.jpg',12.56,0,'500g',893,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(6,'水果6','goods/goods011.jpg',12.56,0,'500g',813,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(7,'水果7','goods/goods003.jpg',12.56,0,'500g',770,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(8,'水果8','goods/goods017.jpg',12.56,0,'500g',590,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(9,'水果9','goods/goods021.jpg',12.56,0,'500g',358,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(10,'水果10','goods/goods017.jpg',12.56,0,'500g',615,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(11,'水果11','goods/goods003.jpg',12.56,0,'500g',851,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(12,'水果12','goods/goods010.jpg',12.56,0,'500g',504,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(13,'水果13','goods/goods007.jpg',12.56,0,'500g',908,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(14,'水果14','goods/goods014.jpg',12.56,0,'500g',337,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(15,'水果15','goods/goods004.jpg',12.56,0,'500g',986,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(16,'水果16','goods/goods016.jpg',12.56,0,'500g',641,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(17,'水果17','goods/goods005.jpg',12.56,0,'500g',978,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(18,'水果18','goods/goods011.jpg',12.56,0,'500g',782,'我是橘子',932,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(19,'水果19','goods/goods012.jpg',12.56,0,'500g',595,'我是橘子',991,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(20,'水果20','goods/goods017.jpg',12.56,0,'500g',957,'我是橘子',988,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(21,'水果21','goods/goods008.jpg',12.56,0,'500g',307,'我是橘子',999,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',1),(22,'水果22','goods/goods001.jpg',12.56,0,'500g',733,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(23,'水果23','goods/goods013.jpg',12.56,0,'500g',451,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(24,'水果24','goods/goods010.jpg',12.56,0,'500g',707,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(25,'水果25','goods/goods005.jpg',12.56,0,'500g',882,'我是橘子',991,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(26,'水果26','goods/goods001.jpg',12.56,0,'500g',731,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(27,'水果27','goods/goods008.jpg',12.56,0,'500g',300,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(28,'水果28','goods/goods005.jpg',12.56,0,'500g',787,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(29,'水果29','goods/goods012.jpg',12.56,0,'500g',861,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(30,'水果30','goods/goods006.jpg',12.56,0,'500g',851,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(31,'水果31','goods/goods010.jpg',12.56,0,'500g',459,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(32,'水果32','goods/goods013.jpg',12.56,0,'500g',527,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(33,'水果33','goods/goods010.jpg',12.56,0,'500g',993,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(34,'水果34','goods/goods014.jpg',12.56,0,'500g',332,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(35,'水果35','goods/goods012.jpg',12.56,0,'500g',731,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(36,'水果36','goods/goods005.jpg',12.56,0,'500g',783,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(37,'水果37','goods/goods015.jpg',12.56,0,'500g',255,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(38,'水果38','goods/goods004.jpg',12.56,0,'500g',537,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(39,'水果39','goods/goods012.jpg',12.56,0,'500g',935,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(40,'水果40','goods/goods011.jpg',12.56,0,'500g',364,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(41,'水果41','goods/goods003.jpg',12.56,0,'500g',182,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(42,'水果42','goods/goods005.jpg',12.56,0,'500g',249,'我是橘子',998,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',2),(43,'水果43','goods/goods009.jpg',12.56,0,'500g',533,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(44,'水果44','goods/goods013.jpg',12.56,0,'500g',446,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(45,'水果45','goods/goods004.jpg',12.56,0,'500g',862,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(46,'水果46','goods/goods018.jpg',12.56,0,'500g',988,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(47,'水果47','goods/goods009.jpg',12.56,0,'500g',603,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(48,'水果48','goods/goods004.jpg',12.56,0,'500g',364,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(49,'水果49','goods/goods006.jpg',12.56,0,'500g',692,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(50,'水果50','goods/goods016.jpg',12.56,0,'500g',205,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(51,'水果51','goods/goods008.jpg',12.56,0,'500g',568,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(52,'水果52','goods/goods015.jpg',12.56,0,'500g',573,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(53,'水果53','goods/goods010.jpg',12.56,0,'500g',602,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(54,'水果54','goods/goods017.jpg',12.56,0,'500g',741,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(55,'水果55','goods/goods013.jpg',12.56,0,'500g',914,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(56,'水果56','goods/goods020.jpg',12.56,0,'500g',180,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(57,'水果57','goods/goods006.jpg',12.56,0,'500g',650,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(58,'水果58','goods/goods014.jpg',12.56,0,'500g',313,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(59,'水果59','goods/goods021.jpg',12.56,0,'500g',529,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(60,'水果60','goods/goods001.jpg',12.56,0,'500g',920,'我是橘子',999,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(61,'水果61','goods/goods017.jpg',12.56,0,'500g',513,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(62,'水果62','goods/goods015.jpg',12.56,0,'500g',561,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(63,'水果63','goods/goods009.jpg',12.56,0,'500g',257,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',3),(64,'水果64','goods/goods007.jpg',12.56,0,'500g',997,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(65,'水果65','goods/goods002.jpg',12.56,0,'500g',281,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(66,'水果66','goods/goods016.jpg',12.56,0,'500g',567,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(67,'水果67','goods/goods002.jpg',12.56,0,'500g',113,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(68,'水果68','goods/goods004.jpg',12.56,0,'500g',399,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(69,'水果69','goods/goods017.jpg',12.56,0,'500g',984,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(70,'水果70','goods/goods003.jpg',12.56,0,'500g',605,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(71,'水果71','goods/goods001.jpg',12.56,0,'500g',746,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(72,'水果72','goods/goods009.jpg',12.56,0,'500g',943,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(73,'水果73','goods/goods015.jpg',12.56,0,'500g',482,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(74,'水果74','goods/goods020.jpg',12.56,0,'500g',506,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(75,'水果75','goods/goods006.jpg',12.56,0,'500g',549,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(76,'水果76','goods/goods019.jpg',12.56,0,'500g',723,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(77,'水果77','goods/goods009.jpg',12.56,0,'500g',994,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(78,'水果78','goods/goods019.jpg',12.56,0,'500g',512,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(79,'水果79','goods/goods016.jpg',12.56,0,'500g',416,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(80,'水果80','goods/goods011.jpg',12.56,0,'500g',351,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(81,'水果81','goods/goods004.jpg',12.56,0,'500g',448,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(82,'水果82','goods/goods021.jpg',12.56,0,'500g',746,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(83,'水果83','goods/goods018.jpg',12.56,0,'500g',911,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(84,'水果84','goods/goods009.jpg',12.56,0,'500g',165,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',4),(85,'水果85','goods/goods018.jpg',12.56,0,'500g',527,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(86,'水果86','goods/goods004.jpg',12.56,0,'500g',528,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(87,'水果87','goods/goods018.jpg',12.56,0,'500g',494,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(88,'水果88','goods/goods012.jpg',12.56,0,'500g',784,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(89,'水果89','goods/goods021.jpg',12.56,0,'500g',551,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(90,'水果90','goods/goods019.jpg',12.56,0,'500g',653,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(91,'水果91','goods/goods011.jpg',12.56,0,'500g',398,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(92,'水果92','goods/goods012.jpg',12.56,0,'500g',812,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(93,'水果93','goods/goods014.jpg',12.56,0,'500g',820,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(94,'水果94','goods/goods020.jpg',12.56,0,'500g',488,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(95,'水果95','goods/goods017.jpg',12.56,0,'500g',227,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(96,'水果96','goods/goods009.jpg',12.56,0,'500g',342,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(97,'水果97','goods/goods014.jpg',12.56,0,'500g',807,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(98,'水果98','goods/goods003.jpg',12.56,0,'500g',906,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(99,'水果99','goods/goods009.jpg',12.56,0,'500g',884,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(100,'水果100','goods/goods013.jpg',12.56,0,'500g',764,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(101,'水果101','goods/goods010.jpg',12.56,0,'500g',124,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(102,'水果102','goods/goods015.jpg',12.56,0,'500g',289,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(103,'水果103','goods/goods001.jpg',12.56,0,'500g',426,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(104,'水果104','goods/goods013.jpg',12.56,0,'500g',837,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(105,'水果105','goods/goods010.jpg',12.56,0,'500g',227,'我是橘子',998,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',5),(106,'水果106','goods/goods012.jpg',12.56,0,'500g',171,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(107,'水果107','goods/goods003.jpg',12.56,0,'500g',443,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(108,'水果108','goods/goods014.jpg',12.56,0,'500g',686,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(109,'水果109','goods/goods007.jpg',12.56,0,'500g',565,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(110,'水果110','goods/goods020.jpg',12.56,0,'500g',952,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(111,'水果111','goods/goods015.jpg',12.56,0,'500g',902,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(112,'水果112','goods/goods019.jpg',12.56,0,'500g',310,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(113,'水果113','goods/goods012.jpg',12.56,0,'500g',750,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(114,'水果114','goods/goods018.jpg',12.56,0,'500g',120,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(115,'水果115','goods/goods008.jpg',12.56,0,'500g',262,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(116,'水果116','goods/goods014.jpg',12.56,0,'500g',564,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(117,'水果117','goods/goods013.jpg',12.56,0,'500g',568,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(118,'水果118','goods/goods013.jpg',12.56,0,'500g',272,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(119,'水果119','goods/goods012.jpg',12.56,0,'500g',531,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(120,'水果120','goods/goods017.jpg',12.56,0,'500g',768,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(121,'水果121','goods/goods005.jpg',12.56,0,'500g',930,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(122,'水果122','goods/goods011.jpg',12.56,0,'500g',354,'我是橘子',1000,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(123,'水果123','goods/goods005.jpg',12.56,0,'500g',419,'我是橘子',999,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(124,'水果124','goods/goods013.jpg',12.56,0,'500g',116,'我是橘子',999,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(125,'水果125','goods/goods005.jpg',12.56,0,'500g',649,'我是橘子',999,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6),(126,'水果126','goods/goods008.jpg',12.56,0,'500g',728,'我是橘子',999,'我是橘子，我来自澳大利亚,我香甜可口，特别好吃',6);
/*!40000 ALTER TABLE `df_goods_goodsinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_goods_typeinfo`
--

DROP TABLE IF EXISTS `df_goods_typeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_goods_typeinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ttitle` varchar(20) NOT NULL,
  `isDelete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_goods_typeinfo`
--

LOCK TABLES `df_goods_typeinfo` WRITE;
/*!40000 ALTER TABLE `df_goods_typeinfo` DISABLE KEYS */;
INSERT INTO `df_goods_typeinfo` VALUES (1,'新鲜水果',0),(2,'海鲜水产',0),(3,'猪羊牛肉',0),(4,'禽类蛋品',0),(5,'新鲜蔬菜',0),(6,'速冻食品',0);
/*!40000 ALTER TABLE `df_goods_typeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_order_orderdetailinfo`
--

DROP TABLE IF EXISTS `df_order_orderdetailinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_order_orderdetailinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(5,2) NOT NULL,
  `count` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `df_order_order_goods_id_fb1743064a32d54_fk_df_goods_goodsinfo_id` (`goods_id`),
  KEY `df_order_orderdetailinfo_69dfcb07` (`order_id`),
  CONSTRAINT `df_order_ord_order_id_771a0ade028c587a_fk_df_order_orderinfo_oid` FOREIGN KEY (`order_id`) REFERENCES `df_order_orderinfo` (`oid`),
  CONSTRAINT `df_order_order_goods_id_fb1743064a32d54_fk_df_goods_goodsinfo_id` FOREIGN KEY (`goods_id`) REFERENCES `df_goods_goodsinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_order_orderdetailinfo`
--

LOCK TABLES `df_order_orderdetailinfo` WRITE;
/*!40000 ALTER TABLE `df_order_orderdetailinfo` DISABLE KEYS */;
INSERT INTO `df_order_orderdetailinfo` VALUES (63,12.56,1,125,'201802022213231'),(64,12.56,1,126,'201802031400141'),(65,12.56,1,20,'201802032231401'),(66,12.56,2,42,'201802032325441');
/*!40000 ALTER TABLE `df_order_orderdetailinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_order_orderinfo`
--

DROP TABLE IF EXISTS `df_order_orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_order_orderinfo` (
  `oid` varchar(20) NOT NULL,
  `odate` date NOT NULL,
  `oIsPay` tinyint(1) NOT NULL,
  `ototal` decimal(6,2) NOT NULL,
  `oaddress` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`oid`),
  KEY `df_order_orderin_user_id_3b057c6bce0222e9_fk_df_user_userinfo_id` (`user_id`),
  CONSTRAINT `df_order_orderin_user_id_3b057c6bce0222e9_fk_df_user_userinfo_id` FOREIGN KEY (`user_id`) REFERENCES `df_user_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_order_orderinfo`
--

LOCK TABLES `df_order_orderinfo` WRITE;
/*!40000 ALTER TABLE `df_order_orderinfo` DISABLE KEYS */;
INSERT INTO `df_order_orderinfo` VALUES ('201802022213231','2018-02-02',1,22.56,'云南省宣威市文兴乡 (亓之亦 收) 13886866688',1),('201802031400141','2018-02-03',1,22.56,'云南省宣威市文兴乡 (亓之亦 收) 13886866688',1),('201802032231401','2018-02-03',1,22.56,'云南省宣威市文兴乡 (亓之亦 收) 13886866688',1),('201802032325441','2018-02-03',1,35.12,'云南省宣威市文兴乡 (亓之亦 收) 13886866688',1);
/*!40000 ALTER TABLE `df_order_orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `df_user_userinfo`
--

DROP TABLE IF EXISTS `df_user_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `df_user_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upwd` varchar(40) NOT NULL,
  `uemail` varchar(30) NOT NULL,
  `ushou` varchar(20) NOT NULL,
  `uaddress` varchar(100) NOT NULL,
  `uyoubian` varchar(6) NOT NULL,
  `uphone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `df_user_userinfo`
--

LOCK TABLES `df_user_userinfo` WRITE;
/*!40000 ALTER TABLE `df_user_userinfo` DISABLE KEYS */;
INSERT INTO `df_user_userinfo` VALUES (1,'python','3e2eefc97824c480e34a7a42e007740951cc5e38','python@py.com','亓之亦','云南省宣威市文兴乡','655424','13886866688'),(2,'cuitongji','67ad1748636773a2685c4de4255755eb9448c740','ctj123@sohu.com','钱多多','广东省深圳市南山区','400700','13688666688');
/*!40000 ALTER TABLE `df_user_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-01-20 06:39:12.391880','1','新鲜水果',1,'',8,1),(2,'2018-01-20 06:44:22.467928','1','橘子',1,'',9,1),(3,'2018-01-20 06:57:26.090290','1','橘子',2,'已修改 gpic 。',9,1),(4,'2018-01-26 15:59:23.256323','21','水果21',2,'已修改 gpic 。',9,1),(5,'2018-01-26 15:59:46.067558','21','水果21',2,'已修改 gpic 。',9,1),(6,'2018-01-26 16:04:31.894920','127','水果001',1,'',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'df_cart','cartinfo'),(9,'df_goods','goodsinfo'),(8,'df_goods','typeinfo'),(11,'df_order','orderdetailinfo'),(10,'df_order','orderinfo'),(7,'df_user','userinfo'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-01-20 06:13:49.937107'),(2,'auth','0001_initial','2018-01-20 06:13:51.041516'),(3,'admin','0001_initial','2018-01-20 06:13:51.247080'),(4,'contenttypes','0002_remove_content_type_name','2018-01-20 06:13:51.369989'),(5,'auth','0002_alter_permission_name_max_length','2018-01-20 06:13:51.449717'),(6,'auth','0003_alter_user_email_max_length','2018-01-20 06:13:51.528882'),(7,'auth','0004_alter_user_username_opts','2018-01-20 06:13:51.583388'),(8,'auth','0005_alter_user_last_login_null','2018-01-20 06:13:51.667055'),(9,'auth','0006_require_contenttypes_0002','2018-01-20 06:13:51.688626'),(10,'df_goods','0001_initial','2018-01-20 06:13:51.987979'),(11,'df_user','0001_initial','2018-01-20 06:13:52.022842'),(12,'sessions','0001_initial','2018-01-20 06:13:52.064639'),(13,'df_cart','0001_initial','2018-01-20 06:14:42.324055'),(14,'df_order','0001_initial','2018-01-20 06:14:42.653838');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('33nkiv5z01w8zc0xg2tbyamriqvv2k71','MGExM2U3ZTRmNTBmNmEwNDVmMGRkOWE1YTg4ZGFiZTkxM2QxNWNhOTp7InVzZXJfbmFtZSI6InB5dGhvbiIsInVzZXJfaWQiOjF9','2018-02-17 13:40:02.409795'),('cxcwrphfijcxl0e9a56n3744d374mds4','N2Q0YjM5NDgzZjcxZmQ1NWNlNzFlNjA4YmJmNDViMmNmMGUzZDlhZjp7InVzZXJfaWQiOjIsIl9hdXRoX3VzZXJfaGFzaCI6IjE4YzgxNjE3ZThjOTczZmIxZTZkZmVlMTE0YjcwMmIyZTBmZGJiYTQiLCJ1c2VyX25hbWUiOiJjdWl0b25namkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-02-06 07:34:44.968010'),('w75adu9zp1vex26kwsg5ww6tx9pljmyq','MGExM2U3ZTRmNTBmNmEwNDVmMGRkOWE1YTg4ZGFiZTkxM2QxNWNhOTp7InVzZXJfbmFtZSI6InB5dGhvbiIsInVzZXJfaWQiOjF9','2018-02-17 14:31:20.405767');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-03 23:34:21
