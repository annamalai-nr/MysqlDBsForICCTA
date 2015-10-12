-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_119
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
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CHOOSER'),(14,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(12,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(7,'android.net.conn.CONNECTIVITY_CHANGE'),(13,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(5,'android.service.wallpaper.WallpaperService'),(16,'android.settings.WIRELESS_SETTINGS'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com/safesys/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(8,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.ps.kickmouse',15),(2,'com.safesys.onekeyvpn',9),(3,'com.gp.paopaoyu',3),(4,'com.alan.mp3cutter',48),(5,'com.livegame.wallpaperribennvyou',3),(6,'com.alan',4),(7,'com.mogo.aiqingllk',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.ps.kickmouse.WhacAMouse'),(2,1,'com.ps.kickmouse.Game'),(3,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(4,1,'com.google.update.Dialog'),(5,1,'com.waps.OffersWebView'),(6,1,'com.ps.kickmouse.DemoApp'),(7,1,'com.google.update.UpdateService'),(8,1,'com.google.update.Receiver'),(9,2,'com.safesys.onekeyvpn.OpenVpnSettings'),(10,2,'com.safesys.onekeyvpn.AdvancedSettings'),(11,2,'com.safesys.onekeyvpn.EditConfig'),(12,2,'com.safesys.onekeyvpn.EditConfigPreferences'),(13,2,'com.safesys.onekeyvpn.EnterPassphrase'),(14,2,'com.safesys.onekeyvpn.EnterUserPassword'),(15,2,'com.safesys.onekeyvpn.ImportFiles'),(16,2,'com.safesys.onekeyvpn.service.OpenVpnService'),(17,2,'com.safesys.onekeyvpn.util.BootCompletedReceiver'),(18,3,'com.gp.paopaoyu.SplashActivity'),(19,3,'com.gp.paopaoyu.MainView'),(20,3,'com.gp.paopaoyu.AquariumsActivity'),(21,3,'com.gp.paopaoyu.FeedActivity'),(22,3,'com.gp.paopaoyu.SettingsActivity'),(23,3,'com.gp.paopaoyu.StoreActivity'),(24,3,'com.gp.paopaoyu.StoreDetailActivity'),(25,3,'com.gp.paopaoyu.BagActivity'),(26,3,'com.gp.paopaoyu.MiniGameActivity'),(27,3,'com.gp.paopaoyu.ExamActivity'),(28,3,'com.gp.paopaoyu.CreditActivity'),(29,3,'com.gp.paopaoyu.HelpActivity'),(30,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(31,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(32,3,'com.google.update.Dialog'),(33,3,'com.waps.OffersWebView'),(34,3,'com.google.update.UpdateService'),(35,3,'com.google.update.Receiver'),(36,4,'com.alan.mp3cutter.Mp3Cutter'),(37,4,'com.alan.mp3cutter.Mp3Cut'),(38,4,'com.alan.mp3cutter.Mp3Join'),(39,4,'com.alan.mp3cutter.Mp3List'),(40,4,'org.achartengine.GraphicalActivity'),(41,4,'com.google.ads.AdActivity'),(42,4,'com.vpon.adon.android.WebInApp'),(43,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(44,5,'com.livegame.wallpaperribennvyou.MainActivity'),(45,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(46,4,'com.waps.OffersWebView'),(47,5,'com.livegame.wallpaperribennvyou.SettingsActivity'),(48,4,'com.google.update.Dialog'),(49,5,'com.livegame.wallpaperribennvyou.SelectFolderActivity'),(50,4,'com.google.update.UpdateService'),(51,5,'com.google.ads.AdActivity'),(52,4,'com.google.update.Receiver'),(53,5,'com.vpon.adon.android.WebInApp'),(54,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(55,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(56,5,'com.waps.OffersWebView'),(57,5,'com.google.update.Dialog'),(58,5,'com.livegame.wallpaperribennvyou.WallpaperSlideshow'),(59,6,'com.alan.LoverExpression'),(60,5,'com.google.update.UpdateService'),(61,6,'com.alan.AddExpression'),(62,5,'com.google.update.Receiver'),(63,6,'com.alan.EditExpression'),(64,6,'com.alan.PlayExpression'),(65,6,'com.alan.AddBg'),(66,6,'com.alan.Setting'),(67,6,'com.alan.Help'),(68,6,'com.alan.YoumiActivity'),(69,6,'com.google.ads.AdActivity'),(70,6,'com.vpon.adon.android.WebInApp'),(71,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(72,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(73,6,'com.waps.OffersWebView'),(74,6,'com.google.update.Dialog'),(75,6,'com.google.update.UpdateService'),(76,6,'com.google.update.Receiver'),(77,1,'com.waps.s'),(78,1,'com.waps.ac'),(79,1,'com.waps.o'),(80,1,'com.ps.kickmouse.WhacAMouse$2'),(81,2,'com.safesys.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(82,2,'com.safesys.onekeyvpn.service.ManagementThread'),(83,2,'com.safesys.onekeyvpn.OpenVpnSettings$1'),(84,1,'com.waps.AppConnect'),(85,2,'com.safesys.onekeyvpn.service.DaemonMonitor$2'),(86,1,'com.waps.z'),(87,2,'com.safesys.onekeyvpn.ImportFiles$2'),(88,1,'com.google.update.Dialog$1'),(89,2,'com.safesys.onekeyvpn.service.DaemonMonitor'),(90,1,'com.waps.aa'),(91,2,'com.safesys.onekeyvpn.OpenVpnSettings$4'),(92,7,'com.mogo.aiqingllk.begin'),(93,7,'com.mogo.aiqingllk.Main'),(94,7,'com.google.ads.AdActivity'),(95,7,'com.vpon.adon.android.WebInApp'),(96,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(97,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(98,1,'com.google.update.Dialog$2'),(99,7,'com.waps.OffersWebView'),(100,7,'com.google.update.Dialog'),(101,7,'com.google.update.UpdateService'),(102,7,'com.google.update.Receiver'),(103,1,'com.google.update.UpdateService$AA'),(104,1,'com.waps.q'),(105,5,'com.waps.AppConnect'),(106,5,'com.waps.o'),(107,5,'com.waps.q'),(108,4,'com.waps.q'),(109,5,'com.google.update.Dialog$2'),(110,6,'com.waps.AppConnect'),(111,4,'com.waps.AppConnect'),(112,5,'com.livegame.wallpaperribennvyou.MainActivity$1'),(113,5,'com.google.update.UpdateService$AA'),(114,4,'com.google.update.Dialog$2'),(115,4,'com.alan.mp3cutter.Mp3List$3'),(116,6,'com.google.update.Dialog$1'),(117,4,'com.google.update.UpdateService$AA'),(118,6,'com.ju6.a'),(119,4,'com.waps.aa'),(120,5,'com.livegame.wallpaperribennvyou.MainActivity$2'),(121,5,'com.google.update.Dialog$1'),(122,4,'com.waps.o'),(123,5,'com.waps.z'),(124,6,'com.waps.k'),(125,4,'com.waps.ac'),(126,4,'com.alan.mp3cutter.Mp3Cutter$3'),(127,6,'com.google.update.Dialog$2'),(128,5,'com.waps.ac'),(129,4,'com.google.update.Dialog$1'),(130,5,'com.waps.aa'),(131,4,'com.alan.mp3cutter.Mp3Cutter$2'),(132,6,'com.google.update.UpdateService$MyThread'),(133,4,'com.waps.z'),(134,6,'com.waps.m'),(135,7,'com.waps.k'),(136,7,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(137,7,'com.waps.m'),(138,7,'com.google.update.Dialog$1'),(139,7,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(140,7,'com.ju6.a'),(141,7,'com.google.update.UpdateService$MyThread'),(142,7,'com.google.update.Dialog$2'),(143,7,'com.waps.AppConnect'),(144,7,'com.mogo.aiqingllk.begin$beginButtonListener'),(145,3,'com.waps.o'),(146,3,'com.waps.s'),(147,3,'com.gp.paopaoyu.StoreActivity$1'),(148,3,'com.gp.paopaoyu.FeedActivity$6'),(149,3,'com.google.update.Dialog$2'),(150,3,'com.waps.aa'),(151,3,'com.gp.paopaoyu.MainView$3'),(152,3,'com.waps.q'),(153,3,'com.waps.ac'),(154,3,'com.gp.paopaoyu.FeedActivity$5'),(155,3,'com.google.update.UpdateService$AA'),(156,3,'com.waps.z'),(157,3,'com.gp.paopaoyu.FeedActivity$4'),(158,3,'com.gp.paopaoyu.MainView$4'),(159,3,'com.gp.paopaoyu.SettingsActivity$2'),(160,3,'com.gp.paopaoyu.MainView$1'),(161,3,'com.google.update.Dialog$1'),(162,3,'com.gp.paopaoyu.AquariumsActivity$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'transitionTime'),(2,3,'overlayTransition'),(3,5,'SHWO_FLAG'),(4,5,'Notify_Id'),(5,1,'APP_ID'),(6,5,'APP_ID'),(7,7,'APP_ID'),(8,3,'APP_ID'),(9,6,'APP_ID'),(10,5,'Offers_URL'),(11,1,'WAPS_ID'),(12,5,'WAPS_ID'),(13,7,'WAPS_ID'),(14,3,'WAPS_ID'),(15,6,'WAPS_ID'),(16,3,'url'),(17,4,'MSG'),(18,1,'WAPS_PID'),(19,5,'WAPS_PID'),(20,7,'WAPS_PID'),(21,3,'WAPS_PID'),(22,6,'WAPS_PID'),(23,1,'CLIENT_PACKAGE'),(24,5,'CLIENT_PACKAGE'),(25,7,'CLIENT_PACKAGE'),(26,3,'CLIENT_PACKAGE'),(27,6,'CLIENT_PACKAGE'),(28,5,'URL_PARAMS'),(29,2,'Progrees'),(30,5,'isFinshClose'),(31,7,'ST_START_DELAY'),(32,3,'shouldEnableBottomBar'),(33,3,'shouldResizeOverlay'),(34,3,'overlayTitle'),(35,5,'ACTIVITY_FLAG'),(36,2,'restart'),(37,4,'TYPEdsada'),(38,5,'URL'),(39,3,'shouldShowTitlebar'),(40,7,'ST_MY_PID'),(41,2,'HP'),(42,3,'shouldMakeOverlayTransparent'),(43,5,'Notify_Url_Params'),(44,5,'UrlPath'),(45,3,'shouldShowBottomBar'),(46,5,'USER_ID'),(47,1,'DEVICE_ID'),(48,5,'DEVICE_ID'),(49,7,'DEVICE_ID'),(50,3,'DEVICE_ID'),(51,56,'WAPS_ID'),(52,6,'DEVICE_ID'),(53,44,'WAPS_ID'),(54,56,'DEVICE_ID'),(55,44,'DEVICE_ID'),(56,46,'Offers_URL'),(57,56,'Offers_URL'),(58,46,'isFinshClose'),(59,54,'Adwo_PID'),(60,50,'ST_MY_PID'),(61,45,'shouldEnableBottomBar'),(62,56,'Notify_Id'),(63,36,'WAPS_PID'),(64,56,'ACTIVITY_FLAG'),(65,60,'ST_MY_PID'),(66,46,'WAPS_PID'),(67,45,'overlayTransition'),(68,46,'ACTIVITY_FLAG'),(69,45,'shouldShowTitlebar'),(70,5,'offers_webview_tag'),(71,43,'Adwo_PID'),(72,2,'MouseGame'),(73,48,'TYPEdsada'),(74,42,'url'),(75,46,'offers_webview_tag'),(76,46,'UrlPath'),(77,36,'DEVICE_ID'),(78,46,'DEVICE_ID'),(79,36,'APP_ID'),(80,46,'APP_ID'),(81,45,'overlayTitle'),(82,48,'MSG'),(83,56,'APP_ID'),(84,44,'APP_ID'),(85,63,'id'),(86,72,'shouldShowTitlebar'),(87,36,'WAPS_ID'),(88,46,'WAPS_ID'),(89,46,'URL'),(90,56,'URL'),(91,56,'WAPS_PID'),(92,44,'WAPS_PID'),(93,46,'Notify_Url_Params'),(94,56,'USER_ID'),(95,55,'overlayTitle'),(96,46,'USER_ID'),(97,45,'transitionTime'),(98,45,'shouldShowBottomBar'),(99,75,'ST_MY_PID'),(100,70,'url'),(101,64,'type'),(102,46,'SHWO_FLAG'),(103,63,'theme_id'),(104,45,'shouldMakeOverlayTransparent'),(105,59,'WAPS_PID'),(106,36,'CLIENT_PACKAGE'),(107,73,'isFinshClose'),(108,46,'CLIENT_PACKAGE'),(109,55,'overlayTransition'),(110,71,'isTestMode'),(111,50,'ST_START_DELAY'),(112,64,'content'),(113,59,'DEVICE_ID'),(114,71,'Adwo_PID'),(115,69,'action'),(116,55,'transitionTime'),(117,63,'type'),(118,73,'CLIENT_PACKAGE'),(119,72,'overlayTitle'),(120,73,'URL'),(121,39,'action'),(122,46,'URL_PARAMS'),(123,45,'url'),(124,59,'CLIENT_PACKAGE'),(125,64,'image_id'),(126,72,'url'),(127,74,'MSG'),(128,59,'APP_ID'),(129,69,'com.google.ads.AdOpener'),(130,72,'shouldMakeOverlayTransparent'),(131,73,'URL_PARAMS'),(132,75,'ST_START_DELAY'),(133,72,'shouldEnableBottomBar'),(134,73,'Offers_URL'),(135,72,'shouldResizeOverlay'),(136,57,'TYPEdsada'),(137,55,'shouldShowTitlebar'),(138,55,'url'),(139,57,'MSG'),(140,59,'content'),(141,63,'content'),(142,55,'shouldMakeOverlayTransparent'),(143,55,'shouldResizeOverlay'),(144,46,'Notify_Id'),(145,56,'UrlPath'),(146,54,'isTestMode'),(147,56,'offers_webview_tag'),(148,53,'adWidth'),(149,55,'shouldShowBottomBar'),(150,55,'shouldEnableBottomBar'),(151,72,'transitionTime'),(152,56,'URL_PARAMS'),(153,74,'TYPEdsada'),(154,56,'Notify_Url_Params'),(155,64,'theme_id'),(156,56,'isFinshClose'),(157,56,'CLIENT_PACKAGE'),(158,44,'CLIENT_PACKAGE'),(159,45,'shouldResizeOverlay'),(160,59,'description'),(161,43,'isTestMode'),(162,69,'params'),(163,59,'WAPS_ID'),(164,53,'url'),(165,72,'overlayTransition'),(166,73,'USER_ID'),(167,60,'ST_START_DELAY'),(168,56,'SHWO_FLAG'),(169,47,'folder'),(170,72,'shouldShowBottomBar'),(171,70,'adWidth'),(172,37,'name'),(173,42,'adWidth'),(174,83,'shouldShowBottomBar'),(175,83,'overlayTitle'),(176,84,'CLIENT_PACKAGE'),(177,83,'shouldResizeOverlay'),(178,83,'shouldShowTitlebar'),(179,84,'URL_PARAMS'),(180,84,'Offers_URL'),(181,84,'URL'),(182,80,'params'),(183,80,'com.google.ads.AdOpener'),(184,82,'Adwo_PID'),(185,83,'url'),(186,81,'adWidth'),(187,81,'url'),(188,85,'MSG'),(189,78,'WAPS_ID'),(190,85,'TYPEdsada'),(191,78,'CLIENT_PACKAGE'),(192,78,'WAPS_PID'),(193,83,'transitionTime'),(194,86,'ST_START_DELAY'),(195,86,'ST_MY_PID'),(196,78,'DEVICE_ID'),(197,83,'overlayTransition'),(198,84,'isFinshClose'),(199,83,'shouldEnableBottomBar'),(200,83,'shouldMakeOverlayTransparent'),(201,84,'USER_ID'),(202,78,'APP_ID'),(203,82,'isTestMode'),(204,80,'action'),(205,30,'transitionTime'),(206,30,'shouldShowTitlebar'),(207,30,'shouldMakeOverlayTransparent'),(208,31,'overlayTitle'),(209,30,'shouldShowBottomBar'),(210,32,'MSG'),(211,31,'url'),(212,33,'UrlPath'),(213,31,'shouldShowBottomBar'),(214,31,'shouldMakeOverlayTransparent'),(215,33,'Notify_Url_Params'),(216,21,'DEVICE_ID'),(217,20,'DEVICE_ID'),(218,33,'DEVICE_ID'),(219,26,'DEVICE_ID'),(220,24,'DEVICE_ID'),(221,29,'DEVICE_ID'),(222,22,'DEVICE_ID'),(223,19,'DEVICE_ID'),(224,27,'DEVICE_ID'),(225,18,'DEVICE_ID'),(226,21,'CLIENT_PACKAGE'),(227,20,'CLIENT_PACKAGE'),(228,33,'CLIENT_PACKAGE'),(229,26,'CLIENT_PACKAGE'),(230,24,'CLIENT_PACKAGE'),(231,29,'CLIENT_PACKAGE'),(232,22,'CLIENT_PACKAGE'),(233,19,'CLIENT_PACKAGE'),(234,27,'CLIENT_PACKAGE'),(235,18,'CLIENT_PACKAGE'),(236,30,'overlayTransition'),(237,33,'URL'),(238,21,'WAPS_PID'),(239,20,'WAPS_PID'),(240,33,'WAPS_PID'),(241,26,'WAPS_PID'),(242,24,'WAPS_PID'),(243,29,'WAPS_PID'),(244,22,'WAPS_PID'),(245,19,'WAPS_PID'),(246,27,'WAPS_PID'),(247,18,'WAPS_PID'),(248,31,'transitionTime'),(249,33,'Offers_URL'),(250,34,'ST_START_DELAY'),(251,32,'TYPEdsada'),(252,30,'shouldResizeOverlay'),(253,30,'FSAd'),(254,24,'type'),(255,33,'ACTIVITY_FLAG'),(256,21,'APP_ID'),(257,20,'APP_ID'),(258,33,'APP_ID'),(259,26,'APP_ID'),(260,24,'APP_ID'),(261,29,'APP_ID'),(262,22,'APP_ID'),(263,19,'APP_ID'),(264,27,'APP_ID'),(265,18,'APP_ID'),(266,33,'offers_webview_tag'),(267,21,'Aquarium'),(268,33,'SHWO_FLAG'),(269,21,'WAPS_ID'),(270,20,'WAPS_ID'),(271,33,'WAPS_ID'),(272,26,'WAPS_ID'),(273,24,'WAPS_ID'),(274,29,'WAPS_ID'),(275,22,'WAPS_ID'),(276,19,'WAPS_ID'),(277,27,'WAPS_ID'),(278,18,'WAPS_ID'),(279,34,'ST_MY_PID'),(280,33,'Notify_Id'),(281,31,'shouldResizeOverlay'),(282,31,'shouldEnableBottomBar'),(283,30,'overlayTitle'),(284,33,'URL_PARAMS'),(285,31,'overlayTransition'),(286,33,'isFinshClose'),(287,33,'USER_ID'),(288,31,'shouldShowTitlebar'),(289,30,'shouldEnableBottomBar'),(290,24,'key');
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'s',0,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,2,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'s',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'s',1,18,NULL),(59,59,'a',1,NULL,NULL),(60,60,'s',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'s',0,NULL,NULL),(76,76,'r',1,NULL,NULL),(77,81,'r',1,NULL,NULL),(78,92,'a',1,NULL,NULL),(79,93,'a',0,NULL,NULL),(80,94,'a',0,NULL,NULL),(81,95,'a',0,NULL,NULL),(82,96,'a',0,NULL,NULL),(83,97,'a',0,NULL,NULL),(84,99,'a',0,NULL,NULL),(85,100,'a',0,NULL,NULL),(86,101,'s',0,NULL,NULL),(87,102,'r',1,NULL,NULL),(88,104,'r',1,NULL,NULL),(89,107,'r',1,NULL,NULL),(90,108,'r',1,NULL,NULL),(91,134,'r',1,NULL,NULL),(92,137,'r',1,NULL,NULL),(93,152,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,2,6),(4,2,7),(5,3,1),(6,4,5),(7,5,5),(8,6,1),(9,7,7),(10,8,5),(11,9,6),(12,9,7),(13,9,3),(14,10,9),(15,10,16),(16,11,9),(17,12,9),(18,12,16),(19,13,9),(20,14,9),(21,15,6),(22,16,9),(23,17,16),(24,17,9),(25,18,9),(26,19,5),(27,20,16),(28,20,9),(29,21,15),(30,22,13),(31,23,4),(32,24,9),(33,25,14),(34,26,5),(35,27,9),(36,27,16),(37,28,5),(38,29,9),(39,30,4),(40,31,8),(41,32,16),(42,32,9),(43,33,1),(44,34,9),(45,34,16),(46,35,17),(47,36,9),(48,36,16),(49,37,16),(50,38,7),(51,39,6),(52,40,7),(53,41,3),(54,41,6),(55,41,7),(56,42,44),(57,43,52),(58,44,56),(59,45,39),(60,46,75),(61,47,57),(62,48,50),(63,49,59),(64,50,60),(65,51,59),(66,52,36),(67,53,44),(68,54,59),(69,56,46),(70,55,60),(71,57,59),(72,58,76),(73,59,48),(74,60,60),(75,61,39),(76,62,74),(77,63,56),(78,64,50),(79,65,56),(80,66,75),(81,67,46),(82,68,44),(83,69,59),(84,70,62),(85,71,57),(86,72,46),(87,73,75),(88,74,50),(89,75,56),(90,76,73),(91,77,46),(92,78,36),(93,79,74),(94,80,49),(95,80,56),(96,81,48),(97,82,59),(98,83,56),(99,84,59),(100,85,36),(101,86,46),(102,87,75),(103,88,46),(104,89,69),(105,90,84),(106,91,86),(107,91,83),(108,91,79),(109,92,85),(110,93,86),(111,93,79),(112,93,83),(113,94,86),(114,95,86),(115,96,85),(116,97,78),(117,98,86),(118,99,86),(119,100,87),(120,101,78),(121,102,80),(122,103,33),(123,104,29),(124,104,27),(125,104,26),(126,104,24),(127,104,22),(128,104,21),(129,104,20),(130,104,19),(131,105,20),(132,105,23),(133,105,25),(134,105,27),(135,106,19),(136,106,20),(137,106,24),(138,106,21),(139,106,22),(140,106,27),(141,106,26),(142,106,29),(143,107,34),(144,108,32),(145,109,33),(146,110,29),(147,110,20),(148,110,19),(149,110,22),(150,110,21),(151,110,24),(152,110,26),(153,110,27),(154,111,33),(155,112,35),(156,113,26),(157,113,27),(158,113,24),(159,113,29),(160,113,19),(161,113,22),(162,113,20),(163,113,21),(164,114,25),(165,114,27),(166,114,33),(167,114,20),(168,114,23),(169,115,34),(170,116,27),(171,116,29),(172,116,24),(173,116,26),(174,116,19),(175,116,20),(176,116,21),(177,116,22),(178,117,24),(179,117,19),(180,117,27),(181,117,26),(182,117,21),(183,117,20),(184,117,22),(185,117,29),(186,118,34),(187,119,33),(188,120,26),(189,120,24),(190,120,29),(191,120,27),(192,120,19),(193,120,20),(194,120,21),(195,120,22),(196,121,29),(197,121,19),(198,121,24),(199,121,22),(200,121,20),(201,121,26),(202,121,21),(203,121,27),(204,122,22),(205,122,21),(206,122,24),(207,122,20),(208,122,19),(209,122,29),(210,122,27),(211,122,26),(212,123,33),(213,124,20),(214,124,19),(215,124,22),(216,124,21),(217,124,24),(218,124,26),(219,124,29),(220,124,27),(221,125,32),(222,126,20),(223,126,27),(224,126,25),(225,126,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.ps.kickmouse.WhacAMouse: void startGame()>',4,'a',NULL),(2,77,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(3,1,'<com.ps.kickmouse.WhacAMouse: void onClick(android.view.View)>',13,'a',NULL),(4,78,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(5,79,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(6,80,'<com.ps.kickmouse.WhacAMouse$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(7,7,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(8,5,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(9,77,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(10,82,'<com.safesys.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(11,16,'<com.safesys.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(12,82,'<com.safesys.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(13,83,'<com.safesys.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(14,9,'<com.safesys.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(15,84,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(16,9,'<com.safesys.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',34,'s',NULL),(17,85,'<com.safesys.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(18,9,'<com.safesys.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',31,'s',NULL),(19,86,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(20,82,'<com.safesys.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(21,87,'<com.safesys.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(22,13,'<com.safesys.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(23,88,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(24,83,'<com.safesys.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(25,14,'<com.safesys.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(26,5,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(27,89,'<com.safesys.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(28,90,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(29,91,'<com.safesys.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(30,98,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(31,8,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(32,89,'<com.safesys.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(33,1,'<com.ps.kickmouse.WhacAMouse: void restartGame()>',4,'a',NULL),(34,82,'<com.safesys.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(35,17,'<com.safesys.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(36,82,'<com.safesys.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(37,16,'<com.safesys.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(38,103,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(39,84,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(40,7,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(41,77,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(42,105,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(43,52,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(44,106,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(45,39,'<com.alan.mp3cutter.Mp3List: void addDataToListView()>',3,'p',NULL),(46,75,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(47,109,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(48,50,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(49,110,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(50,60,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(51,59,'<com.alan.LoverExpression: boolean onOptionsItemSelected(android.view.MenuItem)>',32,'a',NULL),(52,111,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(53,112,'<com.livegame.wallpaperribennvyou.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(54,59,'<com.alan.LoverExpression: boolean onOptionsItemSelected(android.view.MenuItem)>',28,'a',NULL),(55,113,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(56,46,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(57,59,'<com.alan.LoverExpression: boolean onOptionsItemSelected(android.view.MenuItem)>',36,'a',NULL),(58,76,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(59,114,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(60,60,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(61,115,'<com.alan.mp3cutter.Mp3List$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',125,'a',NULL),(62,116,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(63,56,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(64,117,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(65,56,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(66,118,'<com.ju6.a: boolean b()>',178,'p',NULL),(67,119,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(68,120,'<com.livegame.wallpaperribennvyou.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(69,59,'<com.alan.LoverExpression: boolean onContextItemSelected(android.view.MenuItem)>',66,'a',NULL),(70,62,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(71,121,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(72,122,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(73,75,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(74,50,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(75,123,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(76,124,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(77,125,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(78,126,'<com.alan.mp3cutter.Mp3Cutter$3: void onClick(android.view.View)>',45,'a',NULL),(79,127,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(80,128,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(81,129,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(82,59,'<com.alan.LoverExpression: boolean onContextItemSelected(android.view.MenuItem)>',38,'a',NULL),(83,130,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(84,59,'<com.alan.LoverExpression: boolean onContextItemSelected(android.view.MenuItem)>',32,'a',NULL),(85,131,'<com.alan.mp3cutter.Mp3Cutter$2: void onClick(android.view.View)>',45,'a',NULL),(86,46,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(87,132,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(88,133,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(89,69,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(90,135,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(91,136,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(92,138,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(93,139,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(94,140,'<com.ju6.a: boolean b()>',178,'p',NULL),(95,141,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(96,142,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(97,143,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(98,101,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(99,101,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(100,102,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(101,144,'<com.mogo.aiqingllk.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(102,94,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(103,145,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(104,146,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(105,147,'<com.gp.paopaoyu.StoreActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(106,148,'<com.gp.paopaoyu.FeedActivity$6: void onClick(android.view.View)>',11,'a',NULL),(107,34,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(108,149,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(109,150,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(110,151,'<com.gp.paopaoyu.MainView$3: void onClick(android.view.View)>',6,'a',NULL),(111,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(112,35,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(113,146,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(114,153,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(115,34,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(116,154,'<com.gp.paopaoyu.FeedActivity$5: void onClick(android.view.View)>',9,'a',NULL),(117,146,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(118,155,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(119,156,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(120,157,'<com.gp.paopaoyu.FeedActivity$4: void onClick(android.view.View)>',9,'a',NULL),(121,158,'<com.gp.paopaoyu.MainView$4: void onClick(android.view.View)>',6,'a',NULL),(122,159,'<com.gp.paopaoyu.SettingsActivity$2: void onClick(android.view.View)>',6,'a',NULL),(123,33,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(124,160,'<com.gp.paopaoyu.MainView$1: void onClick(android.view.View)>',6,'a',NULL),(125,161,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(126,162,'<com.gp.paopaoyu.AquariumsActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,5,6),(2,6,6),(3,10,1),(4,11,1),(5,13,1),(6,14,1),(7,15,1),(8,16,1),(9,22,6),(10,23,8),(11,25,1),(12,26,1),(13,31,9),(14,32,9),(15,34,9),(16,35,9),(17,36,9),(18,37,9),(19,38,9),(20,39,10),(21,40,9),(22,44,11),(23,45,1),(24,46,1),(25,50,6),(26,51,6),(27,54,6),(28,57,10),(29,65,13),(30,68,1),(31,70,1),(32,72,10),(33,76,1),(34,78,1),(35,80,1),(36,79,1),(37,81,1),(38,82,1),(39,89,1),(40,90,1),(41,91,6),(42,95,6),(43,97,6),(44,100,10),(45,102,1),(46,103,14),(47,105,1),(48,110,1),(49,111,1),(50,112,1),(51,113,1),(52,114,6),(53,115,15),(54,116,6),(55,117,15),(56,118,6),(57,120,1),(58,121,1),(59,122,16),(60,123,1),(61,124,1),(62,125,10),(63,133,15),(64,134,6),(65,135,15),(66,136,6),(67,142,10),(68,149,1),(69,150,1),(70,155,6),(71,156,1),(72,157,1),(73,158,6),(74,163,1),(75,164,1),(76,166,1),(77,167,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,10,1),(2,11,2),(3,13,1),(4,14,2),(5,15,1),(6,16,2),(7,25,1),(8,26,2),(9,45,2),(10,46,1),(11,68,1),(12,70,2),(13,76,1),(14,78,2),(15,80,1),(16,79,2),(17,82,2),(18,81,1),(19,89,1),(20,90,2),(21,102,1),(22,105,2),(23,110,1),(24,111,2),(25,112,2),(26,113,1),(27,115,3),(28,116,3),(29,117,3),(30,120,1),(31,121,2),(32,123,2),(33,124,1),(34,133,3),(35,134,3),(36,135,3),(37,149,1),(38,150,2),(39,156,2),(40,157,1),(41,163,1),(42,164,2),(43,166,1),(44,167,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/ps/kickmouse/Game'),(2,2,'com/waps/OffersWebView'),(3,3,'com/ps/kickmouse/DemoApp'),(4,4,'NULL-CONSTANT'),(5,7,'com/google/update/Dialog'),(6,8,'com/google/update/Dialog'),(7,17,'com/safesys/onekeyvpn/service/OpenVpnService'),(8,18,'com/safesys/onekeyvpn/AdvancedSettings'),(9,20,'com/safesys/onekeyvpn/service/OpenVpnService'),(10,19,'com/waps/OffersWebView'),(11,21,'com/safesys/onekeyvpn/service/OpenVpnService'),(12,24,'com/safesys/onekeyvpn/service/OpenVpnService'),(13,27,'com/safesys/onekeyvpn/service/OpenVpnService'),(14,28,'com/safesys/onekeyvpn/service/OpenVpnService'),(15,29,'(.*)'),(16,30,'com/waps/OffersWebView'),(17,33,'com/waps/OffersWebView'),(18,41,'com/google/update/UpdateService'),(19,42,'com/ps/kickmouse/Game'),(20,43,'com/safesys/onekeyvpn/service/OpenVpnService'),(21,47,'com/waps/OffersWebView'),(22,48,'com/google/update/Dialog'),(23,49,'com/google/update/Dialog'),(24,52,'com/waps/OffersWebView'),(25,53,'com/google/update/UpdateService'),(26,55,'com/google/update/Dialog'),(27,56,'com/google/update/Dialog'),(28,58,'com/google/update/Dialog'),(29,60,'com/google/update/Dialog'),(30,61,'com/google/update/Dialog'),(31,59,'com/waps/OffersWebView'),(32,62,'com/google/update/Dialog'),(33,63,'com/alan/Setting'),(34,64,'com/waps/OffersWebView'),(35,66,'com/alan/AddExpression'),(36,67,'(.*)'),(37,69,'com/alan/Help'),(38,71,'com/google/update/UpdateService'),(39,73,'com/google/update/Dialog'),(40,75,'com/google/update/Dialog'),(41,74,'com/alan/mp3cutter/Mp3Cut'),(42,83,'(.*)'),(43,85,'com/livegame/wallpaperribennvyou/SettingsActivity'),(44,84,'com/waps/OffersWebView'),(45,86,'com/alan/EditExpression'),(46,87,'com/google/update/UpdateService'),(47,88,'com/waps/OffersWebView'),(48,92,'com/google/update/Dialog'),(49,93,'com/google/update/Dialog'),(50,94,'com/google/update/Dialog'),(51,96,'com/google/update/Dialog'),(52,98,'NULL-CONSTANT'),(53,99,'com/alan/mp3cutter/Mp3List'),(54,101,'NULL-CONSTANT'),(55,104,'com/waps/OffersWebView'),(56,106,'com/alan/PlayExpression'),(57,108,'com/alan/mp3cutter/Mp3List'),(58,107,'com/waps/OffersWebView'),(59,126,'com/waps/OffersWebView'),(60,127,'com/google/update/Dialog'),(61,128,'com/google/update/Dialog'),(62,129,'com/google/update/Dialog'),(63,130,'com/google/update/Dialog'),(64,131,'com/google/update/UpdateService'),(65,132,'com/mogo/aiqingllk/Main'),(66,137,'com/waps/OffersWebView'),(67,138,'com/gp/paopaoyu/StoreDetailActivity'),(68,139,'com/gp/paopaoyu/MiniGameActivity'),(69,140,'com/google/update/Dialog'),(70,141,'com/google/update/Dialog'),(71,143,'com/waps/OffersWebView'),(72,144,'com/waps/OffersWebView'),(73,145,'com/gp/paopaoyu/SettingsActivity'),(74,146,'(.*)'),(75,147,'com/google/update/UpdateService'),(76,151,'NULL-CONSTANT'),(77,152,'com/google/update/Dialog'),(78,153,'com/google/update/Dialog'),(79,154,'com/gp/paopaoyu/StoreActivity'),(80,159,'com/gp/paopaoyu/BagActivity'),(81,160,'com/gp/paopaoyu/HelpActivity'),(82,161,'com/gp/paopaoyu/CreditActivity'),(83,165,'com/gp/paopaoyu/AquariumsActivity'),(84,168,'com/gp/paopaoyu/FeedActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,5,1),(2,6,2),(3,22,3),(4,50,4),(5,51,5),(6,54,6),(7,91,9),(8,95,10),(9,97,11),(10,114,12),(11,115,13),(12,116,14),(13,117,15),(14,118,16),(15,133,18),(16,134,19),(17,135,20),(18,136,21),(19,155,22),(20,158,23);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'CLIENT_PACKAGE'),(2,2,'URL'),(3,2,'isFinshClose'),(4,2,'offers_webview_tag'),(5,7,'TYPEdsada'),(6,8,'MSG'),(7,8,'TYPEdsada'),(8,18,'hasDaemonsStarted'),(9,19,'USER_ID'),(10,19,'CLIENT_PACKAGE'),(11,19,'Offers_URL'),(12,19,'offers_webview_tag'),(13,19,'URL_PARAMS'),(14,23,'org.openintents.extra.TITLE'),(15,30,'UrlPath'),(16,30,'ACTIVITY_FLAG'),(17,30,'isFinshClose'),(18,30,'offers_webview_tag'),(19,31,'android.intent.extra.INTENT'),(20,32,'android.intent.extra.INTENT'),(21,33,'Notify_Url_Params'),(22,33,'UrlPath'),(23,33,'ACTIVITY_FLAG'),(24,34,'android.intent.extra.TITLE'),(25,33,'isFinshClose'),(26,34,'android.intent.extra.INTENT'),(27,33,'offers_webview_tag'),(28,35,'android.intent.extra.INTENT'),(29,36,'android.intent.extra.TITLE'),(30,36,'android.intent.extra.INTENT'),(31,37,'android.intent.extra.INTENT'),(32,38,'android.intent.extra.TITLE'),(33,38,'android.intent.extra.INTENT'),(34,40,'android.intent.extra.TITLE'),(35,40,'android.intent.extra.INTENT'),(36,42,'restart'),(37,47,'USER_ID'),(38,47,'CLIENT_PACKAGE'),(39,47,'Offers_URL'),(40,47,'offers_webview_tag'),(41,47,'URL_PARAMS'),(42,48,'TYPEdsada'),(43,49,'MSG'),(44,49,'TYPEdsada'),(45,52,'USER_ID'),(46,52,'CLIENT_PACKAGE'),(47,52,'Offers_URL'),(48,52,'offers_webview_tag'),(49,52,'URL_PARAMS'),(50,55,'MSG'),(51,55,'TYPEdsada'),(52,56,'TYPEdsada'),(53,58,'TYPEdsada'),(54,59,'USER_ID'),(55,60,'MSG'),(56,59,'CLIENT_PACKAGE'),(57,60,'TYPEdsada'),(58,61,'MSG'),(59,59,'Offers_URL'),(60,61,'TYPEdsada'),(61,59,'URL_PARAMS'),(62,62,'TYPEdsada'),(63,64,'USER_ID'),(64,64,'CLIENT_PACKAGE'),(65,64,'Offers_URL'),(66,64,'offers_webview_tag'),(67,65,'android.live_wallpaper.package'),(68,64,'URL_PARAMS'),(69,65,'android.live_wallpaper.settings'),(70,73,'MSG'),(71,73,'TYPEdsada'),(72,74,'id'),(73,75,'TYPEdsada'),(74,74,'name'),(75,84,'Notify_Url_Params'),(76,84,'UrlPath'),(77,84,'ACTIVITY_FLAG'),(78,86,'content'),(79,84,'isFinshClose'),(80,86,'id'),(81,84,'offers_webview_tag'),(82,86,'theme_id'),(83,86,'type'),(84,88,'UrlPath'),(85,88,'ACTIVITY_FLAG'),(86,88,'isFinshClose'),(87,88,'offers_webview_tag'),(88,92,'MSG'),(89,92,'TYPEdsada'),(90,93,'TYPEdsada'),(91,94,'TYPEdsada'),(92,96,'MSG'),(93,96,'TYPEdsada'),(94,99,'action'),(95,104,'UrlPath'),(96,104,'ACTIVITY_FLAG'),(97,104,'isFinshClose'),(98,104,'offers_webview_tag'),(99,106,'theme_id'),(100,106,'content'),(101,106,'type'),(102,107,'Notify_Url_Params'),(103,106,'image_id'),(104,108,'action'),(105,107,'UrlPath'),(106,107,'ACTIVITY_FLAG'),(107,107,'isFinshClose'),(108,107,'offers_webview_tag'),(109,126,'USER_ID'),(110,126,'CLIENT_PACKAGE'),(111,126,'Offers_URL'),(112,126,'URL_PARAMS'),(113,127,'MSG'),(114,127,'TYPEdsada'),(115,128,'TYPEdsada'),(116,129,'MSG'),(117,129,'TYPEdsada'),(118,130,'TYPEdsada'),(119,137,'CLIENT_PACKAGE'),(120,137,'URL'),(121,137,'isFinshClose'),(122,137,'offers_webview_tag'),(123,138,'background'),(124,138,'type'),(125,138,'key'),(126,139,'knowledge'),(127,140,'MSG'),(128,140,'TYPEdsada'),(129,141,'TYPEdsada'),(130,143,'Notify_Url_Params'),(131,143,'UrlPath'),(132,143,'ACTIVITY_FLAG'),(133,143,'isFinshClose'),(134,143,'offers_webview_tag'),(135,144,'UrlPath'),(136,144,'ACTIVITY_FLAG'),(137,144,'isFinshClose'),(138,144,'offers_webview_tag'),(139,152,'MSG'),(140,152,'TYPEdsada'),(141,153,'TYPEdsada'),(142,154,'background'),(143,159,'background'),(144,168,'Aquarium');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,3),(7,5,1),(8,6,4),(9,6,3),(10,6,2),(11,7,1),(12,8,1),(13,9,4),(14,9,2),(15,9,3),(16,10,1),(17,11,5),(18,12,4),(19,12,3),(20,12,2),(21,13,4),(22,13,3),(23,13,2),(24,14,7),(25,15,1),(26,16,2),(27,16,3),(28,16,4),(29,17,12),(30,18,12),(31,19,12),(32,20,12),(33,21,12),(34,22,12);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,1),(5,8,1),(6,10,1),(7,15,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,18,'package',NULL,NULL,NULL,NULL,NULL),(3,19,'package',NULL,NULL,NULL,NULL,NULL),(4,20,'package',NULL,NULL,NULL,NULL,NULL),(5,21,'package',NULL,NULL,NULL,NULL,NULL),(6,22,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,5,'application','vnd.android.package-archive'),(2,22,'application','vnd.android.package-archive'),(3,54,'application','vnd.android.package-archive'),(4,91,'application','vnd.android.package-archive'),(5,95,'application','vnd.android.package-archive'),(6,97,'application','vnd.android.package-archive'),(7,103,'image','*'),(8,114,'application','vnd.android.package-archive'),(9,117,'(.*)','(.*)'),(10,118,'application','vnd.android.package-archive'),(11,135,'(.*)','(.*)'),(12,136,'application','vnd.android.package-archive'),(13,158,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.kickmouse'),(2,2,'com.ps.kickmouse'),(3,3,'com.ps.kickmouse'),(4,4,'NULL-CONSTANT'),(5,7,'com.ps.kickmouse'),(6,8,'com.ps.kickmouse'),(7,10,'(.*)'),(8,11,'(.*)'),(9,13,'(.*)'),(10,14,'(.*)'),(11,15,'NULL-CONSTANT'),(12,16,'NULL-CONSTANT'),(13,17,'com.safesys.onekeyvpn'),(14,18,'com.safesys.onekeyvpn'),(15,20,'com.safesys.onekeyvpn'),(16,19,'com.ps.kickmouse'),(17,21,'com.safesys.onekeyvpn'),(18,24,'com.safesys.onekeyvpn'),(19,25,'com.noshufou.android.su'),(20,27,'com.safesys.onekeyvpn'),(21,26,'com.noshufou.android.su'),(22,28,'com.safesys.onekeyvpn'),(23,29,'(.*)'),(24,30,'com.ps.kickmouse'),(25,33,'com.ps.kickmouse'),(26,41,'com.ps.kickmouse'),(27,42,'com.ps.kickmouse'),(28,43,'com.safesys.onekeyvpn'),(29,45,'com.ps.kickmouse'),(30,46,'com.ps.kickmouse'),(31,47,'com.ps.kickmouse'),(32,48,'com.ps.kickmouse'),(33,49,'com.ps.kickmouse'),(34,52,'com.livegame.wallpaperribennvyou'),(35,53,'com.alan.mp3cutter'),(36,55,'com.alan'),(37,56,'com.alan'),(38,58,'com.alan.mp3cutter'),(39,60,'com.alan.mp3cutter'),(40,61,'com.livegame.wallpaperribennvyou'),(41,59,'com.alan'),(42,62,'com.livegame.wallpaperribennvyou'),(43,63,'com.alan'),(44,64,'com.alan.mp3cutter'),(45,66,'com.alan'),(46,67,'(.*)'),(47,69,'com.alan'),(48,68,'com.livegame.wallpaperribennvyou'),(49,70,'com.livegame.wallpaperribennvyou'),(50,71,'com.alan'),(51,73,'com.livegame.wallpaperribennvyou'),(52,75,'com.livegame.wallpaperribennvyou'),(53,74,'com.alan.mp3cutter'),(54,76,'com.noshufou.android.su'),(55,78,'com.noshufou.android.su'),(56,79,'com.alan.mp3cutter'),(57,80,'(.*)'),(58,81,'com.alan.mp3cutter'),(59,82,'(.*)'),(60,83,'(.*)'),(61,85,'com.livegame.wallpaperribennvyou'),(62,84,'com.alan.mp3cutter'),(63,86,'com.alan'),(64,87,'com.livegame.wallpaperribennvyou'),(65,88,'com.alan.mp3cutter'),(66,89,'com.noshufou.android.su'),(67,90,'com.noshufou.android.su'),(68,92,'com.alan'),(69,93,'com.alan.mp3cutter'),(70,94,'com.alan'),(71,96,'com.alan.mp3cutter'),(72,98,'NULL-CONSTANT'),(73,99,'com.alan.mp3cutter'),(74,101,'NULL-CONSTANT'),(75,102,'com.noshufou.android.su'),(76,105,'com.noshufou.android.su'),(77,104,'com.livegame.wallpaperribennvyou'),(78,106,'com.alan'),(79,108,'com.alan.mp3cutter'),(80,107,'com.livegame.wallpaperribennvyou'),(81,110,'(.*)'),(82,111,'com.alan'),(83,112,'(.*)'),(84,113,'com.alan'),(85,120,'com.noshufou.android.su'),(86,121,'com.noshufou.android.su'),(87,123,'com.mogo.aiqingllk'),(88,124,'com.mogo.aiqingllk'),(89,126,'com.mogo.aiqingllk'),(90,127,'com.mogo.aiqingllk'),(91,128,'com.mogo.aiqingllk'),(92,129,'com.mogo.aiqingllk'),(93,130,'com.mogo.aiqingllk'),(94,131,'com.mogo.aiqingllk'),(95,132,'com.mogo.aiqingllk'),(96,137,'com.gp.paopaoyu'),(97,138,'com.gp.paopaoyu'),(98,139,'com.gp.paopaoyu'),(99,140,'com.gp.paopaoyu'),(100,141,'com.gp.paopaoyu'),(101,143,'com.gp.paopaoyu'),(102,144,'com.gp.paopaoyu'),(103,145,'com.gp.paopaoyu'),(104,146,'(.*)'),(105,147,'com.gp.paopaoyu'),(106,149,'NULL-CONSTANT'),(107,150,'NULL-CONSTANT'),(108,151,'NULL-CONSTANT'),(109,152,'com.gp.paopaoyu'),(110,153,'com.gp.paopaoyu'),(111,154,'com.gp.paopaoyu'),(112,156,'com.gp.paopaoyu'),(113,157,'com.gp.paopaoyu'),(114,159,'com.gp.paopaoyu'),(115,160,'com.gp.paopaoyu'),(116,161,'com.gp.paopaoyu'),(117,163,'(.*)'),(118,164,'(.*)'),(119,165,'com.gp.paopaoyu'),(120,166,'com.noshufou.android.su'),(121,167,'com.noshufou.android.su'),(122,168,'com.gp.paopaoyu');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,8,0),(3,9,0),(4,17,0),(5,18,0),(6,35,0),(7,36,0),(8,44,0),(9,52,0),(10,59,0),(11,58,0),(12,62,0),(13,76,0),(14,77,0),(15,78,0),(16,87,0),(17,88,0),(18,89,0),(19,90,0),(20,91,0),(21,92,0),(22,93,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,5,1,0),(6,6,1,0),(7,7,0,0),(8,7,0,0),(9,8,1,0),(10,8,1,0),(11,8,1,0),(12,9,1,0),(13,9,1,0),(14,9,1,0),(15,9,1,0),(16,9,1,0),(17,13,0,0),(18,14,0,0),(19,15,0,0),(20,16,0,0),(21,18,0,0),(22,19,1,0),(23,21,1,0),(24,22,0,0),(25,23,1,0),(26,23,1,0),(27,24,0,0),(28,25,0,0),(29,26,0,0),(30,28,0,0),(31,29,1,0),(32,29,1,0),(33,28,0,0),(34,29,1,0),(35,29,1,0),(36,29,1,0),(37,29,1,0),(38,29,1,0),(39,30,1,0),(40,29,1,0),(41,31,0,0),(42,33,0,0),(43,35,0,0),(44,37,1,0),(45,38,1,0),(46,38,1,0),(47,39,0,0),(48,40,0,0),(49,40,0,0),(50,41,1,0),(51,41,1,0),(52,42,0,0),(53,43,0,0),(54,44,1,0),(55,46,0,0),(56,46,0,0),(57,47,1,0),(58,48,0,0),(59,49,0,0),(60,48,0,0),(61,50,0,0),(62,50,0,0),(63,51,0,0),(64,52,0,0),(65,53,1,0),(66,54,0,0),(67,56,0,0),(68,55,1,0),(69,57,0,0),(70,55,1,0),(71,58,0,0),(72,59,1,0),(73,60,0,0),(74,61,0,0),(75,60,0,0),(76,62,1,0),(77,63,1,0),(78,62,1,0),(79,64,1,0),(80,63,1,0),(81,64,1,0),(82,63,1,0),(83,65,0,0),(84,67,0,0),(85,68,0,0),(86,69,0,0),(87,70,0,0),(88,67,0,0),(89,71,1,0),(90,71,1,0),(91,72,1,0),(92,73,0,0),(93,74,0,0),(94,73,0,0),(95,75,1,0),(96,74,0,0),(97,76,1,0),(98,77,0,0),(99,78,0,0),(100,79,1,0),(101,80,0,0),(102,81,1,0),(103,82,1,0),(104,83,0,0),(105,81,1,0),(106,84,0,0),(107,83,0,0),(108,85,0,0),(109,86,1,0),(110,86,1,0),(111,87,1,0),(112,86,1,0),(113,87,1,0),(114,88,1,0),(115,89,1,0),(116,89,1,0),(117,89,1,0),(118,90,1,0),(119,91,1,0),(120,92,1,0),(121,92,1,0),(122,93,1,0),(123,95,1,0),(124,95,1,0),(125,96,1,0),(126,97,0,0),(127,98,0,0),(128,98,0,0),(129,99,0,0),(130,99,0,0),(131,100,0,0),(132,101,0,0),(133,102,1,0),(134,102,1,0),(135,102,1,0),(136,103,1,0),(137,104,0,0),(138,105,0,0),(139,106,0,0),(140,107,0,0),(141,107,0,0),(142,108,1,0),(143,109,0,0),(144,109,0,0),(145,110,0,0),(146,111,0,0),(147,112,0,0),(148,113,1,0),(149,113,1,0),(150,113,1,0),(151,114,0,0),(152,115,0,0),(153,115,0,0),(154,116,0,0),(155,117,1,0),(156,118,1,0),(157,118,1,0),(158,119,1,0),(159,120,0,0),(160,121,0,0),(161,122,0,0),(162,123,1,0),(163,123,1,0),(164,123,1,0),(165,124,0,0),(166,125,1,0),(167,125,1,0),(168,126,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BIND_WALLPAPER'),(11,'android.permission.BROADCAST_STICKY'),(19,'android.permission.CHANGE_CONFIGURATION'),(6,'android.permission.CHANGE_WIFI_STATE'),(3,'android.permission.GET_TASKS'),(17,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(13,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(8,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,45,7),(2,66,8),(3,94,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,4),(11,2,8),(12,2,9),(13,2,10),(14,2,11),(15,2,12),(16,3,1),(17,3,2),(18,3,3),(19,3,4),(20,3,5),(21,3,6),(22,3,7),(23,3,8),(24,3,13),(25,4,16),(26,4,1),(27,4,2),(28,4,3),(29,4,4),(30,4,5),(31,4,6),(32,4,7),(33,4,8),(34,4,12),(35,4,14),(36,4,15),(37,5,1),(38,5,2),(39,5,3),(40,5,4),(41,5,5),(42,5,6),(43,5,7),(44,5,8),(45,5,12),(46,5,15),(47,6,1),(48,6,3),(49,6,4),(50,6,5),(51,6,6),(52,6,7),(53,6,8),(54,6,9),(55,6,10),(56,6,12),(57,6,14),(58,6,15),(59,6,17),(60,6,16),(61,7,1),(62,7,4),(63,7,5),(64,7,6),(65,7,7),(66,7,8),(67,7,9),(68,7,10),(69,7,12),(70,7,14),(71,7,15),(72,7,17),(73,7,16),(74,7,19);
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
