-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_731
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.12.04.1

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
-- Table structure for table `ActionStrings`
--

DROP TABLE IF EXISTS `ActionStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActionStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.SCREEN_OFF'),(6,'android.intent.action.TIMEZONE_CHANGED'),(2,'android.provider.Telephony.SMS_RECEIVED'),(3,'com.android.vending.INSTALL_REFERRER'),(8,'com.plus.QQMsg.intent.action.HEARTBEAT'),(7,'com.plus.sms2mail.intent.action.HEARTBEAT');
/*!40000 ALTER TABLE `ActionStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aliases`
--

DROP TABLE IF EXISTS `Aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `Aliases_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`),
  CONSTRAINT `Aliases_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aliases`
--

LOCK TABLES `Aliases` WRITE;
/*!40000 ALTER TABLE `Aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `Aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Applications`
--

DROP TABLE IF EXISTS `Applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.plus.QQMsg',1),(2,'com.mj.iMatch',2),(3,'com.plus.sms2mailX',1),(4,'com.plus.QQMsgX',1);
/*!40000 ALTER TABLE `Applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CategoryStrings`
--

DROP TABLE IF EXISTS `CategoryStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CategoryStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
/*!40000 ALTER TABLE `CategoryStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Classes`
--

DROP TABLE IF EXISTS `Classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_idx` (`class`) USING HASH,
  KEY `app_id_idx` (`app_id`) USING HASH,
  CONSTRAINT `Classes_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `Applications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.plus.QQMsg.i'),(2,1,'com.plus.QQMsg.h'),(3,1,'com.plus.QQMsg.j'),(4,1,'com.plus.QQMsg.f'),(5,1,'com.plus.QQMsg.l'),(6,1,'com.plus.QQMsg.m'),(7,1,'com.plus.QQMsg.n'),(8,2,'com.mj.iMatch.IMatch'),(9,2,'com.admob.android.ads.AdMobActivity'),(10,2,'com.mj.utils.MJReceiver'),(11,2,'com.admob.android.ads.analytics.InstallReceiver'),(12,3,'com.plus.sms2mailX.Cover'),(13,3,'com.plus.sms2mailX.t'),(14,3,'com.plus.sms2mailX.l'),(15,3,'com.plus.sms2mailX.n'),(16,3,'com.plus.sms2mailX.y'),(17,1,'com.plus.QQMsg.s'),(18,3,'com.plus.sms2mailX.ox'),(19,1,'com.plus.QQMsg.t'),(20,3,'com.plus.sms2mailX.aa'),(21,1,'com.plus.QQMsg.or'),(22,1,'com.plus.QQMsg.aa'),(23,1,'com.plus.QQMsg.hh'),(24,1,'com.plus.QQMsg.y'),(25,4,'com.plus.QQMsgX.i'),(26,4,'com.plus.QQMsgX.h'),(27,4,'com.plus.QQMsgX.j'),(28,4,'com.plus.QQMsgX.f'),(29,4,'com.plus.QQMsgX.l'),(30,4,'com.plus.QQMsgX.m'),(31,4,'com.plus.QQMsgX.n'),(32,4,'com.plus.QQMsgX.s'),(33,4,'com.plus.QQMsgX.t'),(34,4,'com.plus.QQMsgX.hh'),(35,4,'com.plus.QQMsgX.y'),(36,4,'com.plus.QQMsgX.or'),(37,4,'com.plus.QQMsgX.aa'),(38,1,'com.plus.QQMsg.ad'),(39,1,'com.plus.QQMsg.ac'),(40,1,'com.plus.QQMsg.a'),(41,1,'com.plus.QQMsg.ab'),(42,1,'com.plus.QQMsg.aq'),(43,1,'com.plus.QQMsg.ai'),(44,1,'com.plus.QQMsg.ag'),(45,1,'com.plus.QQMsg.k'),(46,1,'com.plus.QQMsg.as'),(47,1,'com.plus.QQMsg.at'),(48,1,'com.plus.QQMsg.al'),(49,3,'com.plus.sms2mailX.b'),(50,1,'com.plus.QQMsg.au'),(51,3,'com.plus.sms2mailX.ac'),(52,1,'com.plus.QQMsg.av'),(53,3,'com.plus.sms2mailX.m'),(54,1,'com.plus.QQMsg.aj'),(55,3,'com.plus.sms2mailX.ak'),(56,3,'com.plus.sms2mailX.au'),(57,3,'com.plus.sms2mailX.af'),(58,3,'com.plus.sms2mailX.at'),(59,3,'com.plus.sms2mailX.th'),(60,3,'com.plus.sms2mailX.c'),(61,3,'com.plus.sms2mailX.ax'),(62,3,'com.plus.sms2mailX.av'),(63,3,'com.plus.sms2mailX.aw'),(64,3,'com.plus.sms2mailX.z'),(65,4,'com.plus.QQMsgX.bg'),(66,4,'com.plus.QQMsgX.ay'),(67,1,'com.plus.QQMsg.bs'),(68,4,'com.plus.QQMsgX.bc'),(69,1,'com.plus.QQMsg.ay'),(70,1,'com.plus.QQMsg.bd'),(71,4,'com.plus.QQMsgX.bt'),(72,4,'com.plus.QQMsgX.bf'),(73,1,'com.plus.QQMsg.aw'),(74,4,'com.plus.QQMsgX.an'),(75,4,'com.plus.QQMsgX.bd'),(76,4,'com.plus.QQMsgX.th'),(77,4,'com.plus.QQMsgX.ao'),(78,4,'com.plus.QQMsgX.aw'),(79,4,'com.plus.QQMsgX.be'),(80,1,'com.plus.QQMsg.ao'),(81,4,'com.plus.QQMsgX.bw'),(82,4,'com.plus.QQMsgX.bv'),(83,1,'com.plus.QQMsg.bv'),(84,4,'com.plus.QQMsgX.aq'),(85,1,'com.plus.QQMsg.bf'),(86,4,'com.plus.QQMsgX.bs'),(87,1,'com.plus.QQMsg.be'),(88,4,'com.plus.QQMsgX.bu'),(89,1,'com.plus.QQMsg.ah'),(90,1,'com.plus.QQMsg.bc'),(91,1,'com.plus.QQMsg.bw'),(92,1,'com.plus.QQMsg.an'),(93,4,'com.plus.QQMsgX.ah'),(94,1,'com.plus.QQMsg.bg'),(95,4,'com.plus.QQMsgX.av'),(96,1,'com.plus.QQMsg.bt'),(97,1,'com.plus.QQMsg.bu'),(98,1,'com.plus.QQMsg.th');
/*!40000 ALTER TABLE `Classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComponentExtras`
--

DROP TABLE IF EXISTS `ComponentExtras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComponentExtras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `extra` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `ComponentExtras_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'register'),(2,9,'c'),(3,9,'u'),(4,9,'msm'),(5,9,'t'),(6,9,'nosk'),(7,9,'s'),(8,9,'tr'),(9,9,'b'),(10,9,'skd'),(11,9,'sin'),(12,9,'ap'),(13,11,'referrer'),(14,9,'oi'),(15,9,'rd'),(16,9,'p'),(17,9,'json'),(18,9,'o'),(19,10,'pdus'),(20,11,'(.*)'),(21,9,'su'),(22,9,'ru'),(23,11,'ADMOB_PUBLISHER_ID'),(24,11,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(25,11,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(26,9,'$'),(27,9,'mi'),(28,9,'sc'),(29,9,'int'),(30,9,'sd'),(31,9,'a'),(32,9,'si'),(33,9,'sku'),(34,9,'ad'),(35,9,'cs'),(36,9,'au'),(37,9,'cbo'),(38,9,'or'),(39,17,'firstLogin'),(40,16,'page'),(41,24,'page'),(42,4,'2012'),(43,31,'register'),(44,27,'2012'),(45,26,'2011'),(46,2,'2012'),(47,28,'2011'),(48,4,'2011'),(49,26,'2012'),(50,3,'2011'),(51,27,'2011'),(52,32,'firstLogin'),(53,35,'page'),(54,28,'2012'),(55,2,'2011'),(56,3,'2012');
/*!40000 ALTER TABLE `ComponentExtras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Components`
--

DROP TABLE IF EXISTS `Components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `kind` char(1) COLLATE utf8mb4_bin NOT NULL,
  `exported` tinyint(1) NOT NULL,
  `permission` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `permission` (`permission`),
  CONSTRAINT `Components_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Components_ibfk_2` FOREIGN KEY (`permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,46,'r',1,NULL,NULL),(39,57,'r',1,NULL,NULL),(40,59,'r',1,NULL,NULL),(41,66,'r',1,NULL,NULL),(42,69,'r',1,NULL,NULL),(43,76,'r',1,NULL,NULL),(44,98,'r',1,NULL,NULL);
/*!40000 ALTER TABLE `Components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExitPointComponents`
--

DROP TABLE IF EXISTS `ExitPointComponents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExitPointComponents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `ExitPointComponents_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ExitPointComponents_ibfk_2` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,1),(3,3,2),(4,4,7),(5,5,3),(6,6,1),(7,7,7),(8,8,1),(9,9,2),(10,10,19),(11,10,3),(12,11,17),(13,12,3),(14,13,12),(15,14,17),(16,15,15),(17,16,22),(18,17,17),(19,18,13),(20,18,18),(21,19,18),(22,20,1),(23,21,12),(24,22,1),(25,23,18),(26,24,13),(27,25,13),(28,25,18),(29,26,16),(30,27,16),(31,28,18),(32,28,13),(33,29,20),(34,30,12),(35,31,16),(36,32,16),(37,33,16),(38,34,14),(39,35,18),(40,35,13),(41,36,13),(42,37,32),(43,38,24),(44,39,32),(45,40,17),(46,41,35),(47,42,22),(48,43,32),(49,44,7),(50,45,25),(51,46,32),(52,47,3),(53,48,25),(54,49,31),(55,50,32),(56,51,1),(57,52,25),(58,53,35),(59,54,7),(60,55,35),(61,56,24),(62,57,27),(63,58,33),(64,58,27),(65,58,26),(66,58,32),(67,58,30),(68,59,17),(69,60,32),(70,61,35),(71,62,17),(72,63,32),(73,64,35),(74,65,2),(75,66,25),(76,67,37),(77,68,32),(78,69,27),(79,70,17),(80,71,35),(81,72,31),(82,73,24),(83,74,32),(84,75,35),(85,76,1),(86,77,26),(87,78,26),(88,79,17),(89,80,37),(90,81,31),(91,82,24),(92,83,32),(93,84,35),(94,85,17),(95,85,2),(96,85,19),(97,85,3),(98,85,6),(99,86,35),(100,87,32),(101,87,33),(102,87,30),(103,87,26),(104,87,27),(105,88,24),(106,89,35),(107,90,31);
/*!40000 ALTER TABLE `ExitPointComponents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExitPoints`
--

DROP TABLE IF EXISTS `ExitPoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExitPoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `method` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `instruction` mediumint(9) NOT NULL,
  `exit_kind` char(1) COLLATE utf8mb4_bin NOT NULL,
  `missing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `ExitPoints_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,17,'<com.plus.QQMsg.s: void onClick(android.view.View)>',8,'a',NULL),(2,22,'<com.plus.QQMsg.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(3,38,'<com.plus.QQMsg.ad: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(4,39,'<com.plus.QQMsg.ac: void onClick(android.view.View)>',6,'a',NULL),(5,40,'<com.plus.QQMsg.a: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(6,41,'<com.plus.QQMsg.ab: void onClick(android.view.View)>',35,'a',NULL),(7,42,'<com.plus.QQMsg.aq: void onClick(android.view.View)>',6,'a',NULL),(8,43,'<com.plus.QQMsg.ai: void onClick(android.view.View)>',27,'a',NULL),(9,44,'<com.plus.QQMsg.ag: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(10,45,'<com.plus.QQMsg.k: void onClick(android.view.View)>',8,'a',NULL),(11,47,'<com.plus.QQMsg.at: void onClick(android.view.View)>',7,'a',NULL),(12,48,'<com.plus.QQMsg.al: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(13,49,'<com.plus.sms2mailX.b: void onClick(android.view.View)>',26,'a',NULL),(14,50,'<com.plus.QQMsg.au: void onClick(android.view.View)>',7,'a',NULL),(15,51,'<com.plus.sms2mailX.ac: void onClick(android.view.View)>',7,'a',NULL),(16,22,'<com.plus.QQMsg.aa: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(17,52,'<com.plus.QQMsg.av: void onClick(android.view.View)>',6,'a',NULL),(18,53,'<com.plus.sms2mailX.m: void a(long)>',7,'p',NULL),(19,18,'<com.plus.sms2mailX.ox: void onCreate()>',13,'p',NULL),(20,1,'<com.plus.QQMsg.i: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(21,12,'<com.plus.sms2mailX.Cover: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(22,54,'<com.plus.QQMsg.aj: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(23,18,'<com.plus.sms2mailX.ox: void onCreate()>',17,'p',NULL),(24,55,'<com.plus.sms2mailX.ak: void onClick(android.view.View)>',16,'a',NULL),(25,53,'<com.plus.sms2mailX.m: void a(boolean,long)>',8,'p',NULL),(26,56,'<com.plus.sms2mailX.au: void onClick(android.view.View)>',7,'a',NULL),(27,58,'<com.plus.sms2mailX.at: void onClick(android.view.View)>',7,'a',NULL),(28,53,'<com.plus.sms2mailX.m: java.util.ArrayList b()>',4,'p',NULL),(29,20,'<com.plus.sms2mailX.aa: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(30,60,'<com.plus.sms2mailX.c: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(31,61,'<com.plus.sms2mailX.ax: void onClick(android.view.View)>',7,'a',NULL),(32,62,'<com.plus.sms2mailX.av: void onClick(android.view.View)>',7,'a',NULL),(33,63,'<com.plus.sms2mailX.aw: void onClick(android.view.View)>',7,'a',NULL),(34,64,'<com.plus.sms2mailX.z: void onClick(android.view.View)>',7,'a',NULL),(35,53,'<com.plus.sms2mailX.m: java.util.ArrayList b()>',34,'p',NULL),(36,55,'<com.plus.sms2mailX.ak: void onClick(android.view.View)>',10,'a',NULL),(37,65,'<com.plus.QQMsgX.bg: void onClick(android.view.View)>',6,'a',NULL),(38,67,'<com.plus.QQMsg.bs: void onClick(android.view.View)>',7,'a',NULL),(39,68,'<com.plus.QQMsgX.bc: void onClick(android.view.View)>',8,'a',NULL),(40,70,'<com.plus.QQMsg.bd: void onClick(android.view.View)>',8,'a',NULL),(41,71,'<com.plus.QQMsgX.bt: void onClick(android.view.View)>',7,'a',NULL),(42,22,'<com.plus.QQMsg.aa: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(43,72,'<com.plus.QQMsgX.bf: void onClick(android.view.View)>',6,'a',NULL),(44,73,'<com.plus.QQMsg.aw: void onClick(android.view.View)>',7,'a',NULL),(45,74,'<com.plus.QQMsgX.an: void onClick(android.view.View)>',27,'a',NULL),(46,75,'<com.plus.QQMsgX.bd: void onClick(android.view.View)>',8,'a',NULL),(47,42,'<com.plus.QQMsg.aq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',36,'a',NULL),(48,77,'<com.plus.QQMsgX.ao: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(49,78,'<com.plus.QQMsgX.aw: void onClick(android.view.View)>',7,'a',NULL),(50,79,'<com.plus.QQMsgX.be: void onClick(android.view.View)>',8,'a',NULL),(51,80,'<com.plus.QQMsg.ao: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(52,77,'<com.plus.QQMsgX.ao: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(53,81,'<com.plus.QQMsgX.bw: void onClick(android.view.View)>',7,'a',NULL),(54,52,'<com.plus.QQMsg.av: void onClick(android.view.View)>',6,'a',NULL),(55,82,'<com.plus.QQMsgX.bv: void onClick(android.view.View)>',7,'a',NULL),(56,83,'<com.plus.QQMsg.bv: void onClick(android.view.View)>',7,'a',NULL),(57,84,'<com.plus.QQMsgX.aq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',36,'a',NULL),(58,30,'<com.plus.QQMsgX.m: void onClick(android.view.View)>',8,'a',NULL),(59,85,'<com.plus.QQMsg.bf: void onClick(android.view.View)>',6,'a',NULL),(60,75,'<com.plus.QQMsgX.bd: void onClick(android.view.View)>',8,'a',NULL),(61,86,'<com.plus.QQMsgX.bs: void onClick(android.view.View)>',7,'a',NULL),(62,87,'<com.plus.QQMsg.be: void onClick(android.view.View)>',8,'a',NULL),(63,72,'<com.plus.QQMsgX.bf: void onClick(android.view.View)>',6,'a',NULL),(64,88,'<com.plus.QQMsgX.bu: void onClick(android.view.View)>',7,'a',NULL),(65,89,'<com.plus.QQMsg.ah: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(66,74,'<com.plus.QQMsgX.an: void onClick(android.view.View)>',27,'a',NULL),(67,37,'<com.plus.QQMsgX.aa: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(68,65,'<com.plus.QQMsgX.bg: void onClick(android.view.View)>',6,'a',NULL),(69,84,'<com.plus.QQMsgX.aq: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',36,'a',NULL),(70,90,'<com.plus.QQMsg.bc: void onClick(android.view.View)>',8,'a',NULL),(71,88,'<com.plus.QQMsgX.bu: void onClick(android.view.View)>',7,'a',NULL),(72,78,'<com.plus.QQMsgX.aw: void onClick(android.view.View)>',7,'a',NULL),(73,91,'<com.plus.QQMsg.bw: void onClick(android.view.View)>',7,'a',NULL),(74,79,'<com.plus.QQMsgX.be: void onClick(android.view.View)>',8,'a',NULL),(75,71,'<com.plus.QQMsgX.bt: void onClick(android.view.View)>',7,'a',NULL),(76,92,'<com.plus.QQMsg.an: void onClick(android.view.View)>',27,'a',NULL),(77,93,'<com.plus.QQMsgX.ah: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(78,93,'<com.plus.QQMsgX.ah: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(79,94,'<com.plus.QQMsg.bg: void onClick(android.view.View)>',6,'a',NULL),(80,37,'<com.plus.QQMsgX.aa: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(81,95,'<com.plus.QQMsgX.av: void onClick(android.view.View)>',6,'a',NULL),(82,96,'<com.plus.QQMsg.bt: void onClick(android.view.View)>',7,'a',NULL),(83,68,'<com.plus.QQMsgX.bc: void onClick(android.view.View)>',8,'a',NULL),(84,86,'<com.plus.QQMsgX.bs: void onClick(android.view.View)>',7,'a',NULL),(85,6,'<com.plus.QQMsg.m: void onClick(android.view.View)>',8,'a',NULL),(86,81,'<com.plus.QQMsgX.bw: void onClick(android.view.View)>',7,'a',NULL),(87,30,'<com.plus.QQMsgX.m: void onClick(android.view.View)>',8,'a',NULL),(88,97,'<com.plus.QQMsg.bu: void onClick(android.view.View)>',7,'a',NULL),(89,82,'<com.plus.QQMsgX.bv: void onClick(android.view.View)>',7,'a',NULL),(90,95,'<com.plus.QQMsgX.av: void onClick(android.view.View)>',6,'a',NULL);
/*!40000 ALTER TABLE `ExitPoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Extras`
--

DROP TABLE IF EXISTS `Extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Extras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(512) NOT NULL,
  `type` varchar(512) DEFAULT NULL,
  `extra` varchar(512) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Extras`
--

LOCK TABLES `Extras` WRITE;
/*!40000 ALTER TABLE `Extras` DISABLE KEYS */;
/*!40000 ALTER TABLE `Extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IActions`
--

DROP TABLE IF EXISTS `IActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IActions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `action` (`action`),
  CONSTRAINT `IActions_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IActions_ibfk_2` FOREIGN KEY (`action`) REFERENCES `ActionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,18,1),(2,19,1);
/*!40000 ALTER TABLE `IActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ICategories`
--

DROP TABLE IF EXISTS `ICategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `category` (`category`),
  CONSTRAINT `ICategories_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ICategories_ibfk_2` FOREIGN KEY (`category`) REFERENCES `CategoryStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,18,2),(2,19,2);
/*!40000 ALTER TABLE `ICategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IClasses`
--

DROP TABLE IF EXISTS `IClasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IClasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `class` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IClasses_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/plus/QQMsg/n'),(2,2,'com/plus/QQMsg/h'),(3,3,'com/plus/QQMsg/j'),(4,4,'com/plus/QQMsg/l'),(5,5,'com/plus/QQMsg/f'),(6,6,'com/plus/QQMsg/h'),(7,7,'com/plus/QQMsg/l'),(8,8,'com/plus/QQMsg/s'),(9,9,'com/plus/QQMsg/j'),(10,10,'com/plus/QQMsg/n'),(11,11,'com/plus/QQMsg/h'),(12,12,'com/plus/QQMsg/f'),(13,13,'com/plus/sms2mailX/t'),(14,14,'com/plus/QQMsg/h'),(15,16,'com/plus/QQMsg/or'),(16,15,'com/plus/sms2mailX/y'),(17,17,'com/plus/QQMsg/t'),(18,20,'com/plus/QQMsg/s'),(19,21,'com/plus/sms2mailX/l'),(20,22,'com/plus/sms2mailX/y'),(21,23,'com/plus/sms2mailX/y'),(22,24,'com/plus/sms2mailX/ox'),(23,25,'com/plus/sms2mailX/t'),(24,26,'com/plus/sms2mailX/y'),(25,27,'com/plus/sms2mailX/y'),(26,28,'com/plus/sms2mailX/y'),(27,29,'com/plus/sms2mailX/y'),(28,30,'com/plus/sms2mailX/n'),(29,31,'com/plus/QQMsgX/hh'),(30,32,'com/plus/QQMsg/y'),(31,33,'com/plus/QQMsgX/h'),(32,35,'com/plus/QQMsgX/y'),(33,34,'com/plus/QQMsg/h'),(34,36,'com/plus/QQMsg/or'),(35,37,'com/plus/QQMsgX/t'),(36,38,'com/plus/QQMsg/y'),(37,39,'com/plus/QQMsgX/s'),(38,40,'com/plus/QQMsgX/h'),(39,42,'com/plus/QQMsgX/s'),(40,41,'com/plus/QQMsg/f'),(41,43,'com/plus/QQMsgX/y'),(42,44,'com/plus/QQMsgX/h'),(43,45,'com/plus/QQMsg/s'),(44,46,'com/plus/QQMsgX/s'),(45,48,'com/plus/QQMsg/l'),(46,47,'com/plus/QQMsgX/y'),(47,49,'com/plus/QQMsgX/y'),(48,50,'com/plus/QQMsg/y'),(49,51,'com/plus/QQMsgX/f'),(50,52,'com/plus/QQMsgX/n'),(51,53,'com/plus/QQMsg/t'),(52,55,'com/plus/QQMsgX/y'),(53,54,'com/plus/QQMsgX/h'),(54,56,'com/plus/QQMsg/h'),(55,57,'com/plus/QQMsgX/t'),(56,58,'com/plus/QQMsgX/y'),(57,60,'com/plus/QQMsgX/s'),(58,59,'com/plus/QQMsg/j'),(59,61,'com/plus/QQMsgX/or'),(60,62,'com/plus/QQMsgX/hh'),(61,65,'com/plus/QQMsgX/y'),(62,64,'com/plus/QQMsg/h'),(63,63,'com/plus/QQMsgX/f'),(64,66,'com/plus/QQMsgX/y'),(65,67,'com/plus/QQMsg/y'),(66,68,'com/plus/QQMsgX/h'),(67,69,'com/plus/QQMsgX/y'),(68,70,'com/plus/QQMsg/s'),(69,71,'com/plus/QQMsgX/j'),(70,73,'com/plus/QQMsg/hh'),(71,72,'com/plus/QQMsgX/j'),(72,74,'com/plus/QQMsgX/or'),(73,75,'com/plus/QQMsgX/l'),(74,76,'com/plus/QQMsg/y'),(75,78,'com/plus/QQMsgX/y'),(76,77,'com/plus/QQMsgX/h'),(77,79,'com/plus/QQMsg/n'),(78,80,'com/plus/QQMsgX/y'),(79,81,'com/plus/QQMsgX/n'),(80,82,'com/plus/QQMsg/y'),(81,83,'com/plus/QQMsgX/y'),(82,84,'com/plus/QQMsgX/l');
/*!40000 ALTER TABLE `IClasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IData`
--

DROP TABLE IF EXISTS `IData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `data` (`data`),
  CONSTRAINT `IData_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IData_ibfk_2` FOREIGN KEY (`data`) REFERENCES `UriData` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
/*!40000 ALTER TABLE `IData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IExtras`
--

DROP TABLE IF EXISTS `IExtras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IExtras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `extra` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IExtras_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'register'),(2,3,'uin'),(3,5,'uin1'),(4,5,'uin2'),(5,5,'number'),(6,8,'firstLogin'),(7,9,'uin'),(8,10,'register'),(9,12,'uin1'),(10,12,'uin2'),(11,12,'number'),(12,15,'page'),(13,20,'firstLogin'),(14,22,'page'),(15,23,'page'),(16,26,'page'),(17,27,'page'),(18,28,'page'),(19,29,'page'),(20,32,'page'),(21,33,'2012'),(22,33,'2011'),(23,34,'2012'),(24,35,'page'),(25,34,'2011'),(26,38,'page'),(27,39,'firstLogin'),(28,40,'2012'),(29,40,'2011'),(30,41,'uin1'),(31,41,'uin2'),(32,41,'2012'),(33,41,'2011'),(34,42,'firstLogin'),(35,41,'number'),(36,43,'page'),(37,44,'2012'),(38,44,'2011'),(39,45,'firstLogin'),(40,46,'firstLogin'),(41,47,'page'),(42,49,'page'),(43,50,'page'),(44,51,'uin1'),(45,51,'uin2'),(46,51,'2012'),(47,51,'2011'),(48,51,'number'),(49,52,'register'),(50,54,'2012'),(51,55,'page'),(52,54,'2011'),(53,56,'2012'),(54,56,'2011'),(55,58,'page'),(56,59,'2012'),(57,59,'2011'),(58,60,'firstLogin'),(59,59,'uin'),(60,63,'uin1'),(61,64,'2012'),(62,63,'uin2'),(63,65,'page'),(64,64,'2011'),(65,63,'2012'),(66,63,'2011'),(67,63,'number'),(68,66,'page'),(69,67,'page'),(70,68,'2012'),(71,68,'2011'),(72,69,'page'),(73,70,'firstLogin'),(74,71,'2012'),(75,71,'2011'),(76,72,'2012'),(77,71,'uin'),(78,72,'2011'),(79,72,'uin'),(80,76,'page'),(81,77,'2012'),(82,78,'page'),(83,77,'2011'),(84,79,'register'),(85,80,'page'),(86,81,'register'),(87,82,'page'),(88,83,'page');
/*!40000 ALTER TABLE `IExtras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFActions`
--

DROP TABLE IF EXISTS `IFActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFActions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `action_idx` (`action`) USING HASH,
  CONSTRAINT `IFActions_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IFActions_ibfk_2` FOREIGN KEY (`action`) REFERENCES `ActionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,1),(6,6,1),(7,7,4),(8,8,4),(9,9,1),(10,10,4),(11,11,1),(12,12,1),(13,13,4),(14,14,4),(15,15,5),(16,15,6),(17,16,6),(18,17,7),(19,18,5),(20,18,6),(21,19,6),(22,19,5),(23,20,8),(24,21,8),(25,22,8),(26,23,6),(27,23,5);
/*!40000 ALTER TABLE `IFActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFCategories`
--

DROP TABLE IF EXISTS `IFCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFCategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `category_idx` (`category`) USING HASH,
  CONSTRAINT `IFCategories_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IFCategories_ibfk_2` FOREIGN KEY (`category`) REFERENCES `CategoryStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,6,1),(4,9,1);
/*!40000 ALTER TABLE `IFCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFData`
--

DROP TABLE IF EXISTS `IFData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) DEFAULT NULL,
  `scheme` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `host` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `port` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `path` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `subtype` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  CONSTRAINT `IFData_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,NULL,NULL,NULL,NULL,'com.plus.sms2mail','alarm'),(2,20,NULL,NULL,NULL,NULL,'com.plus.QQMsg','alarm'),(3,21,NULL,NULL,NULL,NULL,'com.plus.QQMsg','alarm'),(4,22,NULL,NULL,NULL,NULL,'com.plus.QQMsg','alarm');
/*!40000 ALTER TABLE `IFData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFMimeTypes`
--

DROP TABLE IF EXISTS `IFMimeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFMimeTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `type` varchar(512) NOT NULL,
  `subtype` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `type_idx` (`type`,`subtype`),
  CONSTRAINT `IFMimeTypes_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFMimeTypes`
--

LOCK TABLES `IFMimeTypes` WRITE;
/*!40000 ALTER TABLE `IFMimeTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `IFMimeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IMimeTypes`
--

DROP TABLE IF EXISTS `IMimeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IMimeTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `subtype` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `type_idx` (`type`),
  KEY `subtype_idx` (`subtype`),
  CONSTRAINT `IMimeTypes_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `IMimeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IPackages`
--

DROP TABLE IF EXISTS `IPackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IPackages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `package` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IPackages_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.plus.QQMsg'),(2,2,'com.plus.QQMsg'),(3,3,'com.plus.QQMsg'),(4,4,'com.plus.QQMsg'),(5,5,'com.plus.QQMsg'),(6,6,'com.plus.QQMsg'),(7,7,'com.plus.QQMsg'),(8,8,'com.plus.QQMsg'),(9,9,'com.plus.QQMsg'),(10,10,'com.plus.QQMsg'),(11,11,'com.plus.QQMsg'),(12,12,'com.plus.QQMsg'),(13,13,'com.plus.sms2mailX'),(14,14,'com.plus.QQMsg'),(15,16,'com.plus.QQMsg'),(16,15,'com.plus.sms2mailX'),(17,17,'com.plus.QQMsg'),(18,20,'com.plus.QQMsg'),(19,21,'com.plus.sms2mailX'),(20,22,'com.plus.sms2mailX'),(21,23,'com.plus.sms2mailX'),(22,24,'com.plus.sms2mailX'),(23,25,'com.plus.sms2mailX'),(24,26,'com.plus.sms2mailX'),(25,27,'com.plus.sms2mailX'),(26,28,'com.plus.sms2mailX'),(27,29,'com.plus.sms2mailX'),(28,30,'com.plus.sms2mailX'),(29,31,'com.plus.QQMsgX'),(30,32,'com.plus.QQMsg'),(31,33,'com.plus.QQMsgX'),(32,35,'com.plus.QQMsgX'),(33,34,'com.plus.QQMsg'),(34,36,'com.plus.QQMsg'),(35,37,'com.plus.QQMsgX'),(36,38,'com.plus.QQMsg'),(37,39,'com.plus.QQMsgX'),(38,40,'com.plus.QQMsgX'),(39,42,'com.plus.QQMsgX'),(40,41,'com.plus.QQMsg'),(41,43,'com.plus.QQMsgX'),(42,44,'com.plus.QQMsgX'),(43,45,'com.plus.QQMsg'),(44,46,'com.plus.QQMsgX'),(45,48,'com.plus.QQMsg'),(46,47,'com.plus.QQMsgX'),(47,49,'com.plus.QQMsgX'),(48,50,'com.plus.QQMsg'),(49,51,'com.plus.QQMsgX'),(50,52,'com.plus.QQMsgX'),(51,53,'com.plus.QQMsg'),(52,54,'com.plus.QQMsgX'),(53,55,'com.plus.QQMsgX'),(54,56,'com.plus.QQMsg'),(55,57,'com.plus.QQMsgX'),(56,58,'com.plus.QQMsgX'),(57,60,'com.plus.QQMsgX'),(58,59,'com.plus.QQMsg'),(59,61,'com.plus.QQMsgX'),(60,62,'com.plus.QQMsgX'),(61,65,'com.plus.QQMsgX'),(62,64,'com.plus.QQMsg'),(63,63,'com.plus.QQMsgX'),(64,66,'com.plus.QQMsgX'),(65,67,'com.plus.QQMsg'),(66,68,'com.plus.QQMsgX'),(67,69,'com.plus.QQMsgX'),(68,70,'com.plus.QQMsg'),(69,71,'com.plus.QQMsgX'),(70,73,'com.plus.QQMsg'),(71,72,'com.plus.QQMsgX'),(72,74,'com.plus.QQMsgX'),(73,75,'com.plus.QQMsgX'),(74,76,'com.plus.QQMsg'),(75,78,'com.plus.QQMsgX'),(76,77,'com.plus.QQMsgX'),(77,79,'com.plus.QQMsg'),(78,80,'com.plus.QQMsgX'),(79,81,'com.plus.QQMsgX'),(80,82,'com.plus.QQMsg'),(81,83,'com.plus.QQMsgX'),(82,84,'com.plus.QQMsgX');
/*!40000 ALTER TABLE `IPackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IccStmts`
--

DROP TABLE IF EXISTS `IccStmts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IccStmts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `stmt_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IccStmts`
--

LOCK TABLES `IccStmts` WRITE;
/*!40000 ALTER TABLE `IccStmts` DISABLE KEYS */;
/*!40000 ALTER TABLE `IccStmts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntentFilters`
--

DROP TABLE IF EXISTS `IntentFilters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntentFilters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `alias` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `c_id_idx` (`component_id`) USING HASH,
  CONSTRAINT `IntentFilters_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,10,0),(4,11,0),(5,12,0),(6,1,0),(7,20,0),(8,22,0),(9,1,0),(10,22,0),(11,25,0),(12,25,0),(13,37,0),(14,37,0),(15,38,0),(16,39,0),(17,40,0),(18,41,0),(19,42,0),(20,43,0),(21,43,0),(22,44,0),(23,41,0);
/*!40000 ALTER TABLE `IntentFilters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntentPermissions`
--

DROP TABLE IF EXISTS `IntentPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntentPermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `i_permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `i_permission` (`i_permission`),
  CONSTRAINT `IntentPermissions_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IntentPermissions_ibfk_2` FOREIGN KEY (`i_permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentPermissions`
--

LOCK TABLES `IntentPermissions` WRITE;
/*!40000 ALTER TABLE `IntentPermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `IntentPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Intents`
--

DROP TABLE IF EXISTS `Intents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Intents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `implicit` tinyint(1) NOT NULL,
  `alias` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  CONSTRAINT `Intents_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,0,0),(8,8,0,0),(9,9,0,0),(10,10,0,0),(11,11,0,0),(12,12,0,0),(13,13,0,0),(14,14,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,20,1,0),(19,21,1,0),(20,22,0,0),(21,24,0,0),(22,26,0,0),(23,27,0,0),(24,29,0,0),(25,30,0,0),(26,31,0,0),(27,32,0,0),(28,33,0,0),(29,34,0,0),(30,36,0,0),(31,37,0,0),(32,38,0,0),(33,39,0,0),(34,40,0,0),(35,41,0,0),(36,42,0,0),(37,43,0,0),(38,44,0,0),(39,45,0,0),(40,46,0,0),(41,47,0,0),(42,48,0,0),(43,49,0,0),(44,50,0,0),(45,51,0,0),(46,52,0,0),(47,53,0,0),(48,54,0,0),(49,55,0,0),(50,56,0,0),(51,57,0,0),(52,58,0,0),(53,59,0,0),(54,60,0,0),(55,61,0,0),(56,62,0,0),(57,63,0,0),(58,64,0,0),(59,65,0,0),(60,66,0,0),(61,67,0,0),(62,68,0,0),(63,69,0,0),(64,70,0,0),(65,71,0,0),(66,72,0,0),(67,73,0,0),(68,74,0,0),(69,75,0,0),(70,76,0,0),(71,77,0,0),(72,78,0,0),(73,79,0,0),(74,80,0,0),(75,81,0,0),(76,82,0,0),(77,83,0,0),(78,84,0,0),(79,85,0,0),(80,86,0,0),(81,87,0,0),(82,88,0,0),(83,89,0,0),(84,90,0,0);
/*!40000 ALTER TABLE `Intents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Links`
--

DROP TABLE IF EXISTS `Links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `type` int(11) DEFAULT '0',
  `reserved` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,18,22,2,NULL),(2,18,38,2,NULL),(3,18,42,2,NULL),(4,18,8,2,NULL),(5,18,10,2,NULL),(6,18,11,2,NULL),(7,18,12,2,NULL),(8,19,1,2,NULL),(9,18,20,2,NULL),(10,18,39,2,NULL),(11,18,25,2,NULL),(12,18,37,2,NULL),(13,18,41,2,NULL),(14,79,7,2,NULL),(15,1,7,2,NULL),(16,2,2,2,NULL),(17,16,21,2,NULL),(18,36,21,2,NULL),(19,19,22,2,NULL),(20,19,38,2,NULL),(21,19,42,2,NULL),(22,19,25,2,NULL),(23,52,31,2,NULL),(24,81,31,2,NULL),(25,61,36,2,NULL),(26,74,36,2,NULL),(27,19,37,2,NULL),(28,19,41,2,NULL),(29,19,8,2,NULL),(30,19,10,2,NULL),(31,19,11,2,NULL),(32,19,20,2,NULL),(33,19,39,2,NULL),(34,24,18,2,NULL);
/*!40000 ALTER TABLE `Links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAuthorities`
--

DROP TABLE IF EXISTS `PAuthorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAuthorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `authority` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `PAuthorities_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `Providers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAuthorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paths`
--

DROP TABLE IF EXISTS `Paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Paths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `sink` int(11) NOT NULL,
  `paths` text,
  `type` varchar(512) NOT NULL,
  `icc` int(11) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paths`
--

LOCK TABLES `Paths` WRITE;
/*!40000 ALTER TABLE `Paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `Paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionStrings`
--

DROP TABLE IF EXISTS `PermissionStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(14,'android.permission.GET_TASKS'),(4,'android.permission.INTERNET'),(11,'android.permission.READ_CONTACTS'),(10,'android.permission.READ_OWNER_DATA'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(7,'android.permission.RESTART_PACKAGES'),(3,'android.permission.SEND_SMS'),(12,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE');
/*!40000 ALTER TABLE `PermissionStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permissions`
--

DROP TABLE IF EXISTS `Permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permissions` (
  `id` int(11) NOT NULL,
  `level` char(1) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`,`level`),
  CONSTRAINT `Permissions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permissions`
--

LOCK TABLES `Permissions` WRITE;
/*!40000 ALTER TABLE `Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProviderLinks`
--

DROP TABLE IF EXISTS `ProviderLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderLinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src_component_id` int(11) NOT NULL,
  `dest_component_id` int(11) NOT NULL,
  `reserved` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProviderLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Providers`
--

DROP TABLE IF EXISTS `Providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `grant_uri_permissions` tinyint(1) NOT NULL,
  `read_permission` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `write_permission` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `Providers_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stmts`
--

DROP TABLE IF EXISTS `Stmts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stmts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stmt` varchar(512) NOT NULL,
  `method` varchar(512) NOT NULL,
  `class_id` int(11) NOT NULL,
  `jimpleIndex` int(11) NOT NULL,
  `isIcc` tinyint(1) NOT NULL,
  `type` varchar(512) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stmts`
--

LOCK TABLES `Stmts` WRITE;
/*!40000 ALTER TABLE `Stmts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stmts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UriData`
--

DROP TABLE IF EXISTS `UriData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UriData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `ssp` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` longtext COLLATE utf8mb4_bin,
  `path` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `query` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `authority` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(2,NULL,NULL,'content://sms',NULL,NULL,NULL),(3,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(4,NULL,NULL,'content://sms/sent',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(7,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL);
/*!40000 ALTER TABLE `UriData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Uris`
--

DROP TABLE IF EXISTS `Uris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Uris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `data` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `data` (`data`),
  CONSTRAINT `Uris_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Uris_ibfk_2` FOREIGN KEY (`data`) REFERENCES `UriData` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,18,1),(2,19,2),(3,23,3),(4,25,4),(5,25,5),(6,28,6),(7,35,7);
/*!40000 ALTER TABLE `Uris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsesPermissions`
--

DROP TABLE IF EXISTS `UsesPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsesPermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `uses_permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_id` (`app_id`),
  KEY `uses_permission_idx` (`uses_permission`) USING HASH,
  CONSTRAINT `UsesPermissions_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `Applications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `UsesPermissions_ibfk_2` FOREIGN KEY (`uses_permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,2,3),(4,2,4),(5,2,5),(6,2,6),(7,2,7),(8,3,1),(9,3,2),(10,3,4),(11,3,8),(12,3,9),(13,3,10),(14,3,11),(15,3,12),(16,3,13),(17,1,4),(18,1,10),(19,1,12),(20,1,9),(21,1,13),(22,1,14),(23,4,1),(24,4,2),(25,4,4),(26,4,9),(27,4,10),(28,4,12),(29,4,13),(30,4,14);
/*!40000 ALTER TABLE `UsesPermissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-12  3:31:34
