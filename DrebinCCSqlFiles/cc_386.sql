-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_386
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (8,'NULL-CONSTANT'),(4,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.PACKAGE_ADDED'),(9,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.SCREEN_ON'),(5,'android.intent.action.VIEW'),(12,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(2,'android.service.wallpaper.WallpaperService'),(7,'cn.com.xiaol.livewallpaper.jpqcmn.showAdFinish'),(3,'push_alm');
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
INSERT INTO `Applications` VALUES (1,'com.han.nz1',1),(2,'com.anderfans.plattskj',9),(3,'com.htcheng.jbook',1),(4,'com.shirley.livewallpaper.shangmai',16),(5,'com.shirley.livewallpaper.JIUZAIGOU',14),(6,'sunkay.BookFanZuiXinLiXue',1),(7,'cn.com.xiaol.livewallpaper.jpqcmn',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.HOME'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.han.nz1.Main'),(2,2,'com.anderfans.plattskj.AnderPlattsActivity'),(3,3,'com.htcheng.jbook.Main'),(4,2,'com.anderfans.plattskj.ContentListActivity'),(5,1,'com.han.nz1.MM1'),(6,3,'com.htcheng.jbook.TxtViewerActivity'),(7,2,'com.anderfans.plattskj.NewsActivity'),(8,1,'com.han.nz1.MM3'),(9,3,'com.htcheng.jbook.HelpActivity'),(10,2,'com.anderfans.plattskj.ImageGalleryActivity'),(11,1,'com.waps.OffersWebView'),(12,3,'com.waps.OffersWebView'),(13,2,'com.waps.OffersWebView'),(14,4,'com.shirley.livewallpaper.shangmai.LiveWallpaperSetting'),(15,5,'com.shirley.livewallpaper.JIUZAIGOU.LiveWallpaperSetting'),(16,4,'com.waps.OffersWebView'),(17,5,'com.waps.OffersWebView'),(18,4,'com.shirley.livewallpaper.shangmai.CubeWallpaper1'),(19,5,'com.shirley.livewallpaper.JIUZAIGOU.CubeWallpaper1'),(20,6,'sunkay.BookFanZuiXinLiXue.BookFanZuiXinLiXue'),(21,5,'com.jeef.wapsConnection.AlmService'),(22,4,'com.jeef.wapsConnection.AlmService'),(23,4,'com.jeef.wapsConnection.BootService'),(24,6,'sunkay.BookFanZuiXinLiXue.Chapter'),(25,5,'com.jeef.wapsConnection.BootService'),(26,6,'com.mt.airad.MultiAD'),(27,6,'com.waps.OffersWebView'),(28,6,'sunkay.BookFanZuiXinLiXue.OnTimeup'),(29,6,'sunkay.BookFanZuiXinLiXue.OnBoot'),(30,7,'cn.com.xiaol.livewallpaper.jpqcmn.MainActivity'),(31,7,'cn.com.xiaol.livewallpaper.jpqcmn.SettingsActivity'),(32,7,'com.mt.airad.MultiAD'),(33,7,'com.waps.OffersWebView'),(34,7,'com.mobclick.android.UmengFeedback'),(35,7,'cn.com.xiaol.livewallpaper.jpqcmn.YDMNliveWallpaper'),(36,3,'com.htcheng.jbook.Main$1'),(37,3,'com.waps.o'),(38,6,'sunkay.BookFanZuiXinLiXue.BookFanZuiXinLiXue$ClickEvent'),(39,4,'com.waps.q'),(40,3,'com.waps.q'),(41,6,'com.waps.o'),(42,2,'com.anderfans.plattskj.NewsActivity$1'),(43,3,'com.waps.ac'),(44,2,'com.anderfans.plattskj.critical.NewsNavigator'),(45,6,'com.waps.ac'),(46,4,'com.waps.ac'),(47,1,'com.han.nz1.Main$1'),(48,7,'com.mobclick.android.MobclickAgent'),(49,1,'com.han.nz1.MM1$2'),(50,3,'com.waps.z'),(51,2,'com.waps.z'),(52,7,'com.waps.ac'),(53,5,'com.waps.aa'),(54,4,'com.waps.o'),(55,3,'com.waps.aa'),(56,2,'com.anderfans.plattskj.AnderPlattsActivity$5'),(57,6,'sunkay.BookFanZuiXinLiXue.Chapter$ClickEvent'),(58,1,'com.waps.s'),(59,7,'com.waps.o'),(60,6,'com.mt.airad.IIIIlllIlllIIIII'),(61,5,'com.waps.q'),(62,7,'com.mt.airad.lIIIIIIIlIlIIIIl'),(63,2,'com.waps.AppConnect'),(64,5,'com.waps.ac'),(65,6,'com.waps.z'),(66,4,'com.waps.z'),(67,7,'com.mt.airad.IlllllIlIlllIIll'),(68,1,'com.waps.z'),(69,5,'com.waps.o'),(70,7,'com.waps.aa'),(71,4,'com.waps.aa'),(72,6,'com.waps.aa'),(73,5,'com.waps.z'),(74,2,'com.waps.o'),(75,7,'com.mt.airad.IIlIIIIlIIlIIlII'),(76,7,'com.waps.z'),(77,6,'com.waps.AppConnect'),(78,1,'com.waps.o'),(79,7,'cn.com.xiaol.livewallpaper.jpqcmn.MainActivity$3'),(80,2,'com.waps.q'),(81,6,'com.waps.q'),(82,1,'com.waps.q'),(83,2,'com.anderfans.plattskj.NewsActivity$5'),(84,1,'com.waps.AppConnect'),(85,7,'com.waps.q'),(86,1,'com.waps.ac'),(87,7,'com.waps.AppConnect'),(88,2,'com.waps.aa'),(89,1,'com.waps.aa'),(90,7,'cn.com.xiaol.livewallpaper.jpqcmn.MainActivity$2'),(91,1,'com.han.nz1.MM3$1'),(92,2,'com.waps.ac');
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
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,12,'Notify_Id'),(2,3,'APP_ID'),(3,12,'APP_ID'),(4,12,'Offers_URL'),(5,27,'isFinshClose'),(6,26,'adURL'),(7,20,'CLIENT_PACKAGE'),(8,27,'CLIENT_PACKAGE'),(9,28,'CLIENT_PACKAGE'),(10,20,'UMENG_APPKEY'),(11,12,'Notify_Url_Params'),(12,23,'UMENG_APPKEY'),(13,6,'(.*)'),(14,12,'ACTIVITY_FLAG'),(15,12,'SHWO_FLAG'),(16,12,'URL'),(17,12,'UrlPath'),(18,17,'URL'),(19,21,'WAPS_TESTMODE'),(20,25,'WAPS_TESTMODE'),(21,27,'Offers_URL'),(22,5,'CLIENT_PACKAGE'),(23,15,'WAPS_TESTMODE'),(24,27,'UrlPath'),(25,22,'WAPS_PID'),(26,8,'CLIENT_PACKAGE'),(27,21,'APP_ID'),(28,11,'CLIENT_PACKAGE'),(29,24,'WAPS_PID'),(30,25,'APP_ID'),(31,12,'isFinshClose'),(32,1,'CLIENT_PACKAGE'),(33,16,'WAPS_PID'),(34,17,'APP_ID'),(35,3,'WAPS_ID'),(36,14,'WAPS_PID'),(37,11,'Notify_Id'),(38,15,'APP_ID'),(39,12,'WAPS_ID'),(40,16,'Notify_Url_Params'),(41,8,'index'),(42,17,'Notify_Url_Params'),(43,21,'WAPS_ID'),(44,25,'WAPS_ID'),(45,27,'URL'),(46,15,'WAPS_ID'),(47,20,'WAPS_ID'),(48,21,'DEVICE_ID'),(49,27,'WAPS_ID'),(50,25,'DEVICE_ID'),(51,28,'WAPS_ID'),(52,13,'offers_webview_tag'),(53,33,'USER_ID'),(54,17,'DEVICE_ID'),(55,27,'offers_webview_tag'),(56,16,'UrlPath'),(57,15,'DEVICE_ID'),(58,22,'CLIENT_PACKAGE'),(59,20,'WAPS_PID'),(60,17,'offers_webview_tag'),(61,24,'CLIENT_PACKAGE'),(62,27,'WAPS_PID'),(63,15,'UMENG_APPKEY'),(64,28,'WAPS_PID'),(65,14,'CLIENT_PACKAGE'),(66,17,'WAPS_ID'),(67,16,'CLIENT_PACKAGE'),(68,17,'Offers_URL'),(69,16,'SHWO_FLAG'),(70,17,'Notify_Id'),(71,14,'UMENG_APPKEY'),(72,33,'Offers_URL'),(73,17,'isFinshClose'),(74,11,'UrlPath'),(75,22,'DEVICE_ID'),(76,24,'DEVICE_ID'),(77,16,'DEVICE_ID'),(78,14,'DEVICE_ID'),(79,16,'Notify_Id'),(80,16,'URL'),(81,33,'URL'),(82,16,'isFinshClose'),(83,13,'UrlPath'),(84,16,'Offers_URL'),(85,16,'USER_ID'),(86,27,'USER_ID'),(87,14,'WAPS_ID'),(88,27,'ACTIVITY_FLAG'),(89,20,'APP_ID'),(90,27,'APP_ID'),(91,28,'APP_ID'),(92,5,'DEVICE_ID'),(93,8,'DEVICE_ID'),(94,11,'DEVICE_ID'),(95,1,'DEVICE_ID'),(96,22,'WAPS_ID'),(97,24,'WAPS_ID'),(98,20,'DEVICE_ID'),(99,16,'URL_PARAMS'),(100,27,'DEVICE_ID'),(101,16,'WAPS_ID'),(102,28,'DEVICE_ID'),(103,22,'APP_ID'),(104,27,'URL_PARAMS'),(105,24,'APP_ID'),(106,17,'UrlPath'),(107,16,'APP_ID'),(108,14,'APP_ID'),(109,30,'UMENG_CHANNEL'),(110,31,'UMENG_CHANNEL'),(111,14,'UMENG_CHANNEL'),(112,22,'WAPS_TESTMODE'),(113,24,'WAPS_TESTMODE'),(114,3,'CLIENT_PACKAGE'),(115,14,'WAPS_TESTMODE'),(116,13,'SHWO_FLAG'),(117,12,'CLIENT_PACKAGE'),(118,15,'UMENG_CHANNEL'),(119,16,'ACTIVITY_FLAG'),(120,12,'URL_PARAMS'),(121,16,'offers_webview_tag'),(122,12,'USER_ID'),(123,30,'APP_ID'),(124,3,'DEVICE_ID'),(125,33,'APP_ID'),(126,12,'DEVICE_ID'),(127,31,'APP_ID'),(128,12,'offers_webview_tag'),(129,30,'WAPS_ID'),(130,3,'WAPS_PID'),(131,11,'URL'),(132,33,'WAPS_ID'),(133,17,'SHWO_FLAG'),(134,12,'WAPS_PID'),(135,31,'WAPS_ID'),(136,11,'Notify_Url_Params'),(137,21,'WAPS_PID'),(138,25,'WAPS_PID'),(139,23,'chapterNum'),(140,17,'WAPS_PID'),(141,26,'adID'),(142,15,'WAPS_PID'),(143,7,'APP_ID'),(144,13,'APP_ID'),(145,4,'APP_ID'),(146,10,'APP_ID'),(147,2,'APP_ID'),(148,11,'Offers_URL'),(149,7,'WAPS_ID'),(150,27,'SHWO_FLAG'),(151,27,'Notify_Id'),(152,13,'WAPS_ID'),(153,17,'CLIENT_PACKAGE'),(154,4,'WAPS_ID'),(155,10,'WAPS_ID'),(156,2,'WAPS_ID'),(157,7,'DEVICE_ID'),(158,13,'DEVICE_ID'),(159,11,'URL_PARAMS'),(160,4,'DEVICE_ID'),(161,11,'USER_ID'),(162,10,'DEVICE_ID'),(163,5,'WAPS_ID'),(164,8,'WAPS_ID'),(165,2,'DEVICE_ID'),(166,17,'URL_PARAMS'),(167,11,'WAPS_ID'),(168,13,'URL_PARAMS'),(169,21,'CLIENT_PACKAGE'),(170,1,'WAPS_ID'),(171,25,'CLIENT_PACKAGE'),(172,15,'CLIENT_PACKAGE'),(173,11,'SHWO_FLAG'),(174,33,'isFinshClose'),(175,5,'APP_ID'),(176,20,'UMENG_CHANNEL'),(177,8,'APP_ID'),(178,13,'USER_ID'),(179,23,'UMENG_CHANNEL'),(180,11,'APP_ID'),(181,1,'APP_ID'),(182,17,'ACTIVITY_FLAG'),(183,17,'USER_ID'),(184,33,'URL_PARAMS'),(185,33,'UrlPath'),(186,27,'Notify_Url_Params'),(187,33,'ACTIVITY_FLAG'),(188,13,'Notify_Url_Params'),(189,13,'CLIENT_PACKAGE'),(190,13,'Offers_URL'),(191,13,'ACTIVITY_FLAG'),(192,11,'offers_webview_tag'),(193,5,'WAPS_PID'),(194,8,'WAPS_PID'),(195,30,'DEVICE_ID'),(196,11,'WAPS_PID'),(197,33,'DEVICE_ID'),(198,1,'WAPS_PID'),(199,31,'DEVICE_ID'),(200,30,'WAPS_PID'),(201,33,'WAPS_PID'),(202,31,'WAPS_PID'),(203,33,'SHWO_FLAG'),(204,32,'adID'),(205,33,'CLIENT_PACKAGE'),(206,33,'Notify_Id'),(207,11,'isFinshClose'),(208,30,'UMENG_APPKEY'),(209,31,'UMENG_APPKEY'),(210,33,'offers_webview_tag'),(211,33,'Notify_Url_Params'),(212,30,'CLIENT_PACKAGE'),(213,31,'CLIENT_PACKAGE'),(214,32,'adURL'),(215,11,'ACTIVITY_FLAG'),(216,13,'isFinshClose'),(217,13,'URL'),(218,13,'Notify_Id'),(219,7,'CLIENT_PACKAGE'),(220,4,'CLIENT_PACKAGE'),(221,10,'CLIENT_PACKAGE'),(222,2,'CLIENT_PACKAGE'),(223,7,'WAPS_PID'),(224,13,'WAPS_PID'),(225,4,'WAPS_PID'),(226,10,'WAPS_PID'),(227,2,'WAPS_PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',1,15,NULL),(19,19,'s',1,15,NULL),(20,20,'a',1,NULL,NULL),(21,21,'r',1,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,23,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'r',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',1,15,NULL),(36,39,'r',1,NULL,NULL),(37,40,'r',1,NULL,NULL),(38,61,'r',1,NULL,NULL),(39,62,'r',1,NULL,NULL),(40,67,'r',1,NULL,NULL),(41,75,'r',1,NULL,NULL),(42,80,'r',1,NULL,NULL),(43,81,'r',1,NULL,NULL),(44,82,'r',1,NULL,NULL),(45,85,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,12),(3,3,20),(4,4,16),(5,5,27),(6,6,7),(7,7,12),(8,7,3),(9,8,7),(10,8,4),(11,9,27),(12,10,12),(13,11,7),(14,12,16),(15,13,1),(16,14,4),(17,15,30),(18,16,5),(19,17,27),(20,18,12),(21,19,13),(22,20,17),(23,21,33),(24,22,11),(25,23,12),(26,24,17),(27,25,32),(28,26,10),(29,27,16),(30,28,12),(31,29,2),(32,30,23),(33,31,5),(34,31,1),(35,31,8),(36,32,33),(37,33,2),(38,34,13),(39,35,26),(40,36,4),(41,36,10),(42,36,7),(43,36,2),(44,37,17),(45,38,27),(46,39,16),(47,40,3),(48,41,11),(49,42,16),(50,43,27),(51,44,17),(52,45,33),(53,46,16),(54,47,1),(55,48,27),(56,49,17),(57,50,1),(58,51,13),(59,52,17),(60,53,33),(61,54,13),(62,55,20),(63,56,11),(64,57,30),(65,58,1),(66,58,5),(67,58,8),(68,59,33),(69,60,7),(70,61,1),(71,62,33),(72,63,1),(73,64,11),(74,65,31),(75,66,13),(76,67,11),(77,68,30),(78,69,4),(79,70,11),(80,71,8),(81,72,13),(82,73,8),(83,73,1),(84,73,5),(85,74,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,36,'<com.htcheng.jbook.Main$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',46,'a',NULL),(2,37,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(3,38,'<sunkay.BookFanZuiXinLiXue.BookFanZuiXinLiXue$ClickEvent: void onClick(android.view.View)>',20,'a',0),(4,16,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',300,'a',NULL),(5,41,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(6,42,'<com.anderfans.plattskj.NewsActivity$1: void onClick(android.view.View)>',6,'a',NULL),(7,43,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(8,44,'<com.anderfans.plattskj.critical.NewsNavigator: void internalNavigateToNewsView(android.content.Context,com.anderfans.plattskj.data.ContentItem)>',6,'a',NULL),(9,45,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(10,12,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(11,7,'<com.anderfans.plattskj.NewsActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(12,46,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(13,47,'<com.han.nz1.Main$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',30,'a',NULL),(14,4,'<com.anderfans.plattskj.ContentListActivity: void navigateToFace()>',3,'a',NULL),(15,48,'<com.mobclick.android.MobclickAgent: void openFeedbackActivity(android.content.Context)>',6,'a',NULL),(16,49,'<com.han.nz1.MM1$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',51,'a',NULL),(17,27,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(18,50,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(19,51,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(20,17,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',333,'a',NULL),(21,52,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(22,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(23,12,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(24,53,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(25,32,'<com.mt.airad.MultiAD: void _$2()>',7,'r',NULL),(26,10,'<com.anderfans.plattskj.ImageGalleryActivity: boolean onKeyDown(int,android.view.KeyEvent)>',8,'a',NULL),(27,54,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(28,55,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(29,56,'<com.anderfans.plattskj.AnderPlattsActivity$5: void run()>',6,'a',NULL),(30,57,'<sunkay.BookFanZuiXinLiXue.Chapter$ClickEvent: void onClick(android.view.View)>',76,'a',NULL),(31,58,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(32,59,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(33,2,'<com.anderfans.plattskj.AnderPlattsActivity: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(34,13,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',323,'a',NULL),(35,60,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(36,63,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(37,64,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(38,65,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(39,66,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(40,36,'<com.htcheng.jbook.Main$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(41,68,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(42,16,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',333,'a',NULL),(43,27,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(44,69,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(45,70,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(46,71,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(47,47,'<com.han.nz1.Main$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(48,72,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(49,73,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(50,47,'<com.han.nz1.Main$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',26,'a',NULL),(51,74,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(52,17,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',300,'a',NULL),(53,76,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(54,13,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(55,77,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(56,78,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(57,79,'<cn.com.xiaol.livewallpaper.jpqcmn.MainActivity$3: void onClick(android.view.View)>',6,'a',NULL),(58,58,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(59,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(60,83,'<com.anderfans.plattskj.NewsActivity$5: void onClick(android.view.View)>',10,'a',NULL),(61,84,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(62,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',322,'a',NULL),(63,47,'<com.han.nz1.Main$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(64,86,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(65,87,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(66,88,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(67,89,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(68,90,'<cn.com.xiaol.livewallpaper.jpqcmn.MainActivity$2: void onClick(android.view.View)>',5,'a',NULL),(69,63,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(70,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(71,91,'<com.han.nz1.MM3$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(72,92,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(73,58,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(74,47,'<com.han.nz1.Main$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,4,1),(3,5,5),(4,7,1),(5,13,1),(6,16,1),(7,21,1),(8,22,5),(9,23,5),(10,27,1),(11,28,1),(12,30,1),(13,33,7),(14,34,5),(15,36,8),(16,38,5),(17,41,5),(18,42,1),(19,43,1),(20,45,1),(21,47,5),(22,48,1),(23,49,1),(24,52,5),(25,53,5),(26,55,5),(27,58,5),(28,64,5),(29,68,5),(30,70,1),(31,71,1),(32,72,5),(33,74,1),(34,76,5),(35,77,1),(36,81,1),(37,82,1),(38,83,11),(39,84,11),(40,85,11),(41,87,11),(42,88,11),(43,89,11),(44,92,11),(45,93,11),(46,100,12),(47,105,5),(48,106,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,7,2),(3,13,1),(4,16,2),(5,21,1),(6,27,2),(7,28,1),(8,30,2),(9,42,1),(10,43,3),(11,45,2),(12,48,1),(13,49,2),(14,70,1),(15,71,2),(16,74,1),(17,77,2),(18,81,1),(19,82,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/htcheng/jbook/HelpActivity'),(2,6,'com/anderfans/plattskj/ContentListActivity'),(3,8,'NULL-CONSTANT'),(4,9,'com/anderfans/plattskj/NewsActivity'),(5,10,'NULL-CONSTANT'),(6,12,'com/anderfans/plattskj/ContentListActivity'),(7,14,'NULL-CONSTANT'),(8,15,'com/han/nz1/MM3'),(9,17,'com/anderfans/plattskj/AnderPlattsActivity'),(10,18,'com/mobclick/android/UmengFeedback'),(11,19,'com/han/nz1/Main'),(12,24,'(.*)'),(13,25,'NULL-CONSTANT'),(14,29,'(.*)'),(15,32,'com/anderfans/plattskj/AnderPlattsActivity'),(16,31,'com/waps/OffersWebView'),(17,37,'(.*)'),(18,35,'com/waps/OffersWebView'),(19,39,'com/waps/OffersWebView'),(20,44,'com/waps/OffersWebView'),(21,46,'(.*)'),(22,51,'NULL-CONSTANT'),(23,50,'com/waps/OffersWebView'),(24,54,'com/htcheng/jbook/TxtViewerActivity'),(25,56,'(.*)'),(26,57,'(.*)'),(27,59,'com/waps/OffersWebView'),(28,61,'com/han/nz1/MM1'),(29,60,'com/waps/OffersWebView'),(30,62,'com/waps/OffersWebView'),(31,63,'com/waps/OffersWebView'),(32,65,'com/waps/OffersWebView'),(33,67,'com/han/nz1/MM3'),(34,66,'com/waps/OffersWebView'),(35,75,'com/waps/OffersWebView'),(36,78,'cn/com/xiaol/livewallpaper/jpqcmn/SettingsActivity'),(37,79,'com/waps/OffersWebView'),(38,86,'com/waps/OffersWebView'),(39,90,'(.*)'),(40,91,'com/han/nz1/MM3'),(41,94,'NULL-CONSTANT'),(42,95,'com/waps/OffersWebView'),(43,96,'com/waps/OffersWebView'),(44,97,'com/waps/OffersWebView'),(45,98,'com/waps/OffersWebView'),(46,99,'com/waps/OffersWebView'),(47,102,'(.*)'),(48,101,'com/waps/OffersWebView'),(49,103,'com/han/nz1/Main'),(50,104,'NULL-CONSTANT'),(51,107,'com/han/nz1/MM3');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,5,2),(3,22,3),(4,23,4),(5,34,5),(6,38,6),(7,41,7),(8,47,8),(9,52,9),(10,53,10),(11,55,11),(12,58,12),(13,64,13),(14,68,14),(15,72,15),(16,76,16),(17,105,17),(18,106,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,9,'cid'),(2,15,'index'),(3,31,'Notify_Url_Params'),(4,31,'UrlPath'),(5,31,'ACTIVITY_FLAG'),(6,33,'adViewLeaveParameter'),(7,31,'isFinshClose'),(8,31,'offers_webview_tag'),(9,35,'Notify_Url_Params'),(10,35,'UrlPath'),(11,36,'adViewLeaveParameter'),(12,35,'ACTIVITY_FLAG'),(13,35,'isFinshClose'),(14,39,'UrlPath'),(15,35,'offers_webview_tag'),(16,39,'ACTIVITY_FLAG'),(17,39,'isFinshClose'),(18,39,'offers_webview_tag'),(19,44,'UrlPath'),(20,44,'ACTIVITY_FLAG'),(21,44,'isFinshClose'),(22,44,'offers_webview_tag'),(23,50,'USER_ID'),(24,50,'CLIENT_PACKAGE'),(25,50,'Offers_URL'),(26,50,'offers_webview_tag'),(27,50,'URL_PARAMS'),(28,54,'(.*)'),(29,59,'UrlPath'),(30,59,'ACTIVITY_FLAG'),(31,59,'isFinshClose'),(32,59,'offers_webview_tag'),(33,60,'Notify_Url_Params'),(34,60,'UrlPath'),(35,62,'Notify_Url_Params'),(36,60,'ACTIVITY_FLAG'),(37,63,'Notify_Url_Params'),(38,60,'isFinshClose'),(39,62,'UrlPath'),(40,63,'UrlPath'),(41,60,'offers_webview_tag'),(42,62,'ACTIVITY_FLAG'),(43,63,'ACTIVITY_FLAG'),(44,62,'isFinshClose'),(45,63,'isFinshClose'),(46,62,'offers_webview_tag'),(47,63,'offers_webview_tag'),(48,65,'UrlPath'),(49,65,'ACTIVITY_FLAG'),(50,66,'UrlPath'),(51,65,'isFinshClose'),(52,66,'ACTIVITY_FLAG'),(53,65,'offers_webview_tag'),(54,67,'index'),(55,66,'isFinshClose'),(56,66,'offers_webview_tag'),(57,75,'USER_ID'),(58,75,'CLIENT_PACKAGE'),(59,75,'Offers_URL'),(60,75,'offers_webview_tag'),(61,75,'URL_PARAMS'),(62,79,'CLIENT_PACKAGE'),(63,79,'URL'),(64,79,'isFinshClose'),(65,79,'offers_webview_tag'),(66,83,'android.intent.extra.INTENT'),(67,84,'android.intent.extra.INTENT'),(68,85,'android.intent.extra.TITLE'),(69,85,'android.intent.extra.INTENT'),(70,86,'USER_ID'),(71,86,'CLIENT_PACKAGE'),(72,86,'Offers_URL'),(73,87,'android.intent.extra.INTENT'),(74,86,'offers_webview_tag'),(75,86,'URL_PARAMS'),(76,88,'android.intent.extra.TITLE'),(77,88,'android.intent.extra.INTENT'),(78,89,'android.intent.extra.INTENT'),(79,91,'index'),(80,92,'android.intent.extra.TITLE'),(81,92,'android.intent.extra.INTENT'),(82,93,'android.intent.extra.TITLE'),(83,95,'USER_ID'),(84,93,'android.intent.extra.INTENT'),(85,95,'CLIENT_PACKAGE'),(86,95,'Offers_URL'),(87,95,'offers_webview_tag'),(88,95,'URL_PARAMS'),(89,96,'Notify_Url_Params'),(90,97,'Notify_Url_Params'),(91,96,'UrlPath'),(92,97,'UrlPath'),(93,96,'ACTIVITY_FLAG'),(94,97,'ACTIVITY_FLAG'),(95,96,'isFinshClose'),(96,97,'isFinshClose'),(97,96,'offers_webview_tag'),(98,97,'offers_webview_tag'),(99,98,'UrlPath'),(100,98,'ACTIVITY_FLAG'),(101,99,'UrlPath'),(102,98,'isFinshClose'),(103,99,'ACTIVITY_FLAG'),(104,98,'offers_webview_tag'),(105,99,'isFinshClose'),(106,99,'offers_webview_tag'),(107,101,'USER_ID'),(108,101,'CLIENT_PACKAGE'),(109,101,'Offers_URL'),(110,101,'offers_webview_tag'),(111,101,'URL_PARAMS'),(112,107,'index');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,1),(7,7,3),(8,8,3),(9,9,4),(10,10,4),(11,11,4),(12,12,1),(13,13,2),(14,14,6),(15,15,6),(16,16,6),(17,17,9),(18,18,10),(19,19,7),(20,20,8),(21,21,6),(22,22,6),(23,23,6),(24,24,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,6,1),(5,12,1);
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
INSERT INTO `IFData` VALUES (1,14,'package',NULL,NULL,NULL,NULL,NULL),(2,15,'package',NULL,NULL,NULL,NULL,NULL),(3,16,'package',NULL,NULL,NULL,NULL,NULL),(4,21,'package',NULL,NULL,NULL,NULL,NULL),(5,22,'package',NULL,NULL,NULL,NULL,NULL),(6,23,'package',NULL,NULL,NULL,NULL,NULL),(7,24,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,2,'application','vnd.android.package-archive'),(2,5,'application','vnd.android.package-archive'),(3,22,'application','vnd.android.package-archive'),(4,23,'application','vnd.android.package-archive'),(5,34,'application','vnd.android.package-archive'),(6,41,'application','vnd.android.package-archive'),(7,52,'application','vnd.android.package-archive'),(8,53,'application','vnd.android.package-archive'),(9,55,'application','vnd.android.package-archive'),(10,58,'application','vnd.android.package-archive'),(11,64,'application','vnd.android.package-archive'),(12,68,'application','vnd.android.package-archive'),(13,72,'application','vnd.android.package-archive'),(14,76,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.htcheng.jbook'),(2,4,'(.*)'),(3,6,'com.anderfans.plattskj'),(4,7,'(.*)'),(5,8,'NULL-CONSTANT'),(6,9,'com.anderfans.plattskj'),(7,10,'NULL-CONSTANT'),(8,12,'com.anderfans.plattskj'),(9,14,'NULL-CONSTANT'),(10,13,'(.*)'),(11,15,'com.han.nz1'),(12,16,'(.*)'),(13,17,'com.anderfans.plattskj'),(14,18,'cn.com.xiaol.livewallpaper.jpqcmn'),(15,19,'com.han.nz1'),(16,21,'(.*)'),(17,24,'(.*)'),(18,25,'NULL-CONSTANT'),(19,27,'(.*)'),(20,28,'(.*)'),(21,29,'(.*)'),(22,30,'(.*)'),(23,32,'com.anderfans.plattskj'),(24,31,'com.shirley.livewallpaper.JIUZAIGOU'),(25,37,'com.anderfans.plattskj'),(26,35,'com.htcheng.jbook'),(27,39,'com.shirley.livewallpaper.JIUZAIGOU'),(28,42,'(.*)'),(29,45,'(.*)'),(30,44,'com.htcheng.jbook'),(31,46,'(.*)'),(32,48,'NULL-CONSTANT'),(33,49,'NULL-CONSTANT'),(34,51,'NULL-CONSTANT'),(35,50,'com.anderfans.plattskj'),(36,54,'com.htcheng.jbook'),(37,56,'(.*)'),(38,57,'(.*)'),(39,59,'cn.com.xiaol.livewallpaper.jpqcmn'),(40,61,'com.han.nz1'),(41,60,'com.shirley.livewallpaper.shangmai'),(42,62,'sunkay.BookFanZuiXinLiXue'),(43,63,'cn.com.xiaol.livewallpaper.jpqcmn'),(44,65,'com.shirley.livewallpaper.shangmai'),(45,67,'com.han.nz1'),(46,66,'sunkay.BookFanZuiXinLiXue'),(47,70,'(.*)'),(48,71,'(.*)'),(49,74,'(.*)'),(50,77,'(.*)'),(51,75,'sunkay.BookFanZuiXinLiXue'),(52,78,'cn.com.xiaol.livewallpaper.jpqcmn'),(53,79,'com.han.nz1'),(54,81,'(.*)'),(55,82,'(.*)'),(56,86,'com.han.nz1'),(57,90,'(.*)'),(58,91,'com.han.nz1'),(59,94,'NULL-CONSTANT'),(60,95,'cn.com.xiaol.livewallpaper.jpqcmn'),(61,96,'com.anderfans.plattskj'),(62,97,'com.han.nz1'),(63,98,'com.anderfans.plattskj'),(64,99,'com.han.nz1'),(65,102,'(.*)'),(66,101,'com.anderfans.plattskj'),(67,103,'com.han.nz1'),(68,104,'NULL-CONSTANT'),(69,107,'com.han.nz1');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,1,0),(3,3,0),(4,19,0),(5,18,0),(6,20,0),(7,22,0),(8,21,0),(9,25,0),(10,24,0),(11,29,0),(12,30,0),(13,35,0),(14,36,0),(15,37,0),(16,38,0),(17,39,0),(18,40,0),(19,41,0),(20,41,0),(21,42,0),(22,43,0),(23,44,0),(24,45,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,4,1,0),(4,4,1,0),(5,5,1,0),(6,6,0,0),(7,4,1,0),(8,7,0,0),(9,8,0,0),(10,9,0,0),(11,10,1,0),(12,11,0,0),(13,10,1,0),(14,12,0,0),(15,13,0,0),(16,10,1,0),(17,14,0,0),(18,15,0,0),(19,16,0,0),(20,17,1,0),(21,17,1,0),(22,18,1,0),(23,19,1,0),(24,20,0,0),(25,21,0,0),(26,22,1,0),(27,17,1,0),(28,22,1,0),(29,23,0,0),(30,22,1,0),(31,24,0,0),(32,26,0,0),(33,25,1,0),(34,27,1,0),(35,28,0,0),(36,25,1,0),(37,29,0,0),(38,30,1,0),(39,24,0,0),(40,31,1,0),(41,32,1,0),(42,31,1,0),(43,33,1,0),(44,28,0,0),(45,31,1,0),(46,34,0,0),(47,35,1,0),(48,31,1,0),(49,31,1,0),(50,36,0,0),(51,37,0,0),(52,38,1,0),(53,39,1,0),(54,40,0,0),(55,41,1,0),(56,42,0,0),(57,43,0,0),(58,44,1,0),(59,45,0,0),(60,46,0,0),(61,47,0,0),(62,48,0,0),(63,45,0,0),(64,49,1,0),(65,46,0,0),(66,48,0,0),(67,50,0,0),(68,51,1,0),(69,52,1,0),(70,52,1,0),(71,52,1,0),(72,53,1,0),(73,54,1,0),(74,54,1,0),(75,55,0,0),(76,56,1,0),(77,54,1,0),(78,57,0,0),(79,58,0,0),(80,59,1,0),(81,59,1,0),(82,59,1,0),(83,60,1,0),(84,60,1,0),(85,60,1,0),(86,61,0,0),(87,60,1,0),(88,60,1,0),(89,60,1,0),(90,62,0,0),(91,63,0,0),(92,60,1,0),(93,60,1,0),(94,64,0,0),(95,65,0,0),(96,66,0,0),(97,67,0,0),(98,66,0,0),(99,67,0,0),(100,68,1,0),(101,69,0,0),(102,70,0,0),(103,71,0,0),(104,72,0,0),(105,73,1,0),(106,73,1,0),(107,74,0,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.ACCESS_NETWORK_STATE'),(13,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.BIND_WALLPAPER'),(3,'android.permission.GET_TASKS'),(4,'android.permission.INTERNET'),(9,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(2,'android.permission.SET_WALLPAPER'),(12,'android.permission.VIBRATE'),(7,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'http://blog.163.com/sunkay_app/blog/static/19191703720117294041998/',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,1,2),(4,2,2),(5,1,3),(6,2,3),(7,1,4),(8,2,4),(9,3,1),(10,1,5),(11,2,5),(12,3,3),(13,1,6),(14,3,4),(15,2,6),(16,2,7),(17,3,5),(18,3,6),(19,4,1),(20,4,4),(21,5,1),(22,4,5),(23,5,4),(24,4,6),(25,5,5),(26,4,8),(27,5,6),(28,6,1),(29,4,9),(30,5,8),(31,6,4),(32,5,9),(33,6,5),(34,6,6),(35,6,8),(36,6,10),(37,6,11),(38,6,12),(39,6,13),(40,6,14),(41,7,16),(42,7,1),(43,7,3),(44,7,4),(45,7,5),(46,7,6),(47,7,9),(48,7,13);
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

-- Dump completed on 2015-10-09  0:39:25
