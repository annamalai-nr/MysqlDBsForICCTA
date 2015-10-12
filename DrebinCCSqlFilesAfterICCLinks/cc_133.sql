-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_133
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
INSERT INTO `ActionStrings` VALUES (5,'SQUARE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(11,'android.intent.action.DIAL'),(14,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(17,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.SCREEN_OFF'),(7,'android.intent.action.SCREEN_ON'),(12,'android.intent.action.SEND'),(13,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(8,'android.intent.action.VIEW'),(15,'android.intent.action.WEB_SEARCH'),(16,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(9,'android.service.wallpaper.WallpaperService'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.fingerscanner',5),(2,'com.ps.square',5),(3,'com.safesys.superexplorer',34),(4,'com.safetest.five',3),(5,'com.safetest.pvz',7),(6,'com.livegame.wallpaperxiaopohai',1),(7,'com.gp.jewels',1);
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
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.SQUARE');
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.fingerscanner.SettingsActivity'),(2,1,'com.tutusw.fingerscanner.FingerprintActivity'),(3,1,'com.tutusw.fingerscanner.HelpActivity'),(4,1,'com.eguan.state.Dialog'),(5,1,'com.eguan.state.StateService'),(6,1,'com.tutusw.fingerscanner.SleepService'),(7,1,'com.eguan.state.Receiver'),(8,1,'com.tutusw.fingerscanner.BootReceiver'),(9,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(10,2,'com.ps.square.Square'),(11,2,'com.ps.square.elos.Elos'),(12,2,'com.ps.square.eloscomplex.ElosComplex'),(13,2,'com.google.update.Dialog'),(14,2,'com.google.update.UpdateService'),(15,2,'com.google.update.Receiver'),(16,3,'com.safesys.superexplorer.RootExplorer'),(17,3,'com.safesys.superexplorer.PermissionsActivity'),(18,3,'com.safesys.superexplorer.ScriptActivity'),(19,3,'com.safesys.superexplorer.DisplayText'),(20,3,'com.safesys.superexplorer.BookmarkList'),(21,3,'com.safesys.superexplorer.SearchCriteria'),(22,3,'com.safesys.superexplorer.Preferences'),(23,3,'com.safesys.superexplorer.ViewDatabase'),(24,3,'com.safesys.superexplorer.ViewTable'),(25,3,'com.safesys.superexplorer.SQLiteEditorAdvert'),(26,3,'com.safesys.superexplorer.CreateZip'),(27,3,'com.safesys.superexplorer.ShowTips'),(28,3,'com.safesys.superexplorer.UpdateService'),(29,3,'com.safesys.superexplorer.Receiver'),(30,5,'com.safetest.pvz.pvz'),(31,4,'com.safetest.five.Welcome'),(32,1,'com.tutusw.fingerscanner.SleepService$1'),(33,5,'com.safetest.pvz.ShowGame'),(34,4,'com.safetest.five.MainActivity'),(35,5,'com.safetest.pvz.End'),(36,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(37,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(38,4,'com.safetest.five.ShowTips'),(39,5,'com.safetest.pvz.ShowTips'),(40,4,'com.safetest.five.SoundService'),(41,5,'com.safetest.pvz.UpdateService'),(42,4,'com.safetest.five.UpdateService'),(43,5,'com.safetest.pvz.Receiver'),(44,4,'com.safetest.five.Receiver'),(45,1,'com.eguan.state.StateService$MyThread'),(46,6,'com.livegame.wallpaperxiaopohai.MainActivity'),(47,6,'com.livegame.wallpaperxiaopohai.SettingsActivity'),(48,6,'com.livegame.wallpaperxiaopohai.SelectFolderActivity'),(49,6,'com.google.ads.AdActivity'),(50,6,'com.vpon.adon.android.WebInApp'),(51,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(52,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(53,6,'com.waps.OffersWebView'),(54,6,'com.google.update.Dialog'),(55,6,'com.livegame.wallpaperxiaopohai.WallpaperSlideshow'),(56,6,'com.google.update.UpdateService'),(57,6,'com.google.update.Receiver'),(58,1,'com.eguan.state.Dialog$1'),(59,7,'com.gp.jewels.Menu'),(60,7,'com.gp.jewels.Jewels'),(61,7,'cn.domob.android.ads.DomobActivity'),(62,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(63,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(64,7,'com.mt.airad.MultiAD'),(65,7,'com.google.update.Dialog'),(66,7,'com.waps.OffersWebView'),(67,7,'com.google.update.UpdateService'),(68,7,'com.google.update.Receiver'),(69,2,'com.ps.square.Square$ItemClickListener'),(70,2,'com.google.update.UpdateService$MyThread'),(71,2,'com.google.update.Dialog$1'),(72,2,'com.google.update.Dialog$2'),(73,2,'com.ju6.a'),(74,5,'com.safetest.pvz.End$1'),(75,5,'com.adwo.adsdk.g'),(76,4,'com.safetest.five.Welcome$1'),(77,4,'com.adwo.adsdk.g'),(78,6,'com.ju6.a'),(79,6,'com.livegame.wallpaperxiaopohai.MainActivity$2'),(80,3,'com.ju6.a'),(81,6,'com.waps.o'),(82,6,'com.waps.AppConnect'),(83,6,'com.livegame.wallpaperxiaopohai.MainActivity$1'),(84,6,'com.google.update.Dialog$2'),(85,5,'com.safetest.pvz.ShowTips$1'),(86,6,'com.waps.z'),(87,5,'com.safetest.pvz.pvz$1'),(88,6,'com.waps.ac'),(89,6,'com.google.update.Dialog$1'),(90,3,'com.safesys.superexplorer.ShowTips$1'),(91,4,'com.safetest.five.MainActivity$3'),(92,6,'com.waps.q'),(93,4,'com.safetest.five.ShowTips$1'),(94,6,'com.google.update.UpdateService$AA'),(95,3,'com.safesys.superexplorer.SQLiteEditorAdvert$1'),(96,4,'com.safetest.five.SoundService$1'),(97,6,'com.waps.aa'),(98,3,'com.safesys.superexplorer.RootExplorer$34'),(99,3,'com.safesys.superexplorer.RootExplorer$31'),(100,3,'com.safesys.superexplorer.RootExplorer$33'),(101,7,'com.google.update.UpdateService$AA'),(102,7,'com.waps.o'),(103,7,'com.waps.z'),(104,7,'com.waps.aa'),(105,7,'com.google.update.Dialog$2'),(106,7,'com.waps.q'),(107,7,'com.waps.ac'),(108,7,'com.google.update.Dialog$1'),(109,7,'cn.domob.android.ads.DomobAdManager'),(110,7,'cn.domob.android.a.a$a'),(111,7,'cn.domob.android.ads.o'),(112,7,'cn.domob.android.ads.e'),(113,7,'cn.domob.android.ads.o$5'),(114,7,'com.mt.airad.IIIIlllIlllIIIII'),(115,7,'cn.domob.android.ads.g$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'MSG'),(2,4,'TYPEdsada'),(3,14,'ST_START_DELAY'),(4,9,'overlayTransition'),(5,9,'shouldShowTitlebar'),(6,9,'transitionTime'),(7,9,'shouldMakeOverlayTransparent'),(8,9,'shouldEnableBottomBar'),(9,14,'ST_MY_PID'),(10,9,'url'),(11,13,'MSG'),(12,9,'overlayTitle'),(13,9,'shouldResizeOverlay'),(14,13,'TYPEdsada'),(15,9,'shouldShowBottomBar'),(16,37,'shouldEnableBottomBar'),(17,41,'SAFE_PID'),(18,41,'SAFE_START'),(19,36,'shouldEnableBottomBar'),(20,36,'url'),(21,36,'shouldShowTitlebar'),(22,36,'shouldMakeOverlayTransparent'),(23,42,'SAFE_PID'),(24,42,'SAFE_START'),(25,52,'URL_PARAMS'),(26,52,'UrlPath'),(27,24,'is_filtered'),(28,51,'url'),(29,49,'url'),(30,52,'URL'),(31,51,'shouldMakeOverlayTransparent'),(32,19,'group'),(33,45,'CLIENT_PACKAGE'),(34,52,'CLIENT_PACKAGE'),(35,51,'overlayTitle'),(36,51,'transitionTime'),(37,52,'Notify_Url_Params'),(38,55,'ST_MY_PID'),(39,55,'ST_START_DELAY'),(40,51,'shouldResizeOverlay'),(41,52,'isFinshClose'),(42,51,'overlayTransition'),(43,45,'DEVICE_ID'),(44,52,'DEVICE_ID'),(45,52,'Offers_URL'),(46,49,'adWidth'),(47,50,'Adwo_PID'),(48,52,'ACTIVITY_FLAG'),(49,52,'USER_ID'),(50,45,'WAPS_ID'),(51,52,'WAPS_ID'),(52,46,'folder'),(53,50,'isTestMode'),(54,45,'APP_ID'),(55,52,'APP_ID'),(56,37,'transitionTime'),(57,37,'shouldResizeOverlay'),(58,37,'shouldMakeOverlayTransparent'),(59,39,'MM'),(60,37,'overlayTitle'),(61,37,'overlayTransition'),(62,37,'shouldShowBottomBar'),(63,23,'make_writeable_cmd'),(64,53,'TYPEdsada'),(65,37,'url'),(66,52,'Notify_Id'),(67,16,'saved_list_pos'),(68,37,'shouldShowTitlebar'),(69,51,'shouldShowTitlebar'),(70,51,'shouldEnableBottomBar'),(71,19,'permissions'),(72,19,'owner'),(73,51,'shouldShowBottomBar'),(74,24,'table'),(75,52,'SHWO_FLAG'),(76,24,'make_writeable_cmd'),(77,27,'MM'),(78,16,'selection_names'),(79,38,'MM'),(80,36,'transitionTime'),(81,36,'overlayTransition'),(82,36,'shouldShowBottomBar'),(83,24,'filter_field'),(84,23,'make_readable_cmd'),(85,28,'SAFE_START'),(86,16,'text'),(87,16,'name'),(88,52,'offers_webview_tag'),(89,28,'SAFE_PID'),(90,25,'make_readable_cmd'),(91,17,'name'),(92,36,'shouldResizeOverlay'),(93,45,'WAPS_PID'),(94,52,'WAPS_PID'),(95,53,'MSG'),(96,16,'selection_state'),(97,26,'zip_name'),(98,24,'filter_value'),(99,36,'overlayTitle'),(100,26,'data'),(101,25,'restore_permissions_cmd'),(102,24,'restore_permissions_cmd'),(103,23,'restore_permissions_cmd'),(104,16,'location'),(105,16,'zip_name'),(106,16,'permissions'),(107,19,'edit_mode'),(108,17,'permissions'),(109,25,'permissions'),(110,24,'make_readable_cmd'),(111,16,'multi_select_mode'),(112,16,'error_msg'),(113,17,'iconid'),(114,16,'flags'),(115,63,'MSG'),(116,64,'Notify_Id'),(117,61,'FSAd'),(118,62,'adID'),(119,64,'UrlPath'),(120,62,'adURL'),(121,65,'ST_START_DELAY'),(122,60,'shouldResizeOverlay'),(123,60,'overlayTransition'),(124,57,'mode'),(125,58,'mode'),(126,61,'shouldShowTitlebar'),(127,64,'offers_webview_tag'),(128,60,'transitionTime'),(129,64,'WAPS_ID'),(130,57,'WAPS_ID'),(131,58,'WAPS_ID'),(132,61,'shouldMakeOverlayTransparent'),(133,61,'DOMOB_ALLOW_LOCATION'),(134,65,'DOMOB_ALLOW_LOCATION'),(135,60,'DOMOB_ALLOW_LOCATION'),(136,57,'DOMOB_ALLOW_LOCATION'),(137,58,'DOMOB_ALLOW_LOCATION'),(138,60,'shouldShowTitlebar'),(139,60,'shouldEnableBottomBar'),(140,64,'Notify_Url_Params'),(141,61,'DOMOB_TEST_MODE'),(142,65,'DOMOB_TEST_MODE'),(143,60,'DOMOB_TEST_MODE'),(144,57,'DOMOB_TEST_MODE'),(145,58,'DOMOB_TEST_MODE'),(146,64,'APP_ID'),(147,57,'APP_ID'),(148,58,'APP_ID'),(149,59,'actType'),(150,61,'shouldResizeOverlay'),(151,61,'DOMOB_PID'),(152,65,'DOMOB_PID'),(153,60,'DOMOB_PID'),(154,57,'DOMOB_PID'),(155,58,'DOMOB_PID'),(156,64,'DEVICE_ID'),(157,57,'DEVICE_ID'),(158,58,'DEVICE_ID'),(159,61,'overlayTitle'),(160,64,'URL'),(161,61,'overlayTransition'),(162,64,'SHWO_FLAG'),(163,60,'shouldMakeOverlayTransparent'),(164,64,'isFinshClose'),(165,61,'shouldEnableBottomBar'),(166,61,'shouldShowBottomBar'),(167,60,'shouldShowBottomBar'),(168,59,'appId'),(169,59,'appName'),(170,60,'url'),(171,64,'Offers_URL'),(172,64,'USER_ID'),(173,61,'transitionTime'),(174,64,'URL_PARAMS'),(175,64,'WAPS_PID'),(176,57,'WAPS_PID'),(177,58,'WAPS_PID'),(178,64,'ACTIVITY_FLAG'),(179,64,'CLIENT_PACKAGE'),(180,63,'TYPEdsada'),(181,60,'overlayTitle'),(182,57,'CLIENT_PACKAGE'),(183,58,'CLIENT_PACKAGE'),(184,65,'ST_MY_PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'r',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'s',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,46,'a',1,NULL,NULL),(46,47,'a',1,NULL,NULL),(47,48,'a',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,50,'a',0,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,53,'a',0,NULL,NULL),(53,54,'a',0,NULL,NULL),(54,55,'s',1,17,NULL),(55,56,'s',0,NULL,NULL),(56,57,'r',1,NULL,NULL),(57,59,'a',1,NULL,NULL),(58,60,'a',0,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'s',0,NULL,NULL),(66,68,'r',1,NULL,NULL),(67,92,'r',1,NULL,NULL),(68,106,'r',1,NULL,NULL),(69,112,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,1),(3,3,1),(4,4,5),(5,5,5),(6,6,7),(7,7,1),(8,8,1),(9,9,1),(10,10,8),(11,11,1),(12,12,4),(13,13,15),(14,14,10),(15,15,14),(16,16,10),(17,17,13),(18,18,14),(19,19,14),(20,20,13),(21,21,14),(22,22,30),(23,23,35),(24,24,33),(25,25,31),(26,26,31),(27,27,34),(28,28,44),(29,29,34),(30,30,55),(31,31,16),(32,32,55),(33,33,45),(34,34,29),(35,35,16),(36,36,28),(37,37,16),(38,38,52),(39,39,45),(40,40,52),(41,41,56),(42,42,45),(43,43,53),(44,44,52),(45,45,43),(46,46,39),(47,47,52),(48,48,25),(49,49,30),(50,50,47),(51,50,52),(52,51,55),(53,52,16),(54,53,16),(55,54,34),(56,55,53),(57,56,27),(58,57,34),(59,58,38),(60,59,55),(61,60,25),(62,61,34),(63,62,31),(64,62,34),(65,62,40),(66,63,52),(67,64,16),(68,65,16),(69,66,16),(70,67,16),(71,68,16),(72,69,16),(73,70,16),(74,71,23),(75,72,16),(76,73,16),(77,74,16),(78,75,58),(79,76,65),(80,77,64),(81,78,64),(82,79,65),(83,80,64),(84,81,64),(85,82,63),(86,83,64),(87,84,63),(88,85,60),(89,85,61),(90,85,65),(91,85,57),(92,85,58),(93,86,65),(94,87,58),(95,87,61),(96,87,60),(97,87,57),(98,87,65),(99,88,61),(100,88,60),(101,88,58),(102,88,57),(103,88,65),(104,89,64),(105,90,66),(106,91,65),(107,91,60),(108,91,61),(109,91,57),(110,91,58),(111,92,62),(112,93,57),(113,93,58),(114,93,60),(115,93,61),(116,93,65);
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
INSERT INTO `ExitPoints` VALUES (1,5,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(2,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',27,'s',NULL),(3,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(4,5,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(5,45,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(6,7,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(7,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(8,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(9,1,'<com.tutusw.fingerscanner.SettingsActivity: void onStart()>',18,'s',NULL),(10,8,'<com.tutusw.fingerscanner.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(11,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(12,58,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(13,15,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(14,69,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(15,70,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(16,69,'<com.ps.square.Square$ItemClickListener: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',16,'a',NULL),(17,71,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(18,14,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(19,14,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(20,72,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(21,73,'<com.ju6.a: boolean b()>',178,'p',NULL),(22,30,'<com.safetest.pvz.pvz: void onStart()>',5,'s',NULL),(23,74,'<com.safetest.pvz.End$1: void onClick(android.view.View)>',7,'a',NULL),(24,75,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(25,31,'<com.safetest.five.Welcome: void onCreate(android.os.Bundle)>',18,'s',NULL),(26,76,'<com.safetest.five.Welcome$1: void onClick(android.view.View)>',21,'a',NULL),(27,34,'<com.safetest.five.MainActivity: void menuItemClicked(int)>',21,'s',NULL),(28,44,'<com.safetest.five.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(29,77,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(30,56,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(31,16,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFolder(com.safesys.superexplorer.DirectoryEntry)>',12,'a',NULL),(32,78,'<com.ju6.a: boolean b()>',178,'p',NULL),(33,79,'<com.livegame.wallpaperxiaopohai.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(34,29,'<com.safesys.superexplorer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(35,16,'<com.safesys.superexplorer.RootExplorer: void EditItem(com.safesys.superexplorer.DirectoryEntry)>',4,'a',0),(36,80,'<com.ju6.a: boolean b()>',178,'p',NULL),(37,16,'<com.safesys.superexplorer.RootExplorer: void OpenItem(com.safesys.superexplorer.DirectoryEntry)>',53,'a',NULL),(38,81,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(39,82,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(40,53,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(41,57,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(42,83,'<com.livegame.wallpaperxiaopohai.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(43,84,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(44,53,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(45,43,'<com.safetest.pvz.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(46,85,'<com.safetest.pvz.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(47,86,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(48,25,'<com.safesys.superexplorer.SQLiteEditorAdvert: void DownloadSQLiteEditor()>',4,'a',NULL),(49,87,'<com.safetest.pvz.pvz$1: void onClick(android.view.View)>',7,'a',NULL),(50,88,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(51,56,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(52,16,'<com.safesys.superexplorer.RootExplorer: void Search()>',5,'a',NULL),(53,16,'<com.safesys.superexplorer.RootExplorer: void ShowPreferences()>',3,'a',NULL),(54,34,'<com.safetest.five.MainActivity: void onCreate(android.os.Bundle)>',36,'s',NULL),(55,89,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(56,90,'<com.safesys.superexplorer.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(57,91,'<com.safetest.five.MainActivity$3: void onClick(android.content.DialogInterface,int)>',9,'s',NULL),(58,93,'<com.safetest.five.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(59,94,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(60,95,'<com.safesys.superexplorer.SQLiteEditorAdvert$1: void onClick(android.view.View)>',21,'a',NULL),(61,34,'<com.safetest.five.MainActivity: void onResume()>',7,'s',NULL),(62,96,'<com.safetest.five.SoundService$1: void onCompletion(android.media.MediaPlayer)>',8,'s',NULL),(63,97,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(64,98,'<com.safesys.superexplorer.RootExplorer$34: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(65,16,'<com.safesys.superexplorer.RootExplorer: void ShowBookmarks()>',3,'a',NULL),(66,16,'<com.safesys.superexplorer.RootExplorer: void DownloadRootExplorer()>',4,'a',NULL),(67,16,'<com.safesys.superexplorer.RootExplorer: void ShowPermissionsDialog(com.safesys.superexplorer.DirectoryEntry)>',13,'a',NULL),(68,16,'<com.safesys.superexplorer.RootExplorer: void Send(com.safesys.superexplorer.DirectoryEntry)>',6,'a',0),(69,99,'<com.safesys.superexplorer.RootExplorer$31: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(70,16,'<com.safesys.superexplorer.RootExplorer: void ExecuteZipSelected(java.lang.String)>',11,'a',NULL),(71,23,'<com.safesys.superexplorer.ViewDatabase: void OpenItem(com.safesys.superexplorer.Database$Table)>',15,'a',NULL),(72,16,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFile(com.safesys.superexplorer.DirectoryEntry)>',16,'a',NULL),(73,16,'<com.safesys.superexplorer.RootExplorer: void OpenAsText(com.safesys.superexplorer.DirectoryEntry)>',10,'a',0),(74,100,'<com.safesys.superexplorer.RootExplorer$33: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(75,60,'<com.gp.jewels.Jewels: void toMenuView()>',7,'a',NULL),(76,101,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(77,102,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(78,66,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(79,67,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(80,103,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(81,104,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(82,105,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(83,107,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(84,108,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(85,109,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(86,67,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(87,110,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(88,111,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(89,66,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(90,68,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(91,113,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(92,114,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(93,115,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,7,1),(2,8,1),(3,10,8),(4,15,10),(5,18,1),(6,19,1),(7,21,1),(8,22,1),(9,27,10),(10,30,11),(11,31,12),(12,32,13),(13,34,8),(14,36,13),(15,37,8),(16,38,12),(17,40,12),(18,42,8),(19,43,11),(20,44,8),(21,45,12),(22,46,11),(23,48,8),(24,47,13),(25,49,8),(26,50,8),(27,51,8),(28,52,13),(29,53,13),(30,55,12),(31,56,12),(32,58,12),(33,59,12),(34,60,12),(35,62,8),(36,63,12),(37,64,8),(38,67,11),(39,68,13),(40,69,8),(41,70,8),(42,71,8),(43,72,12),(44,73,8),(45,74,8),(46,75,8),(47,76,8),(48,77,13),(49,78,8),(50,80,12),(51,81,12),(52,82,8),(53,84,12),(54,85,8),(55,86,12),(56,87,14),(57,88,13),(58,89,12),(59,92,8),(60,93,13),(61,94,8),(62,95,15),(63,98,12),(64,99,8),(65,100,8),(66,101,15),(67,102,12),(68,103,8),(69,104,8),(70,105,8),(71,106,8),(72,107,16),(73,109,12),(74,111,11),(75,112,10),(76,113,8),(77,115,8),(78,116,1),(79,118,13),(80,119,1),(81,120,8),(82,121,8),(83,122,1),(84,123,8),(85,124,8),(86,125,1),(87,126,15),(88,127,8),(89,128,8),(90,130,15),(91,132,12),(92,133,8),(93,136,11),(94,140,1),(95,141,1),(96,143,1),(97,144,1),(98,145,1),(99,146,1),(100,147,1),(101,149,1),(102,156,8),(103,158,8),(104,159,8),(105,160,8),(106,161,14),(107,164,8),(108,165,8),(109,167,8),(110,168,8),(111,169,8),(112,176,1),(113,177,1),(114,178,8),(115,180,1),(116,181,1),(117,184,8),(118,187,10),(119,189,1),(120,190,1),(121,193,8),(122,196,8),(123,198,8),(124,199,8),(125,200,8),(126,201,8),(127,202,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,3),(2,8,1),(3,18,3),(4,19,1),(5,21,1),(6,22,3),(7,116,1),(8,119,3),(9,122,1),(10,125,3),(11,140,1),(12,141,1),(13,143,3),(14,144,3),(15,145,1),(16,146,3),(17,147,1),(18,149,3),(19,176,1),(20,177,3),(21,180,1),(22,181,3),(23,189,1),(24,190,3);
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
INSERT INTO `IClasses` VALUES (1,1,'com/eguan/state/Dialog'),(2,2,'com/eguan/state/Dialog'),(3,3,'com/tutusw/fingerscanner/SleepService'),(4,4,'com/tutusw/fingerscanner/FingerprintActivity'),(5,5,'com/eguan/state/Dialog'),(6,6,'com/eguan/state/Dialog'),(7,9,'com/eguan/state/StateService'),(8,11,'com/tutusw/fingerscanner/HelpActivity'),(9,12,'com/tutusw/fingerscanner/SleepService'),(10,13,'com/tutusw/fingerscanner/SleepService'),(11,14,'com/tutusw/fingerscanner/SleepService'),(12,16,'com/google/update/UpdateService'),(13,17,'com/ps/square/eloscomplex/ElosComplex'),(14,20,'com/ps/square/elos/Elos'),(15,23,'com/google/update/Dialog'),(16,24,'com/google/update/Dialog'),(17,25,'com/google/update/Dialog'),(18,26,'com/google/update/Dialog'),(19,28,'com/safetest/pvz/UpdateService'),(20,29,'com/safetest/pvz/ShowGame'),(21,33,'com/safetest/five/SoundService'),(22,35,'com/safetest/five/MainActivity'),(23,37,'com/adwo/adsdk/AdwoAdBrowserActivity'),(24,39,'com/safetest/five/SoundService'),(25,41,'com/safetest/five/UpdateService'),(26,44,'com.google.android.maps.MapsActivity'),(27,54,'com/google/update/Dialog'),(28,57,'com/google/update/Dialog'),(29,61,'com/safesys/superexplorer/CreateZip'),(30,64,'com.google.android.maps.MapsActivity'),(31,65,'com/livegame/wallpaperxiaopohai/SettingsActivity'),(32,66,'com/safesys/superexplorer/UpdateService'),(33,75,'com.google.android.maps.MapsActivity'),(34,83,'com/waps/OffersWebView'),(35,85,'com.google.android.maps.MapsActivity'),(36,90,'(.*)'),(37,87,'com.safesys.sqleditor.EditDatabase'),(38,92,'com.google.android.maps.MapsActivity'),(39,91,'com/safesys/superexplorer/SQLiteEditorAdvert'),(40,96,'com/google/update/UpdateService'),(41,97,'com/safesys/superexplorer/ViewDatabase'),(42,100,'com.google.android.maps.MapsActivity'),(43,104,'com/adwo/adsdk/AdwoAdBrowserActivity'),(44,105,'com.google.android.maps.MapsActivity'),(45,110,'com/safesys/superexplorer/DisplayText'),(46,113,'com.google.android.maps.MapsActivity'),(47,117,'com/safetest/pvz/UpdateService'),(48,121,'com.google.android.maps.MapsActivity'),(49,129,'com/safetest/pvz/ShowGame'),(50,131,'NULL-CONSTANT'),(51,133,'com.google.android.maps.MapsActivity'),(52,134,'com/google/update/Dialog'),(53,135,'com/safesys/superexplorer/SearchCriteria'),(54,137,'com/google/update/Dialog'),(55,138,'com/safesys/superexplorer/Preferences'),(56,139,'com/safetest/five/UpdateService'),(57,142,'com/safetest/five/SoundService'),(58,150,'com/safetest/five/SoundService'),(59,148,'com/safesys/superexplorer/ViewDatabase'),(60,151,'com/safetest/five/SoundService'),(61,152,'com/waps/OffersWebView'),(62,153,'com/safesys/superexplorer/ScriptActivity'),(63,154,'com/waps/OffersWebView'),(64,155,'com/safesys/superexplorer/BookmarkList'),(65,157,'com/safesys/superexplorer/PermissionsActivity'),(66,161,'com.safesys.sqleditor.EditDatabase'),(67,162,'com/safesys/superexplorer/SQLiteEditorAdvert'),(68,163,'com/safesys/superexplorer/ViewDatabase'),(69,166,'com/safesys/superexplorer/DisplayText'),(70,170,'com/safesys/superexplorer/CreateZip'),(71,171,'com/safesys/superexplorer/ViewTable'),(72,172,'com/safesys/superexplorer/CreateZip'),(73,173,'com/safesys/superexplorer/DisplayText'),(74,174,'com/safesys/superexplorer/DisplayText'),(75,175,'com/gp/jewels/Menu'),(76,182,'com/google/update/Dialog'),(77,183,'com/google/update/Dialog'),(78,185,'com/waps/OffersWebView'),(79,186,'com/waps/OffersWebView'),(80,188,'NULL-CONSTANT'),(81,191,'com/google/update/Dialog'),(82,192,'com/google/update/Dialog'),(83,194,'(.*)'),(84,195,'com/google/update/UpdateService');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,10,1),(2,30,3),(3,31,4),(4,32,5),(5,34,6),(6,36,7),(7,38,8),(8,40,9),(9,42,10),(10,43,11),(11,45,12),(12,46,13),(13,48,14),(14,47,15),(15,49,16),(16,50,17),(17,52,18),(18,53,19),(19,55,20),(20,56,21),(21,58,22),(22,62,24),(23,63,25),(24,67,26),(25,70,27),(26,69,29),(27,72,30),(28,71,31),(29,73,32),(30,74,33),(31,75,34),(32,77,35),(33,78,36),(34,80,37),(35,81,39),(36,82,38),(37,85,40),(38,87,41),(39,88,42),(40,89,43),(41,92,44),(42,91,45),(43,94,46),(44,98,47),(45,99,49),(46,97,48),(47,100,50),(48,102,51),(49,103,52),(50,105,53),(51,106,54),(52,109,55),(53,110,56),(54,113,57),(55,115,58),(56,118,59),(57,120,60),(58,121,61),(59,123,63),(60,124,62),(61,127,64),(62,128,65),(63,132,66),(64,133,67),(65,148,68),(66,153,69),(67,156,70),(68,158,71),(69,159,72),(70,160,73),(71,161,74),(72,162,75),(73,163,76),(74,164,77),(75,165,78),(76,166,79),(77,167,80),(78,168,81),(79,169,82),(80,173,83),(81,174,84),(82,178,85),(83,184,86),(84,193,89),(85,196,90),(86,198,91),(87,199,92),(88,200,93),(89,201,94),(90,202,95);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'MSG'),(2,1,'TYPEdsada'),(3,2,'TYPEdsada'),(4,5,'MSG'),(5,5,'TYPEdsada'),(6,6,'TYPEdsada'),(7,23,'TYPEdsada'),(8,24,'MSG'),(9,24,'TYPEdsada'),(10,25,'TYPEdsada'),(11,26,'MSG'),(12,26,'TYPEdsada'),(13,31,'android.intent.extra.TEXT'),(14,31,'android.intent.extra.SUBJECT'),(15,31,'android.intent.extra.EMAIL'),(16,32,'sms_body'),(17,37,'url'),(18,38,'android.intent.extra.EMAIL'),(19,40,'android.intent.extra.TEXT'),(20,40,'android.intent.extra.EMAIL'),(21,45,'android.intent.extra.TEXT'),(22,45,'android.intent.extra.SUBJECT'),(23,45,'android.intent.extra.EMAIL'),(24,47,'sms_body'),(25,54,'MSG'),(26,54,'TYPEdsada'),(27,55,'android.intent.extra.EMAIL'),(28,56,'android.intent.extra.EMAIL'),(29,57,'TYPEdsada'),(30,58,'android.intent.extra.TEXT'),(31,58,'android.intent.extra.EMAIL'),(32,60,'android.intent.extra.TEXT'),(33,61,'data'),(34,61,'mode'),(35,60,'android.intent.extra.SUBJECT'),(36,60,'android.intent.extra.EMAIL'),(37,63,'android.intent.extra.TEXT'),(38,63,'android.intent.extra.SUBJECT'),(39,63,'android.intent.extra.EMAIL'),(40,80,'android.intent.extra.EMAIL'),(41,81,'android.intent.extra.TEXT'),(42,81,'android.intent.extra.EMAIL'),(43,83,'USER_ID'),(44,83,'CLIENT_PACKAGE'),(45,83,'Offers_URL'),(46,83,'offers_webview_tag'),(47,83,'URL_PARAMS'),(48,87,'make_readable_cmd'),(49,86,'android.intent.extra.TEXT'),(50,87,'restore_permissions_cmd'),(51,86,'android.intent.extra.SUBJECT'),(52,87,'permissions'),(53,86,'android.intent.extra.EMAIL'),(54,87,'make_writeable_cmd'),(55,88,'sms_body'),(56,89,'android.intent.extra.TEXT'),(57,89,'android.intent.extra.SUBJECT'),(58,89,'android.intent.extra.EMAIL'),(59,91,'make_readable_cmd'),(60,91,'restore_permissions_cmd'),(61,91,'permissions'),(62,91,'make_writeable_cmd'),(63,95,'query'),(64,97,'make_readable_cmd'),(65,97,'restore_permissions_cmd'),(66,97,'permissions'),(67,104,'url'),(68,107,'android.live_wallpaper.package'),(69,107,'android.live_wallpaper.settings'),(70,109,'android.intent.extra.TEXT'),(71,110,'edit_mode'),(72,109,'android.intent.extra.EMAIL'),(73,110,'permissions'),(74,118,'sms_body'),(75,126,'query'),(76,134,'MSG'),(77,134,'TYPEdsada'),(78,135,'location'),(79,137,'TYPEdsada'),(80,148,'make_readable_cmd'),(81,148,'restore_permissions_cmd'),(82,148,'permissions'),(83,152,'Notify_Url_Params'),(84,152,'UrlPath'),(85,152,'ACTIVITY_FLAG'),(86,152,'isFinshClose'),(87,153,'permissions'),(88,152,'offers_webview_tag'),(89,153,'size'),(90,154,'UrlPath'),(91,154,'ACTIVITY_FLAG'),(92,154,'isFinshClose'),(93,154,'offers_webview_tag'),(94,157,'iconid'),(95,157,'name'),(96,157,'permissions'),(97,157,'fullpath'),(98,161,'make_readable_cmd'),(99,161,'restore_permissions_cmd'),(100,161,'permissions'),(101,161,'make_writeable_cmd'),(102,162,'make_readable_cmd'),(103,162,'restore_permissions_cmd'),(104,162,'permissions'),(105,162,'make_writeable_cmd'),(106,163,'make_readable_cmd'),(107,163,'restore_permissions_cmd'),(108,163,'permissions'),(109,166,'edit_mode'),(110,166,'permissions'),(111,170,'data'),(112,170,'zip_name'),(113,170,'mode'),(114,171,'make_readable_cmd'),(115,171,'restore_permissions_cmd'),(116,171,'table'),(117,171,'make_writeable_cmd'),(118,172,'data'),(119,172,'zip_name'),(120,172,'mode'),(121,173,'chmod_value'),(122,173,'permissions'),(123,173,'edit_mode'),(124,173,'owner'),(125,173,'group'),(126,173,'size'),(127,174,'edit_mode'),(128,174,'permissions'),(129,174,'owner'),(130,174,'group'),(131,174,'size'),(132,182,'MSG'),(133,182,'TYPEdsada'),(134,183,'TYPEdsada'),(135,185,'UrlPath'),(136,185,'ACTIVITY_FLAG'),(137,185,'isFinshClose'),(138,185,'offers_webview_tag'),(139,186,'Notify_Url_Params'),(140,186,'UrlPath'),(141,186,'ACTIVITY_FLAG'),(142,186,'isFinshClose'),(143,186,'offers_webview_tag'),(144,191,'MSG'),(145,191,'TYPEdsada'),(146,192,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,1),(7,5,5),(8,6,5),(9,7,2),(10,7,3),(11,7,4),(12,8,1),(13,9,4),(14,9,2),(15,9,3),(16,10,7),(17,10,6),(18,11,1),(19,12,1),(20,13,7),(21,13,6),(22,14,6),(23,14,7),(24,15,4),(25,15,2),(26,15,3),(27,16,2),(28,16,3),(29,16,4),(30,17,1),(31,18,9),(32,19,3),(33,19,2),(34,19,4),(35,20,1),(36,21,2),(37,21,3),(38,21,4),(39,22,17),(40,23,17),(41,24,17),(42,25,17);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,5,2),(4,6,2),(5,8,1),(6,11,1),(7,12,1),(8,17,1),(9,20,1);
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
INSERT INTO `IFData` VALUES (1,22,'package',NULL,NULL,NULL,NULL,NULL),(2,23,'package',NULL,NULL,NULL,NULL,NULL),(3,24,'package',NULL,NULL,NULL,NULL,NULL),(4,25,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,34,'*','*'),(2,49,'(.*)','(.*)'),(3,50,'*','*'),(4,60,'message','rfc882'),(5,69,'(.*)','(.*)'),(6,71,'(.*)','(.*)'),(7,73,'application','vnd.ms-powerpoint'),(8,74,'application','vnd.android.package-archive'),(9,78,'image','*'),(10,82,'application','pdf'),(11,86,'message','rfc882'),(12,94,'(.*)','(.*)'),(13,99,'*','*'),(14,103,'application','msword'),(15,106,'application','vnd.ms-excel'),(16,115,'application','vnd.android.package-archive'),(17,120,'audio','*'),(18,123,'video','*'),(19,124,'application','vnd.android.package-archive'),(20,127,'*','*'),(21,158,'application','vnd.ms-powerpoint'),(22,159,'image','*'),(23,160,'application','pdf'),(24,164,'application','msword'),(25,165,'application','vnd.ms-excel'),(26,167,'application','vnd.android.package-archive'),(27,168,'audio','*'),(28,169,'video','*'),(29,178,'application','vnd.android.package-archive'),(30,184,'application','vnd.android.package-archive'),(31,196,'application','vnd.android.package-archive'),(32,198,'application','vnd.android.package-archive'),(33,199,'application','vnd.android.package-archive'),(34,200,'application','vnd.android.package-archive'),(35,201,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.fingerscanner'),(2,2,'com.tutusw.fingerscanner'),(3,3,'com.tutusw.fingerscanner'),(4,4,'com.tutusw.fingerscanner'),(5,5,'com.tutusw.fingerscanner'),(6,6,'com.tutusw.fingerscanner'),(7,7,'com.tutusw.fingerscanner'),(8,8,'com.tutusw.fingerscanner'),(9,9,'com.tutusw.fingerscanner'),(10,11,'com.tutusw.fingerscanner'),(11,12,'com.tutusw.fingerscanner'),(12,13,'com.tutusw.fingerscanner'),(13,14,'com.tutusw.fingerscanner'),(14,16,'com.ps.square'),(15,17,'com.ps.square'),(16,18,'com.ps.square'),(17,19,'com.ps.square'),(18,20,'com.ps.square'),(19,21,'com.noshufou.android.su'),(20,22,'com.noshufou.android.su'),(21,23,'com.ps.square'),(22,24,'com.ps.square'),(23,25,'com.ps.square'),(24,26,'com.ps.square'),(25,28,'com.safetest.pvz'),(26,29,'com.safetest.pvz'),(27,33,'com.safetest.five'),(28,35,'com.safetest.five'),(29,37,'com.safetest.pvz'),(30,39,'com.safetest.five'),(31,41,'com.safetest.five'),(32,44,'com.google.android.apps.maps'),(33,54,'com.livegame.wallpaperxiaopohai'),(34,57,'com.livegame.wallpaperxiaopohai'),(35,61,'com.safesys.superexplorer'),(36,65,'com.livegame.wallpaperxiaopohai'),(37,64,'com.google.android.apps.maps'),(38,66,'com.safesys.superexplorer'),(39,75,'com.google.android.apps.maps'),(40,83,'com.livegame.wallpaperxiaopohai'),(41,85,'com.google.android.apps.maps'),(42,90,'(.*)'),(43,87,'com.safesys.sqleditor'),(44,92,'com.google.android.apps.maps'),(45,91,'com.safesys.superexplorer'),(46,96,'com.livegame.wallpaperxiaopohai'),(47,97,'com.safesys.superexplorer'),(48,100,'com.google.android.apps.maps'),(49,104,'com.safetest.five'),(50,105,'com.google.android.apps.maps'),(51,110,'com.safesys.superexplorer'),(52,113,'com.google.android.apps.maps'),(53,116,'(.*)'),(54,117,'com.safetest.pvz'),(55,119,'(.*)'),(56,122,'com.noshufou.android.su'),(57,121,'com.google.android.apps.maps'),(58,125,'com.noshufou.android.su'),(59,129,'com.safetest.pvz'),(60,131,'NULL-CONSTANT'),(61,133,'com.google.android.apps.maps'),(62,134,'com.livegame.wallpaperxiaopohai'),(63,135,'com.safesys.superexplorer'),(64,137,'com.livegame.wallpaperxiaopohai'),(65,138,'com.safesys.superexplorer'),(66,139,'com.safetest.five'),(67,140,'com.noshufou.android.su'),(68,142,'com.safetest.five'),(69,141,'com.noshufou.android.su'),(70,143,'com.noshufou.android.su'),(71,144,'com.noshufou.android.su'),(72,145,'com.noshufou.android.su'),(73,146,'com.noshufou.android.su'),(74,147,'com.livegame.wallpaperxiaopohai'),(75,149,'com.livegame.wallpaperxiaopohai'),(76,150,'com.safetest.five'),(77,148,'com.safesys.superexplorer'),(78,151,'com.safetest.five'),(79,152,'com.livegame.wallpaperxiaopohai'),(80,153,'com.safesys.superexplorer'),(81,154,'com.livegame.wallpaperxiaopohai'),(82,155,'com.safesys.superexplorer'),(83,157,'com.safesys.superexplorer'),(84,161,'com.safesys.sqleditor'),(85,162,'com.safesys.superexplorer'),(86,163,'com.safesys.superexplorer'),(87,166,'com.safesys.superexplorer'),(88,170,'com.safesys.superexplorer'),(89,171,'com.safesys.superexplorer'),(90,172,'com.safesys.superexplorer'),(91,173,'com.safesys.superexplorer'),(92,174,'com.safesys.superexplorer'),(93,175,'com.gp.jewels'),(94,176,'com.gp.jewels'),(95,177,'com.gp.jewels'),(96,180,'(.*)'),(97,181,'(.*)'),(98,182,'com.gp.jewels'),(99,183,'com.gp.jewels'),(100,185,'com.gp.jewels'),(101,186,'com.gp.jewels'),(102,188,'NULL-CONSTANT'),(103,189,'com.noshufou.android.su'),(104,190,'com.noshufou.android.su'),(105,191,'com.gp.jewels'),(106,192,'com.gp.jewels'),(107,194,'(.*)'),(108,195,'com.gp.jewels');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,10,0),(5,11,0),(6,12,0),(7,15,0),(8,16,0),(9,29,0),(10,8,0),(11,30,0),(12,31,0),(13,32,0),(14,7,0),(15,43,0),(16,44,0),(17,45,0),(18,54,0),(19,56,0),(20,57,0),(21,66,0),(22,67,0),(23,68,0),(24,69,0),(25,69,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,0,0),(4,3,0,0),(5,4,0,0),(6,4,0,0),(7,5,1,0),(8,5,1,0),(9,6,0,0),(10,7,1,0),(11,8,0,0),(12,9,0,0),(13,10,0,0),(14,11,0,0),(15,12,1,0),(16,13,0,0),(17,14,0,0),(18,15,1,0),(19,15,1,0),(20,16,0,0),(21,17,1,0),(22,17,1,0),(23,18,0,0),(24,18,0,0),(25,19,0,0),(26,19,0,0),(27,20,1,0),(28,22,0,0),(29,23,0,0),(30,24,1,0),(31,24,1,0),(32,24,1,0),(33,25,0,0),(34,24,1,0),(35,26,0,0),(36,24,1,0),(37,24,0,0),(38,24,1,0),(39,27,0,0),(40,24,1,0),(41,28,0,0),(42,24,1,0),(43,29,1,0),(44,24,0,0),(45,29,1,0),(46,24,1,0),(47,29,1,0),(48,24,1,0),(49,24,1,0),(50,29,1,0),(51,24,1,0),(52,29,1,0),(53,24,1,0),(54,30,0,0),(55,29,1,0),(56,24,1,0),(57,30,0,0),(58,29,1,0),(59,24,1,0),(60,24,1,0),(61,31,0,0),(62,29,1,0),(63,24,1,0),(64,29,0,0),(65,33,0,0),(66,34,0,0),(67,29,1,0),(68,24,1,0),(69,24,1,0),(70,29,1,0),(71,29,1,0),(72,24,1,0),(73,37,1,0),(74,38,1,0),(75,24,0,0),(76,29,1,0),(77,29,1,0),(78,37,1,0),(79,24,1,0),(80,29,1,0),(81,24,1,0),(82,37,1,0),(83,39,0,0),(84,29,1,0),(85,24,0,0),(86,29,1,0),(87,37,0,0),(88,24,1,0),(89,29,1,0),(90,40,0,0),(91,37,0,0),(92,24,0,0),(93,29,1,0),(94,29,1,0),(95,24,1,0),(96,41,0,0),(97,37,0,0),(98,29,1,0),(99,24,1,0),(100,29,0,0),(101,24,1,0),(102,24,1,0),(103,37,1,0),(104,29,0,0),(105,24,0,0),(106,37,1,0),(107,42,1,0),(108,29,1,0),(109,29,1,0),(110,37,0,0),(111,24,1,0),(112,43,1,0),(113,29,0,0),(114,44,1,0),(115,37,1,0),(116,44,1,0),(117,45,0,0),(118,29,1,0),(119,44,1,0),(120,37,1,0),(121,29,0,0),(122,46,1,0),(123,37,1,0),(124,47,1,0),(125,46,1,0),(126,29,1,0),(127,29,1,0),(128,48,1,0),(129,49,0,0),(130,29,1,0),(131,50,0,0),(132,29,1,0),(133,29,0,0),(134,51,0,0),(135,52,0,0),(136,29,1,0),(137,51,0,0),(138,53,0,0),(139,54,0,0),(140,55,1,0),(141,56,1,0),(142,57,0,0),(143,55,1,0),(144,56,1,0),(145,58,1,0),(146,58,1,0),(147,59,1,0),(148,60,0,0),(149,59,1,0),(150,61,0,0),(151,62,0,0),(152,63,0,0),(153,64,0,0),(154,63,0,0),(155,65,0,0),(156,66,1,0),(157,67,0,0),(158,69,1,0),(159,69,1,0),(160,69,1,0),(161,69,0,0),(162,69,0,0),(163,69,0,0),(164,69,1,0),(165,69,1,0),(166,69,0,0),(167,69,1,0),(168,69,1,0),(169,69,1,0),(170,70,0,0),(171,71,0,0),(172,72,0,0),(173,74,0,0),(174,74,0,0),(175,75,0,0),(176,76,1,0),(177,76,1,0),(178,77,1,0),(179,78,1,0),(180,78,1,0),(181,78,1,0),(182,79,0,0),(183,79,0,0),(184,80,1,0),(185,81,0,0),(186,81,0,0),(187,82,1,0),(188,83,0,0),(189,84,1,0),(190,84,1,0),(191,86,0,0),(192,86,0,0),(193,88,1,0),(194,89,0,0),(195,90,0,0),(196,91,1,0),(197,91,1,0),(198,91,1,0),(199,91,1,0),(200,91,1,0),(201,91,1,0),(202,92,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,3,6,2,NULL),(2,4,2,2,NULL),(3,11,3,2,NULL),(4,12,6,2,NULL),(5,14,6,2,NULL),(6,114,1,2,NULL),(7,116,1,2,NULL),(8,119,1,2,NULL),(9,179,1,2,NULL),(10,180,1,2,NULL),(11,181,1,2,NULL),(12,1,4,2,NULL),(13,2,4,2,NULL),(14,5,4,2,NULL),(15,6,4,2,NULL),(16,9,5,2,NULL),(17,114,7,2,NULL),(18,116,7,2,NULL),(19,119,7,2,NULL),(20,179,7,2,NULL),(21,180,7,2,NULL),(22,181,7,2,NULL),(23,13,6,2,NULL),(24,114,8,2,NULL),(25,116,8,2,NULL),(26,119,8,2,NULL),(27,179,8,2,NULL),(28,180,8,2,NULL),(29,181,8,2,NULL),(30,114,32,2,NULL),(31,116,32,2,NULL),(32,119,32,2,NULL),(33,179,32,2,NULL),(34,180,32,2,NULL),(35,181,32,2,NULL),(36,114,10,2,NULL),(37,116,10,2,NULL),(38,119,10,2,NULL),(39,179,10,2,NULL),(40,180,10,2,NULL),(41,181,10,2,NULL),(42,114,11,2,NULL),(43,116,11,2,NULL),(44,119,11,2,NULL),(45,179,11,2,NULL),(46,180,11,2,NULL),(47,181,11,2,NULL),(48,114,12,2,NULL),(49,116,12,2,NULL),(50,119,12,2,NULL),(51,179,12,2,NULL),(52,180,12,2,NULL),(53,181,12,2,NULL),(54,23,13,2,NULL),(55,23,53,2,NULL),(56,23,63,2,NULL),(57,24,13,2,NULL),(58,24,53,2,NULL),(59,24,63,2,NULL),(60,25,13,2,NULL),(61,25,53,2,NULL),(62,25,63,2,NULL),(63,26,13,2,NULL),(64,26,53,2,NULL),(65,26,63,2,NULL),(66,16,14,2,NULL),(67,16,55,2,NULL),(68,16,65,2,NULL),(69,114,15,2,NULL),(70,116,15,2,NULL),(71,119,15,2,NULL),(72,179,15,2,NULL),(73,180,15,2,NULL),(74,181,15,2,NULL),(75,114,45,2,NULL),(76,116,45,2,NULL),(77,119,45,2,NULL),(78,179,45,2,NULL),(79,180,45,2,NULL),(80,181,45,2,NULL),(81,114,16,2,NULL),(82,116,16,2,NULL),(83,119,16,2,NULL),(84,114,29,2,NULL),(85,116,29,2,NULL),(86,119,29,2,NULL),(87,114,31,2,NULL),(88,116,31,2,NULL),(89,119,31,2,NULL),(90,114,44,2,NULL),(91,116,44,2,NULL),(92,119,44,2,NULL),(93,114,30,2,NULL),(94,116,30,2,NULL),(95,119,30,2,NULL),(96,114,43,2,NULL),(97,116,43,2,NULL),(98,119,43,2,NULL),(99,114,54,2,NULL),(100,116,54,2,NULL),(101,119,54,2,NULL),(102,114,56,2,NULL),(103,116,56,2,NULL),(104,119,56,2,NULL),(105,114,57,2,NULL),(106,116,57,2,NULL),(107,119,57,2,NULL),(108,114,66,2,NULL),(109,116,66,2,NULL),(110,119,66,2,NULL),(111,179,54,2,NULL),(112,180,54,2,NULL),(113,181,54,2,NULL),(114,54,13,2,NULL),(115,54,53,2,NULL),(116,54,63,2,NULL),(117,57,13,2,NULL),(118,57,53,2,NULL),(119,57,63,2,NULL),(120,134,13,2,NULL),(121,134,53,2,NULL),(122,134,63,2,NULL),(123,137,13,2,NULL),(124,137,53,2,NULL),(125,137,63,2,NULL),(126,96,14,2,NULL),(127,96,55,2,NULL),(128,96,65,2,NULL),(129,179,56,2,NULL),(130,180,56,2,NULL),(131,181,56,2,NULL),(132,61,26,2,NULL),(133,91,25,2,NULL),(134,97,23,2,NULL),(135,110,19,2,NULL),(136,135,21,2,NULL),(137,138,22,2,NULL),(138,155,20,2,NULL),(139,157,17,2,NULL),(140,170,26,2,NULL),(141,172,26,2,NULL),(142,179,16,2,NULL),(143,180,16,2,NULL),(144,181,16,2,NULL),(145,171,24,2,NULL),(146,66,28,2,NULL),(147,179,29,2,NULL),(148,180,29,2,NULL),(149,181,29,2,NULL),(150,33,40,2,NULL),(151,179,31,2,NULL),(152,180,31,2,NULL),(153,181,31,2,NULL),(154,39,40,2,NULL),(155,139,42,2,NULL),(156,150,40,2,NULL),(157,41,42,2,NULL),(158,179,44,2,NULL),(159,180,44,2,NULL),(160,181,44,2,NULL),(161,28,41,2,NULL),(162,179,30,2,NULL),(163,180,30,2,NULL),(164,181,30,2,NULL),(165,117,41,2,NULL),(166,179,43,2,NULL),(167,180,43,2,NULL),(168,181,43,2,NULL),(169,179,57,2,NULL),(170,180,57,2,NULL),(171,181,57,2,NULL),(172,175,57,2,NULL),(173,179,66,2,NULL),(174,180,66,2,NULL),(175,181,66,2,NULL),(176,182,13,2,NULL),(177,182,53,2,NULL),(178,182,63,2,NULL),(179,183,13,2,NULL),(180,183,53,2,NULL),(181,183,63,2,NULL),(182,191,13,2,NULL),(183,191,53,2,NULL),(184,191,63,2,NULL),(185,192,13,2,NULL),(186,192,53,2,NULL),(187,192,63,2,NULL),(188,195,14,2,NULL),(189,195,55,2,NULL),(190,195,65,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(19,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(17,'android.permission.BIND_WALLPAPER'),(5,'android.permission.CHANGE_WIFI_STATE'),(1,'android.permission.DISABLE_KEYGUARD'),(15,'android.permission.GET_TASKS'),(8,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(18,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(21,'android.permission.RECORD_AUDIO'),(14,'android.permission.RESTART_PACKAGES'),(6,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(10,'android.permission.WRITE_EXTERNAL_STORAGE'),(11,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://android.thinkchange.mobi',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(19,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(24,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(35,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(51,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(53,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(54,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(57,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(58,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(59,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(60,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(61,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(62,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'market://search?q=pname:com.safesys.sqleditor',NULL,NULL,NULL),(66,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(68,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(69,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(70,NULL,NULL,'market://search?q=pname:com.safesys.superexplorer',NULL,NULL,NULL),(71,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(72,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(73,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(74,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(75,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(76,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(77,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(78,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(79,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(80,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(81,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(82,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(83,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(84,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(85,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(86,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(87,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(88,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(89,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(90,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(91,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(92,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(93,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(94,NULL,NULL,'file://',NULL,NULL,NULL),(95,NULL,NULL,'',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,21,2),(2,32,23),(3,36,28),(4,85,87),(5,87,88);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,2),(9,2,3),(10,2,4),(11,2,5),(12,2,7),(13,2,8),(14,2,9),(15,2,10),(16,2,11),(17,2,12),(18,2,13),(19,3,2),(20,3,4),(21,3,9),(22,3,10),(23,3,11),(24,3,12),(25,3,13),(26,4,2),(27,5,2),(28,4,4),(29,5,4),(30,4,7),(31,5,7),(32,4,9),(33,5,9),(34,4,11),(35,5,11),(36,4,12),(37,5,12),(38,4,13),(39,5,13),(40,4,14),(41,6,16),(42,6,2),(43,6,3),(44,6,4),(45,6,5),(46,6,7),(47,6,10),(48,6,12),(49,6,13),(50,6,15),(51,7,2),(52,7,3),(53,7,4),(54,7,5),(55,7,6),(56,7,7),(57,7,10),(58,7,12),(59,7,13),(60,7,15),(61,7,16),(62,7,19),(63,7,18),(64,7,21),(65,7,20);
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
