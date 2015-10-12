-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_166
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CHOOSER'),(7,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(12,'android.intent.action.VIEW'),(16,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(8,'android.service.wallpaper.WallpaperService'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(13,'delete_history_account'),(6,'org.openintents.action.PICK_DIRECTORY'),(5,'org.openintents.action.PICK_FILE'),(11,'ps.android.view.tabbar.changeTab'),(15,'ps.keepaccount.activity.delteTodayAccount'),(10,'query_history_account');
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
INSERT INTO `Applications` VALUES (1,'com.ps.keepaccount',12),(2,'com.ps.kickmouse',17),(3,'com.ps.keepaccount',15),(4,'org.openintents.filemanager',15),(5,'com.glu.android.dinercn',4),(6,'com.livegame.wallpaperxingqiumj',2),(7,'com.ps.pushbox',9);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.OPENABLE');
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
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.ps.keepaccount.Main'),(2,1,'com.ps.keepaccount.tabbar.ButtonDemo'),(3,1,'com.ps.keepaccount.activity.QueryAccount'),(4,1,'com.ps.keepaccount.activity.TodayAccount'),(5,1,'com.ps.keepaccount.activity.HistoryAccount'),(6,1,'com.ps.keepaccount.activity.WriteAccount'),(7,1,'com.ps.keepaccount.activity.TypeAccount'),(8,1,'com.ps.keepaccount.activity.DemoApp'),(9,1,'com.ps.keepaccount.activity.StatisticsMainActivity'),(10,1,'com.ps.keepaccount.activity.TypeAccountList'),(11,2,'com.ps.kickmouse.WhacAMouse'),(12,1,'com.ps.keepaccount.dialog.CanlendarDialog'),(13,1,'com.ps.keepaccount.dialog.DateSelectorDialog'),(14,1,'org.achartengine.GraphicalActivity'),(15,2,'com.ps.kickmouse.Game'),(16,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(17,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(18,1,'com.google.update.Dialog'),(19,2,'com.google.update.Dialog'),(20,1,'com.google.update.UpdateService'),(21,2,'com.waps.OffersWebView'),(22,1,'com.google.update.Receiver'),(23,2,'com.ps.kickmouse.DemoApp'),(24,2,'com.google.update.UpdateService'),(25,2,'com.google.update.Receiver'),(26,3,'com.ps.keepaccount.Main'),(27,3,'com.ps.keepaccount.tabbar.ButtonDemo'),(28,3,'com.ps.keepaccount.activity.QueryAccount'),(29,3,'com.ps.keepaccount.activity.TodayAccount'),(30,3,'com.ps.keepaccount.activity.HistoryAccount'),(31,3,'com.ps.keepaccount.activity.WriteAccount'),(32,3,'com.ps.keepaccount.activity.TypeAccount'),(33,3,'com.ps.keepaccount.activity.DemoApp'),(34,3,'com.ps.keepaccount.activity.StatisticsMainActivity'),(35,3,'com.ps.keepaccount.activity.TypeAccountList'),(36,3,'com.ps.keepaccount.dialog.CanlendarDialog'),(37,3,'com.ps.keepaccount.dialog.DateSelectorDialog'),(38,3,'org.achartengine.GraphicalActivity'),(39,5,'com.glu.android.dinercn.DinerDash2'),(40,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(41,4,'org.openintents.filemanager.FileManagerActivity'),(42,3,'com.google.update.Dialog'),(43,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(44,3,'com.google.update.UpdateService'),(45,5,'com.glu.android.dinercn.ShowTips'),(46,3,'com.google.update.Receiver'),(47,5,'com.glu.android.dinercn.UpdateService'),(48,5,'com.glu.android.dinercn.Receiver'),(49,6,'com.livegame.wallpaperxingqiumj.MainActivity'),(50,6,'com.livegame.wallpaperxingqiumj.SettingsActivity'),(51,6,'com.livegame.wallpaperxingqiumj.SelectFolderActivity'),(52,6,'com.google.ads.AdActivity'),(53,6,'com.vpon.adon.android.WebInApp'),(54,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(55,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(56,6,'com.waps.OffersWebView'),(57,4,'org.openintents.filemanager.PreferenceActivity'),(58,6,'com.google.update.Dialog'),(59,4,'org.openintents.distribution.EulaActivity'),(60,6,'com.livegame.wallpaperxingqiumj.WallpaperSlideshow'),(61,4,'org.openintents.distribution.NewVersionActivity'),(62,4,'com.google.ads.AdActivity'),(63,4,'com.vpon.adon.android.WebInApp'),(64,6,'com.google.update.UpdateService'),(65,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(66,6,'com.google.update.Receiver'),(67,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(68,4,'com.waps.OffersWebView'),(69,4,'com.google.update.Dialog'),(70,4,'com.google.update.UpdateService'),(71,4,'com.google.update.Receiver'),(72,4,'org.openintents.filemanager.FileManagerProvider'),(73,1,'com.google.update.Dialog$2'),(74,1,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(75,1,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(76,2,'com.google.update.Dialog$1'),(77,1,'com.ps.keepaccount.activity.WriteAccount$1'),(78,1,'com.google.update.Dialog$1'),(79,7,'com.ps.pushbox.Pushbox'),(80,2,'com.waps.s'),(81,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(82,7,'com.google.update.Dialog'),(83,7,'com.waps.OffersWebView'),(84,1,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(85,7,'com.google.update.UpdateService'),(86,7,'com.google.update.Receiver'),(87,2,'com.waps.q'),(88,2,'com.waps.ac'),(89,2,'com.waps.AppConnect'),(90,1,'com.ps.keepaccount.activity.QueryAccount$1'),(91,3,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(92,1,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(93,2,'com.waps.z'),(94,1,'com.google.update.UpdateService$AA'),(95,2,'com.waps.o'),(96,6,'com.livegame.wallpaperxingqiumj.MainActivity$2'),(97,3,'com.ps.keepaccount.activity.QueryAccount$1'),(98,3,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(99,6,'com.waps.k'),(100,3,'com.google.update.Dialog$2'),(101,5,'glu.me2android.GameLet'),(102,2,'com.google.update.UpdateService$AA'),(103,3,'com.ps.keepaccount.activity.WriteAccount$1'),(104,6,'com.livegame.wallpaperxingqiumj.MainActivity$1'),(105,6,'com.google.update.UpdateService$AA'),(106,3,'com.google.update.Dialog$1'),(107,4,'com.waps.aa'),(108,3,'com.google.update.UpdateService$AA'),(109,2,'com.google.update.Dialog$2'),(110,6,'com.waps.AppConnect'),(111,3,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(112,6,'com.google.update.Dialog$2'),(113,3,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(114,2,'com.ps.kickmouse.WhacAMouse$2'),(115,4,'com.waps.ac'),(116,6,'com.google.update.Dialog$1'),(117,4,'com.waps.q'),(118,4,'com.waps.AppConnect'),(119,6,'com.waps.m'),(120,5,'com.glu.android.dinercn.ShowTips$1'),(121,4,'com.waps.o'),(122,2,'com.waps.aa'),(123,4,'com.google.update.UpdateService$AA'),(124,4,'com.google.update.Dialog$2'),(125,4,'com.waps.z'),(126,4,'com.google.update.Dialog$1'),(127,7,'com.google.update.UpdateService$AA'),(128,7,'com.waps.z'),(129,7,'com.waps.o'),(130,7,'com.google.update.Dialog$1'),(131,7,'com.waps.q'),(132,7,'com.waps.ac'),(133,7,'com.google.update.Dialog$2'),(134,7,'com.waps.aa');
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
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,14,'chart'),(2,3,'endDate'),(3,20,'ST_START_DELAY'),(4,17,'shouldResizeOverlay'),(5,11,'WAPS_PID'),(6,21,'WAPS_PID'),(7,24,'WAPS_PID'),(8,17,'WAPS_PID'),(9,23,'WAPS_PID'),(10,3,'startDate'),(11,21,'CLIENT_PACKAGE'),(12,16,'shouldEnableBottomBar'),(13,21,'USER_ID'),(14,16,'shouldMakeOverlayTransparent'),(15,17,'overlayTransition'),(16,11,'CLIENT_PACKAGE'),(17,24,'CLIENT_PACKAGE'),(18,17,'CLIENT_PACKAGE'),(19,23,'CLIENT_PACKAGE'),(20,15,'MouseGame'),(21,17,'shouldEnableBottomBar'),(22,21,'Offers_URL'),(23,19,'MSG'),(24,10,'endDate'),(25,15,'Progrees'),(26,21,'Notify_Url_Params'),(27,16,'shouldShowTitlebar'),(28,11,'APP_ID'),(29,21,'APP_ID'),(30,24,'APP_ID'),(31,17,'APP_ID'),(32,23,'APP_ID'),(33,10,'type'),(34,17,'transitionTime'),(35,7,'startDate'),(36,15,'HP'),(37,7,'endDate'),(38,21,'Notify_Id'),(39,16,'shouldShowBottomBar'),(40,14,'title'),(41,16,'overlayTitle'),(42,10,'startDate'),(43,16,'transitionTime'),(44,35,'endDate'),(45,28,'startDate'),(46,21,'URL_PARAMS'),(47,40,'url'),(48,21,'SHWO_FLAG'),(49,21,'offers_webview_tag'),(50,40,'shouldResizeOverlay'),(51,44,'ST_START_DELAY'),(52,20,'ST_MY_PID'),(53,40,'transitionTime'),(54,35,'type'),(55,16,'overlayTransition'),(56,42,'MSG'),(57,16,'shouldResizeOverlay'),(58,18,'MSG'),(59,35,'startDate'),(60,18,'TYPEdsada'),(61,40,'shouldEnableBottomBar'),(62,28,'endDate'),(63,16,'url'),(64,32,'startDate'),(65,42,'TYPEdsada'),(66,24,'ST_MY_PID'),(67,17,'shouldShowBottomBar'),(68,55,'shouldResizeOverlay'),(69,54,'Adwo_PID'),(70,56,'Offers_URL'),(71,15,'restart'),(72,39,'android_mrcURL'),(73,17,'url'),(74,17,'overlayTitle'),(75,40,'overlayTransition'),(76,55,'shouldShowTitlebar'),(77,56,'CLIENT_PACKAGE'),(78,38,'chart'),(79,40,'overlayTitle'),(80,44,'ST_MY_PID'),(81,38,'title'),(82,55,'shouldMakeOverlayTransparent'),(83,56,'isFinshClose'),(84,49,'WAPS_ID'),(85,56,'URL'),(86,64,'ST_MY_PID'),(87,40,'shouldMakeOverlayTransparent'),(88,55,'overlayTitle'),(89,21,'URL'),(90,54,'isTestMode'),(91,67,'shouldShowTitlebar'),(92,21,'UrlPath'),(93,50,'folder'),(94,68,'Offers_URL'),(95,17,'shouldShowTitlebar'),(96,41,'show_directory_input'),(97,24,'ST_START_DELAY'),(98,41,'DEVICE_ID'),(99,40,'shouldShowTitlebar'),(100,68,'DEVICE_ID'),(101,49,'WAPS_PID'),(102,55,'shouldShowBottomBar'),(103,53,'adWidth'),(104,11,'WAPS_ID'),(105,56,'USER_ID'),(106,21,'WAPS_ID'),(107,24,'WAPS_ID'),(108,17,'WAPS_ID'),(109,68,'Notify_Url_Params'),(110,23,'WAPS_ID'),(111,40,'shouldShowBottomBar'),(112,32,'endDate'),(113,11,'DEVICE_ID'),(114,21,'DEVICE_ID'),(115,58,'MSG'),(116,24,'DEVICE_ID'),(117,53,'url'),(118,17,'DEVICE_ID'),(119,49,'DEVICE_ID'),(120,23,'DEVICE_ID'),(121,55,'overlayTransition'),(122,17,'shouldMakeOverlayTransparent'),(123,68,'offers_webview_tag'),(124,67,'overlayTransition'),(125,43,'overlayTransition'),(126,47,'SAFE_START'),(127,55,'url'),(128,39,'android_demo'),(129,39,'android_carrierdeviceid'),(130,39,'0'),(131,56,'URL_PARAMS'),(132,58,'TYPEdsada'),(133,39,'android_mrc'),(134,21,'isFinshClose'),(135,55,'shouldEnableBottomBar'),(136,21,'ACTIVITY_FLAG'),(137,55,'transitionTime'),(138,19,'TYPEdsada'),(139,64,'ST_START_DELAY'),(140,49,'APP_ID'),(141,49,'CLIENT_PACKAGE'),(142,41,'org.openintents.extra.TITLE'),(143,43,'shouldEnableBottomBar'),(144,67,'overlayTitle'),(145,43,'transitionTime'),(146,41,'steps_back'),(147,39,'android_paURL'),(148,68,'Notify_Id'),(149,45,'MM'),(150,41,'WAPS_PID'),(151,43,'overlayTitle'),(152,68,'WAPS_PID'),(153,47,'SAFE_PID'),(154,43,'shouldShowBottomBar'),(155,43,'shouldShowTitlebar'),(156,43,'shouldResizeOverlay'),(157,39,'android_demoURL'),(158,43,'shouldMakeOverlayTransparent'),(159,43,'url'),(160,41,'WAPS_ID'),(161,68,'WAPS_ID'),(162,65,'Adwo_PID'),(163,41,'context_file'),(164,41,'APP_ID'),(165,68,'APP_ID'),(166,68,'ACTIVITY_FLAG'),(167,68,'USER_ID'),(168,68,'CLIENT_PACKAGE'),(169,41,'org.openintents.extra.BUTTON_TEXT'),(170,67,'shouldShowBottomBar'),(171,70,'ST_MY_PID'),(172,69,'MSG'),(173,63,'adWidth'),(174,67,'shouldResizeOverlay'),(175,41,'context_text'),(176,60,'org.openintents.extra.launch_activity_intent'),(177,59,'org.openintents.extra.launch_activity_intent'),(178,65,'isTestMode'),(179,68,'URL'),(180,60,'org.openintents.extra.launch_activity_package'),(181,59,'org.openintents.extra.launch_activity_package'),(182,68,'isFinshClose'),(183,68,'URL_PARAMS'),(184,68,'SHWO_FLAG'),(185,69,'TYPEdsada'),(186,68,'UrlPath'),(187,41,'org.openintents.extra.WRITEABLE_ONLY'),(188,67,'transitionTime'),(189,70,'ST_START_DELAY'),(190,63,'url'),(191,60,'org.openintents.extra.launch_activity_class'),(192,59,'org.openintents.extra.launch_activity_class'),(193,67,'url'),(194,67,'shouldEnableBottomBar'),(195,41,'current_directory'),(196,67,'shouldMakeOverlayTransparent'),(197,41,'CLIENT_PACKAGE'),(198,78,'SHWO_FLAG'),(199,78,'URL_PARAMS'),(200,78,'isFinshClose'),(201,77,'TYPEdsada'),(202,76,'shouldShowTitlebar'),(203,78,'Notify_Id'),(204,76,'overlayTitle'),(205,78,'WAPS_ID'),(206,75,'WAPS_ID'),(207,78,'URL'),(208,78,'USER_ID'),(209,78,'CLIENT_PACKAGE'),(210,78,'Offers_URL'),(211,76,'shouldShowBottomBar'),(212,76,'transitionTime'),(213,78,'WAPS_PID'),(214,75,'WAPS_PID'),(215,78,'ACTIVITY_FLAG'),(216,78,'offers_webview_tag'),(217,76,'overlayTransition'),(218,76,'shouldEnableBottomBar'),(219,78,'Notify_Url_Params'),(220,77,'MSG'),(221,80,'ST_MY_PID'),(222,78,'UrlPath'),(223,76,'shouldMakeOverlayTransparent'),(224,76,'url'),(225,78,'APP_ID'),(226,75,'APP_ID'),(227,80,'ST_START_DELAY'),(228,75,'CLIENT_PACKAGE'),(229,76,'shouldResizeOverlay'),(230,78,'DEVICE_ID'),(231,75,'DEVICE_ID');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,61,'a',0,NULL,NULL),(61,60,'s',1,16,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'s',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'s',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'p',0,NULL,NULL),(73,74,'r',1,NULL,NULL),(74,75,'r',1,NULL,NULL),(75,79,'a',1,NULL,NULL),(76,81,'a',0,NULL,NULL),(77,82,'a',0,NULL,NULL),(78,83,'a',0,NULL,NULL),(79,84,'r',1,NULL,NULL),(80,85,'s',0,NULL,NULL),(81,86,'r',1,NULL,NULL),(82,87,'r',1,NULL,NULL),(83,91,'r',1,NULL,NULL),(84,92,'r',1,NULL,NULL),(85,98,'r',1,NULL,NULL),(86,111,'r',1,NULL,NULL),(87,113,'r',1,NULL,NULL),(88,117,'r',1,NULL,NULL),(89,119,'r',1,NULL,NULL),(90,131,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,18),(2,2,20),(3,3,11),(4,4,19),(5,5,6),(6,6,18),(7,7,3),(8,8,23),(9,8,24),(10,8,17),(11,9,22),(12,10,20),(13,11,21),(14,12,3),(15,13,7),(16,14,11),(17,15,23),(18,16,3),(19,17,28),(20,18,21),(21,20,7),(22,19,28),(23,21,44),(24,22,21),(25,23,20),(26,24,21),(27,25,23),(28,26,3),(29,27,46),(30,29,23),(31,29,24),(32,29,17),(33,28,49),(34,30,28),(35,31,56),(36,32,42),(37,33,39),(38,34,24),(39,35,31),(40,36,49),(41,37,32),(42,38,24),(43,38,23),(44,38,17),(45,39,64),(46,40,44),(47,41,42),(48,42,66),(49,43,21),(50,44,68),(51,45,64),(52,46,44),(53,47,19),(54,48,49),(55,49,24),(56,50,70),(57,51,32),(58,52,58),(59,53,70),(60,54,28),(61,55,25),(62,56,64),(63,57,11),(64,58,68),(65,59,24),(66,60,58),(67,61,39),(68,62,41),(69,63,48),(70,64,11),(71,65,45),(72,66,68),(73,67,21),(74,68,70),(75,69,69),(76,70,71),(77,71,68),(78,72,41),(79,73,69),(80,74,41),(81,75,41),(82,76,68),(83,77,41),(84,78,68),(85,79,60),(86,79,59),(87,80,41),(88,81,80),(89,82,78),(90,83,81),(91,84,78),(92,85,77),(93,86,80),(94,87,78),(95,88,78),(96,89,80),(97,90,77),(98,91,78),(99,92,78);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,73,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,20,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(3,11,'<com.ps.kickmouse.WhacAMouse: void startGame()>',4,'a',NULL),(4,76,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,77,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(6,78,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(7,3,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(8,80,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(9,22,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(10,20,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(11,88,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(12,3,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(13,7,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(14,11,'<com.ps.kickmouse.WhacAMouse: void onClick(android.view.View)>',13,'a',NULL),(15,89,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(16,90,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(17,28,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(18,93,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(19,28,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(20,7,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(21,44,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(22,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(23,94,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(24,95,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(25,89,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(26,90,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(27,46,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(28,96,'<com.livegame.wallpaperxingqiumj.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(29,80,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(30,97,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(31,99,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(32,100,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(33,101,'<glu.me2android.GameLet: boolean platformRequest(java.lang.String)>',5,'a',NULL),(34,102,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(35,103,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(36,104,'<com.livegame.wallpaperxingqiumj.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(37,32,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(38,80,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(39,105,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(40,44,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,106,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(42,66,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(43,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(44,107,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(45,64,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(46,108,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(47,109,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(48,110,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(49,24,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(50,70,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(51,32,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(52,112,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(53,70,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(54,97,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(55,25,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(56,64,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(57,114,'<com.ps.kickmouse.WhacAMouse$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(58,115,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(59,24,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(60,116,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(61,101,'<glu.me2android.GameLet: void onCreate(android.os.Bundle)>',60,'s',NULL),(62,118,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(63,48,'<com.glu.android.dinercn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(64,11,'<com.ps.kickmouse.WhacAMouse: void restartGame()>',4,'a',NULL),(65,120,'<com.glu.android.dinercn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(66,121,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(67,122,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(68,123,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(69,124,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(70,71,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(71,125,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(72,41,'<org.openintents.filemanager.FileManagerActivity: void showSettings()>',3,'a',NULL),(73,126,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(74,41,'<org.openintents.filemanager.FileManagerActivity: void promptDestinationAndMoveFile()>',11,'a',NULL),(75,41,'<org.openintents.filemanager.FileManagerActivity: void promptDestinationAndCopyFile()>',11,'a',NULL),(76,68,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(77,41,'<org.openintents.filemanager.FileManagerActivity: void openFile(java.io.File)>',30,'a',NULL),(78,68,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(79,59,'<org.openintents.distribution.EulaActivity: void startOriginalActivity()>',6,'a',NULL),(80,41,'<org.openintents.filemanager.FileManagerActivity: void sendFile(java.io.File)>',30,'a',NULL),(81,127,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(82,128,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(83,86,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(84,129,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(85,130,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(86,85,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(87,132,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(88,83,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(89,85,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(90,133,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(91,83,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(92,134,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,9),(2,5,1),(3,7,1),(4,8,1),(5,9,1),(6,10,10),(7,11,12),(8,12,12),(9,21,15),(10,22,10),(11,23,12),(12,28,1),(13,30,1),(14,31,12),(15,33,13),(16,37,15),(17,38,12),(18,39,9),(19,40,12),(20,41,1),(21,42,12),(22,44,1),(23,45,16),(24,46,12),(25,49,12),(26,50,1),(27,51,1),(28,52,12),(29,53,1),(30,55,1),(31,56,12),(32,57,1),(33,59,12),(34,60,1),(35,61,12),(36,62,1),(37,63,12),(38,66,1),(39,68,1),(40,69,12),(41,71,1),(42,72,12),(43,74,1),(44,76,12),(45,77,9),(46,78,1),(47,79,12),(48,82,12),(49,85,12),(50,88,12),(51,89,9),(52,90,12),(53,92,12),(54,95,13),(55,97,12),(56,98,12),(57,100,12),(58,104,1),(59,106,1),(60,110,1),(61,111,12),(62,112,1),(63,115,1),(64,116,1),(65,117,9),(66,119,12),(67,121,1),(68,122,1),(69,123,6),(70,124,6),(71,126,12),(72,127,12),(73,129,1),(74,130,1),(75,133,17),(76,134,17),(77,135,17),(78,136,17),(79,137,17),(80,138,17),(81,139,17),(82,140,17),(83,141,1),(84,142,1),(85,143,12),(86,145,12),(87,146,1),(88,147,1),(89,152,1),(90,153,1),(91,156,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,5,1),(2,7,4),(3,8,1),(4,9,4),(5,28,1),(6,30,4),(7,41,4),(8,44,1),(9,50,1),(10,51,1),(11,53,4),(12,55,4),(13,57,1),(14,60,4),(15,62,1),(16,66,1),(17,68,4),(18,71,4),(19,74,1),(20,78,4),(21,104,1),(22,106,4),(23,110,1),(24,112,4),(25,115,1),(26,116,4),(27,121,1),(28,122,4),(29,129,1),(30,130,4),(31,141,1),(32,142,4),(33,146,1),(34,147,4),(35,152,1),(36,153,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/update/Dialog'),(2,3,'com/google/update/Dialog'),(3,4,'com/ps/kickmouse/Game'),(4,6,'com/ps/keepaccount/dialog/CanlendarDialog'),(5,13,'com/google/update/UpdateService'),(6,14,'com/google/update/Dialog'),(7,15,'com/google/update/Dialog'),(8,16,'NULL-CONSTANT'),(9,17,'com/ps/keepaccount/dialog/DateSelectorDialog'),(10,18,'com/ps/keepaccount/dialog/DateSelectorDialog'),(11,19,'com/ps/kickmouse/DemoApp'),(12,20,'com/waps/OffersWebView'),(13,25,'com/ps/keepaccount/dialog/DateSelectorDialog'),(14,24,'com/ps/keepaccount/activity/TypeAccountList'),(15,26,'com/google/update/Dialog'),(16,27,'(.*)'),(17,29,'com/google/update/Dialog'),(18,32,'com/waps/OffersWebView'),(19,34,'com/google/update/UpdateService'),(20,36,'com/livegame/wallpaperxingqiumj/SettingsActivity'),(21,35,'com/waps/OffersWebView'),(22,43,'com/ps/keepaccount/dialog/CanlendarDialog'),(23,47,'com/ps/keepaccount/dialog/DateSelectorDialog'),(24,54,'com/google/update/Dialog'),(25,58,'com/google/update/Dialog'),(26,64,'com/google/update/UpdateService'),(27,67,'com/waps/OffersWebView'),(28,70,'com/google/update/Dialog'),(29,75,'com/google/update/Dialog'),(30,73,'com/waps/OffersWebView'),(31,81,'com/google/update/Dialog'),(32,80,'com/waps/OffersWebView'),(33,83,'com/google/update/Dialog'),(34,84,'com/google/update/Dialog'),(35,87,'com/google/update/Dialog'),(36,86,'com/ps/keepaccount/activity/TypeAccountList'),(37,91,'com/google/update/Dialog'),(38,94,'com/google/update/UpdateService'),(39,93,'com/google/update/Dialog'),(40,96,'com/google/update/Dialog'),(41,99,'com/google/update/Dialog'),(42,101,'NULL-CONSTANT'),(43,103,'com/glu/android/dinercn/UpdateService'),(44,102,'com/google/update/Dialog'),(45,105,'com/google/update/Dialog'),(46,108,'com/glu/android/dinercn/UpdateService'),(47,107,'com/waps/OffersWebView'),(48,109,'com/ps/kickmouse/Game'),(49,113,'com/waps/OffersWebView'),(50,114,'com/waps/OffersWebView'),(51,118,'com/google/update/UpdateService'),(52,120,'org/openintents/filemanager/PreferenceActivity'),(53,125,'(.*)'),(54,131,'(.*)'),(55,144,'com/google/update/UpdateService'),(56,148,'com/google/update/Dialog'),(57,149,'com/google/update/Dialog'),(58,150,'NULL-CONSTANT'),(59,154,'com/google/update/Dialog'),(60,155,'com/google/update/Dialog'),(61,157,'(.*)'),(62,158,'com/waps/OffersWebView'),(63,159,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,11,1),(2,12,2),(3,23,3),(4,31,4),(5,38,5),(6,40,6),(7,42,7),(8,46,8),(9,49,9),(10,52,10),(11,56,11),(12,59,12),(13,61,13),(14,63,14),(15,69,15),(16,72,16),(17,76,17),(18,79,18),(19,82,19),(20,85,20),(21,88,21),(22,90,22),(23,92,23),(24,97,24),(25,98,25),(26,100,26),(27,111,27),(28,119,28),(29,123,29),(30,124,30),(31,126,31),(32,127,32),(33,143,33),(34,145,34);
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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'TYPEdsada'),(2,3,'MSG'),(3,3,'TYPEdsada'),(4,10,'startDate'),(5,10,'endDate'),(6,14,'TYPEdsada'),(7,15,'MSG'),(8,15,'TYPEdsada'),(9,20,'USER_ID'),(10,20,'CLIENT_PACKAGE'),(11,20,'Offers_URL'),(12,20,'offers_webview_tag'),(13,20,'URL_PARAMS'),(14,22,'startDate'),(15,22,'endDate'),(16,24,'startDate'),(17,24,'endDate'),(18,24,'type'),(19,26,'TYPEdsada'),(20,29,'MSG'),(21,29,'TYPEdsada'),(22,32,'USER_ID'),(23,32,'CLIENT_PACKAGE'),(24,32,'Offers_URL'),(25,32,'offers_webview_tag'),(26,32,'URL_PARAMS'),(27,35,'CLIENT_PACKAGE'),(28,35,'URL'),(29,35,'isFinshClose'),(30,35,'offers_webview_tag'),(31,45,'android.live_wallpaper.package'),(32,45,'android.live_wallpaper.settings'),(33,54,'TYPEdsada'),(34,58,'MSG'),(35,58,'TYPEdsada'),(36,67,'UrlPath'),(37,67,'ACTIVITY_FLAG'),(38,67,'isFinshClose'),(39,67,'offers_webview_tag'),(40,70,'MSG'),(41,70,'TYPEdsada'),(42,73,'Notify_Url_Params'),(43,73,'UrlPath'),(44,75,'TYPEdsada'),(45,73,'ACTIVITY_FLAG'),(46,73,'isFinshClose'),(47,73,'offers_webview_tag'),(48,80,'USER_ID'),(49,81,'TYPEdsada'),(50,80,'CLIENT_PACKAGE'),(51,80,'Offers_URL'),(52,80,'URL_PARAMS'),(53,83,'TYPEdsada'),(54,84,'MSG'),(55,84,'TYPEdsada'),(56,86,'startDate'),(57,87,'MSG'),(58,86,'endDate'),(59,87,'TYPEdsada'),(60,86,'type'),(61,91,'TYPEdsada'),(62,93,'MSG'),(63,93,'TYPEdsada'),(64,96,'MSG'),(65,96,'TYPEdsada'),(66,99,'TYPEdsada'),(67,102,'TYPEdsada'),(68,105,'MSG'),(69,105,'TYPEdsada'),(70,107,'USER_ID'),(71,107,'CLIENT_PACKAGE'),(72,107,'Offers_URL'),(73,107,'offers_webview_tag'),(74,107,'URL_PARAMS'),(75,109,'restart'),(76,113,'UrlPath'),(77,113,'ACTIVITY_FLAG'),(78,113,'isFinshClose'),(79,113,'offers_webview_tag'),(80,114,'Notify_Url_Params'),(81,114,'UrlPath'),(82,114,'ACTIVITY_FLAG'),(83,114,'isFinshClose'),(84,114,'offers_webview_tag'),(85,123,'org.openintents.extra.TITLE'),(86,123,'org.openintents.extra.WRITEABLE_ONLY'),(87,123,'org.openintents.extra.BUTTON_TEXT'),(88,124,'org.openintents.extra.TITLE'),(89,124,'org.openintents.extra.WRITEABLE_ONLY'),(90,124,'org.openintents.extra.BUTTON_TEXT'),(91,133,'android.intent.extra.INTENT'),(92,134,'android.intent.extra.INTENT'),(93,135,'android.intent.extra.TITLE'),(94,135,'android.intent.extra.INTENT'),(95,136,'android.intent.extra.INTENT'),(96,137,'android.intent.extra.TITLE'),(97,137,'android.intent.extra.INTENT'),(98,138,'android.intent.extra.INTENT'),(99,139,'android.intent.extra.TITLE'),(100,139,'android.intent.extra.INTENT'),(101,140,'android.intent.extra.TITLE'),(102,140,'android.intent.extra.INTENT'),(103,148,'TYPEdsada'),(104,149,'MSG'),(105,149,'TYPEdsada'),(106,154,'TYPEdsada'),(107,155,'MSG'),(108,155,'TYPEdsada'),(109,158,'Notify_Url_Params'),(110,158,'UrlPath'),(111,158,'ACTIVITY_FLAG'),(112,158,'isFinshClose'),(113,158,'offers_webview_tag'),(114,159,'UrlPath'),(115,159,'ACTIVITY_FLAG'),(116,159,'isFinshClose'),(117,159,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,1),(11,7,5),(12,8,2),(13,8,3),(14,8,4),(15,9,6),(16,10,3),(17,10,4),(18,10,2),(19,11,1),(20,12,7),(21,13,1),(22,14,6),(23,15,5),(24,16,8),(25,17,4),(26,17,2),(27,17,3),(28,18,2),(29,18,3),(30,18,4),(31,19,10),(32,20,11),(33,21,1),(34,22,13),(35,23,3),(36,23,2),(37,23,4),(38,24,14),(39,25,11),(40,26,15),(41,27,15),(42,28,13),(43,29,10),(44,30,14),(45,31,14),(46,32,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,5,1),(4,6,1),(5,7,2),(6,9,2),(7,11,1),(8,12,3),(9,12,2),(10,13,1),(11,14,2),(12,15,2),(13,21,1);
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
INSERT INTO `IFData` VALUES (1,7,'file',NULL,NULL,NULL,NULL,NULL),(2,9,'file',NULL,NULL,NULL,NULL,NULL),(3,12,NULL,NULL,NULL,NULL,'*','*'),(4,24,'package',NULL,NULL,NULL,NULL,NULL),(5,30,'package',NULL,NULL,NULL,NULL,NULL),(6,31,'package',NULL,NULL,NULL,NULL,NULL),(7,32,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,23,'application','vnd.android.package-archive'),(2,31,'application','vnd.android.package-archive'),(3,38,'application','vnd.android.package-archive'),(4,111,'application','vnd.android.package-archive'),(5,119,'application','vnd.android.package-archive'),(6,126,'(.*)','(.*)'),(7,127,'*','*'),(8,143,'application','vnd.android.package-archive'),(9,145,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.ps.keepaccount'),(2,3,'com.ps.keepaccount'),(3,4,'com.ps.kickmouse'),(4,6,'com.ps.keepaccount'),(5,5,'com.noshufou.android.su'),(6,7,'com.noshufou.android.su'),(7,8,'com.noshufou.android.su'),(8,9,'com.noshufou.android.su'),(9,13,'com.ps.keepaccount'),(10,14,'com.ps.keepaccount'),(11,15,'com.ps.keepaccount'),(12,16,'NULL-CONSTANT'),(13,17,'com.ps.keepaccount'),(14,18,'com.ps.keepaccount'),(15,19,'com.ps.kickmouse'),(16,20,'com.ps.kickmouse'),(17,25,'com.ps.keepaccount'),(18,24,'com.ps.keepaccount'),(19,26,'com.ps.keepaccount'),(20,27,'(.*)'),(21,28,'com.ps.keepaccount'),(22,29,'com.ps.keepaccount'),(23,30,'com.ps.keepaccount'),(24,32,'com.ps.kickmouse'),(25,34,'com.ps.keepaccount'),(26,36,'com.livegame.wallpaperxingqiumj'),(27,35,'com.ps.kickmouse'),(28,41,'com.ps.kickmouse'),(29,43,'com.ps.keepaccount'),(30,44,'com.ps.kickmouse'),(31,47,'com.ps.keepaccount'),(32,50,'(.*)'),(33,51,'com.livegame.wallpaperxingqiumj'),(34,53,'(.*)'),(35,54,'com.ps.keepaccount'),(36,55,'com.livegame.wallpaperxingqiumj'),(37,57,'NULL-CONSTANT'),(38,58,'com.ps.keepaccount'),(39,60,'NULL-CONSTANT'),(40,62,'com.noshufou.android.su'),(41,64,'com.livegame.wallpaperxingqiumj'),(42,66,'(.*)'),(43,68,'com.noshufou.android.su'),(44,67,'org.openintents.filemanager'),(45,71,'(.*)'),(46,70,'com.livegame.wallpaperxingqiumj'),(47,74,'com.ps.keepaccount'),(48,75,'com.livegame.wallpaperxingqiumj'),(49,73,'org.openintents.filemanager'),(50,78,'com.ps.keepaccount'),(51,81,'com.ps.kickmouse'),(52,80,'com.livegame.wallpaperxingqiumj'),(53,83,'org.openintents.filemanager'),(54,84,'com.ps.kickmouse'),(55,87,'org.openintents.filemanager'),(56,86,'com.ps.keepaccount'),(57,91,'org.openintents.filemanager'),(58,94,'com.ps.kickmouse'),(59,93,'org.openintents.filemanager'),(60,96,'com.livegame.wallpaperxingqiumj'),(61,99,'com.livegame.wallpaperxingqiumj'),(62,101,'NULL-CONSTANT'),(63,103,'com.glu.android.dinercn'),(64,102,'com.ps.kickmouse'),(65,104,'com.noshufou.android.su'),(66,106,'com.noshufou.android.su'),(67,105,'com.ps.kickmouse'),(68,108,'com.glu.android.dinercn'),(69,107,'org.openintents.filemanager'),(70,109,'com.ps.kickmouse'),(71,110,'com.noshufou.android.su'),(72,112,'com.noshufou.android.su'),(73,113,'com.ps.kickmouse'),(74,115,'org.openintents.filemanager'),(75,114,'com.ps.kickmouse'),(76,116,'org.openintents.filemanager'),(77,118,'org.openintents.filemanager'),(78,120,'org.openintents.filemanager'),(79,121,'com.noshufou.android.su'),(80,122,'com.noshufou.android.su'),(81,125,'(.*)'),(82,129,'(.*)'),(83,130,'(.*)'),(84,131,'(.*)'),(85,141,'com.ps.pushbox'),(86,142,'com.ps.pushbox'),(87,144,'com.ps.pushbox'),(88,146,'com.noshufou.android.su'),(89,147,'com.noshufou.android.su'),(90,148,'com.ps.pushbox'),(91,149,'com.ps.pushbox'),(92,150,'NULL-CONSTANT'),(93,152,'(.*)'),(94,153,'(.*)'),(95,154,'com.ps.pushbox'),(96,155,'com.ps.pushbox'),(97,157,'(.*)'),(98,158,'com.ps.pushbox'),(99,159,'com.ps.pushbox');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,11,0),(3,22,0),(4,25,0),(5,26,0),(6,39,0),(7,41,0),(8,46,0),(9,41,0),(10,48,0),(11,49,0),(12,41,0),(13,41,0),(14,41,0),(15,41,0),(16,61,0),(17,66,0),(18,71,0),(19,73,0),(20,74,0),(21,75,0),(22,79,0),(23,81,0),(24,82,0),(25,83,0),(26,84,0),(27,85,0),(28,86,0),(29,87,0),(30,88,0),(31,89,0),(32,90,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,2,0,0),(4,3,0,0),(5,4,1,0),(6,5,0,0),(7,4,1,0),(8,6,1,0),(9,6,1,0),(10,7,1,0),(11,8,1,0),(12,8,1,0),(13,9,0,0),(14,10,0,0),(15,10,0,0),(16,11,0,0),(17,12,0,0),(18,13,0,0),(19,14,0,0),(20,15,0,0),(21,16,1,0),(22,17,1,0),(23,18,1,0),(24,20,0,0),(25,19,0,0),(26,21,0,0),(27,22,0,0),(28,23,1,0),(29,21,0,0),(30,23,1,0),(31,24,1,0),(32,25,0,0),(33,26,1,0),(34,27,0,0),(35,29,0,0),(36,28,0,0),(37,30,1,0),(38,31,1,0),(39,32,1,0),(40,33,1,0),(41,34,1,0),(42,33,1,0),(43,35,0,0),(44,34,1,0),(45,36,1,0),(46,33,1,0),(47,37,0,0),(48,38,1,0),(49,33,1,0),(50,38,1,0),(51,39,1,0),(52,33,1,0),(53,38,1,0),(54,40,0,0),(55,39,1,0),(56,33,1,0),(57,38,1,0),(58,40,0,0),(59,33,1,0),(60,38,1,0),(61,33,1,0),(62,41,1,0),(63,33,1,0),(64,42,0,0),(65,43,1,0),(66,43,1,0),(67,44,0,0),(68,41,1,0),(69,33,1,0),(70,45,0,0),(71,43,1,0),(72,33,1,0),(73,44,0,0),(74,46,1,0),(75,45,0,0),(76,33,1,0),(77,47,1,0),(78,46,1,0),(79,33,1,0),(80,48,0,0),(81,49,0,0),(82,33,1,0),(83,50,0,0),(84,49,0,0),(85,33,1,0),(86,51,0,0),(87,50,0,0),(88,33,1,0),(89,52,1,0),(90,33,1,0),(91,53,0,0),(92,33,1,0),(93,53,0,0),(94,55,0,0),(95,54,1,0),(96,56,0,0),(97,33,1,0),(98,33,1,0),(99,56,0,0),(100,57,1,0),(101,58,0,0),(102,59,0,0),(103,61,0,0),(104,60,1,0),(105,59,0,0),(106,60,1,0),(107,62,0,0),(108,63,0,0),(109,64,0,0),(110,65,1,0),(111,66,1,0),(112,65,1,0),(113,67,0,0),(114,67,0,0),(115,68,1,0),(116,68,1,0),(117,69,1,0),(118,70,0,0),(119,71,1,0),(120,72,0,0),(121,73,1,0),(122,73,1,0),(123,74,1,0),(124,75,1,0),(125,76,0,0),(126,77,1,0),(127,77,1,0),(128,78,1,0),(129,78,1,0),(130,78,1,0),(131,79,0,0),(132,79,1,0),(133,80,1,0),(134,80,1,0),(135,80,1,0),(136,80,1,0),(137,80,1,0),(138,80,1,0),(139,80,1,0),(140,80,1,0),(141,81,1,0),(142,81,1,0),(143,82,1,0),(144,83,0,0),(145,84,1,0),(146,85,1,0),(147,85,1,0),(148,86,0,0),(149,86,0,0),(150,87,0,0),(151,88,1,0),(152,88,1,0),(153,88,1,0),(154,89,0,0),(155,89,0,0),(156,90,1,0),(157,91,0,0),(158,92,0,0),(159,92,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'org.openintents.filemanager');
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(12,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(6,'android.permission.ACCESS_WIFI_STATE'),(16,'android.permission.BIND_WALLPAPER'),(5,'android.permission.CHANGE_WIFI_STATE'),(2,'android.permission.GET_TASKS'),(3,'android.permission.INTERNET'),(9,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(15,'android.permission.VIBRATE'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,72,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(8,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(9,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(10,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(11,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(12,NULL,NULL,'http://www.ss3.glu.com',NULL,NULL,NULL),(13,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(16,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(18,NULL,NULL,'(.*)type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(19,NULL,NULL,'http://gcs.glu.com/gcs/android/index.jsp?src=diner2',NULL,NULL,NULL),(20,NULL,NULL,'(.*)type=non_mrc&gid=(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(22,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(23,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(25,NULL,NULL,'(.*)type=mrc&gid=(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,3),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,2,8),(16,3,1),(17,3,2),(18,3,3),(19,3,4),(20,3,5),(21,3,6),(22,3,7),(23,4,1),(24,4,2),(25,5,1),(26,4,3),(27,5,3),(28,4,4),(29,5,6),(30,4,5),(31,5,7),(32,4,6),(33,5,10),(34,4,7),(35,5,13),(36,4,8),(37,5,14),(38,4,9),(39,5,15),(40,4,10),(41,4,11),(42,4,12),(43,6,1),(44,6,2),(45,6,3),(46,6,4),(47,6,5),(48,6,6),(49,6,7),(50,6,8),(51,6,10),(52,6,11),(53,7,1),(54,7,3),(55,7,4),(56,7,5),(57,7,6),(58,7,7),(59,7,8),(60,7,9),(61,7,10),(62,7,11),(63,7,12);
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

-- Dump completed on 2015-10-09  0:38:22
