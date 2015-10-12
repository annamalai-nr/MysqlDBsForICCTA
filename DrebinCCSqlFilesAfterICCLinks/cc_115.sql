-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_115
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(25,'<INTENT>'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.CHOOSER'),(19,'android.intent.action.CREATE_SHORTCUT'),(10,'android.intent.action.DIAL'),(18,'android.intent.action.EDIT'),(20,'android.intent.action.GET_CONTENT'),(21,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(17,'android.intent.action.PICK'),(23,'android.intent.action.SEARCH'),(11,'android.intent.action.SEND'),(12,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(13,'android.intent.action.VIEW'),(15,'android.intent.action.WEB_SEARCH'),(8,'android.net.conn.CONNECTIVITY_CHANGE'),(22,'com.android.notepad.action.EDIT_NOTE'),(5,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(30,'com.openintents.action.CRYPTO_LOGGED_OUT'),(26,'com.openintents.action.DECRYPT'),(28,'com.openintents.action.DELETED'),(29,'com.openintents.action.INSERTED'),(27,'com.openintents.action.MODIFIED'),(31,'com.openintents.action.PICK_FILE'),(24,'com.openintents.notepad.action.SAVE_TO_SD_CARD'),(7,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(9,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',7),(2,'com.ps.kickfly',7),(3,'com.safetest.tank',9),(4,'com.alan.siwameinv1',6),(5,'com.alan.siwameinv6',1),(6,'net.atools.android.cmwrap',4),(7,'com.openintents.notepad',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (7,'<INTENT>'),(5,'android.intent.category.ALTERNATIVE'),(3,'android.intent.category.BROWSABLE'),(4,'android.intent.category.DEFAULT'),(2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(6,'android.intent.category.SELECTED_ALTERNATIVE');
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
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,2,'com.ps.kickfly.GameMainActivity'),(6,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(7,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(8,2,'com.ps.kickfly.KickFly'),(9,1,'com.tutusw.onekeyvpn.ImportFiles'),(10,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(11,2,'com.ps.kickfly.GameModeActivity'),(12,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(13,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(14,2,'com.google.update.Dialog'),(15,2,'com.google.update.UpdateService'),(16,2,'com.google.update.Receiver'),(17,3,'com.safetest.tank.main'),(18,3,'com.safetest.tank.SelectLevel'),(19,3,'com.safetest.tank.gameActivity'),(20,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(21,3,'com.safetest.tank.ShowTips'),(22,3,'com.safetest.tank.UpdateService'),(23,3,'com.safetest.tank.Receiver'),(24,4,'com.alan.siwameinv1.PaperCollection'),(25,4,'com.alan.siwameinv1.PictureGrid'),(26,4,'com.google.ads.AdActivity'),(27,4,'com.vpon.adon.android.WebInApp'),(28,4,'com.adwo.adsdk.AdwoSplashAdActivity'),(29,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(30,4,'com.waps.OffersWebView'),(31,4,'com.google.update.Dialog'),(32,4,'com.google.update.UpdateService'),(33,4,'com.google.update.Receiver'),(34,2,'com.google.update.Dialog$2'),(35,5,'com.alan.siwameinv6.PaperCollection'),(36,5,'com.alan.siwameinv6.PictureGrid'),(37,5,'com.google.ads.AdActivity'),(38,5,'com.vpon.adon.android.WebInApp'),(39,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(40,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(41,2,'com.google.update.Dialog$1'),(42,5,'com.waps.OffersWebView'),(43,5,'com.google.update.Dialog'),(44,5,'com.google.update.UpdateService'),(45,5,'com.google.update.Receiver'),(46,2,'com.google.update.UpdateService$AA'),(47,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(48,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(49,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(50,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(51,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(52,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(53,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(54,3,'com.adwo.adsdk.g'),(55,4,'com.google.update.Dialog$2'),(56,5,'com.google.update.Dialog$2'),(57,4,'com.google.update.Dialog$1'),(58,5,'com.google.update.Dialog$1'),(59,5,'com.waps.AppConnect'),(60,4,'com.waps.o'),(61,4,'com.google.update.UpdateService$AA'),(62,5,'com.waps.m'),(63,4,'com.waps.z'),(64,5,'com.ju6.a'),(65,5,'com.google.update.UpdateService$MyThread'),(66,5,'com.waps.k'),(67,4,'com.waps.AppConnect'),(68,3,'com.safetest.tank.ShowTips$1'),(69,4,'com.waps.aa'),(70,4,'com.waps.q'),(71,4,'com.waps.ac'),(72,6,'net.atools.android.cmwrap.Cmwrap'),(73,6,'net.atools.android.cmwrap.Config'),(74,6,'net.atools.android.cmwrap.TestActivity'),(75,6,'com.atools.battery.ShowTips'),(76,6,'net.atools.android.cmwrap.services.WrapService'),(77,6,'com.atools.battery.UpdateService'),(78,6,'net.atools.android.cmwrap.services.NetworkDetector'),(79,7,'com.openintents.notepad.noteslist.NotesList'),(80,7,'com.openintents.notepad.NoteEditor'),(81,7,'com.openintents.notepad.search.SearchQueryResultsActivity'),(82,7,'com.openintents.notepad.activity.SaveFileActivity'),(83,7,'com.openintents.notepad.crypto.EncryptActivity'),(84,7,'com.openintents.notepad.filename.DialogHostingActivity'),(85,7,'com.openintents.notepad.PreferenceActivity'),(86,7,'com.openintents.distribution.EulaActivity'),(87,7,'com.openintents.distribution.NewVersionActivity'),(88,7,'com.google.ads.AdActivity'),(89,7,'com.millennialmedia.android.MMAdViewOverlayActivity'),(90,7,'com.millennialmedia.android.VideoPlayer'),(91,7,'net.youmi.android.AdActivity'),(92,7,'com.vpon.adon.android.WebInApp'),(93,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(94,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(95,7,'com.waps.OffersWebView'),(96,7,'com.google.update.Dialog'),(97,7,'com.google.update.UpdateService'),(98,7,'com.google.update.Receiver'),(99,7,'com.openintents.notepad.NotePadProvider'),(100,7,'com.openintents.notepad.search.SearchSuggestionProvider'),(101,6,'net.atools.android.cmwrap.utils.Utils'),(102,6,'com.atools.battery.m'),(103,6,'net.atools.android.cmwrap.services.NetworkDetector$initor'),(104,7,'com.openintents.notepad.search.FullTextSearch'),(105,7,'com.google.update.Dialog$1'),(106,7,'com.openintents.notepad.filename.FilenameDialog'),(107,7,'com.waps.aa'),(108,7,'com.google.update.Dialog$2'),(109,7,'com.waps.z'),(110,7,'com.openintents.distribution.DownloadAppDialog'),(111,7,'com.google.update.UpdateService$AA'),(112,7,'com.openintents.notepad.noteslist.TagsDialog'),(113,7,'com.waps.o'),(114,7,'com.waps.AppConnect'),(115,7,'com.waps.ac'),(116,7,'com.openintents.notepad.noteslist.NotesListCursor'),(117,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(118,7,'com.openintents.notepad.noteslist.NotesList$1'),(119,7,'com.waps.q');
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
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'shouldEnableBottomBar'),(2,15,'ST_MY_PID'),(3,13,'transitionTime'),(4,13,'shouldResizeOverlay'),(5,14,'TYPEdsada'),(6,15,'ST_START_DELAY'),(7,14,'MSG'),(8,13,'overlayTransition'),(9,13,'shouldMakeOverlayTransparent'),(10,13,'overlayTitle'),(11,13,'shouldShowBottomBar'),(12,13,'shouldShowTitlebar'),(13,13,'url'),(14,20,'overlayTitle'),(15,20,'shouldShowBottomBar'),(16,22,'SAFE_START'),(17,21,'MM'),(18,20,'shouldMakeOverlayTransparent'),(19,20,'shouldShowTitlebar'),(20,20,'shouldEnableBottomBar'),(21,20,'url'),(22,19,'level'),(23,20,'overlayTransition'),(24,20,'shouldResizeOverlay'),(25,22,'SAFE_PID'),(26,20,'transitionTime'),(27,30,'WAPS_ID'),(28,25,'WAPS_ID'),(29,29,'shouldResizeOverlay'),(30,31,'TYPEdsada'),(31,25,'UMENG_APPKEY'),(32,39,'url'),(33,35,'WAPS_ID'),(34,40,'URL'),(35,30,'CLIENT_PACKAGE'),(36,25,'CLIENT_PACKAGE'),(37,41,'MSG'),(38,35,'WAPS_PID'),(39,30,'Offers_URL'),(40,32,'ST_START_DELAY'),(41,40,'CLIENT_PACKAGE'),(42,30,'APP_ID'),(43,39,'shouldEnableBottomBar'),(44,25,'APP_ID'),(45,39,'shouldShowTitlebar'),(46,27,'adWidth'),(47,39,'overlayTitle'),(48,29,'shouldShowBottomBar'),(49,38,'isTestMode'),(50,38,'Adwo_PID'),(51,40,'URL_PARAMS'),(52,42,'ST_START_DELAY'),(53,35,'DEVICE_ID'),(54,40,'Offers_URL'),(55,30,'offers_webview_tag'),(56,36,'params'),(57,30,'WAPS_PID'),(58,25,'WAPS_PID'),(59,29,'overlayTransition'),(60,35,'APP_ID'),(61,42,'ST_MY_PID'),(62,37,'url'),(63,39,'shouldShowBottomBar'),(64,35,'CLIENT_PACKAGE'),(65,36,'action'),(66,39,'overlayTransition'),(67,39,'transitionTime'),(68,30,'USER_ID'),(69,30,'URL'),(70,29,'shouldShowTitlebar'),(71,37,'adWidth'),(72,40,'USER_ID'),(73,30,'UrlPath'),(74,28,'Adwo_PID'),(75,31,'MSG'),(76,27,'url'),(77,36,'com.google.ads.AdOpener'),(78,30,'URL_PARAMS'),(79,39,'shouldMakeOverlayTransparent'),(80,39,'shouldResizeOverlay'),(81,41,'TYPEdsada'),(82,29,'shouldMakeOverlayTransparent'),(83,28,'isTestMode'),(84,32,'ST_MY_PID'),(85,29,'overlayTitle'),(86,30,'SHWO_FLAG'),(87,40,'isFinshClose'),(88,29,'shouldEnableBottomBar'),(89,30,'ACTIVITY_FLAG'),(90,30,'Notify_Url_Params'),(91,30,'Notify_Id'),(92,29,'transitionTime'),(93,30,'isFinshClose'),(94,25,'UMENG_CHANNEL'),(95,30,'DEVICE_ID'),(96,25,'DEVICE_ID'),(97,29,'url'),(98,52,'SAFE_START'),(99,50,'MM'),(100,52,'SAFE_PID'),(101,61,'com.openintents.extra.launch_activity_class'),(102,62,'com.openintents.extra.launch_activity_class'),(103,64,'shouldShowNavbar'),(104,54,'ctx_menu_position'),(105,64,'shouldShowTitlebar'),(106,64,'canAccelerate'),(107,72,'ST_MY_PID'),(108,69,'shouldMakeOverlayTransparent'),(109,55,'com.openintents.extra.TEXT'),(110,64,'transitionTime'),(111,55,'apply_text_before'),(112,70,'SHWO_FLAG'),(113,69,'shouldResizeOverlay'),(114,70,'WAPS_ID'),(115,54,'WAPS_ID'),(116,71,'TYPEdsada'),(117,55,'apply_text'),(118,70,'URL'),(119,70,'UrlPath'),(120,57,'save_filename'),(121,64,'shouldResizeOverlay'),(122,70,'URL_PARAMS'),(123,69,'shouldShowTitlebar'),(124,70,'Offers_URL'),(125,70,'CLIENT_PACKAGE'),(126,54,'CLIENT_PACKAGE'),(127,70,'offers_webview_tag'),(128,54,'ctx_menu_id'),(129,70,'Notify_Url_Params'),(130,70,'APP_ID'),(131,54,'APP_ID'),(132,70,'USER_ID'),(133,55,'selection_start'),(134,69,'shouldShowBottomBar'),(135,54,'last_filter'),(136,55,'selection_stop'),(137,55,'undo_revert'),(138,70,'ACTIVITY_FLAG'),(139,56,'query'),(140,57,'com.openintents.extra.TEXT'),(141,58,'com.openintents.notepad.extra.uri'),(142,54,'com.openintents.extra.TEXT'),(143,68,'Adwo_PID'),(144,55,'uri'),(145,55,'com.openintents.extra.TAGS'),(146,55,'com.openintents.extra.TEXT_AFTER_SELECTION'),(147,55,'apply_text_after'),(148,58,'com.openintents.notepad.extra.content_unchanged'),(149,61,'com.openintents.extra.launch_activity_package'),(150,62,'com.openintents.extra.launch_activity_package'),(151,69,'shouldEnableBottomBar'),(152,63,'action'),(153,69,'overlayTitle'),(154,55,'file_content'),(155,61,'com.openintents.extra.launch_activity_intent'),(156,62,'com.openintents.extra.launch_activity_intent'),(157,68,'isTestMode'),(158,59,'com.openintents.notepad.extra.uri'),(159,63,'com.google.ads.AdOpener'),(160,58,'com.openintents.notepad.extra.action'),(161,70,'DEVICE_ID'),(162,54,'DEVICE_ID'),(163,67,'adWidth'),(164,55,'state'),(165,70,'isFinshClose'),(166,67,'url'),(167,71,'MSG'),(168,55,'com.openintents.extra.TEXT_BEFORE_SELECTION'),(169,64,'overlayTitle'),(170,66,'A7D1721B9508405D8271AB82AC6D9B3C'),(171,72,'ST_START_DELAY'),(172,69,'overlayTransition'),(173,70,'WAPS_PID'),(174,54,'WAPS_PID'),(175,57,'save_content'),(176,69,'transitionTime'),(177,64,'overlayTransition'),(178,54,'com.openintents.notepad.extra.encrypted_text'),(179,55,'original_content'),(180,63,'params'),(181,58,'com.openintents.extra.TEXT_ARRAY'),(182,69,'url'),(183,70,'Notify_Id');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'r',1,4,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'s',0,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,36,'a',1,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,42,'a',0,NULL,NULL),(41,43,'a',0,NULL,NULL),(42,44,'s',0,NULL,NULL),(43,45,'r',1,NULL,NULL),(44,50,'r',1,NULL,NULL),(45,62,'r',1,NULL,NULL),(46,70,'r',1,NULL,NULL),(47,72,'a',1,NULL,NULL),(48,73,'a',0,NULL,NULL),(49,74,'a',0,NULL,NULL),(50,75,'a',0,NULL,NULL),(51,76,'s',0,NULL,NULL),(52,77,'s',0,NULL,NULL),(53,78,'r',1,NULL,NULL),(54,79,'a',1,NULL,NULL),(55,80,'a',1,NULL,NULL),(56,81,'a',1,NULL,NULL),(57,82,'a',1,NULL,NULL),(58,83,'a',0,NULL,NULL),(59,84,'a',0,NULL,NULL),(60,85,'a',0,NULL,NULL),(61,86,'a',0,NULL,NULL),(62,87,'a',0,NULL,NULL),(63,88,'a',0,NULL,NULL),(64,89,'a',0,NULL,NULL),(65,90,'a',0,NULL,NULL),(66,91,'a',0,NULL,NULL),(67,92,'a',0,NULL,NULL),(68,93,'a',0,NULL,NULL),(69,94,'a',0,NULL,NULL),(70,95,'a',0,NULL,NULL),(71,96,'a',0,NULL,NULL),(72,97,'s',0,NULL,NULL),(73,98,'r',1,NULL,NULL),(74,99,'p',0,NULL,NULL),(75,100,'p',0,NULL,NULL),(76,117,'r',1,NULL,NULL),(77,118,'r',1,NULL,NULL),(78,119,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,14),(2,2,15),(3,3,14),(4,4,15),(5,5,1),(6,5,10),(7,6,1),(8,7,16),(9,8,15),(10,9,1),(11,10,10),(12,10,1),(13,11,1),(14,12,10),(15,13,7),(16,14,1),(17,15,1),(18,15,10),(19,16,1),(20,16,10),(21,17,6),(22,18,1),(23,18,10),(24,19,1),(25,19,10),(26,20,1),(27,21,12),(28,22,9),(29,23,1),(30,24,1),(31,25,10),(32,25,1),(33,26,10),(34,26,1),(35,27,23),(36,28,17),(37,29,17),(38,30,17),(39,31,32),(40,32,31),(41,33,41),(42,34,31),(43,35,41),(44,36,33),(45,37,35),(46,38,30),(47,39,32),(48,41,42),(49,40,30),(50,42,42),(51,43,30),(52,44,40),(53,45,25),(54,46,43),(55,47,17),(56,48,42),(57,49,30),(58,50,21),(59,51,42),(60,52,30),(61,53,36),(62,54,30),(63,55,32),(64,56,53),(65,56,51),(66,56,49),(67,56,47),(68,57,47),(69,58,47),(70,59,50),(71,60,47),(72,61,53),(73,62,47),(74,63,57),(75,64,58),(76,65,54),(77,66,54),(78,67,54),(79,68,56),(80,69,58),(81,70,55),(82,71,55),(83,72,74),(84,73,54),(85,74,55),(86,75,63),(87,76,62),(88,76,61),(89,77,55),(90,78,71),(91,79,59),(92,80,54),(93,81,70),(94,82,71),(95,83,70),(96,84,54),(97,85,72),(98,86,56),(99,87,74),(100,88,54),(101,89,59),(102,89,58),(103,89,54),(104,90,74),(105,91,55),(106,92,54),(107,93,55),(108,94,72),(109,95,72),(110,96,70),(111,97,55),(112,98,54),(113,99,74),(114,100,70),(115,101,54),(116,102,70),(117,103,55),(118,104,74),(119,105,73),(120,106,57),(121,107,55),(122,108,58),(123,109,74),(124,110,55),(125,111,54),(126,112,54),(127,113,55),(128,114,55),(129,115,70),(130,116,56),(131,116,54),(132,117,55),(133,118,75),(134,119,54),(135,120,54),(136,121,54),(137,122,54),(138,123,55),(139,124,55),(140,125,56),(141,126,57),(142,127,54),(143,128,59),(144,129,59);
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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,34,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(2,15,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(3,41,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(4,46,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(5,47,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(6,48,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(7,16,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(8,15,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(9,49,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(10,47,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(11,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(12,10,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(13,7,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(14,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(15,47,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(16,47,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(17,6,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(18,51,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(19,51,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(20,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(21,12,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(22,52,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(23,10,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(24,49,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(25,53,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(26,47,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(27,23,'<com.safetest.tank.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(28,17,'<com.safetest.tank.main: void toGameActivity()>',8,'a',NULL),(29,17,'<com.safetest.tank.main: void onCreate(android.os.Bundle)>',14,'s',NULL),(30,54,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(31,32,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(32,55,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(33,56,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(34,57,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(35,58,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(36,33,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,59,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(38,60,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(39,61,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(40,63,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(41,64,'<com.ju6.a: boolean b()>',178,'p',NULL),(42,65,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(43,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(44,66,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(45,67,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(46,45,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(47,17,'<com.safetest.tank.main: boolean onTouchEvent(android.view.MotionEvent)>',21,'a',NULL),(48,44,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(49,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(50,68,'<com.safetest.tank.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(51,44,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(52,69,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(53,37,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(54,71,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(55,32,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(56,101,'<net.atools.android.cmwrap.utils.Utils: java.lang.String getCurrentDataConn(android.content.Context)>',6,'p',NULL),(57,72,'<net.atools.android.cmwrap.Cmwrap: void onStart()>',15,'s',NULL),(58,72,'<net.atools.android.cmwrap.Cmwrap: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(59,102,'<com.atools.battery.m: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,72,'<net.atools.android.cmwrap.Cmwrap: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(61,103,'<net.atools.android.cmwrap.services.NetworkDetector$initor: void run()>',70,'s',NULL),(62,72,'<net.atools.android.cmwrap.Cmwrap: void onClick(android.view.View)>',18,'s',NULL),(63,82,'<com.openintents.notepad.activity.SaveFileActivity: void askForFilename(android.net.Uri)>',6,'a',NULL),(64,83,'<com.openintents.notepad.crypto.EncryptActivity: void onCreate(android.os.Bundle)>',37,'a',NULL),(65,79,'<com.openintents.notepad.noteslist.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',21,'a',NULL),(66,79,'<com.openintents.notepad.noteslist.NotesList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',65,'a',NULL),(67,79,'<com.openintents.notepad.noteslist.NotesList: void onActivityResult(int,int,android.content.Intent)>',33,'a',NULL),(68,104,'<com.openintents.notepad.search.FullTextSearch: android.database.Cursor getCursor(android.content.Context,java.lang.String)>',21,'p',NULL),(69,83,'<com.openintents.notepad.crypto.EncryptActivity: void onActivityResult(int,int,android.content.Intent)>',34,'p',NULL),(70,80,'<com.openintents.notepad.NoteEditor: void getNoteFromContentProvider()>',62,'a',NULL),(71,80,'<com.openintents.notepad.NoteEditor: void onPause()>',33,'p',NULL),(72,99,'<com.openintents.notepad.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',41,'p',NULL),(73,79,'<com.openintents.notepad.noteslist.NotesList: void showNotesListSettings()>',3,'a',NULL),(74,80,'<com.openintents.notepad.NoteEditor: void deleteNote()>',8,'p',NULL),(75,88,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(76,86,'<com.openintents.distribution.EulaActivity: void startOriginalActivity()>',6,'a',NULL),(77,80,'<com.openintents.notepad.NoteEditor: void saveAsNote()>',12,'a',NULL),(78,105,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(79,106,'<com.openintents.notepad.filename.FilenameDialog: void showNoFileManagerAvailableDialog()>',6,'a',NULL),(80,79,'<com.openintents.notepad.noteslist.NotesList: boolean onContextItemSelected(android.view.MenuItem)>',18,'p',0),(81,107,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(82,108,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(83,109,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(84,79,'<com.openintents.notepad.noteslist.NotesList: void encryptNote(long,java.lang.String)>',43,'a',NULL),(85,97,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(86,81,'<com.openintents.notepad.search.SearchQueryResultsActivity: void showItem(android.content.Intent)>',6,'a',NULL),(87,99,'<com.openintents.notepad.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',20,'p',0),(88,79,'<com.openintents.notepad.noteslist.NotesList: void updateTagList()>',11,'p',0),(89,110,'<com.openintents.distribution.DownloadAppDialog: void startSaveActivity(android.content.Intent)>',3,'a',NULL),(90,99,'<com.openintents.notepad.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',25,'r',NULL),(91,80,'<com.openintents.notepad.NoteEditor: void importNote()>',36,'p',NULL),(92,79,'<com.openintents.notepad.noteslist.NotesList: void insertNewNote()>',7,'a',NULL),(93,80,'<com.openintents.notepad.NoteEditor: void importNote()>',25,'a',NULL),(94,111,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(95,97,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(96,95,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(97,80,'<com.openintents.notepad.NoteEditor: void encryptNote(boolean)>',27,'a',NULL),(98,112,'<com.openintents.notepad.noteslist.TagsDialog: void saveTags()>',44,'a',NULL),(99,99,'<com.openintents.notepad.NotePadProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',20,'p',0),(100,95,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(101,79,'<com.openintents.notepad.noteslist.NotesList: void sendNoteByEmail(long)>',23,'a',NULL),(102,113,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(103,80,'<com.openintents.notepad.NoteEditor: void onPause()>',49,'p',NULL),(104,99,'<com.openintents.notepad.NotePadProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',26,'r',NULL),(105,98,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(106,82,'<com.openintents.notepad.activity.SaveFileActivity: java.lang.String getNote(android.net.Uri)>',7,'p',0),(107,80,'<com.openintents.notepad.NoteEditor: void onCreate(android.os.Bundle)>',105,'p',0),(108,83,'<com.openintents.notepad.crypto.EncryptActivity: void onActivityResult(int,int,android.content.Intent)>',32,'p',NULL),(109,99,'<com.openintents.notepad.NotePadProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',46,'r',NULL),(110,80,'<com.openintents.notepad.NoteEditor: java.lang.String getMostRecentlyUsedTheme()>',6,'p',NULL),(111,114,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(112,79,'<com.openintents.notepad.noteslist.NotesList: void decryptTitle(java.lang.String)>',9,'a',NULL),(113,80,'<com.openintents.notepad.NoteEditor: void onPause()>',57,'p',NULL),(114,80,'<com.openintents.notepad.NoteEditor: void insertAtPoint(java.lang.String,java.lang.String,java.lang.String)>',66,'p',NULL),(115,115,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(116,116,'<com.openintents.notepad.noteslist.NotesListCursor: void runQuery(java.lang.CharSequence,java.lang.String)>',23,'p',0),(117,80,'<com.openintents.notepad.NoteEditor: void showNotesListSettings()>',3,'a',NULL),(118,100,'<com.openintents.notepad.search.SearchSuggestionProvider: android.database.Cursor getSuggestions(java.lang.String,java.lang.String[])>',25,'p',NULL),(119,79,'<com.openintents.notepad.noteslist.NotesList: void openFromSdCard()>',16,'a',NULL),(120,112,'<com.openintents.notepad.noteslist.TagsDialog: void saveTags()>',32,'p',0),(121,79,'<com.openintents.notepad.noteslist.NotesList: void sendNoteByEmail(long)>',10,'p',0),(122,79,'<com.openintents.notepad.noteslist.NotesList: void encryptNote(long,java.lang.String)>',13,'p',0),(123,80,'<com.openintents.notepad.NoteEditor: void startTextSelectionActivity(android.content.Intent)>',22,'a',0),(124,80,'<com.openintents.notepad.NoteEditor: void importNote()>',12,'p',NULL),(125,81,'<com.openintents.notepad.search.SearchQueryResultsActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',12,'a',NULL),(126,82,'<com.openintents.notepad.activity.SaveFileActivity: android.net.Uri getFilenameFromNoteTitle(android.net.Uri)>',7,'p',0),(127,112,'<com.openintents.notepad.noteslist.TagsDialog: void saveTags()>',28,'p',0),(128,84,'<com.openintents.notepad.filename.DialogHostingActivity: void saveFile()>',16,'a',NULL),(129,84,'<com.openintents.notepad.filename.DialogHostingActivity: void openFile()>',16,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,5),(2,4,1),(3,5,1),(4,6,1),(5,7,1),(6,8,6),(7,9,6),(8,10,6),(9,12,6),(10,13,6),(11,15,6),(12,17,6),(13,18,6),(14,21,7),(15,27,9),(16,32,10),(17,33,11),(18,34,12),(19,35,13),(20,36,12),(21,37,13),(22,38,11),(23,39,11),(24,40,13),(25,41,13),(26,42,10),(27,44,13),(28,46,13),(29,47,13),(30,48,12),(31,49,5),(32,50,5),(33,51,11),(34,52,1),(35,53,11),(36,54,1),(37,55,11),(38,56,1),(39,57,1),(40,58,11),(41,59,12),(42,61,13),(43,62,11),(44,64,13),(45,65,13),(46,67,11),(47,68,1),(48,69,1),(49,70,13),(50,71,12),(51,72,13),(52,73,13),(53,74,1),(54,75,15),(55,77,1),(56,78,1),(57,79,13),(58,80,1),(59,81,15),(60,82,13),(61,83,11),(62,84,13),(63,87,10),(64,92,1),(65,93,1),(66,98,16),(67,99,13),(68,100,16),(69,106,1),(70,107,1),(71,112,25),(72,113,26),(73,114,18),(74,115,13),(75,116,26),(76,118,13),(77,119,16),(78,120,16),(79,123,24),(80,124,1),(81,125,1),(82,129,5),(83,130,13),(84,134,13),(85,135,13),(86,136,13),(87,137,27),(88,138,21),(89,139,18),(90,140,1),(91,141,1),(92,149,1),(93,150,1),(94,151,11),(95,152,13),(96,153,28),(97,155,29),(98,157,26),(99,158,26),(100,162,18),(101,163,31),(102,164,31);
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,5,2),(3,6,2),(4,7,1),(5,52,1),(6,54,1),(7,56,2),(8,57,2),(9,68,1),(10,69,2),(11,74,2),(12,77,1),(13,78,1),(14,80,2),(15,92,1),(16,93,2),(17,98,3),(18,99,3),(19,100,3),(20,106,1),(21,107,2),(22,112,7),(23,124,1),(24,125,2),(25,140,2),(26,141,1),(27,149,1),(28,150,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/google/update/Dialog'),(2,3,'com/google/update/Dialog'),(3,11,'com/google/update/UpdateService'),(4,14,'com/google/update/Dialog'),(5,16,'com/google/update/Dialog'),(6,19,'com/tutusw/onekeyvpn/service/OpenVpnService'),(7,20,'com/tutusw/onekeyvpn/service/OpenVpnService'),(8,22,'com/tutusw/onekeyvpn/service/OpenVpnService'),(9,23,'com/tutusw/onekeyvpn/service/OpenVpnService'),(10,24,'com/tutusw/onekeyvpn/service/OpenVpnService'),(11,25,'com/tutusw/onekeyvpn/AdvancedSettings'),(12,26,'com/tutusw/onekeyvpn/service/OpenVpnService'),(13,28,'com/tutusw/onekeyvpn/service/OpenVpnService'),(14,29,'com/safetest/tank/UpdateService'),(15,30,'com/safetest/tank/gameActivity'),(16,31,'com/safetest/tank/UpdateService'),(17,37,'com/adwo/adsdk/AdwoAdBrowserActivity'),(18,41,'com.google.android.maps.MapsActivity'),(19,43,'com/google/update/Dialog'),(20,45,'com/google/update/Dialog'),(21,60,'com/google/update/UpdateService'),(22,63,'com/waps/OffersWebView'),(23,65,'com.google.android.maps.MapsActivity'),(24,70,'com.google.android.maps.MapsActivity'),(25,73,'com.google.android.maps.MapsActivity'),(26,84,'com.google.android.maps.MapsActivity'),(27,86,'com/google/update/UpdateService'),(28,85,'com/waps/OffersWebView'),(29,88,'com/safetest/tank/SelectLevel'),(30,89,'com/google/update/Dialog'),(31,90,'(.*)'),(32,91,'com/google/update/Dialog'),(33,94,'com/google/update/Dialog'),(34,96,'com/google/update/Dialog'),(35,95,'com/waps/OffersWebView'),(36,97,'com/waps/OffersWebView'),(37,101,'NULL-CONSTANT'),(38,102,'com/google/update/Dialog'),(39,103,'com/google/update/Dialog'),(40,104,'com/atools/battery/UpdateService'),(41,105,'net/atools/android/cmwrap/TestActivity'),(42,108,'net/atools/android/cmwrap/Config'),(43,109,'net/atools/android/cmwrap/services/WrapService'),(44,110,'net/atools/android/cmwrap/services/WrapService'),(45,111,'com/openintents/notepad/filename/DialogHostingActivity'),(46,115,'com/openintents/notepad/NoteEditor'),(47,117,'com/openintents/notepad/PreferenceActivity'),(48,121,'(.*)'),(49,126,'com/openintents/notepad/filename/DialogHostingActivity'),(50,127,'com/waps/OffersWebView'),(51,128,'com/waps/OffersWebView'),(52,131,'com/openintents/notepad/crypto/EncryptActivity'),(53,132,'com/google/update/Dialog'),(54,133,'com/google/update/Dialog'),(55,142,'com/google/update/Dialog'),(56,143,'com/google/update/Dialog'),(57,144,'(.*)'),(58,145,'com/openintents/notepad/crypto/EncryptActivity'),(59,146,'com/openintents/notepad/crypto/EncryptActivity'),(60,147,'com/openintents/notepad/crypto/EncryptActivity'),(61,154,'com/google/update/UpdateService'),(62,156,'com/waps/OffersWebView'),(63,159,'NULL-CONSTANT'),(64,160,'com/openintents/notepad/PreferenceActivity'),(65,161,'com/openintents/notepad/filename/DialogHostingActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,32,1),(2,33,2),(3,34,3),(4,35,4),(5,36,5),(6,38,6),(7,39,7),(8,40,8),(9,42,9),(10,44,10),(11,46,11),(12,48,12),(13,51,13),(14,58,14),(15,61,15),(16,62,16),(17,65,17),(18,64,18),(19,67,19),(20,70,20),(21,71,22),(22,72,23),(23,73,24),(24,79,25),(25,83,26),(26,82,27),(27,84,28),(28,98,29),(29,99,30),(30,100,31),(31,111,33),(32,114,34),(33,115,35),(34,118,41),(35,119,42),(36,120,43),(37,123,44),(38,130,45),(39,134,46),(40,135,47),(41,136,48),(42,137,49),(43,138,51),(44,139,52),(45,152,53),(46,153,55),(47,155,57),(48,161,62),(49,162,64),(50,163,65),(51,164,66);
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
INSERT INTO `IExtras` VALUES (1,2,'TYPEdsada'),(2,3,'MSG'),(3,3,'TYPEdsada'),(4,8,'android.intent.extra.INTENT'),(5,9,'android.intent.extra.INTENT'),(6,10,'android.intent.extra.TITLE'),(7,10,'android.intent.extra.INTENT'),(8,12,'android.intent.extra.INTENT'),(9,13,'android.intent.extra.TITLE'),(10,14,'TYPEdsada'),(11,13,'android.intent.extra.INTENT'),(12,15,'android.intent.extra.INTENT'),(13,16,'MSG'),(14,16,'TYPEdsada'),(15,17,'android.intent.extra.TITLE'),(16,17,'android.intent.extra.INTENT'),(17,18,'android.intent.extra.TITLE'),(18,18,'android.intent.extra.INTENT'),(19,25,'hasDaemonsStarted'),(20,27,'org.openintents.extra.TITLE'),(21,30,'level'),(22,33,'android.intent.extra.TEXT'),(23,33,'android.intent.extra.SUBJECT'),(24,33,'android.intent.extra.EMAIL'),(25,34,'sms_body'),(26,37,'url'),(27,38,'android.intent.extra.EMAIL'),(28,39,'android.intent.extra.TEXT'),(29,39,'android.intent.extra.EMAIL'),(30,43,'MSG'),(31,43,'TYPEdsada'),(32,45,'TYPEdsada'),(33,51,'android.intent.extra.EMAIL'),(34,55,'android.intent.extra.TEXT'),(35,55,'android.intent.extra.SUBJECT'),(36,55,'android.intent.extra.EMAIL'),(37,58,'android.intent.extra.TEXT'),(38,58,'android.intent.extra.SUBJECT'),(39,58,'android.intent.extra.EMAIL'),(40,63,'USER_ID'),(41,63,'CLIENT_PACKAGE'),(42,63,'Offers_URL'),(43,63,'URL_PARAMS'),(44,67,'android.intent.extra.TEXT'),(45,67,'android.intent.extra.EMAIL'),(46,71,'sms_body'),(47,75,'query'),(48,85,'USER_ID'),(49,85,'CLIENT_PACKAGE'),(50,85,'Offers_URL'),(51,85,'offers_webview_tag'),(52,85,'URL_PARAMS'),(53,88,'maxLevel'),(54,89,'TYPEdsada'),(55,91,'MSG'),(56,91,'TYPEdsada'),(57,94,'TYPEdsada'),(58,95,'Notify_Url_Params'),(59,95,'UrlPath'),(60,96,'MSG'),(61,95,'ACTIVITY_FLAG'),(62,96,'TYPEdsada'),(63,95,'isFinshClose'),(64,95,'offers_webview_tag'),(65,97,'UrlPath'),(66,97,'ACTIVITY_FLAG'),(67,97,'isFinshClose'),(68,97,'offers_webview_tag'),(69,102,'MSG'),(70,102,'TYPEdsada'),(71,103,'TYPEdsada'),(72,109,'SERVERLEVEL'),(73,111,'com.openintents.notepad.extra.dialog_id'),(74,112,'<INTENT>'),(75,113,'com.openintents.extra.TEXT'),(76,113,'com.openintents.extra.PROMPT'),(77,113,'com.openintents.notepad.extra.encrypted_text'),(78,116,'com.openintents.notepad.extra.id'),(79,116,'com.openintents.extra.TEXT'),(80,123,'com.openintents.extra.TEXT'),(81,126,'com.openintents.notepad.extra.dialog_id'),(82,127,'UrlPath'),(83,127,'ACTIVITY_FLAG'),(84,127,'isFinshClose'),(85,127,'offers_webview_tag'),(86,128,'Notify_Url_Params'),(87,128,'UrlPath'),(88,128,'ACTIVITY_FLAG'),(89,128,'isFinshClose'),(90,128,'offers_webview_tag'),(91,131,'com.openintents.extra.TEXT_ARRAY'),(92,131,'com.openintents.notepad.extra.uri'),(93,131,'com.openintents.notepad.extra.action'),(94,132,'TYPEdsada'),(95,133,'MSG'),(96,133,'TYPEdsada'),(97,138,'com.openintents.extra.TAGS'),(98,142,'TYPEdsada'),(99,143,'MSG'),(100,143,'TYPEdsada'),(101,145,'com.openintents.extra.TEXT_ARRAY'),(102,145,'com.openintents.notepad.extra.uri'),(103,145,'com.openintents.notepad.extra.action'),(104,146,'com.openintents.extra.TEXT_ARRAY'),(105,146,'com.openintents.notepad.extra.uri'),(106,146,'com.openintents.notepad.extra.action'),(107,146,'com.openintents.notepad.extra.content_unchanged'),(108,147,'com.openintents.extra.TEXT_ARRAY'),(109,147,'com.openintents.notepad.extra.uri'),(110,147,'com.openintents.notepad.extra.action'),(111,151,'android.intent.extra.TEXT'),(112,151,'android.intent.extra.SUBJECT'),(113,153,'com.openintents.extra.AFFECTED_ROWS'),(114,156,'USER_ID'),(115,156,'CLIENT_PACKAGE'),(116,156,'Offers_URL'),(117,156,'offers_webview_tag'),(118,156,'URL_PARAMS'),(119,157,'com.openintents.extra.PROMPT'),(120,158,'com.openintents.extra.TEXT'),(121,158,'com.openintents.extra.PROMPT'),(122,158,'com.openintents.notepad.extra.encrypted_text'),(123,161,'com.openintents.notepad.extra.dialog_id'),(124,163,'com.openintents.extra.BUTTON_TEXT'),(125,163,'com.openintents.notepad.extra.uri'),(126,163,'com.openintents.extra.TITLE'),(127,164,'com.openintents.extra.BUTTON_TEXT'),(128,164,'com.openintents.notepad.extra.uri'),(129,164,'com.openintents.extra.TITLE');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,5,2),(4,6,4),(5,6,3),(6,6,2),(7,7,1),(8,8,2),(9,8,3),(10,8,4),(11,9,1),(12,10,3),(13,10,4),(14,10,2),(15,11,1),(16,12,4),(17,12,3),(18,12,2),(19,13,8),(20,14,14),(21,15,14),(22,16,1),(23,17,2),(24,17,8),(25,18,13),(26,18,17),(27,18,18),(28,19,19),(29,20,20),(30,21,1),(31,22,13),(32,22,18),(33,23,21),(34,24,13),(35,24,22),(36,24,18),(37,25,1),(38,26,23),(39,27,24),(40,28,24),(41,29,4),(42,29,2),(43,29,3),(44,30,30),(45,31,30),(46,32,30),(47,33,30),(48,34,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,7,1),(4,9,1),(5,11,1),(6,16,1),(7,18,4),(8,19,4),(9,20,4),(10,21,1),(11,22,4),(12,23,4),(13,24,4),(14,25,4),(15,26,4),(16,27,6),(17,27,4),(18,27,5),(19,28,4);
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
INSERT INTO `IFData` VALUES (1,14,'package',NULL,NULL,NULL,NULL,NULL),(2,15,'package',NULL,NULL,NULL,NULL,NULL),(3,18,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.openintents.notepad.note'),(4,20,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.openintents.notepad.note'),(5,22,NULL,NULL,NULL,NULL,'text','plain'),(6,23,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.openintents.notepad.note'),(7,24,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.openintents.notepad.note'),(8,27,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.openintents.notepad.note'),(9,28,'file',NULL,NULL,NULL,NULL,NULL),(10,34,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,35,'*','*'),(2,46,'(.*)','(.*)'),(3,55,'message','rfc882'),(4,61,'(.*)','(.*)'),(5,64,'application','vnd.android.package-archive'),(6,72,'application','vnd.android.package-archive'),(7,79,'*','*'),(8,82,'application','vnd.android.package-archive'),(9,100,'(.*)','(.*)'),(10,119,'(.*)','(.*)'),(11,130,'application','vnd.android.package-archive'),(12,151,'text','plain'),(13,152,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.ps.kickfly'),(2,3,'com.ps.kickfly'),(3,4,'com.noshufou.android.su'),(4,5,'com.noshufou.android.su'),(5,6,'com.ps.kickfly'),(6,7,'com.ps.kickfly'),(7,11,'com.ps.kickfly'),(8,14,'com.ps.kickfly'),(9,16,'com.ps.kickfly'),(10,19,'com.tutusw.onekeyvpn'),(11,20,'com.tutusw.onekeyvpn'),(12,22,'com.tutusw.onekeyvpn'),(13,23,'com.tutusw.onekeyvpn'),(14,24,'com.tutusw.onekeyvpn'),(15,25,'com.tutusw.onekeyvpn'),(16,26,'com.tutusw.onekeyvpn'),(17,28,'com.tutusw.onekeyvpn'),(18,29,'com.safetest.tank'),(19,30,'com.safetest.tank'),(20,31,'com.safetest.tank'),(21,37,'com.safetest.tank'),(22,41,'com.google.android.apps.maps'),(23,43,'com.alan.siwameinv1'),(24,45,'com.alan.siwameinv1'),(25,52,'com.noshufou.android.su'),(26,54,'com.noshufou.android.su'),(27,56,'com.noshufou.android.su'),(28,57,'com.noshufou.android.su'),(29,60,'com.alan.siwameinv1'),(30,63,'com.alan.siwameinv6'),(31,65,'com.google.android.apps.maps'),(32,68,'com.alan.siwameinv1'),(33,69,'com.alan.siwameinv1'),(34,70,'com.google.android.apps.maps'),(35,73,'com.google.android.apps.maps'),(36,74,'com.alan.siwameinv6'),(37,77,'com.alan.siwameinv6'),(38,78,'(.*)'),(39,80,'(.*)'),(40,84,'com.google.android.apps.maps'),(41,86,'com.alan.siwameinv6'),(42,85,'com.alan.siwameinv1'),(43,88,'com.safetest.tank'),(44,89,'com.alan.siwameinv6'),(45,90,'(.*)'),(46,91,'com.alan.siwameinv6'),(47,92,'com.noshufou.android.su'),(48,93,'com.noshufou.android.su'),(49,94,'com.alan.siwameinv6'),(50,96,'com.alan.siwameinv6'),(51,95,'com.alan.siwameinv1'),(52,97,'com.alan.siwameinv1'),(53,101,'NULL-CONSTANT'),(54,102,'com.alan.siwameinv1'),(55,103,'com.alan.siwameinv1'),(56,104,'net.atools.android.cmwrap'),(57,105,'net.atools.android.cmwrap'),(58,106,'com.noshufou.android.su'),(59,107,'com.noshufou.android.su'),(60,108,'net.atools.android.cmwrap'),(61,109,'net.atools.android.cmwrap'),(62,110,'net.atools.android.cmwrap'),(63,111,'com.openintents.notepad'),(64,115,'com.openintents.notepad'),(65,117,'com.openintents.notepad'),(66,121,'(.*)'),(67,124,'com.noshufou.android.su'),(68,125,'com.noshufou.android.su'),(69,126,'com.openintents.notepad'),(70,127,'com.openintents.notepad'),(71,128,'com.openintents.notepad'),(72,131,'com.openintents.notepad'),(73,132,'com.openintents.notepad'),(74,133,'com.openintents.notepad'),(75,140,'com.openintents.notepad'),(76,141,'com.openintents.notepad'),(77,142,'com.openintents.notepad'),(78,143,'com.openintents.notepad'),(79,144,'(.*)'),(80,145,'com.openintents.notepad'),(81,146,'com.openintents.notepad'),(82,147,'com.openintents.notepad'),(83,149,'(.*)'),(84,150,'(.*)'),(85,154,'com.openintents.notepad'),(86,156,'com.openintents.notepad'),(87,159,'NULL-CONSTANT'),(88,160,'com.openintents.notepad'),(89,161,'com.openintents.notepad');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,8,0),(4,11,0),(5,12,0),(6,16,0),(7,17,0),(8,23,0),(9,25,0),(10,33,0),(11,35,0),(12,43,0),(13,44,0),(14,45,0),(15,46,0),(16,47,0),(17,53,0),(18,54,0),(19,54,0),(20,54,0),(21,54,0),(22,55,0),(23,55,0),(24,55,0),(25,56,0),(26,56,0),(27,57,0),(28,57,0),(29,73,0),(30,73,0),(31,76,0),(32,77,0),(33,78,0),(34,78,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,2,0,0),(4,3,1,0),(5,3,1,0),(6,4,1,0),(7,4,1,0),(8,6,1,0),(9,6,1,0),(10,6,1,0),(11,7,0,0),(12,6,1,0),(13,6,1,0),(14,8,0,0),(15,6,1,0),(16,8,0,0),(17,6,1,0),(18,6,1,0),(19,9,0,0),(20,11,0,0),(21,12,1,0),(22,13,0,0),(23,14,0,0),(24,17,0,0),(25,20,0,0),(26,21,0,0),(27,22,1,0),(28,24,0,0),(29,27,0,0),(30,28,0,0),(31,29,0,0),(32,30,1,0),(33,30,1,0),(34,30,1,0),(35,30,1,0),(36,30,1,0),(37,30,0,0),(38,30,1,0),(39,30,1,0),(40,30,1,0),(41,30,0,0),(42,30,1,0),(43,31,0,0),(44,30,1,0),(45,31,0,0),(46,30,1,0),(47,30,1,0),(48,30,1,0),(49,32,1,0),(50,33,1,0),(51,30,1,0),(52,34,1,0),(53,30,1,0),(54,35,1,0),(55,30,1,0),(56,34,1,0),(57,35,1,0),(58,30,1,0),(59,30,1,0),(60,36,0,0),(61,30,1,0),(62,30,1,0),(63,37,0,0),(64,38,1,0),(65,30,0,0),(66,30,1,0),(67,30,1,0),(68,39,1,0),(69,39,1,0),(70,30,0,0),(71,30,1,0),(72,40,1,0),(73,30,0,0),(74,42,1,0),(75,30,1,0),(76,43,1,0),(77,42,1,0),(78,43,1,0),(79,30,1,0),(80,43,1,0),(81,30,1,0),(82,44,1,0),(83,30,1,0),(84,30,0,0),(85,45,0,0),(86,46,0,0),(87,30,1,0),(88,47,0,0),(89,48,0,0),(90,49,0,0),(91,48,0,0),(92,50,1,0),(93,50,1,0),(94,51,0,0),(95,52,0,0),(96,51,0,0),(97,52,0,0),(98,53,1,0),(99,53,1,0),(100,53,1,0),(101,54,0,0),(102,55,0,0),(103,55,0,0),(104,57,0,0),(105,58,0,0),(106,59,1,0),(107,59,1,0),(108,60,0,0),(109,61,0,0),(110,62,0,0),(111,63,0,0),(112,64,1,0),(113,65,1,0),(114,66,1,0),(115,67,0,0),(116,70,1,0),(117,73,0,0),(118,75,1,0),(119,75,1,0),(120,75,1,0),(121,76,0,0),(122,76,1,0),(123,77,1,0),(124,78,1,0),(125,78,1,0),(126,79,0,0),(127,81,0,0),(128,81,0,0),(129,82,1,0),(130,83,1,0),(131,84,0,0),(132,85,0,0),(133,85,0,0),(134,86,1,0),(135,89,1,0),(136,89,1,0),(137,90,1,0),(138,92,1,0),(139,93,1,0),(140,94,1,0),(141,94,1,0),(142,95,0,0),(143,95,0,0),(144,96,0,0),(145,97,0,0),(146,97,0,0),(147,98,0,0),(148,100,1,0),(149,100,1,0),(150,100,1,0),(151,101,1,0),(152,102,1,0),(153,104,1,0),(154,105,0,0),(155,109,1,0),(156,111,0,0),(157,112,1,0),(158,112,1,0),(159,115,0,0),(160,117,0,0),(161,119,0,0),(162,125,1,0),(163,128,1,0),(164,129,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=479 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,30,19,2,NULL),(2,31,22,2,NULL),(3,88,18,2,NULL),(4,21,17,2,NULL),(5,76,17,2,NULL),(6,78,17,2,NULL),(7,80,17,2,NULL),(8,98,17,2,NULL),(9,99,17,2,NULL),(10,113,17,2,NULL),(11,157,17,2,NULL),(12,158,17,2,NULL),(13,116,17,2,NULL),(14,123,17,2,NULL),(15,112,17,2,NULL),(16,122,17,2,NULL),(17,118,17,2,NULL),(18,120,17,2,NULL),(19,148,17,2,NULL),(20,149,17,2,NULL),(21,150,17,2,NULL),(22,29,22,2,NULL),(23,21,23,2,NULL),(24,76,23,2,NULL),(25,78,23,2,NULL),(26,80,23,2,NULL),(27,98,23,2,NULL),(28,99,23,2,NULL),(29,113,23,2,NULL),(30,157,23,2,NULL),(31,158,23,2,NULL),(32,116,23,2,NULL),(33,123,23,2,NULL),(34,112,23,2,NULL),(35,122,23,2,NULL),(36,118,23,2,NULL),(37,120,23,2,NULL),(38,148,23,2,NULL),(39,149,23,2,NULL),(40,150,23,2,NULL),(41,21,25,2,NULL),(42,76,25,2,NULL),(43,78,25,2,NULL),(44,80,25,2,NULL),(45,98,25,2,NULL),(46,99,25,2,NULL),(47,113,25,2,NULL),(48,157,25,2,NULL),(49,158,25,2,NULL),(50,116,25,2,NULL),(51,104,52,2,NULL),(52,123,25,2,NULL),(53,105,49,2,NULL),(54,112,25,2,NULL),(55,108,48,2,NULL),(56,122,25,2,NULL),(57,110,51,2,NULL),(58,118,25,2,NULL),(59,21,47,2,NULL),(60,120,25,2,NULL),(61,76,47,2,NULL),(62,148,25,2,NULL),(63,78,47,2,NULL),(64,149,25,2,NULL),(65,80,47,2,NULL),(66,150,25,2,NULL),(67,98,47,2,NULL),(68,76,1,2,NULL),(69,99,47,2,NULL),(70,78,1,2,NULL),(71,113,47,2,NULL),(72,80,1,2,NULL),(73,157,47,2,NULL),(74,76,12,2,NULL),(75,158,47,2,NULL),(76,78,12,2,NULL),(77,116,47,2,NULL),(78,80,12,2,NULL),(79,123,47,2,NULL),(80,76,44,2,NULL),(81,112,47,2,NULL),(82,78,44,2,NULL),(83,122,47,2,NULL),(84,80,44,2,NULL),(85,118,47,2,NULL),(86,76,5,2,NULL),(87,120,47,2,NULL),(88,78,5,2,NULL),(89,148,47,2,NULL),(90,80,5,2,NULL),(91,149,47,2,NULL),(92,76,8,2,NULL),(93,150,47,2,NULL),(94,78,8,2,NULL),(95,21,53,2,NULL),(96,80,8,2,NULL),(97,76,53,2,NULL),(98,76,11,2,NULL),(99,78,53,2,NULL),(100,78,11,2,NULL),(101,80,53,2,NULL),(102,80,11,2,NULL),(103,98,53,2,NULL),(104,76,16,2,NULL),(105,99,53,2,NULL),(106,78,16,2,NULL),(107,113,53,2,NULL),(108,80,16,2,NULL),(109,157,53,2,NULL),(110,76,33,2,NULL),(111,158,53,2,NULL),(112,78,33,2,NULL),(113,116,53,2,NULL),(114,80,33,2,NULL),(115,123,53,2,NULL),(116,76,35,2,NULL),(117,112,53,2,NULL),(118,78,35,2,NULL),(119,122,53,2,NULL),(120,80,35,2,NULL),(121,118,53,2,NULL),(122,76,43,2,NULL),(123,120,53,2,NULL),(124,78,43,2,NULL),(125,148,53,2,NULL),(126,80,43,2,NULL),(127,149,53,2,NULL),(128,76,54,2,NULL),(129,150,53,2,NULL),(130,78,54,2,NULL),(131,80,54,2,NULL),(132,76,56,2,NULL),(133,78,56,2,NULL),(134,80,56,2,NULL),(135,76,73,2,NULL),(136,78,73,2,NULL),(137,80,73,2,NULL),(138,76,76,2,NULL),(139,78,76,2,NULL),(140,80,76,2,NULL),(141,76,77,2,NULL),(142,78,77,2,NULL),(143,80,77,2,NULL),(144,76,78,2,NULL),(145,78,78,2,NULL),(146,80,78,2,NULL),(147,43,14,2,NULL),(148,43,31,2,NULL),(149,43,41,2,NULL),(150,43,71,2,NULL),(151,45,14,2,NULL),(152,45,31,2,NULL),(153,21,5,2,NULL),(154,45,41,2,NULL),(155,98,5,2,NULL),(156,45,71,2,NULL),(157,99,5,2,NULL),(158,102,14,2,NULL),(159,113,5,2,NULL),(160,102,31,2,NULL),(161,102,41,2,NULL),(162,157,5,2,NULL),(163,102,71,2,NULL),(164,158,5,2,NULL),(165,103,14,2,NULL),(166,116,5,2,NULL),(167,103,31,2,NULL),(168,123,5,2,NULL),(169,103,41,2,NULL),(170,112,5,2,NULL),(171,103,71,2,NULL),(172,122,5,2,NULL),(173,60,15,2,NULL),(174,118,5,2,NULL),(175,60,32,2,NULL),(176,120,5,2,NULL),(177,60,42,2,NULL),(178,148,5,2,NULL),(179,60,72,2,NULL),(180,149,5,2,NULL),(181,21,33,2,NULL),(182,150,5,2,NULL),(183,98,33,2,NULL),(184,21,8,2,NULL),(185,99,33,2,NULL),(186,98,8,2,NULL),(187,113,33,2,NULL),(188,99,8,2,NULL),(189,157,33,2,NULL),(190,113,8,2,NULL),(191,158,33,2,NULL),(192,157,8,2,NULL),(193,116,33,2,NULL),(194,158,8,2,NULL),(195,123,33,2,NULL),(196,116,8,2,NULL),(197,112,33,2,NULL),(198,123,8,2,NULL),(199,122,33,2,NULL),(200,112,8,2,NULL),(201,118,33,2,NULL),(202,122,8,2,NULL),(203,120,33,2,NULL),(204,118,8,2,NULL),(205,148,33,2,NULL),(206,120,8,2,NULL),(207,149,33,2,NULL),(208,148,8,2,NULL),(209,150,33,2,NULL),(210,149,8,2,NULL),(211,150,8,2,NULL),(212,21,11,2,NULL),(213,98,11,2,NULL),(214,99,11,2,NULL),(215,113,11,2,NULL),(216,157,11,2,NULL),(217,158,11,2,NULL),(218,116,11,2,NULL),(219,123,11,2,NULL),(220,112,11,2,NULL),(221,122,11,2,NULL),(222,118,11,2,NULL),(223,120,11,2,NULL),(224,148,11,2,NULL),(225,149,11,2,NULL),(226,150,11,2,NULL),(227,2,14,2,NULL),(228,2,31,2,NULL),(229,2,41,2,NULL),(230,2,71,2,NULL),(231,3,14,2,NULL),(232,3,31,2,NULL),(233,3,41,2,NULL),(234,3,71,2,NULL),(235,14,14,2,NULL),(236,14,31,2,NULL),(237,14,41,2,NULL),(238,14,71,2,NULL),(239,16,14,2,NULL),(240,16,31,2,NULL),(241,16,41,2,NULL),(242,16,71,2,NULL),(243,11,15,2,NULL),(244,11,32,2,NULL),(245,11,42,2,NULL),(246,11,72,2,NULL),(247,21,16,2,NULL),(248,98,16,2,NULL),(249,99,16,2,NULL),(250,113,16,2,NULL),(251,157,16,2,NULL),(252,158,16,2,NULL),(253,116,16,2,NULL),(254,123,16,2,NULL),(255,112,16,2,NULL),(256,122,16,2,NULL),(257,118,16,2,NULL),(258,120,16,2,NULL),(259,148,16,2,NULL),(260,149,16,2,NULL),(261,150,16,2,NULL),(262,115,55,2,NULL),(263,117,60,2,NULL),(264,131,58,2,NULL),(265,161,59,2,NULL),(266,113,1,2,NULL),(267,157,1,2,NULL),(268,158,1,2,NULL),(269,21,54,2,NULL),(270,113,12,2,NULL),(271,157,12,2,NULL),(272,158,12,2,NULL),(273,113,44,2,NULL),(274,157,44,2,NULL),(275,158,44,2,NULL),(276,113,35,2,NULL),(277,157,35,2,NULL),(278,158,35,2,NULL),(279,98,54,2,NULL),(280,99,54,2,NULL),(281,113,43,2,NULL),(282,157,43,2,NULL),(283,158,43,2,NULL),(284,151,55,2,NULL),(285,116,54,2,NULL),(286,123,54,2,NULL),(287,113,56,2,NULL),(288,157,56,2,NULL),(289,158,56,2,NULL),(290,112,54,2,NULL),(291,122,54,2,NULL),(292,118,54,2,NULL),(293,120,54,2,NULL),(294,148,54,2,NULL),(295,149,54,2,NULL),(296,150,54,2,NULL),(297,113,73,2,NULL),(298,157,73,2,NULL),(299,158,73,2,NULL),(300,113,76,2,NULL),(301,157,76,2,NULL),(302,158,76,2,NULL),(303,113,77,2,NULL),(304,157,77,2,NULL),(305,158,77,2,NULL),(306,113,78,2,NULL),(307,157,78,2,NULL),(308,158,78,2,NULL),(309,145,58,2,NULL),(310,146,58,2,NULL),(311,160,60,2,NULL),(312,116,1,2,NULL),(313,123,1,2,NULL),(314,116,12,2,NULL),(315,123,12,2,NULL),(316,116,44,2,NULL),(317,123,44,2,NULL),(318,116,35,2,NULL),(319,123,35,2,NULL),(320,116,43,2,NULL),(321,123,43,2,NULL),(322,116,56,2,NULL),(323,123,56,2,NULL),(324,116,73,2,NULL),(325,123,73,2,NULL),(326,116,76,2,NULL),(327,123,76,2,NULL),(328,116,77,2,NULL),(329,123,77,2,NULL),(330,116,78,2,NULL),(331,123,78,2,NULL),(332,21,56,2,NULL),(333,98,56,2,NULL),(334,99,56,2,NULL),(335,112,56,2,NULL),(336,122,56,2,NULL),(337,118,56,2,NULL),(338,120,56,2,NULL),(339,148,56,2,NULL),(340,149,56,2,NULL),(341,150,56,2,NULL),(342,111,59,2,NULL),(343,112,1,2,NULL),(344,112,12,2,NULL),(345,112,44,2,NULL),(346,112,35,2,NULL),(347,112,43,2,NULL),(348,112,73,2,NULL),(349,112,76,2,NULL),(350,112,77,2,NULL),(351,112,78,2,NULL),(352,122,1,2,NULL),(353,122,12,2,NULL),(354,122,44,2,NULL),(355,122,35,2,NULL),(356,122,43,2,NULL),(357,122,73,2,NULL),(358,122,76,2,NULL),(359,122,77,2,NULL),(360,122,78,2,NULL),(361,118,1,2,NULL),(362,120,1,2,NULL),(363,118,12,2,NULL),(364,120,12,2,NULL),(365,118,44,2,NULL),(366,120,44,2,NULL),(367,118,35,2,NULL),(368,120,35,2,NULL),(369,118,43,2,NULL),(370,120,43,2,NULL),(371,118,73,2,NULL),(372,120,73,2,NULL),(373,118,76,2,NULL),(374,120,76,2,NULL),(375,118,77,2,NULL),(376,120,77,2,NULL),(377,118,78,2,NULL),(378,120,78,2,NULL),(379,148,1,2,NULL),(380,149,1,2,NULL),(381,150,1,2,NULL),(382,148,12,2,NULL),(383,149,12,2,NULL),(384,150,12,2,NULL),(385,148,44,2,NULL),(386,149,44,2,NULL),(387,150,44,2,NULL),(388,148,35,2,NULL),(389,149,35,2,NULL),(390,150,35,2,NULL),(391,148,43,2,NULL),(392,149,43,2,NULL),(393,150,43,2,NULL),(394,148,73,2,NULL),(395,149,73,2,NULL),(396,150,73,2,NULL),(397,148,76,2,NULL),(398,149,76,2,NULL),(399,150,76,2,NULL),(400,148,77,2,NULL),(401,149,77,2,NULL),(402,150,77,2,NULL),(403,148,78,2,NULL),(404,149,78,2,NULL),(405,150,78,2,NULL),(406,132,14,2,NULL),(407,132,31,2,NULL),(408,132,41,2,NULL),(409,132,71,2,NULL),(410,133,14,2,NULL),(411,133,31,2,NULL),(412,133,41,2,NULL),(413,133,71,2,NULL),(414,142,14,2,NULL),(415,142,31,2,NULL),(416,142,41,2,NULL),(417,142,71,2,NULL),(418,143,14,2,NULL),(419,143,31,2,NULL),(420,143,41,2,NULL),(421,143,71,2,NULL),(422,154,15,2,NULL),(423,154,32,2,NULL),(424,154,42,2,NULL),(425,154,72,2,NULL),(426,21,73,2,NULL),(427,98,73,2,NULL),(428,99,73,2,NULL),(429,21,76,2,NULL),(430,98,76,2,NULL),(431,99,76,2,NULL),(432,21,77,2,NULL),(433,98,77,2,NULL),(434,99,77,2,NULL),(435,21,78,2,NULL),(436,98,78,2,NULL),(437,99,78,2,NULL),(438,20,10,2,NULL),(439,23,10,2,NULL),(440,25,2,2,NULL),(441,21,1,2,NULL),(442,98,1,2,NULL),(443,99,1,2,NULL),(444,24,10,2,NULL),(445,22,10,2,NULL),(446,21,12,2,NULL),(447,21,44,2,NULL),(448,21,35,2,NULL),(449,21,43,2,NULL),(450,98,35,2,NULL),(451,26,10,2,NULL),(452,99,35,2,NULL),(453,98,12,2,NULL),(454,99,12,2,NULL),(455,98,44,2,NULL),(456,99,44,2,NULL),(457,98,43,2,NULL),(458,99,43,2,NULL),(459,89,14,2,NULL),(460,89,31,2,NULL),(461,89,41,2,NULL),(462,89,71,2,NULL),(463,91,14,2,NULL),(464,91,31,2,NULL),(465,91,41,2,NULL),(466,91,71,2,NULL),(467,94,14,2,NULL),(468,94,31,2,NULL),(469,94,41,2,NULL),(470,94,71,2,NULL),(471,96,14,2,NULL),(472,96,31,2,NULL),(473,96,41,2,NULL),(474,96,71,2,NULL),(475,86,15,2,NULL),(476,86,32,2,NULL),(477,86,42,2,NULL),(478,86,72,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.openintents.notepad'),(2,2,'com.openintents.notepad.search.SuggestionProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(18,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.BROADCAST_STICKY'),(19,'android.permission.CHANGE_CONFIGURATION'),(6,'android.permission.CHANGE_WIFI_STATE'),(16,'android.permission.GET_TASKS'),(13,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.RESTART_PACKAGES'),(15,'android.permission.SET_WALLPAPER'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS'),(21,'com.openintents.notepad.READ_PERMISSION'),(22,'com.openintents.notepad.WRITE_PERMISSION'),(20,'com.openintents.safe.ACCESS_INTENTS');
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
INSERT INTO `Permissions` VALUES (20,'d'),(21,'n'),(22,'n');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
INSERT INTO `ProviderLinks` VALUES (1,55,74,NULL),(2,75,74,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,74,0,NULL,NULL),(2,75,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(21,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(22,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(35,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(36,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(46,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'market://details?id=(.*)',NULL,NULL,NULL),(49,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(50,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(51,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(52,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(58,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(62,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(63,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(64,NULL,NULL,'content://com.openintents.notepad/notes',NULL,NULL,NULL),(65,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(66,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,41,21),(2,56,32),(3,68,36),(4,69,37),(5,71,38),(6,72,39),(7,74,40),(8,91,50),(9,103,54),(10,108,56),(11,110,58),(12,113,59),(13,114,60),(14,118,61),(15,124,63);
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,3,1),(12,3,2),(13,3,7),(14,3,8),(15,3,9),(16,3,10),(17,3,11),(18,3,12),(19,4,1),(20,4,2),(21,4,5),(22,4,6),(23,4,7),(24,4,8),(25,4,9),(26,4,10),(27,4,11),(28,4,13),(29,4,14),(30,4,15),(31,4,17),(32,4,16),(33,4,19),(34,4,18),(35,5,1),(36,5,2),(37,5,5),(38,5,6),(39,5,7),(40,5,8),(41,5,9),(42,5,10),(43,5,11),(44,5,13),(45,5,14),(46,5,15),(47,5,17),(48,5,16),(49,5,19),(50,5,18),(51,6,1),(52,6,2),(53,6,7),(54,6,8),(55,6,11),(56,7,16),(57,7,1),(58,7,2),(59,7,21),(60,7,4),(61,7,20),(62,7,5),(63,7,6),(64,7,22),(65,7,7),(66,7,8);
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

-- Dump completed on 2015-10-12  3:29:20
