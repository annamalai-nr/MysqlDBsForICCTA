-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_136
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'DownloadManageServicer.ACTION_CONTROL'),(16,'DownloadManageServicer.ACTION_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(17,'android.intent.action.CHOOSER'),(10,'android.intent.action.DELETE'),(19,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(20,'android.intent.action.SEND'),(21,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(13,'android.intent.action.VIEW'),(22,'android.intent.action.WEB_SEARCH'),(12,'android.net.conn.CONNECTIVITY_CHANGE'),(23,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(9,'android.service.wallpaper.WallpaperService'),(8,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(11,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(14,'org.openintents.action.PICK_DIRECTORY'),(18,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.itxinke.Puzzle',1),(2,'com.tutusw.onekeyvpn',6),(3,'com.safesys.viruskiller',32),(4,'com.evilsunflower.compass',4),(5,'com.livegame.wallpaperxiaopohai',2),(6,'com.gp.solitaire',463),(7,'com.replica.replicaisland',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.itxinke.Puzzle.MainActivity'),(2,1,'com.itxinke.Puzzle.PuzzleActivity'),(3,1,'com.itxinke.Puzzle.OptionActivity'),(4,1,'com.itxinke.Puzzle.OrigActivity'),(5,1,'com.itxinke.Puzzle.LevelActivity'),(6,1,'com.itxinke.Puzzle.HelpActivity'),(7,1,'com.eguan.state.Dialog'),(8,1,'com.eguan.state.StateService'),(9,1,'com.eguan.state.Receiver'),(10,2,'com.tutusw.onekeyvpn.OpenVpnSettings'),(11,2,'com.tutusw.onekeyvpn.AdvancedSettings'),(12,2,'com.tutusw.onekeyvpn.EditConfig'),(13,2,'com.tutusw.onekeyvpn.EditConfigPreferences'),(14,2,'com.tutusw.onekeyvpn.EnterPassphrase'),(15,2,'com.tutusw.onekeyvpn.EnterUserPassword'),(16,2,'com.tutusw.onekeyvpn.ImportFiles'),(17,2,'com.tutusw.onekeyvpn.service.OpenVpnService'),(18,2,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(19,3,'com.safesys.viruskiller.MainActivity'),(20,3,'com.google.update.Dialog'),(21,3,'com.google.update.UpdateService'),(22,3,'com.safesys.viruskiller.ScanningManagerService'),(23,3,'com.safesys.viruskiller.DownloadManageService'),(24,3,'com.google.update.Receiver'),(25,3,'com.safesys.viruskiller.ScanningReciever'),(26,3,'com.safesys.viruskiller.ScanPackageBroadcast'),(27,4,'com.evilsunflower.compass.Main'),(28,4,'com.vpon.adon.android.WebInApp'),(29,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(30,4,'com.admob.android.ads.AdMobActivity'),(31,4,'com.evilsunflower.compass.ShowTips'),(32,4,'com.evilsunflower.compass.UpdateService'),(33,4,'com.evilsunflower.compass.Receiver'),(34,1,'com.itxinke.Puzzle.MainActivity$2'),(35,1,'com.itxinke.Puzzle.MainActivity$3'),(36,1,'com.itxinke.Puzzle.MainActivity$1'),(37,1,'com.itxinke.Puzzle.MainActivity$4'),(38,1,'com.eguan.state.Dialog$1'),(39,5,'com.livegame.wallpaperxiaopohai.MainActivity'),(40,5,'com.livegame.wallpaperxiaopohai.SettingsActivity'),(41,5,'com.livegame.wallpaperxiaopohai.SelectFolderActivity'),(42,5,'com.google.ads.AdActivity'),(43,5,'com.vpon.adon.android.WebInApp'),(44,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(45,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(46,5,'com.waps.OffersWebView'),(47,1,'com.eguan.state.StateService$MyThread'),(48,5,'com.google.update.Dialog'),(49,5,'com.livegame.wallpaperxiaopohai.WallpaperSlideshow'),(50,5,'com.google.update.UpdateService'),(51,5,'com.google.update.Receiver'),(52,6,'com.gp.solitaire.Solitaire'),(53,6,'com.google.update.Dialog'),(54,2,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(55,6,'cn.domob.android.ads.DomobActivity'),(56,2,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(57,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(58,6,'com.waps.OffersWebView'),(59,6,'com.google.update.UpdateService'),(60,6,'com.google.update.Receiver'),(61,2,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(62,3,'com.google.update.UpdateService$MyThread'),(63,2,'com.tutusw.onekeyvpn.service.ManagementThread'),(64,3,'com.safesys.viruskiller.MainActivity$2'),(65,2,'com.tutusw.onekeyvpn.ImportFiles$2'),(66,3,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(67,2,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(68,3,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(69,3,'com.google.update.Dialog$2'),(70,7,'com.replica.replicaisland.MainMenuActivity'),(71,7,'com.replica.replicaisland.AndouKun'),(72,3,'com.ju6.a'),(73,7,'com.replica.replicaisland.LevelSelectActivity'),(74,7,'com.replica.replicaisland.ConversationDialogActivity'),(75,3,'com.google.update.Dialog$1'),(76,7,'com.replica.replicaisland.DiaryActivity'),(77,7,'com.replica.replicaisland.SetPreferencesActivity'),(78,2,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(79,7,'com.replica.replicaisland.AnimationPlayerActivity'),(80,7,'com.replica.replicaisland.ExtrasMenuActivity'),(81,7,'com.replica.replicaisland.DifficultyMenuActivity'),(82,3,'com.safesys.viruskiller.MainActivity$UIReceiver'),(83,7,'com.replica.replicaisland.GameOverActivity'),(84,7,'com.waps.OffersWebView'),(85,7,'com.google.ads.AdActivity'),(86,7,'com.vpon.adon.android.WebInApp'),(87,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(88,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(89,7,'com.google.update.Dialog'),(90,7,'com.google.update.UpdateService'),(91,7,'com.google.update.Receiver'),(92,4,'com.evilsunflower.compass.ShowTips$1'),(93,4,'com.madhouse.android.ads._'),(94,4,'com.adwo.adsdk.g'),(95,5,'com.google.update.Dialog$2'),(96,5,'com.waps.AppConnect'),(97,5,'com.livegame.wallpaperxiaopohai.MainActivity$2'),(98,5,'com.waps.aa'),(99,4,'com.admob.android.ads.q'),(100,5,'com.google.update.Dialog$1'),(101,5,'com.waps.z'),(102,5,'com.waps.q'),(103,5,'com.waps.ac'),(104,5,'com.livegame.wallpaperxiaopohai.MainActivity$1'),(105,5,'com.waps.o'),(106,5,'com.google.update.UpdateService$AA'),(107,6,'com.google.update.UpdateService$AA'),(108,6,'cn.domob.android.ads.DomobAdManager'),(109,6,'com.waps.o'),(110,6,'com.waps.y'),(111,6,'com.google.update.Dialog$1'),(112,6,'com.waps.aa'),(113,6,'cn.domob.android.ads.i'),(114,6,'com.google.update.Dialog$2'),(115,6,'com.waps.q'),(116,6,'com.waps.x'),(117,6,'cn.domob.android.ads.DomobActionReceiver'),(118,6,'cn.domob.android.ads.DomobAdEngine$2'),(119,6,'cn.domob.android.ads.i$6');
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
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,7,'MSG'),(2,7,'TYPEdsada'),(3,4,'bitmap_bg'),(4,21,'ST_START_DELAY'),(5,20,'TYPEdsada'),(6,22,'notification_record'),(7,21,'ST_MY_PID'),(8,22,'state'),(9,20,'MSG'),(10,30,'ap'),(11,30,'sin'),(12,30,'tr'),(13,30,'oi'),(14,30,'a'),(15,30,'sku'),(16,30,'u'),(17,29,'transitionTime'),(18,30,'o'),(19,30,'sc'),(20,30,'cs'),(21,27,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(22,30,'c'),(23,30,'ad'),(24,31,'MM'),(25,30,'$'),(26,30,'mi'),(27,30,'p'),(28,29,'url'),(29,32,'SAFE_START'),(30,30,'rd'),(31,30,'b'),(32,30,'json'),(33,29,'shouldResizeOverlay'),(34,29,'overlayTransition'),(35,30,'t'),(36,29,'shouldShowTitlebar'),(37,30,'ru'),(38,40,'overlayTransition'),(39,34,'APP_ID'),(40,41,'APP_ID'),(41,40,'shouldMakeOverlayTransparent'),(42,39,'Adwo_PID'),(43,41,'Offers_URL'),(44,41,'SHWO_FLAG'),(45,41,'ACTIVITY_FLAG'),(46,44,'ST_MY_PID'),(47,40,'shouldResizeOverlay'),(48,40,'overlayTitle'),(49,41,'offers_webview_tag'),(50,41,'URL'),(51,41,'URL_PARAMS'),(52,34,'WAPS_PID'),(53,41,'WAPS_PID'),(54,34,'CLIENT_PACKAGE'),(55,41,'CLIENT_PACKAGE'),(56,42,'MSG'),(57,40,'transitionTime'),(58,41,'Notify_Id'),(59,27,'ADMOB_PUBLISHER_ID'),(60,27,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(61,30,'au'),(62,29,'shouldEnableBottomBar'),(63,29,'shouldMakeOverlayTransparent'),(64,30,'or'),(65,30,'nosk'),(66,32,'SAFE_PID'),(67,30,'msm'),(68,29,'overlayTitle'),(69,30,'int'),(70,28,'(.*)'),(71,30,'s'),(72,30,'skd'),(73,40,'shouldEnableBottomBar'),(74,29,'shouldShowBottomBar'),(75,41,'isFinshClose'),(76,40,'shouldShowBottomBar'),(77,34,'WAPS_ID'),(78,41,'WAPS_ID'),(79,30,'cbo'),(80,41,'UrlPath'),(81,30,'si'),(82,28,'url'),(83,28,'adWidth'),(84,30,'su'),(85,30,'sd'),(86,38,'adWidth'),(87,35,'folder'),(88,34,'DEVICE_ID'),(89,41,'DEVICE_ID'),(90,41,'USER_ID'),(91,39,'isTestMode'),(92,42,'TYPEdsada'),(93,38,'url'),(94,40,'url'),(95,44,'ST_START_DELAY'),(96,40,'shouldShowTitlebar'),(97,41,'Notify_Url_Params'),(98,51,'DOMOB_PID'),(99,46,'DOMOB_PID'),(100,49,'DOMOB_PID'),(101,49,'shouldEnableBottomBar'),(102,50,'Offers_URL'),(103,48,'appId'),(104,48,'actType'),(105,50,'USER_ID'),(106,51,'DOMOB_ALLOW_LOCATION'),(107,46,'DOMOB_ALLOW_LOCATION'),(108,49,'DOMOB_ALLOW_LOCATION'),(109,50,'WAPS_ID'),(110,46,'WAPS_ID'),(111,49,'shouldShowTitlebar'),(112,49,'shouldShowBottomBar'),(113,50,'ACTIVITY_FLAG'),(114,49,'overlayTitle'),(115,50,'APP_ID'),(116,46,'APP_ID'),(117,51,'DOMOB_TEST_MODE'),(118,46,'DOMOB_TEST_MODE'),(119,49,'DOMOB_TEST_MODE'),(120,50,'URL_PARAMS'),(121,50,'Notify_Id'),(122,49,'shouldMakeOverlayTransparent'),(123,49,'url'),(124,50,'Notify_Url_Params'),(125,49,'overlayTransition'),(126,48,'appName'),(127,50,'URL'),(128,49,'transitionTime'),(129,50,'CLIENT_PACKAGE'),(130,47,'MSG'),(131,50,'UrlPath'),(132,47,'TYPEdsada'),(133,50,'DEVICE_ID'),(134,46,'DEVICE_ID'),(135,49,'shouldResizeOverlay'),(136,46,'CLIENT_PACKAGE'),(137,51,'ST_MY_PID'),(138,50,'offers_webview_tag'),(139,50,'WAPS_PID'),(140,46,'WAPS_PID'),(141,50,'isFinshClose'),(142,51,'ST_START_DELAY'),(143,50,'SHWO_FLAG');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',0,NULL,NULL),(18,18,'r',1,15,NULL),(19,19,'a',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'s',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'s',0,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,39,'a',1,NULL,NULL),(35,40,'a',1,NULL,NULL),(36,41,'a',0,NULL,NULL),(37,42,'a',0,NULL,NULL),(38,43,'a',0,NULL,NULL),(39,44,'a',0,NULL,NULL),(40,45,'a',0,NULL,NULL),(41,46,'a',0,NULL,NULL),(42,48,'a',0,NULL,NULL),(43,49,'s',1,22,NULL),(44,50,'s',0,NULL,NULL),(45,51,'r',1,NULL,NULL),(46,52,'a',1,NULL,NULL),(47,53,'a',0,NULL,NULL),(48,55,'a',0,NULL,NULL),(49,57,'a',0,NULL,NULL),(50,58,'a',0,NULL,NULL),(51,59,'s',0,NULL,NULL),(52,60,'r',1,NULL,NULL),(53,61,'r',1,NULL,NULL),(54,66,'r',1,NULL,NULL),(55,68,'r',1,NULL,NULL),(56,70,'a',1,NULL,NULL),(57,71,'a',0,NULL,NULL),(58,73,'a',0,NULL,NULL),(59,74,'a',0,NULL,NULL),(60,76,'a',0,NULL,NULL),(61,77,'a',0,NULL,NULL),(62,79,'a',0,NULL,NULL),(63,80,'a',0,NULL,NULL),(64,81,'a',0,NULL,NULL),(65,82,'r',1,NULL,NULL),(66,83,'a',0,NULL,NULL),(67,84,'a',0,NULL,NULL),(68,85,'a',0,NULL,NULL),(69,86,'a',0,NULL,NULL),(70,87,'a',0,NULL,NULL),(71,88,'a',0,NULL,NULL),(72,89,'a',0,NULL,NULL),(73,90,'s',0,NULL,NULL),(74,91,'r',1,NULL,NULL),(75,102,'r',1,NULL,NULL),(76,115,'r',1,NULL,NULL),(77,117,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,8),(5,5,2),(6,6,1),(7,7,9),(8,8,7),(9,9,8),(10,10,2),(11,11,8),(12,12,10),(13,12,17),(14,13,10),(15,14,18),(16,15,14),(17,16,19),(18,17,17),(19,18,24),(20,19,15),(21,20,19),(22,21,21),(23,22,17),(24,22,10),(25,23,10),(26,23,17),(27,24,10),(28,24,17),(29,25,10),(30,25,17),(31,26,21),(32,27,10),(33,28,10),(34,29,10),(35,30,19),(36,31,16),(37,32,10),(38,33,10),(39,34,22),(40,35,10),(41,36,19),(42,37,25),(43,37,19),(44,38,20),(45,39,21),(46,40,20),(47,41,17),(48,41,10),(49,42,17),(50,42,10),(51,43,10),(52,43,17),(53,44,21),(54,45,31),(55,46,33),(56,47,27),(57,48,28),(58,49,27),(59,50,42),(60,51,44),(61,52,34),(62,53,34),(63,54,41),(64,55,44),(65,56,41),(66,57,28),(67,58,45),(68,59,42),(69,60,41),(70,61,41),(71,62,36),(72,62,41),(73,63,34),(74,64,41),(75,65,44),(76,66,51),(77,67,52),(78,68,46),(79,68,49),(80,68,51),(81,69,50),(82,70,51),(83,71,50),(84,72,47),(85,73,50),(86,74,50),(87,75,50),(88,76,51),(89,76,46),(90,76,49),(91,77,47),(92,78,51),(93,79,50),(94,80,49),(95,80,51),(96,80,46),(97,81,51),(98,81,49),(99,81,46),(100,82,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,34,'<com.itxinke.Puzzle.MainActivity$2: void onClick(android.view.View)>',6,'a',NULL),(2,35,'<com.itxinke.Puzzle.MainActivity$3: void onClick(android.view.View)>',6,'a',NULL),(3,36,'<com.itxinke.Puzzle.MainActivity$1: void onClick(android.view.View)>',6,'a',NULL),(4,8,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(5,2,'<com.itxinke.Puzzle.PuzzleActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(6,37,'<com.itxinke.Puzzle.MainActivity$4: void onClick(android.view.View)>',6,'a',NULL),(7,9,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(8,38,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(9,8,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(10,2,'<com.itxinke.Puzzle.PuzzleActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(11,47,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(12,54,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(13,56,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(14,18,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(15,14,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(16,19,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(17,17,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(18,24,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(19,15,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(20,19,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(21,62,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(22,63,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(23,63,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(24,54,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(25,63,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(26,21,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(27,10,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(28,56,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(29,17,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(30,64,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(31,65,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(32,10,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(33,10,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(34,22,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(35,67,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(36,19,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(37,22,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(38,69,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(39,72,'<com.ju6.a: boolean b()>',178,'p',NULL),(40,75,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(41,78,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(42,63,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(43,63,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(44,21,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(45,92,'<com.evilsunflower.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(46,33,'<com.evilsunflower.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(47,27,'<com.evilsunflower.compass.Main: void onCreate(android.os.Bundle)>',47,'s',NULL),(48,93,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(49,94,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(50,95,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,50,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(52,96,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(53,97,'<com.livegame.wallpaperxiaopohai.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(54,46,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(55,50,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(56,98,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(57,99,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(58,51,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(59,100,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,46,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(61,101,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(62,103,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(63,104,'<com.livegame.wallpaperxiaopohai.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(64,105,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(65,106,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(66,107,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(67,60,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(68,108,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(69,109,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(70,59,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(71,110,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(72,111,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(73,58,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(74,58,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(75,112,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(76,113,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(77,114,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(78,59,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(79,116,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(80,118,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(81,119,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(82,58,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,9,8),(2,13,1),(3,14,1),(4,18,10),(5,19,11),(6,23,1),(7,24,1),(8,29,13),(9,30,14),(10,34,17),(11,35,17),(12,36,15),(13,37,17),(14,39,17),(15,40,17),(16,41,8),(17,42,17),(18,43,17),(19,44,17),(20,45,1),(21,46,1),(22,49,1),(23,50,1),(24,53,19),(25,54,20),(26,55,21),(27,56,13),(28,57,21),(29,58,20),(30,59,20),(31,60,13),(32,61,13),(33,62,19),(34,63,13),(35,64,13),(36,65,13),(37,66,21),(38,67,20),(39,68,13),(40,69,8),(41,70,20),(42,71,20),(43,73,20),(44,75,21),(45,76,13),(46,77,20),(47,78,13),(48,81,20),(49,82,13),(50,84,21),(51,85,13),(52,87,1),(53,88,22),(54,89,1),(55,90,13),(56,91,22),(57,93,20),(58,95,13),(59,96,19),(60,100,1),(61,101,1),(62,103,13),(63,105,23),(64,106,13),(65,107,1),(66,108,1),(67,109,1),(68,110,1),(69,112,13),(70,117,1),(71,118,1),(72,120,1),(73,121,1),(74,124,13),(75,125,8),(76,128,13),(77,129,13),(78,131,13),(79,132,13),(80,133,13),(81,134,13),(82,135,1),(83,136,1);
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
INSERT INTO `ICategories` VALUES (1,13,2),(2,14,1),(3,23,2),(4,24,1),(5,45,1),(6,46,2),(7,49,1),(8,50,2),(9,87,1),(10,89,2),(11,100,1),(12,101,2),(13,107,1),(14,108,2),(15,109,1),(16,110,2),(17,117,1),(18,118,2),(19,120,1),(20,121,2),(21,135,1),(22,136,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/itxinke/Puzzle/OptionActivity'),(2,2,'com/itxinke/Puzzle/LevelActivity'),(3,3,'com/itxinke/Puzzle/PuzzleActivity'),(4,4,'com/eguan/state/Dialog'),(5,5,'com/eguan/state/Dialog'),(6,6,'com/itxinke/Puzzle/OptionActivity'),(7,7,'com/itxinke/Puzzle/HelpActivity'),(8,8,'com/eguan/state/StateService'),(9,10,'com/eguan/state/Dialog'),(10,11,'com/eguan/state/Dialog'),(11,12,'com/itxinke/Puzzle/OrigActivity'),(12,15,'com/tutusw/onekeyvpn/service/OpenVpnService'),(13,16,'com/tutusw/onekeyvpn/service/OpenVpnService'),(14,17,'com/tutusw/onekeyvpn/service/OpenVpnService'),(15,20,'com/google/update/UpdateService'),(16,21,'com/tutusw/onekeyvpn/service/OpenVpnService'),(17,22,'com/safesys/viruskiller/DownloadManageService'),(18,26,'com/tutusw/onekeyvpn/service/OpenVpnService'),(19,25,'com/google/update/Dialog'),(20,28,'com/tutusw/onekeyvpn/service/OpenVpnService'),(21,27,'com/google/update/Dialog'),(22,31,'com/tutusw/onekeyvpn/service/OpenVpnService'),(23,33,'com/safesys/viruskiller/MainActivity'),(24,32,'com/tutusw/onekeyvpn/AdvancedSettings'),(25,38,'com/safesys/viruskiller/ScanningManagerService'),(26,47,'com/google/update/Dialog'),(27,48,'com/google/update/Dialog'),(28,51,'com/evilsunflower/compass/UpdateService'),(29,52,'com/evilsunflower/compass/UpdateService'),(30,61,'com.google.android.maps.MapsActivity'),(31,68,'com/adwo/adsdk/AdwoAdBrowserActivity'),(32,72,'com/google/update/Dialog'),(33,74,'com/google/update/Dialog'),(34,78,'com.google.android.maps.MapsActivity'),(35,79,'com/waps/OffersWebView'),(36,83,'com/livegame/wallpaperxiaopohai/SettingsActivity'),(37,82,'com.google.android.maps.MapsActivity'),(38,85,'com.google.android.maps.MapsActivity'),(39,92,'com/google/update/Dialog'),(40,94,'com/google/update/Dialog'),(41,95,'com.google.android.maps.MapsActivity'),(42,97,'com/waps/OffersWebView'),(43,98,'com/waps/OffersWebView'),(44,99,'com/google/update/UpdateService'),(45,102,'(.*)'),(46,104,'NULL-CONSTANT'),(47,111,'com/google/update/UpdateService'),(48,113,'com/google/update/Dialog'),(49,114,'com/google/update/Dialog'),(50,115,'com/waps/OffersWebView'),(51,116,'com/waps/OffersWebView'),(52,122,'(.*)'),(53,123,'NULL-CONSTANT'),(54,126,'com/google/update/Dialog'),(55,127,'com/google/update/Dialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,18,1),(2,29,2),(3,53,5),(4,54,6),(5,55,7),(6,56,8),(7,57,9),(8,58,10),(9,59,11),(10,60,12),(11,62,13),(12,63,14),(13,64,15),(14,66,16),(15,67,17),(16,73,18),(17,76,19),(18,77,20),(19,78,21),(20,81,22),(21,82,23),(22,84,24),(23,85,25),(24,90,26),(25,93,27),(26,95,28),(27,103,29),(28,106,30),(29,112,32),(30,124,33),(31,128,34),(32,129,35),(33,131,36),(34,132,37),(35,133,38),(36,134,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'TYPEdsada'),(2,5,'MSG'),(3,5,'TYPEdsada'),(4,10,'TYPEdsada'),(5,11,'MSG'),(6,11,'TYPEdsada'),(7,12,'bitmap_bg'),(8,25,'TYPEdsada'),(9,27,'MSG'),(10,27,'TYPEdsada'),(11,30,'org.openintents.extra.TITLE'),(12,32,'hasDaemonsStarted'),(13,34,'android.intent.extra.INTENT'),(14,35,'android.intent.extra.INTENT'),(15,36,'cmd'),(16,37,'android.intent.extra.TITLE'),(17,37,'android.intent.extra.INTENT'),(18,38,'state'),(19,39,'android.intent.extra.INTENT'),(20,40,'android.intent.extra.TITLE'),(21,40,'android.intent.extra.INTENT'),(22,42,'android.intent.extra.INTENT'),(23,43,'android.intent.extra.TITLE'),(24,43,'android.intent.extra.INTENT'),(25,44,'android.intent.extra.TITLE'),(26,44,'android.intent.extra.INTENT'),(27,47,'TYPEdsada'),(28,48,'MSG'),(29,48,'TYPEdsada'),(30,54,'android.intent.extra.TEXT'),(31,54,'android.intent.extra.SUBJECT'),(32,54,'android.intent.extra.EMAIL'),(33,55,'sms_body'),(34,58,'android.intent.extra.EMAIL'),(35,59,'android.intent.extra.TEXT'),(36,59,'android.intent.extra.EMAIL'),(37,67,'android.intent.extra.EMAIL'),(38,68,'url'),(39,71,'android.intent.extra.TEXT'),(40,72,'MSG'),(41,71,'android.intent.extra.SUBJECT'),(42,72,'TYPEdsada'),(43,71,'android.intent.extra.EMAIL'),(44,73,'android.intent.extra.TEXT'),(45,74,'TYPEdsada'),(46,73,'android.intent.extra.SUBJECT'),(47,73,'android.intent.extra.EMAIL'),(48,79,'USER_ID'),(49,79,'CLIENT_PACKAGE'),(50,79,'Offers_URL'),(51,79,'offers_webview_tag'),(52,79,'URL_PARAMS'),(53,81,'android.intent.extra.TEXT'),(54,81,'android.intent.extra.EMAIL'),(55,84,'sms_body'),(56,88,'query'),(57,92,'MSG'),(58,92,'TYPEdsada'),(59,94,'TYPEdsada'),(60,97,'Notify_Url_Params'),(61,97,'UrlPath'),(62,97,'ACTIVITY_FLAG'),(63,97,'isFinshClose'),(64,97,'offers_webview_tag'),(65,98,'UrlPath'),(66,98,'ACTIVITY_FLAG'),(67,98,'isFinshClose'),(68,98,'offers_webview_tag'),(69,105,'android.live_wallpaper.package'),(70,105,'android.live_wallpaper.settings'),(71,113,'MSG'),(72,113,'TYPEdsada'),(73,114,'TYPEdsada'),(74,115,'UrlPath'),(75,115,'ACTIVITY_FLAG'),(76,115,'isFinshClose'),(77,115,'offers_webview_tag'),(78,116,'Notify_Url_Params'),(79,116,'UrlPath'),(80,116,'ACTIVITY_FLAG'),(81,116,'isFinshClose'),(82,116,'offers_webview_tag'),(83,126,'MSG'),(84,126,'TYPEdsada'),(85,127,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,3),(7,5,1),(8,6,4),(9,6,3),(10,6,2),(11,7,3),(12,8,7),(13,8,5),(14,8,6),(15,9,1),(16,10,3),(17,10,4),(18,10,2),(19,11,1),(20,12,9),(21,13,4),(22,13,3),(23,13,2),(24,14,1),(25,15,4),(26,15,2),(27,15,3),(28,16,12),(29,17,15),(30,18,16),(31,19,1),(32,20,18),(33,21,2),(34,21,3),(35,21,4),(36,22,5),(37,23,5),(38,24,5);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,9,1),(5,11,1),(6,14,1),(7,19,1);
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
INSERT INTO `IFData` VALUES (1,8,'package',NULL,NULL,NULL,NULL,NULL),(2,22,'package',NULL,NULL,NULL,NULL,NULL),(3,23,'package',NULL,NULL,NULL,NULL,NULL),(4,24,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,56,'*','*'),(2,64,'(.*)','(.*)'),(3,71,'message','rfc882'),(4,76,'(.*)','(.*)'),(5,90,'*','*'),(6,103,'application','vnd.android.package-archive'),(7,106,'application','vnd.android.package-archive'),(8,112,'application','vnd.android.package-archive'),(9,128,'application','vnd.android.package-archive'),(10,129,'application','vnd.android.package-archive'),(11,131,'application','vnd.android.package-archive'),(12,132,'application','vnd.android.package-archive'),(13,133,'application','vnd.android.package-archive'),(14,134,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.itxinke.Puzzle'),(2,2,'com.itxinke.Puzzle'),(3,3,'com.itxinke.Puzzle'),(4,4,'com.itxinke.Puzzle'),(5,5,'com.itxinke.Puzzle'),(6,6,'com.itxinke.Puzzle'),(7,7,'com.itxinke.Puzzle'),(8,8,'com.itxinke.Puzzle'),(9,10,'com.itxinke.Puzzle'),(10,11,'com.itxinke.Puzzle'),(11,12,'com.itxinke.Puzzle'),(12,13,'com.itxinke.Puzzle'),(13,14,'com.itxinke.Puzzle'),(14,15,'com.tutusw.onekeyvpn'),(15,16,'com.tutusw.onekeyvpn'),(16,17,'com.tutusw.onekeyvpn'),(17,20,'com.safesys.viruskiller'),(18,21,'com.tutusw.onekeyvpn'),(19,22,'com.safesys.viruskiller'),(20,23,'com.safesys.viruskiller'),(21,24,'com.safesys.viruskiller'),(22,26,'com.tutusw.onekeyvpn'),(23,25,'com.safesys.viruskiller'),(24,28,'com.tutusw.onekeyvpn'),(25,27,'com.safesys.viruskiller'),(26,31,'com.tutusw.onekeyvpn'),(27,33,'com.safesys.viruskiller'),(28,32,'com.tutusw.onekeyvpn'),(29,38,'com.safesys.viruskiller'),(30,45,'com.noshufou.android.su'),(31,46,'com.noshufou.android.su'),(32,47,'com.safesys.viruskiller'),(33,48,'com.safesys.viruskiller'),(34,49,'com.noshufou.android.su'),(35,50,'com.noshufou.android.su'),(36,51,'com.evilsunflower.compass'),(37,52,'com.evilsunflower.compass'),(38,61,'com.google.android.apps.maps'),(39,68,'com.evilsunflower.compass'),(40,72,'com.livegame.wallpaperxiaopohai'),(41,74,'com.livegame.wallpaperxiaopohai'),(42,78,'com.google.android.apps.maps'),(43,79,'com.livegame.wallpaperxiaopohai'),(44,83,'com.livegame.wallpaperxiaopohai'),(45,82,'com.google.android.apps.maps'),(46,85,'com.google.android.apps.maps'),(47,87,'(.*)'),(48,89,'(.*)'),(49,92,'com.livegame.wallpaperxiaopohai'),(50,94,'com.livegame.wallpaperxiaopohai'),(51,95,'com.google.android.apps.maps'),(52,97,'com.livegame.wallpaperxiaopohai'),(53,98,'com.livegame.wallpaperxiaopohai'),(54,99,'com.livegame.wallpaperxiaopohai'),(55,100,'com.noshufou.android.su'),(56,101,'com.noshufou.android.su'),(57,102,'(.*)'),(58,104,'NULL-CONSTANT'),(59,107,'com.livegame.wallpaperxiaopohai'),(60,108,'com.livegame.wallpaperxiaopohai'),(61,109,'com.gp.solitaire'),(62,110,'com.gp.solitaire'),(63,111,'com.gp.solitaire'),(64,113,'com.gp.solitaire'),(65,114,'com.gp.solitaire'),(66,115,'com.gp.solitaire'),(67,116,'com.gp.solitaire'),(68,117,'com.noshufou.android.su'),(69,118,'com.noshufou.android.su'),(70,120,'(.*)'),(71,121,'(.*)'),(72,122,'(.*)'),(73,123,'NULL-CONSTANT'),(74,126,'com.gp.solitaire'),(75,127,'com.gp.solitaire'),(76,135,'(.*)'),(77,136,'(.*)');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,18,0),(5,19,0),(6,24,0),(7,25,0),(8,26,0),(9,27,0),(10,33,0),(11,34,0),(12,43,0),(13,45,0),(14,46,0),(15,52,0),(16,53,0),(17,54,0),(18,55,0),(19,56,0),(20,65,0),(21,74,0),(22,75,0),(23,76,0),(24,77,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,7,0,0),(9,8,1,0),(10,9,0,0),(11,9,0,0),(12,10,0,0),(13,11,1,0),(14,11,1,0),(15,13,0,0),(16,14,0,0),(17,15,0,0),(18,16,1,0),(19,17,1,0),(20,18,0,0),(21,19,0,0),(22,20,0,0),(23,21,1,0),(24,21,1,0),(25,26,0,0),(26,27,0,0),(27,26,0,0),(28,28,0,0),(29,30,1,0),(30,31,1,0),(31,32,0,0),(32,33,0,0),(33,34,0,0),(34,35,1,0),(35,35,1,0),(36,36,1,0),(37,35,1,0),(38,37,0,0),(39,35,1,0),(40,35,1,0),(41,38,1,0),(42,35,1,0),(43,35,1,0),(44,35,1,0),(45,40,1,0),(46,40,1,0),(47,44,0,0),(48,44,0,0),(49,45,1,0),(50,45,1,0),(51,46,0,0),(52,47,0,0),(53,49,1,0),(54,49,1,0),(55,49,1,0),(56,49,1,0),(57,49,1,0),(58,49,1,0),(59,49,1,0),(60,49,1,0),(61,49,0,0),(62,49,1,0),(63,49,1,0),(64,49,1,0),(65,49,1,0),(66,49,1,0),(67,49,1,0),(68,49,0,0),(69,50,1,0),(70,49,1,0),(71,49,1,0),(72,51,0,0),(73,49,1,0),(74,51,0,0),(75,49,1,0),(76,49,1,0),(77,49,1,0),(78,49,0,0),(79,52,0,0),(80,49,1,0),(81,49,1,0),(82,49,0,0),(83,53,0,0),(84,49,1,0),(85,49,0,0),(86,54,1,0),(87,54,1,0),(88,49,1,0),(89,54,1,0),(90,49,1,0),(91,49,1,0),(92,55,0,0),(93,49,1,0),(94,55,0,0),(95,49,0,0),(96,49,1,0),(97,56,0,0),(98,56,0,0),(99,58,0,0),(100,59,1,0),(101,59,1,0),(102,60,0,0),(103,61,1,0),(104,62,0,0),(105,63,1,0),(106,64,1,0),(107,65,1,0),(108,65,1,0),(109,66,1,0),(110,66,1,0),(111,67,0,0),(112,69,1,0),(113,70,0,0),(114,70,0,0),(115,71,0,0),(116,71,0,0),(117,72,1,0),(118,72,1,0),(119,73,1,0),(120,73,1,0),(121,73,1,0),(122,74,0,0),(123,75,0,0),(124,76,1,0),(125,77,1,0),(126,78,0,0),(127,78,0,0),(128,79,1,0),(129,81,1,0),(130,81,1,0),(131,81,1,0),(132,81,1,0),(133,81,1,0),(134,81,1,0),(135,82,1,0),(136,82,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,52,32,2,NULL),(2,19,27,2,NULL),(3,36,27,2,NULL),(4,86,27,2,NULL),(5,87,27,2,NULL),(6,89,27,2,NULL),(7,119,27,2,NULL),(8,120,27,2,NULL),(9,121,27,2,NULL),(10,135,27,2,NULL),(11,136,27,2,NULL),(12,51,32,2,NULL),(13,19,33,2,NULL),(14,36,33,2,NULL),(15,86,33,2,NULL),(16,87,33,2,NULL),(17,89,33,2,NULL),(18,119,33,2,NULL),(19,120,33,2,NULL),(20,121,33,2,NULL),(21,135,33,2,NULL),(22,136,33,2,NULL),(23,19,34,2,NULL),(24,36,34,2,NULL),(25,86,34,2,NULL),(26,87,34,2,NULL),(27,89,34,2,NULL),(28,119,34,2,NULL),(29,120,34,2,NULL),(30,121,34,2,NULL),(31,135,34,2,NULL),(32,136,34,2,NULL),(33,86,1,2,NULL),(34,87,1,2,NULL),(35,89,1,2,NULL),(36,86,9,2,NULL),(37,87,9,2,NULL),(38,89,9,2,NULL),(39,86,10,2,NULL),(40,87,10,2,NULL),(41,89,10,2,NULL),(42,86,18,2,NULL),(43,87,18,2,NULL),(44,89,18,2,NULL),(45,86,53,2,NULL),(46,87,53,2,NULL),(47,89,53,2,NULL),(48,86,19,2,NULL),(49,87,19,2,NULL),(50,89,19,2,NULL),(51,86,24,2,NULL),(52,87,24,2,NULL),(53,89,24,2,NULL),(54,86,25,2,NULL),(55,87,25,2,NULL),(56,89,25,2,NULL),(57,86,54,2,NULL),(58,87,54,2,NULL),(59,89,54,2,NULL),(60,86,55,2,NULL),(61,87,55,2,NULL),(62,89,55,2,NULL),(63,86,65,2,NULL),(64,87,65,2,NULL),(65,89,65,2,NULL),(66,86,43,2,NULL),(67,87,43,2,NULL),(68,89,43,2,NULL),(69,86,45,2,NULL),(70,87,45,2,NULL),(71,89,45,2,NULL),(72,86,46,2,NULL),(73,87,46,2,NULL),(74,89,46,2,NULL),(75,86,52,2,NULL),(76,87,52,2,NULL),(77,89,52,2,NULL),(78,86,56,2,NULL),(79,87,56,2,NULL),(80,89,56,2,NULL),(81,86,74,2,NULL),(82,87,74,2,NULL),(83,89,74,2,NULL),(84,19,43,2,NULL),(85,36,43,2,NULL),(86,119,43,2,NULL),(87,120,43,2,NULL),(88,121,43,2,NULL),(89,135,43,2,NULL),(90,136,43,2,NULL),(91,72,20,2,NULL),(92,72,42,2,NULL),(93,72,47,2,NULL),(94,72,72,2,NULL),(95,74,20,2,NULL),(96,74,42,2,NULL),(97,74,47,2,NULL),(98,74,72,2,NULL),(99,92,20,2,NULL),(100,92,42,2,NULL),(101,92,47,2,NULL),(102,92,72,2,NULL),(103,94,20,2,NULL),(104,94,42,2,NULL),(105,94,47,2,NULL),(106,94,72,2,NULL),(107,99,21,2,NULL),(108,99,44,2,NULL),(109,99,51,2,NULL),(110,99,73,2,NULL),(111,19,45,2,NULL),(112,36,45,2,NULL),(113,119,45,2,NULL),(114,120,45,2,NULL),(115,121,45,2,NULL),(116,135,45,2,NULL),(117,136,45,2,NULL),(118,26,17,2,NULL),(119,31,17,2,NULL),(120,32,11,2,NULL),(121,19,10,2,NULL),(122,36,10,2,NULL),(123,119,10,2,NULL),(124,120,10,2,NULL),(125,121,10,2,NULL),(126,135,10,2,NULL),(127,136,10,2,NULL),(128,17,17,2,NULL),(129,21,17,2,NULL),(130,19,1,2,NULL),(131,19,9,2,NULL),(132,19,18,2,NULL),(133,19,53,2,NULL),(134,19,19,2,NULL),(135,19,24,2,NULL),(136,19,25,2,NULL),(137,19,54,2,NULL),(138,19,55,2,NULL),(139,19,65,2,NULL),(140,19,46,2,NULL),(141,19,52,2,NULL),(142,19,56,2,NULL),(143,19,74,2,NULL),(144,16,17,2,NULL),(145,36,18,2,NULL),(146,119,18,2,NULL),(147,120,18,2,NULL),(148,121,18,2,NULL),(149,135,18,2,NULL),(150,136,18,2,NULL),(151,36,53,2,NULL),(152,119,53,2,NULL),(153,120,53,2,NULL),(154,121,53,2,NULL),(155,135,53,2,NULL),(156,136,53,2,NULL),(157,22,23,2,NULL),(158,36,1,2,NULL),(159,36,9,2,NULL),(160,36,24,2,NULL),(161,36,25,2,NULL),(162,36,54,2,NULL),(163,36,55,2,NULL),(164,36,65,2,NULL),(165,36,46,2,NULL),(166,119,19,2,NULL),(167,120,19,2,NULL),(168,121,19,2,NULL),(169,135,19,2,NULL),(170,136,19,2,NULL),(171,36,52,2,NULL),(172,36,56,2,NULL),(173,36,74,2,NULL),(174,25,20,2,NULL),(175,25,42,2,NULL),(176,25,47,2,NULL),(177,25,72,2,NULL),(178,27,20,2,NULL),(179,27,42,2,NULL),(180,27,47,2,NULL),(181,27,72,2,NULL),(182,47,20,2,NULL),(183,47,42,2,NULL),(184,47,47,2,NULL),(185,47,72,2,NULL),(186,48,20,2,NULL),(187,48,42,2,NULL),(188,48,47,2,NULL),(189,48,72,2,NULL),(190,33,19,2,NULL),(191,38,22,2,NULL),(192,20,21,2,NULL),(193,20,44,2,NULL),(194,20,51,2,NULL),(195,20,73,2,NULL),(196,119,24,2,NULL),(197,120,24,2,NULL),(198,121,24,2,NULL),(199,135,24,2,NULL),(200,136,24,2,NULL),(201,119,25,2,NULL),(202,120,25,2,NULL),(203,121,25,2,NULL),(204,135,25,2,NULL),(205,136,25,2,NULL),(206,119,54,2,NULL),(207,120,54,2,NULL),(208,121,54,2,NULL),(209,135,54,2,NULL),(210,136,54,2,NULL),(211,119,55,2,NULL),(212,120,55,2,NULL),(213,121,55,2,NULL),(214,135,55,2,NULL),(215,136,55,2,NULL),(216,119,65,2,NULL),(217,120,65,2,NULL),(218,121,65,2,NULL),(219,135,65,2,NULL),(220,136,65,2,NULL),(221,119,56,2,NULL),(222,120,56,2,NULL),(223,121,56,2,NULL),(224,135,56,2,NULL),(225,136,56,2,NULL),(226,119,74,2,NULL),(227,120,74,2,NULL),(228,121,74,2,NULL),(229,135,74,2,NULL),(230,136,74,2,NULL),(231,119,1,2,NULL),(232,120,1,2,NULL),(233,121,1,2,NULL),(234,135,1,2,NULL),(235,136,1,2,NULL),(236,6,3,2,NULL),(237,12,4,2,NULL),(238,4,7,2,NULL),(239,5,7,2,NULL),(240,10,7,2,NULL),(241,11,7,2,NULL),(242,8,8,2,NULL),(243,119,9,2,NULL),(244,120,9,2,NULL),(245,121,9,2,NULL),(246,135,9,2,NULL),(247,136,9,2,NULL),(248,119,46,2,NULL),(249,120,46,2,NULL),(250,121,46,2,NULL),(251,135,46,2,NULL),(252,136,46,2,NULL),(253,119,52,2,NULL),(254,120,52,2,NULL),(255,121,52,2,NULL),(256,135,52,2,NULL),(257,136,52,2,NULL),(258,113,20,2,NULL),(259,113,42,2,NULL),(260,113,47,2,NULL),(261,113,72,2,NULL),(262,114,20,2,NULL),(263,114,42,2,NULL),(264,114,47,2,NULL),(265,114,72,2,NULL),(266,126,20,2,NULL),(267,126,42,2,NULL),(268,126,47,2,NULL),(269,126,72,2,NULL),(270,127,20,2,NULL),(271,127,42,2,NULL),(272,127,47,2,NULL),(273,127,72,2,NULL),(274,111,21,2,NULL),(275,111,44,2,NULL),(276,111,51,2,NULL),(277,111,73,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(22,'android.permission.BIND_WALLPAPER'),(5,'android.permission.BROADCAST_STICKY'),(11,'android.permission.CHANGE_NETWORK_STATE'),(3,'android.permission.CHANGE_WIFI_STATE'),(12,'android.permission.GET_PACKAGE_SIZE'),(17,'android.permission.GET_TASKS'),(19,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(18,'android.permission.READ_EXTERNAL_STORAGE'),(7,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(15,'android.permission.RECEIVE_BOOT_COMPLETED'),(23,'android.permission.VIBRATE'),(13,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS'),(20,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','(.*)',NULL,NULL,NULL,NULL),(2,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(24,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(36,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(39,NULL,NULL,'file://',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,39,3),(2,48,4),(3,68,31);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,2,1),(6,2,2),(7,2,5),(8,3,1),(9,3,2),(10,3,3),(11,3,4),(12,3,6),(13,3,7),(14,3,8),(15,3,9),(16,3,10),(17,3,11),(18,3,12),(19,3,13),(20,3,14),(21,4,16),(22,4,1),(23,4,2),(24,4,8),(25,4,9),(26,4,10),(27,4,13),(28,4,14),(29,5,17),(30,5,16),(31,5,1),(32,5,2),(33,5,3),(34,5,4),(35,5,6),(36,5,9),(37,5,14),(38,5,15),(39,6,1),(40,6,2),(41,6,3),(42,6,4),(43,6,6),(44,6,8),(45,6,9),(46,6,10),(47,6,14),(48,6,15),(49,6,17),(50,6,16),(51,6,19),(52,6,18),(53,6,21),(54,6,20),(55,7,1),(56,7,2),(57,7,3),(58,7,4),(59,7,6),(60,7,8),(61,7,9),(62,7,10),(63,7,14),(64,7,17),(65,7,16),(66,7,19),(67,7,18),(68,7,21),(69,7,23);
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

-- Dump completed on 2015-10-12  3:29:24
