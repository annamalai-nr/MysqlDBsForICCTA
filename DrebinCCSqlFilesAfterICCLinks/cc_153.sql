-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_153
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (21,'(.*)'),(12,'DownloadManageServicer.ACTION_CONTROL'),(15,'DownloadManageServicer.ACTION_UPDATE'),(20,'Speedup.intent.action.refreshservice'),(23,'Speedup.intent.action.temp'),(10,'Speedup.intent.action.updatewidget'),(8,'android.appwidget.action.APPWIDGET_CONFIGURE'),(9,'android.appwidget.action.APPWIDGET_UPDATE'),(22,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(18,'android.intent.action.SCREEN_OFF'),(19,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.SIG_STR'),(17,'android.intent.action.VIEW'),(24,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(11,'android.service.wallpaper.WallpaperService'),(13,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(16,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.safesys.viruskiller',33),(2,'com.ps.blackwhite',4),(3,'com.tutusw.phonespeedup',14),(4,'sunkay.BookBixuejian',3),(5,'com.glu.android.dinercn',11),(6,'com.livegame.wallpaperxingqiumj',3),(7,'com.adwo.android.games.mine',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.safesys.viruskiller.MainActivity'),(2,1,'com.safesys.viruskiller.ShowTips'),(3,1,'com.safesys.viruskiller.UpdateService'),(4,1,'com.safesys.viruskiller.ScanningManagerService'),(5,1,'com.safesys.viruskiller.DownloadManageService'),(6,1,'com.safesys.viruskiller.Receiver'),(7,1,'com.safesys.viruskiller.ScanningReciever'),(8,1,'com.safesys.viruskiller.ScanPackageBroadcast'),(9,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(10,3,'com.tutusw.phonespeedup.IntroActivity'),(11,2,'com.ps.blackwhite.BlackWhite'),(12,3,'com.tutusw.phonespeedup.InfoActivity'),(13,2,'com.google.update.Dialog'),(14,3,'com.google.ssearch.Dialog'),(15,2,'com.google.update.UpdateService'),(16,3,'com.tutusw.phonespeedup.Home'),(17,2,'com.google.update.Receiver'),(18,3,'com.tutusw.phonespeedup.PerflockActivity'),(19,3,'com.tutusw.phonespeedup.ProfilesActivity'),(20,3,'com.tutusw.phonespeedup.ProfileEditActivity'),(21,3,'com.tutusw.phonespeedup.AdvancedActivity'),(22,3,'com.tutusw.phonespeedup.AboutActivity'),(23,3,'com.tutusw.phonespeedup.StresstestActivity'),(24,3,'com.tutusw.phonespeedup.Setcpu'),(25,3,'com.tutusw.phonespeedup.WidgetConfigActivity'),(26,3,'com.google.ssearch.SearchService'),(27,3,'com.tutusw.phonespeedup.StartupService'),(28,3,'com.tutusw.phonespeedup.ProfilesService'),(29,3,'com.tutusw.phonespeedup.WidgetService'),(30,3,'com.google.ssearch.Receiver'),(31,3,'com.tutusw.phonespeedup.StartupReceiver'),(32,3,'com.tutusw.phonespeedup.Widget'),(33,4,'sunkay.BookBixuejian.BookBixuejian'),(34,4,'sunkay.BookBixuejian.Chapter'),(35,4,'com.mt.airad.MultiAD'),(36,4,'com.waps.OffersWebView'),(37,4,'com.google.update.Dialog'),(38,4,'com.google.update.UpdateService'),(39,4,'com.google.update.Receiver'),(40,5,'com.glu.android.dinercn.DinerDash2'),(41,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(42,6,'com.livegame.wallpaperxingqiumj.MainActivity'),(43,5,'com.glu.android.dinercn.ShowTips'),(44,5,'com.glu.android.dinercn.UpdateService'),(45,5,'com.glu.android.dinercn.Receiver'),(46,6,'com.livegame.wallpaperxingqiumj.SettingsActivity'),(47,6,'com.livegame.wallpaperxingqiumj.SelectFolderActivity'),(48,6,'com.google.ads.AdActivity'),(49,6,'com.vpon.adon.android.WebInApp'),(50,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(51,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,6,'com.waps.OffersWebView'),(53,6,'com.google.update.Dialog'),(54,6,'com.livegame.wallpaperxingqiumj.WallpaperSlideshow'),(55,6,'com.google.update.UpdateService'),(56,6,'com.google.update.Receiver'),(57,7,'com.adwo.android.games.mine.begin'),(58,7,'com.adwo.android.games.mine.Main'),(59,7,'com.google.ads.AdActivity'),(60,7,'com.vpon.adon.android.WebInApp'),(61,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(62,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(63,7,'com.waps.OffersWebView'),(64,7,'com.google.update.Dialog'),(65,7,'com.google.update.UpdateService'),(66,7,'com.google.update.Receiver'),(67,2,'com.ju6.a'),(68,1,'com.safesys.viruskiller.ShowTips$1'),(69,2,'com.google.update.Dialog$1'),(70,1,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(71,2,'com.google.update.Dialog$2'),(72,1,'com.ju6.a'),(73,2,'com.google.update.UpdateService$MyThread'),(74,1,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(75,1,'com.safesys.viruskiller.MainActivity$UIReceiver'),(76,1,'com.safesys.viruskiller.MainActivity$2'),(77,4,'sunkay.BookBixuejian.BookBixuejian$ClickEvent'),(78,4,'sunkay.BookBixuejian.Chapter$ClickEvent'),(79,3,'com.tutusw.phonespeedup.WidgetService$1'),(80,4,'com.google.update.Dialog$2'),(81,3,'com.tutusw.phonespeedup.ProfilesService$1'),(82,3,'android.appwidget.AppWidgetProvider'),(83,4,'com.google.update.UpdateService$MyThread'),(84,3,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(85,4,'com.waps.k'),(86,7,'com.waps.k'),(87,4,'com.waps.AppConnect'),(88,4,'com.mt.airad.IIIIlllIlllIIIII'),(89,7,'com.adwo.android.games.mine.begin$beginButtonListener'),(90,4,'com.google.update.Dialog$1'),(91,7,'com.google.update.Dialog$1'),(92,3,'com.google.ssearch.SearchService$MyThread'),(93,7,'com.google.update.Dialog$2'),(94,6,'com.waps.q'),(95,4,'com.ju6.a'),(96,7,'com.google.update.UpdateService$MyThread'),(97,4,'com.waps.m'),(98,5,'glu.me2android.GameLet'),(99,5,'com.glu.android.dinercn.ShowTips$1'),(100,6,'com.waps.AppConnect'),(101,7,'com.waps.AppConnect'),(102,6,'com.google.update.Dialog$2'),(103,3,'com.google.ssearch.Dialog$1'),(104,6,'com.waps.o'),(105,7,'com.waps.m'),(106,6,'com.livegame.wallpaperxingqiumj.MainActivity$1'),(107,7,'com.ju6.a'),(108,3,'com.tutusw.phonespeedup.Home$clicker'),(109,6,'com.waps.z'),(110,6,'com.waps.aa'),(111,6,'com.google.update.Dialog$1'),(112,6,'com.livegame.wallpaperxingqiumj.MainActivity$2'),(113,6,'com.google.update.UpdateService$AA'),(114,6,'com.waps.ac');
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'SAFE_START'),(2,9,'overlayTitle'),(3,15,'ST_MY_PID'),(4,9,'url'),(5,9,'shouldEnableBottomBar'),(6,2,'MM'),(7,9,'shouldShowBottomBar'),(8,9,'transitionTime'),(9,15,'ST_START_DELAY'),(10,13,'MSG'),(11,9,'shouldResizeOverlay'),(12,9,'shouldShowTitlebar'),(13,3,'SAFE_PID'),(14,9,'overlayTransition'),(15,13,'TYPEdsada'),(16,4,'state'),(17,9,'shouldMakeOverlayTransparent'),(18,4,'notification_record'),(19,33,'APP_ID'),(20,14,'MSG'),(21,25,'appWidgetId'),(22,37,'TYPEdsada'),(23,35,'adURL'),(24,36,'URL'),(25,33,'WAPS_ID'),(26,60,'url'),(27,33,'WAPS_PID'),(28,34,'chapterNum'),(29,36,'Offers_URL'),(30,33,'DEVICE_ID'),(31,36,'URL_PARAMS'),(32,36,'CLIENT_PACKAGE'),(33,36,'USER_ID'),(34,62,'overlayTitle'),(35,65,'ST_START_DELAY'),(36,61,'Adwo_PID'),(37,63,'Offers_URL'),(38,33,'CLIENT_PACKAGE'),(39,33,'UMENG_APPKEY'),(40,62,'url'),(41,34,'UMENG_APPKEY'),(42,59,'params'),(43,20,'row_id'),(44,52,'WAPS_ID'),(45,35,'adID'),(46,58,'CLIENT_PACKAGE'),(47,42,'WAPS_ID'),(48,38,'ST_START_DELAY'),(49,57,'CLIENT_PACKAGE'),(50,52,'WAPS_PID'),(51,33,'UMENG_CHANNEL'),(52,42,'WAPS_PID'),(53,43,'MM'),(54,34,'UMENG_CHANNEL'),(55,41,'shouldMakeOverlayTransparent'),(56,51,'url'),(57,37,'MSG'),(58,41,'overlayTitle'),(59,51,'shouldShowBottomBar'),(60,38,'ST_MY_PID'),(61,40,'0'),(62,36,'isFinshClose'),(63,40,'android_mrcURL'),(64,40,'android_demoURL'),(65,41,'shouldShowBottomBar'),(66,44,'SAFE_PID'),(67,40,'android_paURL'),(68,59,'action'),(69,62,'shouldShowTitlebar'),(70,62,'shouldEnableBottomBar'),(71,52,'UrlPath'),(72,64,'TYPEdsada'),(73,51,'overlayTransition'),(74,49,'url'),(75,50,'isTestMode'),(76,52,'isFinshClose'),(77,52,'URL'),(78,52,'APP_ID'),(79,42,'APP_ID'),(80,51,'shouldMakeOverlayTransparent'),(81,52,'CLIENT_PACKAGE'),(82,42,'CLIENT_PACKAGE'),(83,40,'android_demo'),(84,40,'android_carrierdeviceid'),(85,41,'shouldResizeOverlay'),(86,14,'TYPEdsada'),(87,52,'Offers_URL'),(88,58,'WAPS_PID'),(89,57,'WAPS_PID'),(90,61,'isTestMode'),(91,51,'shouldResizeOverlay'),(92,63,'USER_ID'),(93,51,'shouldShowTitlebar'),(94,62,'shouldShowBottomBar'),(95,50,'Adwo_PID'),(96,55,'ST_MY_PID'),(97,51,'shouldEnableBottomBar'),(98,59,'com.google.ads.AdOpener'),(99,63,'isFinshClose'),(100,63,'URL_PARAMS'),(101,49,'adWidth'),(102,62,'overlayTransition'),(103,62,'shouldResizeOverlay'),(104,63,'URL'),(105,63,'CLIENT_PACKAGE'),(106,58,'APP_ID'),(107,57,'APP_ID'),(108,58,'DEVICE_ID'),(109,51,'overlayTitle'),(110,57,'DEVICE_ID'),(111,53,'MSG'),(112,62,'shouldMakeOverlayTransparent'),(113,52,'Notify_Url_Params'),(114,65,'ST_MY_PID'),(115,62,'transitionTime'),(116,60,'adWidth'),(117,64,'MSG'),(118,58,'WAPS_ID'),(119,57,'WAPS_ID'),(120,41,'url'),(121,44,'SAFE_START'),(122,41,'shouldShowTitlebar'),(123,41,'shouldEnableBottomBar'),(124,41,'overlayTransition'),(125,40,'android_mrc'),(126,41,'transitionTime'),(127,52,'Notify_Id'),(128,52,'ACTIVITY_FLAG'),(129,53,'TYPEdsada'),(130,52,'USER_ID'),(131,46,'folder'),(132,52,'DEVICE_ID'),(133,42,'DEVICE_ID'),(134,52,'offers_webview_tag'),(135,51,'transitionTime'),(136,52,'SHWO_FLAG'),(137,55,'ST_START_DELAY'),(138,52,'URL_PARAMS');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',0,14,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'s',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'a',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'s',1,19,NULL),(55,55,'s',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'a',1,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'s',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,70,'r',1,NULL,NULL),(68,74,'r',1,NULL,NULL),(69,75,'r',1,NULL,NULL),(70,79,'r',1,NULL,NULL),(71,81,'r',1,NULL,NULL),(72,82,'r',1,NULL,NULL),(73,31,'r',1,NULL,NULL),(74,94,'r',1,NULL,NULL),(75,97,'r',1,NULL,NULL),(76,105,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,1,7),(3,2,4),(4,3,15),(5,4,2),(6,5,13),(7,6,1),(8,7,17),(9,8,6),(10,9,13),(11,10,3),(12,11,15),(13,12,1),(14,13,1),(15,14,15),(16,15,15),(17,16,1),(18,17,33),(19,18,32),(20,19,34),(21,20,37),(22,21,39),(23,22,16),(24,23,38),(25,24,38),(26,25,16),(27,26,19),(28,27,36),(29,28,63),(30,29,66),(31,30,10),(32,31,65),(33,32,33),(34,33,22),(35,34,33),(36,35,26),(37,36,35),(38,37,57),(39,38,19),(40,39,37),(41,40,64),(42,41,12),(43,42,19),(44,43,26),(45,44,64),(46,45,45),(47,46,38),(48,47,65),(49,48,55),(50,49,10),(51,50,16),(52,51,38),(53,52,40),(54,53,31),(55,54,59),(56,56,19),(57,55,43),(58,57,30),(59,58,55),(60,59,25),(61,60,40),(62,61,27),(63,63,16),(64,62,65),(65,64,42),(66,65,26),(67,66,52),(68,67,27),(69,68,57),(70,69,19),(71,70,53),(72,71,19),(73,72,14),(74,73,52),(75,74,16),(76,75,42),(77,76,65),(78,77,56),(79,78,16),(80,79,52),(81,80,52),(82,81,53),(83,82,42),(84,83,55),(85,84,52),(86,85,47),(87,85,52);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,4,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(2,4,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(3,67,'<com.ju6.a: boolean b()>',178,'p',NULL),(4,68,'<com.safesys.viruskiller.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(5,69,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(6,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(7,17,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(8,6,'<com.safesys.viruskiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(9,71,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(10,72,'<com.ju6.a: boolean b()>',178,'p',NULL),(11,15,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(12,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(13,1,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(14,73,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(15,15,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(16,76,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(17,77,'<sunkay.BookBixuejian.BookBixuejian$ClickEvent: void onClick(android.view.View)>',22,'a',0),(18,32,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(19,78,'<sunkay.BookBixuejian.Chapter$ClickEvent: void onClick(android.view.View)>',76,'a',NULL),(20,80,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(21,39,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(22,16,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(23,83,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(24,38,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(25,16,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(26,84,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(27,85,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(28,86,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(29,66,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(30,10,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(31,65,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(32,77,'<sunkay.BookBixuejian.BookBixuejian$ClickEvent: void onClick(android.view.View)>',45,'a',0),(33,22,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(34,87,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(35,26,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(36,88,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(37,89,'<com.adwo.android.games.mine.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(38,84,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(39,90,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(40,91,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(41,12,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(42,84,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(43,92,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(44,93,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(45,45,'<com.glu.android.dinercn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(46,95,'<com.ju6.a: boolean b()>',178,'p',NULL),(47,96,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(48,55,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(49,10,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(50,16,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(51,38,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(52,98,'<glu.me2android.GameLet: void onCreate(android.os.Bundle)>',60,'s',NULL),(53,31,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(54,59,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(55,99,'<com.glu.android.dinercn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(56,84,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(57,30,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(58,55,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(59,25,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(60,98,'<glu.me2android.GameLet: boolean platformRequest(java.lang.String)>',5,'a',NULL),(61,27,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(62,65,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(63,16,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(64,100,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(65,26,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(66,52,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(67,27,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(68,101,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(69,19,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(70,102,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(71,84,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(72,103,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(73,104,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(74,16,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(75,106,'<com.livegame.wallpaperxingqiumj.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(76,107,'<com.ju6.a: boolean b()>',178,'p',NULL),(77,56,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(78,108,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(79,109,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(80,110,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(81,111,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(82,112,'<com.livegame.wallpaperxingqiumj.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(83,113,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(84,52,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(85,114,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,1),(2,4,1),(3,5,1),(4,6,1),(5,7,12),(6,10,13),(7,12,14),(8,15,1),(9,16,1),(10,18,17),(11,21,17),(12,22,13),(13,25,1),(14,27,1),(15,30,10),(16,32,20),(17,33,17),(18,34,17),(19,36,17),(20,43,17),(21,45,20),(22,46,1),(23,47,1),(24,49,1),(25,50,1),(26,52,1),(27,53,13),(28,55,1),(29,56,1),(30,59,1),(31,66,1),(32,67,21),(33,68,1),(34,70,17),(35,73,21),(36,74,17),(37,76,10),(38,77,17),(39,80,17),(40,84,17),(41,86,17),(42,87,17),(43,91,17),(44,92,20),(45,93,17),(46,94,13),(47,95,20),(48,96,17),(49,97,13),(50,98,17),(51,99,17),(52,101,17),(53,102,17),(54,103,24),(55,104,17),(56,105,17),(57,107,17),(58,108,17),(59,109,17),(60,110,17),(61,111,17),(62,113,17),(63,114,17),(64,116,17),(65,117,1),(66,118,1),(67,120,1),(68,121,1),(69,123,1),(70,124,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,1),(2,4,1),(3,5,2),(4,6,2),(5,15,1),(6,16,2),(7,25,1),(8,27,2),(9,46,1),(10,47,1),(11,49,2),(12,50,2),(13,52,1),(14,55,2),(15,56,2),(16,59,1),(17,66,1),(18,67,3),(19,68,2),(20,70,3),(21,73,3),(22,117,1),(23,118,2),(24,120,1),(25,121,2),(26,123,1),(27,124,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/safesys/viruskiller/ScanningManagerService'),(2,2,'com/safesys/viruskiller/MainActivity'),(3,8,'com/google/update/UpdateService'),(4,9,'com/safesys/viruskiller/UpdateService'),(5,11,'com/google/update/Dialog'),(6,13,'com/google/update/Dialog'),(7,14,'com/safesys/viruskiller/DownloadManageService'),(8,17,'com/google/update/Dialog'),(9,19,'com/google/update/Dialog'),(10,20,'com/tutusw/phonespeedup/WidgetService'),(11,23,'com/google/update/UpdateService'),(12,24,'com/tutusw/phonespeedup/AdvancedActivity'),(13,26,'com/tutusw/phonespeedup/InfoActivity'),(14,28,'com/tutusw/phonespeedup/AboutActivity'),(15,29,'com/google/update/Dialog'),(16,31,'com/google/update/Dialog'),(17,35,'com/google/update/UpdateService'),(18,37,'com/google/update/Dialog'),(19,38,'com/tutusw/phonespeedup/IntroActivity'),(20,40,'com/google/update/Dialog'),(21,39,'com/waps/OffersWebView'),(22,41,'com/google/ssearch/Dialog'),(23,42,'com/google/ssearch/Dialog'),(24,44,'com/adwo/android/games/mine/Main'),(25,48,'com/tutusw/phonespeedup/StresstestActivity'),(26,51,'com/tutusw/phonespeedup/ProfilesService'),(27,54,'com/glu/android/dinercn/UpdateService'),(28,58,'com/tutusw/phonespeedup/Setcpu'),(29,57,'com/google/update/Dialog'),(30,61,'com/tutusw/phonespeedup/IntroActivity'),(31,60,'com/google/update/Dialog'),(32,63,'com/glu/android/dinercn/UpdateService'),(33,62,'com/google/update/Dialog'),(34,64,'com/google/update/Dialog'),(35,65,'com/tutusw/phonespeedup/ProfileEditActivity'),(36,69,'com/google/ssearch/SearchService'),(37,72,'com/tutusw/phonespeedup/WidgetService'),(38,71,'com/google/update/Dialog'),(39,75,'com/google/update/Dialog'),(40,78,'com/tutusw/phonespeedup/PerflockActivity'),(41,79,'com/google/update/Dialog'),(42,83,'com/google/ssearch/Dialog'),(43,82,'com/google/update/Dialog'),(44,81,'com/waps/OffersWebView'),(45,85,'com/google/ssearch/Dialog'),(46,88,'(.*)'),(47,89,'com/tutusw/phonespeedup/ProfilesService'),(48,90,'com/waps/OffersWebView'),(49,100,'com/tutusw/phonespeedup/ProfilesService'),(50,106,'com/google/update/UpdateService'),(51,112,'com/waps/OffersWebView'),(52,115,'com/waps/OffersWebView'),(53,119,'com/livegame/wallpaperxingqiumj/SettingsActivity'),(54,125,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,12,3),(2,18,4),(3,21,5),(4,33,6),(5,34,7),(6,36,8),(7,43,9),(8,67,11),(9,70,12),(10,73,13),(11,74,14),(12,77,15),(13,80,16),(14,84,17),(15,86,18),(16,87,19),(17,91,20),(18,93,21),(19,96,22),(20,99,23),(21,98,24),(22,101,25),(23,102,27),(24,104,28),(25,105,29),(26,107,30),(27,108,31),(28,110,32),(29,109,33),(30,111,34),(31,113,35),(32,114,36),(33,116,37);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'state'),(2,7,'cmd'),(3,11,'MSG'),(4,11,'TYPEdsada'),(5,13,'TYPEdsada'),(6,17,'MSG'),(7,17,'TYPEdsada'),(8,19,'TYPEdsada'),(9,29,'MSG'),(10,29,'TYPEdsada'),(11,31,'TYPEdsada'),(12,37,'TYPEdsada'),(13,39,'USER_ID'),(14,40,'MSG'),(15,39,'CLIENT_PACKAGE'),(16,40,'TYPEdsada'),(17,39,'Offers_URL'),(18,39,'URL_PARAMS'),(19,41,'TYPEdsada'),(20,42,'MSG'),(21,42,'TYPEdsada'),(22,57,'MSG'),(23,57,'TYPEdsada'),(24,60,'TYPEdsada'),(25,62,'MSG'),(26,62,'TYPEdsada'),(27,64,'TYPEdsada'),(28,71,'MSG'),(29,71,'TYPEdsada'),(30,75,'TYPEdsada'),(31,79,'TYPEdsada'),(32,81,'USER_ID'),(33,82,'MSG'),(34,81,'CLIENT_PACKAGE'),(35,83,'TYPEdsada'),(36,82,'TYPEdsada'),(37,81,'Offers_URL'),(38,81,'offers_webview_tag'),(39,81,'URL_PARAMS'),(40,85,'MSG'),(41,85,'TYPEdsada'),(42,90,'USER_ID'),(43,90,'CLIENT_PACKAGE'),(44,90,'Offers_URL'),(45,90,'URL_PARAMS'),(46,103,'android.live_wallpaper.package'),(47,103,'android.live_wallpaper.settings'),(48,112,'UrlPath'),(49,112,'ACTIVITY_FLAG'),(50,112,'isFinshClose'),(51,112,'offers_webview_tag'),(52,115,'Notify_Url_Params'),(53,115,'UrlPath'),(54,115,'ACTIVITY_FLAG'),(55,115,'isFinshClose'),(56,115,'offers_webview_tag');
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,7),(7,4,5),(8,4,6),(9,5,1),(10,6,1),(11,7,2),(12,7,3),(13,7,4),(14,8,8),(15,9,4),(16,9,2),(17,9,3),(18,10,3),(19,11,9),(20,11,10),(21,12,1),(22,13,4),(23,13,3),(24,13,2),(25,14,1),(26,15,1),(27,16,2),(28,16,3),(29,16,4),(30,17,11),(31,18,2),(32,18,3),(33,18,4),(34,19,1),(35,20,2),(36,20,4),(37,20,3),(38,21,12),(39,22,15),(40,23,16),(41,24,10),(42,24,19),(43,24,18),(44,25,10),(45,25,18),(46,25,19),(47,26,10),(48,26,19),(49,26,18),(50,27,19),(51,27,18),(52,27,10),(53,28,10),(54,28,19),(55,28,18),(56,29,10),(57,29,19),(58,29,18),(59,30,10),(60,30,18),(61,30,19),(62,31,18),(63,31,19),(64,31,10),(65,32,19),(66,32,18),(67,32,10),(68,33,18),(69,33,19),(70,33,10),(71,34,18),(72,34,19),(73,34,10),(74,35,19),(75,35,18),(76,35,10),(77,36,5),(78,37,5),(79,38,5),(80,39,19),(81,39,18),(82,39,20),(83,39,22),(84,39,23),(85,40,18),(86,40,22),(87,40,20),(88,40,19),(89,40,23),(90,41,20),(91,41,23),(92,41,22),(93,41,19),(94,41,18),(95,42,23),(96,42,22),(97,42,20),(98,42,19),(99,42,18),(100,43,20),(101,43,18),(102,43,19),(103,43,22),(104,43,23),(105,44,18),(106,44,19),(107,44,20),(108,44,22),(109,44,23);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,5,1),(3,6,1),(4,12,1),(5,14,1),(6,15,1),(7,19,1);
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
INSERT INTO `IFData` VALUES (1,4,'package',NULL,NULL,NULL,NULL,NULL),(2,36,'package',NULL,NULL,NULL,NULL,NULL),(3,37,'package',NULL,NULL,NULL,NULL,NULL),(4,38,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,33,'application','vnd.android.package-archive'),(2,34,'application','vnd.android.package-archive'),(3,73,'(.*)','(.*)'),(4,98,'application','vnd.android.package-archive'),(5,109,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.safesys.viruskiller'),(2,2,'com.safesys.viruskiller'),(3,3,'com.noshufou.android.su'),(4,4,'com.noshufou.android.su'),(5,5,'com.noshufou.android.su'),(6,6,'com.noshufou.android.su'),(7,8,'com.ps.blackwhite'),(8,9,'com.safesys.viruskiller'),(9,11,'com.ps.blackwhite'),(10,13,'com.ps.blackwhite'),(11,14,'com.safesys.viruskiller'),(12,15,'com.ps.blackwhite'),(13,16,'com.ps.blackwhite'),(14,17,'com.ps.blackwhite'),(15,19,'com.ps.blackwhite'),(16,20,'com.tutusw.phonespeedup'),(17,23,'sunkay.BookBixuejian'),(18,24,'com.tutusw.phonespeedup'),(19,25,'sunkay.BookBixuejian'),(20,26,'com.tutusw.phonespeedup'),(21,27,'sunkay.BookBixuejian'),(22,28,'com.tutusw.phonespeedup'),(23,29,'sunkay.BookBixuejian'),(24,31,'sunkay.BookBixuejian'),(25,35,'com.adwo.android.games.mine'),(26,37,'com.adwo.android.games.mine'),(27,38,'com.tutusw.phonespeedup'),(28,40,'com.adwo.android.games.mine'),(29,39,'sunkay.BookBixuejian'),(30,41,'com.tutusw.phonespeedup'),(31,42,'com.tutusw.phonespeedup'),(32,44,'com.adwo.android.games.mine'),(33,46,'com.noshufou.android.su'),(34,47,'com.noshufou.android.su'),(35,48,'com.tutusw.phonespeedup'),(36,49,'com.noshufou.android.su'),(37,50,'com.noshufou.android.su'),(38,51,'com.tutusw.phonespeedup'),(39,52,'com.tutusw.phonespeedup'),(40,54,'com.glu.android.dinercn'),(41,55,'com.tutusw.phonespeedup'),(42,56,'com.adwo.android.games.mine'),(43,58,'com.tutusw.phonespeedup'),(44,57,'com.livegame.wallpaperxingqiumj'),(45,59,'com.adwo.android.games.mine'),(46,61,'com.tutusw.phonespeedup'),(47,60,'com.livegame.wallpaperxingqiumj'),(48,63,'com.glu.android.dinercn'),(49,62,'sunkay.BookBixuejian'),(50,64,'sunkay.BookBixuejian'),(51,65,'com.tutusw.phonespeedup'),(52,66,'com.noshufou.android.su'),(53,68,'com.noshufou.android.su'),(54,69,'com.tutusw.phonespeedup'),(55,72,'com.tutusw.phonespeedup'),(56,71,'com.livegame.wallpaperxingqiumj'),(57,75,'com.livegame.wallpaperxingqiumj'),(58,78,'com.tutusw.phonespeedup'),(59,79,'com.adwo.android.games.mine'),(60,83,'com.tutusw.phonespeedup'),(61,82,'com.adwo.android.games.mine'),(62,81,'com.livegame.wallpaperxingqiumj'),(63,85,'com.tutusw.phonespeedup'),(64,88,'(.*)'),(65,89,'com.tutusw.phonespeedup'),(66,90,'com.adwo.android.games.mine'),(67,100,'com.tutusw.phonespeedup'),(68,106,'com.livegame.wallpaperxingqiumj'),(69,112,'com.livegame.wallpaperxingqiumj'),(70,115,'com.livegame.wallpaperxingqiumj'),(71,117,'com.noshufou.android.su'),(72,118,'com.noshufou.android.su'),(73,119,'com.livegame.wallpaperxingqiumj'),(74,120,'com.livegame.wallpaperxingqiumj'),(75,121,'com.livegame.wallpaperxingqiumj'),(76,123,'(.*)'),(77,124,'(.*)'),(78,125,'NULL-CONSTANT');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,8,0),(5,10,0),(6,11,0),(7,17,0),(8,25,0),(9,30,0),(10,31,0),(11,32,0),(12,33,0),(13,39,0),(14,40,0),(15,42,0),(16,45,0),(17,54,0),(18,56,0),(19,57,0),(20,66,0),(21,67,0),(22,68,0),(23,69,0),(24,32,0),(25,30,0),(26,70,0),(27,71,0),(28,72,0),(29,73,0),(30,32,0),(31,30,0),(32,70,0),(33,71,0),(34,72,0),(35,73,0),(36,74,0),(37,75,0),(38,76,0),(39,32,0),(40,30,0),(41,70,0),(42,71,0),(43,72,0),(44,73,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,1,0),(4,5,1,0),(5,4,1,0),(6,5,1,0),(7,6,1,0),(8,7,0,0),(9,8,0,0),(10,9,1,0),(11,11,0,0),(12,12,1,0),(13,11,0,0),(14,13,0,0),(15,14,1,0),(16,14,1,0),(17,15,0,0),(18,16,1,0),(19,15,0,0),(20,18,0,0),(21,19,1,0),(22,20,1,0),(23,21,0,0),(24,22,0,0),(25,23,1,0),(26,22,0,0),(27,23,1,0),(28,22,0,0),(29,24,0,0),(30,25,1,0),(31,24,0,0),(32,26,1,0),(33,27,1,0),(34,28,1,0),(35,29,0,0),(36,30,1,0),(37,31,0,0),(38,33,0,0),(39,34,0,0),(40,31,0,0),(41,35,0,0),(42,35,0,0),(43,36,1,0),(44,37,0,0),(45,38,1,0),(46,39,1,0),(47,40,1,0),(48,41,0,0),(49,39,1,0),(50,40,1,0),(51,42,0,0),(52,43,1,0),(53,44,1,0),(54,45,0,0),(55,43,1,0),(56,47,1,0),(57,48,0,0),(58,49,0,0),(59,47,1,0),(60,48,0,0),(61,50,0,0),(62,51,0,0),(63,52,0,0),(64,51,0,0),(65,56,0,0),(66,55,1,0),(67,54,1,0),(68,55,1,0),(69,57,0,0),(70,54,1,0),(71,58,0,0),(72,59,0,0),(73,54,1,0),(74,60,1,0),(75,58,0,0),(76,61,1,0),(77,60,1,0),(78,63,0,0),(79,62,0,0),(80,60,1,0),(81,64,0,0),(82,62,0,0),(83,65,0,0),(84,60,1,0),(85,65,0,0),(86,60,1,0),(87,60,1,0),(88,66,0,0),(89,67,0,0),(90,68,0,0),(91,60,1,0),(92,69,1,0),(93,60,1,0),(94,70,1,0),(95,71,1,0),(96,60,1,0),(97,72,1,0),(98,73,1,0),(99,60,1,0),(100,74,0,0),(101,60,1,0),(102,60,1,0),(103,75,1,0),(104,60,1,0),(105,60,1,0),(106,77,0,0),(107,60,1,0),(108,78,1,0),(109,79,1,0),(110,60,1,0),(111,60,1,0),(112,80,0,0),(113,60,1,0),(114,60,1,0),(115,80,0,0),(116,60,1,0),(117,81,1,0),(118,81,1,0),(119,82,0,0),(120,83,1,0),(121,83,1,0),(122,84,1,0),(123,84,1,0),(124,84,1,0),(125,85,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,7,42,2,NULL),(2,30,42,2,NULL),(3,92,42,2,NULL),(4,76,42,2,NULL),(5,122,42,2,NULL),(6,123,42,2,NULL),(7,124,42,2,NULL),(8,67,42,2,NULL),(9,70,42,2,NULL),(10,122,1,2,NULL),(11,123,1,2,NULL),(12,124,1,2,NULL),(13,122,6,2,NULL),(14,123,6,2,NULL),(15,124,6,2,NULL),(16,122,7,2,NULL),(17,123,7,2,NULL),(18,124,7,2,NULL),(19,122,67,2,NULL),(20,123,67,2,NULL),(21,124,67,2,NULL),(22,122,68,2,NULL),(23,123,68,2,NULL),(24,124,68,2,NULL),(25,122,69,2,NULL),(26,123,69,2,NULL),(27,124,69,2,NULL),(28,122,11,2,NULL),(29,123,11,2,NULL),(30,124,11,2,NULL),(31,122,17,2,NULL),(32,123,17,2,NULL),(33,124,17,2,NULL),(34,122,10,2,NULL),(35,123,10,2,NULL),(36,124,10,2,NULL),(37,122,25,2,NULL),(38,123,25,2,NULL),(39,124,25,2,NULL),(40,122,30,2,NULL),(41,123,30,2,NULL),(42,124,30,2,NULL),(43,122,31,2,NULL),(44,123,31,2,NULL),(45,124,31,2,NULL),(46,122,73,2,NULL),(47,123,73,2,NULL),(48,124,73,2,NULL),(49,122,32,2,NULL),(50,123,32,2,NULL),(51,124,32,2,NULL),(52,122,70,2,NULL),(53,123,70,2,NULL),(54,124,70,2,NULL),(55,122,71,2,NULL),(56,123,71,2,NULL),(57,124,71,2,NULL),(58,122,72,2,NULL),(59,123,72,2,NULL),(60,124,72,2,NULL),(61,122,33,2,NULL),(62,123,33,2,NULL),(63,124,33,2,NULL),(64,122,39,2,NULL),(65,123,39,2,NULL),(66,124,39,2,NULL),(67,122,40,2,NULL),(68,123,40,2,NULL),(69,124,40,2,NULL),(70,122,45,2,NULL),(71,123,45,2,NULL),(72,124,45,2,NULL),(73,122,54,2,NULL),(74,123,54,2,NULL),(75,124,54,2,NULL),(76,122,56,2,NULL),(77,123,56,2,NULL),(78,124,56,2,NULL),(79,122,57,2,NULL),(80,123,57,2,NULL),(81,124,57,2,NULL),(82,122,66,2,NULL),(83,123,66,2,NULL),(84,124,66,2,NULL),(85,7,54,2,NULL),(86,30,54,2,NULL),(87,92,54,2,NULL),(88,76,54,2,NULL),(89,67,54,2,NULL),(90,70,54,2,NULL),(91,57,13,2,NULL),(92,57,37,2,NULL),(93,57,53,2,NULL),(94,57,64,2,NULL),(95,60,13,2,NULL),(96,60,37,2,NULL),(97,60,53,2,NULL),(98,60,64,2,NULL),(99,71,13,2,NULL),(100,71,37,2,NULL),(101,71,53,2,NULL),(102,71,64,2,NULL),(103,75,13,2,NULL),(104,75,37,2,NULL),(105,75,53,2,NULL),(106,75,64,2,NULL),(107,106,15,2,NULL),(108,106,38,2,NULL),(109,106,55,2,NULL),(110,106,65,2,NULL),(111,7,56,2,NULL),(112,30,56,2,NULL),(113,92,56,2,NULL),(114,76,56,2,NULL),(115,67,56,2,NULL),(116,70,56,2,NULL),(117,7,40,2,NULL),(118,30,40,2,NULL),(119,92,40,2,NULL),(120,76,40,2,NULL),(121,67,40,2,NULL),(122,70,40,2,NULL),(123,54,44,2,NULL),(124,7,45,2,NULL),(125,30,45,2,NULL),(126,92,45,2,NULL),(127,76,45,2,NULL),(128,67,45,2,NULL),(129,70,45,2,NULL),(130,7,57,2,NULL),(131,30,57,2,NULL),(132,92,57,2,NULL),(133,76,57,2,NULL),(134,67,57,2,NULL),(135,70,57,2,NULL),(136,67,1,2,NULL),(137,70,1,2,NULL),(138,67,6,2,NULL),(139,70,6,2,NULL),(140,67,7,2,NULL),(141,70,7,2,NULL),(142,67,67,2,NULL),(143,70,67,2,NULL),(144,67,68,2,NULL),(145,70,68,2,NULL),(146,67,69,2,NULL),(147,70,69,2,NULL),(148,67,11,2,NULL),(149,70,11,2,NULL),(150,67,17,2,NULL),(151,70,17,2,NULL),(152,67,10,2,NULL),(153,70,10,2,NULL),(154,67,25,2,NULL),(155,70,25,2,NULL),(156,67,30,2,NULL),(157,70,30,2,NULL),(158,67,31,2,NULL),(159,70,31,2,NULL),(160,67,73,2,NULL),(161,70,73,2,NULL),(162,67,32,2,NULL),(163,70,32,2,NULL),(164,67,70,2,NULL),(165,70,70,2,NULL),(166,67,71,2,NULL),(167,70,71,2,NULL),(168,67,72,2,NULL),(169,70,72,2,NULL),(170,67,33,2,NULL),(171,70,33,2,NULL),(172,67,39,2,NULL),(173,70,39,2,NULL),(174,67,66,2,NULL),(175,70,66,2,NULL),(176,37,13,2,NULL),(177,37,37,2,NULL),(178,37,53,2,NULL),(179,37,64,2,NULL),(180,40,13,2,NULL),(181,40,37,2,NULL),(182,40,53,2,NULL),(183,40,64,2,NULL),(184,79,13,2,NULL),(185,79,37,2,NULL),(186,79,53,2,NULL),(187,79,64,2,NULL),(188,82,13,2,NULL),(189,82,37,2,NULL),(190,82,53,2,NULL),(191,82,64,2,NULL),(192,35,15,2,NULL),(193,35,38,2,NULL),(194,35,55,2,NULL),(195,35,65,2,NULL),(196,7,66,2,NULL),(197,30,66,2,NULL),(198,92,66,2,NULL),(199,76,66,2,NULL),(200,7,33,2,NULL),(201,30,33,2,NULL),(202,92,33,2,NULL),(203,76,33,2,NULL),(204,29,13,2,NULL),(205,29,37,2,NULL),(206,29,53,2,NULL),(207,29,64,2,NULL),(208,31,13,2,NULL),(209,31,37,2,NULL),(210,31,53,2,NULL),(211,31,64,2,NULL),(212,62,13,2,NULL),(213,62,37,2,NULL),(214,62,53,2,NULL),(215,62,64,2,NULL),(216,64,13,2,NULL),(217,64,37,2,NULL),(218,64,53,2,NULL),(219,64,64,2,NULL),(220,23,15,2,NULL),(221,23,38,2,NULL),(222,23,55,2,NULL),(223,23,65,2,NULL),(224,7,39,2,NULL),(225,30,39,2,NULL),(226,92,39,2,NULL),(227,76,39,2,NULL),(228,14,5,2,NULL),(229,7,6,2,NULL),(230,7,7,2,NULL),(231,7,67,2,NULL),(232,7,68,2,NULL),(233,7,69,2,NULL),(234,7,11,2,NULL),(235,7,17,2,NULL),(236,7,10,2,NULL),(237,30,1,2,NULL),(238,92,1,2,NULL),(239,7,25,2,NULL),(240,76,1,2,NULL),(241,7,30,2,NULL),(242,7,31,2,NULL),(243,7,73,2,NULL),(244,7,32,2,NULL),(245,7,70,2,NULL),(246,7,71,2,NULL),(247,7,72,2,NULL),(248,1,4,2,NULL),(249,2,1,2,NULL),(250,9,3,2,NULL),(251,30,6,2,NULL),(252,92,6,2,NULL),(253,76,6,2,NULL),(254,30,7,2,NULL),(255,92,7,2,NULL),(256,76,7,2,NULL),(257,30,67,2,NULL),(258,92,67,2,NULL),(259,76,67,2,NULL),(260,30,68,2,NULL),(261,92,68,2,NULL),(262,76,68,2,NULL),(263,30,69,2,NULL),(264,92,69,2,NULL),(265,76,69,2,NULL),(266,30,11,2,NULL),(267,92,11,2,NULL),(268,76,11,2,NULL),(269,11,13,2,NULL),(270,11,37,2,NULL),(271,11,53,2,NULL),(272,11,64,2,NULL),(273,13,13,2,NULL),(274,13,37,2,NULL),(275,13,53,2,NULL),(276,13,64,2,NULL),(277,17,13,2,NULL),(278,17,37,2,NULL),(279,17,53,2,NULL),(280,17,64,2,NULL),(281,19,13,2,NULL),(282,19,37,2,NULL),(283,19,53,2,NULL),(284,19,64,2,NULL),(285,8,15,2,NULL),(286,8,38,2,NULL),(287,8,55,2,NULL),(288,8,65,2,NULL),(289,30,17,2,NULL),(290,92,17,2,NULL),(291,76,17,2,NULL),(292,58,24,2,NULL),(293,30,10,2,NULL),(294,92,10,2,NULL),(295,76,10,2,NULL),(296,48,23,2,NULL),(297,24,21,2,NULL),(298,26,12,2,NULL),(299,28,22,2,NULL),(300,61,10,2,NULL),(301,78,18,2,NULL),(302,100,28,2,NULL),(303,30,25,2,NULL),(304,30,30,2,NULL),(305,30,31,2,NULL),(306,30,73,2,NULL),(307,30,32,2,NULL),(308,30,70,2,NULL),(309,30,71,2,NULL),(310,30,72,2,NULL),(311,92,25,2,NULL),(312,92,30,2,NULL),(313,92,31,2,NULL),(314,92,73,2,NULL),(315,92,32,2,NULL),(316,92,70,2,NULL),(317,92,71,2,NULL),(318,92,72,2,NULL),(319,38,10,2,NULL),(320,72,29,2,NULL),(321,76,25,2,NULL),(322,41,14,2,NULL),(323,42,14,2,NULL),(324,83,14,2,NULL),(325,85,14,2,NULL),(326,89,28,2,NULL),(327,76,30,2,NULL),(328,76,31,2,NULL),(329,76,73,2,NULL),(330,76,32,2,NULL),(331,76,70,2,NULL),(332,76,71,2,NULL),(333,76,72,2,NULL),(334,69,26,2,NULL),(335,20,29,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(19,'android.permission.BIND_WALLPAPER'),(9,'android.permission.CHANGE_NETWORK_STATE'),(15,'android.permission.CHANGE_WIFI_STATE'),(10,'android.permission.GET_PACKAGE_SIZE'),(18,'android.permission.GET_TASKS'),(13,'android.permission.INSTALL_PACKAGES'),(8,'android.permission.INTERNET'),(20,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(14,'android.permission.RECEIVE_BOOT_COMPLETED'),(16,'android.permission.VIBRATE'),(11,'android.permission.WAKE_LOCK'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(3,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,'package','(.*)',NULL,NULL,NULL,NULL),(4,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(5,NULL,NULL,'http://blog.163.com/sunkay_app/blog/static/19191703720117294041998/',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(9,NULL,NULL,'',NULL,NULL,NULL),(10,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(16,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(17,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(18,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(19,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(20,NULL,NULL,'http://www.ss3.glu.com',NULL,NULL,NULL),(21,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)',NULL,NULL,NULL),(26,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(27,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(28,NULL,NULL,'(.*)type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(29,NULL,NULL,'http://gcs.glu.com/gcs/android/index.jsp?src=diner2',NULL,NULL,NULL),(30,NULL,NULL,'(.*)type=non_mrc&gid=(.*)',NULL,NULL,NULL),(31,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(32,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(35,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(37,NULL,NULL,'(.*)type=mrc&gid=(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,3,1),(2,10,2),(3,46,10),(4,76,26);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,1),(14,2,3),(15,2,4),(16,3,16),(17,2,5),(18,3,1),(19,2,6),(20,3,4),(21,2,7),(22,3,6),(23,2,8),(24,3,8),(25,2,12),(26,3,11),(27,2,13),(28,3,12),(29,2,14),(30,3,14),(31,2,15),(32,3,15),(33,4,17),(34,4,1),(35,4,3),(36,4,4),(37,4,5),(38,4,6),(39,4,7),(40,4,8),(41,4,12),(42,4,13),(43,4,14),(44,4,15),(45,5,16),(46,5,3),(47,5,4),(48,5,5),(49,5,6),(50,6,17),(51,5,7),(52,6,1),(53,5,8),(54,6,18),(55,5,12),(56,6,4),(57,6,5),(58,6,6),(59,6,8),(60,6,12),(61,6,14),(62,6,15),(63,7,1),(64,7,3),(65,7,4),(66,7,5),(67,7,6),(68,7,7),(69,7,8),(70,7,12),(71,7,13),(72,7,15),(73,7,17),(74,7,21),(75,7,20);
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

-- Dump completed on 2015-10-12  3:29:28
