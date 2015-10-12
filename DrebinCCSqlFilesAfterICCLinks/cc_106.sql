-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_106
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (17,'(.*)'),(15,'<INTENT>'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(12,'android.intent.action.DIAL'),(6,'android.intent.action.EDIT'),(5,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.SEND'),(14,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(7,'android.intent.action.VIEW'),(16,'android.intent.action.WEB_SEARCH'),(11,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(8,'android.service.wallpaper.WallpaperService'),(18,'android.settings.WIRELESS_SETTINGS'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.dy.ebook.book01',1),(2,'com.safetest.pvz',11),(3,'com.ps.opensudoku',3),(4,'com.safetest.tractor',10),(5,'com.livegame.wallpaperxuanlisecai',2),(6,'com.mogo.chongwullk',10),(7,'com.mogo.katongllk',9);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.dy.ebook.book01.MainBook'),(2,1,'com.aimery.abook.main.MainCanvas'),(3,1,'com.google.update.Dialog'),(4,1,'com.google.update.UpdateService'),(5,1,'com.google.update.Receiver'),(6,2,'com.safetest.pvz.pvz'),(7,2,'com.safetest.pvz.ShowGame'),(8,2,'com.safetest.pvz.End'),(9,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(10,2,'com.safetest.pvz.ShowTips'),(11,2,'com.safetest.pvz.UpdateService'),(12,3,'com.ps.opensudoku.gui.FolderListActivity'),(13,2,'com.safetest.pvz.Receiver'),(14,3,'com.ps.opensudoku.gui.SudokuListActivity'),(15,3,'com.ps.opensudoku.gui.SudokuEditActivity'),(16,3,'com.ps.opensudoku.gui.FileImportActivity'),(17,3,'com.ps.opensudoku.gui.ImportSudokuActivity'),(18,3,'com.ps.opensudoku.gui.SudokuImportActivity'),(19,3,'com.ps.opensudoku.gui.SudokuExportActivity'),(20,3,'com.ps.opensudoku.gui.SudokuPlayActivity'),(21,3,'com.ps.opensudoku.gui.GameSettingsActivity'),(22,3,'com.ps.opensudoku.gui.FileListActivity'),(23,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,3,'com.google.update.Dialog'),(25,3,'com.google.update.UpdateService'),(26,3,'com.google.update.Receiver'),(27,4,'com.safetest.tractor.android.AndroidTractorGameController'),(28,4,'com.safetest.tractor.android.CreditActivity'),(29,4,'com.safetest.tractor.android.Tractor'),(30,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(31,5,'com.livegame.wallpaperxuanlisecai.MainActivity'),(32,4,'com.safetest.tractor.ShowTips'),(33,4,'com.safetest.tractor.UpdateService'),(34,4,'com.safetest.tractor.Receiver'),(35,5,'com.livegame.wallpaperxuanlisecai.SettingsActivity'),(36,5,'com.livegame.wallpaperxuanlisecai.SelectFolderActivity'),(37,5,'com.google.ads.AdActivity'),(38,5,'com.vpon.adon.android.WebInApp'),(39,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(40,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(41,5,'com.waps.OffersWebView'),(42,5,'com.google.update.Dialog'),(43,5,'com.livegame.wallpaperxuanlisecai.WallpaperSlideshow'),(44,5,'com.google.update.UpdateService'),(45,5,'com.google.update.Receiver'),(46,1,'com.google.update.Dialog$2'),(47,1,'com.google.update.UpdateService$AA'),(48,1,'com.google.update.Dialog$1'),(49,2,'com.safetest.pvz.pvz$1'),(50,2,'com.safetest.pvz.End$1'),(51,2,'com.safetest.pvz.ShowTips$1'),(52,6,'com.mogo.chongwullk.begin'),(53,6,'com.mogo.chongwullk.Main'),(54,6,'com.google.ads.AdActivity'),(55,7,'com.mogo.katongllk.begin'),(56,6,'com.vpon.adon.android.WebInApp'),(57,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(58,7,'com.mogo.katongllk.Main'),(59,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(60,6,'com.waps.OffersWebView'),(61,7,'com.google.ads.AdActivity'),(62,6,'com.google.update.Dialog'),(63,7,'com.vpon.adon.android.WebInApp'),(64,6,'com.google.update.UpdateService'),(65,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(66,6,'com.google.update.Receiver'),(67,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(68,7,'com.waps.OffersWebView'),(69,7,'com.google.update.Dialog'),(70,7,'com.google.update.UpdateService'),(71,7,'com.google.update.Receiver'),(72,5,'com.waps.AppConnect'),(73,5,'com.waps.m'),(74,5,'com.google.update.Dialog$1'),(75,5,'com.waps.k'),(76,5,'com.google.update.Dialog$2'),(77,5,'com.livegame.wallpaperxuanlisecai.MainActivity$1'),(78,5,'com.google.update.UpdateService$AA'),(79,5,'com.livegame.wallpaperxuanlisecai.MainActivity$2'),(80,4,'com.adwo.adsdk.g'),(81,3,'com.google.update.UpdateService$MyThread'),(82,4,'com.safetest.tractor.ShowTips$1'),(83,3,'com.ju6.a'),(84,6,'com.mogo.chongwullk.begin$beginButtonListener'),(85,3,'com.google.update.Dialog$1'),(86,7,'com.ju6.a'),(87,7,'com.waps.k'),(88,6,'com.google.update.UpdateService$MyThread'),(89,7,'com.google.update.UpdateService$MyThread'),(90,3,'com.ps.opensudoku.gui.FolderListActivity$1'),(91,6,'com.waps.k'),(92,7,'com.google.update.Dialog$1'),(93,6,'com.waps.AppConnect'),(94,3,'com.google.update.Dialog$2'),(95,6,'org.loon.framework.android.game.LGameAndroid2DActivity$10'),(96,7,'com.google.update.Dialog$2'),(97,3,'com.ps.opensudoku.gui.FileListActivity$3'),(98,6,'com.google.update.Dialog$1'),(99,7,'com.waps.AppConnect'),(100,6,'com.ju6.a'),(101,6,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(102,7,'org.loon.framework.android.game.LGameAndroid2DActivity$9'),(103,6,'com.google.update.Dialog$2'),(104,6,'com.waps.m'),(105,7,'com.waps.m'),(106,7,'com.mogo.katongllk.begin$beginButtonListener'),(107,7,'org.loon.framework.android.game.LGameAndroid2DActivity$10');
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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'TYPEdsada'),(2,3,'MSG'),(3,4,'ST_MY_PID'),(4,4,'ST_START_DELAY'),(5,9,'shouldShowTitlebar'),(6,9,'overlayTitle'),(7,10,'MM'),(8,9,'shouldEnableBottomBar'),(9,9,'overlayTransition'),(10,11,'SAFE_PID'),(11,9,'url'),(12,9,'transitionTime'),(13,9,'shouldMakeOverlayTransparent'),(14,9,'shouldShowBottomBar'),(15,11,'SAFE_START'),(16,9,'shouldResizeOverlay'),(17,31,'WAPS_ID'),(18,35,'folder'),(19,38,'url'),(20,40,'url'),(21,44,'ST_MY_PID'),(22,41,'CLIENT_PACKAGE'),(23,42,'MSG'),(24,39,'Adwo_PID'),(25,41,'URL'),(26,41,'isFinshClose'),(27,40,'shouldMakeOverlayTransparent'),(28,40,'shouldShowTitlebar'),(29,42,'TYPEdsada'),(30,38,'adWidth'),(31,41,'USER_ID'),(32,41,'Offers_URL'),(33,40,'shouldEnableBottomBar'),(34,31,'WAPS_PID'),(35,40,'transitionTime'),(36,40,'overlayTransition'),(37,40,'shouldShowBottomBar'),(38,44,'ST_START_DELAY'),(39,31,'APP_ID'),(40,40,'shouldResizeOverlay'),(41,39,'isTestMode'),(42,40,'overlayTitle'),(43,41,'URL_PARAMS'),(44,31,'CLIENT_PACKAGE'),(45,31,'DEVICE_ID'),(46,30,'transitionTime'),(47,30,'shouldMakeOverlayTransparent'),(48,30,'url'),(49,30,'overlayTransition'),(50,33,'SAFE_PID'),(51,27,'num_decks'),(52,20,'note'),(53,15,'note'),(54,23,'url'),(55,23,'shouldResizeOverlay'),(56,20,'id'),(57,15,'id'),(58,22,'FOLDER_NAME'),(59,20,'rows'),(60,15,'rows'),(61,14,'mResetPuzzleID'),(62,23,'shouldShowTitlebar'),(63,20,'cellColumn'),(64,15,'cellColumn'),(65,18,'FOLDER_NAME'),(66,33,'SAFE_START'),(67,27,'num_players'),(68,14,'mEditNotePuzzleID'),(69,20,'accumTime'),(70,27,'server_address'),(71,20,'created'),(72,30,'overlayTitle'),(73,15,'created'),(74,27,'game_id'),(75,23,'shouldShowBottomBar'),(76,18,'APPEND_TO_FOLDER'),(77,20,'tickCount'),(78,20,'tickInterval'),(79,30,'shouldResizeOverlay'),(80,27,'create_game'),(81,32,'MM'),(82,20,'notes'),(83,30,'shouldShowBottomBar'),(84,15,'notes'),(85,20,'value'),(86,15,'value'),(87,20,'oldValue'),(88,15,'oldValue'),(89,12,'mRenameFolderID'),(90,27,'preferred_player_id'),(91,20,'cols'),(92,27,'num_ais'),(93,15,'cols'),(94,30,'shouldEnableBottomBar'),(95,30,'shouldShowTitlebar'),(96,20,'cellRow'),(97,15,'cellRow'),(98,23,'overlayTransition'),(99,25,'ST_MY_PID'),(100,20,'oldNote'),(101,15,'oldNote'),(102,20,'cells'),(103,15,'cells'),(104,22,'mDirectory'),(105,51,'Adwo_PID'),(106,52,'overlayTitle'),(107,58,'ST_MY_PID'),(108,52,'shouldEnableBottomBar'),(109,54,'USER_ID'),(110,52,'shouldShowBottomBar'),(111,46,'WAPS_PID'),(112,52,'shouldMakeOverlayTransparent'),(113,48,'action'),(114,24,'TYPEdsada'),(115,54,'URL'),(116,23,'overlayTitle'),(117,54,'isFinshClose'),(118,24,'MSG'),(119,20,'isRunning'),(120,23,'shouldEnableBottomBar'),(121,61,'shouldResizeOverlay'),(122,20,'commandClass'),(123,15,'commandClass'),(124,61,'transitionTime'),(125,20,'cmdStack.(.*)'),(126,15,'cmdStack.(.*)'),(127,54,'URL_PARAMS'),(128,20,'time'),(129,15,'time'),(130,20,'lastPlayed'),(131,15,'lastPlayed'),(132,18,'GAMES'),(133,23,'transitionTime'),(134,56,'TYPEdsada'),(135,25,'ST_START_DELAY'),(136,20,'cmdStack.size'),(137,46,'APP_ID'),(138,15,'cmdStack.size'),(139,48,'com.google.ads.AdOpener'),(140,23,'shouldMakeOverlayTransparent'),(141,49,'WAPS_PID'),(142,49,'CLIENT_PACKAGE'),(143,12,'mDeleteFolderID'),(144,63,'TYPEdsada'),(145,20,'state'),(146,55,'action'),(147,15,'state'),(148,63,'MSG'),(149,61,'url'),(150,14,'mDeletePuzzleID'),(151,58,'ST_START_DELAY'),(152,61,'overlayTitle'),(153,52,'shouldShowTitlebar'),(154,62,'URL'),(155,59,'isTestMode'),(156,62,'Offers_URL'),(157,48,'params'),(158,55,'params'),(159,57,'adWidth'),(160,55,'com.google.ads.AdOpener'),(161,64,'ST_MY_PID'),(162,64,'ST_START_DELAY'),(163,52,'url'),(164,52,'shouldResizeOverlay'),(165,62,'USER_ID'),(166,46,'CLIENT_PACKAGE'),(167,57,'url'),(168,61,'shouldShowTitlebar'),(169,61,'shouldShowBottomBar'),(170,59,'Adwo_PID'),(171,54,'CLIENT_PACKAGE'),(172,52,'overlayTransition'),(173,50,'adWidth'),(174,54,'Offers_URL'),(175,52,'transitionTime'),(176,46,'DEVICE_ID'),(177,51,'isTestMode'),(178,56,'MSG'),(179,50,'url'),(180,62,'URL_PARAMS'),(181,49,'APP_ID'),(182,61,'shouldEnableBottomBar'),(183,46,'WAPS_ID'),(184,49,'DEVICE_ID'),(185,49,'WAPS_ID'),(186,62,'CLIENT_PACKAGE'),(187,62,'isFinshClose'),(188,61,'shouldMakeOverlayTransparent'),(189,61,'overlayTransition');
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'r',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',1,14,NULL),(44,44,'s',0,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,52,'a',1,NULL,NULL),(47,53,'a',0,NULL,NULL),(48,54,'a',0,NULL,NULL),(49,55,'a',1,NULL,NULL),(50,56,'a',0,NULL,NULL),(51,57,'a',0,NULL,NULL),(52,59,'a',0,NULL,NULL),(53,58,'a',0,NULL,NULL),(54,60,'a',0,NULL,NULL),(55,61,'a',0,NULL,NULL),(56,62,'a',0,NULL,NULL),(57,63,'a',0,NULL,NULL),(58,64,'s',0,NULL,NULL),(59,65,'a',0,NULL,NULL),(60,66,'r',1,NULL,NULL),(61,67,'a',0,NULL,NULL),(62,68,'a',0,NULL,NULL),(63,69,'a',0,NULL,NULL),(64,70,'s',0,NULL,NULL),(65,71,'r',1,NULL,NULL),(66,73,'r',1,NULL,NULL),(67,104,'r',1,NULL,NULL),(68,105,'r',1,NULL,NULL);
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
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,3),(3,3,4),(4,4,4),(5,5,5),(6,6,3),(7,7,4),(8,8,6),(9,9,8),(10,10,6),(11,11,10),(12,12,13),(13,13,31),(14,14,44),(15,15,44),(16,16,42),(17,17,41),(18,18,42),(19,19,31),(20,20,45),(21,21,44),(22,22,31),(23,23,28),(24,23,27),(25,24,34),(26,25,28),(27,26,27),(28,27,27),(29,28,20),(30,29,17),(31,30,26),(32,31,14),(33,32,14),(34,33,12),(35,34,22),(36,35,28),(37,36,28),(38,37,25),(39,38,27),(40,39,32),(41,40,25),(42,41,27),(43,42,25),(44,43,25),(45,44,16),(46,45,46),(47,46,20),(48,47,24),(49,47,21),(50,47,20),(51,48,60),(52,49,48),(53,50,12),(54,51,64),(55,52,14),(56,53,62),(57,54,58),(58,55,12),(59,56,64),(60,57,20),(61,57,19),(62,57,15),(63,57,12),(64,58,54),(65,59,63),(66,60,12),(67,61,46),(68,62,20),(69,62,24),(70,62,21),(71,63,58),(72,63,52),(73,63,47),(74,64,63),(75,65,20),(76,65,21),(77,65,22),(78,66,56),(79,67,14),(80,68,49),(81,69,14),(82,70,58),(83,71,58),(84,72,64),(85,73,47),(86,73,58),(87,73,52),(88,74,65),(89,75,53),(90,75,61),(91,75,64),(92,76,58),(93,77,55),(94,78,56),(95,79,49),(96,80,64),(97,81,53),(98,81,64),(99,81,61);
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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.dy.ebook.book01.MainBook: void onCreate(android.os.Bundle)>',5,'a',NULL),(2,46,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(3,47,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(4,4,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(5,5,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(6,48,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(7,4,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(8,49,'<com.safetest.pvz.pvz$1: void onClick(android.view.View)>',7,'a',NULL),(9,50,'<com.safetest.pvz.End$1: void onClick(android.view.View)>',7,'a',NULL),(10,6,'<com.safetest.pvz.pvz: void onStart()>',5,'s',NULL),(11,51,'<com.safetest.pvz.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(12,13,'<com.safetest.pvz.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(13,72,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(14,44,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(15,44,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(16,74,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(17,75,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(18,76,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(19,77,'<com.livegame.wallpaperxuanlisecai.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(20,45,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(21,78,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(22,79,'<com.livegame.wallpaperxuanlisecai.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(23,28,'<com.safetest.tractor.android.CreditActivity: void LaunchNewGame()>',15,'a',NULL),(24,34,'<com.safetest.tractor.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(25,28,'<com.safetest.tractor.android.CreditActivity: void onCreate(android.os.Bundle)>',21,'s',NULL),(26,27,'<com.safetest.tractor.android.AndroidTractorGameController: boolean onMenuItemSelected(int,android.view.MenuItem)>',32,'a',NULL),(27,80,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(28,20,'<com.ps.opensudoku.gui.SudokuPlayActivity: void restartActivity()>',2,'a',NULL),(29,17,'<com.ps.opensudoku.gui.ImportSudokuActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(30,26,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(31,14,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(32,14,'<com.ps.opensudoku.gui.SudokuListActivity: void playSudoku(long)>',5,'a',NULL),(33,12,'<com.ps.opensudoku.gui.FolderListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'a',NULL),(34,22,'<com.ps.opensudoku.gui.FileListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(35,28,'<com.safetest.tractor.android.CreditActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(36,28,'<com.safetest.tractor.android.CreditActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(37,81,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(38,27,'<com.safetest.tractor.android.AndroidTractorGameController: boolean onMenuItemSelected(int,android.view.MenuItem)>',26,'a',NULL),(39,82,'<com.safetest.tractor.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(40,25,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(41,27,'<com.safetest.tractor.android.AndroidTractorGameController: void LaunchNewGameActivity()>',4,'a',NULL),(42,25,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(43,83,'<com.ju6.a: boolean b()>',178,'p',NULL),(44,16,'<com.ps.opensudoku.gui.FileImportActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(45,84,'<com.mogo.chongwullk.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(46,20,'<com.ps.opensudoku.gui.SudokuPlayActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(47,85,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(48,66,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(49,54,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(50,12,'<com.ps.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(51,86,'<com.ju6.a: boolean b()>',178,'p',NULL),(52,14,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(53,87,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(54,88,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(55,12,'<com.ps.opensudoku.gui.FolderListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(56,89,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(57,90,'<com.ps.opensudoku.gui.FolderListActivity$1: void onClick(android.view.View)>',7,'a',NULL),(58,91,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(59,92,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(60,12,'<com.ps.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(61,93,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(62,94,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(63,95,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(64,96,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(65,97,'<com.ps.opensudoku.gui.FileListActivity$3: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(66,98,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(67,14,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(68,99,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(69,14,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(70,100,'<com.ju6.a: boolean b()>',178,'p',NULL),(71,64,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(72,70,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(73,101,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(74,71,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(75,102,'<org.loon.framework.android.game.LGameAndroid2DActivity$9: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(76,64,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(77,61,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(78,103,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(79,106,'<com.mogo.katongllk.begin$beginButtonListener: void onClick(android.view.View)>',28,'a',NULL),(80,70,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(81,107,'<org.loon.framework.android.game.LGameAndroid2DActivity$10: void onClick(android.content.DialogInterface,int)>',6,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,2,9),(2,3,1),(3,4,1),(4,8,1),(5,9,1),(6,15,1),(7,16,1),(8,23,1),(9,24,1),(10,25,7),(11,26,9),(12,27,11),(13,29,1),(14,30,1),(15,35,7),(16,36,12),(17,37,13),(18,38,14),(19,39,7),(20,40,14),(21,41,13),(22,42,13),(23,43,7),(24,44,7),(25,45,12),(26,46,7),(27,47,7),(28,48,7),(29,49,14),(30,50,13),(31,51,13),(32,52,13),(33,53,13),(34,54,14),(35,55,7),(36,56,13),(37,57,7),(38,59,13),(39,60,15),(40,61,7),(41,62,15),(42,63,14),(43,64,7),(44,66,16),(45,67,7),(46,68,6),(47,69,16),(48,70,7),(49,72,13),(50,73,7),(51,75,12),(52,77,7),(53,78,7),(54,79,1),(55,80,7),(56,81,1),(57,82,1),(58,83,1),(59,92,1),(60,94,1),(61,95,17),(62,97,7),(63,98,17),(64,100,7),(65,101,1),(66,103,1),(67,104,1),(68,105,1),(69,106,7),(70,107,7),(71,108,1),(72,109,1),(73,112,9),(74,114,9),(75,116,1),(76,117,1),(77,120,5),(78,125,18),(79,127,18),(80,129,17),(81,131,7),(82,132,9),(83,133,17);
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,3,4),(2,4,1),(3,8,1),(4,9,4),(5,15,1),(6,16,4),(7,23,1),(8,24,4),(9,29,4),(10,30,1),(11,60,5),(12,62,5),(13,79,4),(14,81,1),(15,82,1),(16,83,4),(17,92,1),(18,94,4),(19,95,3),(20,97,3),(21,98,3),(22,101,1),(23,103,4),(24,104,4),(25,105,1),(26,108,1),(27,109,4),(28,116,1),(29,117,4),(30,129,3),(31,131,3),(32,133,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/aimery/abook/main/MainCanvas'),(2,5,'com/google/update/Dialog'),(3,6,'com/google/update/Dialog'),(4,7,'com/google/update/UpdateService'),(5,10,'com/google/update/Dialog'),(6,11,'com/google/update/Dialog'),(7,12,'com/safetest/pvz/ShowGame'),(8,13,'com/safetest/pvz/ShowGame'),(9,14,'com/safetest/pvz/UpdateService'),(10,17,'com/safetest/pvz/UpdateService'),(11,18,'com/waps/OffersWebView'),(12,19,'com/google/update/Dialog'),(13,20,'com/google/update/Dialog'),(14,21,'com/google/update/Dialog'),(15,22,'com/google/update/Dialog'),(16,28,'com/google/update/UpdateService'),(17,31,'com/livegame/wallpaperxuanlisecai/SettingsActivity'),(18,32,'com/safetest/tractor/android/AndroidTractorGameController'),(19,33,'com/safetest/tractor/UpdateService'),(20,34,'com/safetest/tractor/UpdateService'),(21,44,'com.google.android.maps.MapsActivity'),(22,57,'com.google.android.maps.MapsActivity'),(23,61,'com.google.android.maps.MapsActivity'),(24,62,'com/ps/opensudoku/gui/SudokuImportActivity'),(25,65,'com/google/update/UpdateService'),(26,64,'com.google.android.maps.MapsActivity'),(27,68,'com/ps/opensudoku/gui/SudokuEditActivity'),(28,70,'com/adwo/adsdk/AdwoAdBrowserActivity'),(29,71,'com/ps/opensudoku/gui/SudokuPlayActivity'),(30,73,'com.google.android.maps.MapsActivity'),(31,74,'com/ps/opensudoku/gui/SudokuExportActivity'),(32,76,'com/ps/opensudoku/gui/FileListActivity'),(33,84,'com/google/update/Dialog'),(34,85,'com/google/update/Dialog'),(35,86,'com/safetest/tractor/android/Tractor'),(36,87,'com/google/update/Dialog'),(37,88,'com/google/update/Dialog'),(38,89,'com/ps/opensudoku/gui/ImportSudokuActivity'),(39,90,'com/mogo/chongwullk/Main'),(40,91,'com/ps/opensudoku/gui/GameSettingsActivity'),(41,93,'com/google/update/UpdateService'),(42,96,'com/ps/opensudoku/gui/FileListActivity'),(43,99,'com/ps/opensudoku/gui/FolderListActivity'),(44,102,'com/ps/opensudoku/gui/SudokuListActivity'),(45,110,'com/ps/opensudoku/gui/SudokuExportActivity'),(46,111,'com/waps/OffersWebView'),(47,115,'com/ps/opensudoku/gui/ImportSudokuActivity'),(48,118,'com/ps/opensudoku/gui/FolderListActivity'),(49,119,'com/waps/OffersWebView'),(50,120,'com/ps/opensudoku/gui/SudokuEditActivity'),(51,121,'com/google/update/Dialog'),(52,122,'com/google/update/Dialog'),(53,123,'com/google/update/Dialog'),(54,124,'com/google/update/Dialog'),(55,126,'com/google/update/UpdateService'),(56,128,'com/google/update/Dialog'),(57,130,'com/google/update/Dialog'),(58,134,'com/mogo/katongllk/Main'),(59,135,'com/google/update/Dialog'),(60,136,'com/google/update/Dialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,25,1),(2,35,2),(3,36,3),(4,37,4),(5,38,5),(6,39,6),(7,40,7),(8,41,8),(9,42,9),(10,43,10),(11,45,11),(12,46,12),(13,47,13),(14,49,14),(15,50,15),(16,53,16),(17,55,17),(18,56,18),(19,57,19),(20,59,20),(21,61,21),(22,63,22),(23,64,23),(24,67,24),(25,72,25),(26,73,26),(27,77,27),(28,78,28),(29,80,29),(30,89,31),(31,95,32),(32,97,33),(33,98,35),(34,100,36),(35,106,37),(36,107,38),(37,115,39),(38,129,41),(39,131,42),(40,133,43);
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
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,5,'MSG'),(2,5,'TYPEdsada'),(3,6,'TYPEdsada'),(4,10,'MSG'),(5,10,'TYPEdsada'),(6,11,'TYPEdsada'),(7,18,'USER_ID'),(8,18,'CLIENT_PACKAGE'),(9,18,'Offers_URL'),(10,18,'URL_PARAMS'),(11,19,'TYPEdsada'),(12,20,'MSG'),(13,20,'TYPEdsada'),(14,21,'TYPEdsada'),(15,22,'MSG'),(16,22,'TYPEdsada'),(17,27,'android.live_wallpaper.package'),(18,27,'android.live_wallpaper.settings'),(19,32,'server_address'),(20,32,'create_game'),(21,32,'num_players'),(22,32,'game_id'),(23,32,'num_decks'),(24,32,'preferred_player_id'),(25,32,'num_ais'),(26,37,'android.intent.extra.TEXT'),(27,37,'android.intent.extra.SUBJECT'),(28,37,'android.intent.extra.EMAIL'),(29,38,'sms_body'),(30,41,'android.intent.extra.EMAIL'),(31,42,'android.intent.extra.TEXT'),(32,42,'android.intent.extra.EMAIL'),(33,50,'android.intent.extra.EMAIL'),(34,52,'android.intent.extra.TEXT'),(35,52,'android.intent.extra.SUBJECT'),(36,52,'android.intent.extra.EMAIL'),(37,53,'android.intent.extra.TEXT'),(38,53,'android.intent.extra.SUBJECT'),(39,53,'android.intent.extra.EMAIL'),(40,59,'android.intent.extra.TEXT'),(41,59,'android.intent.extra.EMAIL'),(42,60,'<INTENT>'),(43,62,'<INTENT>'),(44,63,'sms_body'),(45,66,'query'),(46,68,'sudoku_id'),(47,70,'url'),(48,71,'sudoku_id'),(49,74,'FOLDER_ID'),(50,76,'FOLDER_NAME'),(51,84,'MSG'),(52,84,'TYPEdsada'),(53,85,'TYPEdsada'),(54,87,'MSG'),(55,87,'TYPEdsada'),(56,88,'TYPEdsada'),(57,96,'FOLDER_NAME'),(58,102,'folder_id'),(59,110,'FOLDER_ID'),(60,111,'USER_ID'),(61,111,'CLIENT_PACKAGE'),(62,111,'Offers_URL'),(63,111,'URL_PARAMS'),(64,119,'USER_ID'),(65,119,'CLIENT_PACKAGE'),(66,119,'Offers_URL'),(67,119,'URL_PARAMS'),(68,120,'folder_id'),(69,121,'TYPEdsada'),(70,122,'TYPEdsada'),(71,123,'MSG'),(72,124,'MSG'),(73,123,'TYPEdsada'),(74,124,'TYPEdsada'),(75,128,'TYPEdsada'),(76,130,'MSG'),(77,130,'TYPEdsada'),(78,135,'TYPEdsada'),(79,136,'MSG'),(80,136,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,1),(7,5,3),(8,5,2),(9,5,4),(10,6,6),(11,6,5),(12,7,7),(13,8,7),(14,9,7),(15,10,3),(16,10,4),(17,10,2),(18,11,1),(19,12,1),(20,13,4),(21,13,3),(22,13,2),(23,14,8),(24,15,4),(25,15,2),(26,15,3),(27,16,1),(28,17,1),(29,18,2),(30,18,3),(31,18,4),(32,19,3),(33,19,2),(34,19,4),(35,20,10),(36,21,10),(37,22,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,6,2),(5,7,2),(6,7,3),(7,8,2),(8,8,3),(9,9,2),(10,9,3),(11,11,2),(12,11,1),(13,12,1),(14,16,1),(15,17,1);
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
INSERT INTO `IFData` VALUES (1,7,'file','*',NULL,'.*\\.sdm',NULL,NULL),(2,7,'http','*',NULL,'.*\\.sdm',NULL,NULL),(3,7,'file','*',NULL,'.*\\.opensudoku',NULL,NULL),(4,7,'http','*',NULL,'.*\\.opensudoku',NULL,NULL),(5,9,NULL,NULL,NULL,NULL,'application','x-opensudoku'),(6,20,'package',NULL,NULL,NULL,NULL,NULL),(7,21,'package',NULL,NULL,NULL,NULL,NULL),(8,22,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,25,'application','vnd.android.package-archive'),(2,39,'*','*'),(3,47,'(.*)','(.*)'),(4,52,'message','rfc882'),(5,55,'(.*)','(.*)'),(6,67,'*','*'),(7,98,'(.*)','(.*)'),(8,100,'application','vnd.android.package-archive'),(9,107,'application','vnd.android.package-archive'),(10,133,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.dy.ebook.book01'),(2,3,'com.dy.ebook.book01'),(3,4,'com.dy.ebook.book01'),(4,5,'com.dy.ebook.book01'),(5,6,'com.dy.ebook.book01'),(6,7,'com.dy.ebook.book01'),(7,8,'com.noshufou.android.su'),(8,9,'com.noshufou.android.su'),(9,10,'com.dy.ebook.book01'),(10,11,'com.dy.ebook.book01'),(11,12,'com.safetest.pvz'),(12,13,'com.safetest.pvz'),(13,14,'com.safetest.pvz'),(14,15,'com.noshufou.android.su'),(15,16,'com.noshufou.android.su'),(16,17,'com.safetest.pvz'),(17,18,'com.livegame.wallpaperxuanlisecai'),(18,19,'com.livegame.wallpaperxuanlisecai'),(19,20,'com.livegame.wallpaperxuanlisecai'),(20,21,'com.livegame.wallpaperxuanlisecai'),(21,22,'com.livegame.wallpaperxuanlisecai'),(22,23,'com.noshufou.android.su'),(23,24,'com.noshufou.android.su'),(24,28,'com.livegame.wallpaperxuanlisecai'),(25,29,'com.livegame.wallpaperxuanlisecai'),(26,30,'com.livegame.wallpaperxuanlisecai'),(27,31,'com.livegame.wallpaperxuanlisecai'),(28,32,'com.safetest.tractor'),(29,33,'com.safetest.tractor'),(30,34,'com.safetest.tractor'),(31,44,'com.google.android.apps.maps'),(32,57,'com.google.android.apps.maps'),(33,61,'com.google.android.apps.maps'),(34,62,'com.ps.opensudoku'),(35,65,'com.ps.opensudoku'),(36,64,'com.google.android.apps.maps'),(37,68,'com.ps.opensudoku'),(38,70,'com.safetest.tractor'),(39,71,'com.ps.opensudoku'),(40,73,'com.google.android.apps.maps'),(41,74,'com.ps.opensudoku'),(42,76,'com.ps.opensudoku'),(43,79,'com.ps.opensudoku'),(44,81,'com.ps.opensudoku'),(45,82,'com.noshufou.android.su'),(46,83,'com.noshufou.android.su'),(47,84,'com.ps.opensudoku'),(48,85,'com.ps.opensudoku'),(49,86,'com.safetest.tractor'),(50,87,'com.ps.opensudoku'),(51,88,'com.ps.opensudoku'),(52,89,'com.ps.opensudoku'),(53,90,'com.mogo.chongwullk'),(54,91,'com.ps.opensudoku'),(55,92,'com.noshufou.android.su'),(56,93,'com.mogo.chongwullk'),(57,94,'com.noshufou.android.su'),(58,96,'com.ps.opensudoku'),(59,99,'com.ps.opensudoku'),(60,101,'com.mogo.chongwullk'),(61,102,'com.ps.opensudoku'),(62,103,'com.mogo.chongwullk'),(63,104,'com.mogo.katongllk'),(64,105,'com.mogo.katongllk'),(65,108,'com.noshufou.android.su'),(66,109,'com.noshufou.android.su'),(67,110,'com.ps.opensudoku'),(68,111,'com.mogo.chongwullk'),(69,115,'com.ps.opensudoku'),(70,116,'com.noshufou.android.su'),(71,117,'com.noshufou.android.su'),(72,118,'com.ps.opensudoku'),(73,119,'com.mogo.katongllk'),(74,120,'com.ps.opensudoku'),(75,121,'com.mogo.chongwullk'),(76,122,'com.mogo.katongllk'),(77,123,'com.mogo.chongwullk'),(78,124,'com.mogo.katongllk'),(79,126,'com.mogo.katongllk'),(80,128,'com.mogo.chongwullk'),(81,130,'com.mogo.chongwullk'),(82,134,'com.mogo.katongllk'),(83,135,'com.mogo.katongllk'),(84,136,'com.mogo.katongllk');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,6,0),(4,12,0),(5,13,0),(6,15,0),(7,16,0),(8,17,0),(9,18,0),(10,26,0),(11,28,0),(12,31,0),(13,34,0),(14,43,0),(15,45,0),(16,46,0),(17,49,0),(18,60,0),(19,65,0),(20,66,0),(21,67,0),(22,68,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,1,0),(4,3,1,0),(5,4,0,0),(6,4,0,0),(7,5,0,0),(8,6,1,0),(9,6,1,0),(10,7,0,0),(11,7,0,0),(12,8,0,0),(13,9,0,0),(14,10,0,0),(15,11,1,0),(16,11,1,0),(17,12,0,0),(18,13,0,0),(19,14,0,0),(20,14,0,0),(21,15,0,0),(22,15,0,0),(23,16,1,0),(24,16,1,0),(25,17,1,0),(26,18,1,0),(27,19,1,0),(28,20,0,0),(29,21,1,0),(30,21,1,0),(31,22,0,0),(32,23,0,0),(33,24,0,0),(34,25,0,0),(35,26,1,0),(36,27,1,0),(37,27,1,0),(38,27,1,0),(39,27,1,0),(40,27,1,0),(41,27,1,0),(42,27,1,0),(43,27,1,0),(44,27,0,0),(45,27,1,0),(46,27,1,0),(47,27,1,0),(48,27,1,0),(49,27,1,0),(50,27,1,0),(51,27,1,0),(52,27,1,0),(53,27,1,0),(54,27,1,0),(55,27,1,0),(56,27,1,0),(57,27,0,0),(58,27,1,0),(59,27,1,0),(60,28,1,0),(61,27,0,0),(62,29,0,0),(63,27,1,0),(64,27,0,0),(65,30,0,0),(66,27,1,0),(67,27,1,0),(68,31,0,0),(69,27,1,0),(70,27,0,0),(71,32,0,0),(72,27,1,0),(73,27,0,0),(74,33,0,0),(75,27,1,0),(76,34,0,0),(77,35,1,0),(78,36,1,0),(79,37,1,0),(80,38,1,0),(81,37,1,0),(82,39,1,0),(83,39,1,0),(84,40,0,0),(85,40,0,0),(86,41,0,0),(87,42,0,0),(88,42,0,0),(89,44,0,0),(90,45,0,0),(91,46,0,0),(92,47,1,0),(93,48,0,0),(94,47,1,0),(95,49,1,0),(96,50,0,0),(97,49,1,0),(98,49,1,0),(99,52,0,0),(100,53,1,0),(101,54,1,0),(102,55,0,0),(103,54,1,0),(104,56,1,0),(105,56,1,0),(106,57,1,0),(107,58,1,0),(108,59,1,0),(109,59,1,0),(110,60,0,0),(111,61,0,0),(112,62,1,0),(113,63,1,0),(114,64,1,0),(115,65,0,0),(116,66,1,0),(117,66,1,0),(118,67,0,0),(119,68,0,0),(120,69,0,0),(121,71,0,0),(122,72,0,0),(123,71,0,0),(124,72,0,0),(125,73,1,0),(126,74,0,0),(127,75,1,0),(128,76,0,0),(129,77,1,0),(130,76,0,0),(131,77,1,0),(132,78,1,0),(133,77,1,0),(134,79,0,0),(135,80,0,0),(136,80,0,0),(137,81,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,1,2,2,NULL),(2,60,1,2,NULL),(3,95,1,2,NULL),(4,97,1,2,NULL),(5,129,1,2,NULL),(6,131,1,2,NULL),(7,5,3,2,NULL),(8,5,24,2,NULL),(9,5,42,2,NULL),(10,5,56,2,NULL),(11,5,63,2,NULL),(12,6,3,2,NULL),(13,6,24,2,NULL),(14,6,42,2,NULL),(15,6,56,2,NULL),(16,6,63,2,NULL),(17,10,3,2,NULL),(18,10,24,2,NULL),(19,10,42,2,NULL),(20,10,56,2,NULL),(21,10,63,2,NULL),(22,11,3,2,NULL),(23,11,24,2,NULL),(24,11,42,2,NULL),(25,11,56,2,NULL),(26,11,63,2,NULL),(27,7,4,2,NULL),(28,7,25,2,NULL),(29,7,44,2,NULL),(30,7,58,2,NULL),(31,7,64,2,NULL),(32,60,5,2,NULL),(33,95,5,2,NULL),(34,97,5,2,NULL),(35,129,5,2,NULL),(36,131,5,2,NULL),(37,74,19,2,NULL),(38,96,22,2,NULL),(39,102,14,2,NULL),(40,110,19,2,NULL),(41,60,12,2,NULL),(42,95,12,2,NULL),(43,97,12,2,NULL),(44,129,12,2,NULL),(45,131,12,2,NULL),(46,68,15,2,NULL),(47,71,20,2,NULL),(48,99,12,2,NULL),(49,118,12,2,NULL),(50,120,15,2,NULL),(51,60,15,2,NULL),(52,95,15,2,NULL),(53,97,15,2,NULL),(54,129,15,2,NULL),(55,131,15,2,NULL),(56,89,17,2,NULL),(57,62,18,2,NULL),(58,60,17,2,NULL),(59,95,17,2,NULL),(60,60,46,2,NULL),(61,97,17,2,NULL),(62,95,46,2,NULL),(63,129,17,2,NULL),(64,97,46,2,NULL),(65,131,17,2,NULL),(66,129,46,2,NULL),(67,91,21,2,NULL),(68,131,46,2,NULL),(69,60,6,2,NULL),(70,95,6,2,NULL),(71,60,13,2,NULL),(72,97,6,2,NULL),(73,60,26,2,NULL),(74,95,13,2,NULL),(75,60,28,2,NULL),(76,97,13,2,NULL),(77,60,34,2,NULL),(78,95,26,2,NULL),(79,60,31,2,NULL),(80,97,26,2,NULL),(81,60,43,2,NULL),(82,95,28,2,NULL),(83,60,45,2,NULL),(84,97,28,2,NULL),(85,60,60,2,NULL),(86,95,34,2,NULL),(87,60,49,2,NULL),(88,97,34,2,NULL),(89,60,65,2,NULL),(90,95,31,2,NULL),(91,76,22,2,NULL),(92,97,31,2,NULL),(93,84,3,2,NULL),(94,95,43,2,NULL),(95,84,24,2,NULL),(96,97,43,2,NULL),(97,84,42,2,NULL),(98,95,45,2,NULL),(99,84,56,2,NULL),(100,97,45,2,NULL),(101,84,63,2,NULL),(102,95,60,2,NULL),(103,85,3,2,NULL),(104,97,60,2,NULL),(105,85,24,2,NULL),(106,95,49,2,NULL),(107,85,42,2,NULL),(108,97,49,2,NULL),(109,85,56,2,NULL),(110,95,65,2,NULL),(111,85,63,2,NULL),(112,97,65,2,NULL),(113,87,3,2,NULL),(114,121,3,2,NULL),(115,87,24,2,NULL),(116,121,24,2,NULL),(117,87,42,2,NULL),(118,121,42,2,NULL),(119,87,56,2,NULL),(120,121,56,2,NULL),(121,87,63,2,NULL),(122,121,63,2,NULL),(123,88,3,2,NULL),(124,123,3,2,NULL),(125,88,24,2,NULL),(126,123,24,2,NULL),(127,88,42,2,NULL),(128,123,42,2,NULL),(129,88,56,2,NULL),(130,123,56,2,NULL),(131,88,63,2,NULL),(132,123,63,2,NULL),(133,65,4,2,NULL),(134,128,3,2,NULL),(135,65,25,2,NULL),(136,128,24,2,NULL),(137,65,44,2,NULL),(138,128,42,2,NULL),(139,65,58,2,NULL),(140,128,56,2,NULL),(141,65,64,2,NULL),(142,128,63,2,NULL),(143,129,26,2,NULL),(144,130,3,2,NULL),(145,131,26,2,NULL),(146,130,24,2,NULL),(147,130,42,2,NULL),(148,130,56,2,NULL),(149,130,63,2,NULL),(150,93,4,2,NULL),(151,93,25,2,NULL),(152,93,44,2,NULL),(153,93,58,2,NULL),(154,93,64,2,NULL),(155,129,60,2,NULL),(156,131,60,2,NULL),(157,129,49,2,NULL),(158,131,49,2,NULL),(159,129,6,2,NULL),(160,131,6,2,NULL),(161,129,13,2,NULL),(162,131,13,2,NULL),(163,129,28,2,NULL),(164,131,28,2,NULL),(165,129,34,2,NULL),(166,131,34,2,NULL),(167,129,31,2,NULL),(168,131,31,2,NULL),(169,129,43,2,NULL),(170,131,43,2,NULL),(171,129,45,2,NULL),(172,131,45,2,NULL),(173,129,65,2,NULL),(174,131,65,2,NULL),(175,122,3,2,NULL),(176,122,24,2,NULL),(177,122,42,2,NULL),(178,122,56,2,NULL),(179,122,63,2,NULL),(180,124,3,2,NULL),(181,124,24,2,NULL),(182,124,42,2,NULL),(183,124,56,2,NULL),(184,124,63,2,NULL),(185,135,3,2,NULL),(186,135,24,2,NULL),(187,135,42,2,NULL),(188,135,56,2,NULL),(189,135,63,2,NULL),(190,136,3,2,NULL),(191,136,24,2,NULL),(192,136,42,2,NULL),(193,136,56,2,NULL),(194,136,63,2,NULL),(195,126,4,2,NULL),(196,126,25,2,NULL),(197,126,44,2,NULL),(198,126,58,2,NULL),(199,126,64,2,NULL),(200,14,11,2,NULL),(201,17,11,2,NULL),(202,86,29,2,NULL),(203,32,27,2,NULL),(204,34,33,2,NULL),(205,33,33,2,NULL),(206,19,3,2,NULL),(207,19,24,2,NULL),(208,19,42,2,NULL),(209,19,56,2,NULL),(210,19,63,2,NULL),(211,20,3,2,NULL),(212,20,24,2,NULL),(213,20,42,2,NULL),(214,20,56,2,NULL),(215,20,63,2,NULL),(216,21,3,2,NULL),(217,21,24,2,NULL),(218,21,42,2,NULL),(219,21,56,2,NULL),(220,21,63,2,NULL),(221,22,3,2,NULL),(222,22,24,2,NULL),(223,22,42,2,NULL),(224,22,56,2,NULL),(225,22,63,2,NULL),(226,28,4,2,NULL),(227,28,25,2,NULL),(228,28,44,2,NULL),(229,28,58,2,NULL),(230,28,64,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (8,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(5,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(14,'android.permission.BIND_WALLPAPER'),(17,'android.permission.CHANGE_CONFIGURATION'),(3,'android.permission.CHANGE_WIFI_STATE'),(12,'android.permission.GET_TASKS'),(9,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(6,'android.permission.READ_SMS'),(10,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.WRITE_EXTERNAL_STORAGE'),(7,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-chinese',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(22,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(27,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-chinese',NULL,NULL,NULL),(28,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-english',NULL,NULL,NULL),(29,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-english',NULL,NULL,NULL),(30,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(31,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'http://code.google.com/p/opensudoku-android/wiki/Puzzles',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,43,30),(2,51,34),(3,70,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,2,1),(7,2,2),(8,2,4),(9,2,5),(10,2,6),(11,2,7),(12,2,8),(13,3,1),(14,3,2),(15,3,3),(16,3,4),(17,3,5),(18,3,6),(19,3,7),(20,3,8),(21,3,9),(22,3,10),(23,3,11),(24,4,1),(25,4,2),(26,4,4),(27,4,5),(28,4,6),(29,4,7),(30,4,8),(31,5,1),(32,5,2),(33,5,3),(34,5,4),(35,5,5),(36,5,8),(37,5,10),(38,5,11),(39,5,12),(40,5,13),(41,6,1),(42,6,2),(43,6,3),(44,6,4),(45,6,5),(46,6,6),(47,6,7),(48,6,8),(49,6,9),(50,7,1),(51,6,11),(52,7,2),(53,7,3),(54,6,13),(55,7,4),(56,6,15),(57,6,17),(58,7,5),(59,6,16),(60,7,6),(61,7,7),(62,7,8),(63,7,9),(64,7,11),(65,7,13),(66,7,15),(67,7,17),(68,7,16);
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

-- Dump completed on 2015-10-12  3:29:18
