-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_105
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (10,'(.*)'),(7,'Change_View_Status'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(9,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(8,'android.intent.action.VIEW'),(11,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(5,'android.service.wallpaper.WallpaperService'),(13,'android.settings.WIRELESS_SETTINGS'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.allen.txtwdj',1),(2,'com.ps.blackwhite',19),(3,'com.livegame.wallpaperjipinminv',3),(4,'com.gp.geekadoo',6),(5,'com.gp.solitaire',461),(6,'com.wanpu.katongddp',11),(7,'com.mogo.katongllk',12);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.allen.txtwdj.txtReader'),(2,1,'com.google.ssearch.Dialog'),(3,1,'com.allen.txtwdj.ViewFileAct_Float'),(4,1,'com.allen.txtwdj.Settings'),(5,1,'com.google.ssearch.SearchService'),(6,1,'com.google.ssearch.Receiver'),(7,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(8,2,'com.ps.blackwhite.BlackWhite'),(9,2,'com.google.update.Dialog'),(10,2,'com.winad.android.ads.VideoPlayerActivity'),(11,2,'com.winad.android.offers.OffersActivity'),(12,2,'com.winad.android.offers.FeedBack'),(13,2,'com.winad.android.offers.FeedBackInfo'),(14,2,'com.winad.android.push.PushContentActivity'),(15,2,'com.winad.android.offers.Eraser'),(16,2,'com.google.update.UpdateService'),(17,2,'com.winad.android.push.MyService'),(18,2,'com.google.update.Receiver'),(19,2,'com.winad.android.push.BootReceiver'),(20,3,'com.livegame.wallpaperjipinminv.MainActivity'),(21,3,'com.livegame.wallpaperjipinminv.SettingsActivity'),(22,3,'com.livegame.wallpaperjipinminv.SelectFolderActivity'),(23,3,'com.google.ads.AdActivity'),(24,4,'com.gp.geekadoo.ui.MainScreen'),(25,3,'com.vpon.adon.android.WebInApp'),(26,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(27,4,'com.gp.geekadoo.ui.Yaniv'),(28,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(29,4,'com.google.update.Dialog'),(30,3,'com.waps.OffersWebView'),(31,3,'com.google.update.Dialog'),(32,4,'cn.domob.android.ads.DomobActivity'),(33,3,'com.livegame.wallpaperjipinminv.WallpaperSlideshow'),(34,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,4,'com.waps.OffersWebView'),(36,4,'com.google.update.UpdateService'),(37,5,'com.gp.solitaire.Solitaire'),(38,3,'com.google.update.UpdateService'),(39,4,'com.google.update.Receiver'),(40,3,'com.google.update.Receiver'),(41,5,'com.google.update.Dialog'),(42,5,'cn.domob.android.ads.DomobActivity'),(43,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(44,5,'com.waps.OffersWebView'),(45,5,'com.google.update.UpdateService'),(46,5,'com.google.update.Receiver'),(47,6,'com.wanpu.katongddp.begin'),(48,6,'com.wanpu.katongddp.GameActivity'),(49,6,'com.google.ads.AdActivity'),(50,6,'com.vpon.adon.android.WebInApp'),(51,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(52,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(53,6,'com.waps.OffersWebView'),(54,6,'com.google.update.Dialog'),(55,6,'com.google.update.UpdateService'),(56,6,'com.google.update.Receiver'),(57,1,'com.google.ssearch.Dialog$1'),(58,1,'com.google.ssearch.SearchService$MyThread'),(59,7,'com.mogo.katongllk.begin'),(60,7,'com.mogo.katongllk.Main'),(61,7,'com.google.ads.AdActivity'),(62,7,'com.vpon.adon.android.WebInApp'),(63,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(64,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(65,7,'com.waps.OffersWebView'),(66,7,'com.google.update.Dialog'),(67,7,'com.google.update.UpdateService'),(68,7,'com.google.update.Receiver'),(69,2,'com.winad.android.offers.w'),(70,2,'com.google.update.Dialog$2'),(71,2,'com.winad.android.offers.o'),(72,2,'com.google.update.Dialog$1'),(73,2,'com.google.update.UpdateService$AA'),(74,2,'com.winad.android.offers.AdManager'),(75,2,'com.winad.android.offers.WhetherShowBinnerAd$ChangeViewStatus'),(76,2,'com.winad.android.offers.g'),(77,2,'com.winad.android.push.g'),(78,3,'com.livegame.wallpaperjipinminv.MainActivity$2'),(79,6,'com.google.update.Dialog$1'),(80,3,'com.waps.q'),(81,6,'com.waps.AppConnect'),(82,3,'com.google.update.UpdateService$AA'),(83,6,'com.ju6.a'),(84,6,'com.wanpu.katongddp.begin$beginButtonListener'),(85,6,'com.waps.k'),(86,3,'com.waps.o'),(87,4,'com.waps.ac'),(88,4,'com.waps.q'),(89,6,'com.waps.m'),(90,3,'com.google.update.Dialog$2'),(91,3,'com.waps.z'),(92,5,'com.google.update.Dialog$2'),(93,6,'com.google.update.UpdateService$MyThread'),(94,4,'cn.domob.android.ads.DomobAdEngine$2'),(95,4,'com.waps.z'),(96,5,'com.google.update.UpdateService$AA'),(97,6,'com.google.update.Dialog$2'),(98,3,'com.google.update.Dialog$1'),(99,5,'cn.domob.android.ads.DomobAdEngine$2'),(100,5,'cn.domob.android.ads.DomobActionReceiver'),(101,3,'com.waps.ac'),(102,4,'com.google.update.Dialog$1'),(103,5,'com.waps.o'),(104,3,'com.livegame.wallpaperjipinminv.MainActivity$1'),(105,4,'com.gp.geekadoo.ui.MainScreen$5'),(106,3,'com.waps.aa'),(107,5,'com.google.update.Dialog$1'),(108,3,'com.waps.AppConnect'),(109,4,'com.google.update.UpdateService$AA'),(110,5,'cn.domob.android.ads.i$6'),(111,7,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(112,7,'com.google.update.Dialog$1'),(113,4,'cn.domob.android.ads.i'),(114,4,'com.gp.geekadoo.ui.MainScreen$3'),(115,7,'com.mogo.katongllk.begin$beginButtonListener'),(116,7,'com.waps.k'),(117,4,'com.google.update.Dialog$2'),(118,5,'com.waps.aa'),(119,4,'com.waps.aa'),(120,7,'com.ju6.a'),(121,7,'com.mobclick.android.MobclickAgent'),(122,5,'com.waps.q'),(123,7,'com.google.update.Dialog$2'),(124,5,'cn.domob.android.ads.DomobAdManager'),(125,7,'com.waps.m'),(126,4,'com.waps.o'),(127,5,'com.waps.ac'),(128,7,'com.waps.AppConnect'),(129,5,'cn.domob.android.ads.i'),(130,4,'cn.domob.android.ads.DomobAdManager'),(131,5,'com.waps.z'),(132,4,'cn.domob.android.ads.DomobActionReceiver'),(133,4,'cn.domob.android.ads.i$6'),(134,7,'com.google.update.UpdateService$MyThread'),(135,7,'org.loon.framework.android.game.LGameAndroid2DActivity$9');
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
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'TYPEdsada'),(2,2,'MSG'),(3,3,'book1'),(4,3,'/sdcard/txtbooks/wdj.txt'),(5,7,'transitionTime'),(6,7,'shouldShowBottomBar'),(7,7,'shouldMakeOverlayTransparent'),(8,14,'PUBLISHER_ID_ERASER'),(9,17,'PUBLISHER_ID_ERASER'),(10,7,'shouldEnableBottomBar'),(11,16,'ST_MY_PID'),(12,7,'shouldResizeOverlay'),(13,16,'ST_START_DELAY'),(14,14,'AdContent'),(15,9,'TYPEdsada'),(16,10,'URL'),(17,7,'overlayTransition'),(18,14,'TESTMODE_ERASER'),(19,11,'TESTMODE_ERASER'),(20,8,'TESTMODE_ERASER'),(21,17,'TESTMODE_ERASER'),(22,15,'TESTMODE_ERASER'),(23,7,'overlayTitle'),(24,7,'url'),(25,7,'shouldShowTitlebar'),(26,9,'MSG'),(27,53,'CLIENT_PACKAGE'),(28,29,'Offers_URL'),(29,29,'URL'),(30,11,'PUBLISHER_ID_ERASER'),(31,8,'PUBLISHER_ID_ERASER'),(32,15,'PUBLISHER_ID_ERASER'),(33,28,'shouldEnableBottomBar'),(34,29,'isFinshClose'),(35,29,'URL_PARAMS'),(36,25,'adWidth'),(37,28,'url'),(38,29,'Notify_Id'),(39,53,'URL'),(40,52,'shouldResizeOverlay'),(41,28,'overlayTransition'),(42,29,'APP_ID'),(43,20,'APP_ID'),(44,26,'Adwo_PID'),(45,29,'Notify_Url_Params'),(46,29,'WAPS_PID'),(47,20,'WAPS_PID'),(48,49,'com.google.ads.AdOpener'),(49,29,'CLIENT_PACKAGE'),(50,53,'URL_PARAMS'),(51,29,'UrlPath'),(52,52,'overlayTitle'),(53,28,'transitionTime'),(54,50,'adWidth'),(55,29,'WAPS_ID'),(56,47,'CLIENT_PACKAGE'),(57,20,'WAPS_ID'),(58,52,'overlayTransition'),(59,29,'DEVICE_ID'),(60,20,'DEVICE_ID'),(61,29,'ACTIVITY_FLAG'),(62,35,'USER_ID'),(63,31,'appName'),(64,33,'shouldShowBottomBar'),(65,47,'WAPS_ID'),(66,53,'isFinshClose'),(67,52,'shouldShowBottomBar'),(68,33,'shouldEnableBottomBar'),(69,33,'transitionTime'),(70,28,'shouldShowTitlebar'),(71,50,'url'),(72,47,'APP_ID'),(73,52,'shouldMakeOverlayTransparent'),(74,52,'shouldEnableBottomBar'),(75,33,'shouldShowTitlebar'),(76,55,'ST_MY_PID'),(77,35,'ACTIVITY_FLAG'),(78,47,'DEVICE_ID'),(79,31,'actType'),(80,43,'overlayTransition'),(81,35,'UrlPath'),(82,35,'isFinshClose'),(83,39,'ST_MY_PID'),(84,28,'shouldShowBottomBar'),(85,32,'TYPEdsada'),(86,51,'Adwo_PID'),(87,44,'offers_webview_tag'),(88,29,'offers_webview_tag'),(89,44,'SHWO_FLAG'),(90,25,'url'),(91,33,'url'),(92,28,'overlayTitle'),(93,24,'CLIENT_PACKAGE'),(94,35,'CLIENT_PACKAGE'),(95,35,'offers_webview_tag'),(96,24,'DEVICE_ID'),(97,35,'DEVICE_ID'),(98,24,'APP_ID'),(99,53,'USER_ID'),(100,35,'APP_ID'),(101,54,'TYPEdsada'),(102,44,'URL'),(103,47,'WAPS_PID'),(104,28,'shouldMakeOverlayTransparent'),(105,53,'Offers_URL'),(106,29,'SHWO_FLAG'),(107,52,'shouldShowTitlebar'),(108,54,'MSG'),(109,51,'isTestMode'),(110,55,'ST_START_DELAY'),(111,27,'state'),(112,28,'shouldResizeOverlay'),(113,44,'Offers_URL'),(114,42,'appId'),(115,44,'USER_ID'),(116,52,'transitionTime'),(117,44,'UrlPath'),(118,49,'action'),(119,43,'shouldEnableBottomBar'),(120,52,'url'),(121,44,'URL_PARAMS'),(122,49,'params'),(123,29,'USER_ID'),(124,32,'MSG'),(125,26,'isTestMode'),(126,43,'transitionTime'),(127,41,'MSG'),(128,44,'Notify_Url_Params'),(129,39,'ST_START_DELAY'),(130,20,'CLIENT_PACKAGE'),(131,21,'folder'),(132,44,'DEVICE_ID'),(133,37,'DEVICE_ID'),(134,44,'CLIENT_PACKAGE'),(135,37,'CLIENT_PACKAGE'),(136,45,'ST_START_DELAY'),(137,44,'WAPS_PID'),(138,37,'WAPS_PID'),(139,43,'url'),(140,31,'appId'),(141,30,'MSG'),(142,24,'WAPS_ID'),(143,35,'WAPS_ID'),(144,42,'appName'),(145,35,'SHWO_FLAG'),(146,44,'APP_ID'),(147,37,'APP_ID'),(148,35,'Notify_Url_Params'),(149,62,'url'),(150,57,'UMENG_APPKEY'),(151,63,'isFinshClose'),(152,63,'Offers_URL'),(153,27,'gamedata'),(154,63,'URL_PARAMS'),(155,33,'overlayTitle'),(156,63,'URL'),(157,61,'Adwo_PID'),(158,43,'overlayTitle'),(159,41,'TYPEdsada'),(160,44,'isFinshClose'),(161,45,'DOMOB_TEST_MODE'),(162,37,'DOMOB_TEST_MODE'),(163,43,'DOMOB_TEST_MODE'),(164,33,'shouldResizeOverlay'),(165,43,'shouldShowTitlebar'),(166,35,'URL'),(167,57,'WAPS_ID'),(168,64,'TYPEdsada'),(169,63,'USER_ID'),(170,43,'shouldShowBottomBar'),(171,35,'Notify_Id'),(172,44,'Notify_Id'),(173,36,'DOMOB_ALLOW_LOCATION'),(174,33,'DOMOB_ALLOW_LOCATION'),(175,36,'ST_MY_PID'),(176,62,'shouldShowBottomBar'),(177,62,'shouldMakeOverlayTransparent'),(178,62,'shouldEnableBottomBar'),(179,61,'isTestMode'),(180,24,'WAPS_PID'),(181,35,'WAPS_PID'),(182,35,'Offers_URL'),(183,45,'DOMOB_ALLOW_LOCATION'),(184,37,'DOMOB_ALLOW_LOCATION'),(185,43,'DOMOB_ALLOW_LOCATION'),(186,57,'UMENG_CHANNEL'),(187,62,'overlayTransition'),(188,30,'TYPEdsada'),(189,44,'ACTIVITY_FLAG'),(190,60,'adWidth'),(191,35,'URL_PARAMS'),(192,45,'ST_MY_PID'),(193,42,'actType'),(194,33,'shouldMakeOverlayTransparent'),(195,36,'DOMOB_PID'),(196,33,'DOMOB_PID'),(197,62,'overlayTitle'),(198,45,'DOMOB_PID'),(199,33,'overlayTransition'),(200,37,'DOMOB_PID'),(201,36,'ST_START_DELAY'),(202,43,'DOMOB_PID'),(203,36,'DOMOB_TEST_MODE'),(204,33,'DOMOB_TEST_MODE'),(205,65,'ST_START_DELAY'),(206,60,'url'),(207,65,'ST_MY_PID'),(208,43,'shouldMakeOverlayTransparent'),(209,57,'WAPS_PID'),(210,44,'WAPS_ID'),(211,62,'shouldShowTitlebar'),(212,37,'WAPS_ID'),(213,43,'shouldResizeOverlay'),(214,64,'MSG'),(215,57,'CLIENT_PACKAGE'),(216,62,'shouldResizeOverlay'),(217,63,'CLIENT_PACKAGE'),(218,57,'DEVICE_ID'),(219,57,'APP_ID'),(220,62,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',1,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,29,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,31,'a',0,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,33,'s',1,17,NULL),(35,35,'a',0,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,39,'r',1,NULL,NULL),(39,38,'s',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,59,'a',1,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'s',0,NULL,NULL),(66,68,'r',1,NULL,NULL),(67,75,'r',1,NULL,NULL),(68,76,'r',1,NULL,NULL),(69,77,'r',1,NULL,NULL),(70,80,'r',1,NULL,NULL),(71,88,'r',1,NULL,NULL),(72,89,'r',1,NULL,NULL),(73,100,'r',1,NULL,NULL),(74,122,'r',1,NULL,NULL),(75,125,'r',1,NULL,NULL),(76,132,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,5),(3,3,3),(4,4,1),(5,5,2),(6,6,5),(7,7,5),(8,8,15),(9,9,9),(10,10,11),(11,11,15),(12,12,9),(13,13,16),(14,14,18),(15,15,16),(16,16,15),(17,17,16),(18,18,19),(19,19,49),(20,20,29),(21,21,20),(22,22,54),(23,23,40),(24,24,47),(25,25,39),(26,26,55),(27,27,47),(28,28,53),(29,29,29),(30,30,35),(31,31,39),(32,32,55),(33,33,35),(34,34,32),(35,35,29),(36,36,56),(37,37,41),(38,38,38),(39,39,55),(40,40,45),(41,41,39),(42,42,36),(43,42,33),(44,43,35),(45,44,45),(46,45,29),(47,46,54),(48,47,36),(49,48,32),(50,49,55),(51,50,45),(52,50,43),(53,50,37),(54,51,35),(55,52,22),(56,52,29),(57,53,30),(58,54,44),(59,55,20),(60,56,45),(61,57,24),(62,58,29),(63,59,41),(64,60,20),(65,61,44),(66,62,36),(67,63,45),(68,63,43),(69,63,37),(70,64,62),(71,64,58),(72,64,65),(73,65,24),(74,66,64),(75,67,33),(76,67,36),(77,68,24),(78,69,57),(79,70,63),(80,71,30),(81,72,44),(82,73,35),(83,74,65),(84,75,58),(85,75,65),(86,75,62),(87,76,64),(88,77,37),(89,77,43),(90,77,45),(91,78,36),(92,79,44),(93,80,65),(94,81,35),(95,82,44),(96,83,24),(97,84,46),(98,85,57),(99,86,45),(100,86,37),(101,86,43),(102,87,33),(103,87,36),(104,88,65),(105,89,44),(106,90,33),(107,90,36),(108,91,66),(109,92,65),(110,93,58),(111,93,62),(112,93,65);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,6,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,5,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(3,3,'<com.allen.txtwdj.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(4,1,'<com.allen.txtwdj.txtReader: void onClick(android.view.View)>',10,'a',NULL),(5,57,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(6,5,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(7,58,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(8,69,'<com.winad.android.offers.w: void onClick(android.view.View)>',11,'r',NULL),(9,70,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,11,'<com.winad.android.offers.OffersActivity: void onClick(android.view.View)>',8,'a',NULL),(11,71,'<com.winad.android.offers.o: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(12,72,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(13,16,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(14,18,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(15,73,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(16,74,'<com.winad.android.offers.AdManager: void showAdOffers(android.content.Context)>',5,'a',NULL),(17,16,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(18,19,'<com.winad.android.push.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',22,'s',NULL),(19,49,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(20,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(21,78,'<com.livegame.wallpaperjipinminv.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(22,79,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(23,40,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(24,81,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(25,82,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(26,83,'<com.ju6.a: boolean b()>',178,'p',NULL),(27,84,'<com.wanpu.katongddp.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(28,85,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(29,86,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(30,87,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(31,38,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(32,55,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(33,35,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(34,90,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(35,91,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(36,56,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,92,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(38,39,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(39,93,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(40,45,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(41,38,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(42,94,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(43,95,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(44,96,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(45,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(46,97,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(47,36,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(48,98,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(49,55,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(50,99,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(51,35,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(52,101,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(53,102,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(54,103,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(55,104,'<com.livegame.wallpaperjipinminv.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(56,45,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(57,105,'<com.gp.geekadoo.ui.MainScreen$5: void onClick(android.view.View)>',52,'a',NULL),(58,106,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(59,107,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,108,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(61,44,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(62,109,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(63,110,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(64,111,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(65,24,'<com.gp.geekadoo.ui.MainScreen: void startYanivHandler()>',5,'a',NULL),(66,112,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(67,113,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(68,114,'<com.gp.geekadoo.ui.MainScreen$3: void onClick(android.view.View)>',6,'a',NULL),(69,115,'<com.mogo.katongllk.begin$beginButtonListener: void onClick(android.view.View)>',37,'a',NULL),(70,116,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(71,117,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(72,118,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(73,119,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(74,120,'<com.ju6.a: boolean b()>',178,'p',NULL),(75,121,'<com.mobclick.android.MobclickAgent: void c(android.content.Context,java.io.File)>',11,'a',NULL),(76,123,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(77,124,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(78,36,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(79,44,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(80,67,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(81,126,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(82,127,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(83,24,'<com.gp.geekadoo.ui.MainScreen: void resumeYanivHandler()>',5,'a',NULL),(84,46,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(85,128,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(86,129,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(87,130,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(88,67,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(89,131,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(90,133,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(91,68,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(92,134,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(93,135,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,6,6),(2,9,1),(3,10,1),(4,11,7),(5,12,6),(6,16,8),(7,17,8),(8,18,1),(9,19,1),(10,23,1),(11,24,1),(12,29,10),(13,31,1),(14,32,8),(15,33,1),(16,34,10),(17,36,1),(18,37,1),(19,40,1),(20,41,1),(21,43,8),(22,44,8),(23,51,1),(24,52,6),(25,53,1),(26,54,8),(27,56,6),(28,58,1),(29,61,1),(30,64,8),(31,65,1),(32,67,1),(33,68,6),(34,70,1),(35,73,1),(36,77,1),(37,78,8),(38,79,1),(39,80,11),(40,83,12),(41,85,12),(42,86,12),(43,88,12),(44,89,1),(45,90,12),(46,91,1),(47,92,12),(48,93,12),(49,95,12),(50,97,1),(51,98,8),(52,99,1),(53,102,8),(54,103,8),(55,105,1),(56,106,8),(57,107,8),(58,108,1),(59,109,8),(60,110,8),(61,113,6),(62,112,8),(63,118,8),(64,119,6),(65,122,1),(66,124,1),(67,127,8),(68,132,8),(69,135,8),(70,136,8),(71,139,8),(72,140,1),(73,141,8),(74,142,1),(75,143,8),(76,144,8),(77,145,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,9,2),(2,10,1),(3,18,1),(4,19,2),(5,23,1),(6,24,2),(7,29,3),(8,31,1),(9,32,3),(10,33,2),(11,34,3),(12,36,1),(13,37,2),(14,40,2),(15,41,1),(16,51,1),(17,53,2),(18,58,2),(19,61,1),(20,65,1),(21,67,2),(22,70,1),(23,73,2),(24,77,1),(25,79,2),(26,89,1),(27,91,2),(28,97,1),(29,99,2),(30,105,1),(31,108,2),(32,122,1),(33,124,2),(34,140,2),(35,142,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/google/ssearch/SearchService'),(2,2,'com/google/ssearch/Dialog'),(3,3,'com/google/ssearch/Dialog'),(4,4,'com/allen/txtwdj/Settings'),(5,5,'com/allen/txtwdj/ViewFileAct_Float'),(6,7,'com/google/ssearch/Dialog'),(7,8,'com/google/ssearch/Dialog'),(8,14,'com/winad/android/offers/FeedBackInfo'),(9,15,'com/winad/android/offers/FeedBack'),(10,17,'com.android.settings.WirelessSettings'),(11,20,'com/google/update/Dialog'),(12,21,'com/google/update/Dialog'),(13,22,'com/google/update/UpdateService'),(14,25,'com/winad/android/offers/OffersActivity'),(15,26,'com/google/update/Dialog'),(16,27,'com/google/update/Dialog'),(17,28,'com/winad/android/push/MyService'),(18,35,'com/livegame/wallpaperjipinminv/SettingsActivity'),(19,38,'com/google/update/UpdateService'),(20,39,'com/waps/OffersWebView'),(21,42,'com/wanpu/katongddp/GameActivity'),(22,45,'NULL-CONSTANT'),(23,46,'com/google/update/Dialog'),(24,47,'com/google/update/Dialog'),(25,48,'com/google/update/Dialog'),(26,49,'com/google/update/Dialog'),(27,55,'com/google/update/UpdateService'),(28,57,'com/google/update/UpdateService'),(29,59,'com/google/update/Dialog'),(30,60,'com/google/update/Dialog'),(31,62,'com/google/update/Dialog'),(32,63,'com/google/update/Dialog'),(33,66,'(.*)'),(34,69,'com/google/update/Dialog'),(35,71,'com/google/update/Dialog'),(36,72,'com/google/update/Dialog'),(37,74,'com/google/update/Dialog'),(38,75,'(.*)'),(39,76,'NULL-CONSTANT'),(40,81,'com/google/update/Dialog'),(41,84,'com/google/update/Dialog'),(42,82,'com/waps/OffersWebView'),(43,87,'com/waps/OffersWebView'),(44,94,'com/waps/OffersWebView'),(45,96,'(.*)'),(46,104,'com/gp/geekadoo/ui/Yaniv'),(47,111,'com/mogo/katongllk/Main'),(48,114,'com/waps/OffersWebView'),(49,115,'com/waps/OffersWebView'),(50,116,'com/waps/OffersWebView'),(51,117,'com/waps/OffersWebView'),(52,120,'com/google/update/Dialog'),(53,123,'com/google/update/Dialog'),(54,125,'com/google/update/Dialog'),(55,126,'com/google/update/Dialog'),(56,128,'NULL-CONSTANT'),(57,130,'com/google/update/UpdateService'),(58,129,'com/gp/geekadoo/ui/Yaniv'),(59,131,'com/waps/OffersWebView'),(60,133,'com/google/update/Dialog'),(61,134,'com/google/update/Dialog'),(62,137,'com/google/update/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,16,1),(2,29,2),(3,32,3),(4,34,4),(5,43,6),(6,44,7),(7,54,8),(8,64,9),(9,78,10),(10,98,11),(11,102,12),(12,103,13),(13,106,14),(14,107,15),(15,109,16),(16,110,17),(17,112,18),(18,118,20),(19,127,22),(20,132,23),(21,135,25),(22,136,26),(23,139,27),(24,141,28),(25,143,29),(26,144,30);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'TYPEdsada'),(2,3,'MSG'),(3,3,'TYPEdsada'),(4,5,'/sdcard/txtbooks/wdj.txt'),(5,5,'book1'),(6,7,'TYPEdsada'),(7,8,'MSG'),(8,8,'TYPEdsada'),(9,20,'MSG'),(10,20,'TYPEdsada'),(11,21,'TYPEdsada'),(12,26,'MSG'),(13,26,'TYPEdsada'),(14,27,'TYPEdsada'),(15,39,'USER_ID'),(16,39,'CLIENT_PACKAGE'),(17,39,'Offers_URL'),(18,39,'URL_PARAMS'),(19,46,'MSG'),(20,47,'MSG'),(21,46,'TYPEdsada'),(22,47,'TYPEdsada'),(23,48,'TYPEdsada'),(24,49,'TYPEdsada'),(25,59,'MSG'),(26,60,'MSG'),(27,59,'TYPEdsada'),(28,60,'TYPEdsada'),(29,62,'TYPEdsada'),(30,63,'TYPEdsada'),(31,69,'MSG'),(32,69,'TYPEdsada'),(33,71,'MSG'),(34,71,'TYPEdsada'),(35,72,'TYPEdsada'),(36,74,'TYPEdsada'),(37,80,'android.live_wallpaper.package'),(38,80,'android.live_wallpaper.settings'),(39,81,'MSG'),(40,81,'TYPEdsada'),(41,82,'UrlPath'),(42,84,'TYPEdsada'),(43,83,'android.intent.extra.INTENT'),(44,82,'ACTIVITY_FLAG'),(45,82,'isFinshClose'),(46,82,'offers_webview_tag'),(47,85,'android.intent.extra.INTENT'),(48,86,'android.intent.extra.TITLE'),(49,87,'Notify_Url_Params'),(50,87,'UrlPath'),(51,86,'android.intent.extra.INTENT'),(52,87,'ACTIVITY_FLAG'),(53,87,'isFinshClose'),(54,88,'android.intent.extra.INTENT'),(55,87,'offers_webview_tag'),(56,90,'android.intent.extra.TITLE'),(57,90,'android.intent.extra.INTENT'),(58,92,'android.intent.extra.INTENT'),(59,93,'android.intent.extra.TITLE'),(60,94,'USER_ID'),(61,94,'CLIENT_PACKAGE'),(62,93,'android.intent.extra.INTENT'),(63,94,'Offers_URL'),(64,94,'offers_webview_tag'),(65,95,'android.intent.extra.TITLE'),(66,94,'URL_PARAMS'),(67,95,'android.intent.extra.INTENT'),(68,104,'state'),(69,114,'UrlPath'),(70,114,'ACTIVITY_FLAG'),(71,114,'isFinshClose'),(72,114,'offers_webview_tag'),(73,115,'UrlPath'),(74,115,'ACTIVITY_FLAG'),(75,116,'Notify_Url_Params'),(76,115,'isFinshClose'),(77,116,'UrlPath'),(78,115,'offers_webview_tag'),(79,116,'ACTIVITY_FLAG'),(80,116,'isFinshClose'),(81,116,'offers_webview_tag'),(82,117,'Notify_Url_Params'),(83,117,'UrlPath'),(84,117,'ACTIVITY_FLAG'),(85,117,'isFinshClose'),(86,117,'offers_webview_tag'),(87,120,'MSG'),(88,120,'TYPEdsada'),(89,123,'TYPEdsada'),(90,125,'TYPEdsada'),(91,126,'MSG'),(92,126,'TYPEdsada'),(93,129,'state'),(94,131,'USER_ID'),(95,131,'CLIENT_PACKAGE'),(96,131,'Offers_URL'),(97,131,'URL_PARAMS'),(98,133,'TYPEdsada'),(99,134,'MSG'),(100,134,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,3),(10,6,1),(11,7,1),(12,8,5),(13,9,1),(14,10,3),(15,10,4),(16,10,2),(17,11,4),(18,11,3),(19,11,2),(20,12,4),(21,12,3),(22,12,2),(23,13,1),(24,14,2),(25,14,4),(26,14,3),(27,15,1),(28,16,2),(29,16,3),(30,16,4),(31,17,9),(32,18,9),(33,19,9),(34,20,9),(35,21,9),(36,22,9),(37,23,9),(38,24,9),(39,25,9),(40,26,9),(41,27,9),(42,28,9),(43,29,9),(44,30,9),(45,31,9),(46,32,9),(47,33,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,6,1),(4,7,1),(5,9,1),(6,13,1),(7,15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,18,'package',NULL,NULL,NULL,NULL,NULL),(3,19,'package',NULL,NULL,NULL,NULL,NULL),(4,20,'package',NULL,NULL,NULL,NULL,NULL),(5,21,'package',NULL,NULL,NULL,NULL,NULL),(6,22,'package',NULL,NULL,NULL,NULL,NULL),(7,23,'package',NULL,NULL,NULL,NULL,NULL),(8,24,'package',NULL,NULL,NULL,NULL,NULL),(9,25,'package',NULL,NULL,NULL,NULL,NULL),(10,26,'package',NULL,NULL,NULL,NULL,NULL),(11,27,'package',NULL,NULL,NULL,NULL,NULL),(12,28,'package',NULL,NULL,NULL,NULL,NULL),(13,29,'package',NULL,NULL,NULL,NULL,NULL),(14,30,'package',NULL,NULL,NULL,NULL,NULL),(15,31,'package',NULL,NULL,NULL,NULL,NULL),(16,32,'package',NULL,NULL,NULL,NULL,NULL),(17,33,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,34,'(.*)','(.*)'),(2,43,'application','vnd.android.package-archive'),(3,44,'application','vnd.android.package-archive'),(4,54,'application','vnd.android.package-archive'),(5,64,'application','vnd.android.package-archive'),(6,78,'application','vnd.android.package-archive'),(7,98,'application','vnd.android.package-archive'),(8,102,'application','vnd.android.package-archive'),(9,103,'application','vnd.android.package-archive'),(10,106,'application','vnd.android.package-archive'),(11,109,'application','vnd.android.package-archive'),(12,112,'application','vnd.android.package-archive'),(13,118,'application','vnd.android.package-archive'),(14,127,'application','vnd.android.package-archive'),(15,135,'application','vnd.android.package-archive'),(16,136,'application','vnd.android.package-archive'),(17,139,'application','vnd.android.package-archive'),(18,141,'application','vnd.android.package-archive'),(19,143,'application','vnd.android.package-archive'),(20,144,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.allen.txtwdj'),(2,2,'com.allen.txtwdj'),(3,3,'com.allen.txtwdj'),(4,4,'com.allen.txtwdj'),(5,5,'com.allen.txtwdj'),(6,7,'com.allen.txtwdj'),(7,8,'com.allen.txtwdj'),(8,9,'com.allen.txtwdj'),(9,10,'com.allen.txtwdj'),(10,14,'com.ps.blackwhite'),(11,15,'com.ps.blackwhite'),(12,17,'com.android.settings'),(13,18,'com.noshufou.android.su'),(14,19,'com.noshufou.android.su'),(15,20,'com.ps.blackwhite'),(16,21,'com.ps.blackwhite'),(17,22,'com.ps.blackwhite'),(18,23,'com.ps.blackwhite'),(19,24,'com.ps.blackwhite'),(20,25,'com.ps.blackwhite'),(21,26,'com.ps.blackwhite'),(22,27,'com.ps.blackwhite'),(23,28,'com.ps.blackwhite'),(24,31,'(.*)'),(25,33,'(.*)'),(26,35,'com.livegame.wallpaperjipinminv'),(27,36,'com.noshufou.android.su'),(28,37,'com.noshufou.android.su'),(29,38,'com.livegame.wallpaperjipinminv'),(30,39,'com.wanpu.katongddp'),(31,40,'com.livegame.wallpaperjipinminv'),(32,41,'com.livegame.wallpaperjipinminv'),(33,42,'com.wanpu.katongddp'),(34,45,'NULL-CONSTANT'),(35,46,'com.livegame.wallpaperjipinminv'),(36,47,'com.wanpu.katongddp'),(37,48,'com.livegame.wallpaperjipinminv'),(38,49,'com.wanpu.katongddp'),(39,51,'(.*)'),(40,53,'(.*)'),(41,55,'com.wanpu.katongddp'),(42,57,'com.gp.geekadoo'),(43,58,'com.wanpu.katongddp'),(44,59,'com.gp.solitaire'),(45,60,'com.livegame.wallpaperjipinminv'),(46,61,'com.wanpu.katongddp'),(47,62,'com.gp.solitaire'),(48,63,'com.livegame.wallpaperjipinminv'),(49,65,'com.gp.solitaire'),(50,66,'(.*)'),(51,67,'com.gp.solitaire'),(52,70,'com.noshufou.android.su'),(53,69,'com.gp.geekadoo'),(54,71,'com.wanpu.katongddp'),(55,73,'com.noshufou.android.su'),(56,72,'com.gp.geekadoo'),(57,74,'com.wanpu.katongddp'),(58,75,'(.*)'),(59,76,'NULL-CONSTANT'),(60,77,'com.noshufou.android.su'),(61,79,'com.noshufou.android.su'),(62,81,'com.gp.solitaire'),(63,84,'com.gp.solitaire'),(64,82,'com.livegame.wallpaperjipinminv'),(65,89,'com.noshufou.android.su'),(66,87,'com.livegame.wallpaperjipinminv'),(67,91,'com.noshufou.android.su'),(68,94,'com.livegame.wallpaperjipinminv'),(69,96,'(.*)'),(70,97,'com.gp.geekadoo'),(71,99,'com.gp.geekadoo'),(72,104,'com.gp.geekadoo'),(73,105,'com.noshufou.android.su'),(74,108,'com.noshufou.android.su'),(75,111,'com.mogo.katongllk'),(76,114,'com.gp.solitaire'),(77,115,'com.gp.geekadoo'),(78,116,'com.gp.solitaire'),(79,117,'com.gp.geekadoo'),(80,120,'com.gp.geekadoo'),(81,122,'(.*)'),(82,123,'com.gp.geekadoo'),(83,124,'(.*)'),(84,125,'com.mogo.katongllk'),(85,126,'com.mogo.katongllk'),(86,128,'NULL-CONSTANT'),(87,130,'com.gp.solitaire'),(88,129,'com.gp.geekadoo'),(89,131,'com.mogo.katongllk'),(90,133,'com.mogo.katongllk'),(91,134,'com.mogo.katongllk'),(92,137,'com.mogo.katongllk'),(93,140,'com.mogo.katongllk'),(94,142,'com.mogo.katongllk');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,8,0),(4,18,0),(5,19,0),(6,20,0),(7,24,0),(8,34,0),(9,37,0),(10,38,0),(11,40,0),(12,46,0),(13,47,0),(14,56,0),(15,57,0),(16,66,0),(17,18,0),(18,67,0),(19,19,0),(20,68,0),(21,69,0),(22,18,0),(23,67,0),(24,19,0),(25,68,0),(26,69,0),(27,70,0),(28,71,0),(29,72,0),(30,73,0),(31,74,0),(32,75,0),(33,76,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,2,0,0),(4,3,0,0),(5,4,0,0),(6,5,1,0),(7,6,0,0),(8,6,0,0),(9,7,1,0),(10,7,1,0),(11,8,1,0),(12,9,1,0),(13,10,1,0),(14,10,0,0),(15,10,0,0),(16,10,1,0),(17,11,0,0),(18,12,1,0),(19,12,1,0),(20,13,0,0),(21,13,0,0),(22,14,0,0),(23,15,1,0),(24,15,1,0),(25,16,0,0),(26,17,0,0),(27,17,0,0),(28,18,0,0),(29,19,1,0),(30,20,1,0),(31,20,1,0),(32,19,1,0),(33,20,1,0),(34,19,1,0),(35,21,0,0),(36,22,1,0),(37,22,1,0),(38,23,0,0),(39,24,0,0),(40,25,1,0),(41,25,1,0),(42,27,0,0),(43,28,1,0),(44,29,1,0),(45,30,0,0),(46,31,0,0),(47,32,0,0),(48,31,0,0),(49,32,0,0),(50,33,1,0),(51,33,1,0),(52,34,1,0),(53,33,1,0),(54,35,1,0),(55,36,0,0),(56,37,1,0),(57,38,0,0),(58,39,1,0),(59,40,0,0),(60,41,0,0),(61,39,1,0),(62,40,0,0),(63,41,0,0),(64,43,1,0),(65,44,1,0),(66,45,0,0),(67,44,1,0),(68,46,1,0),(69,47,0,0),(70,48,1,0),(71,49,0,0),(72,47,0,0),(73,48,1,0),(74,49,0,0),(75,51,0,0),(76,52,0,0),(77,53,1,0),(78,54,1,0),(79,53,1,0),(80,55,1,0),(81,56,0,0),(82,58,0,0),(83,57,1,0),(84,56,0,0),(85,57,1,0),(86,57,1,0),(87,58,0,0),(88,57,1,0),(89,59,1,0),(90,57,1,0),(91,59,1,0),(92,57,1,0),(93,57,1,0),(94,60,0,0),(95,57,1,0),(96,61,0,0),(97,62,1,0),(98,63,1,0),(99,62,1,0),(100,63,1,0),(101,64,1,0),(102,63,1,0),(103,63,1,0),(104,65,0,0),(105,66,1,0),(106,63,1,0),(107,67,1,0),(108,66,1,0),(109,63,1,0),(110,68,1,0),(111,69,0,0),(112,70,1,0),(113,71,1,0),(114,72,0,0),(115,73,0,0),(116,72,0,0),(117,73,0,0),(118,75,1,0),(119,76,1,0),(120,78,0,0),(121,79,1,0),(122,79,1,0),(123,78,0,0),(124,79,1,0),(125,80,0,0),(126,80,0,0),(127,81,1,0),(128,82,0,0),(129,83,0,0),(130,84,0,0),(131,85,0,0),(132,86,1,0),(133,88,0,0),(134,88,0,0),(135,89,1,0),(136,90,1,0),(137,91,0,0),(138,90,1,0),(139,90,1,0),(140,92,1,0),(141,90,1,0),(142,92,1,0),(143,90,1,0),(144,90,1,0),(145,93,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(6,'android.permission.ACCESS_FINE_LOCATION'),(14,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(17,'android.permission.BIND_WALLPAPER'),(18,'android.permission.CHANGE_CONFIGURATION'),(5,'android.permission.CHANGE_WIFI_STATE'),(12,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(13,'android.permission.READ_EXTERNAL_STORAGE'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(16,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://winads.cn',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(12,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'file://',NULL,NULL,NULL),(17,NULL,NULL,'http://www.youtube.com/watch?v=V4XuZRbbs6M',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(27,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(30,NULL,NULL,'file://',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,26,5),(2,74,19),(3,77,21),(4,87,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,2,2),(12,2,3),(13,2,4),(14,2,5),(15,2,6),(16,2,8),(17,2,9),(18,2,10),(19,2,11),(20,3,1),(21,3,3),(22,3,4),(23,3,5),(24,3,6),(25,3,8),(26,3,9),(27,3,10),(28,3,11),(29,4,1),(30,3,12),(31,4,3),(32,4,4),(33,4,5),(34,4,6),(35,4,8),(36,4,9),(37,4,10),(38,4,12),(39,4,13),(40,4,14),(41,5,1),(42,5,2),(43,5,3),(44,5,4),(45,5,5),(46,5,6),(47,5,8),(48,5,9),(49,5,10),(50,5,11),(51,5,12),(52,5,13),(53,5,14),(54,5,15),(55,5,16),(56,6,1),(57,6,2),(58,6,3),(59,6,4),(60,6,5),(61,6,6),(62,6,8),(63,6,9),(64,6,11),(65,6,13),(66,6,14),(67,6,15),(68,6,16),(69,7,1),(70,7,2),(71,7,3),(72,7,4),(73,7,5),(74,7,6),(75,7,8),(76,7,9),(77,7,11),(78,7,13),(79,7,14),(80,7,15),(81,7,16),(82,7,18);
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

-- Dump completed on 2015-10-09  0:38:02
