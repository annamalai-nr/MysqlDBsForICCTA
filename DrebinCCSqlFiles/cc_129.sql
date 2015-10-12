-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_129
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (21,'<INTENT>'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(8,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CHOOSER'),(14,'android.intent.action.DIAL'),(4,'android.intent.action.EDIT'),(3,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(13,'android.intent.action.PACKAGE_ADDED'),(17,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.SCREEN_ON'),(15,'android.intent.action.SEND'),(16,'android.intent.action.SENDTO'),(7,'android.intent.action.SIG_STR'),(5,'android.intent.action.VIEW'),(20,'android.intent.action.WEB_SEARCH'),(11,'android.net.conn.CONNECTIVITY_CHANGE'),(19,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(10,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(12,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',7),(2,'com.ps.kickmouse',6),(3,'com.ps.opensudoku',6),(4,'com.safetest.compass',11),(5,'com.safetest.Star',10),(6,'com.evilsunflower.compass',5),(7,'com.gp.zoo',4);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (5,'<INTENT>'),(3,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(6,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(7,1,'com.tutusw.onekeyvpn.ImportFiles'),(8,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(9,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(10,3,'com.ps.opensudoku.gui.FolderListActivity'),(11,4,'com.safetest.compass.CompassActivity'),(12,3,'com.ps.opensudoku.gui.SudokuListActivity'),(13,2,'com.ps.kickmouse.WhacAMouse'),(14,3,'com.ps.opensudoku.gui.SudokuEditActivity'),(15,5,'com.safetest.Star.Star'),(16,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(17,2,'com.ps.kickmouse.Game'),(18,4,'com.safetest.compass.ShowTips'),(19,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(20,4,'com.safetest.compass.widget.CompassService'),(21,5,'com.safetest.Star.StarGame'),(22,3,'com.ps.opensudoku.gui.FileImportActivity'),(23,2,'com.google.update.Dialog'),(24,4,'com.safetest.compass.UpdateService'),(25,5,'com.safetest.Star.StarHelp'),(26,2,'com.waps.OffersWebView'),(27,4,'com.safetest.compass.widget.CompassWidget'),(28,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(29,2,'com.ps.kickmouse.DemoApp'),(30,5,'com.safetest.Star.ShowTips'),(31,2,'com.google.update.UpdateService'),(32,5,'com.safetest.Star.UpdateService'),(33,4,'com.safetest.compass.Receiver'),(34,2,'com.google.update.Receiver'),(35,5,'com.safetest.Star.Receiver'),(36,3,'com.ps.opensudoku.gui.ImportSudokuActivity'),(37,3,'com.ps.opensudoku.gui.SudokuImportActivity'),(38,3,'com.ps.opensudoku.gui.SudokuExportActivity'),(39,3,'com.ps.opensudoku.gui.SudokuPlayActivity'),(40,3,'com.ps.opensudoku.gui.GameSettingsActivity'),(41,3,'com.ps.opensudoku.gui.FileListActivity'),(42,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(43,6,'com.evilsunflower.compass.Main'),(44,3,'com.google.update.Dialog'),(45,3,'com.google.update.UpdateService'),(46,6,'com.vpon.adon.android.WebInApp'),(47,3,'com.google.update.Receiver'),(48,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(49,6,'com.admob.android.ads.AdMobActivity'),(50,6,'com.evilsunflower.compass.ShowTips'),(51,6,'com.evilsunflower.compass.UpdateService'),(52,6,'com.evilsunflower.compass.Receiver'),(53,7,'com.gp.zoo.SplashActivity'),(54,7,'com.gp.zoo.MainMenuActivity'),(55,7,'com.gp.zoo.CharacterCreationActivity'),(56,7,'com.gp.zoo.MainMapActivity'),(57,7,'com.gp.zoo.HallActivity'),(58,7,'com.gp.zoo.ExamActivity'),(59,7,'com.gp.zoo.StoreActivity'),(60,7,'com.gp.zoo.StoreDetailActivity'),(61,7,'com.gp.zoo.BagActivity'),(62,7,'com.gp.zoo.SettingsActivity'),(63,7,'com.gp.zoo.CreditActivity'),(64,7,'com.gp.zoo.BadgeActivity'),(65,7,'com.gp.zoo.PhotoActivity'),(66,7,'com.gp.zoo.CircusActivity'),(67,7,'com.gp.zoo.HelpActivity'),(68,7,'cn.domob.android.ads.DomobActivity'),(69,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(70,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(71,7,'com.google.update.Dialog'),(72,7,'com.google.update.UpdateService'),(73,7,'com.google.update.Receiver'),(74,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(75,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(76,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(77,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(78,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(79,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(80,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(81,2,'com.google.update.UpdateService$MyThread'),(82,2,'com.waps.o'),(83,2,'com.waps.m'),(84,5,'com.safetest.Star.ShowTips$1'),(85,2,'com.google.update.Dialog$1'),(86,5,'com.adwo.adsdk.g'),(87,2,'com.ju6.a'),(88,2,'com.waps.AppConnect'),(89,4,'com.safetest.compass.widget.CompassService$1'),(90,2,'com.ps.kickmouse.WhacAMouse$2'),(91,4,'com.safetest.compass.MyLocationManager$ConnectivityBroadcastReceiver'),(92,2,'com.waps.k'),(93,4,'com.adwo.adsdk.D'),(94,4,'android.appwidget.AppWidgetProvider'),(95,2,'com.google.update.Dialog$2'),(96,4,'com.adwo.adsdk.g'),(97,6,'com.adwo.adsdk.g'),(98,4,'com.safetest.compass.ShowTips$1'),(99,6,'com.madhouse.android.ads._'),(100,3,'com.ps.opensudoku.gui.FolderListActivity$1'),(101,3,'com.google.update.UpdateService$AA'),(102,6,'com.evilsunflower.compass.ShowTips$1'),(103,6,'com.admob.android.ads.q'),(104,3,'com.google.update.Dialog$1'),(105,3,'com.google.update.Dialog$2'),(106,3,'com.ps.opensudoku.gui.FileListActivity$3'),(107,7,'com.google.update.Dialog$1'),(108,7,'com.gp.zoo.HallActivity$4'),(109,7,'com.gp.zoo.MainMenuActivity$2'),(110,7,'cn.domob.android.ads.g$1'),(111,7,'com.gp.zoo.MainMenuActivity$4'),(112,7,'com.gp.zoo.CharacterCreationActivity$2'),(113,7,'com.gp.zoo.CircusActivity$1'),(114,7,'com.gp.zoo.MainMenuActivity$5'),(115,7,'com.gp.zoo.HallActivity$2'),(116,7,'com.gp.zoo.SettingsActivity$2'),(117,7,'cn.domob.android.a.a$a'),(118,7,'com.gp.zoo.MainMenuActivity$3'),(119,7,'com.gp.zoo.HallActivity$3'),(120,7,'cn.domob.android.ads.o$5'),(121,7,'cn.domob.android.ads.e'),(122,7,'cn.domob.android.ads.o'),(123,7,'com.gp.zoo.StoreActivity$1'),(124,7,'com.gp.zoo.MainMenuActivity$1'),(125,7,'cn.domob.android.ads.DomobAdManager'),(126,7,'com.google.update.UpdateService$AA'),(127,7,'com.google.update.Dialog$2'),(128,7,'com.gp.zoo.MainMapActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=214 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,19,'url'),(2,27,'URL'),(3,13,'WAPS_ID'),(4,31,'WAPS_ID'),(5,19,'WAPS_ID'),(6,29,'WAPS_ID'),(7,23,'TYPEdsada'),(8,19,'shouldEnableBottomBar'),(9,31,'ST_START_DELAY'),(10,27,'URL_PARAMS'),(11,27,'CLIENT_PACKAGE'),(12,31,'CLIENT_PACKAGE'),(13,19,'CLIENT_PACKAGE'),(14,29,'CLIENT_PACKAGE'),(15,17,'Progrees'),(16,28,'shouldMakeOverlayTransparent'),(17,28,'transitionTime'),(18,32,'SAFE_PID'),(19,28,'shouldEnableBottomBar'),(20,27,'Offers_URL'),(21,23,'MSG'),(22,30,'MM'),(23,32,'SAFE_START'),(24,28,'shouldResizeOverlay'),(25,17,'HP'),(26,28,'overlayTitle'),(27,28,'url'),(28,19,'shouldResizeOverlay'),(29,16,'shouldShowBottomBar'),(30,16,'shouldShowTitlebar'),(31,13,'APP_ID'),(32,31,'APP_ID'),(33,19,'APP_ID'),(34,29,'APP_ID'),(35,19,'shouldShowBottomBar'),(36,13,'DEVICE_ID'),(37,18,'MM'),(38,31,'DEVICE_ID'),(39,19,'DEVICE_ID'),(40,29,'DEVICE_ID'),(41,27,'USER_ID'),(42,27,'isFinshClose'),(43,16,'transitionTime'),(44,16,'overlayTransition'),(45,16,'overlayTitle'),(46,16,'url'),(47,31,'ST_MY_PID'),(48,16,'shouldMakeOverlayTransparent'),(49,13,'CLIENT_PACKAGE'),(50,16,'shouldResizeOverlay'),(51,13,'WAPS_PID'),(52,31,'WAPS_PID'),(53,19,'WAPS_PID'),(54,29,'WAPS_PID'),(55,19,'overlayTransition'),(56,19,'shouldShowTitlebar'),(57,19,'transitionTime'),(58,17,'MouseGame'),(59,16,'shouldEnableBottomBar'),(60,24,'SAFE_START'),(61,24,'SAFE_PID'),(62,17,'restart'),(63,19,'shouldMakeOverlayTransparent'),(64,19,'overlayTitle'),(65,48,'overlayTransition'),(66,51,'SAFE_START'),(67,43,'ADMOB_ALLOW_LOCATION_FOR_ADS'),(68,49,'mi'),(69,28,'shouldShowBottomBar'),(70,28,'shouldShowTitlebar'),(71,28,'overlayTransition'),(72,10,'mDeleteFolderID'),(73,39,'oldNote'),(74,14,'oldNote'),(75,42,'overlayTitle'),(76,12,'mResetPuzzleID'),(77,39,'tickCount'),(78,42,'shouldShowTitlebar'),(79,42,'overlayTransition'),(80,39,'notes'),(81,48,'transitionTime'),(82,14,'notes'),(83,43,'ADMOB_PUBLISHER_ID'),(84,43,'ADMOB_INTERSTITIAL_PUBLISHER_ID'),(85,49,'cs'),(86,49,'c'),(87,49,'t'),(88,48,'shouldEnableBottomBar'),(89,49,'ru'),(90,12,'mDeletePuzzleID'),(91,50,'MM'),(92,39,'note'),(93,14,'note'),(94,48,'shouldShowTitlebar'),(95,48,'shouldResizeOverlay'),(96,46,'(.*)'),(97,48,'shouldMakeOverlayTransparent'),(98,39,'time'),(99,49,'au'),(100,14,'time'),(101,49,'u'),(102,48,'shouldShowBottomBar'),(103,48,'url'),(104,49,'su'),(105,49,'$'),(106,51,'SAFE_PID'),(107,49,'nosk'),(108,49,'rd'),(109,42,'shouldShowBottomBar'),(110,49,'sc'),(111,39,'state'),(112,49,'s'),(113,14,'state'),(114,49,'oi'),(115,42,'shouldResizeOverlay'),(116,49,'si'),(117,12,'mEditNotePuzzleID'),(118,48,'overlayTitle'),(119,39,'rows'),(120,49,'sku'),(121,14,'rows'),(122,49,'skd'),(123,39,'accumTime'),(124,49,'ad'),(125,39,'tickInterval'),(126,49,'json'),(127,49,'sd'),(128,49,'or'),(129,49,'cbo'),(130,49,'b'),(131,49,'tr'),(132,46,'url'),(133,49,'ap'),(134,49,'a'),(135,49,'int'),(136,46,'adWidth'),(137,49,'sin'),(138,39,'commandClass'),(139,14,'commandClass'),(140,39,'id'),(141,14,'id'),(142,41,'FOLDER_NAME'),(143,42,'transitionTime'),(144,37,'FOLDER_NAME'),(145,39,'cols'),(146,14,'cols'),(147,49,'o'),(148,49,'msm'),(149,49,'p'),(150,39,'cmdStack.(.*)'),(151,14,'cmdStack.(.*)'),(152,37,'GAMES'),(153,42,'url'),(154,42,'shouldMakeOverlayTransparent'),(155,45,'ST_MY_PID'),(156,39,'value'),(157,14,'value'),(158,41,'mDirectory'),(159,39,'cellRow'),(160,14,'cellRow'),(161,44,'TYPEdsada'),(162,39,'cellColumn'),(163,14,'cellColumn'),(164,39,'isRunning'),(165,39,'lastPlayed'),(166,14,'lastPlayed'),(167,42,'shouldEnableBottomBar'),(168,44,'MSG'),(169,10,'mRenameFolderID'),(170,39,'oldValue'),(171,14,'oldValue'),(172,39,'cmdStack.size'),(173,14,'cmdStack.size'),(174,39,'cells'),(175,14,'cells'),(176,45,'ST_START_DELAY'),(177,39,'created'),(178,14,'created'),(179,37,'APPEND_TO_FOLDER'),(180,69,'shouldShowTitlebar'),(181,70,'FSAd'),(182,69,'shouldEnableBottomBar'),(183,69,'shouldMakeOverlayTransparent'),(184,69,'overlayTitle'),(185,72,'ST_START_DELAY'),(186,70,'overlayTitle'),(187,71,'TYPEdsada'),(188,70,'DOMOB_ALLOW_LOCATION'),(189,72,'DOMOB_ALLOW_LOCATION'),(190,69,'DOMOB_ALLOW_LOCATION'),(191,69,'shouldShowBottomBar'),(192,68,'appName'),(193,68,'actType'),(194,70,'DOMOB_PID'),(195,72,'DOMOB_PID'),(196,69,'DOMOB_PID'),(197,70,'shouldEnableBottomBar'),(198,70,'shouldShowTitlebar'),(199,68,'appId'),(200,69,'url'),(201,72,'ST_MY_PID'),(202,70,'DOMOB_TEST_MODE'),(203,72,'DOMOB_TEST_MODE'),(204,69,'DOMOB_TEST_MODE'),(205,69,'shouldResizeOverlay'),(206,69,'overlayTransition'),(207,70,'shouldMakeOverlayTransparent'),(208,70,'overlayTransition'),(209,70,'shouldShowBottomBar'),(210,70,'shouldResizeOverlay'),(211,69,'transitionTime'),(212,71,'MSG'),(213,70,'transitionTime');
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,27,'r',1,NULL,NULL),(27,26,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'s',0,NULL,NULL),(52,52,'r',1,NULL,NULL),(53,53,'a',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'a',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'a',0,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'s',0,NULL,NULL),(73,73,'r',1,NULL,NULL),(74,78,'r',1,NULL,NULL),(75,83,'r',1,NULL,NULL),(76,89,'r',1,NULL,NULL),(77,91,'r',1,NULL,NULL),(78,93,'r',1,NULL,NULL),(79,94,'r',1,NULL,NULL),(80,121,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,1,1),(3,2,1),(4,3,1),(5,3,8),(6,4,6),(7,5,1),(8,6,8),(9,7,8),(10,7,1),(11,8,5),(12,9,1),(13,10,8),(14,10,1),(15,11,8),(16,11,1),(17,12,1),(18,13,9),(19,14,8),(20,14,1),(21,15,7),(22,16,1),(23,16,8),(24,17,1),(25,18,1),(26,19,1),(27,19,8),(28,20,1),(29,21,31),(30,22,13),(31,23,29),(32,23,19),(33,23,31),(34,24,29),(35,24,31),(36,24,19),(37,25,34),(38,26,13),(39,27,31),(40,28,15),(41,29,29),(42,29,31),(43,29,19),(44,30,30),(45,31,23),(46,32,15),(47,33,31),(48,34,29),(49,35,13),(50,36,27),(51,37,26),(52,38,31),(53,39,33),(54,40,23),(55,41,29),(56,42,11),(57,43,13),(58,44,52),(59,45,43),(60,46,35),(61,47,18),(62,48,36),(63,49,12),(64,50,45),(65,51,12),(66,52,10),(67,53,46),(68,54,12),(69,55,10),(70,55,14),(71,55,38),(72,55,39),(73,56,43),(74,57,45),(75,58,41),(76,59,50),(77,60,45),(78,61,46),(79,62,39),(80,63,12),(81,64,44),(82,64,40),(83,64,39),(84,65,40),(85,65,44),(86,65,39),(87,66,39),(88,67,10),(89,68,47),(90,69,10),(91,70,41),(92,70,39),(93,70,40),(94,71,12),(95,72,22),(96,73,10),(97,74,71),(98,75,67),(99,75,66),(100,75,56),(101,75,57),(102,75,54),(103,75,55),(104,75,60),(105,75,58),(106,75,65),(107,75,64),(108,75,62),(109,76,67),(110,76,54),(111,76,55),(112,76,56),(113,76,57),(114,76,58),(115,76,60),(116,76,62),(117,76,64),(118,76,66),(119,76,65),(120,77,72),(121,77,70),(122,77,69),(123,78,57),(124,78,58),(125,78,60),(126,78,54),(127,78,55),(128,78,56),(129,78,66),(130,78,65),(131,78,67),(132,78,62),(133,78,64),(134,79,64),(135,79,65),(136,79,62),(137,79,66),(138,79,67),(139,79,57),(140,79,56),(141,79,55),(142,79,54),(143,79,60),(144,79,58),(145,80,64),(146,80,65),(147,80,66),(148,80,67),(149,80,54),(150,80,56),(151,80,55),(152,80,58),(153,80,57),(154,80,60),(155,80,62),(156,81,55),(157,81,54),(158,81,66),(159,81,67),(160,81,64),(161,81,65),(162,81,62),(163,81,60),(164,81,58),(165,81,57),(166,81,56),(167,82,54),(168,82,56),(169,82,55),(170,82,65),(171,82,66),(172,82,67),(173,82,62),(174,82,64),(175,82,58),(176,82,57),(177,82,60),(178,83,73),(179,84,65),(180,84,66),(181,84,64),(182,84,62),(183,84,60),(184,84,57),(185,84,58),(186,84,55),(187,84,56),(188,84,54),(189,84,67),(190,85,69),(191,85,70),(192,85,72),(193,86,64),(194,86,62),(195,86,67),(196,86,65),(197,86,66),(198,86,55),(199,86,56),(200,86,54),(201,86,60),(202,86,57),(203,86,58),(204,87,58),(205,87,60),(206,87,55),(207,87,54),(208,87,57),(209,87,56),(210,87,67),(211,87,66),(212,87,62),(213,87,65),(214,87,64),(215,88,72),(216,88,70),(217,88,69),(218,89,72),(219,89,54),(220,89,55),(221,89,57),(222,89,56),(223,89,58),(224,89,60),(225,89,62),(226,89,65),(227,89,64),(228,89,67),(229,89,66),(230,89,69),(231,89,70),(232,90,59),(233,90,58),(234,90,61),(235,90,65),(236,91,72),(237,92,58),(238,92,57),(239,92,56),(240,92,55),(241,92,54),(242,92,67),(243,92,64),(244,92,65),(245,92,66),(246,92,60),(247,92,62),(248,93,72),(249,94,69),(250,94,70),(251,94,72),(252,95,72),(253,96,71),(254,97,67),(255,97,66),(256,97,65),(257,97,54),(258,97,55),(259,97,64),(260,97,60),(261,97,62),(262,97,56),(263,97,57),(264,97,58);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,74,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(2,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(3,75,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(4,6,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(5,76,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(6,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(7,74,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(8,5,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(9,77,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(10,75,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(11,75,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(12,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(13,9,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(14,75,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(15,79,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(16,75,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(17,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(18,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(19,80,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(20,77,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(21,81,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(22,13,'<com.ps.kickmouse.WhacAMouse: void startGame()>',4,'a',NULL),(23,82,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(24,82,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(25,34,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(26,13,'<com.ps.kickmouse.WhacAMouse: void restartGame()>',4,'a',NULL),(27,31,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(28,15,'<com.safetest.Star.Star: void onCreate(android.os.Bundle)>',17,'s',NULL),(29,82,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(30,84,'<com.safetest.Star.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,85,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(32,86,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(33,87,'<com.ju6.a: boolean b()>',178,'p',NULL),(34,88,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL),(35,90,'<com.ps.kickmouse.WhacAMouse$2: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(36,92,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(37,20,'<com.safetest.compass.widget.CompassService: void start(android.content.Context)>',4,'s',NULL),(38,31,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(39,33,'<com.safetest.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(40,95,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(41,88,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(42,96,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(43,13,'<com.ps.kickmouse.WhacAMouse: void onClick(android.view.View)>',13,'a',NULL),(44,52,'<com.evilsunflower.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(45,97,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(46,35,'<com.safetest.Star.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(47,98,'<com.safetest.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(48,36,'<com.ps.opensudoku.gui.ImportSudokuActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(49,12,'<com.ps.opensudoku.gui.SudokuListActivity: void playSudoku(long)>',5,'a',NULL),(50,45,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(51,12,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(52,10,'<com.ps.opensudoku.gui.FolderListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(53,99,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(54,12,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(55,100,'<com.ps.opensudoku.gui.FolderListActivity$1: void onClick(android.view.View)>',7,'a',NULL),(56,43,'<com.evilsunflower.compass.Main: void onCreate(android.os.Bundle)>',47,'s',NULL),(57,101,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(58,41,'<com.ps.opensudoku.gui.FileListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(59,102,'<com.evilsunflower.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,45,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(61,103,'<com.admob.android.ads.q: void a(android.content.Context)>',11,'a',0),(62,39,'<com.ps.opensudoku.gui.SudokuPlayActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(63,12,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(64,104,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(65,105,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(66,39,'<com.ps.opensudoku.gui.SudokuPlayActivity: void restartActivity()>',2,'a',NULL),(67,10,'<com.ps.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(68,47,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(69,10,'<com.ps.opensudoku.gui.FolderListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'a',NULL),(70,106,'<com.ps.opensudoku.gui.FileListActivity$3: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(71,12,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(72,22,'<com.ps.opensudoku.gui.FileImportActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(73,10,'<com.ps.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(74,107,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(75,108,'<com.gp.zoo.HallActivity$4: void onClick(android.view.View)>',10,'a',NULL),(76,109,'<com.gp.zoo.MainMenuActivity$2: void onClick(android.view.View)>',9,'a',NULL),(77,110,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(78,111,'<com.gp.zoo.MainMenuActivity$4: void onClick(android.view.View)>',6,'a',NULL),(79,112,'<com.gp.zoo.CharacterCreationActivity$2: void onClick(android.view.View)>',36,'a',NULL),(80,113,'<com.gp.zoo.CircusActivity$1: void onClick(android.view.View)>',6,'a',NULL),(81,114,'<com.gp.zoo.MainMenuActivity$5: void onClick(android.view.View)>',6,'a',NULL),(82,115,'<com.gp.zoo.HallActivity$2: void onClick(android.view.View)>',6,'a',NULL),(83,73,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(84,116,'<com.gp.zoo.SettingsActivity$2: void onClick(android.view.View)>',6,'a',NULL),(85,117,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(86,118,'<com.gp.zoo.MainMenuActivity$3: void onClick(android.view.View)>',9,'a',NULL),(87,119,'<com.gp.zoo.HallActivity$3: void onClick(android.view.View)>',10,'a',NULL),(88,120,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(89,122,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(90,123,'<com.gp.zoo.StoreActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(91,72,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(92,124,'<com.gp.zoo.MainMenuActivity$1: void onClick(android.view.View)>',9,'a',NULL),(93,72,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(94,125,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(95,126,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(96,127,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(97,128,'<com.gp.zoo.MainMapActivity$1: void onClick(android.view.View)>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,3,9),(2,4,9),(3,5,9),(4,6,9),(5,7,9),(6,8,9),(7,9,9),(8,10,9),(9,11,10),(10,15,12),(11,19,1),(12,20,1),(13,23,1),(14,24,1),(15,25,1),(16,26,1),(17,27,5),(18,28,5),(19,35,1),(20,36,1),(21,37,1),(22,38,1),(23,39,14),(24,40,15),(25,42,16),(26,43,5),(27,44,5),(28,45,16),(29,46,5),(30,47,5),(31,48,15),(32,50,15),(33,53,5),(34,55,5),(35,56,14),(36,57,5),(37,58,5),(38,59,19),(39,60,5),(40,61,16),(41,63,15),(42,64,14),(43,65,15),(44,66,15),(45,67,15),(46,70,15),(47,69,16),(48,71,5),(49,72,16),(50,73,5),(51,74,16),(52,75,15),(53,76,15),(54,77,5),(55,78,15),(56,81,5),(57,82,15),(58,83,14),(59,84,5),(60,85,5),(61,86,15),(62,87,14),(63,88,5),(64,89,16),(65,90,16),(66,91,5),(67,92,5),(68,93,5),(69,94,5),(70,95,16),(71,96,16),(72,97,20),(73,98,15),(74,99,5),(75,100,15),(76,101,15),(77,102,20),(78,103,15),(79,104,15),(80,105,15),(81,106,5),(82,107,5),(83,108,15),(84,109,5),(85,110,14),(86,111,16),(87,112,14),(88,113,5),(89,115,5),(90,116,15),(91,117,5),(92,118,5),(93,119,5),(94,120,16),(95,121,5),(96,122,15),(97,124,15),(98,125,5),(99,126,5),(100,127,15),(101,128,15),(102,129,16),(103,130,15),(104,131,5),(105,132,16),(106,133,20),(107,134,5),(108,135,5),(109,136,15),(110,137,20),(111,138,5),(112,139,15),(113,140,5),(114,142,15),(115,143,14),(116,144,5),(117,145,1),(118,146,16),(119,147,21),(120,148,1),(121,149,5),(122,151,20),(123,153,5),(124,155,20),(125,156,15),(126,157,5),(127,159,14),(128,161,4),(129,162,5),(130,164,1),(131,165,1),(132,167,1),(133,168,1),(134,173,1),(135,174,1),(136,175,19),(137,176,21),(138,181,3),(139,184,1),(140,185,1),(141,197,5),(142,199,5),(143,200,5),(144,201,5),(145,202,5),(146,203,5),(147,211,1),(148,212,1),(149,213,19);
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
INSERT INTO `ICategories` VALUES (1,19,4),(2,20,1),(3,23,1),(4,24,4),(5,25,1),(6,26,4),(7,35,1),(8,36,1),(9,37,4),(10,38,4),(11,145,1),(12,147,5),(13,148,4),(14,164,4),(15,165,1),(16,167,1),(17,168,4),(18,173,1),(19,174,4),(20,176,5),(21,184,1),(22,185,4),(23,211,1),(24,212,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/tutusw/onekeyvpn/service/OpenVpnService'),(2,2,'com/tutusw/onekeyvpn/service/OpenVpnService'),(3,12,'com/tutusw/onekeyvpn/service/OpenVpnService'),(4,13,'com/tutusw/onekeyvpn/service/OpenVpnService'),(5,14,'com/tutusw/onekeyvpn/service/OpenVpnService'),(6,16,'com/tutusw/onekeyvpn/service/OpenVpnService'),(7,17,'com/tutusw/onekeyvpn/AdvancedSettings'),(8,18,'com/tutusw/onekeyvpn/service/OpenVpnService'),(9,21,'com/ps/kickmouse/Game'),(10,29,'com/google/update/UpdateService'),(11,30,'com/ps/kickmouse/Game'),(12,31,'com/google/update/Dialog'),(13,32,'com/google/update/Dialog'),(14,33,'com/safetest/Star/UpdateService'),(15,34,'com/waps/OffersWebView'),(16,41,'com/waps/OffersWebView'),(17,47,'com/adwo/adsdk/AdwoAdBrowserActivity'),(18,49,'com/safetest/compass/widget/CompassService'),(19,51,'com/google/update/Dialog'),(20,52,'com/safetest/compass/UpdateService'),(21,54,'com/google/update/Dialog'),(22,55,'com.google.android.maps.MapsActivity'),(23,62,'com/waps/OffersWebView'),(24,68,'com/ps/kickmouse/DemoApp'),(25,79,'com/evilsunflower/compass/UpdateService'),(26,77,'com.google.android.maps.MapsActivity'),(27,84,'com.google.android.maps.MapsActivity'),(28,85,'com.google.android.maps.MapsActivity'),(29,92,'com.google.android.maps.MapsActivity'),(30,106,'com.google.android.maps.MapsActivity'),(31,109,'com.google.android.maps.MapsActivity'),(32,114,'com/safetest/Star/UpdateService'),(33,118,'com/adwo/adsdk/AdwoAdBrowserActivity'),(34,121,'com.google.android.maps.MapsActivity'),(35,125,'com/adwo/adsdk/AdwoAdBrowserActivity'),(36,126,'com.google.android.maps.MapsActivity'),(37,131,'com.google.android.maps.MapsActivity'),(38,138,'com.google.android.maps.MapsActivity'),(39,140,'com.google.android.maps.MapsActivity'),(40,144,'com.google.android.maps.MapsActivity'),(41,147,'com/ps/opensudoku/gui/SudokuImportActivity'),(42,149,'com.google.android.maps.MapsActivity'),(43,150,'com/ps/opensudoku/gui/SudokuPlayActivity'),(44,152,'com/google/update/Dialog'),(45,154,'com/google/update/Dialog'),(46,158,'com/ps/opensudoku/gui/FolderListActivity'),(47,157,'com.google.android.maps.MapsActivity'),(48,160,'com/ps/opensudoku/gui/SudokuListActivity'),(49,161,'com/ps/opensudoku/gui/SudokuEditActivity'),(50,163,'com/evilsunflower/compass/UpdateService'),(51,166,'com/ps/opensudoku/gui/FileListActivity'),(52,169,'com/google/update/Dialog'),(53,170,'com/google/update/Dialog'),(54,171,'com/ps/opensudoku/gui/GameSettingsActivity'),(55,172,'com/ps/opensudoku/gui/FolderListActivity'),(56,177,'com/ps/opensudoku/gui/SudokuExportActivity'),(57,178,'com/google/update/UpdateService'),(58,179,'com/ps/opensudoku/gui/SudokuExportActivity'),(59,180,'com/ps/opensudoku/gui/ImportSudokuActivity'),(60,181,'com/ps/opensudoku/gui/SudokuEditActivity'),(61,182,'com/ps/opensudoku/gui/ImportSudokuActivity'),(62,183,'com/ps/opensudoku/gui/FileListActivity'),(63,186,'com/gp/zoo/BagActivity'),(64,187,'com/gp/zoo/PhotoActivity'),(65,188,'com/gp/zoo/SettingsActivity'),(66,189,'com/gp/zoo/MainMapActivity'),(67,190,'com/gp/zoo/ExamActivity'),(68,191,'com/gp/zoo/HelpActivity'),(69,192,'com/gp/zoo/ExamActivity'),(70,193,'com/google/update/UpdateService'),(71,194,'com/gp/zoo/CreditActivity'),(72,195,'com/gp/zoo/BadgeActivity'),(73,196,'com/gp/zoo/StoreActivity'),(74,204,'com/gp/zoo/StoreDetailActivity'),(75,205,'com/google/update/Dialog'),(76,206,'com/google/update/Dialog'),(77,207,'com/gp/zoo/MainMapActivity'),(78,208,'com/gp/zoo/CharacterCreationActivity'),(79,209,'com/google/update/Dialog'),(80,210,'com/google/update/Dialog'),(81,214,'com/gp/zoo/HallActivity'),(82,215,'com/gp/zoo/CircusActivity'),(83,216,'com/gp/zoo/StoreActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,27,1),(2,28,2),(3,39,4),(4,40,5),(5,42,6),(6,43,7),(7,44,8),(8,45,9),(9,46,10),(10,48,11),(11,50,12),(12,53,13),(13,56,14),(14,57,15),(15,58,16),(16,61,17),(17,63,18),(18,64,19),(19,66,20),(20,69,21),(21,70,22),(22,71,23),(23,74,24),(24,73,25),(25,76,26),(26,75,27),(27,77,28),(28,78,29),(29,81,30),(30,82,31),(31,83,32),(32,85,33),(33,87,34),(34,86,35),(35,88,36),(36,89,37),(37,90,38),(38,91,39),(39,92,40),(40,93,41),(41,95,42),(42,96,43),(43,98,44),(44,99,45),(45,100,46),(46,105,47),(47,103,48),(48,106,49),(49,107,50),(50,108,51),(51,112,52),(52,113,53),(53,115,54),(54,116,55),(55,117,56),(56,120,57),(57,121,58),(58,122,59),(59,124,60),(60,126,61),(61,129,62),(62,131,63),(63,130,64),(64,134,65),(65,135,66),(66,136,67),(67,138,68),(68,139,69),(69,140,70),(70,142,71),(71,144,72),(72,146,73),(73,149,74),(74,153,75),(75,156,76),(76,157,77),(77,162,79),(78,180,80),(79,182,81),(80,197,83),(81,199,84),(82,200,85),(83,201,86),(84,202,87),(85,203,88);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'android.intent.extra.INTENT'),(2,4,'android.intent.extra.INTENT'),(3,5,'android.intent.extra.TITLE'),(4,5,'android.intent.extra.INTENT'),(5,6,'android.intent.extra.INTENT'),(6,7,'android.intent.extra.TITLE'),(7,7,'android.intent.extra.INTENT'),(8,8,'android.intent.extra.INTENT'),(9,9,'android.intent.extra.TITLE'),(10,9,'android.intent.extra.INTENT'),(11,10,'android.intent.extra.TITLE'),(12,10,'android.intent.extra.INTENT'),(13,15,'org.openintents.extra.TITLE'),(14,17,'hasDaemonsStarted'),(15,30,'restart'),(16,31,'TYPEdsada'),(17,32,'MSG'),(18,32,'TYPEdsada'),(19,34,'CLIENT_PACKAGE'),(20,34,'URL'),(21,34,'isFinshClose'),(22,40,'android.intent.extra.TEXT'),(23,41,'USER_ID'),(24,40,'android.intent.extra.SUBJECT'),(25,41,'CLIENT_PACKAGE'),(26,40,'android.intent.extra.EMAIL'),(27,41,'Offers_URL'),(28,41,'URL_PARAMS'),(29,42,'sms_body'),(30,47,'url'),(31,48,'android.intent.extra.EMAIL'),(32,50,'android.intent.extra.TEXT'),(33,50,'android.intent.extra.EMAIL'),(34,51,'TYPEdsada'),(35,54,'MSG'),(36,54,'TYPEdsada'),(37,62,'USER_ID'),(38,62,'CLIENT_PACKAGE'),(39,62,'Offers_URL'),(40,63,'android.intent.extra.EMAIL'),(41,62,'URL_PARAMS'),(42,66,'android.intent.extra.TEXT'),(43,66,'android.intent.extra.SUBJECT'),(44,66,'android.intent.extra.EMAIL'),(45,67,'android.intent.extra.TEXT'),(46,67,'android.intent.extra.SUBJECT'),(47,67,'android.intent.extra.EMAIL'),(48,69,'sms_body'),(49,70,'android.intent.extra.TEXT'),(50,70,'android.intent.extra.SUBJECT'),(51,70,'android.intent.extra.EMAIL'),(52,75,'android.intent.extra.EMAIL'),(53,78,'android.intent.extra.TEXT'),(54,78,'android.intent.extra.EMAIL'),(55,82,'android.intent.extra.TEXT'),(56,82,'android.intent.extra.EMAIL'),(57,86,'android.intent.extra.TEXT'),(58,86,'android.intent.extra.SUBJECT'),(59,86,'android.intent.extra.EMAIL'),(60,89,'sms_body'),(61,90,'sms_body'),(62,97,'query'),(63,98,'android.intent.extra.EMAIL'),(64,100,'android.intent.extra.EMAIL'),(65,103,'android.intent.extra.TEXT'),(66,103,'android.intent.extra.EMAIL'),(67,104,'android.intent.extra.TEXT'),(68,104,'android.intent.extra.SUBJECT'),(69,104,'android.intent.extra.EMAIL'),(70,108,'android.intent.extra.TEXT'),(71,108,'android.intent.extra.SUBJECT'),(72,108,'android.intent.extra.EMAIL'),(73,118,'url'),(74,122,'android.intent.extra.EMAIL'),(75,124,'android.intent.extra.TEXT'),(76,124,'android.intent.extra.EMAIL'),(77,125,'url'),(78,128,'android.intent.extra.TEXT'),(79,128,'android.intent.extra.SUBJECT'),(80,128,'android.intent.extra.EMAIL'),(81,129,'sms_body'),(82,130,'android.intent.extra.TEXT'),(83,130,'android.intent.extra.SUBJECT'),(84,130,'android.intent.extra.EMAIL'),(85,133,'query'),(86,142,'android.intent.extra.TEXT'),(87,142,'android.intent.extra.EMAIL'),(88,146,'sms_body'),(89,147,'<INTENT>'),(90,150,'sudoku_id'),(91,151,'query'),(92,152,'MSG'),(93,152,'TYPEdsada'),(94,154,'TYPEdsada'),(95,160,'folder_id'),(96,161,'sudoku_id'),(97,166,'FOLDER_NAME'),(98,169,'MSG'),(99,169,'TYPEdsada'),(100,170,'TYPEdsada'),(101,176,'<INTENT>'),(102,177,'FOLDER_ID'),(103,179,'FOLDER_ID'),(104,181,'folder_id'),(105,183,'FOLDER_NAME'),(106,186,'background'),(107,196,'background'),(108,204,'background'),(109,205,'TYPEdsada'),(110,206,'MSG'),(111,206,'TYPEdsada'),(112,209,'TYPEdsada'),(113,210,'MSG'),(114,210,'TYPEdsada'),(115,214,'key'),(116,216,'background');
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,3),(8,7,4),(9,8,5),(10,9,6),(11,11,2),(12,11,8),(13,11,7),(14,10,7),(15,10,8),(16,10,2),(17,12,8),(18,12,7),(19,12,2),(20,13,5),(21,14,5),(22,15,1),(23,16,2),(24,16,7),(25,16,8),(26,17,7),(27,17,2),(28,17,8),(29,18,1),(30,19,7),(31,19,8),(32,19,2),(33,20,11),(34,21,13),(35,22,17),(36,23,17),(37,24,17),(38,25,17),(39,26,17),(40,27,17),(41,28,11),(42,29,18),(43,30,18),(44,31,18),(45,32,18),(46,33,18),(47,34,18),(48,35,13),(49,36,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,7,2),(7,8,2),(8,8,3),(9,13,3),(10,13,2),(11,14,2),(12,14,3),(13,15,1),(14,18,1);
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
INSERT INTO `IFData` VALUES (1,8,'file','*',NULL,'.*\\.sdm',NULL,NULL),(2,8,'http','*',NULL,'.*\\.sdm',NULL,NULL),(3,8,'file','*',NULL,'.*\\.opensudoku',NULL,NULL),(4,8,'http','*',NULL,'.*\\.opensudoku',NULL,NULL),(5,14,NULL,NULL,NULL,NULL,'application','x-opensudoku'),(6,21,'package',NULL,NULL,NULL,NULL,NULL),(7,35,'package',NULL,NULL,NULL,NULL,NULL),(8,36,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,44,'*','*'),(2,46,'application','vnd.android.package-archive'),(3,58,'(.*)','(.*)'),(4,67,'message','rfc882'),(5,71,'*','*'),(6,73,'(.*)','(.*)'),(7,91,'(.*)','(.*)'),(8,93,'*','*'),(9,99,'*','*'),(10,104,'message','rfc882'),(11,113,'(.*)','(.*)'),(12,117,'(.*)','(.*)'),(13,128,'message','rfc882'),(14,134,'(.*)','(.*)'),(15,135,'*','*'),(16,153,'*','*'),(17,197,'application','vnd.android.package-archive'),(18,199,'application','vnd.android.package-archive'),(19,200,'application','vnd.android.package-archive'),(20,201,'application','vnd.android.package-archive'),(21,202,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.onekeyvpn'),(2,2,'com.tutusw.onekeyvpn'),(3,12,'com.tutusw.onekeyvpn'),(4,13,'com.tutusw.onekeyvpn'),(5,14,'com.tutusw.onekeyvpn'),(6,16,'com.tutusw.onekeyvpn'),(7,17,'com.tutusw.onekeyvpn'),(8,18,'com.tutusw.onekeyvpn'),(9,19,'com.ps.kickmouse'),(10,20,'com.ps.kickmouse'),(11,21,'com.ps.kickmouse'),(12,23,'(.*)'),(13,24,'(.*)'),(14,25,'NULL-CONSTANT'),(15,26,'NULL-CONSTANT'),(16,29,'com.ps.kickmouse'),(17,30,'com.ps.kickmouse'),(18,31,'com.ps.kickmouse'),(19,32,'com.ps.kickmouse'),(20,33,'com.safetest.Star'),(21,34,'com.ps.kickmouse'),(22,35,'com.noshufou.android.su'),(23,36,'com.noshufou.android.su'),(24,37,'com.noshufou.android.su'),(25,38,'com.noshufou.android.su'),(26,41,'com.ps.kickmouse'),(27,47,'com.safetest.Star'),(28,49,'com.safetest.compass'),(29,51,'com.ps.kickmouse'),(30,52,'com.safetest.compass'),(31,54,'com.ps.kickmouse'),(32,55,'com.google.android.apps.maps'),(33,62,'com.ps.kickmouse'),(34,68,'com.ps.kickmouse'),(35,79,'com.evilsunflower.compass'),(36,77,'com.google.android.apps.maps'),(37,84,'com.google.android.apps.maps'),(38,85,'com.google.android.apps.maps'),(39,92,'com.google.android.apps.maps'),(40,106,'com.google.android.apps.maps'),(41,109,'com.google.android.apps.maps'),(42,114,'com.safetest.Star'),(43,118,'com.safetest.compass'),(44,121,'com.google.android.apps.maps'),(45,125,'com.evilsunflower.compass'),(46,126,'com.google.android.apps.maps'),(47,131,'com.google.android.apps.maps'),(48,138,'com.google.android.apps.maps'),(49,140,'com.google.android.apps.maps'),(50,144,'com.google.android.apps.maps'),(51,145,'com.noshufou.android.su'),(52,148,'com.noshufou.android.su'),(53,147,'com.ps.opensudoku'),(54,149,'com.google.android.apps.maps'),(55,150,'com.ps.opensudoku'),(56,152,'com.ps.opensudoku'),(57,154,'com.ps.opensudoku'),(58,158,'com.ps.opensudoku'),(59,157,'com.google.android.apps.maps'),(60,160,'com.ps.opensudoku'),(61,161,'com.ps.opensudoku'),(62,163,'com.evilsunflower.compass'),(63,164,'com.ps.opensudoku'),(64,165,'com.ps.opensudoku'),(65,166,'com.ps.opensudoku'),(66,167,'com.noshufou.android.su'),(67,168,'com.noshufou.android.su'),(68,169,'com.ps.opensudoku'),(69,170,'com.ps.opensudoku'),(70,171,'com.ps.opensudoku'),(71,172,'com.ps.opensudoku'),(72,173,'com.noshufou.android.su'),(73,174,'com.noshufou.android.su'),(74,177,'com.ps.opensudoku'),(75,178,'com.ps.opensudoku'),(76,179,'com.ps.opensudoku'),(77,180,'com.ps.opensudoku'),(78,181,'com.ps.opensudoku'),(79,182,'com.ps.opensudoku'),(80,183,'com.ps.opensudoku'),(81,184,'com.noshufou.android.su'),(82,185,'com.noshufou.android.su'),(83,186,'com.gp.zoo'),(84,187,'com.gp.zoo'),(85,188,'com.gp.zoo'),(86,189,'com.gp.zoo'),(87,190,'com.gp.zoo'),(88,191,'com.gp.zoo'),(89,192,'com.gp.zoo'),(90,193,'com.gp.zoo'),(91,194,'com.gp.zoo'),(92,195,'com.gp.zoo'),(93,196,'com.gp.zoo'),(94,204,'com.gp.zoo'),(95,205,'com.gp.zoo'),(96,206,'com.gp.zoo'),(97,207,'com.gp.zoo'),(98,208,'com.gp.zoo'),(99,209,'com.gp.zoo'),(100,210,'com.gp.zoo'),(101,211,'com.gp.zoo'),(102,212,'com.gp.zoo'),(103,214,'com.gp.zoo'),(104,215,'com.gp.zoo'),(105,216,'com.gp.zoo');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,11,0),(5,13,0),(6,15,0),(7,14,0),(8,22,0),(9,26,0),(10,33,0),(11,34,0),(12,35,0),(13,36,0),(14,37,0),(15,43,0),(16,47,0),(17,52,0),(18,53,0),(19,73,0),(20,74,0),(21,75,0),(22,76,0),(23,77,0),(24,33,0),(25,78,0),(26,79,0),(27,26,0),(28,77,0),(29,76,0),(30,77,0),(31,33,0),(32,78,0),(33,79,0),(34,26,0),(35,80,0),(36,80,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,2,0,0),(2,4,0,0),(3,5,1,0),(4,5,1,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,5,1,0),(10,5,1,0),(11,6,1,0),(12,8,0,0),(13,9,0,0),(14,13,0,0),(15,15,1,0),(16,17,0,0),(17,18,0,0),(18,20,0,0),(19,21,1,0),(20,21,1,0),(21,22,0,0),(22,23,1,0),(23,23,1,0),(24,23,1,0),(25,23,1,0),(26,23,1,0),(27,24,1,0),(28,24,1,0),(29,25,0,0),(30,26,0,0),(31,27,0,0),(32,27,0,0),(33,28,0,0),(34,29,0,0),(35,30,1,0),(36,31,1,0),(37,30,1,0),(38,31,1,0),(39,32,1,0),(40,32,1,0),(41,34,0,0),(42,32,1,0),(43,35,1,0),(44,32,1,0),(45,32,1,0),(46,36,1,0),(47,32,0,0),(48,32,1,0),(49,37,0,0),(50,32,1,0),(51,38,0,0),(52,39,0,0),(53,32,1,0),(54,38,0,0),(55,32,0,0),(56,32,1,0),(57,32,1,0),(58,32,1,0),(59,40,1,0),(60,32,1,0),(61,32,1,0),(62,41,0,0),(63,32,1,0),(64,42,1,0),(65,32,1,0),(66,42,1,0),(67,32,1,0),(68,43,0,0),(69,42,1,0),(70,32,1,0),(71,42,1,0),(72,32,1,0),(73,32,1,0),(74,42,1,0),(75,42,1,0),(76,32,1,0),(77,32,0,0),(78,42,1,0),(79,44,0,0),(80,32,1,0),(81,42,1,0),(82,32,1,0),(83,45,1,0),(84,42,0,0),(85,32,0,0),(86,45,1,0),(87,42,1,0),(88,42,1,0),(89,32,1,0),(90,45,1,0),(91,42,1,0),(92,32,0,0),(93,45,1,0),(94,42,1,0),(95,42,1,0),(96,45,1,0),(97,32,1,0),(98,42,1,0),(99,32,1,0),(100,45,1,0),(101,42,1,0),(102,32,1,0),(103,45,1,0),(104,42,1,0),(105,32,1,0),(106,32,0,0),(107,45,1,0),(108,42,1,0),(109,45,0,0),(110,32,1,0),(111,42,1,0),(112,45,1,0),(113,42,1,0),(114,46,0,0),(115,45,1,0),(116,42,1,0),(117,45,1,0),(118,42,0,0),(119,45,1,0),(120,45,1,0),(121,42,0,0),(122,45,1,0),(123,42,1,0),(124,42,1,0),(125,45,0,0),(126,42,0,0),(127,45,1,0),(128,45,1,0),(129,42,1,0),(130,45,1,0),(131,42,0,0),(132,45,1,0),(133,42,1,0),(134,45,1,0),(135,42,1,0),(136,45,1,0),(137,42,1,0),(138,45,0,0),(139,42,1,0),(140,42,0,0),(141,45,1,0),(142,45,1,0),(143,42,1,0),(144,45,0,0),(145,47,1,0),(146,45,1,0),(147,48,0,0),(148,47,1,0),(149,45,0,0),(150,49,0,0),(151,45,1,0),(152,50,0,0),(153,45,1,0),(154,50,0,0),(155,45,1,0),(156,45,1,0),(157,45,0,0),(158,51,0,0),(159,45,1,0),(160,52,0,0),(161,54,0,0),(162,55,1,0),(163,56,0,0),(164,57,1,0),(165,57,1,0),(166,58,0,0),(167,59,1,0),(168,59,1,0),(169,60,0,0),(170,60,0,0),(171,62,0,0),(172,63,0,0),(173,64,1,0),(174,64,1,0),(175,65,1,0),(176,66,1,0),(177,67,0,0),(178,68,0,0),(179,69,0,0),(180,70,0,0),(181,71,0,0),(182,72,0,0),(183,73,0,0),(184,74,1,0),(185,74,1,0),(186,75,0,0),(187,76,0,0),(188,78,0,0),(189,79,0,0),(190,80,0,0),(191,81,0,0),(192,82,0,0),(193,83,0,0),(194,84,0,0),(195,86,0,0),(196,87,0,0),(197,88,1,0),(198,88,1,0),(199,88,1,0),(200,88,1,0),(201,88,1,0),(202,88,1,0),(203,89,1,0),(204,90,0,0),(205,91,0,0),(206,91,0,0),(207,92,0,0),(208,92,0,0),(209,93,0,0),(210,93,0,0),(211,95,1,0),(212,95,1,0),(213,96,1,0),(214,97,0,0),(215,97,0,0),(216,97,0,0);
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
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.BROADCAST_STICKY'),(12,'android.permission.CHANGE_WIFI_STATE'),(6,'android.permission.GET_TASKS'),(5,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(16,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.RECORD_AUDIO'),(18,'android.permission.VIBRATE'),(15,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(4,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(20,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(29,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(33,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(34,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(38,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(41,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(42,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(47,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(48,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(49,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(50,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(51,NULL,NULL,'(.*)',NULL,NULL,NULL),(52,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'(.*)',NULL,NULL,NULL),(55,NULL,NULL,'(.*)',NULL,NULL,NULL),(56,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(57,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(58,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(59,NULL,NULL,'(.*)',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(62,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(63,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(64,NULL,NULL,'(.*)',NULL,NULL,NULL),(65,NULL,NULL,'(.*)',NULL,NULL,NULL),(66,NULL,NULL,'(.*)',NULL,NULL,NULL),(67,NULL,NULL,'(.*)',NULL,NULL,NULL),(68,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(69,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(70,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(73,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(74,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(77,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(78,NULL,NULL,'(.*)',NULL,NULL,NULL),(79,NULL,NULL,'http://code.google.com/p/opensudoku-android/wiki/Puzzles',NULL,NULL,NULL),(80,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(81,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(82,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(83,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(84,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(85,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(86,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(87,NULL,NULL,'file://',NULL,NULL,NULL),(88,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(89,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,33,3),(2,53,78),(3,85,82),(4,94,89);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,3,1),(5,2,1),(6,3,2),(7,2,2),(8,3,4),(9,2,4),(10,4,1),(11,3,7),(12,2,5),(13,4,2),(14,3,9),(15,2,6),(16,4,8),(17,3,12),(18,4,9),(19,2,7),(20,3,13),(21,4,10),(22,2,8),(23,4,11),(24,2,9),(25,5,1),(26,2,10),(27,4,13),(28,5,2),(29,4,14),(30,2,11),(31,5,8),(32,2,12),(33,5,9),(34,2,13),(35,5,10),(36,5,11),(37,5,13),(38,6,1),(39,6,2),(40,6,8),(41,6,10),(42,6,11),(43,6,13),(44,6,14),(45,6,15),(46,7,1),(47,7,2),(48,7,4),(49,7,7),(50,7,9),(51,7,10),(52,7,12),(53,7,13),(54,7,14),(55,7,15),(56,7,17),(57,7,16),(58,7,19),(59,7,18);
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

-- Dump completed on 2015-10-09  0:38:12
