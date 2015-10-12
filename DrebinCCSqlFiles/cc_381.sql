-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_381
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(8,'NULL-CONSTANT'),(11,'android.bluetooth.adapter.action.DISCOVERY_FINISHED'),(18,'android.bluetooth.adapter.action.REQUEST_DISCOVERABLE'),(15,'android.bluetooth.adapter.action.REQUEST_ENABLE'),(14,'android.bluetooth.device.action.FOUND'),(3,'android.intent.action.BOOT_COMPLETED'),(16,'android.intent.action.CHOOSER'),(6,'android.intent.action.CREATE_SHORTCUT'),(4,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(10,'android.intent.action.SCREEN_OFF'),(12,'android.intent.action.SCREEN_ON'),(5,'android.intent.action.VIEW'),(13,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(1,'android.service.wallpaper.WallpaperService'),(9,'cn.com.gw.livewallpaper_yct.showAdFinish'),(2,'push_alm');
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
INSERT INTO `Applications` VALUES (1,'com.shirley.livewallpaper.waterfall',18),(2,'com.shirley.livewallpaper.shangmai',18),(3,'com.dangerb.livewallpaper.my',12),(4,'com.androidemu.harveshuangjl3',211),(5,'g.calculator.instax',6),(6,'cn.com.gw.livewallpaper_yct',11),(7,'com.chenchen.CrashLand',7);
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
INSERT INTO `CategoryStrings` VALUES (1,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(2,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.shirley.livewallpaper.waterfall.LiveWallpaperSetting'),(2,1,'com.waps.OffersWebView'),(3,1,'com.shirley.livewallpaper.waterfall.CubeWallpaper1'),(4,1,'com.jeef.wapsConnection.AlmService'),(5,1,'com.jeef.wapsConnection.BootService'),(6,2,'com.shirley.livewallpaper.shangmai.LiveWallpaperSetting'),(7,2,'com.waps.OffersWebView'),(8,2,'com.shirley.livewallpaper.shangmai.CubeWallpaper1'),(9,3,'com.dangerb.livewallpaper.my.LiveWallpaperSetting'),(10,2,'com.jeef.wapsConnection.AlmService'),(11,3,'com.waps.OffersWebView'),(12,3,'com.dangerb.livewallpaper.my.CubeWallpaper1'),(13,2,'com.jeef.wapsConnection.BootService'),(14,3,'com.jeef.wapsConnection.AlmService'),(15,3,'com.jeef.wapsConnection.BootService'),(16,4,'com.waps.OffersWebView'),(17,4,'com.androidemu.harveshuangjl3.MainActivity'),(18,4,'com.androidemu.harveshuangjl3.FileChooser'),(19,4,'com.androidemu.harveshuangjl3.StateSlotsActivity'),(20,4,'com.androidemu.harveshuangjl3.KeyProfilesActivity'),(21,4,'com.androidemu.harveshuangjl3.HelpActivity'),(22,4,'com.androidemu.harveshuangjl3.DeviceListActivity'),(23,4,'com.androidemu.harveshuangjl3.EmulatorSettings'),(24,4,'com.androidemu.harveshuangjl3.EmulatorActivity'),(25,5,'g.calculator.instax.InstaxCalculatorTab'),(26,4,'com.vpon.adon.android.WebInApp'),(27,4,'com.androidemu.harveshuangjl3.CreateShortcuts'),(28,5,'g.calculator.instax.InstaxCalculator'),(29,5,'g.calculator.instax.InstaxCalculatorSimp'),(30,5,'g.calculator.instax.InstaxCalculatorPref'),(31,4,'com.androidemu.harveshuangjl3.EmulatorService'),(32,5,'g.calculator.instax.InstaxCalculatorAbout'),(33,5,'com.waps.OffersWebView'),(34,5,'com.google.ads.AdActivity'),(35,6,'cn.com.gw.livewallpaper_yct.MainActivity'),(36,5,'net.youmi.android.AdActivity'),(37,6,'cn.com.gw.livewallpaper_yct.SettingsActivity'),(38,6,'com.mt.airad.MultiAD'),(39,6,'com.waps.OffersWebView'),(40,6,'com.mobclick.android.UmengFeedback'),(41,6,'cn.com.gw.livewallpaper_yct.YCTliveWallpaper'),(42,7,'com.chenchen.CrashLand.StartActivity'),(43,7,'com.chenchen.CrashLand.IllustrationActivity'),(44,7,'com.chenchen.CrashLand.MenuActivity'),(45,7,'com.chenchen.CrashLand.CrashLand'),(46,7,'com.chenchen.CrashLand.SettingActivity'),(47,7,'com.chenchen.CrashLand.LeaderboardActivity'),(48,7,'com.waps.OffersWebView'),(49,7,'com.google.ads.AdActivity'),(50,1,'com.waps.q'),(51,1,'com.waps.ac'),(52,1,'com.waps.z'),(53,2,'com.waps.z'),(54,1,'com.waps.o'),(55,1,'com.waps.aa'),(56,2,'com.waps.o'),(57,2,'com.waps.q'),(58,2,'com.waps.ac'),(59,3,'com.waps.z'),(60,3,'com.waps.q'),(61,2,'com.waps.aa'),(62,3,'com.waps.aa'),(63,3,'com.waps.ac'),(64,3,'com.waps.o'),(65,6,'com.waps.s'),(66,7,'com.waps.z'),(67,7,'com.waps.s'),(68,6,'com.waps.aa'),(69,5,'net.youmi.android.be'),(70,7,'com.waps.o'),(71,6,'com.mobclick.android.MobclickAgent'),(72,7,'com.waps.q'),(73,5,'com.waps.s'),(74,6,'com.mt.airad.lIIIIIIIlIlIIIIl'),(75,7,'com.waps.aa'),(76,4,'com.waps.o'),(77,6,'com.waps.z'),(78,4,'com.androidemu.harveshuangjl3.DeviceListActivity$3'),(79,5,'com.waps.z'),(80,6,'com.waps.o'),(81,4,'com.waps.q'),(82,6,'com.waps.q'),(83,6,'com.mt.airad.IlllllIlIlllIIll'),(84,4,'com.waps.s'),(85,6,'cn.com.gw.livewallpaper_yct.MainActivity$2'),(86,7,'com.waps.ac'),(87,5,'com.waps.q'),(88,6,'cn.com.gw.livewallpaper_yct.MainActivity$3'),(89,4,'com.waps.ac'),(90,6,'com.mt.airad.IIlIIIIlIIlIIlII'),(91,4,'com.waps.z'),(92,5,'com.waps.AppConnect'),(93,6,'com.waps.ac'),(94,6,'com.waps.AppConnect'),(95,5,'net.youmi.android.t'),(96,5,'com.waps.aa'),(97,4,'com.waps.AppConnect'),(98,5,'com.waps.ac'),(99,5,'com.waps.o'),(100,4,'com.waps.aa');
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
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'ACTIVITY_FLAG'),(2,4,'CLIENT_PACKAGE'),(3,5,'CLIENT_PACKAGE'),(4,1,'CLIENT_PACKAGE'),(5,2,'URL'),(6,2,'isFinshClose'),(7,2,'CLIENT_PACKAGE'),(8,1,'UMENG_APPKEY'),(9,4,'WAPS_PID'),(10,5,'WAPS_PID'),(11,2,'WAPS_PID'),(12,1,'WAPS_PID'),(13,1,'WAPS_ID'),(14,4,'WAPS_ID'),(15,5,'WAPS_ID'),(16,2,'WAPS_ID'),(17,4,'DEVICE_ID'),(18,5,'DEVICE_ID'),(19,2,'DEVICE_ID'),(20,1,'DEVICE_ID'),(21,2,'UrlPath'),(22,2,'Offers_URL'),(23,2,'offers_webview_tag'),(24,2,'URL_PARAMS'),(25,1,'UMENG_CHANNEL'),(26,4,'WAPS_TESTMODE'),(27,5,'WAPS_TESTMODE'),(28,1,'WAPS_TESTMODE'),(29,7,'Offers_URL'),(30,2,'Notify_Url_Params'),(31,2,'Notify_Id'),(32,2,'SHWO_FLAG'),(33,4,'APP_ID'),(34,5,'APP_ID'),(35,2,'APP_ID'),(36,1,'APP_ID'),(37,10,'WAPS_ID'),(38,13,'WAPS_ID'),(39,6,'WAPS_ID'),(40,10,'WAPS_PID'),(41,13,'WAPS_PID'),(42,7,'WAPS_PID'),(43,6,'WAPS_PID'),(44,6,'UMENG_CHANNEL'),(45,7,'Notify_Id'),(46,7,'WAPS_ID'),(47,10,'DEVICE_ID'),(48,13,'DEVICE_ID'),(49,7,'DEVICE_ID'),(50,6,'DEVICE_ID'),(51,7,'URL'),(52,7,'isFinshClose'),(53,10,'WAPS_TESTMODE'),(54,13,'WAPS_TESTMODE'),(55,6,'WAPS_TESTMODE'),(56,10,'CLIENT_PACKAGE'),(57,13,'CLIENT_PACKAGE'),(58,7,'CLIENT_PACKAGE'),(59,6,'CLIENT_PACKAGE'),(60,7,'offers_webview_tag'),(61,2,'USER_ID'),(62,7,'USER_ID'),(63,7,'UrlPath'),(64,11,'Notify_Id'),(65,11,'Offers_URL'),(66,11,'USER_ID'),(67,14,'APP_ID'),(68,15,'APP_ID'),(69,11,'APP_ID'),(70,7,'Notify_Url_Params'),(71,9,'APP_ID'),(72,14,'CLIENT_PACKAGE'),(73,15,'CLIENT_PACKAGE'),(74,11,'CLIENT_PACKAGE'),(75,9,'CLIENT_PACKAGE'),(76,11,'SHWO_FLAG'),(77,7,'ACTIVITY_FLAG'),(78,6,'UMENG_APPKEY'),(79,7,'URL_PARAMS'),(80,10,'APP_ID'),(81,13,'APP_ID'),(82,7,'APP_ID'),(83,6,'APP_ID'),(84,7,'SHWO_FLAG'),(85,11,'URL'),(86,11,'URL_PARAMS'),(87,11,'UrlPath'),(88,11,'isFinshClose'),(89,14,'WAPS_ID'),(90,15,'WAPS_ID'),(91,9,'WAPS_ID'),(92,14,'WAPS_TESTMODE'),(93,15,'WAPS_TESTMODE'),(94,9,'WAPS_TESTMODE'),(95,11,'offers_webview_tag'),(96,9,'UMENG_CHANNEL'),(97,11,'WAPS_ID'),(98,11,'Notify_Url_Params'),(99,9,'UMENG_APPKEY'),(100,14,'DEVICE_ID'),(101,15,'DEVICE_ID'),(102,11,'DEVICE_ID'),(103,9,'DEVICE_ID'),(104,11,'ACTIVITY_FLAG'),(105,14,'WAPS_PID'),(106,15,'WAPS_PID'),(107,11,'WAPS_PID'),(108,9,'WAPS_PID'),(109,39,'USER_ID'),(110,39,'URL'),(111,48,'Notify_Url_Params'),(112,32,'CLIENT_PACKAGE'),(113,48,'UrlPath'),(114,33,'CLIENT_PACKAGE'),(115,48,'Notify_Id'),(116,39,'isFinshClose'),(117,29,'CLIENT_PACKAGE'),(118,48,'URL'),(119,39,'Notify_Url_Params'),(120,36,'CLIENT_PACKAGE'),(121,34,'CLIENT_PACKAGE'),(122,39,'UrlPath'),(123,33,'offers_webview_tag'),(124,39,'APP_ID'),(125,37,'APP_ID'),(126,35,'APP_ID'),(127,39,'offers_webview_tag'),(128,44,'WAPS_ID'),(129,42,'WAPS_ID'),(130,45,'WAPS_ID'),(131,47,'WAPS_ID'),(132,48,'WAPS_ID'),(133,46,'WAPS_ID'),(134,44,'WAPS_PID'),(135,42,'WAPS_PID'),(136,45,'WAPS_PID'),(137,47,'WAPS_PID'),(138,48,'WAPS_PID'),(139,46,'WAPS_PID'),(140,48,'Offers_URL'),(141,48,'SHWO_FLAG'),(142,48,'ACTIVITY_FLAG'),(143,48,'URL_PARAMS'),(144,39,'CLIENT_PACKAGE'),(145,44,'APP_ID'),(146,37,'CLIENT_PACKAGE'),(147,42,'APP_ID'),(148,35,'CLIENT_PACKAGE'),(149,45,'APP_ID'),(150,37,'UMENG_CHANNEL'),(151,47,'APP_ID'),(152,35,'UMENG_CHANNEL'),(153,48,'APP_ID'),(154,46,'APP_ID'),(155,39,'DEVICE_ID'),(156,37,'DEVICE_ID'),(157,35,'DEVICE_ID'),(158,33,'URL'),(159,17,'title'),(160,38,'adURL'),(161,18,'title'),(162,37,'UMENG_APPKEY'),(163,35,'UMENG_APPKEY'),(164,39,'SHWO_FLAG'),(165,36,'EB80F3291A8E469c962CA133BDC549D7'),(166,16,'Offers_URL'),(167,39,'WAPS_ID'),(168,37,'WAPS_ID'),(169,44,'CLIENT_PACKAGE'),(170,35,'WAPS_ID'),(171,17,'WAPS_ID'),(172,42,'CLIENT_PACKAGE'),(173,39,'Notify_Id'),(174,24,'WAPS_ID'),(175,45,'CLIENT_PACKAGE'),(176,16,'WAPS_ID'),(177,47,'CLIENT_PACKAGE'),(178,18,'WAPS_ID'),(179,48,'CLIENT_PACKAGE'),(180,46,'CLIENT_PACKAGE'),(181,16,'SHWO_FLAG'),(182,48,'isFinshClose'),(183,48,'USER_ID'),(184,39,'WAPS_PID'),(185,37,'WAPS_PID'),(186,32,'APP_ID'),(187,35,'WAPS_PID'),(188,33,'APP_ID'),(189,38,'adID'),(190,29,'APP_ID'),(191,39,'URL_PARAMS'),(192,36,'APP_ID'),(193,39,'Offers_URL'),(194,34,'APP_ID'),(195,36,'D780FBF4215247bcBB1AC0AD33C474FE'),(196,33,'Notify_Id'),(197,33,'isFinshClose'),(198,33,'SHWO_FLAG'),(199,44,'DEVICE_ID'),(200,32,'WAPS_PID'),(201,42,'DEVICE_ID'),(202,33,'WAPS_PID'),(203,45,'DEVICE_ID'),(204,47,'DEVICE_ID'),(205,29,'WAPS_PID'),(206,36,'WAPS_PID'),(207,48,'DEVICE_ID'),(208,46,'DEVICE_ID'),(209,34,'WAPS_PID'),(210,39,'ACTIVITY_FLAG'),(211,48,'offers_webview_tag'),(212,16,'UrlPath'),(213,34,'params'),(214,16,'isFinshClose'),(215,17,'currentDir'),(216,18,'currentDir'),(217,16,'ACTIVITY_FLAG'),(218,33,'Offers_URL'),(219,33,'URL_PARAMS'),(220,17,'APP_ID'),(221,36,'172C94EDC717477aBF600D7898A64A8E'),(222,24,'APP_ID'),(223,33,'USER_ID'),(224,16,'APP_ID'),(225,34,'com.google.ads.AdOpener'),(226,18,'APP_ID'),(227,33,'UrlPath'),(228,19,'saveMode'),(229,16,'URL_PARAMS'),(230,16,'Notify_Url_Params'),(231,16,'offers_webview_tag'),(232,17,'CLIENT_PACKAGE'),(233,24,'CLIENT_PACKAGE'),(234,18,'CLIENT_PACKAGE'),(235,33,'Notify_Url_Params'),(236,16,'CLIENT_PACKAGE'),(237,33,'ACTIVITY_FLAG'),(238,16,'Notify_Id'),(239,32,'WAPS_ID'),(240,33,'WAPS_ID'),(241,29,'WAPS_ID'),(242,36,'WAPS_ID'),(243,34,'WAPS_ID'),(244,17,'filters'),(245,18,'filters'),(246,17,'DEVICE_ID'),(247,24,'DEVICE_ID'),(248,16,'DEVICE_ID'),(249,18,'DEVICE_ID'),(250,17,'WAPS_PID'),(251,34,'action'),(252,24,'WAPS_PID'),(253,36,'D50EF1926ADD471892E72BCE6D7E032C'),(254,16,'WAPS_PID'),(255,32,'DEVICE_ID'),(256,18,'WAPS_PID'),(257,33,'DEVICE_ID'),(258,29,'DEVICE_ID'),(259,36,'DEVICE_ID'),(260,34,'DEVICE_ID'),(261,24,'device_address'),(262,16,'USER_ID'),(263,16,'URL'),(264,20,'title');
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',1,7,NULL),(4,4,'r',1,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',1,7,NULL),(9,9,'a',1,NULL,NULL),(10,10,'r',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'s',1,7,NULL),(13,13,'r',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',1,7,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'r',1,NULL,NULL),(51,57,'r',1,NULL,NULL),(52,60,'r',1,NULL,NULL),(53,72,'r',1,NULL,NULL),(54,74,'r',1,NULL,NULL),(55,78,'r',1,NULL,NULL),(56,81,'r',1,NULL,NULL),(57,82,'r',1,NULL,NULL),(58,83,'r',1,NULL,NULL),(59,87,'r',1,NULL,NULL),(60,90,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,5,7),(6,6,2),(7,7,2),(8,8,7),(9,9,7),(10,10,7),(11,11,11),(12,12,7),(13,13,11),(14,14,11),(15,15,7),(16,16,11),(17,17,11),(18,18,11),(19,19,35),(20,20,35),(21,21,38),(22,22,48),(23,23,44),(24,23,45),(25,23,42),(26,23,46),(27,23,47),(28,24,39),(29,25,36),(30,26,48),(31,27,48),(32,28,39),(33,29,35),(34,30,35),(35,31,34),(36,31,36),(37,31,32),(38,31,29),(39,32,48),(40,33,16),(41,34,39),(42,35,33),(43,36,39),(44,37,42),(45,37,46),(46,37,47),(47,37,44),(48,37,45),(49,38,17),(50,38,18),(51,39,33),(52,40,18),(53,40,17),(54,40,24),(55,41,35),(56,42,48),(57,43,29),(58,43,32),(59,43,36),(60,43,34),(61,44,17),(62,44,18),(63,45,39),(64,46,16),(65,47,44),(66,47,45),(67,47,42),(68,47,47),(69,47,46),(70,48,35),(71,49,22),(72,49,16),(73,50,48),(74,51,16),(75,52,36),(76,52,32),(77,53,39),(78,54,37),(79,55,33),(80,57,24),(81,56,36),(82,56,34),(83,56,32),(84,56,29),(85,58,17),(86,58,18),(87,59,18),(88,59,17),(89,60,36),(90,61,24),(91,62,24),(92,63,16),(93,64,24),(94,64,17),(95,64,18),(96,65,33),(97,66,24),(98,67,34),(99,68,24),(100,69,18),(101,69,17),(102,69,24),(103,70,33),(104,71,23),(105,72,33),(106,73,24),(107,74,23),(108,75,24),(109,76,24),(110,76,17),(111,76,18),(112,77,16),(113,78,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',300,'a',NULL),(2,51,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(3,52,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(4,2,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',333,'a',NULL),(5,53,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(6,54,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(7,55,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(8,56,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(9,7,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',333,'a',NULL),(10,58,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(11,59,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(12,7,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',300,'a',NULL),(13,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(14,11,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(15,61,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(16,62,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(17,63,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(18,64,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(19,65,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(20,65,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(21,38,'<com.mt.airad.MultiAD: void _$2()>',7,'r',NULL),(22,66,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(23,67,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(24,68,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(25,69,'<net.youmi.android.be: void a(android.content.Context,java.lang.String)>',6,'a',NULL),(26,70,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(27,48,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',296,'a',NULL),(28,39,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(29,71,'<com.mobclick.android.MobclickAgent: void openFeedbackActivity(android.content.Context)>',6,'a',NULL),(30,65,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(31,73,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(32,75,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(33,76,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(34,77,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(35,79,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(36,80,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(37,67,'<com.waps.s: void onClick(android.view.View)>',37,'a',NULL),(38,17,'<com.androidemu.harveshuangjl3.MainActivity: void onFileSelected(android.net.Uri)>',11,'a',NULL),(39,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(40,84,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(41,85,'<cn.com.gw.livewallpaper_yct.MainActivity$2: void onClick(android.view.View)>',5,'a',NULL),(42,86,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(43,73,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(44,17,'<com.androidemu.harveshuangjl3.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',0),(45,39,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',318,'a',NULL),(46,16,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(47,67,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(48,88,'<cn.com.gw.livewallpaper_yct.MainActivity$3: void onClick(android.view.View)>',6,'a',NULL),(49,89,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(50,48,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',321,'a',NULL),(51,91,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(52,92,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(53,93,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(54,94,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(55,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(56,73,'<com.waps.s: void onClick(android.view.View)>',62,'a',NULL),(57,24,'<com.androidemu.harveshuangjl3.EmulatorActivity: boolean checkBluetoothEnabled(int)>',7,'a',NULL),(58,17,'<com.androidemu.harveshuangjl3.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(59,17,'<com.androidemu.harveshuangjl3.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',0),(60,95,'<net.youmi.android.t: void onClick(android.view.View)>',48,'a',NULL),(61,24,'<com.androidemu.harveshuangjl3.EmulatorActivity: void onLoadState()>',6,'a',NULL),(62,24,'<com.androidemu.harveshuangjl3.EmulatorActivity: void onSaveState()>',7,'a',NULL),(63,16,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(64,84,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(65,96,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(66,24,'<com.androidemu.harveshuangjl3.EmulatorActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(67,34,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(68,24,'<com.androidemu.harveshuangjl3.EmulatorActivity: void onBluetoothClient()>',3,'a',NULL),(69,97,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(70,98,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(71,23,'<com.androidemu.harveshuangjl3.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',43,'a',NULL),(72,99,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(73,24,'<com.androidemu.harveshuangjl3.EmulatorActivity: void ensureDiscoverable()>',5,'a',NULL),(74,23,'<com.androidemu.harveshuangjl3.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',25,'a',NULL),(75,24,'<com.androidemu.harveshuangjl3.EmulatorActivity: void onCreate(android.os.Bundle)>',75,'s',0),(76,84,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(77,100,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(78,23,'<com.androidemu.harveshuangjl3.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',34,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,4),(2,3,4),(3,5,5),(4,7,5),(5,8,5),(6,11,5),(7,14,5),(8,16,4),(9,17,4),(10,20,4),(11,22,4),(12,27,5),(13,30,4),(14,31,4),(15,32,4),(16,33,4),(17,34,8),(18,35,5),(19,36,9),(20,37,5),(21,39,5),(22,40,5),(23,41,5),(24,43,5),(25,44,5),(26,45,5),(27,47,4),(28,49,5),(29,50,4),(30,51,4),(31,52,5),(32,53,4),(33,54,5),(34,56,5),(35,57,5),(36,58,5),(37,59,5),(38,61,4),(39,62,4),(40,64,4),(41,65,5),(42,66,5),(43,67,4),(44,69,5),(45,70,5),(46,72,4),(47,73,5),(48,75,4),(49,76,4),(50,77,4),(51,78,4),(52,79,5),(53,80,4),(54,81,5),(55,82,13),(56,87,4),(57,89,4),(58,94,5),(59,98,5),(60,99,15),(61,100,5),(62,102,16),(63,104,16),(64,105,16),(65,107,16),(66,108,16),(67,109,16),(68,111,16),(69,112,16),(70,114,4),(71,116,4),(72,117,4),(73,119,4),(74,121,5),(75,123,17),(76,125,17),(77,128,5),(78,129,18);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,2),(2,3,3),(3,16,2),(4,17,3),(5,20,2),(6,22,3),(7,30,2),(8,31,3),(9,32,2),(10,33,3),(11,47,2),(12,50,3),(13,51,2),(14,53,3),(15,61,2),(16,62,3),(17,64,2),(18,67,3),(19,72,2),(20,75,3),(21,76,2),(22,77,2),(23,78,3),(24,80,3),(25,87,2),(26,89,3),(27,114,2),(28,116,3),(29,117,2),(30,119,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'NULL-CONSTANT'),(2,6,'(.*)'),(3,9,'com/waps/OffersWebView'),(4,10,'com/waps/OffersWebView'),(5,12,'(.*)'),(6,13,'NULL-CONSTANT'),(7,18,'(.*)'),(8,21,'com/waps/OffersWebView'),(9,23,'com/waps/OffersWebView'),(10,24,'com/waps/OffersWebView'),(11,25,'com/waps/OffersWebView'),(12,26,'NULL-CONSTANT'),(13,28,'com/waps/OffersWebView'),(14,38,'com/waps/OffersWebView'),(15,42,'com/waps/OffersWebView'),(16,55,'com/mobclick/android/UmengFeedback'),(17,63,'com/waps/OffersWebView'),(18,68,'com/waps/OffersWebView'),(19,73,'com/androidemu/harveshuangjl3/EmulatorActivity'),(20,83,'NULL-CONSTANT'),(21,84,'com/waps/OffersWebView'),(22,85,'(.*)'),(23,88,'com/waps/OffersWebView'),(24,90,'cn/com/gw/livewallpaper_yct/SettingsActivity'),(25,91,'NULL-CONSTANT'),(26,92,'(.*)'),(27,95,'NULL-CONSTANT'),(28,93,'com/waps/OffersWebView'),(29,97,'(.*)'),(30,96,'com/waps/OffersWebView'),(31,101,'com/androidemu/harveshuangjl3/EmulatorSettings'),(32,103,'com/androidemu/harveshuangjl3/StateSlotsActivity'),(33,106,'com/androidemu/harveshuangjl3/StateSlotsActivity'),(34,110,'(.*)'),(35,115,'com/waps/OffersWebView'),(36,118,'com/waps/OffersWebView'),(37,120,'com/androidemu/harveshuangjl3/EmulatorSettings'),(38,122,'com/androidemu/harveshuangjl3/DeviceListActivity'),(39,124,'com/waps/OffersWebView'),(40,126,'NULL-CONSTANT'),(41,127,'com/androidemu/harveshuangjl3/KeyProfilesActivity'),(42,130,'com/androidemu/harveshuangjl3/FileChooser'),(43,131,'com/waps/OffersWebView'),(44,132,'com/waps/OffersWebView'),(45,133,'com/waps/OffersWebView'),(46,134,'com/androidemu/harveshuangjl3/KeyProfilesActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,7,2),(3,8,3),(4,11,4),(5,14,5),(6,27,6),(7,35,7),(8,37,8),(9,39,9),(10,40,10),(11,41,11),(12,43,12),(13,44,13),(14,45,14),(15,49,15),(16,52,16),(17,54,17),(18,56,18),(19,57,19),(20,58,21),(21,59,20),(22,65,22),(23,66,23),(24,69,24),(25,70,25),(26,73,26),(27,79,27),(28,81,28),(29,94,29),(30,98,30),(31,100,31),(32,103,32),(33,106,33),(34,121,34),(35,123,35),(36,125,36),(37,128,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,9,'UrlPath'),(2,9,'ACTIVITY_FLAG'),(3,9,'isFinshClose'),(4,9,'offers_webview_tag'),(5,10,'Notify_Url_Params'),(6,10,'UrlPath'),(7,10,'ACTIVITY_FLAG'),(8,10,'isFinshClose'),(9,10,'offers_webview_tag'),(10,21,'Notify_Url_Params'),(11,21,'UrlPath'),(12,21,'ACTIVITY_FLAG'),(13,21,'isFinshClose'),(14,21,'offers_webview_tag'),(15,23,'UrlPath'),(16,23,'ACTIVITY_FLAG'),(17,23,'isFinshClose'),(18,23,'offers_webview_tag'),(19,24,'Notify_Url_Params'),(20,24,'UrlPath'),(21,24,'ACTIVITY_FLAG'),(22,24,'isFinshClose'),(23,24,'offers_webview_tag'),(24,25,'UrlPath'),(25,25,'ACTIVITY_FLAG'),(26,25,'isFinshClose'),(27,25,'offers_webview_tag'),(28,28,'CLIENT_PACKAGE'),(29,28,'URL'),(30,28,'isFinshClose'),(31,28,'offers_webview_tag'),(32,34,'adViewLeaveParameter'),(33,36,'adViewLeaveParameter'),(34,38,'UrlPath'),(35,38,'ACTIVITY_FLAG'),(36,38,'isFinshClose'),(37,38,'offers_webview_tag'),(38,42,'Notify_Url_Params'),(39,42,'UrlPath'),(40,42,'ACTIVITY_FLAG'),(41,42,'isFinshClose'),(42,42,'offers_webview_tag'),(43,63,'UrlPath'),(44,63,'ACTIVITY_FLAG'),(45,63,'isFinshClose'),(46,63,'offers_webview_tag'),(47,68,'Notify_Url_Params'),(48,68,'UrlPath'),(49,68,'ACTIVITY_FLAG'),(50,68,'isFinshClose'),(51,68,'offers_webview_tag'),(52,84,'CLIENT_PACKAGE'),(53,84,'URL'),(54,84,'isFinshClose'),(55,84,'offers_webview_tag'),(56,88,'CLIENT_PACKAGE'),(57,88,'URL'),(58,88,'isFinshClose'),(59,88,'offers_webview_tag'),(60,93,'USER_ID'),(61,93,'CLIENT_PACKAGE'),(62,93,'Offers_URL'),(63,93,'offers_webview_tag'),(64,93,'URL_PARAMS'),(65,96,'USER_ID'),(66,96,'CLIENT_PACKAGE'),(67,96,'Offers_URL'),(68,96,'offers_webview_tag'),(69,96,'URL_PARAMS'),(70,102,'android.intent.extra.INTENT'),(71,104,'android.intent.extra.INTENT'),(72,105,'android.intent.extra.TITLE'),(73,106,'saveMode'),(74,105,'android.intent.extra.INTENT'),(75,107,'android.intent.extra.INTENT'),(76,108,'android.intent.extra.TITLE'),(77,108,'android.intent.extra.INTENT'),(78,109,'android.intent.extra.INTENT'),(79,111,'android.intent.extra.TITLE'),(80,111,'android.intent.extra.INTENT'),(81,112,'android.intent.extra.TITLE'),(82,112,'android.intent.extra.INTENT'),(83,115,'UrlPath'),(84,115,'ACTIVITY_FLAG'),(85,115,'isFinshClose'),(86,115,'offers_webview_tag'),(87,118,'Notify_Url_Params'),(88,118,'UrlPath'),(89,118,'ACTIVITY_FLAG'),(90,118,'isFinshClose'),(91,118,'offers_webview_tag'),(92,124,'USER_ID'),(93,124,'CLIENT_PACKAGE'),(94,124,'Offers_URL'),(95,124,'offers_webview_tag'),(96,124,'URL_PARAMS'),(97,127,'title'),(98,130,'title'),(99,130,'filters'),(100,131,'CLIENT_PACKAGE'),(101,131,'URL'),(102,131,'isFinshClose'),(103,131,'offers_webview_tag'),(104,132,'Notify_Url_Params'),(105,132,'UrlPath'),(106,132,'ACTIVITY_FLAG'),(107,132,'isFinshClose'),(108,132,'offers_webview_tag'),(109,133,'UrlPath'),(110,133,'ACTIVITY_FLAG'),(111,133,'isFinshClose'),(112,133,'offers_webview_tag'),(113,134,'title');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,2),(6,6,1),(7,7,3),(8,8,2),(9,9,3),(10,10,4),(11,11,5),(12,12,4),(13,13,6),(14,14,4),(15,15,1),(16,16,4),(17,17,7),(18,18,7),(19,19,7),(20,20,7),(21,21,10),(22,22,11),(23,23,11),(24,24,7),(25,25,12),(26,26,7),(27,27,8),(28,28,9),(29,29,14),(30,30,14),(31,31,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,10,1),(2,10,2),(3,11,1),(4,12,2),(5,13,1),(6,14,2),(7,16,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,11,'file',NULL,NULL,NULL,NULL,NULL),(2,11,NULL,NULL,NULL,NULL,'application','zip'),(3,11,NULL,NULL,NULL,NULL,'application','octet-stream'),(4,17,'package',NULL,NULL,NULL,NULL,NULL),(5,18,'package',NULL,NULL,NULL,NULL,NULL),(6,19,'package',NULL,NULL,NULL,NULL,NULL),(7,20,'package',NULL,NULL,NULL,NULL,NULL),(8,24,'package',NULL,NULL,NULL,NULL,NULL),(9,26,'package',NULL,NULL,NULL,NULL,NULL),(10,31,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,5,'application','vnd.android.package-archive'),(2,7,'application','vnd.android.package-archive'),(3,8,'application','vnd.android.package-archive'),(4,11,'application','vnd.android.package-archive'),(5,14,'application','vnd.android.package-archive'),(6,27,'application','vnd.android.package-archive'),(7,35,'application','vnd.android.package-archive'),(8,39,'application','vnd.android.package-archive'),(9,41,'application','vnd.android.package-archive'),(10,43,'application','vnd.android.package-archive'),(11,44,'application','vnd.android.package-archive'),(12,45,'application','vnd.android.package-archive'),(13,49,'application','vnd.android.package-archive'),(14,52,'application','vnd.android.package-archive'),(15,54,'application','vnd.android.package-archive'),(16,56,'application','vnd.android.package-archive'),(17,58,'application','vnd.android.package-archive'),(18,65,'application','vnd.android.package-archive'),(19,66,'application','vnd.android.package-archive'),(20,69,'application','vnd.android.package-archive'),(21,70,'application','vnd.android.package-archive'),(22,94,'application','vnd.android.package-archive'),(23,123,'(.*)','(.*)'),(24,128,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'(.*)'),(2,3,'(.*)'),(3,4,'NULL-CONSTANT'),(4,6,'(.*)'),(5,9,'com.shirley.livewallpaper.waterfall'),(6,10,'com.shirley.livewallpaper.waterfall'),(7,12,'(.*)'),(8,13,'NULL-CONSTANT'),(9,16,'(.*)'),(10,18,'(.*)'),(11,17,'(.*)'),(12,20,'(.*)'),(13,22,'(.*)'),(14,21,'com.shirley.livewallpaper.shangmai'),(15,23,'com.shirley.livewallpaper.shangmai'),(16,24,'com.dangerb.livewallpaper.my'),(17,25,'com.dangerb.livewallpaper.my'),(18,26,'NULL-CONSTANT'),(19,28,'cn.com.gw.livewallpaper_yct'),(20,30,'(.*)'),(21,31,'(.*)'),(22,32,'NULL-CONSTANT'),(23,33,'NULL-CONSTANT'),(24,38,'cn.com.gw.livewallpaper_yct'),(25,42,'cn.com.gw.livewallpaper_yct'),(26,47,'(.*)'),(27,50,'(.*)'),(28,51,'(.*)'),(29,53,'(.*)'),(30,55,'cn.com.gw.livewallpaper_yct'),(31,61,'(.*)'),(32,62,'(.*)'),(33,64,'NULL-CONSTANT'),(34,63,'com.chenchen.CrashLand'),(35,67,'NULL-CONSTANT'),(36,68,'com.chenchen.CrashLand'),(37,72,'(.*)'),(38,73,'com.androidemu.harveshuangjl3'),(39,75,'(.*)'),(40,76,'(.*)'),(41,77,'NULL-CONSTANT'),(42,78,'(.*)'),(43,80,'NULL-CONSTANT'),(44,83,'NULL-CONSTANT'),(45,84,'g.calculator.instax'),(46,85,'(.*)'),(47,87,'(.*)'),(48,89,'(.*)'),(49,88,'com.chenchen.CrashLand'),(50,90,'cn.com.gw.livewallpaper_yct'),(51,91,'NULL-CONSTANT'),(52,92,'(.*)'),(53,95,'NULL-CONSTANT'),(54,93,'g.calculator.instax'),(55,97,'(.*)'),(56,96,'cn.com.gw.livewallpaper_yct'),(57,101,'com.androidemu.harveshuangjl3'),(58,103,'com.androidemu.harveshuangjl3'),(59,106,'com.androidemu.harveshuangjl3'),(60,110,'(.*)'),(61,114,'(.*)'),(62,116,'(.*)'),(63,115,'g.calculator.instax'),(64,117,'NULL-CONSTANT'),(65,119,'NULL-CONSTANT'),(66,118,'g.calculator.instax'),(67,120,'com.androidemu.harveshuangjl3'),(68,122,'com.androidemu.harveshuangjl3'),(69,124,'com.androidemu.harveshuangjl3'),(70,126,'NULL-CONSTANT'),(71,127,'com.androidemu.harveshuangjl3'),(72,130,'com.androidemu.harveshuangjl3'),(73,131,'com.androidemu.harveshuangjl3'),(74,132,'com.androidemu.harveshuangjl3'),(75,133,'com.androidemu.harveshuangjl3'),(76,134,'com.androidemu.harveshuangjl3');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,3,0),(2,4,0),(3,5,0),(4,8,0),(5,10,0),(6,12,0),(7,13,0),(8,14,0),(9,15,0),(10,17,0),(11,24,0),(12,25,0),(13,27,0),(14,35,0),(15,41,0),(16,42,0),(17,50,0),(18,51,0),(19,52,0),(20,53,0),(21,54,0),(22,55,0),(23,56,0),(24,57,0),(25,58,0),(26,59,0),(27,60,0),(28,60,0),(29,55,0),(30,56,0),(31,56,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,2,0,0),(5,3,1,0),(6,4,0,0),(7,5,1,0),(8,6,1,0),(9,7,0,0),(10,7,0,0),(11,8,1,0),(12,9,0,0),(13,10,0,0),(14,11,1,0),(15,12,1,0),(16,12,1,0),(17,12,1,0),(18,13,0,0),(19,14,1,0),(20,14,1,0),(21,15,0,0),(22,14,1,0),(23,15,0,0),(24,16,0,0),(25,16,0,0),(26,17,0,0),(27,18,1,0),(28,19,0,0),(29,20,1,0),(30,20,1,0),(31,20,1,0),(32,20,1,0),(33,20,1,0),(34,21,1,0),(35,22,1,0),(36,21,1,0),(37,23,1,0),(38,24,0,0),(39,25,1,0),(40,23,1,0),(41,25,1,0),(42,24,0,0),(43,26,1,0),(44,25,1,0),(45,25,1,0),(46,27,1,0),(47,27,1,0),(48,28,1,0),(49,25,1,0),(50,27,1,0),(51,28,1,0),(52,25,1,0),(53,28,1,0),(54,25,1,0),(55,29,0,0),(56,25,1,0),(57,30,1,0),(58,25,1,0),(59,30,1,0),(60,31,1,0),(61,31,1,0),(62,31,1,0),(63,32,0,0),(64,31,1,0),(65,33,1,0),(66,34,1,0),(67,31,1,0),(68,32,0,0),(69,35,1,0),(70,36,1,0),(71,37,1,0),(72,37,1,0),(73,38,0,0),(74,39,1,0),(75,37,1,0),(76,39,1,0),(77,37,1,0),(78,39,1,0),(79,40,1,0),(80,37,1,0),(81,40,1,0),(82,41,1,0),(83,42,0,0),(84,43,0,0),(85,45,0,0),(86,46,1,0),(87,46,1,0),(88,47,0,0),(89,46,1,0),(90,48,0,0),(91,49,0,0),(92,50,0,0),(93,52,0,0),(94,51,1,0),(95,53,0,0),(96,54,0,0),(97,55,0,0),(98,56,1,0),(99,57,1,0),(100,56,1,0),(101,58,0,0),(102,60,1,0),(103,61,0,0),(104,60,1,0),(105,60,1,0),(106,62,0,0),(107,60,1,0),(108,60,1,0),(109,60,1,0),(110,63,0,0),(111,60,1,0),(112,60,1,0),(113,64,1,0),(114,64,1,0),(115,65,0,0),(116,64,1,0),(117,64,1,0),(118,65,0,0),(119,64,1,0),(120,66,0,0),(121,67,1,0),(122,68,0,0),(123,67,1,0),(124,69,0,0),(125,67,1,0),(126,70,0,0),(127,71,0,0),(128,72,1,0),(129,73,1,0),(130,74,0,0),(131,76,0,0),(132,77,0,0),(133,77,0,0),(134,78,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_FINE_LOCATION'),(6,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(7,'android.permission.BIND_WALLPAPER'),(8,'android.permission.BLUETOOTH'),(11,'android.permission.BLUETOOTH_ADMIN'),(12,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(5,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(10,'android.permission.VIBRATE'),(14,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(32,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(33,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,2,2),(9,2,3),(10,2,4),(11,2,5),(12,2,6),(13,3,1),(14,3,2),(15,3,3),(16,3,4),(17,3,5),(18,3,6),(19,4,1),(20,4,3),(21,4,4),(22,4,6),(23,4,8),(24,4,9),(25,4,10),(26,4,11),(27,5,1),(28,5,3),(29,5,4),(30,5,6),(31,5,12),(32,5,13),(33,6,1),(34,6,3),(35,6,4),(36,6,5),(37,6,6),(38,6,9),(39,6,12),(40,6,13),(41,7,1),(42,7,3),(43,7,4),(44,7,6),(45,7,10),(46,7,12),(47,7,14);
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

-- Dump completed on 2015-10-09  0:39:24
