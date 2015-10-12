-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_385
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (13,'android.bluetooth.adapter.action.DISCOVERY_FINISHED'),(10,'android.bluetooth.adapter.action.REQUEST_DISCOVERABLE'),(12,'android.bluetooth.adapter.action.REQUEST_ENABLE'),(11,'android.bluetooth.device.action.FOUND'),(4,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CHOOSER'),(6,'android.intent.action.CREATE_SHORTCUT'),(9,'android.intent.action.DELETE'),(15,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(8,'android.intent.action.SCREEN_OFF'),(16,'android.intent.action.SENDTO'),(5,'android.intent.action.VIEW'),(2,'android.service.wallpaper.WallpaperService'),(3,'push_alm');
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
INSERT INTO `Applications` VALUES (1,'com.han.zyxlcs1',1),(2,'show.bacektballl',30),(3,'com.shirley.livewallpaper.xiangcun',5),(4,'com.ponphy.appmanager',3),(5,'com.androidemu.harvechidou',209),(6,'com.wangwei.tblianliankan',38),(7,'cn.ozunimo.kuaidi',33);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.han.zyxlcs1.N1'),(2,1,'com.han.zyxlcs1.HtmlRead'),(3,1,'com.waps.OffersWebView'),(4,2,'show.bacektballl.BasketballActivity'),(5,3,'com.shirley.livewallpaper.xiangcun.LiveWallpaperSetting'),(6,3,'com.waps.OffersWebView'),(7,2,'com.waps.OffersWebView'),(8,3,'com.shirley.livewallpaper.xiangcun.CubeWallpaper1'),(9,3,'com.jeef.wapsConnection.AlmService'),(10,4,'com.waps.OffersWebView'),(11,4,'com.ponphy.appmanager.main'),(12,3,'com.jeef.wapsConnection.BootService'),(13,5,'com.waps.OffersWebView'),(14,5,'com.androidemu.harvechidou.MainActivity'),(15,5,'com.androidemu.harvechidou.FileChooser'),(16,5,'com.androidemu.harvechidou.StateSlotsActivity'),(17,5,'com.androidemu.harvechidou.KeyProfilesActivity'),(18,5,'com.androidemu.harvechidou.HelpActivity'),(19,5,'com.androidemu.harvechidou.DeviceListActivity'),(20,5,'com.androidemu.harvechidou.EmulatorSettings'),(21,5,'com.androidemu.harvechidou.EmulatorActivity'),(22,5,'com.vpon.adon.android.WebInApp'),(23,5,'com.androidemu.harvechidou.CreateShortcuts'),(24,5,'com.androidemu.harvechidou.EmulatorService'),(25,6,'com.wangwei.tblianliankan.MainActivity'),(26,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(27,6,'com.wangwei.tblianliankan.GameActivity'),(28,6,'com.waps.OffersWebView'),(29,6,'com.wangwei.tblianliankan.AlmService'),(30,6,'com.wangwei.tblianliankan.BootService'),(31,1,'com.han.zyxlcs1.HtmlRead$1'),(32,1,'com.han.zyxlcs1.N1$1'),(33,1,'com.waps.s'),(34,1,'com.waps.z'),(35,1,'com.waps.ac'),(36,1,'com.waps.aa'),(37,2,'com.waps.ac'),(38,2,'com.waps.aa'),(39,1,'com.waps.AppConnect'),(40,1,'com.waps.q'),(41,4,'com.waps.z'),(42,4,'com.waps.s'),(43,3,'com.waps.ac'),(44,1,'com.waps.o'),(45,2,'com.waps.z'),(46,2,'com.waps.o'),(47,3,'com.waps.q'),(48,2,'com.waps.q'),(49,4,'com.waps.AppConnect'),(50,3,'com.waps.o'),(51,4,'com.waps.o'),(52,6,'com.waps.q'),(53,4,'com.waps.aa'),(54,6,'com.wiyun.engine.nodes.Director$2'),(55,3,'com.waps.aa'),(56,6,'com.mobclick.android.MobclickAgent'),(57,3,'com.waps.z'),(58,4,'com.waps.ac'),(59,6,'com.wangwei.tblianliankan.GameActivity$5$1'),(60,6,'com.waps.z'),(61,6,'com.waps.ac'),(62,6,'com.waps.AppConnect'),(63,6,'com.waps.o'),(64,4,'com.waps.q'),(65,6,'com.waps.aa'),(66,5,'com.waps.z'),(67,5,'com.waps.aa'),(68,6,'com.wangwei.tblianliankan.GameActivity$3$1$1'),(69,6,'com.wangwei.tblianliankan.MainActivity$StartLayer$1$2'),(70,5,'com.waps.ac'),(71,5,'com.waps.q'),(72,7,'cn.ozunimo.kuaidi.LoginActivity'),(73,7,'cn.ozunimo.kuaidi.ExpressActivity'),(74,7,'cn.ozunimo.kuaidi.PriceActivity'),(75,7,'cn.ozunimo.kuaidi.LocationActivity'),(76,7,'cn.ozunimo.kuaidi.SettingActivity'),(77,7,'cn.ozunimo.kuaidi.CuptrueActivity'),(78,7,'cn.ozunimo.kuaidi.HomeActivity'),(79,7,'com.waps.DialogView'),(80,7,'com.waps.OffersWebView'),(81,5,'com.waps.o'),(82,5,'com.androidemu.harvechidou.DeviceListActivity$3'),(83,5,'com.waps.s'),(84,5,'com.waps.AppConnect'),(85,7,'com.waps.AppConnect'),(86,7,'cn.ozunimo.kuaidi.ExpressActivity$12'),(87,7,'com.waps.z'),(88,7,'com.waps.q'),(89,7,'com.waps.ac'),(90,7,'cn.ozunimo.kuaidi.BaseActivity'),(91,7,'cn.ozunimo.kuaidi.ExpressActivity$8'),(92,7,'cn.ozunimo.kuaidi.SettingActivity$6'),(93,7,'cn.ozunimo.kuaidi.SettingActivity$4'),(94,7,'com.waps.o'),(95,7,'com.waps.aa'),(96,7,'cn.ozunimo.kuaidi.SettingActivity$5');
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
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'Offers_URL'),(2,3,'UrlPath'),(3,3,'CLIENT_PACKAGE'),(4,3,'WAPS_ID'),(5,2,'WAPS_ID'),(6,1,'WAPS_ID'),(7,3,'Notify_Id'),(8,2,'CLIENT_PACKAGE'),(9,1,'CLIENT_PACKAGE'),(10,3,'APP_ID'),(11,2,'APP_ID'),(12,1,'APP_ID'),(13,4,'WAPS_ID'),(14,7,'WAPS_ID'),(15,3,'ACTIVITY_FLAG'),(16,2,'_index'),(17,3,'URL_PARAMS'),(18,7,'UrlPath'),(19,4,'CLIENT_PACKAGE'),(20,7,'CLIENT_PACKAGE'),(21,3,'USER_ID'),(22,4,'DEVICE_ID'),(23,7,'DEVICE_ID'),(24,7,'URL_PARAMS'),(25,7,'URL'),(26,7,'Notify_Id'),(27,7,'Offers_URL'),(28,4,'WAPS_PID'),(29,10,'WAPS_PID'),(30,11,'WAPS_PID'),(31,7,'WAPS_PID'),(32,6,'Notify_Url_Params'),(33,9,'WAPS_ID'),(34,12,'WAPS_ID'),(35,3,'Notify_Url_Params'),(36,5,'WAPS_ID'),(37,3,'offers_webview_tag'),(38,6,'WAPS_ID'),(39,3,'WAPS_PID'),(40,9,'WAPS_PID'),(41,10,'offers_webview_tag'),(42,2,'WAPS_PID'),(43,12,'WAPS_PID'),(44,10,'URL_PARAMS'),(45,1,'WAPS_PID'),(46,5,'WAPS_PID'),(47,10,'SHWO_FLAG'),(48,2,'type'),(49,6,'WAPS_PID'),(50,7,'SHWO_FLAG'),(51,3,'SHWO_FLAG'),(52,7,'ACTIVITY_FLAG'),(53,3,'URL'),(54,7,'isFinshClose'),(55,7,'Notify_Url_Params'),(56,4,'APP_ID'),(57,7,'APP_ID'),(58,3,'DEVICE_ID'),(59,10,'APP_ID'),(60,2,'DEVICE_ID'),(61,11,'APP_ID'),(62,1,'DEVICE_ID'),(63,10,'Offers_URL'),(64,3,'isFinshClose'),(65,7,'offers_webview_tag'),(66,7,'USER_ID'),(67,6,'CLIENT_PACKAGE'),(68,9,'DEVICE_ID'),(69,12,'DEVICE_ID'),(70,5,'DEVICE_ID'),(71,6,'DEVICE_ID'),(72,9,'WAPS_TESTMODE'),(73,12,'WAPS_TESTMODE'),(74,5,'WAPS_TESTMODE'),(75,6,'URL'),(76,6,'isFinshClose'),(77,6,'USER_ID'),(78,6,'Notify_Id'),(79,6,'SHWO_FLAG'),(80,9,'APP_ID'),(81,12,'APP_ID'),(82,5,'APP_ID'),(83,6,'APP_ID'),(84,5,'UMENG_APPKEY'),(85,6,'Offers_URL'),(86,6,'offers_webview_tag'),(87,6,'URL_PARAMS'),(88,9,'CLIENT_PACKAGE'),(89,12,'CLIENT_PACKAGE'),(90,5,'CLIENT_PACKAGE'),(91,6,'UrlPath'),(92,28,'isFinshClose'),(93,28,'offers_webview_tag'),(94,28,'APP_ID'),(95,25,'APP_ID'),(96,29,'APP_ID'),(97,30,'APP_ID'),(98,10,'CLIENT_PACKAGE'),(99,28,'URL'),(100,28,'WAPS_PID'),(101,25,'WAPS_PID'),(102,29,'WAPS_PID'),(103,6,'ACTIVITY_FLAG'),(104,30,'WAPS_PID'),(105,10,'DEVICE_ID'),(106,11,'DEVICE_ID'),(107,5,'UMENG_CHANNEL'),(108,28,'URL_PARAMS'),(109,28,'WAPS_ID'),(110,25,'WAPS_ID'),(111,10,'UrlPath'),(112,29,'WAPS_ID'),(113,30,'WAPS_ID'),(114,10,'URL'),(115,10,'isFinshClose'),(116,28,'SHWO_FLAG'),(117,11,'CLIENT_PACKAGE'),(118,10,'Notify_Url_Params'),(119,28,'Offers_URL'),(120,28,'USER_ID'),(121,28,'Notify_Id'),(122,28,'ACTIVITY_FLAG'),(123,28,'UrlPath'),(124,10,'ACTIVITY_FLAG'),(125,10,'Notify_Id'),(126,10,'WAPS_ID'),(127,11,'WAPS_ID'),(128,28,'DEVICE_ID'),(129,25,'DEVICE_ID'),(130,29,'DEVICE_ID'),(131,30,'DEVICE_ID'),(132,10,'USER_ID'),(133,13,'UrlPath'),(134,28,'CLIENT_PACKAGE'),(135,25,'CLIENT_PACKAGE'),(136,29,'CLIENT_PACKAGE'),(137,30,'CLIENT_PACKAGE'),(138,28,'Notify_Url_Params'),(139,25,'UMENG_APPKEY'),(140,25,'UMENG_CHANNEL'),(141,13,'USER_ID'),(142,13,'offers_webview_tag'),(143,21,'WAPS_ID'),(144,13,'WAPS_ID'),(145,14,'WAPS_ID'),(146,15,'WAPS_ID'),(147,17,'title'),(148,21,'DEVICE_ID'),(149,13,'DEVICE_ID'),(150,14,'DEVICE_ID'),(151,15,'DEVICE_ID'),(152,21,'CLIENT_PACKAGE'),(153,13,'CLIENT_PACKAGE'),(154,14,'CLIENT_PACKAGE'),(155,15,'CLIENT_PACKAGE'),(156,13,'Offers_URL'),(157,13,'URL'),(158,13,'Notify_Id'),(159,14,'currentDir'),(160,15,'currentDir'),(161,13,'SHWO_FLAG'),(162,14,'filters'),(163,15,'filters'),(164,21,'device_address'),(165,21,'APP_ID'),(166,13,'APP_ID'),(167,14,'APP_ID'),(168,15,'APP_ID'),(169,13,'isFinshClose'),(170,13,'URL_PARAMS'),(171,13,'ACTIVITY_FLAG'),(172,16,'saveMode'),(173,21,'WAPS_PID'),(174,13,'WAPS_PID'),(175,14,'WAPS_PID'),(176,15,'WAPS_PID'),(177,13,'Notify_Url_Params'),(178,14,'title'),(179,15,'title'),(180,46,'UrlPath'),(181,46,'SHWO_FLAG'),(182,46,'URL'),(183,38,'DEVICE_ID'),(184,46,'DEVICE_ID'),(185,46,'isFinshClose'),(186,46,'ACTIVITY_FLAG'),(187,46,'CLIENT_PACKAGE'),(188,46,'Offers_URL'),(189,46,'offers_webview_tag'),(190,42,'UMENG_CHANNEL'),(191,38,'UMENG_CHANNEL'),(192,40,'UMENG_CHANNEL'),(193,44,'UMENG_CHANNEL'),(194,39,'UMENG_CHANNEL'),(195,42,'UMENG_APPKEY'),(196,38,'UMENG_APPKEY'),(197,40,'UMENG_APPKEY'),(198,44,'UMENG_APPKEY'),(199,39,'UMENG_APPKEY'),(200,46,'Notify_Id'),(201,38,'CLIENT_PACKAGE'),(202,46,'Notify_Url_Params'),(203,38,'APP_ID'),(204,46,'APP_ID'),(205,46,'URL_PARAMS'),(206,38,'WAPS_ID'),(207,46,'WAPS_ID'),(208,38,'WAPS_PID'),(209,46,'WAPS_PID'),(210,46,'USER_ID'),(211,39,'number');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',1,9,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,40,'r',1,NULL,NULL),(32,47,'r',1,NULL,NULL),(33,48,'r',1,NULL,NULL),(34,52,'r',1,NULL,NULL),(35,54,'r',1,NULL,NULL),(36,64,'r',1,NULL,NULL),(37,71,'r',1,NULL,NULL),(38,72,'a',1,NULL,NULL),(39,73,'a',0,NULL,NULL),(40,74,'a',0,NULL,NULL),(41,75,'a',0,NULL,NULL),(42,76,'a',0,NULL,NULL),(43,77,'a',0,NULL,NULL),(44,78,'a',0,NULL,NULL),(45,79,'a',0,NULL,NULL),(46,80,'a',0,NULL,NULL),(47,82,'r',1,NULL,NULL),(48,88,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,1),(3,3,2),(4,4,3),(5,5,3),(6,6,3),(7,7,3),(8,8,3),(9,9,7),(10,10,2),(11,11,7),(12,12,2),(13,13,6),(14,14,7),(15,15,10),(16,16,11),(17,17,6),(18,18,3),(19,20,6),(20,19,7),(21,21,11),(22,22,2),(23,23,7),(24,24,7),(25,25,11),(26,26,6),(27,27,10),(28,28,10),(29,29,10),(30,30,6),(31,31,25),(32,32,11),(33,33,28),(34,34,6),(35,35,10),(36,36,25),(37,37,11),(38,38,11),(39,39,28),(40,40,28),(41,41,11),(42,42,25),(43,43,11),(44,44,11),(45,45,28),(46,46,11),(47,47,28),(48,48,28),(49,49,10),(50,50,13),(51,51,13),(52,52,25),(53,53,25),(54,54,13),(55,54,19),(56,55,21),(57,56,21),(58,57,20),(59,58,21),(60,59,21),(61,60,15),(62,60,14),(63,61,13),(64,62,20),(65,63,13),(66,64,21),(67,65,15),(68,65,14),(69,66,20),(70,67,21),(71,68,14),(72,68,15),(73,68,21),(74,69,13),(75,70,21),(76,71,21),(77,71,14),(78,71,15),(79,72,14),(80,72,15),(81,73,15),(82,73,14),(83,74,14),(84,74,15),(85,74,21),(86,75,15),(87,75,14),(88,75,21),(89,76,38),(90,77,39),(91,78,46),(92,79,46),(93,80,38),(94,81,46),(95,82,46),(96,83,39),(97,83,40),(98,83,42),(99,84,39),(100,85,38),(101,86,42),(102,87,42),(103,88,46),(104,89,44),(105,90,46),(106,91,42);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,31,'<com.han.zyxlcs1.HtmlRead$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',14,'a',NULL),(2,32,'<com.han.zyxlcs1.N1$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(3,33,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(4,3,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',318,'a',NULL),(5,3,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(6,34,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(7,35,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(8,36,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(9,37,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(10,33,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(11,38,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(12,39,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(13,6,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',333,'a',NULL),(14,7,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',296,'a',NULL),(15,41,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(16,42,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(17,43,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(18,44,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(19,45,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(20,6,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',300,'a',NULL),(21,42,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(22,33,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(23,46,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(24,7,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',321,'a',NULL),(25,49,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(26,50,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(27,51,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(28,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',318,'a',NULL),(29,53,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(30,55,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(31,56,'<com.mobclick.android.MobclickAgent: void c(android.content.Context,java.io.File)>',11,'a',NULL),(32,11,'<com.ponphy.appmanager.main: void nomalRemove(com.ponphy.appmanager.AppInfo)>',12,'a',NULL),(33,28,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(34,57,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(35,58,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(36,59,'<com.wangwei.tblianliankan.GameActivity$5$1: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(37,11,'<com.ponphy.appmanager.main: boolean onMenuItemSelected(int,android.view.MenuItem)>',45,'a',NULL),(38,42,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(39,60,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(40,61,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(41,11,'<com.ponphy.appmanager.main: boolean onMenuItemSelected(int,android.view.MenuItem)>',54,'a',NULL),(42,62,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(43,11,'<com.ponphy.appmanager.main: void nomalSetup(java.lang.String)>',8,'a',NULL),(44,49,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(45,63,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(46,49,'<com.waps.AppConnect: void showFeedback()>',3,'a',NULL),(47,28,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(48,65,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(49,10,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',293,'a',NULL),(50,66,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(51,67,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(52,68,'<com.wangwei.tblianliankan.GameActivity$3$1$1: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(53,69,'<com.wangwei.tblianliankan.MainActivity$StartLayer$1$2: void onClick(android.content.DialogInterface,int)>',18,'a',NULL),(54,70,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(55,21,'<com.androidemu.harvechidou.EmulatorActivity: void ensureDiscoverable()>',5,'a',NULL),(56,21,'<com.androidemu.harvechidou.EmulatorActivity: void onCreate(android.os.Bundle)>',75,'s',0),(57,20,'<com.androidemu.harvechidou.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',25,'a',NULL),(58,21,'<com.androidemu.harvechidou.EmulatorActivity: void onSaveState()>',7,'a',NULL),(59,21,'<com.androidemu.harvechidou.EmulatorActivity: void onBluetoothClient()>',3,'a',NULL),(60,14,'<com.androidemu.harvechidou.MainActivity: void onFileSelected(android.net.Uri)>',11,'a',NULL),(61,81,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(62,20,'<com.androidemu.harvechidou.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',43,'a',NULL),(63,13,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(64,21,'<com.androidemu.harvechidou.EmulatorActivity: void onLoadState()>',6,'a',NULL),(65,14,'<com.androidemu.harvechidou.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(66,20,'<com.androidemu.harvechidou.EmulatorSettings: boolean onPreferenceTreeClick(android.preference.PreferenceScreen,android.preference.Preference)>',34,'a',NULL),(67,21,'<com.androidemu.harvechidou.EmulatorActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(68,83,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(69,13,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(70,21,'<com.androidemu.harvechidou.EmulatorActivity: boolean checkBluetoothEnabled(int)>',7,'a',NULL),(71,84,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(72,14,'<com.androidemu.harvechidou.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',0),(73,14,'<com.androidemu.harvechidou.MainActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',0),(74,83,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(75,83,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(76,85,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(77,86,'<cn.ozunimo.kuaidi.ExpressActivity$12: void onClick(android.view.View)>',45,'a',NULL),(78,87,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(79,80,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',296,'a',NULL),(80,72,'<cn.ozunimo.kuaidi.LoginActivity: void onCreate(android.os.Bundle)>',23,'a',NULL),(81,80,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',321,'a',NULL),(82,89,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(83,90,'<cn.ozunimo.kuaidi.BaseActivity: void onCreate(android.os.Bundle)>',18,'a',NULL),(84,91,'<cn.ozunimo.kuaidi.ExpressActivity$8: void onClick(android.view.View)>',6,'a',NULL),(85,72,'<cn.ozunimo.kuaidi.LoginActivity: void onClick(android.view.View)>',20,'a',NULL),(86,92,'<cn.ozunimo.kuaidi.SettingActivity$6: void onClick(android.view.View)>',6,'a',NULL),(87,93,'<cn.ozunimo.kuaidi.SettingActivity$4: void onClick(android.view.View)>',6,'a',NULL),(88,94,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(89,78,'<cn.ozunimo.kuaidi.HomeActivity: void onCreate(android.os.Bundle)>',13,'a',NULL),(90,95,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(91,96,'<cn.ozunimo.kuaidi.SettingActivity$5: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,5),(2,4,5),(3,7,1),(4,8,1),(5,9,5),(6,15,1),(7,16,1),(8,18,1),(9,19,1),(10,24,5),(11,25,1),(12,26,1),(13,27,5),(14,29,5),(15,30,5),(16,32,5),(17,33,1),(18,34,1),(19,37,1),(20,38,5),(21,39,1),(22,40,1),(23,41,1),(24,44,5),(25,45,5),(26,49,5),(27,52,9),(28,54,9),(29,55,5),(30,56,1),(31,57,1),(32,62,5),(33,66,5),(34,68,5),(35,73,1),(36,75,1),(37,74,5),(38,82,10),(39,86,5),(40,87,5),(41,90,1),(42,91,1),(43,96,5),(44,97,5),(45,99,12),(46,103,1),(47,104,1),(48,105,1),(49,106,1),(50,108,14),(51,109,14),(52,110,14),(53,111,14),(54,112,14),(55,113,14),(56,114,14),(57,115,14),(58,116,5),(59,118,1),(60,119,1),(61,126,5),(62,127,15),(63,128,5),(64,132,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,1),(2,8,3),(3,15,1),(4,16,3),(5,18,1),(6,19,3),(7,25,1),(8,26,3),(9,33,1),(10,34,3),(11,37,1),(12,39,3),(13,40,1),(14,41,3),(15,56,1),(16,57,3),(17,73,1),(18,75,3),(19,90,1),(20,91,3),(21,103,1),(22,104,3),(23,105,1),(24,106,3),(25,118,1),(26,119,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/han/zyxlcs1/N1'),(2,2,'com/han/zyxlcs1/HtmlRead'),(3,5,'(.*)'),(4,10,'NULL-CONSTANT'),(5,11,'com/waps/OffersWebView'),(6,12,'com/waps/OffersWebView'),(7,13,'NULL-CONSTANT'),(8,17,'com/waps/OffersWebView'),(9,20,'com/waps/OffersWebView'),(10,21,'com/waps/OffersWebView'),(11,22,'(.*)'),(12,28,'NULL-CONSTANT'),(13,36,'com/waps/OffersWebView'),(14,42,'(.*)'),(15,43,'com/waps/OffersWebView'),(16,46,'(.*)'),(17,47,'com/waps/OffersWebView'),(18,48,'com/waps/OffersWebView'),(19,50,'com/waps/OffersWebView'),(20,51,'com/waps/OffersWebView'),(21,58,'NULL-CONSTANT'),(22,59,'com/wangwei/tblianliankan/MainActivity'),(23,60,'com.htc.fieldtest.FieldTestActivity'),(24,61,'com/waps/OffersWebView'),(25,63,'NULL-CONSTANT'),(26,64,'com.android.settings.TestingSettings'),(27,65,'com/waps/OffersWebView'),(28,67,'com/waps/OffersWebView'),(29,69,'com/waps/OffersWebView'),(30,70,'(.*)'),(31,71,'com/waps/OffersWebView'),(32,76,'com/waps/OffersWebView'),(33,77,'com/waps/OffersWebView'),(34,79,'com/wangwei/tblianliankan/MainActivity'),(35,78,'com/waps/OffersWebView'),(36,80,'com/wangwei/tblianliankan/GameActivity'),(37,81,'NULL-CONSTANT'),(38,83,'com/androidemu/harvechidou/FileChooser'),(39,84,'com/androidemu/harvechidou/StateSlotsActivity'),(40,85,'com/androidemu/harvechidou/DeviceListActivity'),(41,86,'com/androidemu/harvechidou/EmulatorActivity'),(42,88,'com/androidemu/harvechidou/KeyProfilesActivity'),(43,92,'com/androidemu/harvechidou/StateSlotsActivity'),(44,93,'com/androidemu/harvechidou/EmulatorSettings'),(45,94,'com/androidemu/harvechidou/KeyProfilesActivity'),(46,95,'com/androidemu/harvechidou/EmulatorSettings'),(47,98,'(.*)'),(48,100,'com/waps/OffersWebView'),(49,101,'com/waps/OffersWebView'),(50,107,'com/waps/OffersWebView'),(51,120,'cn/ozunimo/kuaidi/HomeActivity'),(52,121,'(.*)'),(53,122,'NULL-CONSTANT'),(54,123,'cn/ozunimo/kuaidi/LoginActivity'),(55,124,'cn/ozunimo/kuaidi/CuptrueActivity'),(56,125,'cn/ozunimo/kuaidi/HomeActivity'),(57,129,'cn/ozunimo/kuaidi/LoginActivity'),(58,130,'com/waps/OffersWebView'),(59,131,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,3,1),(2,4,2),(3,9,3),(4,24,4),(5,27,5),(6,29,6),(7,30,7),(8,32,8),(9,38,9),(10,44,10),(11,45,11),(12,49,12),(13,52,13),(14,54,14),(15,55,15),(16,62,16),(17,66,17),(18,68,18),(19,74,19),(20,84,20),(21,86,21),(22,87,22),(23,92,23),(24,96,24),(25,97,25),(26,116,26),(27,126,27),(28,127,28),(29,128,29),(30,132,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'tabType'),(2,2,'_index'),(3,2,'type'),(4,11,'UrlPath'),(5,11,'ACTIVITY_FLAG'),(6,11,'isFinshClose'),(7,11,'offers_webview_tag'),(8,12,'Notify_Url_Params'),(9,12,'UrlPath'),(10,12,'ACTIVITY_FLAG'),(11,12,'isFinshClose'),(12,12,'offers_webview_tag'),(13,17,'Notify_Url_Params'),(14,17,'UrlPath'),(15,17,'ACTIVITY_FLAG'),(16,17,'isFinshClose'),(17,17,'offers_webview_tag'),(18,20,'UrlPath'),(19,20,'ACTIVITY_FLAG'),(20,20,'isFinshClose'),(21,20,'offers_webview_tag'),(22,21,'USER_ID'),(23,21,'CLIENT_PACKAGE'),(24,21,'Offers_URL'),(25,21,'offers_webview_tag'),(26,21,'URL_PARAMS'),(27,36,'CLIENT_PACKAGE'),(28,36,'URL'),(29,36,'isFinshClose'),(30,36,'offers_webview_tag'),(31,43,'USER_ID'),(32,43,'CLIENT_PACKAGE'),(33,43,'Offers_URL'),(34,43,'offers_webview_tag'),(35,43,'URL_PARAMS'),(36,47,'Notify_Url_Params'),(37,47,'UrlPath'),(38,47,'ACTIVITY_FLAG'),(39,47,'isFinshClose'),(40,47,'offers_webview_tag'),(41,48,'UrlPath'),(42,48,'ACTIVITY_FLAG'),(43,48,'isFinshClose'),(44,48,'offers_webview_tag'),(45,50,'UrlPath'),(46,50,'ACTIVITY_FLAG'),(47,50,'isFinshClose'),(48,50,'offers_webview_tag'),(49,51,'Notify_Url_Params'),(50,51,'UrlPath'),(51,51,'ACTIVITY_FLAG'),(52,51,'isFinshClose'),(53,51,'offers_webview_tag'),(54,61,'CLIENT_PACKAGE'),(55,61,'URL'),(56,61,'isFinshClose'),(57,61,'offers_webview_tag'),(58,65,'USER_ID'),(59,65,'CLIENT_PACKAGE'),(60,65,'Offers_URL'),(61,65,'offers_webview_tag'),(62,65,'URL_PARAMS'),(63,67,'USER_ID'),(64,67,'CLIENT_PACKAGE'),(65,67,'Offers_URL'),(66,67,'offers_webview_tag'),(67,67,'URL_PARAMS'),(68,69,'UrlPath'),(69,69,'ACTIVITY_FLAG'),(70,69,'offers_webview_tag'),(71,69,'URL_PARAMS'),(72,71,'Notify_Url_Params'),(73,71,'UrlPath'),(74,71,'ACTIVITY_FLAG'),(75,71,'isFinshClose'),(76,71,'offers_webview_tag'),(77,76,'UrlPath'),(78,76,'ACTIVITY_FLAG'),(79,76,'isFinshClose'),(80,76,'offers_webview_tag'),(81,77,'Notify_Url_Params'),(82,77,'UrlPath'),(83,77,'ACTIVITY_FLAG'),(84,77,'isFinshClose'),(85,77,'offers_webview_tag'),(86,78,'UrlPath'),(87,78,'ACTIVITY_FLAG'),(88,78,'isFinshClose'),(89,78,'offers_webview_tag'),(90,83,'title'),(91,83,'filters'),(92,84,'saveMode'),(93,88,'title'),(94,94,'title'),(95,100,'USER_ID'),(96,100,'CLIENT_PACKAGE'),(97,100,'Offers_URL'),(98,100,'offers_webview_tag'),(99,100,'URL_PARAMS'),(100,101,'CLIENT_PACKAGE'),(101,101,'URL'),(102,101,'isFinshClose'),(103,101,'offers_webview_tag'),(104,107,'USER_ID'),(105,107,'CLIENT_PACKAGE'),(106,107,'Offers_URL'),(107,107,'offers_webview_tag'),(108,107,'URL_PARAMS'),(109,108,'android.intent.extra.INTENT'),(110,109,'android.intent.extra.INTENT'),(111,110,'android.intent.extra.TITLE'),(112,110,'android.intent.extra.INTENT'),(113,111,'android.intent.extra.INTENT'),(114,112,'android.intent.extra.TITLE'),(115,112,'android.intent.extra.INTENT'),(116,113,'android.intent.extra.INTENT'),(117,114,'android.intent.extra.TITLE'),(118,114,'android.intent.extra.INTENT'),(119,115,'android.intent.extra.TITLE'),(120,115,'android.intent.extra.INTENT'),(121,130,'UrlPath'),(122,130,'ACTIVITY_FLAG'),(123,130,'isFinshClose'),(124,130,'offers_webview_tag'),(125,131,'Notify_Url_Params'),(126,131,'UrlPath'),(127,131,'ACTIVITY_FLAG'),(128,131,'isFinshClose'),(129,131,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,1),(6,6,4),(7,7,1),(8,8,5),(9,9,6),(10,10,1),(11,11,3),(12,12,4),(13,13,7),(14,14,7),(15,15,7),(16,16,8),(17,17,8),(18,18,8),(19,19,8),(20,20,7),(21,21,7),(22,22,7),(23,23,1),(24,24,11),(25,25,11),(26,26,13),(27,27,13),(28,28,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,1),(4,7,1),(5,7,2),(6,8,2),(7,9,2),(8,10,1),(9,23,1);
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
INSERT INTO `IFData` VALUES (1,8,'file',NULL,NULL,NULL,NULL,NULL),(2,8,NULL,NULL,NULL,NULL,'application','zip'),(3,8,NULL,NULL,NULL,NULL,'application','octet-stream'),(4,13,'package',NULL,NULL,NULL,NULL,NULL),(5,14,'package',NULL,NULL,NULL,NULL,NULL),(6,15,'package',NULL,NULL,NULL,NULL,NULL),(7,20,'package',NULL,NULL,NULL,NULL,NULL),(8,21,'package',NULL,NULL,NULL,NULL,NULL),(9,22,'package',NULL,NULL,NULL,NULL,NULL),(10,28,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,9,'application','vnd.android.package-archive'),(2,24,'application','vnd.android.package-archive'),(3,29,'application','vnd.android.package-archive'),(4,32,'application','vnd.android.package-archive'),(5,38,'application','vnd.android.package-archive'),(6,44,'application','vnd.android.package-archive'),(7,45,'application','vnd.android.package-archive'),(8,49,'application','vnd.android.package-archive'),(9,55,'application','vnd.android.package-archive'),(10,62,'application','vnd.android.package-archive'),(11,66,'application','vnd.android.package-archive'),(12,68,'application','vnd.android.package-archive'),(13,74,'application','vnd.android.package-archive'),(14,87,'application','vnd.android.package-archive'),(15,116,'application','vnd.android.package-archive'),(16,128,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.han.zyxlcs1'),(2,2,'com.han.zyxlcs1'),(3,5,'(.*)'),(4,7,'(.*)'),(5,8,'(.*)'),(6,10,'NULL-CONSTANT'),(7,11,'com.han.zyxlcs1'),(8,12,'com.han.zyxlcs1'),(9,13,'NULL-CONSTANT'),(10,15,'(.*)'),(11,16,'(.*)'),(12,18,'NULL-CONSTANT'),(13,17,'show.bacektballl'),(14,19,'NULL-CONSTANT'),(15,20,'show.bacektballl'),(16,21,'com.han.zyxlcs1'),(17,22,'(.*)'),(18,25,'(.*)'),(19,26,'(.*)'),(20,28,'NULL-CONSTANT'),(21,33,'(.*)'),(22,34,'(.*)'),(23,37,'(.*)'),(24,36,'com.han.zyxlcs1'),(25,39,'(.*)'),(26,40,'NULL-CONSTANT'),(27,41,'NULL-CONSTANT'),(28,42,'(.*)'),(29,43,'com.ponphy.appmanager'),(30,46,'(.*)'),(31,47,'com.ponphy.appmanager'),(32,48,'com.shirley.livewallpaper.xiangcun'),(33,50,'com.ponphy.appmanager'),(34,51,'com.shirley.livewallpaper.xiangcun'),(35,56,'(.*)'),(36,57,'(.*)'),(37,58,'NULL-CONSTANT'),(38,59,'com.wangwei.tblianliankan'),(39,60,'com.htc.fieldtest'),(40,61,'com.ponphy.appmanager'),(41,63,'NULL-CONSTANT'),(42,64,'com.android.settings'),(43,65,'com.wangwei.tblianliankan'),(44,67,'com.ponphy.appmanager'),(45,69,'com.ponphy.appmanager'),(46,70,'(.*)'),(47,73,'(.*)'),(48,71,'com.wangwei.tblianliankan'),(49,75,'(.*)'),(50,76,'com.wangwei.tblianliankan'),(51,77,'com.androidemu.harvechidou'),(52,79,'com.wangwei.tblianliankan'),(53,78,'com.androidemu.harvechidou'),(54,80,'com.wangwei.tblianliankan'),(55,81,'NULL-CONSTANT'),(56,83,'com.androidemu.harvechidou'),(57,84,'com.androidemu.harvechidou'),(58,85,'com.androidemu.harvechidou'),(59,86,'com.androidemu.harvechidou'),(60,88,'com.androidemu.harvechidou'),(61,90,'(.*)'),(62,91,'(.*)'),(63,92,'com.androidemu.harvechidou'),(64,93,'com.androidemu.harvechidou'),(65,94,'com.androidemu.harvechidou'),(66,95,'com.androidemu.harvechidou'),(67,98,'(.*)'),(68,100,'com.androidemu.harvechidou'),(69,101,'com.androidemu.harvechidou'),(70,103,'(.*)'),(71,104,'(.*)'),(72,105,'NULL-CONSTANT'),(73,106,'NULL-CONSTANT'),(74,107,'cn.ozunimo.kuaidi'),(75,118,'(.*)'),(76,119,'(.*)'),(77,120,'cn.ozunimo.kuaidi'),(78,121,'(.*)'),(79,122,'NULL-CONSTANT'),(80,123,'cn.ozunimo.kuaidi'),(81,124,'cn.ozunimo.kuaidi'),(82,125,'cn.ozunimo.kuaidi'),(83,129,'cn.ozunimo.kuaidi'),(84,130,'cn.ozunimo.kuaidi'),(85,131,'cn.ozunimo.kuaidi');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,4,0),(3,8,0),(4,9,0),(5,11,0),(6,12,0),(7,14,0),(8,21,0),(9,23,0),(10,25,0),(11,29,0),(12,30,0),(13,31,0),(14,32,0),(15,33,0),(16,30,0),(17,29,0),(18,34,0),(19,35,0),(20,34,0),(21,36,0),(22,37,0),(23,38,0),(24,37,0),(25,47,0),(26,37,0),(27,47,0),(28,48,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,6,1,0),(10,7,0,0),(11,8,0,0),(12,8,0,0),(13,9,0,0),(14,10,1,0),(15,10,1,0),(16,10,1,0),(17,11,0,0),(18,10,1,0),(19,10,1,0),(20,11,0,0),(21,12,0,0),(22,13,0,0),(23,14,1,0),(24,15,1,0),(25,14,1,0),(26,14,1,0),(27,16,1,0),(28,17,0,0),(29,18,1,0),(30,16,1,0),(31,20,1,0),(32,19,1,0),(33,20,1,0),(34,20,1,0),(35,21,1,0),(36,22,0,0),(37,21,1,0),(38,23,1,0),(39,21,1,0),(40,21,1,0),(41,21,1,0),(42,24,0,0),(43,25,0,0),(44,26,1,0),(45,27,1,0),(46,28,0,0),(47,29,0,0),(48,30,0,0),(49,31,1,0),(50,29,0,0),(51,30,0,0),(52,32,1,0),(53,33,1,0),(54,32,1,0),(55,34,1,0),(56,33,1,0),(57,33,1,0),(58,35,0,0),(59,36,0,0),(60,37,0,0),(61,38,0,0),(62,39,1,0),(63,40,0,0),(64,41,0,0),(65,42,0,0),(66,43,1,0),(67,44,0,0),(68,45,1,0),(69,46,0,0),(70,47,0,0),(71,48,0,0),(72,49,1,0),(73,49,1,0),(74,50,1,0),(75,49,1,0),(76,48,0,0),(77,51,0,0),(78,51,0,0),(79,52,0,0),(80,53,0,0),(81,54,0,0),(82,55,1,0),(83,57,0,0),(84,58,0,0),(85,59,0,0),(86,60,0,0),(87,61,1,0),(88,62,0,0),(89,63,1,0),(90,63,1,0),(91,63,1,0),(92,64,0,0),(93,65,0,0),(94,66,0,0),(95,67,0,0),(96,68,1,0),(97,68,1,0),(98,69,0,0),(99,70,1,0),(100,71,0,0),(101,74,0,0),(102,75,1,0),(103,75,1,0),(104,75,1,0),(105,75,1,0),(106,75,1,0),(107,76,0,0),(108,77,1,0),(109,77,1,0),(110,77,1,0),(111,77,1,0),(112,77,1,0),(113,77,1,0),(114,77,1,0),(115,77,1,0),(116,78,1,0),(117,79,1,0),(118,79,1,0),(119,79,1,0),(120,80,0,0),(121,81,0,0),(122,82,0,0),(123,83,0,0),(124,84,0,0),(125,85,0,0),(126,86,1,0),(127,87,1,0),(128,88,1,0),(129,89,0,0),(130,90,0,0),(131,90,0,0),(132,91,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,31,1,2,NULL),(2,33,1,2,NULL),(3,34,1,2,NULL),(4,31,4,2,NULL),(5,33,4,2,NULL),(6,34,4,2,NULL),(7,31,8,2,NULL),(8,33,8,2,NULL),(9,34,8,2,NULL),(10,31,9,2,NULL),(11,33,9,2,NULL),(12,34,9,2,NULL),(13,31,12,2,NULL),(14,33,12,2,NULL),(15,34,12,2,NULL),(16,31,11,2,NULL),(17,33,11,2,NULL),(18,34,11,2,NULL),(19,31,14,2,NULL),(20,33,14,2,NULL),(21,34,14,2,NULL),(22,31,23,2,NULL),(23,33,23,2,NULL),(24,34,23,2,NULL),(25,31,37,2,NULL),(26,33,37,2,NULL),(27,34,37,2,NULL),(28,31,47,2,NULL),(29,33,47,2,NULL),(30,34,47,2,NULL),(31,31,25,2,NULL),(32,33,25,2,NULL),(33,34,25,2,NULL),(34,31,29,2,NULL),(35,33,29,2,NULL),(36,34,29,2,NULL),(37,31,30,2,NULL),(38,33,30,2,NULL),(39,34,30,2,NULL),(40,31,34,2,NULL),(41,33,34,2,NULL),(42,34,34,2,NULL),(43,31,35,2,NULL),(44,33,35,2,NULL),(45,34,35,2,NULL),(46,31,38,2,NULL),(47,33,38,2,NULL),(48,34,38,2,NULL),(49,6,8,2,NULL),(50,7,8,2,NULL),(51,8,8,2,NULL),(52,23,8,2,NULL),(53,25,8,2,NULL),(54,26,8,2,NULL),(55,72,8,2,NULL),(56,73,8,2,NULL),(57,75,8,2,NULL),(58,52,8,2,NULL),(59,54,8,2,NULL),(60,89,8,2,NULL),(61,90,8,2,NULL),(62,91,8,2,NULL),(63,82,8,2,NULL),(64,99,8,2,NULL),(65,53,8,2,NULL),(66,56,8,2,NULL),(67,57,8,2,NULL),(68,117,8,2,NULL),(69,118,8,2,NULL),(70,119,8,2,NULL),(71,6,9,2,NULL),(72,7,9,2,NULL),(73,8,9,2,NULL),(74,23,9,2,NULL),(75,25,9,2,NULL),(76,26,9,2,NULL),(77,72,9,2,NULL),(78,73,9,2,NULL),(79,75,9,2,NULL),(80,52,9,2,NULL),(81,54,9,2,NULL),(82,89,9,2,NULL),(83,90,9,2,NULL),(84,91,9,2,NULL),(85,82,9,2,NULL),(86,99,9,2,NULL),(87,53,9,2,NULL),(88,56,9,2,NULL),(89,57,9,2,NULL),(90,117,9,2,NULL),(91,118,9,2,NULL),(92,119,9,2,NULL),(93,6,12,2,NULL),(94,7,12,2,NULL),(95,8,12,2,NULL),(96,23,12,2,NULL),(97,25,12,2,NULL),(98,26,12,2,NULL),(99,72,12,2,NULL),(100,73,12,2,NULL),(101,75,12,2,NULL),(102,52,12,2,NULL),(103,54,12,2,NULL),(104,89,12,2,NULL),(105,90,12,2,NULL),(106,91,12,2,NULL),(107,6,4,2,NULL),(108,82,12,2,NULL),(109,7,4,2,NULL),(110,99,12,2,NULL),(111,8,4,2,NULL),(112,53,12,2,NULL),(113,89,1,2,NULL),(114,23,4,2,NULL),(115,56,12,2,NULL),(116,90,1,2,NULL),(117,25,4,2,NULL),(118,57,12,2,NULL),(119,26,4,2,NULL),(120,91,1,2,NULL),(121,117,12,2,NULL),(122,72,4,2,NULL),(123,118,12,2,NULL),(124,89,4,2,NULL),(125,73,4,2,NULL),(126,119,12,2,NULL),(127,90,4,2,NULL),(128,75,4,2,NULL),(129,91,4,2,NULL),(130,52,4,2,NULL),(131,89,11,2,NULL),(132,54,4,2,NULL),(133,90,11,2,NULL),(134,82,4,2,NULL),(135,91,11,2,NULL),(136,99,4,2,NULL),(137,89,14,2,NULL),(138,53,4,2,NULL),(139,90,14,2,NULL),(140,56,4,2,NULL),(141,91,14,2,NULL),(142,57,4,2,NULL),(143,89,23,2,NULL),(144,117,4,2,NULL),(145,90,23,2,NULL),(146,118,4,2,NULL),(147,91,23,2,NULL),(148,119,4,2,NULL),(149,89,37,2,NULL),(150,23,1,2,NULL),(151,90,37,2,NULL),(152,25,1,2,NULL),(153,91,37,2,NULL),(154,26,1,2,NULL),(155,89,47,2,NULL),(156,23,11,2,NULL),(157,90,47,2,NULL),(158,25,11,2,NULL),(159,91,47,2,NULL),(160,26,11,2,NULL),(161,89,25,2,NULL),(162,23,14,2,NULL),(163,90,25,2,NULL),(164,25,14,2,NULL),(165,91,25,2,NULL),(166,26,14,2,NULL),(167,89,29,2,NULL),(168,23,23,2,NULL),(169,90,29,2,NULL),(170,25,23,2,NULL),(171,91,29,2,NULL),(172,26,23,2,NULL),(173,89,30,2,NULL),(174,23,37,2,NULL),(175,90,30,2,NULL),(176,25,37,2,NULL),(177,91,30,2,NULL),(178,26,37,2,NULL),(179,89,34,2,NULL),(180,23,47,2,NULL),(181,90,34,2,NULL),(182,25,47,2,NULL),(183,91,34,2,NULL),(184,26,47,2,NULL),(185,89,35,2,NULL),(186,23,25,2,NULL),(187,90,35,2,NULL),(188,25,25,2,NULL),(189,91,35,2,NULL),(190,26,25,2,NULL),(191,89,38,2,NULL),(192,23,29,2,NULL),(193,90,38,2,NULL),(194,25,29,2,NULL),(195,91,38,2,NULL),(196,26,29,2,NULL),(197,86,21,2,NULL),(198,23,30,2,NULL),(199,93,20,2,NULL),(200,25,30,2,NULL),(201,6,14,2,NULL),(202,26,30,2,NULL),(203,7,14,2,NULL),(204,23,34,2,NULL),(205,8,14,2,NULL),(206,25,34,2,NULL),(207,72,14,2,NULL),(208,26,34,2,NULL),(209,73,14,2,NULL),(210,23,35,2,NULL),(211,75,14,2,NULL),(212,25,35,2,NULL),(213,52,14,2,NULL),(214,26,35,2,NULL),(215,54,14,2,NULL),(216,23,38,2,NULL),(217,82,14,2,NULL),(218,25,38,2,NULL),(219,99,14,2,NULL),(220,26,38,2,NULL),(221,53,14,2,NULL),(222,56,14,2,NULL),(223,120,44,2,NULL),(224,57,14,2,NULL),(225,125,44,2,NULL),(226,117,14,2,NULL),(227,6,38,2,NULL),(228,118,14,2,NULL),(229,7,38,2,NULL),(230,119,14,2,NULL),(231,8,38,2,NULL),(232,83,15,2,NULL),(233,72,38,2,NULL),(234,88,17,2,NULL),(235,73,38,2,NULL),(236,94,17,2,NULL),(237,75,38,2,NULL),(238,84,16,2,NULL),(239,52,38,2,NULL),(240,85,19,2,NULL),(241,54,38,2,NULL),(242,92,16,2,NULL),(243,82,38,2,NULL),(244,95,20,2,NULL),(245,99,38,2,NULL),(246,82,1,2,NULL),(247,53,38,2,NULL),(248,99,1,2,NULL),(249,56,38,2,NULL),(250,82,11,2,NULL),(251,57,38,2,NULL),(252,99,11,2,NULL),(253,117,38,2,NULL),(254,82,23,2,NULL),(255,118,38,2,NULL),(256,99,23,2,NULL),(257,119,38,2,NULL),(258,82,37,2,NULL),(259,129,38,2,NULL),(260,99,37,2,NULL),(261,117,1,2,NULL),(262,82,47,2,NULL),(263,118,1,2,NULL),(264,99,47,2,NULL),(265,119,1,2,NULL),(266,82,25,2,NULL),(267,117,11,2,NULL),(268,99,25,2,NULL),(269,118,11,2,NULL),(270,82,29,2,NULL),(271,119,11,2,NULL),(272,99,29,2,NULL),(273,117,23,2,NULL),(274,82,30,2,NULL),(275,118,23,2,NULL),(276,99,30,2,NULL),(277,119,23,2,NULL),(278,82,34,2,NULL),(279,117,37,2,NULL),(280,99,34,2,NULL),(281,118,37,2,NULL),(282,82,35,2,NULL),(283,119,37,2,NULL),(284,99,35,2,NULL),(285,117,47,2,NULL),(286,6,23,2,NULL),(287,118,47,2,NULL),(288,7,23,2,NULL),(289,119,47,2,NULL),(290,8,23,2,NULL),(291,117,25,2,NULL),(292,72,23,2,NULL),(293,118,25,2,NULL),(294,73,23,2,NULL),(295,119,25,2,NULL),(296,75,23,2,NULL),(297,117,29,2,NULL),(298,52,23,2,NULL),(299,118,29,2,NULL),(300,54,23,2,NULL),(301,119,29,2,NULL),(302,53,23,2,NULL),(303,117,30,2,NULL),(304,56,23,2,NULL),(305,118,30,2,NULL),(306,57,23,2,NULL),(307,119,30,2,NULL),(308,6,37,2,NULL),(309,117,34,2,NULL),(310,7,37,2,NULL),(311,118,34,2,NULL),(312,8,37,2,NULL),(313,119,34,2,NULL),(314,72,37,2,NULL),(315,117,35,2,NULL),(316,73,37,2,NULL),(317,118,35,2,NULL),(318,75,37,2,NULL),(319,119,35,2,NULL),(320,52,37,2,NULL),(321,54,37,2,NULL),(322,53,37,2,NULL),(323,56,37,2,NULL),(324,57,37,2,NULL),(325,6,47,2,NULL),(326,7,47,2,NULL),(327,8,47,2,NULL),(328,72,47,2,NULL),(329,73,47,2,NULL),(330,75,47,2,NULL),(331,52,47,2,NULL),(332,54,47,2,NULL),(333,53,47,2,NULL),(334,56,47,2,NULL),(335,57,47,2,NULL),(336,6,25,2,NULL),(337,7,25,2,NULL),(338,8,25,2,NULL),(339,72,25,2,NULL),(340,73,25,2,NULL),(341,75,25,2,NULL),(342,72,1,2,NULL),(343,52,25,2,NULL),(344,73,1,2,NULL),(345,54,25,2,NULL),(346,75,1,2,NULL),(347,53,25,2,NULL),(348,72,11,2,NULL),(349,56,25,2,NULL),(350,73,11,2,NULL),(351,57,25,2,NULL),(352,75,11,2,NULL),(353,53,1,2,NULL),(354,72,29,2,NULL),(355,56,1,2,NULL),(356,73,29,2,NULL),(357,57,1,2,NULL),(358,75,29,2,NULL),(359,53,11,2,NULL),(360,72,30,2,NULL),(361,56,11,2,NULL),(362,73,30,2,NULL),(363,57,11,2,NULL),(364,75,30,2,NULL),(365,53,29,2,NULL),(366,72,34,2,NULL),(367,56,29,2,NULL),(368,73,34,2,NULL),(369,57,29,2,NULL),(370,75,34,2,NULL),(371,53,30,2,NULL),(372,72,35,2,NULL),(373,56,30,2,NULL),(374,73,35,2,NULL),(375,57,30,2,NULL),(376,75,35,2,NULL),(377,53,34,2,NULL),(378,52,1,2,NULL),(379,56,34,2,NULL),(380,54,1,2,NULL),(381,57,34,2,NULL),(382,6,11,2,NULL),(383,53,35,2,NULL),(384,7,11,2,NULL),(385,56,35,2,NULL),(386,8,11,2,NULL),(387,57,35,2,NULL),(388,6,29,2,NULL),(389,52,29,2,NULL),(390,7,29,2,NULL),(391,54,29,2,NULL),(392,8,29,2,NULL),(393,52,30,2,NULL),(394,6,30,2,NULL),(395,54,30,2,NULL),(396,7,30,2,NULL),(397,52,34,2,NULL),(398,8,30,2,NULL),(399,54,34,2,NULL),(400,6,34,2,NULL),(401,52,35,2,NULL),(402,7,34,2,NULL),(403,54,35,2,NULL),(404,8,34,2,NULL),(405,6,35,2,NULL),(406,7,35,2,NULL),(407,8,35,2,NULL),(408,6,1,2,NULL),(409,7,1,2,NULL),(410,8,1,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(4,'android.permission.ACCESS_NETWORK_STATE'),(11,'android.permission.ACCESS_WIFI_STATE'),(9,'android.permission.BIND_WALLPAPER'),(10,'android.permission.BLUETOOTH'),(13,'android.permission.BLUETOOTH_ADMIN'),(19,'android.permission.CAMERA'),(1,'android.permission.GET_TASKS'),(2,'android.permission.INTERNET'),(17,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(18,'android.permission.READ_EXTERNAL_STORAGE'),(8,'android.permission.READ_LOGS'),(5,'android.permission.READ_PHONE_STAT'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE');
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'package:',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://t.sina.com.cn/ozgame',NULL,NULL,NULL),(28,NULL,NULL,'tel:18666151938',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'mailto:ozgamel@gmail.com',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,3,2),(8,2,2),(9,3,3),(10,2,3),(11,3,4),(12,2,4),(13,3,6),(14,2,6),(15,3,7),(16,3,8),(17,4,1),(18,4,2),(19,4,3),(20,4,4),(21,4,6),(22,5,2),(23,5,3),(24,5,4),(25,5,6),(26,5,10),(27,5,11),(28,5,12),(29,5,13),(30,6,16),(31,6,2),(32,6,3),(33,6,4),(34,6,6),(35,6,7),(36,6,11),(37,6,12),(38,6,14),(39,6,15),(40,7,17),(41,7,1),(42,7,19),(43,7,2),(44,7,18),(45,7,3),(46,7,4),(47,7,6),(48,7,8),(49,7,11),(50,7,12);
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
