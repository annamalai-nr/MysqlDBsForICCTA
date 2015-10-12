-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_175
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(6,'android.intent.action.NEW_OUTGOING_CALL'),(9,'android.intent.action.PACKAGE_ADDED'),(7,'android.intent.action.PHONE_STATE'),(2,'android.intent.action.SIG_STR'),(10,'android.intent.action.VIEW'),(11,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(5,'android.service.wallpaper.WallpaperService'),(8,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.wqx.blackjack',3),(2,'com.ps.ddp',6),(3,'com.ps.ddp',4),(4,'com.gp.tiltmazes',1),(5,'com.livegame.wallpaperxiaopohai',3),(6,'com.gp.tiltmazes',12),(7,'com.gp.animalkeeper',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.wqx.blackjack.Blackjack'),(3,1,'com.wqx.blackjack.Card'),(4,1,'com.google.update.Dialog'),(5,1,'com.google.update.UpdateService'),(6,1,'com.google.update.Receiver'),(7,2,'com.ps.ddp.MainActivity'),(8,3,'com.ps.ddp.MainActivity'),(9,2,'com.ps.ddp.DemoApp'),(10,2,'com.ps.ddp.GameActivity'),(11,3,'com.ps.ddp.DemoApp'),(12,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(13,3,'com.ps.ddp.GameActivity'),(14,2,'com.google.update.Dialog'),(15,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(16,2,'com.waps.OffersWebView'),(17,3,'com.google.update.Dialog'),(18,2,'com.google.update.UpdateService'),(19,3,'com.waps.OffersWebView'),(20,2,'com.google.update.Receiver'),(21,3,'com.google.update.UpdateService'),(22,3,'com.google.update.Receiver'),(23,4,'com.gp.tiltmazes.TiltMazesActivity'),(24,4,'com.gp.tiltmazes.SelectMazeActivity'),(25,4,'com.google.update.Dialog'),(26,4,'cn.domob.android.ads.DomobActivity'),(27,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(28,4,'com.google.update.UpdateService'),(29,4,'com.google.update.Receiver'),(30,5,'com.livegame.wallpaperxiaopohai.MainActivity'),(31,5,'com.livegame.wallpaperxiaopohai.SettingsActivity'),(32,5,'com.livegame.wallpaperxiaopohai.SelectFolderActivity'),(33,6,'com.gp.tiltmazes.TiltMazesActivity'),(34,5,'com.google.ads.AdActivity'),(35,5,'com.vpon.adon.android.WebInApp'),(36,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(37,6,'com.gp.tiltmazes.SelectMazeActivity'),(38,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(39,6,'com.google.update.Dialog'),(40,5,'com.waps.OffersWebView'),(41,6,'cn.domob.android.ads.DomobActivity'),(42,5,'com.google.update.Dialog'),(43,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(44,5,'com.livegame.wallpaperxiaopohai.WallpaperSlideshow'),(45,6,'com.waps.OffersWebView'),(46,6,'com.google.update.UpdateService'),(47,6,'com.google.update.Receiver'),(48,5,'com.google.update.UpdateService'),(49,5,'com.google.update.Receiver'),(50,7,'com.gp.animalkeeper.GameStartMenu'),(51,7,'com.gp.animalkeeper.GameMainActivity'),(52,7,'com.gp.animalkeeper.GameOverMenu'),(53,7,'com.gp.animalkeeper.Top'),(54,7,'cn.domob.android.ads.DomobActivity'),(55,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(56,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(57,7,'com.google.update.Dialog'),(58,7,'com.google.update.UpdateService'),(59,7,'com.gp.animalkeeper.CallReceiver'),(60,1,'com.ju6.a'),(61,7,'com.google.update.Receiver'),(62,1,'com.google.update.Dialog$1'),(63,1,'com.google.update.Dialog$2'),(64,1,'com.google.update.UpdateService$MyThread'),(65,2,'com.waps.m'),(66,2,'com.google.update.Dialog$2'),(67,2,'com.google.update.Dialog$1'),(68,2,'com.waps.o'),(69,2,'com.waps.k'),(70,3,'com.waps.o'),(71,3,'com.waps.m'),(72,2,'com.waps.AppConnect'),(73,3,'com.waps.AppConnect'),(74,4,'cn.domob.android.ads.i'),(75,4,'com.google.update.UpdateService$MyThread'),(76,4,'cn.domob.android.ads.DomobAdEngine$2'),(77,4,'cn.domob.android.ads.DomobAdManager'),(78,3,'com.google.update.Dialog$1'),(79,4,'com.google.update.Dialog$2'),(80,2,'com.ju6.a'),(81,5,'com.google.update.Dialog$1'),(82,3,'com.google.update.UpdateService$MyThread'),(83,4,'cn.domob.android.ads.i$6'),(84,5,'com.waps.ac'),(85,2,'com.google.update.UpdateService$MyThread'),(86,3,'com.ju6.a'),(87,5,'com.waps.aa'),(88,4,'com.ju6.a'),(89,3,'com.waps.k'),(90,4,'com.google.update.Dialog$1'),(91,6,'com.google.update.Dialog$1'),(92,5,'com.waps.q'),(93,4,'cn.domob.android.ads.DomobActionReceiver'),(94,5,'com.waps.AppConnect'),(95,3,'com.google.update.Dialog$2'),(96,5,'com.google.update.Dialog$2'),(97,6,'cn.domob.android.ads.i'),(98,5,'com.waps.o'),(99,5,'com.waps.z'),(100,6,'cn.domob.android.ads.DomobActionReceiver'),(101,6,'com.waps.z'),(102,5,'com.google.update.UpdateService$AA'),(103,6,'cn.domob.android.ads.i$6'),(104,5,'com.livegame.wallpaperxiaopohai.MainActivity$2'),(105,5,'com.livegame.wallpaperxiaopohai.MainActivity$1'),(106,6,'cn.domob.android.ads.DomobAdEngine$2'),(107,6,'com.waps.aa'),(108,6,'com.google.update.UpdateService$AA'),(109,6,'com.waps.q'),(110,6,'cn.domob.android.ads.DomobAdManager'),(111,6,'com.waps.o'),(112,6,'com.google.update.Dialog$2'),(113,6,'com.waps.ac'),(114,7,'cn.domob.android.ads.e'),(115,7,'cn.domob.android.ads.g$1'),(116,7,'cn.domob.android.ads.DomobAdManager'),(117,7,'cn.domob.android.ads.o'),(118,7,'com.google.update.Dialog$1'),(119,7,'cn.domob.android.ads.o$5'),(120,7,'com.google.update.Dialog$2'),(121,7,'com.gp.animalkeeper.GameOverMenu$5'),(122,7,'com.google.update.UpdateService$AA'),(123,7,'cn.domob.android.a.a$a');
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
INSERT INTO `ComponentExtras` VALUES (1,2,'mMoney'),(2,2,'mMaxScore'),(3,1,'shouldEnableBottomBar'),(4,5,'ST_MY_PID'),(5,3,'mLoseCount'),(6,1,'transitionTime'),(7,2,'mWinCount'),(8,1,'shouldResizeOverlay'),(9,1,'shouldMakeOverlayTransparent'),(10,3,'mWinCount'),(11,1,'shouldShowTitlebar'),(12,2,'mCurrentScore'),(13,2,'mStartTime'),(14,1,'shouldShowBottomBar'),(15,2,'Blackjack'),(16,3,'mMoney'),(17,3,'mStartTime'),(18,2,'mLoseCount'),(19,3,'mMaxScore'),(20,3,'mCurrentScore'),(21,4,'TYPEdsada'),(22,1,'overlayTransition'),(23,1,'url'),(24,4,'MSG'),(25,5,'ST_START_DELAY'),(26,1,'overlayTitle'),(27,16,'URL_PARAMS'),(28,12,'shouldResizeOverlay'),(29,12,'transitionTime'),(30,18,'CLIENT_PACKAGE'),(31,9,'CLIENT_PACKAGE'),(32,12,'CLIENT_PACKAGE'),(33,14,'TYPEdsada'),(34,7,'APP_ID'),(35,18,'APP_ID'),(36,9,'APP_ID'),(37,12,'APP_ID'),(38,19,'CLIENT_PACKAGE'),(39,19,'URL_PARAMS'),(40,12,'overlayTransition'),(41,16,'Offers_URL'),(42,7,'WAPS_ID'),(43,18,'WAPS_ID'),(44,9,'WAPS_ID'),(45,12,'WAPS_ID'),(46,12,'url'),(47,16,'isFinshClose'),(48,7,'DEVICE_ID'),(49,18,'DEVICE_ID'),(50,9,'DEVICE_ID'),(51,12,'DEVICE_ID'),(52,15,'overlayTransition'),(53,16,'URL'),(54,12,'shouldEnableBottomBar'),(55,15,'shouldEnableBottomBar'),(56,8,'DEVICE_ID'),(57,21,'DEVICE_ID'),(58,11,'DEVICE_ID'),(59,23,'stepcount'),(60,15,'DEVICE_ID'),(61,26,'appName'),(62,19,'URL'),(63,26,'appId'),(64,7,'WAPS_PID'),(65,8,'CLIENT_PACKAGE'),(66,23,'map.goals'),(67,18,'WAPS_PID'),(68,27,'shouldResizeOverlay'),(69,21,'CLIENT_PACKAGE'),(70,9,'WAPS_PID'),(71,11,'CLIENT_PACKAGE'),(72,12,'WAPS_PID'),(73,15,'CLIENT_PACKAGE'),(74,16,'USER_ID'),(75,16,'CLIENT_PACKAGE'),(76,12,'shouldShowTitlebar'),(77,14,'MSG'),(78,23,'ball.x'),(79,35,'url'),(80,27,'url'),(81,23,'ball.y'),(82,25,'TYPEdsada'),(83,28,'DOMOB_ALLOW_LOCATION'),(84,27,'DOMOB_ALLOW_LOCATION'),(85,28,'ST_START_DELAY'),(86,23,'map.id'),(87,40,'URL_PARAMS'),(88,27,'shouldEnableBottomBar'),(89,28,'DOMOB_TEST_MODE'),(90,27,'DOMOB_TEST_MODE'),(91,25,'MSG'),(92,8,'WAPS_ID'),(93,21,'WAPS_ID'),(94,11,'WAPS_ID'),(95,15,'WAPS_ID'),(96,19,'isFinshClose'),(97,12,'shouldMakeOverlayTransparent'),(98,7,'CLIENT_PACKAGE'),(99,12,'overlayTitle'),(100,27,'overlayTransition'),(101,27,'transitionTime'),(102,48,'ST_MY_PID'),(103,27,'shouldShowBottomBar'),(104,18,'ST_MY_PID'),(105,30,'DEVICE_ID'),(106,40,'DEVICE_ID'),(107,8,'APP_ID'),(108,40,'UrlPath'),(109,21,'APP_ID'),(110,11,'APP_ID'),(111,15,'APP_ID'),(112,30,'WAPS_ID'),(113,40,'WAPS_ID'),(114,40,'Notify_Id'),(115,17,'TYPEdsada'),(116,17,'MSG'),(117,19,'Offers_URL'),(118,48,'ST_START_DELAY'),(119,42,'TYPEdsada'),(120,15,'shouldShowTitlebar'),(121,38,'shouldMakeOverlayTransparent'),(122,40,'isFinshClose'),(123,40,'SHWO_FLAG'),(124,36,'isTestMode'),(125,30,'CLIENT_PACKAGE'),(126,8,'WAPS_PID'),(127,40,'CLIENT_PACKAGE'),(128,30,'APP_ID'),(129,21,'WAPS_PID'),(130,40,'APP_ID'),(131,11,'WAPS_PID'),(132,38,'shouldShowTitlebar'),(133,15,'WAPS_PID'),(134,28,'DOMOB_PID'),(135,27,'DOMOB_PID'),(136,28,'ST_MY_PID'),(137,27,'overlayTitle'),(138,26,'actType'),(139,21,'ST_MY_PID'),(140,43,'shouldResizeOverlay'),(141,27,'shouldShowTitlebar'),(142,18,'ST_START_DELAY'),(143,44,'URL'),(144,12,'shouldShowBottomBar'),(145,15,'transitionTime'),(146,15,'url'),(147,35,'adWidth'),(148,40,'offers_webview_tag'),(149,15,'overlayTitle'),(150,27,'shouldMakeOverlayTransparent'),(151,36,'Adwo_PID'),(152,40,'URL'),(153,38,'shouldResizeOverlay'),(154,15,'shouldMakeOverlayTransparent'),(155,15,'shouldResizeOverlay'),(156,21,'ST_START_DELAY'),(157,15,'shouldShowBottomBar'),(158,19,'USER_ID'),(159,44,'APP_ID'),(160,33,'APP_ID'),(161,44,'DEVICE_ID'),(162,33,'DEVICE_ID'),(163,38,'overlayTransition'),(164,44,'USER_ID'),(165,40,'Offers_URL'),(166,39,'MSG'),(167,38,'shouldShowBottomBar'),(168,38,'transitionTime'),(169,30,'WAPS_PID'),(170,44,'Offers_URL'),(171,40,'WAPS_PID'),(172,40,'ACTIVITY_FLAG'),(173,42,'MSG'),(174,40,'USER_ID'),(175,31,'folder'),(176,33,'ball.y'),(177,39,'TYPEdsada'),(178,38,'overlayTitle'),(179,43,'shouldEnableBottomBar'),(180,38,'shouldEnableBottomBar'),(181,44,'CLIENT_PACKAGE'),(182,40,'Notify_Url_Params'),(183,33,'CLIENT_PACKAGE'),(184,43,'shouldShowBottomBar'),(185,44,'UrlPath'),(186,46,'DOMOB_TEST_MODE'),(187,43,'DOMOB_TEST_MODE'),(188,33,'map.goals'),(189,38,'url'),(190,46,'ST_MY_PID'),(191,33,'ball.x'),(192,44,'WAPS_PID'),(193,33,'WAPS_PID'),(194,44,'Notify_Id'),(195,44,'isFinshClose'),(196,41,'actType'),(197,43,'url'),(198,43,'overlayTransition'),(199,46,'DOMOB_ALLOW_LOCATION'),(200,43,'DOMOB_ALLOW_LOCATION'),(201,44,'ACTIVITY_FLAG'),(202,41,'appId'),(203,33,'map.id'),(204,44,'SHWO_FLAG'),(205,44,'WAPS_ID'),(206,33,'WAPS_ID'),(207,44,'URL_PARAMS'),(208,46,'ST_START_DELAY'),(209,44,'Notify_Url_Params'),(210,33,'stepcount'),(211,43,'shouldMakeOverlayTransparent'),(212,43,'transitionTime'),(213,41,'appName'),(214,44,'offers_webview_tag'),(215,46,'DOMOB_PID'),(216,43,'DOMOB_PID'),(217,43,'shouldShowTitlebar'),(218,43,'overlayTitle'),(219,54,'appId'),(220,52,'DOMOB_ALLOW_LOCATION'),(221,56,'DOMOB_ALLOW_LOCATION'),(222,51,'DOMOB_ALLOW_LOCATION'),(223,58,'DOMOB_ALLOW_LOCATION'),(224,50,'DOMOB_ALLOW_LOCATION'),(225,55,'DOMOB_ALLOW_LOCATION'),(226,52,'score'),(227,51,'score'),(228,50,'score'),(229,56,'shouldEnableBottomBar'),(230,56,'shouldShowTitlebar'),(231,55,'overlayTitle'),(232,56,'shouldShowBottomBar'),(233,55,'shouldShowTitlebar'),(234,52,'DOMOB_TEST_MODE'),(235,56,'DOMOB_TEST_MODE'),(236,51,'DOMOB_TEST_MODE'),(237,58,'DOMOB_TEST_MODE'),(238,50,'DOMOB_TEST_MODE'),(239,55,'DOMOB_TEST_MODE'),(240,55,'shouldEnableBottomBar'),(241,55,'transitionTime'),(242,55,'shouldResizeOverlay'),(243,58,'ST_START_DELAY'),(244,56,'transitionTime'),(245,57,'MSG'),(246,55,'shouldShowBottomBar'),(247,55,'overlayTransition'),(248,54,'appName'),(249,56,'shouldMakeOverlayTransparent'),(250,56,'FSAd'),(251,57,'TYPEdsada'),(252,56,'overlayTitle'),(253,55,'shouldMakeOverlayTransparent'),(254,55,'url'),(255,58,'ST_MY_PID'),(256,56,'shouldResizeOverlay'),(257,52,'DOMOB_PID'),(258,56,'DOMOB_PID'),(259,51,'DOMOB_PID'),(260,58,'DOMOB_PID'),(261,50,'DOMOB_PID'),(262,55,'DOMOB_PID'),(263,54,'actType'),(264,56,'overlayTransition');
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,45,'a',0,NULL,NULL),(45,44,'s',1,18,NULL),(46,46,'s',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'s',0,NULL,NULL),(49,49,'r',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,61,'r',1,NULL,NULL),(61,65,'r',1,NULL,NULL),(62,71,'r',1,NULL,NULL),(63,92,'r',1,NULL,NULL),(64,93,'r',1,NULL,NULL),(65,100,'r',1,NULL,NULL),(66,109,'r',1,NULL,NULL),(67,114,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,5),(3,3,5),(4,4,4),(5,5,2),(6,6,2),(7,7,4),(8,8,5),(9,9,6),(10,10,5),(11,11,7),(12,12,14),(13,13,14),(14,14,22),(15,15,21),(16,16,20),(17,17,18),(18,17,12),(19,17,9),(20,18,8),(21,19,8),(22,20,16),(23,21,15),(24,21,21),(25,21,11),(26,22,8),(27,23,9),(28,24,11),(29,25,9),(30,26,27),(31,26,28),(32,27,21),(33,27,15),(34,27,11),(35,28,7),(36,29,28),(37,30,7),(38,31,18),(39,31,12),(40,31,9),(41,32,27),(42,32,28),(43,33,21),(44,34,40),(45,35,27),(46,35,28),(47,36,17),(48,37,48),(49,38,7),(50,39,25),(51,40,28),(52,41,18),(53,42,42),(54,43,21),(55,44,7),(56,45,18),(57,45,12),(58,45,9),(59,46,27),(60,46,28),(61,47,40),(62,47,32),(63,48,11),(64,49,18),(65,50,40),(66,51,18),(67,52,21),(68,53,8),(69,54,40),(70,55,18),(71,56,28),(72,57,19),(73,58,23),(74,59,44),(75,60,25),(76,61,39),(77,62,15),(78,62,21),(79,62,11),(80,63,8),(81,64,46),(82,65,30),(83,66,29),(84,67,28),(85,68,17),(86,69,42),(87,70,46),(88,70,43),(89,71,40),(90,72,46),(91,73,40),(92,74,44),(93,75,49),(94,76,48),(95,77,47),(96,78,43),(97,78,46),(98,79,30),(99,80,30),(100,81,48),(101,82,46),(102,82,43),(103,83,44),(104,84,46),(105,85,44),(106,86,46),(107,86,43),(108,87,44),(109,88,39),(110,89,44),(111,90,33),(112,91,60),(113,92,58),(114,93,58),(115,94,52),(116,94,51),(117,94,50),(118,95,55),(119,95,56),(120,95,58),(121,95,51),(122,95,50),(123,95,52),(124,96,51),(125,96,52),(126,96,50),(127,96,58),(128,96,55),(129,96,56),(130,97,52),(131,97,55),(132,97,50),(133,97,51),(134,97,56),(135,97,58),(136,98,57),(137,99,53),(138,100,51),(139,100,52),(140,100,55),(141,100,56),(142,100,58),(143,100,50),(144,101,57),(145,102,52),(146,103,58),(147,104,50),(148,104,51),(149,104,52),(150,104,56),(151,104,55),(152,104,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<com.wqx.blackjack.Blackjack: void onClick(android.view.View)>',33,'a',NULL),(2,60,'<com.ju6.a: boolean b()>',178,'p',NULL),(3,5,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(4,62,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,2,'<com.wqx.blackjack.Blackjack: boolean onKeyDown(int,android.view.KeyEvent)>',37,'a',NULL),(6,2,'<com.wqx.blackjack.Blackjack: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(7,63,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(8,5,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(9,6,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(10,64,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(11,7,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(12,66,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(13,67,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(14,22,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(15,21,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(16,20,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(17,68,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(18,8,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(19,8,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(20,69,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(21,70,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(22,8,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(23,72,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(24,73,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(25,72,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(26,74,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(27,70,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(28,7,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(29,75,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(30,7,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(31,68,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(32,76,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(33,21,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(34,40,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(35,77,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(36,78,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(37,48,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(38,7,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(39,79,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(40,28,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,80,'<com.ju6.a: boolean b()>',178,'p',NULL),(42,81,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(43,82,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(44,7,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(45,68,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(46,83,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(47,84,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(48,73,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(49,85,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(50,40,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(51,18,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(52,86,'<com.ju6.a: boolean b()>',178,'p',NULL),(53,8,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(54,87,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(55,18,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(56,88,'<com.ju6.a: boolean b()>',178,'p',NULL),(57,89,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(58,23,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(59,45,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(60,90,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(61,91,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(62,70,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(63,8,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(64,46,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(65,94,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(66,29,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(67,28,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(68,95,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(69,96,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(70,97,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(71,98,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(72,46,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(73,99,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(74,101,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(75,49,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(76,102,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(77,47,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(78,103,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(79,104,'<com.livegame.wallpaperxiaopohai.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(80,105,'<com.livegame.wallpaperxiaopohai.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(81,48,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(82,106,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(83,107,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(84,108,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(85,45,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(86,110,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(87,111,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(88,112,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(89,113,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(90,33,'<com.gp.tiltmazes.TiltMazesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',33,'a',NULL),(91,61,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(92,58,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(93,58,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(94,51,'<com.gp.animalkeeper.GameMainActivity: void gameOverToWhere()>',9,'a',NULL),(95,115,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(96,116,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(97,117,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(98,118,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(99,53,'<com.gp.animalkeeper.Top: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(100,119,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(101,120,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(102,121,'<com.gp.animalkeeper.GameOverMenu$5: void onClick(android.content.DialogInterface,int)>',43,'a',NULL),(103,122,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(104,123,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,1),(2,5,1),(3,8,8),(4,12,1),(5,13,1),(6,15,8),(7,16,1),(8,18,1),(9,22,10),(10,24,10),(11,26,10),(12,27,10),(13,28,10),(14,33,10),(15,36,1),(16,37,1),(17,38,1),(18,39,1),(19,41,1),(20,42,1),(21,44,1),(22,47,1),(23,48,1),(24,50,1),(25,51,1),(26,52,1),(27,53,1),(28,56,1),(29,57,8),(30,60,1),(31,62,1),(32,63,1),(33,65,1),(34,67,10),(35,71,10),(36,72,1),(37,74,10),(38,75,1),(39,76,10),(40,78,10),(41,84,10),(42,88,1),(43,89,1),(44,91,1),(45,92,1),(46,99,8),(47,101,8),(48,102,10),(49,103,10),(50,106,10),(51,107,10),(52,109,1),(53,111,1),(54,112,10),(55,115,10),(56,116,11),(57,117,10),(58,119,10),(59,121,10),(60,124,1),(61,125,1),(62,127,1),(63,128,1),(64,129,10),(65,130,8),(66,139,10),(67,140,1),(68,141,1),(69,143,10),(70,145,10),(71,146,10),(72,147,10),(73,148,10),(74,149,8),(75,151,1),(76,152,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,3),(3,12,1),(4,13,3),(5,16,1),(6,18,3),(7,36,1),(8,37,3),(9,38,3),(10,39,1),(11,41,1),(12,42,3),(13,44,1),(14,47,3),(15,48,1),(16,50,1),(17,51,3),(18,52,3),(19,53,1),(20,56,3),(21,60,1),(22,62,3),(23,63,3),(24,65,1),(25,72,3),(26,75,1),(27,88,1),(28,89,1),(29,91,3),(30,92,3),(31,109,1),(32,111,3),(33,124,3),(34,125,1),(35,127,1),(36,128,3),(37,140,1),(38,141,3),(39,151,1),(40,152,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/wqx/blackjack/Card'),(2,2,'com/google/update/Dialog'),(3,3,'com/google/update/Dialog'),(4,6,'com/wqx/blackjack/Card'),(5,7,'com/wqx/blackjack/Blackjack'),(6,9,'com/google/update/Dialog'),(7,10,'com/google/update/Dialog'),(8,11,'com/google/update/UpdateService'),(9,14,'com/ps/ddp/DemoApp'),(10,17,'com/google/update/UpdateService'),(11,19,'com/google/update/Dialog'),(12,20,'com/google/update/UpdateService'),(13,21,'com/google/update/Dialog'),(14,23,'com/ps/ddp/DemoApp'),(15,25,'com/ps/ddp/GameActivity'),(16,29,'com/ps/ddp/GameActivity'),(17,30,'com/waps/OffersWebView'),(18,31,'com/waps/OffersWebView'),(19,32,'com/waps/OffersWebView'),(20,35,'com/ps/ddp/GameActivity'),(21,40,'com/ps/ddp/GameActivity'),(22,45,'com/google/update/Dialog'),(23,49,'com/google/update/Dialog'),(24,54,'com/google/update/Dialog'),(25,55,'com/ps/ddp/GameActivity'),(26,58,'com/google/update/Dialog'),(27,59,'com/google/update/Dialog'),(28,61,'com/google/update/Dialog'),(29,64,'com/ps/ddp/GameActivity'),(30,66,'com/waps/OffersWebView'),(31,68,'NULL-CONSTANT'),(32,69,'com/waps/OffersWebView'),(33,73,'(.*)'),(34,77,'com/google/update/Dialog'),(35,79,'com/google/update/Dialog'),(36,80,'com/ps/ddp/GameActivity'),(37,82,'com/google/update/Dialog'),(38,81,'com/waps/OffersWebView'),(39,83,'com/google/update/Dialog'),(40,85,'com/gp/tiltmazes/SelectMazeActivity'),(41,86,'(.*)'),(42,87,'com/waps/OffersWebView'),(43,90,'com/waps/OffersWebView'),(44,93,'com/ps/ddp/GameActivity'),(45,94,'com/google/update/Dialog'),(46,97,'com/google/update/UpdateService'),(47,96,'com/google/update/Dialog'),(48,95,'com/waps/OffersWebView'),(49,98,'com/google/update/Dialog'),(50,100,'com/google/update/Dialog'),(51,104,'com/google/update/Dialog'),(52,105,'com/google/update/Dialog'),(53,108,'com/google/update/UpdateService'),(54,110,'com/google/update/UpdateService'),(55,113,'com/livegame/wallpaperxiaopohai/SettingsActivity'),(56,118,'com/google/update/Dialog'),(57,120,'com/google/update/Dialog'),(58,122,'com/waps/OffersWebView'),(59,123,'com/waps/OffersWebView'),(60,131,'NULL-CONSTANT'),(61,132,'com/gp/tiltmazes/SelectMazeActivity'),(62,133,'com/google/update/UpdateService'),(63,134,'com/google/update/Dialog'),(64,135,'com/google/update/Dialog'),(65,136,'com/google/update/Dialog'),(66,137,'com/google/update/Dialog'),(67,138,'com/gp/animalkeeper/GameOverMenu'),(68,142,'com/gp/animalkeeper/GameStartMenu'),(69,150,'com/gp/animalkeeper/Top');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,22,2),(2,24,3),(3,26,4),(4,27,5),(5,28,6),(6,33,7),(7,67,10),(8,71,11),(9,74,12),(10,76,14),(11,78,15),(12,84,17),(13,102,18),(14,103,19),(15,106,20),(16,107,21),(17,112,22),(18,115,23),(19,117,24),(20,119,25),(21,121,26),(22,129,28),(23,139,30),(24,143,31),(25,145,32),(26,146,33),(27,147,34),(28,148,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'mMaxScore'),(2,1,'mMoney'),(3,1,'mWinCount'),(4,1,'mLoseCount'),(5,1,'mStartTime'),(6,1,'mCurrentScore'),(7,2,'MSG'),(8,2,'TYPEdsada'),(9,3,'TYPEdsada'),(10,6,'mMaxScore'),(11,6,'mMoney'),(12,6,'mWinCount'),(13,6,'mLoseCount'),(14,6,'mStartTime'),(15,6,'mCurrentScore'),(16,9,'MSG'),(17,9,'TYPEdsada'),(18,10,'TYPEdsada'),(19,19,'TYPEdsada'),(20,21,'MSG'),(21,21,'TYPEdsada'),(22,25,'type'),(23,29,'type'),(24,30,'USER_ID'),(25,30,'CLIENT_PACKAGE'),(26,30,'Offers_URL'),(27,30,'URL_PARAMS'),(28,31,'USER_ID'),(29,31,'CLIENT_PACKAGE'),(30,31,'Offers_URL'),(31,31,'URL_PARAMS'),(32,32,'USER_ID'),(33,32,'CLIENT_PACKAGE'),(34,32,'Offers_URL'),(35,32,'URL_PARAMS'),(36,35,'type'),(37,40,'type'),(38,45,'TYPEdsada'),(39,49,'MSG'),(40,49,'TYPEdsada'),(41,54,'MSG'),(42,54,'TYPEdsada'),(43,55,'type'),(44,58,'TYPEdsada'),(45,59,'TYPEdsada'),(46,61,'MSG'),(47,61,'TYPEdsada'),(48,64,'type'),(49,66,'CLIENT_PACKAGE'),(50,66,'URL'),(51,66,'isFinshClose'),(52,69,'USER_ID'),(53,69,'CLIENT_PACKAGE'),(54,69,'Offers_URL'),(55,69,'URL_PARAMS'),(56,77,'TYPEdsada'),(57,79,'MSG'),(58,79,'TYPEdsada'),(59,80,'type'),(60,81,'Notify_Url_Params'),(61,81,'UrlPath'),(62,82,'TYPEdsada'),(63,81,'ACTIVITY_FLAG'),(64,81,'isFinshClose'),(65,81,'offers_webview_tag'),(66,83,'MSG'),(67,83,'TYPEdsada'),(68,87,'UrlPath'),(69,87,'ACTIVITY_FLAG'),(70,87,'isFinshClose'),(71,87,'offers_webview_tag'),(72,90,'CLIENT_PACKAGE'),(73,90,'URL'),(74,90,'isFinshClose'),(75,93,'type'),(76,94,'TYPEdsada'),(77,95,'USER_ID'),(78,96,'MSG'),(79,96,'TYPEdsada'),(80,95,'CLIENT_PACKAGE'),(81,95,'Offers_URL'),(82,95,'offers_webview_tag'),(83,95,'URL_PARAMS'),(84,98,'TYPEdsada'),(85,100,'MSG'),(86,100,'TYPEdsada'),(87,104,'TYPEdsada'),(88,105,'MSG'),(89,105,'TYPEdsada'),(90,116,'android.live_wallpaper.package'),(91,116,'android.live_wallpaper.settings'),(92,118,'MSG'),(93,118,'TYPEdsada'),(94,120,'TYPEdsada'),(95,122,'Notify_Url_Params'),(96,122,'UrlPath'),(97,122,'ACTIVITY_FLAG'),(98,122,'isFinshClose'),(99,122,'offers_webview_tag'),(100,123,'UrlPath'),(101,123,'ACTIVITY_FLAG'),(102,123,'isFinshClose'),(103,123,'offers_webview_tag'),(104,134,'TYPEdsada'),(105,135,'MSG'),(106,135,'TYPEdsada'),(107,136,'TYPEdsada'),(108,137,'MSG'),(109,137,'TYPEdsada'),(110,138,'score');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,1),(7,5,3),(8,5,2),(9,5,4),(10,6,4),(11,6,3),(12,6,2),(13,7,1),(14,8,2),(15,8,3),(16,8,4),(17,9,1),(18,10,1),(19,11,5),(20,12,4),(21,12,3),(22,12,2),(23,13,4),(24,13,3),(25,13,2),(26,14,1),(27,15,6),(28,16,7),(29,17,4),(30,17,2),(31,17,3),(32,18,9),(33,19,9),(34,20,9),(35,21,9),(36,22,9),(37,23,9),(38,24,9),(39,25,9);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,7,1),(5,9,1),(6,10,1),(7,14,1),(8,15,2),(9,16,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,18,'package',NULL,NULL,NULL,NULL,NULL),(2,19,'package',NULL,NULL,NULL,NULL,NULL),(3,20,'package',NULL,NULL,NULL,NULL,NULL),(4,21,'package',NULL,NULL,NULL,NULL,NULL),(5,22,'package',NULL,NULL,NULL,NULL,NULL),(6,23,'package',NULL,NULL,NULL,NULL,NULL),(7,24,'package',NULL,NULL,NULL,NULL,NULL),(8,25,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,26,'application','vnd.android.package-archive'),(2,67,'application','vnd.android.package-archive'),(3,71,'application','vnd.android.package-archive'),(4,74,'application','vnd.android.package-archive'),(5,76,'application','vnd.android.package-archive'),(6,78,'application','vnd.android.package-archive'),(7,84,'application','vnd.android.package-archive'),(8,103,'application','vnd.android.package-archive'),(9,106,'application','vnd.android.package-archive'),(10,107,'application','vnd.android.package-archive'),(11,112,'application','vnd.android.package-archive'),(12,115,'application','vnd.android.package-archive'),(13,117,'application','vnd.android.package-archive'),(14,119,'application','vnd.android.package-archive'),(15,121,'application','vnd.android.package-archive'),(16,129,'application','vnd.android.package-archive'),(17,143,'application','vnd.android.package-archive'),(18,145,'application','vnd.android.package-archive'),(19,146,'application','vnd.android.package-archive'),(20,147,'application','vnd.android.package-archive'),(21,148,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.wqx.blackjack'),(2,2,'com.wqx.blackjack'),(3,3,'com.wqx.blackjack'),(4,4,'com.noshufou.android.su'),(5,5,'com.noshufou.android.su'),(6,6,'com.wqx.blackjack'),(7,7,'com.wqx.blackjack'),(8,9,'com.wqx.blackjack'),(9,10,'com.wqx.blackjack'),(10,11,'com.wqx.blackjack'),(11,12,'com.wqx.blackjack'),(12,13,'com.wqx.blackjack'),(13,14,'com.ps.ddp'),(14,17,'com.ps.ddp'),(15,16,'com.noshufou.android.su'),(16,18,'com.noshufou.android.su'),(17,19,'com.ps.ddp'),(18,20,'com.ps.ddp'),(19,21,'com.ps.ddp'),(20,23,'com.ps.ddp'),(21,25,'com.ps.ddp'),(22,29,'com.ps.ddp'),(23,30,'com.ps.ddp'),(24,31,'com.ps.ddp'),(25,32,'com.ps.ddp'),(26,35,'com.ps.ddp'),(27,36,'(.*)'),(28,37,'(.*)'),(29,38,'com.gp.tiltmazes'),(30,39,'NULL-CONSTANT'),(31,40,'com.ps.ddp'),(32,41,'com.gp.tiltmazes'),(33,42,'NULL-CONSTANT'),(34,44,'(.*)'),(35,45,'com.ps.ddp'),(36,47,'(.*)'),(37,48,'(.*)'),(38,49,'com.ps.ddp'),(39,50,'NULL-CONSTANT'),(40,51,'(.*)'),(41,52,'NULL-CONSTANT'),(42,53,'com.noshufou.android.su'),(43,54,'com.livegame.wallpaperxiaopohai'),(44,55,'com.ps.ddp'),(45,56,'com.noshufou.android.su'),(46,58,'com.livegame.wallpaperxiaopohai'),(47,59,'com.gp.tiltmazes'),(48,60,'com.noshufou.android.su'),(49,61,'com.gp.tiltmazes'),(50,62,'com.ps.ddp'),(51,63,'com.noshufou.android.su'),(52,64,'com.ps.ddp'),(53,65,'com.ps.ddp'),(54,66,'com.ps.ddp'),(55,68,'NULL-CONSTANT'),(56,69,'com.ps.ddp'),(57,72,'com.ps.ddp'),(58,73,'(.*)'),(59,75,'com.ps.ddp'),(60,77,'com.ps.ddp'),(61,79,'com.ps.ddp'),(62,80,'com.ps.ddp'),(63,82,'com.ps.ddp'),(64,81,'com.livegame.wallpaperxiaopohai'),(65,85,'com.gp.tiltmazes'),(66,83,'com.ps.ddp'),(67,86,'(.*)'),(68,87,'com.livegame.wallpaperxiaopohai'),(69,88,'com.noshufou.android.su'),(70,89,'com.noshufou.android.su'),(71,90,'com.ps.ddp'),(72,91,'com.noshufou.android.su'),(73,92,'com.noshufou.android.su'),(74,93,'com.ps.ddp'),(75,94,'com.gp.tiltmazes'),(76,97,'com.gp.tiltmazes'),(77,96,'com.gp.tiltmazes'),(78,95,'com.livegame.wallpaperxiaopohai'),(79,98,'com.gp.tiltmazes'),(80,100,'com.gp.tiltmazes'),(81,104,'com.gp.tiltmazes'),(82,105,'com.gp.tiltmazes'),(83,108,'com.livegame.wallpaperxiaopohai'),(84,110,'com.gp.tiltmazes'),(85,109,'com.livegame.wallpaperxiaopohai'),(86,111,'com.livegame.wallpaperxiaopohai'),(87,113,'com.livegame.wallpaperxiaopohai'),(88,118,'com.livegame.wallpaperxiaopohai'),(89,120,'com.livegame.wallpaperxiaopohai'),(90,122,'com.gp.tiltmazes'),(91,123,'com.gp.tiltmazes'),(92,124,'com.gp.tiltmazes'),(93,125,'com.gp.tiltmazes'),(94,127,'(.*)'),(95,128,'(.*)'),(96,131,'NULL-CONSTANT'),(97,132,'com.gp.tiltmazes'),(98,133,'com.gp.animalkeeper'),(99,134,'com.gp.animalkeeper'),(100,135,'com.gp.animalkeeper'),(101,136,'com.gp.animalkeeper'),(102,137,'com.gp.animalkeeper'),(103,138,'com.gp.animalkeeper'),(104,140,'com.noshufou.android.su'),(105,141,'com.noshufou.android.su'),(106,142,'com.gp.animalkeeper'),(107,150,'com.gp.animalkeeper'),(108,151,'com.gp.animalkeeper'),(109,152,'com.gp.animalkeeper');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,6,0),(3,7,0),(4,8,0),(5,20,0),(6,22,0),(7,23,0),(8,29,0),(9,30,0),(10,33,0),(11,45,0),(12,47,0),(13,49,0),(14,50,0),(15,59,0),(16,59,0),(17,60,0),(18,61,0),(19,62,0),(20,63,0),(21,64,0),(22,65,0),(23,66,0),(24,67,0),(25,67,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,5,0,0),(7,6,0,0),(8,7,1,0),(9,8,0,0),(10,8,0,0),(11,9,0,0),(12,10,1,0),(13,10,1,0),(14,11,0,0),(15,12,1,0),(16,13,1,0),(17,14,0,0),(18,13,1,0),(19,15,0,0),(20,16,0,0),(21,15,0,0),(22,17,1,0),(23,18,0,0),(24,17,1,0),(25,19,0,0),(26,20,1,0),(27,21,1,0),(28,21,1,0),(29,22,0,0),(30,23,0,0),(31,24,0,0),(32,25,0,0),(33,26,1,0),(34,27,1,0),(35,28,0,0),(36,27,1,0),(37,27,1,0),(38,29,1,0),(39,27,1,0),(40,30,0,0),(41,29,1,0),(42,27,1,0),(43,31,1,0),(44,31,1,0),(45,33,0,0),(46,34,1,0),(47,31,1,0),(48,34,1,0),(49,33,0,0),(50,31,1,0),(51,34,1,0),(52,31,1,0),(53,36,1,0),(54,37,0,0),(55,38,0,0),(56,36,1,0),(57,39,1,0),(58,37,0,0),(59,40,0,0),(60,42,1,0),(61,40,0,0),(62,43,1,0),(63,42,1,0),(64,44,0,0),(65,43,1,0),(66,45,0,0),(67,46,1,0),(68,47,0,0),(69,48,0,0),(70,46,1,0),(71,46,1,0),(72,49,1,0),(73,50,0,0),(74,46,1,0),(75,49,1,0),(76,46,1,0),(77,51,0,0),(78,46,1,0),(79,51,0,0),(80,53,0,0),(81,54,0,0),(82,55,0,0),(83,55,0,0),(84,57,1,0),(85,58,0,0),(86,59,0,0),(87,54,0,0),(88,60,1,0),(89,61,1,0),(90,62,0,0),(91,60,1,0),(92,61,1,0),(93,63,0,0),(94,64,0,0),(95,65,0,0),(96,64,0,0),(97,66,0,0),(98,67,0,0),(99,68,1,0),(100,67,0,0),(101,69,1,0),(102,70,1,0),(103,71,1,0),(104,72,0,0),(105,72,0,0),(106,73,1,0),(107,74,1,0),(108,75,0,0),(109,76,1,0),(110,77,0,0),(111,76,1,0),(112,78,1,0),(113,79,0,0),(114,78,1,0),(115,78,1,0),(116,80,1,0),(117,78,1,0),(118,81,0,0),(119,78,1,0),(120,81,0,0),(121,78,1,0),(122,83,0,0),(123,83,0,0),(124,84,1,0),(125,84,1,0),(126,85,1,0),(127,85,1,0),(128,85,1,0),(129,87,1,0),(130,88,1,0),(131,89,0,0),(132,90,0,0),(133,91,0,0),(134,92,0,0),(135,92,0,0),(136,93,0,0),(137,93,0,0),(138,94,0,0),(139,97,1,0),(140,98,1,0),(141,98,1,0),(142,99,0,0),(143,100,1,0),(144,100,1,0),(145,100,1,0),(146,100,1,0),(147,100,1,0),(148,100,1,0),(149,101,1,0),(150,102,0,0),(151,103,1,0),(152,103,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(14,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(11,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BIND_WALLPAPER'),(7,'android.permission.CHANGE_WIFI_STATE'),(17,'android.permission.GET_TASKS'),(2,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(19,'android.permission.PROCESS_OUTGOING_CALLS'),(12,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(3,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.RECORD_AUDIO'),(15,'android.permission.VIBRATE'),(16,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(9,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(11,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(13,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(23,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(26,NULL,NULL,'file://',NULL,NULL,NULL),(27,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(32,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(35,NULL,NULL,'file://',NULL,NULL,NULL),(36,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,35,8),(3,41,9),(4,52,13),(5,56,16),(6,86,27),(7,96,29),(8,104,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,2,1),(13,2,2),(14,2,3),(15,2,4),(16,3,1),(17,2,5),(18,3,2),(19,2,6),(20,3,3),(21,2,7),(22,3,4),(23,2,8),(24,3,5),(25,2,9),(26,3,6),(27,2,10),(28,3,7),(29,2,11),(30,3,8),(31,3,9),(32,3,10),(33,3,11),(34,4,1),(35,4,2),(36,4,3),(37,4,4),(38,4,5),(39,4,6),(40,4,7),(41,4,8),(42,4,9),(43,4,10),(44,4,11),(45,4,12),(46,4,13),(47,4,14),(48,4,15),(49,4,16),(50,5,17),(51,5,1),(52,5,4),(53,5,5),(54,6,1),(55,5,6),(56,6,4),(57,5,7),(58,6,5),(59,5,9),(60,6,6),(61,5,10),(62,6,7),(63,5,11),(64,6,9),(65,5,13),(66,6,11),(67,6,12),(68,6,13),(69,6,14),(70,6,15),(71,6,17),(72,6,16),(73,7,1),(74,7,4),(75,7,5),(76,7,6),(77,7,7),(78,7,9),(79,7,10),(80,7,11),(81,7,12),(82,7,13),(83,7,14),(84,7,15),(85,7,16),(86,7,19),(87,7,20);
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

-- Dump completed on 2015-10-09  0:38:25
