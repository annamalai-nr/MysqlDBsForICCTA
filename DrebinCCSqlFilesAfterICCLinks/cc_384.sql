-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_384
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CHOOSER'),(7,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PACKAGE_ADDED'),(9,'android.intent.action.SENDTO'),(5,'android.intent.action.VIEW'),(2,'android.service.wallpaper.WallpaperService'),(3,'push_alm');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.zq.Fate',2),(2,'com.shirley.livewallpaper.jingdian',1),(3,'com.senlan.fruitllk',1),(4,'com.shirley.livewallpaper.xiangcun1',7),(5,'com.shirley.packages',4),(6,'com.finker.girllivewallpaper',25),(7,'com.work.zhicheng',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.zq.Fate.Main'),(2,1,'com.zq.Fate.ChariotActivity'),(3,1,'com.zq.Fate.EmperorActivity'),(4,1,'com.zq.Fate.EmpressActivity'),(5,1,'com.zq.Fate.HermitActivity'),(6,1,'com.zq.Fate.LoversActivity'),(7,1,'com.zq.Fate.MagicianActivity'),(8,1,'com.zq.Fate.PopeActivity'),(9,1,'com.zq.Fate.PowerActivity'),(10,1,'com.zq.Fate.PriestessActivity'),(11,1,'com.zq.Fate.HelpActivity'),(12,1,'com.zq.Fate.AboutActivity'),(13,1,'com.zq.Fate.ExcellentActivity'),(14,2,'com.shirley.livewallpaper.jingdian.LiveWallpaperSetting'),(15,1,'com.waps.OffersWebView'),(16,2,'com.waps.OffersWebView'),(17,2,'com.shirley.livewallpaper.jingdian.CubeWallpaper1'),(18,3,'com.senlan.fruitllk.WelActivity'),(19,4,'com.shirley.livewallpaper.xiangcun1.LiveWallpaperSetting'),(20,2,'com.jeef.wapsConnection.AlmService'),(21,4,'com.waps.OffersWebView'),(22,3,'com.waps.OffersWebView'),(23,4,'com.shirley.livewallpaper.xiangcun1.CubeWallpaper1'),(24,5,'com.shirley.packages.MainActivity'),(25,2,'com.jeef.wapsConnection.BootService'),(26,3,'com.senlan.fruitllk.OnTimeup'),(27,3,'com.senlan.fruitllk.OnBoot'),(28,4,'com.jeef.wapsConnection.AlmService'),(29,5,'com.waps.OffersWebView'),(30,4,'com.jeef.wapsConnection.BootService'),(31,5,'com.shirley.packages.MyService'),(32,5,'com.shirley.packages.OnTimeup'),(33,5,'com.shirley.packages.OnBoot'),(34,6,'com.finker.girllivewallpaper.SettingActivity'),(35,6,'com.waps.OffersWebView'),(36,6,'com.finker.girllivewallpaper.WiEngineLiveWallpaperService'),(37,6,'com.finker.girllivewallpaper.OnTimeup'),(38,6,'com.finker.girllivewallpaper.OnBoot'),(39,7,'com.work.zhicheng.GActivity'),(40,7,'com.work.zhicheng.ActivityMain'),(41,7,'com.waps.OffersWebView'),(42,2,'com.waps.z'),(43,1,'com.waps.z'),(44,2,'com.waps.q'),(45,5,'com.waps.q'),(46,1,'com.waps.aa'),(47,5,'com.waps.z'),(48,3,'com.waps.ac'),(49,6,'com.waps.ac'),(50,4,'com.waps.o'),(51,3,'com.waps.aa'),(52,6,'com.waps.aa'),(53,4,'com.waps.z'),(54,5,'com.waps.aa'),(55,2,'com.waps.aa'),(56,4,'com.waps.aa'),(57,3,'com.waps.q'),(58,6,'com.waps.o'),(59,3,'com.waps.z'),(60,5,'com.waps.ac'),(61,6,'com.waps.q'),(62,3,'com.waps.AppConnect'),(63,4,'com.waps.q'),(64,5,'com.waps.o'),(65,4,'com.waps.ac'),(66,2,'com.waps.ac'),(67,3,'com.waps.o'),(68,6,'com.waps.AppConnect'),(69,2,'com.waps.o'),(70,6,'com.waps.z'),(71,1,'com.waps.s'),(72,1,'com.waps.q'),(73,1,'com.waps.o'),(74,7,'com.waps.s'),(75,7,'com.waps.aa'),(76,7,'com.waps.ac'),(77,7,'com.waps.AppConnect'),(78,7,'com.waps.q'),(79,7,'com.waps.z'),(80,7,'com.waps.o'),(81,7,'com.work.zhicheng.GActivity$1'),(82,1,'com.waps.ac'),(83,1,'com.waps.AppConnect');
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
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,29,'SHWO_FLAG'),(2,29,'URL_PARAMS'),(3,24,'APP_ID'),(4,29,'APP_ID'),(5,32,'APP_ID'),(6,24,'WAPS_PID'),(7,29,'WAPS_PID'),(8,32,'WAPS_PID'),(9,22,'URL_PARAMS'),(10,22,'APP_ID'),(11,25,'APP_ID'),(12,18,'APP_ID'),(13,18,'UMENG_APPKEY'),(14,29,'ACTIVITY_FLAG'),(15,29,'Notify_Url_Params'),(16,24,'CLIENT_PACKAGE'),(17,29,'CLIENT_PACKAGE'),(18,32,'CLIENT_PACKAGE'),(19,24,'WAPS_ID'),(20,21,'ACTIVITY_FLAG'),(21,29,'WAPS_ID'),(22,28,'WAPS_ID'),(23,32,'WAPS_ID'),(24,22,'CLIENT_PACKAGE'),(25,30,'WAPS_ID'),(26,16,'offers_webview_tag'),(27,22,'WAPS_ID'),(28,21,'WAPS_ID'),(29,16,'isFinshClose'),(30,19,'WAPS_ID'),(31,25,'WAPS_ID'),(32,18,'WAPS_ID'),(33,21,'USER_ID'),(34,22,'URL'),(35,28,'WAPS_TESTMODE'),(36,30,'WAPS_TESTMODE'),(37,22,'DEVICE_ID'),(38,29,'UrlPath'),(39,19,'WAPS_TESTMODE'),(40,25,'DEVICE_ID'),(41,29,'isFinshClose'),(42,21,'UrlPath'),(43,18,'DEVICE_ID'),(44,19,'UMENG_CHANNEL'),(45,22,'Offers_URL'),(46,16,'URL'),(47,21,'Notify_Id'),(48,15,'Offers_URL'),(49,25,'CLIENT_PACKAGE'),(50,20,'WAPS_ID'),(51,18,'CLIENT_PACKAGE'),(52,21,'URL_PARAMS'),(53,26,'WAPS_ID'),(54,28,'CLIENT_PACKAGE'),(55,22,'WAPS_PID'),(56,16,'WAPS_ID'),(57,25,'WAPS_PID'),(58,30,'CLIENT_PACKAGE'),(59,14,'WAPS_ID'),(60,19,'CLIENT_PACKAGE'),(61,18,'WAPS_PID'),(62,20,'CLIENT_PACKAGE'),(63,21,'offers_webview_tag'),(64,18,'UMENG_CHANNEL'),(65,26,'CLIENT_PACKAGE'),(66,21,'Offers_URL'),(67,16,'CLIENT_PACKAGE'),(68,28,'APP_ID'),(69,14,'CLIENT_PACKAGE'),(70,34,'DEVICE_ID'),(71,30,'APP_ID'),(72,35,'DEVICE_ID'),(73,16,'Offers_URL'),(74,21,'APP_ID'),(75,37,'DEVICE_ID'),(76,16,'ACTIVITY_FLAG'),(77,19,'APP_ID'),(78,35,'SHWO_FLAG'),(79,20,'WAPS_TESTMODE'),(80,28,'DEVICE_ID'),(81,29,'offers_webview_tag'),(82,26,'WAPS_TESTMODE'),(83,30,'DEVICE_ID'),(84,14,'WAPS_TESTMODE'),(85,24,'DEVICE_ID'),(86,21,'DEVICE_ID'),(87,29,'DEVICE_ID'),(88,19,'DEVICE_ID'),(89,32,'DEVICE_ID'),(90,22,'UrlPath'),(91,35,'Offers_URL'),(92,35,'ACTIVITY_FLAG'),(93,35,'isFinshClose'),(94,35,'UrlPath'),(95,35,'URL'),(96,29,'Offers_URL'),(97,31,'package'),(98,10,'WAPS_ID'),(99,4,'WAPS_ID'),(100,15,'WAPS_ID'),(101,7,'WAPS_ID'),(102,12,'WAPS_ID'),(103,2,'WAPS_ID'),(104,11,'WAPS_ID'),(105,5,'WAPS_ID'),(106,21,'URL'),(107,8,'WAPS_ID'),(108,21,'SHWO_FLAG'),(109,9,'WAPS_ID'),(110,13,'WAPS_ID'),(111,1,'WAPS_ID'),(112,6,'WAPS_ID'),(113,3,'WAPS_ID'),(114,10,'DEVICE_ID'),(115,4,'DEVICE_ID'),(116,15,'DEVICE_ID'),(117,7,'DEVICE_ID'),(118,12,'DEVICE_ID'),(119,16,'SHWO_FLAG'),(120,29,'USER_ID'),(121,2,'DEVICE_ID'),(122,20,'APP_ID'),(123,11,'DEVICE_ID'),(124,29,'URL'),(125,26,'APP_ID'),(126,5,'DEVICE_ID'),(127,16,'APP_ID'),(128,8,'DEVICE_ID'),(129,9,'DEVICE_ID'),(130,14,'APP_ID'),(131,13,'DEVICE_ID'),(132,20,'WAPS_PID'),(133,22,'USER_ID'),(134,1,'DEVICE_ID'),(135,26,'WAPS_PID'),(136,6,'DEVICE_ID'),(137,16,'WAPS_PID'),(138,3,'DEVICE_ID'),(139,14,'WAPS_PID'),(140,29,'Notify_Id'),(141,21,'CLIENT_PACKAGE'),(142,16,'UrlPath'),(143,34,'UMENG_CHANNEL'),(144,20,'DEVICE_ID'),(145,26,'DEVICE_ID'),(146,34,'APP_ID'),(147,16,'DEVICE_ID'),(148,35,'APP_ID'),(149,14,'DEVICE_ID'),(150,37,'APP_ID'),(151,14,'UMENG_CHANNEL'),(152,34,'WAPS_ID'),(153,21,'isFinshClose'),(154,35,'WAPS_ID'),(155,28,'WAPS_PID'),(156,37,'WAPS_ID'),(157,30,'WAPS_PID'),(158,35,'USER_ID'),(159,21,'WAPS_PID'),(160,22,'SHWO_FLAG'),(161,19,'WAPS_PID'),(162,22,'Notify_Id'),(163,14,'UMENG_APPKEY'),(164,22,'Notify_Url_Params'),(165,22,'isFinshClose'),(166,35,'CLIENT_PACKAGE'),(167,21,'Notify_Url_Params'),(168,16,'Notify_Url_Params'),(169,16,'Notify_Id'),(170,16,'URL_PARAMS'),(171,22,'offers_webview_tag'),(172,22,'ACTIVITY_FLAG'),(173,34,'UMENG_APPKEY'),(174,35,'Notify_Url_Params'),(175,16,'USER_ID'),(176,10,'CLIENT_PACKAGE'),(177,4,'CLIENT_PACKAGE'),(178,15,'CLIENT_PACKAGE'),(179,19,'UMENG_APPKEY'),(180,7,'CLIENT_PACKAGE'),(181,12,'CLIENT_PACKAGE'),(182,2,'CLIENT_PACKAGE'),(183,11,'CLIENT_PACKAGE'),(184,5,'CLIENT_PACKAGE'),(185,8,'CLIENT_PACKAGE'),(186,9,'CLIENT_PACKAGE'),(187,13,'CLIENT_PACKAGE'),(188,1,'CLIENT_PACKAGE'),(189,6,'CLIENT_PACKAGE'),(190,3,'CLIENT_PACKAGE'),(191,35,'offers_webview_tag'),(192,34,'CLIENT_PACKAGE'),(193,37,'CLIENT_PACKAGE'),(194,35,'URL_PARAMS'),(195,35,'Notify_Id'),(196,34,'WAPS_PID'),(197,35,'WAPS_PID'),(198,37,'WAPS_PID'),(199,10,'WAPS_PID'),(200,4,'WAPS_PID'),(201,15,'WAPS_PID'),(202,7,'WAPS_PID'),(203,12,'WAPS_PID'),(204,2,'WAPS_PID'),(205,11,'WAPS_PID'),(206,5,'WAPS_PID'),(207,8,'WAPS_PID'),(208,9,'WAPS_PID'),(209,13,'WAPS_PID'),(210,1,'WAPS_PID'),(211,6,'WAPS_PID'),(212,3,'WAPS_PID'),(213,15,'Notify_Url_Params'),(214,15,'SHWO_FLAG'),(215,15,'offers_webview_tag'),(216,15,'ACTIVITY_FLAG'),(217,15,'Notify_Id'),(218,15,'isFinshClose'),(219,40,'CLIENT_PACKAGE'),(220,39,'CLIENT_PACKAGE'),(221,10,'APP_ID'),(222,4,'APP_ID'),(223,15,'APP_ID'),(224,7,'APP_ID'),(225,12,'APP_ID'),(226,2,'APP_ID'),(227,11,'APP_ID'),(228,5,'APP_ID'),(229,8,'APP_ID'),(230,9,'APP_ID'),(231,13,'APP_ID'),(232,41,'DEVICE_ID'),(233,1,'APP_ID'),(234,40,'DEVICE_ID'),(235,6,'APP_ID'),(236,39,'DEVICE_ID'),(237,3,'APP_ID'),(238,41,'WAPS_PID'),(239,40,'WAPS_PID'),(240,39,'WAPS_PID'),(241,41,'CLIENT_PACKAGE'),(242,41,'WAPS_ID'),(243,40,'WAPS_ID'),(244,39,'WAPS_ID'),(245,41,'ACTIVITY_FLAG'),(246,15,'UrlPath'),(247,15,'USER_ID'),(248,41,'URL_PARAMS'),(249,41,'APP_ID'),(250,40,'APP_ID'),(251,39,'APP_ID'),(252,41,'UrlPath'),(253,41,'Offers_URL'),(254,41,'isFinshClose'),(255,41,'Notify_Id'),(256,41,'offers_webview_tag'),(257,41,'USER_ID'),(258,41,'URL'),(259,41,'Notify_Url_Params'),(260,41,'SHWO_FLAG'),(261,15,'URL'),(262,15,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',1,8,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',1,8,NULL),(24,24,'a',1,NULL,NULL),(25,26,'r',0,NULL,NULL),(26,25,'r',1,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'s',1,NULL,NULL),(32,32,'r',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',1,8,NULL),(37,37,'r',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,44,'r',1,NULL,NULL),(43,45,'r',1,NULL,NULL),(44,57,'r',1,NULL,NULL),(45,61,'r',1,NULL,NULL),(46,63,'r',1,NULL,NULL),(47,72,'r',1,NULL,NULL),(48,78,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,29),(2,2,22),(3,3,16),(4,4,29),(5,5,15),(6,6,15),(7,7,29),(8,8,22),(9,9,22),(10,10,35),(11,11,16),(12,12,31),(13,13,21),(14,14,22),(15,15,15),(16,16,35),(17,17,21),(18,18,16),(19,19,29),(20,20,21),(21,21,35),(22,22,22),(23,23,29),(24,24,18),(25,26,8),(26,25,24),(27,27,16),(28,28,29),(29,29,35),(30,30,21),(31,31,16),(32,32,22),(33,33,34),(34,34,21),(35,35,16),(36,36,35),(37,37,21),(38,38,35),(39,39,5),(40,39,4),(41,39,3),(42,39,2),(43,39,1),(44,39,7),(45,39,6),(46,39,9),(47,39,8),(48,39,11),(49,39,10),(50,39,13),(51,39,12),(52,40,1),(53,41,3),(54,42,4),(55,43,1),(56,44,4),(57,45,10),(58,46,15),(59,47,9),(60,48,5),(61,49,1),(62,50,1),(63,51,39),(64,51,40),(65,52,2),(66,53,1),(67,54,8),(68,55,41),(69,56,7),(70,57,7),(71,58,39),(72,59,41),(73,60,39),(74,60,40),(75,61,41),(76,62,3),(77,62,4),(78,62,1),(79,62,2),(80,62,7),(81,62,8),(82,62,5),(83,62,6),(84,62,11),(85,62,12),(86,62,9),(87,62,10),(88,62,13),(89,63,39),(90,64,2),(91,65,41),(92,66,41),(93,67,39),(94,67,40),(95,68,1),(96,69,9),(97,70,41),(98,71,1),(99,72,5),(100,73,39),(101,74,6),(102,75,1),(103,76,6),(104,77,3),(105,78,1),(106,79,15),(107,80,1),(108,81,1),(109,82,1),(110,83,1),(111,84,15),(112,85,13),(113,85,12),(114,85,9),(115,85,8),(116,85,11),(117,85,10),(118,85,5),(119,85,4),(120,85,7),(121,85,6),(122,85,1),(123,85,2),(124,85,3),(125,86,1),(126,87,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,29,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(2,22,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(3,42,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(4,29,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',323,'a',NULL),(5,43,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(6,46,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(7,47,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(8,22,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(9,48,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(10,49,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(11,16,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',300,'a',NULL),(12,31,'<com.shirley.packages.MyService: void onStart(android.content.Intent,int)>',15,'a',NULL),(13,50,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(14,51,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(15,15,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',318,'a',NULL),(16,52,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(17,53,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(18,55,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(19,54,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(20,56,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(21,58,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(22,59,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(23,60,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(24,62,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(25,24,'<com.shirley.packages.MainActivity: void onClick(android.view.View)>',65,'s',NULL),(26,8,'<com.zq.Fate.PopeActivity: void share()>',28,'a',NULL),(27,16,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',333,'a',NULL),(28,64,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(29,35,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(30,65,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(31,66,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(32,67,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(33,68,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(34,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',300,'a',NULL),(35,69,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(36,35,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(37,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',333,'a',NULL),(38,70,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(39,71,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(40,1,'<com.zq.Fate.Main: void indicate(int)>',17,'a',NULL),(41,3,'<com.zq.Fate.EmperorActivity: void feedbackSend()>',12,'a',NULL),(42,4,'<com.zq.Fate.EmpressActivity: void share()>',28,'a',NULL),(43,1,'<com.zq.Fate.Main: void gozhuoyue()>',4,'a',NULL),(44,4,'<com.zq.Fate.EmpressActivity: void feedbackSend()>',12,'a',NULL),(45,10,'<com.zq.Fate.PriestessActivity: void share()>',28,'a',NULL),(46,73,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(47,9,'<com.zq.Fate.PowerActivity: void share()>',28,'a',NULL),(48,5,'<com.zq.Fate.HermitActivity: void feedbackSend()>',12,'a',NULL),(49,1,'<com.zq.Fate.Main: void feedbackSend()>',12,'a',NULL),(50,1,'<com.zq.Fate.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(51,74,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(52,2,'<com.zq.Fate.ChariotActivity: void feedbackSend()>',12,'a',NULL),(53,1,'<com.zq.Fate.Main: void indicate(int)>',22,'a',NULL),(54,8,'<com.zq.Fate.PopeActivity: void feedbackSend()>',12,'a',NULL),(55,75,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(56,7,'<com.zq.Fate.MagicianActivity: void feedbackSend()>',12,'a',NULL),(57,7,'<com.zq.Fate.MagicianActivity: void share()>',28,'a',NULL),(58,39,'<com.work.zhicheng.GActivity: void onCreate(android.os.Bundle)>',61,'a',NULL),(59,41,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(60,74,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(61,76,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(62,71,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(63,77,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(64,2,'<com.zq.Fate.ChariotActivity: void share()>',28,'a',NULL),(65,79,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(66,80,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(67,74,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(68,1,'<com.zq.Fate.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(69,9,'<com.zq.Fate.PowerActivity: void feedbackSend()>',12,'a',NULL),(70,41,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(71,1,'<com.zq.Fate.Main: void indicate(int)>',32,'a',NULL),(72,5,'<com.zq.Fate.HermitActivity: void share()>',28,'a',NULL),(73,81,'<com.work.zhicheng.GActivity$1: void onClick(android.view.View)>',17,'a',NULL),(74,6,'<com.zq.Fate.LoversActivity: void feedbackSend()>',12,'a',NULL),(75,1,'<com.zq.Fate.Main: void indicate(int)>',12,'a',NULL),(76,6,'<com.zq.Fate.LoversActivity: void share()>',28,'a',NULL),(77,3,'<com.zq.Fate.EmperorActivity: void share()>',28,'a',NULL),(78,1,'<com.zq.Fate.Main: void indicate(int)>',37,'a',NULL),(79,82,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(80,1,'<com.zq.Fate.Main: void indicate(int)>',7,'a',NULL),(81,1,'<com.zq.Fate.Main: void indicate(int)>',47,'a',NULL),(82,1,'<com.zq.Fate.Main: void indicate(int)>',42,'a',NULL),(83,1,'<com.zq.Fate.Main: void indicate(int)>',27,'a',NULL),(84,15,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(85,71,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(86,83,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(87,10,'<com.zq.Fate.PriestessActivity: void feedbackSend()>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,5,1),(4,6,5),(5,7,1),(6,9,5),(7,11,5),(8,17,1),(9,18,5),(10,19,7),(11,20,1),(12,24,5),(13,32,5),(14,33,5),(15,38,8),(16,39,8),(17,41,5),(18,42,8),(19,44,8),(20,47,8),(21,48,5),(22,51,8),(23,52,1),(24,53,8),(25,54,5),(26,55,1),(27,56,8),(28,59,1),(29,60,1),(30,61,5),(31,64,9),(32,65,8),(33,66,8),(34,67,8),(35,68,8),(36,69,8),(37,70,8),(38,71,8),(39,72,8),(40,74,9),(41,75,8),(42,76,8),(43,77,8),(44,78,8),(45,79,8),(46,80,8),(47,81,8),(48,82,8),(49,83,5),(50,84,8),(51,85,8),(52,86,8),(53,87,8),(54,88,8),(55,89,8),(56,90,8),(57,91,8),(58,92,9),(59,93,9),(60,96,9),(61,97,1),(62,98,1),(63,99,1),(64,100,1),(65,102,9),(66,104,9),(67,106,8),(68,107,8),(69,108,8),(70,110,8),(71,112,8),(72,113,8),(73,114,5),(74,115,8),(75,116,5),(76,117,8),(77,119,5),(78,120,5),(79,122,8),(80,123,8),(81,124,8),(82,125,8),(83,126,5),(84,127,8),(85,128,8),(86,129,5),(87,130,8),(88,131,8),(89,134,9),(90,136,1),(91,138,1),(92,139,8),(93,140,8),(94,142,8),(95,143,8),(96,144,8),(97,145,8),(98,146,8),(99,147,8),(100,148,9),(101,150,8),(102,151,8),(103,152,8),(104,153,8),(105,154,8),(106,155,8),(107,156,8),(108,157,8),(109,158,8),(110,159,8),(111,160,8),(112,161,8),(113,162,8),(114,163,8),(115,164,8),(116,165,8),(117,173,1),(118,174,1),(119,176,1),(120,177,1),(121,178,1),(122,179,1),(123,181,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,2),(3,5,1),(4,7,2),(5,17,1),(6,20,2),(7,52,1),(8,55,2),(9,59,1),(10,60,2),(11,97,1),(12,98,2),(13,99,1),(14,100,2),(15,136,1),(16,138,2),(17,173,1),(18,174,2),(19,176,1),(20,177,2),(21,178,1),(22,179,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,8,'(.*)'),(2,12,'(.*)'),(3,10,'com/waps/OffersWebView'),(4,14,'NULL-CONSTANT'),(5,15,'NULL-CONSTANT'),(6,13,'com/waps/OffersWebView'),(7,21,'(.*)'),(8,22,'com/waps/OffersWebView'),(9,23,'com/waps/OffersWebView'),(10,25,'com/waps/OffersWebView'),(11,26,'com/waps/OffersWebView'),(12,27,'com/waps/OffersWebView'),(13,28,'com/waps/OffersWebView'),(14,30,'com/waps/OffersWebView'),(15,29,'com/waps/OffersWebView'),(16,31,'com/waps/OffersWebView'),(17,35,'NULL-CONSTANT'),(18,34,'com/waps/OffersWebView'),(19,37,'com/shirley/packages/MyService'),(20,36,'com/waps/OffersWebView'),(21,40,'(.*)'),(22,43,'(.*)'),(23,45,'NULL-CONSTANT'),(24,46,'NULL-CONSTANT'),(25,49,'com/waps/OffersWebView'),(26,58,'(.*)'),(27,62,'com/waps/OffersWebView'),(28,63,'com/zq/Fate/EmpressActivity'),(29,73,'com/zq/Fate/ExcellentActivity'),(30,94,'com/zq/Fate/HelpActivity'),(31,101,'com/zq/Fate/EmperorActivity'),(32,103,'com/waps/OffersWebView'),(33,105,'com/waps/OffersWebView'),(34,109,'com/work/zhicheng/ActivityMain'),(35,111,'(.*)'),(36,118,'NULL-CONSTANT'),(37,121,'com/waps/OffersWebView'),(38,133,'com/zq/Fate/AboutActivity'),(39,132,'com/waps/OffersWebView'),(40,137,'com/zq/Fate/LoversActivity'),(41,141,'com/work/zhicheng/ActivityMain'),(42,149,'com/zq/Fate/PriestessActivity'),(43,166,'com/zq/Fate/ChariotActivity'),(44,167,'NULL-CONSTANT'),(45,168,'com/zq/Fate/MagicianActivity'),(46,169,'com/zq/Fate/HermitActivity'),(47,170,'com/zq/Fate/PowerActivity'),(48,171,'com/zq/Fate/PopeActivity'),(49,180,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,6,1),(2,9,2),(3,11,3),(4,19,4),(5,18,5),(6,24,6),(7,32,7),(8,33,8),(9,41,9),(10,48,10),(11,54,11),(12,61,12),(13,64,13),(14,74,14),(15,83,15),(16,92,16),(17,93,17),(18,96,18),(19,102,19),(20,104,20),(21,114,21),(22,116,22),(23,119,23),(24,120,24),(25,126,25),(26,129,26),(27,134,27),(28,148,28),(29,181,29);
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,10,'Notify_Url_Params'),(2,10,'UrlPath'),(3,10,'ACTIVITY_FLAG'),(4,10,'isFinshClose'),(5,10,'offers_webview_tag'),(6,13,'UrlPath'),(7,13,'ACTIVITY_FLAG'),(8,13,'isFinshClose'),(9,13,'offers_webview_tag'),(10,22,'UrlPath'),(11,22,'ACTIVITY_FLAG'),(12,22,'isFinshClose'),(13,22,'offers_webview_tag'),(14,23,'UrlPath'),(15,23,'ACTIVITY_FLAG'),(16,26,'Notify_Url_Params'),(17,23,'isFinshClose'),(18,25,'UrlPath'),(19,27,'Notify_Url_Params'),(20,26,'UrlPath'),(21,25,'ACTIVITY_FLAG'),(22,23,'offers_webview_tag'),(23,27,'UrlPath'),(24,25,'isFinshClose'),(25,26,'ACTIVITY_FLAG'),(26,27,'ACTIVITY_FLAG'),(27,25,'offers_webview_tag'),(28,26,'isFinshClose'),(29,27,'isFinshClose'),(30,26,'offers_webview_tag'),(31,27,'offers_webview_tag'),(32,28,'Notify_Url_Params'),(33,28,'UrlPath'),(34,28,'ACTIVITY_FLAG'),(35,29,'Notify_Url_Params'),(36,28,'isFinshClose'),(37,29,'UrlPath'),(38,30,'UrlPath'),(39,31,'Notify_Url_Params'),(40,28,'offers_webview_tag'),(41,30,'ACTIVITY_FLAG'),(42,29,'ACTIVITY_FLAG'),(43,31,'UrlPath'),(44,29,'isFinshClose'),(45,30,'isFinshClose'),(46,31,'ACTIVITY_FLAG'),(47,30,'offers_webview_tag'),(48,29,'offers_webview_tag'),(49,31,'isFinshClose'),(50,31,'offers_webview_tag'),(51,34,'UrlPath'),(52,34,'ACTIVITY_FLAG'),(53,34,'isFinshClose'),(54,34,'offers_webview_tag'),(55,36,'USER_ID'),(56,37,'package'),(57,36,'CLIENT_PACKAGE'),(58,36,'Offers_URL'),(59,38,'android.intent.extra.INTENT'),(60,36,'offers_webview_tag'),(61,36,'URL_PARAMS'),(62,39,'android.intent.extra.INTENT'),(63,42,'android.intent.extra.TITLE'),(64,42,'android.intent.extra.INTENT'),(65,44,'android.intent.extra.INTENT'),(66,47,'android.intent.extra.TITLE'),(67,47,'android.intent.extra.INTENT'),(68,49,'USER_ID'),(69,49,'CLIENT_PACKAGE'),(70,49,'Offers_URL'),(71,51,'android.intent.extra.INTENT'),(72,49,'offers_webview_tag'),(73,49,'URL_PARAMS'),(74,53,'android.intent.extra.TITLE'),(75,53,'android.intent.extra.INTENT'),(76,56,'android.intent.extra.TITLE'),(77,56,'android.intent.extra.INTENT'),(78,62,'CLIENT_PACKAGE'),(79,62,'URL'),(80,62,'isFinshClose'),(81,62,'offers_webview_tag'),(82,64,'body'),(83,64,'subject'),(84,65,'android.intent.extra.INTENT'),(85,66,'android.intent.extra.INTENT'),(86,67,'android.intent.extra.TITLE'),(87,67,'android.intent.extra.INTENT'),(88,68,'android.intent.extra.INTENT'),(89,69,'android.intent.extra.TITLE'),(90,69,'android.intent.extra.INTENT'),(91,70,'android.intent.extra.INTENT'),(92,71,'android.intent.extra.TITLE'),(93,71,'android.intent.extra.INTENT'),(94,72,'android.intent.extra.TITLE'),(95,72,'android.intent.extra.INTENT'),(96,74,'body'),(97,74,'subject'),(98,75,'android.intent.extra.INTENT'),(99,76,'android.intent.extra.INTENT'),(100,77,'android.intent.extra.TITLE'),(101,77,'android.intent.extra.INTENT'),(102,78,'android.intent.extra.INTENT'),(103,79,'android.intent.extra.TITLE'),(104,79,'android.intent.extra.INTENT'),(105,80,'android.intent.extra.INTENT'),(106,81,'android.intent.extra.TITLE'),(107,81,'android.intent.extra.INTENT'),(108,82,'android.intent.extra.TITLE'),(109,82,'android.intent.extra.INTENT'),(110,84,'android.intent.extra.INTENT'),(111,85,'android.intent.extra.INTENT'),(112,86,'android.intent.extra.TITLE'),(113,86,'android.intent.extra.INTENT'),(114,87,'android.intent.extra.INTENT'),(115,88,'android.intent.extra.TITLE'),(116,88,'android.intent.extra.INTENT'),(117,89,'android.intent.extra.INTENT'),(118,90,'android.intent.extra.TITLE'),(119,90,'android.intent.extra.INTENT'),(120,91,'android.intent.extra.TITLE'),(121,91,'android.intent.extra.INTENT'),(122,92,'body'),(123,92,'subject'),(124,93,'body'),(125,93,'subject'),(126,96,'body'),(127,96,'subject'),(128,102,'body'),(129,102,'subject'),(130,103,'Notify_Url_Params'),(131,103,'UrlPath'),(132,103,'ACTIVITY_FLAG'),(133,103,'isFinshClose'),(134,103,'offers_webview_tag'),(135,104,'body'),(136,104,'subject'),(137,105,'UrlPath'),(138,105,'ACTIVITY_FLAG'),(139,105,'isFinshClose'),(140,105,'offers_webview_tag'),(141,106,'android.intent.extra.INTENT'),(142,107,'android.intent.extra.INTENT'),(143,108,'android.intent.extra.TITLE'),(144,108,'android.intent.extra.INTENT'),(145,110,'android.intent.extra.INTENT'),(146,112,'android.intent.extra.TITLE'),(147,112,'android.intent.extra.INTENT'),(148,113,'android.intent.extra.INTENT'),(149,115,'android.intent.extra.TITLE'),(150,115,'android.intent.extra.INTENT'),(151,117,'android.intent.extra.TITLE'),(152,117,'android.intent.extra.INTENT'),(153,121,'USER_ID'),(154,121,'CLIENT_PACKAGE'),(155,121,'Offers_URL'),(156,121,'offers_webview_tag'),(157,121,'URL_PARAMS'),(158,122,'android.intent.extra.INTENT'),(159,123,'android.intent.extra.INTENT'),(160,124,'android.intent.extra.TITLE'),(161,124,'android.intent.extra.INTENT'),(162,125,'android.intent.extra.INTENT'),(163,127,'android.intent.extra.TITLE'),(164,127,'android.intent.extra.INTENT'),(165,128,'android.intent.extra.INTENT'),(166,130,'android.intent.extra.TITLE'),(167,130,'android.intent.extra.INTENT'),(168,131,'android.intent.extra.TITLE'),(169,131,'android.intent.extra.INTENT'),(170,132,'CLIENT_PACKAGE'),(171,132,'URL'),(172,132,'isFinshClose'),(173,132,'offers_webview_tag'),(174,134,'body'),(175,134,'subject'),(176,139,'android.intent.extra.INTENT'),(177,140,'android.intent.extra.INTENT'),(178,142,'android.intent.extra.TITLE'),(179,142,'android.intent.extra.INTENT'),(180,143,'android.intent.extra.INTENT'),(181,144,'android.intent.extra.TITLE'),(182,144,'android.intent.extra.INTENT'),(183,145,'android.intent.extra.INTENT'),(184,146,'android.intent.extra.TITLE'),(185,146,'android.intent.extra.INTENT'),(186,147,'android.intent.extra.TITLE'),(187,147,'android.intent.extra.INTENT'),(188,148,'body'),(189,148,'subject'),(190,150,'android.intent.extra.INTENT'),(191,151,'android.intent.extra.INTENT'),(192,152,'android.intent.extra.TITLE'),(193,152,'android.intent.extra.INTENT'),(194,153,'android.intent.extra.INTENT'),(195,154,'android.intent.extra.TITLE'),(196,154,'android.intent.extra.INTENT'),(197,155,'android.intent.extra.INTENT'),(198,156,'android.intent.extra.TITLE'),(199,156,'android.intent.extra.INTENT'),(200,157,'android.intent.extra.TITLE'),(201,157,'android.intent.extra.INTENT'),(202,158,'android.intent.extra.INTENT'),(203,159,'android.intent.extra.INTENT'),(204,160,'android.intent.extra.TITLE'),(205,160,'android.intent.extra.INTENT'),(206,161,'android.intent.extra.INTENT'),(207,162,'android.intent.extra.TITLE'),(208,162,'android.intent.extra.INTENT'),(209,163,'android.intent.extra.INTENT'),(210,164,'android.intent.extra.TITLE'),(211,164,'android.intent.extra.INTENT'),(212,165,'android.intent.extra.TITLE'),(213,165,'android.intent.extra.INTENT'),(214,180,'USER_ID'),(215,180,'CLIENT_PACKAGE'),(216,180,'Offers_URL'),(217,180,'offers_webview_tag'),(218,180,'URL_PARAMS'),(219,181,'body'),(220,181,'subject');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,2),(6,6,1),(7,7,4),(8,8,4),(9,9,3),(10,10,4),(11,11,4),(12,12,2),(13,13,4),(14,14,1),(15,15,6),(16,16,6),(17,17,6),(18,18,6),(19,19,6),(20,20,6),(21,21,6);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,6,1),(4,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,15,'package',NULL,NULL,NULL,NULL,NULL),(2,16,'package',NULL,NULL,NULL,NULL,NULL),(3,17,'package',NULL,NULL,NULL,NULL,NULL),(4,18,'package',NULL,NULL,NULL,NULL,NULL),(5,19,'package',NULL,NULL,NULL,NULL,NULL),(6,20,'package',NULL,NULL,NULL,NULL,NULL),(7,21,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,6,'application','vnd.android.package-archive'),(2,9,'application','vnd.android.package-archive'),(3,11,'application','vnd.android.package-archive'),(4,18,'application','vnd.android.package-archive'),(5,24,'application','vnd.android.package-archive'),(6,32,'application','vnd.android.package-archive'),(7,33,'application','vnd.android.package-archive'),(8,41,'application','vnd.android.package-archive'),(9,48,'application','vnd.android.package-archive'),(10,54,'application','vnd.android.package-archive'),(11,61,'application','vnd.android.package-archive'),(12,83,'application','vnd.android.package-archive'),(13,126,'application','vnd.android.package-archive'),(14,129,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'(.*)'),(2,3,'(.*)'),(3,5,'(.*)'),(4,7,'(.*)'),(5,8,'(.*)'),(6,12,'(.*)'),(7,10,'com.zq.Fate'),(8,14,'NULL-CONSTANT'),(9,15,'NULL-CONSTANT'),(10,13,'com.zq.Fate'),(11,17,'(.*)'),(12,21,'(.*)'),(13,20,'(.*)'),(14,22,'com.senlan.fruitllk'),(15,23,'com.finker.girllivewallpaper'),(16,25,'com.shirley.livewallpaper.jingdian'),(17,26,'com.shirley.packages'),(18,27,'com.senlan.fruitllk'),(19,28,'com.finker.girllivewallpaper'),(20,30,'com.shirley.packages'),(21,29,'com.shirley.livewallpaper.jingdian'),(22,31,'com.shirley.livewallpaper.xiangcun1'),(23,35,'NULL-CONSTANT'),(24,34,'com.shirley.livewallpaper.xiangcun1'),(25,37,'com.shirley.packages'),(26,36,'com.senlan.fruitllk'),(27,40,'(.*)'),(28,43,'(.*)'),(29,45,'NULL-CONSTANT'),(30,46,'NULL-CONSTANT'),(31,52,'(.*)'),(32,49,'com.finker.girllivewallpaper'),(33,55,'(.*)'),(34,58,'(.*)'),(35,59,'(.*)'),(36,60,'(.*)'),(37,62,'com.zq.Fate'),(38,63,'com.zq.Fate'),(39,73,'com.zq.Fate'),(40,94,'com.zq.Fate'),(41,97,'(.*)'),(42,98,'(.*)'),(43,99,'NULL-CONSTANT'),(44,100,'NULL-CONSTANT'),(45,101,'com.zq.Fate'),(46,103,'com.work.zhicheng'),(47,105,'com.work.zhicheng'),(48,109,'com.work.zhicheng'),(49,111,'(.*)'),(50,118,'NULL-CONSTANT'),(51,121,'com.work.zhicheng'),(52,133,'com.zq.Fate'),(53,132,'com.work.zhicheng'),(54,136,'(.*)'),(55,137,'com.zq.Fate'),(56,138,'(.*)'),(57,141,'com.work.zhicheng'),(58,149,'com.zq.Fate'),(59,166,'com.zq.Fate'),(60,167,'NULL-CONSTANT'),(61,168,'com.zq.Fate'),(62,169,'com.zq.Fate'),(63,170,'com.zq.Fate'),(64,171,'com.zq.Fate'),(65,173,'(.*)'),(66,174,'(.*)'),(67,176,'(.*)'),(68,177,'(.*)'),(69,178,'NULL-CONSTANT'),(70,179,'NULL-CONSTANT'),(71,180,'com.zq.Fate');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,17,0),(3,18,0),(4,20,0),(5,23,0),(6,24,0),(7,26,0),(8,27,0),(9,28,0),(10,30,0),(11,33,0),(12,36,0),(13,38,0),(14,39,0),(15,42,0),(16,43,0),(17,44,0),(18,45,0),(19,46,0),(20,47,0),(21,48,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,2,1,0),(5,2,1,0),(6,3,1,0),(7,2,1,0),(8,4,0,0),(9,5,1,0),(10,6,0,0),(11,7,1,0),(12,8,0,0),(13,6,0,0),(14,9,0,0),(15,10,0,0),(16,11,1,0),(17,11,1,0),(18,13,1,0),(19,12,1,0),(20,11,1,0),(21,15,0,0),(22,14,0,0),(23,16,0,0),(24,17,1,0),(25,18,0,0),(26,19,0,0),(27,14,0,0),(28,16,0,0),(29,18,0,0),(30,19,0,0),(31,20,0,0),(32,21,1,0),(33,22,1,0),(34,20,0,0),(35,23,0,0),(36,24,0,0),(37,25,0,0),(38,26,1,0),(39,26,1,0),(40,27,0,0),(41,28,1,0),(42,26,1,0),(43,29,0,0),(44,26,1,0),(45,30,0,0),(46,31,0,0),(47,26,1,0),(48,32,1,0),(49,33,0,0),(50,34,1,0),(51,26,1,0),(52,34,1,0),(53,26,1,0),(54,35,1,0),(55,34,1,0),(56,26,1,0),(57,36,1,0),(58,37,0,0),(59,36,1,0),(60,36,1,0),(61,38,1,0),(62,39,0,0),(63,40,0,0),(64,41,1,0),(65,42,1,0),(66,42,1,0),(67,42,1,0),(68,42,1,0),(69,42,1,0),(70,42,1,0),(71,42,1,0),(72,42,1,0),(73,43,0,0),(74,44,1,0),(75,45,1,0),(76,45,1,0),(77,45,1,0),(78,45,1,0),(79,45,1,0),(80,45,1,0),(81,45,1,0),(82,45,1,0),(83,46,1,0),(84,47,1,0),(85,47,1,0),(86,47,1,0),(87,47,1,0),(88,47,1,0),(89,47,1,0),(90,47,1,0),(91,47,1,0),(92,48,1,0),(93,49,1,0),(94,50,0,0),(95,51,1,0),(96,52,1,0),(97,51,1,0),(98,51,1,0),(99,51,1,0),(100,51,1,0),(101,53,0,0),(102,54,1,0),(103,55,0,0),(104,56,1,0),(105,55,0,0),(106,57,1,0),(107,57,1,0),(108,57,1,0),(109,58,0,0),(110,57,1,0),(111,59,0,0),(112,57,1,0),(113,57,1,0),(114,60,1,0),(115,57,1,0),(116,60,1,0),(117,57,1,0),(118,61,0,0),(119,62,1,0),(120,62,1,0),(121,63,0,0),(122,64,1,0),(123,64,1,0),(124,64,1,0),(125,64,1,0),(126,65,1,0),(127,64,1,0),(128,64,1,0),(129,66,1,0),(130,64,1,0),(131,64,1,0),(132,67,0,0),(133,68,0,0),(134,69,1,0),(135,70,1,0),(136,70,1,0),(137,71,0,0),(138,70,1,0),(139,72,1,0),(140,72,1,0),(141,73,0,0),(142,72,1,0),(143,72,1,0),(144,72,1,0),(145,72,1,0),(146,72,1,0),(147,72,1,0),(148,74,1,0),(149,75,0,0),(150,76,1,0),(151,76,1,0),(152,76,1,0),(153,76,1,0),(154,76,1,0),(155,76,1,0),(156,76,1,0),(157,76,1,0),(158,77,1,0),(159,77,1,0),(160,77,1,0),(161,77,1,0),(162,77,1,0),(163,77,1,0),(164,77,1,0),(165,77,1,0),(166,78,0,0),(167,79,0,0),(168,80,0,0),(169,81,0,0),(170,82,0,0),(171,83,0,0),(172,84,1,0),(173,84,1,0),(174,84,1,0),(175,85,1,0),(176,85,1,0),(177,85,1,0),(178,85,1,0),(179,85,1,0),(180,86,0,0),(181,87,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=1470 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,16,1,2,NULL),(2,17,1,2,NULL),(3,20,1,2,NULL),(4,16,17,2,NULL),(5,17,17,2,NULL),(6,20,17,2,NULL),(7,16,20,2,NULL),(8,17,20,2,NULL),(9,20,20,2,NULL),(10,16,26,2,NULL),(11,17,26,2,NULL),(12,20,26,2,NULL),(13,16,18,2,NULL),(14,17,18,2,NULL),(15,20,18,2,NULL),(16,16,27,2,NULL),(17,17,27,2,NULL),(18,20,27,2,NULL),(19,16,23,2,NULL),(20,17,23,2,NULL),(21,20,23,2,NULL),(22,16,28,2,NULL),(23,17,28,2,NULL),(24,20,28,2,NULL),(25,16,30,2,NULL),(26,17,30,2,NULL),(27,20,30,2,NULL),(28,16,24,2,NULL),(29,17,24,2,NULL),(30,20,24,2,NULL),(31,16,33,2,NULL),(32,17,33,2,NULL),(33,20,33,2,NULL),(34,16,36,2,NULL),(35,17,36,2,NULL),(36,20,36,2,NULL),(37,16,38,2,NULL),(38,17,38,2,NULL),(39,20,38,2,NULL),(40,16,39,2,NULL),(41,17,39,2,NULL),(42,20,39,2,NULL),(43,93,17,2,NULL),(44,96,17,2,NULL),(45,122,17,2,NULL),(46,123,17,2,NULL),(47,124,17,2,NULL),(48,125,17,2,NULL),(49,127,17,2,NULL),(50,128,17,2,NULL),(51,130,17,2,NULL),(52,131,17,2,NULL),(53,64,17,2,NULL),(54,158,17,2,NULL),(55,159,17,2,NULL),(56,160,17,2,NULL),(57,161,17,2,NULL),(58,162,17,2,NULL),(59,163,17,2,NULL),(60,164,17,2,NULL),(61,165,17,2,NULL),(62,65,17,2,NULL),(63,66,17,2,NULL),(64,67,17,2,NULL),(65,68,17,2,NULL),(66,69,17,2,NULL),(67,70,17,2,NULL),(68,71,17,2,NULL),(69,72,17,2,NULL),(70,74,17,2,NULL),(71,92,17,2,NULL),(72,139,17,2,NULL),(73,140,17,2,NULL),(74,142,17,2,NULL),(75,143,17,2,NULL),(76,144,17,2,NULL),(77,145,17,2,NULL),(78,146,17,2,NULL),(79,147,17,2,NULL),(80,148,17,2,NULL),(81,150,17,2,NULL),(82,151,17,2,NULL),(83,152,17,2,NULL),(84,153,17,2,NULL),(85,154,17,2,NULL),(86,155,17,2,NULL),(87,156,17,2,NULL),(88,157,17,2,NULL),(89,104,17,2,NULL),(90,106,17,2,NULL),(91,107,17,2,NULL),(92,108,17,2,NULL),(93,110,17,2,NULL),(94,112,17,2,NULL),(95,113,17,2,NULL),(96,115,17,2,NULL),(97,117,17,2,NULL),(98,38,17,2,NULL),(99,39,17,2,NULL),(100,42,17,2,NULL),(101,44,17,2,NULL),(102,47,17,2,NULL),(103,51,17,2,NULL),(104,53,17,2,NULL),(105,56,17,2,NULL),(106,102,17,2,NULL),(107,84,17,2,NULL),(108,85,17,2,NULL),(109,86,17,2,NULL),(110,87,17,2,NULL),(111,88,17,2,NULL),(112,89,17,2,NULL),(113,90,17,2,NULL),(114,91,17,2,NULL),(115,134,17,2,NULL),(116,75,17,2,NULL),(117,76,17,2,NULL),(118,77,17,2,NULL),(119,78,17,2,NULL),(120,79,17,2,NULL),(121,80,17,2,NULL),(122,81,17,2,NULL),(123,82,17,2,NULL),(124,181,17,2,NULL),(125,172,17,2,NULL),(126,173,17,2,NULL),(127,174,17,2,NULL),(128,4,17,2,NULL),(129,5,17,2,NULL),(130,7,17,2,NULL),(131,50,17,2,NULL),(132,52,17,2,NULL),(133,55,17,2,NULL),(134,1,17,2,NULL),(135,2,17,2,NULL),(136,3,17,2,NULL),(137,19,17,2,NULL),(138,57,17,2,NULL),(139,59,17,2,NULL),(140,60,17,2,NULL),(141,135,17,2,NULL),(142,136,17,2,NULL),(143,138,17,2,NULL),(144,93,20,2,NULL),(145,96,20,2,NULL),(146,122,20,2,NULL),(147,123,20,2,NULL),(148,124,20,2,NULL),(149,125,20,2,NULL),(150,127,20,2,NULL),(151,128,20,2,NULL),(152,130,20,2,NULL),(153,131,20,2,NULL),(154,64,20,2,NULL),(155,158,20,2,NULL),(156,159,20,2,NULL),(157,160,20,2,NULL),(158,161,20,2,NULL),(159,162,20,2,NULL),(160,163,20,2,NULL),(161,164,20,2,NULL),(162,165,20,2,NULL),(163,65,20,2,NULL),(164,66,20,2,NULL),(165,67,20,2,NULL),(166,68,20,2,NULL),(167,69,20,2,NULL),(168,70,20,2,NULL),(169,71,20,2,NULL),(170,72,20,2,NULL),(171,74,20,2,NULL),(172,92,20,2,NULL),(173,139,20,2,NULL),(174,140,20,2,NULL),(175,142,20,2,NULL),(176,143,20,2,NULL),(177,144,20,2,NULL),(178,145,20,2,NULL),(179,146,20,2,NULL),(180,147,20,2,NULL),(181,148,20,2,NULL),(182,150,20,2,NULL),(183,151,20,2,NULL),(184,152,20,2,NULL),(185,153,20,2,NULL),(186,154,20,2,NULL),(187,155,20,2,NULL),(188,156,20,2,NULL),(189,157,20,2,NULL),(190,104,20,2,NULL),(191,106,20,2,NULL),(192,107,20,2,NULL),(193,108,20,2,NULL),(194,110,20,2,NULL),(195,112,20,2,NULL),(196,113,20,2,NULL),(197,115,20,2,NULL),(198,117,20,2,NULL),(199,38,20,2,NULL),(200,39,20,2,NULL),(201,42,20,2,NULL),(202,44,20,2,NULL),(203,47,20,2,NULL),(204,51,20,2,NULL),(205,53,20,2,NULL),(206,56,20,2,NULL),(207,102,20,2,NULL),(208,84,20,2,NULL),(209,85,20,2,NULL),(210,86,20,2,NULL),(211,87,20,2,NULL),(212,88,20,2,NULL),(213,89,20,2,NULL),(214,90,20,2,NULL),(215,91,20,2,NULL),(216,134,20,2,NULL),(217,75,20,2,NULL),(218,76,20,2,NULL),(219,77,20,2,NULL),(220,78,20,2,NULL),(221,79,20,2,NULL),(222,80,20,2,NULL),(223,81,20,2,NULL),(224,82,20,2,NULL),(225,181,20,2,NULL),(226,172,20,2,NULL),(227,173,20,2,NULL),(228,174,20,2,NULL),(229,4,20,2,NULL),(230,5,20,2,NULL),(231,7,20,2,NULL),(232,50,20,2,NULL),(233,52,20,2,NULL),(234,55,20,2,NULL),(235,1,20,2,NULL),(236,2,20,2,NULL),(237,3,20,2,NULL),(238,19,20,2,NULL),(239,57,20,2,NULL),(240,59,20,2,NULL),(241,60,20,2,NULL),(242,135,20,2,NULL),(243,136,20,2,NULL),(244,138,20,2,NULL),(245,93,26,2,NULL),(246,96,26,2,NULL),(247,122,26,2,NULL),(248,123,26,2,NULL),(249,124,26,2,NULL),(250,125,26,2,NULL),(251,127,26,2,NULL),(252,128,26,2,NULL),(253,130,26,2,NULL),(254,131,26,2,NULL),(255,64,26,2,NULL),(256,158,26,2,NULL),(257,159,26,2,NULL),(258,160,26,2,NULL),(259,161,26,2,NULL),(260,162,26,2,NULL),(261,163,26,2,NULL),(262,164,26,2,NULL),(263,165,26,2,NULL),(264,65,26,2,NULL),(265,66,26,2,NULL),(266,67,26,2,NULL),(267,68,26,2,NULL),(268,69,26,2,NULL),(269,70,26,2,NULL),(270,71,26,2,NULL),(271,72,26,2,NULL),(272,74,26,2,NULL),(273,92,26,2,NULL),(274,139,26,2,NULL),(275,140,26,2,NULL),(276,142,26,2,NULL),(277,143,26,2,NULL),(278,144,26,2,NULL),(279,145,26,2,NULL),(280,146,26,2,NULL),(281,147,26,2,NULL),(282,148,26,2,NULL),(283,150,26,2,NULL),(284,151,26,2,NULL),(285,152,26,2,NULL),(286,153,26,2,NULL),(287,154,26,2,NULL),(288,155,26,2,NULL),(289,156,26,2,NULL),(290,157,26,2,NULL),(291,104,26,2,NULL),(292,106,26,2,NULL),(293,107,26,2,NULL),(294,108,26,2,NULL),(295,110,26,2,NULL),(296,112,26,2,NULL),(297,113,26,2,NULL),(298,115,26,2,NULL),(299,117,26,2,NULL),(300,38,26,2,NULL),(301,39,26,2,NULL),(302,42,26,2,NULL),(303,44,26,2,NULL),(304,47,26,2,NULL),(305,51,26,2,NULL),(306,53,26,2,NULL),(307,56,26,2,NULL),(308,102,26,2,NULL),(309,84,26,2,NULL),(310,85,26,2,NULL),(311,86,26,2,NULL),(312,87,26,2,NULL),(313,88,26,2,NULL),(314,89,26,2,NULL),(315,90,26,2,NULL),(316,91,26,2,NULL),(317,134,26,2,NULL),(318,75,26,2,NULL),(319,76,26,2,NULL),(320,77,26,2,NULL),(321,78,26,2,NULL),(322,79,26,2,NULL),(323,80,26,2,NULL),(324,81,26,2,NULL),(325,82,26,2,NULL),(326,181,26,2,NULL),(327,172,26,2,NULL),(328,173,26,2,NULL),(329,174,26,2,NULL),(330,4,26,2,NULL),(331,5,26,2,NULL),(332,7,26,2,NULL),(333,50,26,2,NULL),(334,52,26,2,NULL),(335,55,26,2,NULL),(336,1,26,2,NULL),(337,2,26,2,NULL),(338,3,26,2,NULL),(339,19,26,2,NULL),(340,57,26,2,NULL),(341,59,26,2,NULL),(342,60,26,2,NULL),(343,135,26,2,NULL),(344,136,26,2,NULL),(345,138,26,2,NULL),(346,50,1,2,NULL),(347,52,1,2,NULL),(348,55,1,2,NULL),(349,50,18,2,NULL),(350,52,18,2,NULL),(351,55,18,2,NULL),(352,50,27,2,NULL),(353,52,27,2,NULL),(354,55,27,2,NULL),(355,50,23,2,NULL),(356,52,23,2,NULL),(357,55,23,2,NULL),(358,50,28,2,NULL),(359,52,28,2,NULL),(360,55,28,2,NULL),(361,50,30,2,NULL),(362,52,30,2,NULL),(363,55,30,2,NULL),(364,50,24,2,NULL),(365,52,24,2,NULL),(366,55,24,2,NULL),(367,50,33,2,NULL),(368,52,33,2,NULL),(369,55,33,2,NULL),(370,50,36,2,NULL),(371,52,36,2,NULL),(372,55,36,2,NULL),(373,50,38,2,NULL),(374,52,38,2,NULL),(375,55,38,2,NULL),(376,50,39,2,NULL),(377,52,39,2,NULL),(378,55,39,2,NULL),(379,93,23,2,NULL),(380,96,23,2,NULL),(381,122,23,2,NULL),(382,123,23,2,NULL),(383,124,23,2,NULL),(384,125,23,2,NULL),(385,127,23,2,NULL),(386,128,23,2,NULL),(387,130,23,2,NULL),(388,131,23,2,NULL),(389,64,23,2,NULL),(390,158,23,2,NULL),(391,159,23,2,NULL),(392,160,23,2,NULL),(393,161,23,2,NULL),(394,162,23,2,NULL),(395,163,23,2,NULL),(396,164,23,2,NULL),(397,165,23,2,NULL),(398,65,23,2,NULL),(399,66,23,2,NULL),(400,67,23,2,NULL),(401,68,23,2,NULL),(402,69,23,2,NULL),(403,70,23,2,NULL),(404,71,23,2,NULL),(405,72,23,2,NULL),(406,74,23,2,NULL),(407,92,23,2,NULL),(408,139,23,2,NULL),(409,140,23,2,NULL),(410,142,23,2,NULL),(411,143,23,2,NULL),(412,144,23,2,NULL),(413,145,23,2,NULL),(414,146,23,2,NULL),(415,147,23,2,NULL),(416,148,23,2,NULL),(417,150,23,2,NULL),(418,151,23,2,NULL),(419,152,23,2,NULL),(420,153,23,2,NULL),(421,154,23,2,NULL),(422,155,23,2,NULL),(423,156,23,2,NULL),(424,157,23,2,NULL),(425,104,23,2,NULL),(426,106,23,2,NULL),(427,107,23,2,NULL),(428,108,23,2,NULL),(429,110,23,2,NULL),(430,112,23,2,NULL),(431,113,23,2,NULL),(432,115,23,2,NULL),(433,117,23,2,NULL),(434,38,23,2,NULL),(435,39,23,2,NULL),(436,42,23,2,NULL),(437,44,23,2,NULL),(438,47,23,2,NULL),(439,51,23,2,NULL),(440,53,23,2,NULL),(441,56,23,2,NULL),(442,102,23,2,NULL),(443,84,23,2,NULL),(444,85,23,2,NULL),(445,86,23,2,NULL),(446,87,23,2,NULL),(447,88,23,2,NULL),(448,89,23,2,NULL),(449,90,23,2,NULL),(450,91,23,2,NULL),(451,134,23,2,NULL),(452,75,23,2,NULL),(453,76,23,2,NULL),(454,77,23,2,NULL),(455,78,23,2,NULL),(456,79,23,2,NULL),(457,80,23,2,NULL),(458,81,23,2,NULL),(459,82,23,2,NULL),(460,181,23,2,NULL),(461,172,23,2,NULL),(462,173,23,2,NULL),(463,174,23,2,NULL),(464,4,23,2,NULL),(465,5,23,2,NULL),(466,7,23,2,NULL),(467,1,23,2,NULL),(468,2,23,2,NULL),(469,3,23,2,NULL),(470,19,23,2,NULL),(471,57,23,2,NULL),(472,59,23,2,NULL),(473,60,23,2,NULL),(474,135,23,2,NULL),(475,136,23,2,NULL),(476,138,23,2,NULL),(477,93,28,2,NULL),(478,96,28,2,NULL),(479,122,28,2,NULL),(480,123,28,2,NULL),(481,124,28,2,NULL),(482,125,28,2,NULL),(483,127,28,2,NULL),(484,128,28,2,NULL),(485,130,28,2,NULL),(486,131,28,2,NULL),(487,64,28,2,NULL),(488,158,28,2,NULL),(489,159,28,2,NULL),(490,160,28,2,NULL),(491,161,28,2,NULL),(492,162,28,2,NULL),(493,163,28,2,NULL),(494,164,28,2,NULL),(495,165,28,2,NULL),(496,65,28,2,NULL),(497,66,28,2,NULL),(498,67,28,2,NULL),(499,68,28,2,NULL),(500,69,28,2,NULL),(501,70,28,2,NULL),(502,71,28,2,NULL),(503,72,28,2,NULL),(504,74,28,2,NULL),(505,92,28,2,NULL),(506,139,28,2,NULL),(507,140,28,2,NULL),(508,142,28,2,NULL),(509,143,28,2,NULL),(510,144,28,2,NULL),(511,145,28,2,NULL),(512,146,28,2,NULL),(513,147,28,2,NULL),(514,148,28,2,NULL),(515,150,28,2,NULL),(516,151,28,2,NULL),(517,152,28,2,NULL),(518,153,28,2,NULL),(519,154,28,2,NULL),(520,155,28,2,NULL),(521,156,28,2,NULL),(522,157,28,2,NULL),(523,104,28,2,NULL),(524,106,28,2,NULL),(525,63,4,2,NULL),(526,107,28,2,NULL),(527,73,13,2,NULL),(528,108,28,2,NULL),(529,94,11,2,NULL),(530,110,28,2,NULL),(531,101,3,2,NULL),(532,112,28,2,NULL),(533,133,12,2,NULL),(534,113,28,2,NULL),(535,137,6,2,NULL),(536,115,28,2,NULL),(537,149,10,2,NULL),(538,117,28,2,NULL),(539,166,2,2,NULL),(540,38,28,2,NULL),(541,168,7,2,NULL),(542,39,28,2,NULL),(543,169,5,2,NULL),(544,42,28,2,NULL),(545,170,9,2,NULL),(546,44,28,2,NULL),(547,171,8,2,NULL),(548,47,28,2,NULL),(549,96,1,2,NULL),(550,51,28,2,NULL),(551,122,1,2,NULL),(552,53,28,2,NULL),(553,123,1,2,NULL),(554,56,28,2,NULL),(555,124,1,2,NULL),(556,102,28,2,NULL),(557,125,1,2,NULL),(558,84,28,2,NULL),(559,127,1,2,NULL),(560,85,28,2,NULL),(561,128,1,2,NULL),(562,86,28,2,NULL),(563,130,1,2,NULL),(564,87,28,2,NULL),(565,131,1,2,NULL),(566,88,28,2,NULL),(567,64,1,2,NULL),(568,89,28,2,NULL),(569,158,1,2,NULL),(570,90,28,2,NULL),(571,159,1,2,NULL),(572,91,28,2,NULL),(573,160,1,2,NULL),(574,134,28,2,NULL),(575,161,1,2,NULL),(576,75,28,2,NULL),(577,162,1,2,NULL),(578,76,28,2,NULL),(579,163,1,2,NULL),(580,77,28,2,NULL),(581,164,1,2,NULL),(582,78,28,2,NULL),(583,165,1,2,NULL),(584,79,28,2,NULL),(585,65,1,2,NULL),(586,80,28,2,NULL),(587,66,1,2,NULL),(588,81,28,2,NULL),(589,67,1,2,NULL),(590,82,28,2,NULL),(591,68,1,2,NULL),(592,181,28,2,NULL),(593,69,1,2,NULL),(594,172,28,2,NULL),(595,70,1,2,NULL),(596,173,28,2,NULL),(597,71,1,2,NULL),(598,174,28,2,NULL),(599,72,1,2,NULL),(600,4,28,2,NULL),(601,74,1,2,NULL),(602,5,28,2,NULL),(603,92,1,2,NULL),(604,7,28,2,NULL),(605,139,1,2,NULL),(606,1,28,2,NULL),(607,140,1,2,NULL),(608,2,28,2,NULL),(609,142,1,2,NULL),(610,3,28,2,NULL),(611,143,1,2,NULL),(612,19,28,2,NULL),(613,144,1,2,NULL),(614,57,28,2,NULL),(615,145,1,2,NULL),(616,59,28,2,NULL),(617,146,1,2,NULL),(618,60,28,2,NULL),(619,147,1,2,NULL),(620,135,28,2,NULL),(621,148,1,2,NULL),(622,136,28,2,NULL),(623,150,1,2,NULL),(624,138,28,2,NULL),(625,151,1,2,NULL),(626,93,30,2,NULL),(627,152,1,2,NULL),(628,96,30,2,NULL),(629,153,1,2,NULL),(630,122,30,2,NULL),(631,154,1,2,NULL),(632,123,30,2,NULL),(633,155,1,2,NULL),(634,124,30,2,NULL),(635,156,1,2,NULL),(636,125,30,2,NULL),(637,157,1,2,NULL),(638,127,30,2,NULL),(639,104,1,2,NULL),(640,128,30,2,NULL),(641,106,1,2,NULL),(642,130,30,2,NULL),(643,107,1,2,NULL),(644,131,30,2,NULL),(645,108,1,2,NULL),(646,64,30,2,NULL),(647,110,1,2,NULL),(648,158,30,2,NULL),(649,112,1,2,NULL),(650,159,30,2,NULL),(651,113,1,2,NULL),(652,160,30,2,NULL),(653,37,31,2,NULL),(654,115,1,2,NULL),(655,161,30,2,NULL),(656,93,24,2,NULL),(657,117,1,2,NULL),(658,162,30,2,NULL),(659,96,24,2,NULL),(660,38,1,2,NULL),(661,163,30,2,NULL),(662,122,24,2,NULL),(663,39,1,2,NULL),(664,164,30,2,NULL),(665,123,24,2,NULL),(666,42,1,2,NULL),(667,165,30,2,NULL),(668,124,24,2,NULL),(669,44,1,2,NULL),(670,65,30,2,NULL),(671,125,24,2,NULL),(672,47,1,2,NULL),(673,66,30,2,NULL),(674,127,24,2,NULL),(675,51,1,2,NULL),(676,67,30,2,NULL),(677,128,24,2,NULL),(678,53,1,2,NULL),(679,68,30,2,NULL),(680,130,24,2,NULL),(681,56,1,2,NULL),(682,69,30,2,NULL),(683,131,24,2,NULL),(684,102,1,2,NULL),(685,70,30,2,NULL),(686,64,24,2,NULL),(687,84,1,2,NULL),(688,71,30,2,NULL),(689,158,24,2,NULL),(690,85,1,2,NULL),(691,72,30,2,NULL),(692,159,24,2,NULL),(693,86,1,2,NULL),(694,74,30,2,NULL),(695,160,24,2,NULL),(696,87,1,2,NULL),(697,92,30,2,NULL),(698,161,24,2,NULL),(699,88,1,2,NULL),(700,139,30,2,NULL),(701,89,1,2,NULL),(702,162,24,2,NULL),(703,140,30,2,NULL),(704,90,1,2,NULL),(705,163,24,2,NULL),(706,142,30,2,NULL),(707,91,1,2,NULL),(708,164,24,2,NULL),(709,143,30,2,NULL),(710,134,1,2,NULL),(711,144,30,2,NULL),(712,165,24,2,NULL),(713,75,1,2,NULL),(714,145,30,2,NULL),(715,65,24,2,NULL),(716,76,1,2,NULL),(717,146,30,2,NULL),(718,66,24,2,NULL),(719,77,1,2,NULL),(720,147,30,2,NULL),(721,67,24,2,NULL),(722,78,1,2,NULL),(723,148,30,2,NULL),(724,68,24,2,NULL),(725,79,1,2,NULL),(726,150,30,2,NULL),(727,69,24,2,NULL),(728,80,1,2,NULL),(729,151,30,2,NULL),(730,70,24,2,NULL),(731,81,1,2,NULL),(732,152,30,2,NULL),(733,71,24,2,NULL),(734,82,1,2,NULL),(735,153,30,2,NULL),(736,72,24,2,NULL),(737,181,1,2,NULL),(738,154,30,2,NULL),(739,74,24,2,NULL),(740,172,1,2,NULL),(741,155,30,2,NULL),(742,92,24,2,NULL),(743,173,1,2,NULL),(744,156,30,2,NULL),(745,139,24,2,NULL),(746,174,1,2,NULL),(747,157,30,2,NULL),(748,140,24,2,NULL),(749,93,18,2,NULL),(750,104,30,2,NULL),(751,142,24,2,NULL),(752,4,1,2,NULL),(753,106,30,2,NULL),(754,143,24,2,NULL),(755,5,1,2,NULL),(756,107,30,2,NULL),(757,144,24,2,NULL),(758,7,1,2,NULL),(759,108,30,2,NULL),(760,145,24,2,NULL),(761,93,27,2,NULL),(762,110,30,2,NULL),(763,146,24,2,NULL),(764,1,1,2,NULL),(765,112,30,2,NULL),(766,147,24,2,NULL),(767,2,1,2,NULL),(768,113,30,2,NULL),(769,148,24,2,NULL),(770,3,1,2,NULL),(771,115,30,2,NULL),(772,150,24,2,NULL),(773,19,1,2,NULL),(774,117,30,2,NULL),(775,151,24,2,NULL),(776,93,33,2,NULL),(777,38,30,2,NULL),(778,152,24,2,NULL),(779,57,1,2,NULL),(780,39,30,2,NULL),(781,153,24,2,NULL),(782,59,1,2,NULL),(783,42,30,2,NULL),(784,154,24,2,NULL),(785,60,1,2,NULL),(786,44,30,2,NULL),(787,155,24,2,NULL),(788,93,36,2,NULL),(789,47,30,2,NULL),(790,156,24,2,NULL),(791,93,38,2,NULL),(792,51,30,2,NULL),(793,157,24,2,NULL),(794,93,39,2,NULL),(795,53,30,2,NULL),(796,104,24,2,NULL),(797,135,1,2,NULL),(798,56,30,2,NULL),(799,106,24,2,NULL),(800,136,1,2,NULL),(801,102,30,2,NULL),(802,107,24,2,NULL),(803,138,1,2,NULL),(804,84,30,2,NULL),(805,108,24,2,NULL),(806,85,30,2,NULL),(807,110,24,2,NULL),(808,96,18,2,NULL),(809,86,30,2,NULL),(810,122,18,2,NULL),(811,112,24,2,NULL),(812,87,30,2,NULL),(813,123,18,2,NULL),(814,113,24,2,NULL),(815,88,30,2,NULL),(816,124,18,2,NULL),(817,115,24,2,NULL),(818,89,30,2,NULL),(819,125,18,2,NULL),(820,117,24,2,NULL),(821,90,30,2,NULL),(822,127,18,2,NULL),(823,38,24,2,NULL),(824,91,30,2,NULL),(825,128,18,2,NULL),(826,39,24,2,NULL),(827,134,30,2,NULL),(828,130,18,2,NULL),(829,42,24,2,NULL),(830,75,30,2,NULL),(831,131,18,2,NULL),(832,44,24,2,NULL),(833,76,30,2,NULL),(834,96,27,2,NULL),(835,47,24,2,NULL),(836,77,30,2,NULL),(837,122,27,2,NULL),(838,51,24,2,NULL),(839,78,30,2,NULL),(840,123,27,2,NULL),(841,53,24,2,NULL),(842,79,30,2,NULL),(843,124,27,2,NULL),(844,56,24,2,NULL),(845,80,30,2,NULL),(846,125,27,2,NULL),(847,102,24,2,NULL),(848,81,30,2,NULL),(849,127,27,2,NULL),(850,84,24,2,NULL),(851,82,30,2,NULL),(852,128,27,2,NULL),(853,85,24,2,NULL),(854,181,30,2,NULL),(855,130,27,2,NULL),(856,86,24,2,NULL),(857,172,30,2,NULL),(858,131,27,2,NULL),(859,87,24,2,NULL),(860,173,30,2,NULL),(861,88,24,2,NULL),(862,96,33,2,NULL),(863,174,30,2,NULL),(864,122,33,2,NULL),(865,89,24,2,NULL),(866,4,30,2,NULL),(867,123,33,2,NULL),(868,90,24,2,NULL),(869,5,30,2,NULL),(870,124,33,2,NULL),(871,91,24,2,NULL),(872,7,30,2,NULL),(873,125,33,2,NULL),(874,134,24,2,NULL),(875,1,30,2,NULL),(876,127,33,2,NULL),(877,75,24,2,NULL),(878,2,30,2,NULL),(879,128,33,2,NULL),(880,76,24,2,NULL),(881,109,40,2,NULL),(882,3,30,2,NULL),(883,130,33,2,NULL),(884,77,24,2,NULL),(885,19,30,2,NULL),(886,96,39,2,NULL),(887,131,33,2,NULL),(888,78,24,2,NULL),(889,57,30,2,NULL),(890,122,39,2,NULL),(891,79,24,2,NULL),(892,96,36,2,NULL),(893,59,30,2,NULL),(894,122,36,2,NULL),(895,80,24,2,NULL),(896,60,30,2,NULL),(897,123,39,2,NULL),(898,123,36,2,NULL),(899,81,24,2,NULL),(900,135,30,2,NULL),(901,124,39,2,NULL),(902,124,36,2,NULL),(903,82,24,2,NULL),(904,136,30,2,NULL),(905,125,36,2,NULL),(906,181,24,2,NULL),(907,138,30,2,NULL),(908,125,39,2,NULL),(909,127,36,2,NULL),(910,172,24,2,NULL),(911,127,39,2,NULL),(912,128,36,2,NULL),(913,173,24,2,NULL),(914,128,39,2,NULL),(915,130,36,2,NULL),(916,174,24,2,NULL),(917,130,39,2,NULL),(918,131,36,2,NULL),(919,4,24,2,NULL),(920,131,39,2,NULL),(921,96,38,2,NULL),(922,5,24,2,NULL),(923,64,39,2,NULL),(924,122,38,2,NULL),(925,7,24,2,NULL),(926,158,39,2,NULL),(927,123,38,2,NULL),(928,1,24,2,NULL),(929,159,39,2,NULL),(930,124,38,2,NULL),(931,2,24,2,NULL),(932,160,39,2,NULL),(933,125,38,2,NULL),(934,3,24,2,NULL),(935,127,38,2,NULL),(936,161,39,2,NULL),(937,19,24,2,NULL),(938,128,38,2,NULL),(939,162,39,2,NULL),(940,57,24,2,NULL),(941,130,38,2,NULL),(942,163,39,2,NULL),(943,59,24,2,NULL),(944,131,38,2,NULL),(945,164,39,2,NULL),(946,60,24,2,NULL),(947,165,39,2,NULL),(948,64,18,2,NULL),(949,135,24,2,NULL),(950,65,39,2,NULL),(951,136,24,2,NULL),(952,158,18,2,NULL),(953,66,39,2,NULL),(954,159,18,2,NULL),(955,138,24,2,NULL),(956,67,39,2,NULL),(957,160,18,2,NULL),(958,1,18,2,NULL),(959,68,39,2,NULL),(960,161,18,2,NULL),(961,2,18,2,NULL),(962,69,39,2,NULL),(963,162,18,2,NULL),(964,3,18,2,NULL),(965,70,39,2,NULL),(966,163,18,2,NULL),(967,1,27,2,NULL),(968,71,39,2,NULL),(969,164,18,2,NULL),(970,2,27,2,NULL),(971,72,39,2,NULL),(972,165,18,2,NULL),(973,3,27,2,NULL),(974,74,39,2,NULL),(975,64,27,2,NULL),(976,1,33,2,NULL),(977,92,39,2,NULL),(978,158,27,2,NULL),(979,2,33,2,NULL),(980,139,39,2,NULL),(981,159,27,2,NULL),(982,3,33,2,NULL),(983,140,39,2,NULL),(984,160,27,2,NULL),(985,1,36,2,NULL),(986,142,39,2,NULL),(987,161,27,2,NULL),(988,2,36,2,NULL),(989,143,39,2,NULL),(990,162,27,2,NULL),(991,3,36,2,NULL),(992,144,39,2,NULL),(993,163,27,2,NULL),(994,1,38,2,NULL),(995,145,39,2,NULL),(996,164,27,2,NULL),(997,2,38,2,NULL),(998,165,27,2,NULL),(999,146,39,2,NULL),(1000,3,38,2,NULL),(1001,147,39,2,NULL),(1002,1,39,2,NULL),(1003,64,33,2,NULL),(1004,148,39,2,NULL),(1005,2,39,2,NULL),(1006,158,33,2,NULL),(1007,150,39,2,NULL),(1008,3,39,2,NULL),(1009,159,33,2,NULL),(1010,151,39,2,NULL),(1011,19,18,2,NULL),(1012,152,39,2,NULL),(1013,160,33,2,NULL),(1014,19,27,2,NULL),(1015,161,33,2,NULL),(1016,153,39,2,NULL),(1017,19,33,2,NULL),(1018,162,33,2,NULL),(1019,154,39,2,NULL),(1020,19,36,2,NULL),(1021,163,33,2,NULL),(1022,155,39,2,NULL),(1023,19,38,2,NULL),(1024,156,39,2,NULL),(1025,164,33,2,NULL),(1026,19,39,2,NULL),(1027,157,39,2,NULL),(1028,165,33,2,NULL),(1029,65,33,2,NULL),(1030,104,39,2,NULL),(1031,64,36,2,NULL),(1032,66,33,2,NULL),(1033,106,39,2,NULL),(1034,158,36,2,NULL),(1035,67,33,2,NULL),(1036,159,36,2,NULL),(1037,107,39,2,NULL),(1038,68,33,2,NULL),(1039,108,39,2,NULL),(1040,160,36,2,NULL),(1041,69,33,2,NULL),(1042,110,39,2,NULL),(1043,161,36,2,NULL),(1044,70,33,2,NULL),(1045,162,36,2,NULL),(1046,112,39,2,NULL),(1047,71,33,2,NULL),(1048,163,36,2,NULL),(1049,113,39,2,NULL),(1050,72,33,2,NULL),(1051,115,39,2,NULL),(1052,164,36,2,NULL),(1053,74,33,2,NULL),(1054,117,39,2,NULL),(1055,165,36,2,NULL),(1056,92,33,2,NULL),(1057,64,38,2,NULL),(1058,38,39,2,NULL),(1059,139,33,2,NULL),(1060,39,39,2,NULL),(1061,158,38,2,NULL),(1062,140,33,2,NULL),(1063,42,39,2,NULL),(1064,159,38,2,NULL),(1065,142,33,2,NULL),(1066,44,39,2,NULL),(1067,160,38,2,NULL),(1068,143,33,2,NULL),(1069,47,39,2,NULL),(1070,161,38,2,NULL),(1071,144,33,2,NULL),(1072,51,39,2,NULL),(1073,162,38,2,NULL),(1074,145,33,2,NULL),(1075,163,38,2,NULL),(1076,53,39,2,NULL),(1077,146,33,2,NULL),(1078,56,39,2,NULL),(1079,164,38,2,NULL),(1080,147,33,2,NULL),(1081,165,38,2,NULL),(1082,102,39,2,NULL),(1083,148,33,2,NULL),(1084,84,39,2,NULL),(1085,65,18,2,NULL),(1086,150,33,2,NULL),(1087,85,39,2,NULL),(1088,66,18,2,NULL),(1089,151,33,2,NULL),(1090,86,39,2,NULL),(1091,67,18,2,NULL),(1092,152,33,2,NULL),(1093,87,39,2,NULL),(1094,68,18,2,NULL),(1095,153,33,2,NULL),(1096,88,39,2,NULL),(1097,69,18,2,NULL),(1098,154,33,2,NULL),(1099,89,39,2,NULL),(1100,70,18,2,NULL),(1101,155,33,2,NULL),(1102,90,39,2,NULL),(1103,156,33,2,NULL),(1104,71,18,2,NULL),(1105,91,39,2,NULL),(1106,72,18,2,NULL),(1107,157,33,2,NULL),(1108,134,39,2,NULL),(1109,74,18,2,NULL),(1110,104,33,2,NULL),(1111,75,39,2,NULL),(1112,106,33,2,NULL),(1113,65,27,2,NULL),(1114,76,39,2,NULL),(1115,107,33,2,NULL),(1116,66,27,2,NULL),(1117,77,39,2,NULL),(1118,67,27,2,NULL),(1119,108,33,2,NULL),(1120,78,39,2,NULL),(1121,68,27,2,NULL),(1122,110,33,2,NULL),(1123,79,39,2,NULL),(1124,69,27,2,NULL),(1125,112,33,2,NULL),(1126,80,39,2,NULL),(1127,113,33,2,NULL),(1128,70,27,2,NULL),(1129,81,39,2,NULL),(1130,71,27,2,NULL),(1131,115,33,2,NULL),(1132,82,39,2,NULL),(1133,72,27,2,NULL),(1134,117,33,2,NULL),(1135,181,39,2,NULL),(1136,38,33,2,NULL),(1137,74,27,2,NULL),(1138,172,39,2,NULL),(1139,39,33,2,NULL),(1140,173,39,2,NULL),(1141,65,36,2,NULL),(1142,42,33,2,NULL),(1143,174,39,2,NULL),(1144,66,36,2,NULL),(1145,44,33,2,NULL),(1146,67,36,2,NULL),(1147,4,39,2,NULL),(1148,47,33,2,NULL),(1149,68,36,2,NULL),(1150,5,39,2,NULL),(1151,51,33,2,NULL),(1152,69,36,2,NULL),(1153,53,33,2,NULL),(1154,7,39,2,NULL),(1155,70,36,2,NULL),(1156,56,33,2,NULL),(1157,57,39,2,NULL),(1158,71,36,2,NULL),(1159,102,33,2,NULL),(1160,72,36,2,NULL),(1161,59,39,2,NULL),(1162,84,33,2,NULL),(1163,60,39,2,NULL),(1164,74,36,2,NULL),(1165,85,33,2,NULL),(1166,135,39,2,NULL),(1167,65,38,2,NULL),(1168,86,33,2,NULL),(1169,66,38,2,NULL),(1170,136,39,2,NULL),(1171,87,33,2,NULL),(1172,67,38,2,NULL),(1173,138,39,2,NULL),(1174,88,33,2,NULL),(1175,68,38,2,NULL),(1176,89,33,2,NULL),(1177,135,18,2,NULL),(1178,69,38,2,NULL),(1179,90,33,2,NULL),(1180,136,18,2,NULL),(1181,70,38,2,NULL),(1182,91,33,2,NULL),(1183,138,18,2,NULL),(1184,71,38,2,NULL),(1185,134,33,2,NULL),(1186,135,27,2,NULL),(1187,72,38,2,NULL),(1188,75,33,2,NULL),(1189,136,27,2,NULL),(1190,74,38,2,NULL),(1191,76,33,2,NULL),(1192,138,27,2,NULL),(1193,77,33,2,NULL),(1194,92,18,2,NULL),(1195,135,33,2,NULL),(1196,139,18,2,NULL),(1197,78,33,2,NULL),(1198,136,33,2,NULL),(1199,79,33,2,NULL),(1200,140,18,2,NULL),(1201,138,33,2,NULL),(1202,80,33,2,NULL),(1203,142,18,2,NULL),(1204,135,36,2,NULL),(1205,143,18,2,NULL),(1206,81,33,2,NULL),(1207,136,36,2,NULL),(1208,82,33,2,NULL),(1209,144,18,2,NULL),(1210,138,36,2,NULL),(1211,181,33,2,NULL),(1212,145,18,2,NULL),(1213,135,38,2,NULL),(1214,172,33,2,NULL),(1215,146,18,2,NULL),(1216,136,38,2,NULL),(1217,173,33,2,NULL),(1218,147,18,2,NULL),(1219,138,38,2,NULL),(1220,174,33,2,NULL),(1221,92,27,2,NULL),(1222,139,27,2,NULL),(1223,4,33,2,NULL),(1224,140,27,2,NULL),(1225,5,33,2,NULL),(1226,142,27,2,NULL),(1227,7,33,2,NULL),(1228,143,27,2,NULL),(1229,57,33,2,NULL),(1230,144,27,2,NULL),(1231,59,33,2,NULL),(1232,145,27,2,NULL),(1233,60,33,2,NULL),(1234,146,27,2,NULL),(1235,147,27,2,NULL),(1236,92,36,2,NULL),(1237,139,36,2,NULL),(1238,140,36,2,NULL),(1239,142,36,2,NULL),(1240,143,36,2,NULL),(1241,144,36,2,NULL),(1242,145,36,2,NULL),(1243,146,36,2,NULL),(1244,147,36,2,NULL),(1245,92,38,2,NULL),(1246,139,38,2,NULL),(1247,140,38,2,NULL),(1248,142,38,2,NULL),(1249,143,38,2,NULL),(1250,144,38,2,NULL),(1251,145,38,2,NULL),(1252,146,38,2,NULL),(1253,147,38,2,NULL),(1254,148,18,2,NULL),(1255,150,18,2,NULL),(1256,151,18,2,NULL),(1257,152,18,2,NULL),(1258,153,18,2,NULL),(1259,154,18,2,NULL),(1260,155,18,2,NULL),(1261,156,18,2,NULL),(1262,157,18,2,NULL),(1263,148,27,2,NULL),(1264,150,27,2,NULL),(1265,151,27,2,NULL),(1266,152,27,2,NULL),(1267,153,27,2,NULL),(1268,154,27,2,NULL),(1269,155,27,2,NULL),(1270,156,27,2,NULL),(1271,157,27,2,NULL),(1272,148,36,2,NULL),(1273,150,36,2,NULL),(1274,151,36,2,NULL),(1275,152,36,2,NULL),(1276,153,36,2,NULL),(1277,154,36,2,NULL),(1278,155,36,2,NULL),(1279,156,36,2,NULL),(1280,157,36,2,NULL),(1281,148,38,2,NULL),(1282,150,38,2,NULL),(1283,151,38,2,NULL),(1284,152,38,2,NULL),(1285,153,38,2,NULL),(1286,154,38,2,NULL),(1287,155,38,2,NULL),(1288,156,38,2,NULL),(1289,157,38,2,NULL),(1290,104,18,2,NULL),(1291,106,18,2,NULL),(1292,107,18,2,NULL),(1293,108,18,2,NULL),(1294,110,18,2,NULL),(1295,112,18,2,NULL),(1296,113,18,2,NULL),(1297,115,18,2,NULL),(1298,117,18,2,NULL),(1299,104,27,2,NULL),(1300,106,27,2,NULL),(1301,107,27,2,NULL),(1302,108,27,2,NULL),(1303,110,27,2,NULL),(1304,112,27,2,NULL),(1305,113,27,2,NULL),(1306,115,27,2,NULL),(1307,117,27,2,NULL),(1308,104,36,2,NULL),(1309,106,36,2,NULL),(1310,107,36,2,NULL),(1311,108,36,2,NULL),(1312,110,36,2,NULL),(1313,112,36,2,NULL),(1314,113,36,2,NULL),(1315,115,36,2,NULL),(1316,117,36,2,NULL),(1317,104,38,2,NULL),(1318,106,38,2,NULL),(1319,107,38,2,NULL),(1320,108,38,2,NULL),(1321,110,38,2,NULL),(1322,112,38,2,NULL),(1323,113,38,2,NULL),(1324,115,38,2,NULL),(1325,117,38,2,NULL),(1326,38,18,2,NULL),(1327,39,18,2,NULL),(1328,42,18,2,NULL),(1329,44,18,2,NULL),(1330,47,18,2,NULL),(1331,51,18,2,NULL),(1332,53,18,2,NULL),(1333,56,18,2,NULL),(1334,102,18,2,NULL),(1335,38,27,2,NULL),(1336,39,27,2,NULL),(1337,42,27,2,NULL),(1338,44,27,2,NULL),(1339,47,27,2,NULL),(1340,51,27,2,NULL),(1341,53,27,2,NULL),(1342,56,27,2,NULL),(1343,102,27,2,NULL),(1344,38,36,2,NULL),(1345,39,36,2,NULL),(1346,42,36,2,NULL),(1347,44,36,2,NULL),(1348,47,36,2,NULL),(1349,51,36,2,NULL),(1350,53,36,2,NULL),(1351,56,36,2,NULL),(1352,102,36,2,NULL),(1353,38,38,2,NULL),(1354,39,38,2,NULL),(1355,42,38,2,NULL),(1356,44,38,2,NULL),(1357,47,38,2,NULL),(1358,51,38,2,NULL),(1359,53,38,2,NULL),(1360,56,38,2,NULL),(1361,102,38,2,NULL),(1362,84,18,2,NULL),(1363,85,18,2,NULL),(1364,86,18,2,NULL),(1365,87,18,2,NULL),(1366,88,18,2,NULL),(1367,89,18,2,NULL),(1368,90,18,2,NULL),(1369,91,18,2,NULL),(1370,134,18,2,NULL),(1371,84,27,2,NULL),(1372,85,27,2,NULL),(1373,86,27,2,NULL),(1374,87,27,2,NULL),(1375,88,27,2,NULL),(1376,89,27,2,NULL),(1377,90,27,2,NULL),(1378,91,27,2,NULL),(1379,134,27,2,NULL),(1380,84,36,2,NULL),(1381,85,36,2,NULL),(1382,86,36,2,NULL),(1383,87,36,2,NULL),(1384,88,36,2,NULL),(1385,89,36,2,NULL),(1386,90,36,2,NULL),(1387,91,36,2,NULL),(1388,134,36,2,NULL),(1389,84,38,2,NULL),(1390,85,38,2,NULL),(1391,86,38,2,NULL),(1392,87,38,2,NULL),(1393,88,38,2,NULL),(1394,89,38,2,NULL),(1395,90,38,2,NULL),(1396,91,38,2,NULL),(1397,134,38,2,NULL),(1398,75,18,2,NULL),(1399,76,18,2,NULL),(1400,77,18,2,NULL),(1401,78,18,2,NULL),(1402,79,18,2,NULL),(1403,80,18,2,NULL),(1404,81,18,2,NULL),(1405,82,18,2,NULL),(1406,181,18,2,NULL),(1407,75,27,2,NULL),(1408,76,27,2,NULL),(1409,77,27,2,NULL),(1410,78,27,2,NULL),(1411,79,27,2,NULL),(1412,80,27,2,NULL),(1413,81,27,2,NULL),(1414,82,27,2,NULL),(1415,181,27,2,NULL),(1416,75,36,2,NULL),(1417,76,36,2,NULL),(1418,77,36,2,NULL),(1419,78,36,2,NULL),(1420,79,36,2,NULL),(1421,80,36,2,NULL),(1422,81,36,2,NULL),(1423,82,36,2,NULL),(1424,181,36,2,NULL),(1425,75,38,2,NULL),(1426,76,38,2,NULL),(1427,77,38,2,NULL),(1428,78,38,2,NULL),(1429,79,38,2,NULL),(1430,80,38,2,NULL),(1431,81,38,2,NULL),(1432,82,38,2,NULL),(1433,181,38,2,NULL),(1434,172,18,2,NULL),(1435,173,18,2,NULL),(1436,174,18,2,NULL),(1437,172,27,2,NULL),(1438,173,27,2,NULL),(1439,174,27,2,NULL),(1440,172,36,2,NULL),(1441,173,36,2,NULL),(1442,174,36,2,NULL),(1443,172,38,2,NULL),(1444,173,38,2,NULL),(1445,174,38,2,NULL),(1446,57,18,2,NULL),(1447,59,18,2,NULL),(1448,60,18,2,NULL),(1449,57,27,2,NULL),(1450,59,27,2,NULL),(1451,60,27,2,NULL),(1452,57,36,2,NULL),(1453,59,36,2,NULL),(1454,60,36,2,NULL),(1455,57,38,2,NULL),(1456,59,38,2,NULL),(1457,60,38,2,NULL),(1458,4,36,2,NULL),(1459,5,36,2,NULL),(1460,7,36,2,NULL),(1461,4,38,2,NULL),(1462,5,38,2,NULL),(1463,7,38,2,NULL),(1464,4,18,2,NULL),(1465,5,18,2,NULL),(1466,7,18,2,NULL),(1467,4,27,2,NULL),(1468,5,27,2,NULL),(1469,7,27,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(5,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.BIND_WALLPAPER'),(9,'android.permission.DELETE_PACKAGES'),(2,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(6,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.RESTART_PACKAGES'),(4,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'mailto:commonidea.zhang@gmail.com',NULL,NULL,NULL),(14,NULL,NULL,'mailto:commonidea.zhang@gmail.com',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'mailto:commonidea.zhang@gmail.com',NULL,NULL,NULL),(17,NULL,NULL,'mailto:commonidea.zhang@gmail.com',NULL,NULL,NULL),(18,NULL,NULL,'mailto:commonidea.zhang@gmail.com',NULL,NULL,NULL),(19,NULL,NULL,'mailto:commonidea.zhang@gmail.com',NULL,NULL,NULL),(20,NULL,NULL,'mailto:commonidea.zhang@gmail.com',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'mailto:commonidea.zhang@gmail.com',NULL,NULL,NULL),(28,NULL,NULL,'mailto:commonidea.zhang@gmail.com',NULL,NULL,NULL),(29,NULL,NULL,'mailto:commonidea.zhang@gmail.com',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,3),(8,2,4),(9,2,5),(10,2,6),(11,2,7),(12,3,1),(13,3,3),(14,4,1),(15,3,4),(16,4,3),(17,3,5),(18,4,4),(19,3,6),(20,4,5),(21,5,1),(22,3,7),(23,4,6),(24,5,2),(25,5,3),(26,4,7),(27,5,4),(28,5,5),(29,5,6),(30,5,9),(31,5,10),(32,6,1),(33,6,3),(34,6,4),(35,6,5),(36,6,6),(37,6,7),(38,7,1),(39,7,3),(40,7,4),(41,7,5),(42,7,11),(43,7,12),(44,7,13);
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

-- Dump completed on 2015-10-12  3:30:17
