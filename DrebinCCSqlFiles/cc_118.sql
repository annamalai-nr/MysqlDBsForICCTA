-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_118
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
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(7,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(8,'android.intent.action.VIEW'),(9,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(5,'android.service.wallpaper.WallpaperService'),(10,'android.settings.WIRELESS_SETTINGS'),(6,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.pintu.view',15),(2,'com.batteryiconmod.zyl.battery',5),(3,'com.livegame.wallpaperjipinminv',2),(4,'com.livegame.wallpaperlangmanxk',1),(5,'com.gp.lights',5),(6,'com.gp.mahjongg',8),(7,'com.mogo.aiqingllk',9);
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.ps.pintu.view.MainActivity'),(2,1,'com.ps.pintu.view.JigsawActivity'),(3,1,'com.ps.pintu.view.LocalImageActivity'),(4,1,'com.ps.pintu.view.LocalImageGameActivity'),(5,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(6,1,'com.google.update.Dialog'),(7,2,'com.batteryiconmod.zyl.battery.main2'),(8,1,'com.google.update.UpdateService'),(9,1,'com.google.update.Receiver'),(10,2,'com.batteryiconmod.zyl.battery.SelectMod'),(11,2,'com.batteryiconmod.zyl.battery.About'),(12,2,'com.Z'),(13,2,'ad.imadpush.com.poster.PosterInfoActivity'),(14,2,'com.airpuh.ad.UpdateCheck'),(15,2,'ad.imadpush.com.poster.AlarmService'),(16,2,'ad.imadpush.com.poster.ReceiverAlarm'),(17,4,'com.livegame.wallpaperlangmanxk.MainActivity'),(18,3,'com.livegame.wallpaperjipinminv.MainActivity'),(19,4,'com.livegame.wallpaperlangmanxk.SettingsActivity'),(20,3,'com.livegame.wallpaperjipinminv.SettingsActivity'),(21,4,'com.livegame.wallpaperlangmanxk.SelectFolderActivity'),(22,3,'com.livegame.wallpaperjipinminv.SelectFolderActivity'),(23,5,'com.gp.lights.ALuces'),(24,4,'com.google.ads.AdActivity'),(25,3,'com.google.ads.AdActivity'),(26,4,'com.vpon.adon.android.WebInApp'),(27,3,'com.vpon.adon.android.WebInApp'),(28,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(29,5,'com.gp.lights.AJuego'),(30,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(31,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(33,5,'com.gp.lights.AHelp'),(34,4,'com.waps.OffersWebView'),(35,3,'com.waps.OffersWebView'),(36,5,'com.gp.lights.AScores'),(37,4,'com.google.update.Dialog'),(38,3,'com.google.update.Dialog'),(39,5,'cn.domob.android.ads.DomobActivity'),(40,4,'com.livegame.wallpaperlangmanxk.WallpaperSlideshow'),(41,3,'com.livegame.wallpaperjipinminv.WallpaperSlideshow'),(42,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(43,5,'com.waps.OffersWebView'),(44,4,'com.google.update.UpdateService'),(45,3,'com.google.update.UpdateService'),(46,4,'com.google.update.Receiver'),(47,3,'com.google.update.Receiver'),(48,6,'com.gp.mahjongg.SelectActivity'),(49,6,'com.gp.mahjongg.PlayActivity'),(50,6,'com.gp.background.BackgroundActivity'),(51,6,'com.gp.mahjongg.SettingsActivity'),(52,6,'com.gp.mahjongg.BuilderActivity'),(53,6,'cn.domob.android.ads.DomobActivity'),(54,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(55,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(56,6,'com.vpon.adon.android.WebInApp'),(57,6,'com.google.update.Dialog'),(58,6,'com.google.update.UpdateService'),(59,6,'com.google.update.Receiver'),(60,1,'com.ps.pintu.view.MainActivity$1'),(61,1,'com.google.update.Dialog$1'),(62,1,'com.ps.pintu.view.LocalImageActivity$1'),(63,1,'com.google.update.UpdateService$AA'),(64,1,'com.google.update.Dialog$2'),(65,2,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(66,7,'com.mogo.aiqingllk.begin'),(67,7,'com.mogo.aiqingllk.Main'),(68,7,'com.google.ads.AdActivity'),(69,7,'com.vpon.adon.android.WebInApp'),(70,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(71,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(72,7,'com.waps.OffersWebView'),(73,7,'com.google.update.Dialog'),(74,7,'com.google.update.UpdateService'),(75,7,'com.google.update.Receiver'),(76,4,'com.waps.ac'),(77,3,'com.waps.z'),(78,4,'com.waps.o'),(79,3,'com.livegame.wallpaperjipinminv.MainActivity$2'),(80,3,'com.google.update.Dialog$1'),(81,3,'com.waps.AppConnect'),(82,3,'com.waps.q'),(83,3,'com.livegame.wallpaperjipinminv.MainActivity$1'),(84,5,'com.gp.lights.ALuces$3'),(85,4,'com.waps.AppConnect'),(86,3,'com.waps.ac'),(87,3,'com.google.update.UpdateService$AA'),(88,5,'com.waps.z'),(89,4,'com.google.update.Dialog$2'),(90,3,'com.waps.aa'),(91,4,'com.livegame.wallpaperlangmanxk.MainActivity$2'),(92,5,'com.waps.ac'),(93,4,'com.waps.z'),(94,5,'cn.domob.android.ads.o$5'),(95,4,'com.google.update.UpdateService$AA'),(96,4,'com.waps.aa'),(97,5,'cn.domob.android.ads.g$1'),(98,3,'com.waps.o'),(99,5,'cn.domob.android.ads.e'),(100,4,'com.livegame.wallpaperlangmanxk.MainActivity$1'),(101,3,'com.google.update.Dialog$2'),(102,4,'com.waps.q'),(103,4,'com.google.update.Dialog$1'),(104,5,'com.gp.lights.ALuces$2'),(105,5,'com.waps.q'),(106,5,'com.waps.o'),(107,5,'com.waps.AppConnect'),(108,5,'com.waps.aa'),(109,7,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(110,7,'com.waps.k'),(111,5,'cn.domob.android.ads.DomobAdManager'),(112,5,'cn.domob.android.a.a$a'),(113,7,'com.google.update.Dialog$1'),(114,5,'com.gp.lights.ALuces$4'),(115,7,'com.ju6.a'),(116,5,'cn.domob.android.ads.o'),(117,7,'com.google.update.Dialog$2'),(118,7,'com.google.update.UpdateService$MyThread'),(119,7,'com.waps.m'),(120,7,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(121,7,'com.mogo.aiqingllk.begin$beginButtonListener'),(122,7,'com.waps.AppConnect'),(123,6,'com.google.update.Dialog$2'),(124,6,'cn.domob.android.ads.e'),(125,6,'cn.domob.android.ads.DomobAdManager'),(126,6,'cn.domob.android.ads.o$5'),(127,6,'com.google.update.UpdateService$AA'),(128,6,'cn.domob.android.a.a$a'),(129,6,'cn.domob.android.ads.g$1'),(130,6,'com.google.update.Dialog$1'),(131,6,'cn.domob.android.ads.o');
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
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'overlayTransition'),(2,5,'url'),(3,5,'shouldShowTitlebar'),(4,5,'shouldResizeOverlay'),(5,6,'MSG'),(6,5,'transitionTime'),(7,8,'ST_MY_PID'),(8,4,'level'),(9,7,'MODAUTHOR'),(10,7,'ad.imadpush.com'),(11,15,'ad.imadpush.com'),(12,7,'MODNAME'),(13,13,'userId'),(14,7,'DEVICE'),(15,7,'PREVIEW'),(16,2,'level'),(17,13,'dId'),(18,5,'shouldMakeOverlayTransparent'),(19,5,'shouldEnableBottomBar'),(20,6,'TYPEdsada'),(21,8,'ST_START_DELAY'),(22,4,'path'),(23,7,'ROMVERSION'),(24,13,'notifyId'),(25,13,'push'),(26,14,'MYAD_PID'),(27,7,'MODFILE'),(28,2,'pictureIndex'),(29,5,'shouldShowBottomBar'),(30,5,'overlayTitle'),(31,30,'Adwo_PID'),(32,35,'UrlPath'),(33,28,'isTestMode'),(34,35,'Offers_URL'),(35,19,'folder'),(36,35,'ACTIVITY_FLAG'),(37,35,'SHWO_FLAG'),(38,45,'ST_MY_PID'),(39,35,'APP_ID'),(40,18,'APP_ID'),(41,35,'USER_ID'),(42,34,'Offers_URL'),(43,35,'WAPS_ID'),(44,34,'URL'),(45,18,'WAPS_ID'),(46,34,'URL_PARAMS'),(47,32,'url'),(48,31,'overlayTitle'),(49,32,'overlayTransition'),(50,45,'ST_START_DELAY'),(51,32,'shouldShowBottomBar'),(52,34,'Notify_Id'),(53,28,'Adwo_PID'),(54,44,'ST_START_DELAY'),(55,32,'overlayTitle'),(56,34,'UrlPath'),(57,34,'DEVICE_ID'),(58,17,'DEVICE_ID'),(59,34,'APP_ID'),(60,17,'APP_ID'),(61,34,'ACTIVITY_FLAG'),(62,34,'CLIENT_PACKAGE'),(63,17,'CLIENT_PACKAGE'),(64,31,'shouldMakeOverlayTransparent'),(65,31,'url'),(66,37,'TYPEdsada'),(67,31,'overlayTransition'),(68,34,'Notify_Url_Params'),(69,31,'shouldEnableBottomBar'),(70,37,'MSG'),(71,29,'DOMOB_ALLOW_LOCATION'),(72,34,'WAPS_PID'),(73,40,'DOMOB_ALLOW_LOCATION'),(74,17,'WAPS_PID'),(75,31,'shouldShowBottomBar'),(76,35,'offers_webview_tag'),(77,32,'shouldMakeOverlayTransparent'),(78,40,'shouldShowTitlebar'),(79,43,'Offers_URL'),(80,40,'overlayTitle'),(81,43,'URL'),(82,34,'offers_webview_tag'),(83,32,'shouldResizeOverlay'),(84,35,'CLIENT_PACKAGE'),(85,18,'CLIENT_PACKAGE'),(86,31,'shouldShowTitlebar'),(87,35,'URL'),(88,44,'ST_MY_PID'),(89,26,'url'),(90,35,'WAPS_PID'),(91,18,'WAPS_PID'),(92,34,'WAPS_ID'),(93,17,'WAPS_ID'),(94,35,'URL_PARAMS'),(95,35,'Notify_Url_Params'),(96,35,'DEVICE_ID'),(97,18,'DEVICE_ID'),(98,38,'MSG'),(99,31,'transitionTime'),(100,43,'offers_webview_tag'),(101,34,'isFinshClose'),(102,29,'DEVICE_ID'),(103,23,'DEVICE_ID'),(104,43,'DEVICE_ID'),(105,39,'actType'),(106,29,'WAPS_ID'),(107,23,'WAPS_ID'),(108,32,'transitionTime'),(109,43,'WAPS_ID'),(110,39,'appId'),(111,29,'CLIENT_PACKAGE'),(112,23,'CLIENT_PACKAGE'),(113,43,'CLIENT_PACKAGE'),(114,29,'APP_ID'),(115,23,'APP_ID'),(116,43,'APP_ID'),(117,38,'TYPEdsada'),(118,35,'Notify_Id'),(119,32,'shouldEnableBottomBar'),(120,20,'folder'),(121,27,'adWidth'),(122,43,'UrlPath'),(123,30,'isTestMode'),(124,34,'USER_ID'),(125,27,'url'),(126,35,'isFinshClose'),(127,32,'shouldShowTitlebar'),(128,26,'adWidth'),(129,34,'SHWO_FLAG'),(130,43,'Notify_Url_Params'),(131,43,'Notify_Id'),(132,31,'shouldResizeOverlay'),(133,43,'isFinshClose'),(134,39,'appName'),(135,40,'shouldEnableBottomBar'),(136,40,'shouldResizeOverlay'),(137,40,'shouldShowBottomBar'),(138,29,'WAPS_PID'),(139,23,'WAPS_PID'),(140,43,'WAPS_PID'),(141,43,'USER_ID'),(142,43,'SHWO_FLAG'),(143,66,'shouldShowBottomBar'),(144,67,'isFinshClose'),(145,43,'URL_PARAMS'),(146,65,'Adwo_PID'),(147,29,'DOMOB_TEST_MODE'),(148,61,'WAPS_PID'),(149,40,'DOMOB_TEST_MODE'),(150,64,'adWidth'),(151,40,'transitionTime'),(152,40,'url'),(153,63,'params'),(154,66,'shouldMakeOverlayTransparent'),(155,69,'ST_MY_PID'),(156,63,'action'),(157,40,'shouldMakeOverlayTransparent'),(158,66,'overlayTitle'),(159,67,'CLIENT_PACKAGE'),(160,29,'DOMOB_PID'),(161,40,'DOMOB_PID'),(162,40,'overlayTransition'),(163,63,'com.google.ads.AdOpener'),(164,61,'WAPS_ID'),(165,66,'shouldShowTitlebar'),(166,67,'URL'),(167,66,'shouldResizeOverlay'),(168,68,'TYPEdsada'),(169,43,'ACTIVITY_FLAG'),(170,69,'ST_START_DELAY'),(171,61,'APP_ID'),(172,65,'isTestMode'),(173,66,'url'),(174,68,'MSG'),(175,66,'shouldEnableBottomBar'),(176,67,'Offers_URL'),(177,61,'CLIENT_PACKAGE'),(178,66,'transitionTime'),(179,67,'USER_ID'),(180,64,'url'),(181,61,'DEVICE_ID'),(182,67,'URL_PARAMS'),(183,66,'overlayTransition'),(184,52,'SCALE_KEY'),(185,54,'shouldShowBottomBar'),(186,55,'FSAd'),(187,54,'overlayTransition'),(188,55,'shouldResizeOverlay'),(189,54,'transitionTime'),(190,48,'CURRENT_PAGE'),(191,57,'MSG'),(192,53,'actType'),(193,54,'shouldMakeOverlayTransparent'),(194,48,'DOMOB_ALLOW_LOCATION'),(195,50,'DOMOB_ALLOW_LOCATION'),(196,55,'DOMOB_ALLOW_LOCATION'),(197,58,'DOMOB_ALLOW_LOCATION'),(198,49,'DOMOB_ALLOW_LOCATION'),(199,54,'DOMOB_ALLOW_LOCATION'),(200,54,'shouldShowTitlebar'),(201,52,'SCROLL_X_KEY'),(202,57,'TYPEdsada'),(203,52,'START_DIES_KEY'),(204,54,'shouldEnableBottomBar'),(205,52,'CURRENT_LAYER_KEY'),(206,55,'shouldShowBottomBar'),(207,53,'appId'),(208,48,'DOMOB_TEST_MODE'),(209,50,'DOMOB_TEST_MODE'),(210,55,'DOMOB_TEST_MODE'),(211,58,'DOMOB_TEST_MODE'),(212,49,'DOMOB_TEST_MODE'),(213,54,'DOMOB_TEST_MODE'),(214,48,'DOMOB_PID'),(215,50,'DOMOB_PID'),(216,55,'DOMOB_PID'),(217,58,'DOMOB_PID'),(218,49,'DOMOB_PID'),(219,54,'DOMOB_PID'),(220,55,'overlayTransition'),(221,54,'url'),(222,54,'shouldResizeOverlay'),(223,52,'ACTION_KEY'),(224,54,'overlayTitle'),(225,56,'url'),(226,58,'ST_MY_PID'),(227,52,'SCROLL_Y_KEY'),(228,52,'UNDO_KEY'),(229,55,'overlayTitle'),(230,55,'shouldMakeOverlayTransparent'),(231,56,'adWidth'),(232,55,'shouldShowTitlebar'),(233,53,'appName'),(234,58,'ST_START_DELAY'),(235,55,'transitionTime'),(236,55,'shouldEnableBottomBar'),(237,49,'ZOOM'),(238,52,'LAYOUT_KEY_KEY'),(239,52,'LEFT_FREE_KEY'),(240,49,'MARKED'),(241,52,'TOP_FREE_KEY');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',0,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,42,'a',0,NULL,NULL),(41,41,'s',1,14,NULL),(42,40,'s',1,14,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',0,NULL,NULL),(59,59,'r',1,NULL,NULL),(60,65,'r',1,NULL,NULL),(61,66,'a',1,NULL,NULL),(62,67,'a',0,NULL,NULL),(63,68,'a',0,NULL,NULL),(64,69,'a',0,NULL,NULL),(65,70,'a',0,NULL,NULL),(66,71,'a',0,NULL,NULL),(67,72,'a',0,NULL,NULL),(68,73,'a',0,NULL,NULL),(69,74,'s',0,NULL,NULL),(70,75,'r',1,NULL,NULL),(71,82,'r',1,NULL,NULL),(72,99,'r',1,NULL,NULL),(73,102,'r',1,NULL,NULL),(74,105,'r',1,NULL,NULL),(75,119,'r',1,NULL,NULL),(76,124,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,1,3),(3,2,6),(4,3,1),(5,3,3),(6,4,1),(7,4,3),(8,5,8),(9,6,8),(10,7,7),(11,8,6),(12,9,7),(13,10,16),(14,11,3),(15,11,1),(16,12,9),(17,13,7),(18,14,8),(19,15,34),(20,15,21),(21,16,35),(22,17,34),(23,18,44),(24,19,35),(25,20,18),(26,21,34),(27,22,38),(28,23,44),(29,24,18),(30,25,18),(31,26,23),(32,27,17),(33,28,35),(34,28,22),(35,29,45),(36,30,43),(37,31,37),(38,32,35),(39,33,17),(40,34,43),(41,35,34),(42,36,40),(43,36,29),(44,37,46),(45,38,35),(46,39,44),(47,40,34),(48,41,45),(49,42,34),(50,43,29),(51,43,40),(52,44,35),(53,45,17),(54,46,43),(55,47,38),(56,48,45),(57,49,37),(58,50,23),(59,51,47),(60,52,43),(61,53,43),(62,54,29),(63,55,23),(64,56,43),(65,57,70),(66,58,62),(67,58,69),(68,58,66),(69,59,67),(70,60,29),(71,60,40),(72,61,29),(73,61,40),(74,62,68),(75,63,23),(76,64,69),(77,65,69),(78,66,29),(79,66,40),(80,67,68),(81,68,69),(82,69,69),(83,70,69),(84,70,66),(85,70,62),(86,71,61),(87,72,61),(88,73,63),(89,74,57),(90,74,49),(91,75,50),(92,75,54),(93,75,55),(94,75,58),(95,75,48),(96,75,49),(97,76,54),(98,76,55),(99,76,58),(100,76,48),(101,76,49),(102,77,58),(103,78,58),(104,78,54),(105,78,55),(106,78,49),(107,78,48),(108,79,48),(109,80,58),(110,81,59),(111,82,58),(112,83,48),(113,84,48),(114,84,49),(115,84,58),(116,84,55),(117,84,54),(118,85,49),(119,85,57),(120,86,48),(121,87,48),(122,88,58),(123,88,55),(124,88,52),(125,88,54),(126,88,48),(127,88,49),(128,88,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,60,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',25,'a',NULL),(2,61,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(3,62,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',22,'a',NULL),(4,62,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',28,'a',NULL),(5,63,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(6,8,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(7,7,'<com.batteryiconmod.zyl.battery.main2: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(8,64,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(9,7,'<com.batteryiconmod.zyl.battery.main2: void onCreate(android.os.Bundle)>',69,'s',NULL),(10,16,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL),(11,60,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',19,'a',NULL),(12,9,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,7,'<com.batteryiconmod.zyl.battery.main2: void onClick(android.view.View)>',14,'a',NULL),(14,8,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(15,76,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(16,77,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(17,78,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(18,44,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(19,35,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(20,79,'<com.livegame.wallpaperjipinminv.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(21,34,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(22,80,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(23,44,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(24,81,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(25,83,'<com.livegame.wallpaperjipinminv.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(26,84,'<com.gp.lights.ALuces$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(27,85,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(28,86,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(29,87,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(30,88,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(31,89,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(32,90,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(33,91,'<com.livegame.wallpaperlangmanxk.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(34,92,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(35,93,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(36,94,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(37,46,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(38,35,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(39,95,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(40,34,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(41,45,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(42,96,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(43,97,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(44,98,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(45,100,'<com.livegame.wallpaperlangmanxk.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(46,43,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(47,101,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(48,45,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(49,103,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(50,104,'<com.gp.lights.ALuces$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(51,47,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,106,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(53,43,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(54,107,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(55,23,'<com.gp.lights.ALuces: void onActivityResult(int,int,android.content.Intent)>',24,'a',NULL),(56,108,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(57,75,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,109,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(59,110,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(60,111,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(61,112,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(62,113,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(63,114,'<com.gp.lights.ALuces$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(64,74,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(65,115,'<com.ju6.a: boolean b()>',178,'p',NULL),(66,116,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(67,117,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(68,118,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(69,74,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(70,120,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(71,121,'<com.mogo.aiqingllk.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(72,122,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(73,68,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(74,123,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(75,125,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(76,126,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(77,127,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(78,128,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(79,48,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(80,58,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(81,59,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(82,58,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(83,48,'<com.gp.mahjongg.SelectActivity: void startBuilder(int)>',5,'a',NULL),(84,129,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(85,130,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(86,48,'<com.gp.mahjongg.SelectActivity: void onItemClick(com.gp.mahjongg.MahjonggData,int)>',11,'a',NULL),(87,48,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(88,131,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,1),(2,3,1),(3,6,1),(4,7,1),(5,12,6),(6,20,8),(7,21,8),(8,27,1),(9,28,1),(10,29,1),(11,30,1),(12,35,9),(13,43,1),(14,44,1),(15,45,8),(16,46,6),(17,51,8),(18,52,8),(19,55,1),(20,57,8),(21,58,1),(22,59,1),(23,60,8),(24,61,1),(25,62,8),(26,63,8),(27,69,8),(28,70,9),(29,72,1),(30,73,6),(31,74,1),(32,76,1),(33,80,1),(34,86,8),(35,99,8),(36,100,1),(37,101,1),(38,110,8),(39,111,6),(40,112,1),(41,113,1),(42,116,10),(43,119,11),(44,120,8),(45,121,11),(46,122,6),(47,123,8),(48,125,8),(49,126,8),(50,127,8),(51,128,8),(52,129,1),(53,130,1),(54,138,1),(55,139,1),(56,142,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,2,1),(2,3,2),(3,6,1),(4,7,2),(5,27,1),(6,28,1),(7,29,2),(8,30,2),(9,43,2),(10,44,1),(11,55,1),(12,58,1),(13,59,2),(14,61,2),(15,72,1),(16,74,2),(17,76,1),(18,80,2),(19,100,1),(20,101,2),(21,112,2),(22,113,1),(23,119,3),(24,120,3),(25,121,3),(26,129,2),(27,130,1),(28,138,1),(29,139,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/ps/pintu/view/LocalImageActivity'),(2,4,'com/ps/pintu/view/LocalImageGameActivity'),(3,5,'com/ps/pintu/view/MainActivity'),(4,8,'com/google/update/Dialog'),(5,10,'com/batteryiconmod/zyl/battery/About'),(6,9,'com/google/update/Dialog'),(7,11,'com/airpuh/ad/UpdateCheck'),(8,13,'ad/imadpush/com/poster/AlarmService'),(9,14,'com/ps/pintu/view/JigsawActivity'),(10,15,'com/google/update/UpdateService'),(11,16,'com.batteryiconmod.zyl.battery.SelectMod'),(12,17,'com/google/update/Dialog'),(13,18,'com/google/update/Dialog'),(14,19,'NULL-CONSTANT'),(15,22,'com/google/update/Dialog'),(16,23,'(.*)'),(17,24,'com/google/update/Dialog'),(18,25,'com/livegame/wallpaperjipinminv/SettingsActivity'),(19,31,'com/google/update/Dialog'),(20,32,'com/waps/OffersWebView'),(21,33,'com/google/update/Dialog'),(22,36,'com.gp.lights.AJuego'),(23,38,'com.gp.lights.APause'),(24,40,''),(25,39,'NULL-CONSTANT'),(26,37,'com/waps/OffersWebView'),(27,41,'com.gp.lights.AScores'),(28,42,'com.gp.lights.AHelp'),(29,48,'com/livegame/wallpaperlangmanxk/SettingsActivity'),(30,49,'NULL-CONSTANT'),(31,47,'com/waps/OffersWebView'),(32,50,'com/waps/OffersWebView'),(33,53,'com/google/update/UpdateService'),(34,64,'(.*)'),(35,65,'com/google/update/Dialog'),(36,67,'com/google/update/Dialog'),(37,66,'com/waps/OffersWebView'),(38,68,'com/waps/OffersWebView'),(39,75,'com/google/update/Dialog'),(40,77,'com/google/update/Dialog'),(41,79,'com.gp.lights.AJuego'),(42,81,'com.gp.lights.APause'),(43,82,'com/google/update/UpdateService'),(44,83,''),(45,84,'com.gp.lights.AScores'),(46,85,'com.gp.lights.AHelp'),(47,87,'(.*)'),(48,88,'com/waps/OffersWebView'),(49,89,''),(50,91,'com.gp.lights.AHelp'),(51,92,'com.gp.lights.AJuego'),(52,93,'com.gp.lights.AScores'),(53,94,'com.gp.lights.APause'),(54,96,'com/google/update/UpdateService'),(55,95,'com/waps/OffersWebView'),(56,97,'com/waps/OffersWebView'),(57,103,'com.gp.lights.AJuego'),(58,105,'com.gp.lights.APause'),(59,104,'com/google/update/Dialog'),(60,106,''),(61,107,'com/google/update/Dialog'),(62,108,'com.gp.lights.AScores'),(63,109,'com.gp.lights.AHelp'),(64,114,'com/google/update/Dialog'),(65,115,'com/google/update/Dialog'),(66,117,'com/mogo/aiqingllk/Main'),(67,118,'com/waps/OffersWebView'),(68,131,'com/gp/background/BackgroundActivity'),(69,132,'com/google/update/Dialog'),(70,133,'com/google/update/Dialog'),(71,134,'com/google/update/UpdateService'),(72,135,'com/google/update/Dialog'),(73,136,'com/google/update/Dialog'),(74,137,'com/gp/mahjongg/BuilderActivity'),(75,140,'com/gp/mahjongg/PlayActivity'),(76,141,'com/gp/mahjongg/SettingsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,20,1),(2,21,2),(3,45,3),(4,51,4),(5,52,5),(6,57,6),(7,60,7),(8,62,8),(9,63,9),(10,69,10),(11,86,11),(12,99,13),(13,110,16),(14,119,17),(15,120,18),(16,121,19),(17,123,21),(18,125,22),(19,126,23),(20,127,24),(21,128,25),(22,142,27);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'level'),(2,4,'path'),(3,8,'MSG'),(4,8,'TYPEdsada'),(5,9,'TYPEdsada'),(6,14,'level'),(7,14,'pictureIndex'),(8,17,'MSG'),(9,17,'TYPEdsada'),(10,18,'TYPEdsada'),(11,22,'TYPEdsada'),(12,24,'MSG'),(13,24,'TYPEdsada'),(14,31,'TYPEdsada'),(15,32,'USER_ID'),(16,32,'CLIENT_PACKAGE'),(17,32,'Offers_URL'),(18,32,'offers_webview_tag'),(19,33,'MSG'),(20,32,'URL_PARAMS'),(21,33,'TYPEdsada'),(22,35,'android.live_wallpaper.package'),(23,35,'android.live_wallpaper.settings'),(24,37,'USER_ID'),(25,37,'CLIENT_PACKAGE'),(26,37,'Offers_URL'),(27,37,'offers_webview_tag'),(28,37,'URL_PARAMS'),(29,47,'UrlPath'),(30,47,'ACTIVITY_FLAG'),(31,47,'isFinshClose'),(32,47,'offers_webview_tag'),(33,50,'Notify_Url_Params'),(34,50,'UrlPath'),(35,50,'ACTIVITY_FLAG'),(36,50,'isFinshClose'),(37,50,'offers_webview_tag'),(38,65,'MSG'),(39,65,'TYPEdsada'),(40,66,'Notify_Url_Params'),(41,66,'UrlPath'),(42,67,'TYPEdsada'),(43,66,'ACTIVITY_FLAG'),(44,66,'isFinshClose'),(45,66,'offers_webview_tag'),(46,68,'UrlPath'),(47,68,'ACTIVITY_FLAG'),(48,68,'isFinshClose'),(49,68,'offers_webview_tag'),(50,70,'android.live_wallpaper.package'),(51,70,'android.live_wallpaper.settings'),(52,75,'MSG'),(53,75,'TYPEdsada'),(54,77,'TYPEdsada'),(55,88,'USER_ID'),(56,88,'CLIENT_PACKAGE'),(57,88,'Offers_URL'),(58,88,'offers_webview_tag'),(59,88,'URL_PARAMS'),(60,89,'last_score'),(61,90,'last_score'),(62,91,'last_score'),(63,92,'last_score'),(64,93,'last_score'),(65,94,'last_score'),(66,95,'Notify_Url_Params'),(67,95,'UrlPath'),(68,95,'ACTIVITY_FLAG'),(69,95,'isFinshClose'),(70,95,'offers_webview_tag'),(71,97,'UrlPath'),(72,97,'ACTIVITY_FLAG'),(73,97,'isFinshClose'),(74,97,'offers_webview_tag'),(75,104,'MSG'),(76,104,'TYPEdsada'),(77,107,'TYPEdsada'),(78,114,'MSG'),(79,114,'TYPEdsada'),(80,115,'TYPEdsada'),(81,118,'USER_ID'),(82,118,'CLIENT_PACKAGE'),(83,118,'Offers_URL'),(84,118,'URL_PARAMS'),(85,132,'MSG'),(86,132,'TYPEdsada'),(87,133,'TYPEdsada'),(88,135,'MSG'),(89,135,'TYPEdsada'),(90,136,'TYPEdsada'),(91,137,'GAME_ID'),(92,140,'GAME_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,1),(7,5,1),(8,6,1),(9,7,5),(10,8,5),(11,9,4),(12,9,2),(13,9,3),(14,10,3),(15,10,4),(16,10,2),(17,11,1),(18,12,4),(19,12,3),(20,12,2),(21,13,7),(22,14,1),(23,15,4),(24,15,2),(25,15,3),(26,16,7),(27,17,7),(28,18,7),(29,19,7),(30,20,7),(31,21,7),(32,22,7),(33,23,7);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,5,1),(5,6,1),(6,11,1),(7,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,13,'package',NULL,NULL,NULL,NULL,NULL),(2,16,'package',NULL,NULL,NULL,NULL,NULL),(3,17,'package',NULL,NULL,NULL,NULL,NULL),(4,18,'package',NULL,NULL,NULL,NULL,NULL),(5,19,'package',NULL,NULL,NULL,NULL,NULL),(6,20,'package',NULL,NULL,NULL,NULL,NULL),(7,21,'package',NULL,NULL,NULL,NULL,NULL),(8,22,'package',NULL,NULL,NULL,NULL,NULL),(9,23,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,20,'application','vnd.android.package-archive'),(2,21,'application','vnd.android.package-archive'),(3,45,'application','vnd.android.package-archive'),(4,51,'application','vnd.android.package-archive'),(5,52,'application','vnd.android.package-archive'),(6,57,'application','vnd.android.package-archive'),(7,60,'application','vnd.android.package-archive'),(8,62,'application','vnd.android.package-archive'),(9,63,'application','vnd.android.package-archive'),(10,69,'application','vnd.android.package-archive'),(11,86,'application','vnd.android.package-archive'),(12,99,'application','vnd.android.package-archive'),(13,121,'(.*)','(.*)'),(14,123,'application','vnd.android.package-archive'),(15,125,'application','vnd.android.package-archive'),(16,126,'application','vnd.android.package-archive'),(17,127,'application','vnd.android.package-archive'),(18,128,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.pintu.view'),(2,2,'com.noshufou.android.su'),(3,3,'com.noshufou.android.su'),(4,4,'com.ps.pintu.view'),(5,5,'com.ps.pintu.view'),(6,6,'com.ps.pintu.view'),(7,7,'com.ps.pintu.view'),(8,8,'com.ps.pintu.view'),(9,10,'com.batteryiconmod.zyl.battery'),(10,9,'com.ps.pintu.view'),(11,11,'com.batteryiconmod.zyl.battery'),(12,13,'com.batteryiconmod.zyl.battery'),(13,14,'com.ps.pintu.view'),(14,15,'com.ps.pintu.view'),(15,16,'com.batteryiconmod.zyl.battery'),(16,17,'com.ps.pintu.view'),(17,18,'com.ps.pintu.view'),(18,19,'NULL-CONSTANT'),(19,22,'com.livegame.wallpaperlangmanxk'),(20,23,'(.*)'),(21,24,'com.livegame.wallpaperlangmanxk'),(22,25,'com.livegame.wallpaperjipinminv'),(23,27,'(.*)'),(24,28,'com.noshufou.android.su'),(25,29,'(.*)'),(26,30,'com.noshufou.android.su'),(27,31,'com.livegame.wallpaperlangmanxk'),(28,32,'com.livegame.wallpaperjipinminv'),(29,33,'com.livegame.wallpaperlangmanxk'),(30,36,'com.gp.lights'),(31,38,'com.gp.lights'),(32,39,'NULL-CONSTANT'),(33,40,'com.gp.lights'),(34,37,'com.livegame.wallpaperlangmanxk'),(35,41,'com.gp.lights'),(36,42,'com.gp.lights'),(37,43,'com.livegame.wallpaperjipinminv'),(38,44,'com.livegame.wallpaperjipinminv'),(39,48,'com.livegame.wallpaperlangmanxk'),(40,49,'NULL-CONSTANT'),(41,47,'com.livegame.wallpaperjipinminv'),(42,50,'com.livegame.wallpaperjipinminv'),(43,53,'com.livegame.wallpaperlangmanxk'),(44,55,'(.*)'),(45,58,'com.livegame.wallpaperlangmanxk'),(46,59,'(.*)'),(47,61,'com.livegame.wallpaperlangmanxk'),(48,64,'(.*)'),(49,65,'com.livegame.wallpaperjipinminv'),(50,67,'com.livegame.wallpaperjipinminv'),(51,66,'com.livegame.wallpaperlangmanxk'),(52,68,'com.livegame.wallpaperlangmanxk'),(53,72,'(.*)'),(54,74,'(.*)'),(55,75,'com.livegame.wallpaperjipinminv'),(56,76,'com.noshufou.android.su'),(57,77,'com.livegame.wallpaperjipinminv'),(58,79,'com.gp.lights'),(59,80,'com.noshufou.android.su'),(60,81,'com.gp.lights'),(61,82,'com.livegame.wallpaperjipinminv'),(62,83,'com.gp.lights'),(63,84,'com.gp.lights'),(64,85,'com.gp.lights'),(65,87,'(.*)'),(66,88,'com.gp.lights'),(67,89,'com.gp.lights'),(68,91,'com.gp.lights'),(69,92,'com.gp.lights'),(70,93,'com.gp.lights'),(71,94,'com.gp.lights'),(72,96,'com.mogo.aiqingllk'),(73,95,'com.gp.lights'),(74,97,'com.gp.lights'),(75,100,'com.noshufou.android.su'),(76,101,'com.noshufou.android.su'),(77,103,'com.gp.lights'),(78,105,'com.gp.lights'),(79,104,'com.mogo.aiqingllk'),(80,106,'com.gp.lights'),(81,107,'com.mogo.aiqingllk'),(82,108,'com.gp.lights'),(83,109,'com.gp.lights'),(84,112,'com.mogo.aiqingllk'),(85,113,'com.mogo.aiqingllk'),(86,114,'com.mogo.aiqingllk'),(87,115,'com.mogo.aiqingllk'),(88,117,'com.mogo.aiqingllk'),(89,118,'com.mogo.aiqingllk'),(90,129,'com.gp.mahjongg'),(91,130,'com.gp.mahjongg'),(92,131,'com.gp.mahjongg'),(93,132,'com.gp.mahjongg'),(94,133,'com.gp.mahjongg'),(95,134,'com.gp.mahjongg'),(96,135,'com.gp.mahjongg'),(97,136,'com.gp.mahjongg'),(98,137,'com.gp.mahjongg'),(99,138,'com.noshufou.android.su'),(100,139,'com.noshufou.android.su'),(101,140,'com.gp.mahjongg'),(102,141,'com.gp.mahjongg');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,9,0),(4,17,0),(5,18,0),(6,23,0),(7,42,0),(8,41,0),(9,46,0),(10,47,0),(11,48,0),(12,59,0),(13,60,0),(14,61,0),(15,70,0),(16,71,0),(17,72,0),(18,73,0),(19,74,0),(20,72,0),(21,75,0),(22,76,0),(23,76,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,2,1,0),(4,3,0,0),(5,4,0,0),(6,5,1,0),(7,5,1,0),(8,6,0,0),(9,6,0,0),(10,7,0,0),(11,9,0,0),(12,8,1,0),(13,10,0,0),(14,11,0,0),(15,12,0,0),(16,13,0,0),(17,14,0,0),(18,14,0,0),(19,15,0,0),(20,16,1,0),(21,17,1,0),(22,18,0,0),(23,19,0,0),(24,18,0,0),(25,20,0,0),(26,21,1,0),(27,21,1,0),(28,22,1,0),(29,21,1,0),(30,22,1,0),(31,23,0,0),(32,24,0,0),(33,23,0,0),(34,26,1,0),(35,25,1,0),(36,26,0,0),(37,27,0,0),(38,26,0,0),(39,28,0,0),(40,26,0,0),(41,26,0,0),(42,26,0,0),(43,29,1,0),(44,29,1,0),(45,30,1,0),(46,31,1,0),(47,32,0,0),(48,33,0,0),(49,34,0,0),(50,32,0,0),(51,35,1,0),(52,36,1,0),(53,37,0,0),(54,38,1,0),(55,38,1,0),(56,36,1,0),(57,36,1,0),(58,39,1,0),(59,38,1,0),(60,36,1,0),(61,39,1,0),(62,36,1,0),(63,36,1,0),(64,40,0,0),(65,41,0,0),(66,42,0,0),(67,41,0,0),(68,42,0,0),(69,44,1,0),(70,45,1,0),(71,46,1,0),(72,46,1,0),(73,47,1,0),(74,46,1,0),(75,48,0,0),(76,49,1,0),(77,48,0,0),(78,50,1,0),(79,50,0,0),(80,49,1,0),(81,50,0,0),(82,51,0,0),(83,50,0,0),(84,50,0,0),(85,50,0,0),(86,52,1,0),(87,53,0,0),(88,54,0,0),(89,55,0,0),(90,55,1,0),(91,55,0,0),(92,55,0,0),(93,55,0,0),(94,55,0,0),(95,56,0,0),(96,57,0,0),(97,56,0,0),(98,58,1,0),(99,59,1,0),(100,62,1,0),(101,62,1,0),(102,63,1,0),(103,63,0,0),(104,64,0,0),(105,63,0,0),(106,63,0,0),(107,64,0,0),(108,63,0,0),(109,63,0,0),(110,66,1,0),(111,67,1,0),(112,68,1,0),(113,68,1,0),(114,69,0,0),(115,69,0,0),(116,70,1,0),(117,71,0,0),(118,72,0,0),(119,73,1,0),(120,73,1,0),(121,73,1,0),(122,74,1,0),(123,76,1,0),(124,76,1,0),(125,76,1,0),(126,76,1,0),(127,76,1,0),(128,76,1,0),(129,77,1,0),(130,77,1,0),(131,79,0,0),(132,80,0,0),(133,80,0,0),(134,81,0,0),(135,82,0,0),(136,82,0,0),(137,83,0,0),(138,85,1,0),(139,85,1,0),(140,86,0,0),(141,87,0,0),(142,88,1,0);
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
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(10,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.BIND_WALLPAPER'),(18,'android.permission.CHANGE_CONFIGURATION'),(5,'android.permission.CHANGE_WIFI_STATE'),(9,'android.permission.GET_TASKS'),(15,'android.permission.INSTALL_PACKAGES'),(3,'android.permission.INTERNET'),(11,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(17,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.SET_ORIENTATION'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(16,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(6,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(9,NULL,NULL,'file://',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(15,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(22,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(27,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,60,12),(2,61,14),(3,65,15),(4,75,20),(5,78,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,3),(10,2,4),(11,2,6),(12,2,7),(13,2,8),(14,4,1),(15,3,1),(16,4,2),(17,3,2),(18,4,3),(19,3,3),(20,4,4),(21,3,4),(22,4,5),(23,3,5),(24,4,6),(25,3,6),(26,4,7),(27,3,7),(28,4,8),(29,3,8),(30,4,9),(31,3,9),(32,5,1),(33,4,10),(34,3,10),(35,5,3),(36,5,4),(37,5,6),(38,5,7),(39,5,8),(40,5,9),(41,5,10),(42,5,11),(43,5,12),(44,6,1),(45,6,2),(46,6,3),(47,6,4),(48,6,5),(49,6,6),(50,6,7),(51,6,8),(52,6,10),(53,6,11),(54,6,12),(55,6,13),(56,7,1),(57,7,3),(58,7,4),(59,7,5),(60,7,6),(61,7,7),(62,7,8),(63,7,10),(64,7,11),(65,7,12),(66,7,15),(67,7,17),(68,7,16),(69,7,18);
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

-- Dump completed on 2015-10-09  0:38:08
