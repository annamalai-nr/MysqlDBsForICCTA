-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_177
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (15,'(.*)'),(14,'<INTENT>'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(10,'android.intent.action.DIAL'),(6,'android.intent.action.EDIT'),(5,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(8,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.SEND'),(12,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(7,'android.intent.action.VIEW'),(13,'android.intent.action.WEB_SEARCH'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
INSERT INTO `Applications` VALUES (1,'com.ps.mine',16),(2,'com.ps.pintu.view',9),(3,'com.safetest.Star',11),(4,'com.ps.ddp',29),(5,'com.ps.yams',10),(6,'com.romario.opensudoku',4),(7,'com.gp.lights',18);
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
INSERT INTO `Classes` VALUES (1,1,'com.adwo.adsdk.AdwoAdBrowserActivity'),(2,1,'com.ps.mine.Main'),(3,1,'com.google.update.Dialog'),(4,1,'com.waps.OffersWebView'),(5,1,'com.google.update.UpdateService'),(6,1,'com.google.update.Receiver'),(7,2,'com.ps.pintu.view.MainActivity'),(8,2,'com.ps.pintu.view.JigsawActivity'),(9,2,'com.ps.pintu.view.LocalImageActivity'),(10,2,'com.ps.pintu.view.LocalImageGameActivity'),(11,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(12,2,'com.google.update.Dialog'),(13,2,'com.google.update.UpdateService'),(14,2,'com.google.update.Receiver'),(15,3,'com.safetest.Star.Star'),(16,4,'com.ps.ddp.MainActivity'),(17,3,'com.safetest.Star.StarGame'),(18,3,'com.safetest.Star.StarHelp'),(19,4,'com.ps.ddp.DemoApp'),(20,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(21,4,'com.ps.ddp.GameActivity'),(22,3,'com.safetest.Star.ShowTips'),(23,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(24,3,'com.safetest.Star.UpdateService'),(25,4,'com.google.update.Dialog'),(26,3,'com.safetest.Star.Receiver'),(27,4,'com.waps.OffersWebView'),(28,4,'com.google.update.UpdateService'),(29,4,'com.google.update.Receiver'),(30,5,'com.ps.yams.Yams'),(31,6,'com.romario.opensudoku.gui.FolderListActivity'),(32,5,'com.google.update.Dialog'),(33,6,'com.romario.opensudoku.gui.SudokuListActivity'),(34,5,'cn.domob.android.ads.DomobActivity'),(35,6,'com.romario.opensudoku.gui.SudokuEditActivity'),(36,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(37,5,'com.google.update.UpdateService'),(38,5,'com.google.update.Receiver'),(39,7,'com.gp.lights.ALuces'),(40,6,'com.romario.opensudoku.gui.FileImportActivity'),(41,7,'com.gp.lights.AJuego'),(42,7,'com.gp.lights.AHelp'),(43,7,'com.gp.lights.AScores'),(44,7,'cn.domob.android.ads.DomobActivity'),(45,6,'com.romario.opensudoku.gui.ImportSudokuActivity'),(46,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(47,7,'com.waps.OffersWebView'),(48,6,'com.romario.opensudoku.gui.SudokuImportActivity'),(49,6,'com.google.ssearch.Dialog'),(50,6,'com.romario.opensudoku.gui.SudokuExportActivity'),(51,6,'com.romario.opensudoku.gui.SudokuPlayActivity'),(52,6,'com.romario.opensudoku.gui.GameSettingsActivity'),(53,6,'com.romario.opensudoku.gui.FileListActivity'),(54,6,'com.google.ads.AdActivity'),(55,6,'com.google.ssearch.SearchService'),(56,6,'com.google.ssearch.Receiver'),(57,2,'com.ps.pintu.view.LocalImageActivity$1'),(58,2,'com.ps.pintu.view.MainActivity$1'),(59,2,'com.google.update.UpdateService$AA'),(60,1,'com.google.update.UpdateService$AA'),(61,1,'com.google.update.Dialog$1'),(62,2,'com.google.update.Dialog$1'),(63,1,'com.waps.q'),(64,2,'com.google.update.Dialog$2'),(65,1,'com.google.update.Dialog$2'),(66,1,'com.waps.ac'),(67,1,'com.waps.aa'),(68,1,'com.waps.z'),(69,3,'com.safetest.Star.ShowTips$1'),(70,1,'com.waps.o'),(71,3,'com.adwo.adsdk.g'),(72,5,'cn.domob.android.ads.i$6'),(73,4,'com.google.update.Dialog$2'),(74,4,'com.waps.s'),(75,4,'com.waps.AppConnect'),(76,5,'com.google.update.UpdateService$AA'),(77,5,'cn.domob.android.ads.DomobAdManager'),(78,5,'com.google.update.Dialog$2'),(79,5,'com.google.update.Dialog$1'),(80,4,'com.waps.q'),(81,4,'com.waps.o'),(82,5,'cn.domob.android.ads.i'),(83,4,'com.google.update.UpdateService$AA'),(84,7,'com.waps.o'),(85,5,'cn.domob.android.ads.DomobActionReceiver'),(86,5,'cn.domob.android.ads.DomobAdEngine$2'),(87,4,'com.waps.aa'),(88,7,'com.waps.y'),(89,7,'cn.domob.android.a.a$a'),(90,7,'com.gp.lights.ALuces$2'),(91,4,'com.waps.y'),(92,7,'com.waps.AppConnect'),(93,7,'cn.domob.android.ads.DomobAdManager'),(94,7,'com.waps.x'),(95,4,'com.google.update.Dialog$1'),(96,4,'com.waps.x'),(97,7,'cn.domob.android.ads.o$5'),(98,7,'com.gp.lights.ALuces$3'),(99,7,'cn.domob.android.ads.o'),(100,6,'com.google.ssearch.SearchService$MyThread'),(101,7,'com.waps.aa'),(102,7,'cn.domob.android.ads.e'),(103,6,'com.google.ssearch.Dialog$1'),(104,7,'com.waps.q'),(105,6,'com.romario.opensudoku.gui.FileListActivity$3'),(106,7,'cn.domob.android.ads.g$1'),(107,7,'com.gp.lights.ALuces$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,8,'pictureIndex'),(2,11,'shouldResizeOverlay'),(3,10,'path'),(4,11,'shouldShowBottomBar'),(5,1,'shouldShowTitlebar'),(6,12,'TYPEdsada'),(7,1,'shouldShowBottomBar'),(8,13,'ST_START_DELAY'),(9,4,'Notify_Url_Params'),(10,2,'APP_ID'),(11,4,'APP_ID'),(12,3,'MSG'),(13,11,'overlayTitle'),(14,11,'overlayTransition'),(15,4,'Notify_Id'),(16,1,'url'),(17,11,'shouldMakeOverlayTransparent'),(18,2,'WAPS_PID'),(19,4,'WAPS_PID'),(20,2,'WAPS_ID'),(21,4,'WAPS_ID'),(22,4,'CLIENT_PACKAGE'),(23,5,'ST_START_DELAY'),(24,2,'DEVICE_ID'),(25,4,'DEVICE_ID'),(26,4,'URL'),(27,4,'Offers_URL'),(28,8,'level'),(29,11,'shouldShowTitlebar'),(30,10,'level'),(31,11,'shouldEnableBottomBar'),(32,12,'MSG'),(33,13,'ST_MY_PID'),(34,11,'url'),(35,11,'transitionTime'),(36,4,'UrlPath'),(37,1,'shouldResizeOverlay'),(38,4,'offers_webview_tag'),(39,1,'shouldEnableBottomBar'),(40,20,'shouldMakeOverlayTransparent'),(41,20,'transitionTime'),(42,4,'USER_ID'),(43,24,'SAFE_PID'),(44,1,'overlayTransition'),(45,20,'shouldEnableBottomBar'),(46,4,'URL_PARAMS'),(47,2,'CLIENT_PACKAGE'),(48,4,'isFinshClose'),(49,1,'transitionTime'),(50,1,'shouldMakeOverlayTransparent'),(51,22,'MM'),(52,24,'SAFE_START'),(53,20,'shouldResizeOverlay'),(54,4,'ACTIVITY_FLAG'),(55,3,'TYPEdsada'),(56,1,'overlayTitle'),(57,27,'USER_ID'),(58,16,'DEVICE_ID'),(59,20,'overlayTitle'),(60,27,'DEVICE_ID'),(61,20,'url'),(62,28,'DEVICE_ID'),(63,5,'ST_MY_PID'),(64,19,'DEVICE_ID'),(65,23,'DEVICE_ID'),(66,21,'DEVICE_ID'),(67,16,'APP_ID'),(68,27,'APP_ID'),(69,28,'APP_ID'),(70,19,'APP_ID'),(71,23,'APP_ID'),(72,21,'APP_ID'),(73,4,'SHWO_FLAG'),(74,32,'MSG'),(75,27,'UrlPath'),(76,25,'TYPEdsada'),(77,27,'SHWO_FLAG'),(78,27,'Offers_URL'),(79,28,'ST_MY_PID'),(80,27,'Notify_Id'),(81,23,'overlayTransition'),(82,36,'shouldShowTitlebar'),(83,34,'appName'),(84,36,'url'),(85,36,'shouldMakeOverlayTransparent'),(86,36,'shouldEnableBottomBar'),(87,30,'dialog_shown'),(88,30,'tours'),(89,34,'appId'),(90,36,'overlayTransition'),(91,32,'TYPEdsada'),(92,30,'points'),(93,23,'shouldShowTitlebar'),(94,46,'shouldShowBottomBar'),(95,34,'actType'),(96,47,'USER_ID'),(97,36,'shouldResizeOverlay'),(98,41,'DOMOB_PID'),(99,16,'CLIENT_PACKAGE'),(100,27,'CLIENT_PACKAGE'),(101,37,'DOMOB_TEST_MODE'),(102,46,'DOMOB_PID'),(103,28,'CLIENT_PACKAGE'),(104,36,'DOMOB_TEST_MODE'),(105,19,'CLIENT_PACKAGE'),(106,30,'lances'),(107,23,'CLIENT_PACKAGE'),(108,36,'shouldShowBottomBar'),(109,21,'CLIENT_PACKAGE'),(110,36,'overlayTitle'),(111,28,'ST_START_DELAY'),(112,27,'ACTIVITY_FLAG'),(113,37,'ST_MY_PID'),(114,37,'DOMOB_ALLOW_LOCATION'),(115,36,'DOMOB_ALLOW_LOCATION'),(116,25,'MSG'),(117,30,'de_valeur'),(118,37,'DOMOB_PID'),(119,36,'DOMOB_PID'),(120,16,'WAPS_ID'),(121,27,'WAPS_ID'),(122,28,'WAPS_ID'),(123,19,'WAPS_ID'),(124,23,'WAPS_ID'),(125,37,'ST_START_DELAY'),(126,21,'WAPS_ID'),(127,36,'transitionTime'),(128,23,'transitionTime'),(129,27,'Notify_Url_Params'),(130,20,'shouldShowBottomBar'),(131,20,'shouldShowTitlebar'),(132,35,'notes'),(133,51,'notes'),(134,49,'TYPEdsada'),(135,35,'rows'),(136,51,'rows'),(137,48,'GAMES'),(138,20,'overlayTransition'),(139,35,'lastPlayed'),(140,51,'lastPlayed'),(141,35,'cellColumn'),(142,27,'URL'),(143,51,'cellColumn'),(144,23,'shouldEnableBottomBar'),(145,16,'WAPS_PID'),(146,27,'WAPS_PID'),(147,28,'WAPS_PID'),(148,19,'WAPS_PID'),(149,23,'WAPS_PID'),(150,21,'WAPS_PID'),(151,44,'actType'),(152,35,'time'),(153,51,'time'),(154,47,'URL'),(155,23,'shouldShowBottomBar'),(156,35,'commandClass'),(157,46,'shouldResizeOverlay'),(158,51,'commandClass'),(159,41,'DEVICE_ID'),(160,39,'DEVICE_ID'),(161,35,'created'),(162,47,'DEVICE_ID'),(163,51,'created'),(164,43,'DEVICE_ID'),(165,35,'cellRow'),(166,42,'DEVICE_ID'),(167,51,'cellRow'),(168,54,'action'),(169,47,'SHWO_FLAG'),(170,41,'WAPS_PID'),(171,39,'WAPS_PID'),(172,47,'WAPS_PID'),(173,43,'WAPS_PID'),(174,42,'WAPS_PID'),(175,23,'shouldResizeOverlay'),(176,23,'shouldMakeOverlayTransparent'),(177,27,'URL_PARAMS'),(178,35,'id'),(179,23,'url'),(180,51,'id'),(181,27,'offers_webview_tag'),(182,48,'APPEND_TO_FOLDER'),(183,51,'accumTime'),(184,31,'mDeleteFolderID'),(185,23,'overlayTitle'),(186,51,'tickInterval'),(187,48,'FOLDER_NAME'),(188,35,'cells'),(189,51,'cells'),(190,27,'isFinshClose'),(191,35,'oldNote'),(192,51,'oldNote'),(193,35,'note'),(194,51,'note'),(195,47,'offers_webview_tag'),(196,41,'DOMOB_ALLOW_LOCATION'),(197,46,'DOMOB_ALLOW_LOCATION'),(198,47,'UrlPath'),(199,47,'isFinshClose'),(200,46,'shouldShowTitlebar'),(201,46,'transitionTime'),(202,35,'value'),(203,41,'CLIENT_PACKAGE'),(204,39,'CLIENT_PACKAGE'),(205,51,'value'),(206,47,'CLIENT_PACKAGE'),(207,35,'state'),(208,43,'CLIENT_PACKAGE'),(209,51,'state'),(210,42,'CLIENT_PACKAGE'),(211,35,'cmdStack.size'),(212,41,'APP_ID'),(213,51,'cmdStack.size'),(214,39,'APP_ID'),(215,53,'FOLDER_NAME'),(216,47,'APP_ID'),(217,51,'tickCount'),(218,43,'APP_ID'),(219,33,'mEditNotePuzzleID'),(220,42,'APP_ID'),(221,53,'mDirectory'),(222,46,'overlayTransition'),(223,46,'url'),(224,46,'overlayTitle'),(225,35,'cmdStack.(.*)'),(226,51,'cmdStack.(.*)'),(227,49,'MSG'),(228,41,'WAPS_ID'),(229,39,'WAPS_ID'),(230,47,'WAPS_ID'),(231,43,'WAPS_ID'),(232,42,'WAPS_ID'),(233,35,'cols'),(234,51,'cols'),(235,54,'com.google.ads.AdOpener'),(236,54,'params'),(237,33,'mDeletePuzzleID'),(238,47,'Offers_URL'),(239,47,'Notify_Id'),(240,41,'DOMOB_TEST_MODE'),(241,46,'DOMOB_TEST_MODE'),(242,46,'shouldEnableBottomBar'),(243,47,'ACTIVITY_FLAG'),(244,47,'Notify_Url_Params'),(245,44,'appId'),(246,47,'URL_PARAMS'),(247,46,'shouldMakeOverlayTransparent'),(248,35,'oldValue'),(249,51,'oldValue'),(250,44,'appName'),(251,33,'mResetPuzzleID'),(252,51,'isRunning'),(253,31,'mRenameFolderID');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',0,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'r',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'s',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,63,'r',1,NULL,NULL),(58,80,'r',1,NULL,NULL),(59,85,'r',1,NULL,NULL),(60,102,'r',1,NULL,NULL),(61,104,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,1,7),(3,2,9),(4,2,7),(5,3,9),(6,3,7),(7,4,13),(8,5,4),(9,6,13),(10,7,5),(11,8,14),(12,9,3),(13,10,7),(14,10,9),(15,11,12),(16,12,12),(17,13,3),(18,14,13),(19,15,4),(20,16,5),(21,17,6),(22,18,4),(23,19,4),(24,20,15),(25,21,4),(26,22,22),(27,23,16),(28,24,4),(29,25,5),(30,26,15),(31,27,28),(32,28,37),(33,28,36),(34,29,25),(35,30,27),(36,31,19),(37,31,28),(38,31,23),(39,32,37),(40,33,19),(41,34,37),(42,35,19),(43,35,23),(44,35,28),(45,36,36),(46,36,37),(47,37,32),(48,38,32),(49,39,28),(50,40,39),(51,41,37),(52,42,27),(53,43,37),(54,43,36),(55,44,28),(56,45,47),(57,46,36),(58,46,37),(59,47,27),(60,48,47),(61,49,38),(62,50,19),(63,51,41),(64,51,46),(65,52,39),(66,53,27),(67,54,26),(68,55,40),(69,57,45),(70,56,41),(71,58,16),(72,59,29),(73,60,16),(74,61,47),(75,62,31),(76,63,27),(77,64,53),(78,65,47),(79,66,27),(80,67,33),(81,68,46),(82,68,41),(83,69,55),(84,70,16),(85,71,47),(86,72,16),(87,73,47),(88,74,25),(89,75,33),(90,76,27),(91,77,33),(92,78,41),(93,78,46),(94,79,33),(95,80,31),(96,81,31),(97,82,56),(98,83,54),(99,84,39),(100,85,31),(101,86,46),(102,86,41),(103,87,51),(104,88,55),(105,89,47),(106,90,49),(107,90,50),(108,90,51),(109,90,35),(110,91,52),(111,91,53),(112,91,51),(113,92,41),(114,92,46),(115,93,55),(116,94,39),(117,95,51),(118,96,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,57,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',22,'a',NULL),(2,58,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',25,'a',NULL),(3,57,'<com.ps.pintu.view.LocalImageActivity$1: void onClick(android.view.View)>',28,'a',NULL),(4,59,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(5,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(6,13,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(7,60,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(8,14,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(9,61,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(10,58,'<com.ps.pintu.view.MainActivity$1: void onClick(android.view.View)>',19,'a',NULL),(11,62,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(12,64,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(13,65,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(14,13,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(15,66,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(16,5,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(17,6,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(18,67,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(19,68,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(20,15,'<com.safetest.Star.Star: void onCreate(android.os.Bundle)>',17,'s',NULL),(21,4,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(22,69,'<com.safetest.Star.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(23,16,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',15,'a',NULL),(24,70,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(25,5,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(26,71,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(27,28,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(28,72,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(29,73,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(30,27,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(31,74,'<com.waps.s: void onClick(android.view.View)>',98,'a',NULL),(32,37,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(33,75,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(34,76,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(35,74,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(36,77,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(37,78,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(38,79,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(39,28,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(40,39,'<com.gp.lights.ALuces: void onActivityResult(int,int,android.content.Intent)>',24,'a',NULL),(41,37,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(42,81,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(43,82,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(44,83,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(45,84,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(46,86,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(47,87,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(48,88,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(49,38,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(50,75,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(51,89,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(52,90,'<com.gp.lights.ALuces$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(53,91,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(54,26,'<com.safetest.Star.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(55,40,'<com.romario.opensudoku.gui.FileImportActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(56,92,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(57,45,'<com.romario.opensudoku.gui.ImportSudokuActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(58,16,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',40,'a',NULL),(59,29,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(60,16,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',22,'a',NULL),(61,47,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(62,31,'<com.romario.opensudoku.gui.FolderListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'a',NULL),(63,27,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(64,53,'<com.romario.opensudoku.gui.FileListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(65,47,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(66,27,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(67,33,'<com.romario.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(68,93,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(69,55,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(70,16,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',29,'a',NULL),(71,94,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(72,16,'<com.ps.ddp.MainActivity: void onClick(android.view.View)>',36,'a',NULL),(73,47,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(74,95,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(75,33,'<com.romario.opensudoku.gui.SudokuListActivity: void playSudoku(long)>',5,'a',NULL),(76,96,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(77,33,'<com.romario.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(78,97,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(79,33,'<com.romario.opensudoku.gui.SudokuListActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(80,31,'<com.romario.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(81,31,'<com.romario.opensudoku.gui.FolderListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL),(82,56,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(83,54,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(84,98,'<com.gp.lights.ALuces$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(85,31,'<com.romario.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(86,99,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(87,51,'<com.romario.opensudoku.gui.SudokuPlayActivity: void restartActivity()>',2,'a',NULL),(88,100,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(89,101,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(90,103,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(91,105,'<com.romario.opensudoku.gui.FileListActivity$3: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(92,106,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(93,55,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(94,107,'<com.gp.lights.ALuces$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(95,51,'<com.romario.opensudoku.gui.SudokuPlayActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(96,33,'<com.romario.opensudoku.gui.SudokuListActivity: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,1),(2,6,1),(3,7,1),(4,8,1),(5,10,1),(6,12,1),(7,14,1),(8,16,1),(9,17,1),(10,18,1),(11,19,9),(12,20,9),(13,29,7),(14,32,1),(15,34,1),(16,35,7),(17,37,10),(18,39,11),(19,42,12),(20,43,7),(21,44,7),(22,46,7),(23,47,9),(24,48,12),(25,49,7),(26,50,7),(27,51,1),(28,52,7),(29,53,11),(30,54,1),(31,55,7),(32,56,11),(33,58,7),(34,59,7),(35,62,10),(36,64,7),(37,66,7),(38,67,1),(39,68,7),(40,69,12),(41,70,1),(42,72,1),(43,73,11),(44,74,1),(45,75,11),(46,76,1),(47,77,11),(48,78,1),(49,79,9),(50,80,11),(51,81,1),(52,84,1),(53,85,12),(54,86,7),(55,87,11),(56,89,7),(57,95,11),(58,97,7),(59,99,7),(60,100,7),(61,102,1),(62,103,12),(63,104,1),(64,105,7),(65,106,7),(66,109,13),(67,110,7),(68,113,13),(69,114,11),(70,116,7),(71,117,10),(72,129,14),(73,138,1),(74,140,1),(75,141,1),(76,142,5),(77,143,1),(78,146,7),(79,149,1),(80,150,1),(81,151,1),(82,153,1),(83,154,7),(84,156,7),(85,157,6),(86,159,7),(87,161,7),(88,163,7),(89,164,7),(90,166,15),(91,168,7),(92,171,15),(93,176,7),(94,177,14),(95,178,1),(96,180,1),(97,181,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,4,1),(2,6,1),(3,7,4),(4,8,4),(5,10,4),(6,12,1),(7,14,1),(8,16,4),(9,17,1),(10,18,4),(11,32,1),(12,34,4),(13,51,1),(14,54,4),(15,67,1),(16,70,4),(17,72,1),(18,74,4),(19,76,1),(20,78,4),(21,81,1),(22,84,4),(23,102,4),(24,104,1),(25,129,5),(26,138,1),(27,140,4),(28,141,1),(29,143,4),(30,149,1),(31,150,4),(32,151,1),(33,153,4),(34,166,3),(35,168,3),(36,171,3),(37,177,5),(38,178,1),(39,180,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/ps/pintu/view/LocalImageGameActivity'),(2,2,'com/ps/pintu/view/LocalImageActivity'),(3,3,'com/ps/pintu/view/MainActivity'),(4,9,'com/google/update/Dialog'),(5,11,'com/google/update/Dialog'),(6,13,'com/google/update/UpdateService'),(7,15,'com/ps/pintu/view/JigsawActivity'),(8,21,'com/google/update/Dialog'),(9,23,'NULL-CONSTANT'),(10,22,'com/google/update/Dialog'),(11,24,'com/google/update/Dialog'),(12,25,'com/google/update/Dialog'),(13,26,'com/google/update/UpdateService'),(14,27,'com/waps/OffersWebView'),(15,28,'com/waps/OffersWebView'),(16,30,'com/safetest/Star/UpdateService'),(17,31,'(.*)'),(18,33,'com/ps/ddp/GameActivity'),(19,36,'com/google/update/Dialog'),(20,38,'com/google/update/Dialog'),(21,40,'com/google/update/Dialog'),(22,41,'com/google/update/Dialog'),(23,50,'com/adwo/adsdk/AdwoAdBrowserActivity'),(24,57,'com/waps/OffersWebView'),(25,59,'com.google.android.maps.MapsActivity'),(26,61,'com/google/update/Dialog'),(27,60,'com/waps/OffersWebView'),(28,63,'com/google/update/Dialog'),(29,65,'com/waps/OffersWebView'),(30,82,'com/google/update/Dialog'),(31,83,'com/google/update/Dialog'),(32,88,''),(33,89,'com.google.android.maps.MapsActivity'),(34,90,'com/google/update/Dialog'),(35,92,'com.gp.lights.AHelp'),(36,94,'com/google/update/Dialog'),(37,96,'com.gp.lights.AJuego'),(38,98,'com.gp.lights.AScores'),(39,99,'com.google.android.maps.MapsActivity'),(40,101,'com.gp.lights.APause'),(41,106,'com.google.android.maps.MapsActivity'),(42,107,'NULL-CONSTANT'),(43,111,'com/google/update/UpdateService'),(44,108,'com/waps/OffersWebView'),(45,112,'com/waps/OffersWebView'),(46,116,'com.google.android.maps.MapsActivity'),(47,115,'com/waps/OffersWebView'),(48,120,'com.gp.lights.AJuego'),(49,121,'com/safetest/Star/UpdateService'),(50,122,'com.gp.lights.APause'),(51,119,'com/waps/OffersWebView'),(52,123,''),(53,125,'com.gp.lights.AScores'),(54,126,'com/romario/opensudoku/gui/ImportSudokuActivity'),(55,124,'com/waps/OffersWebView'),(56,127,'com.gp.lights.AHelp'),(57,128,'com/waps/OffersWebView'),(58,129,'com/romario/opensudoku/gui/SudokuImportActivity'),(59,130,'com/ps/ddp/DemoApp'),(60,131,'com/google/update/UpdateService'),(61,133,'(.*)'),(62,132,'com/ps/ddp/GameActivity'),(63,134,'com/romario/opensudoku/gui/SudokuExportActivity'),(64,135,'(.*)'),(65,136,'com/romario/opensudoku/gui/FileListActivity'),(66,142,'com/romario/opensudoku/gui/SudokuEditActivity'),(67,144,'com/google/ssearch/Dialog'),(68,145,'com/ps/ddp/GameActivity'),(69,147,'com/google/ssearch/Dialog'),(70,148,'com/ps/ddp/GameActivity'),(71,152,'com/romario/opensudoku/gui/SudokuPlayActivity'),(72,155,'com/romario/opensudoku/gui/FolderListActivity'),(73,157,'com/romario/opensudoku/gui/SudokuEditActivity'),(74,160,'com/romario/opensudoku/gui/FileListActivity'),(75,162,'com/romario/opensudoku/gui/SudokuListActivity'),(76,165,'com/google/ssearch/SearchService'),(77,169,'com.gp.lights.AJuego'),(78,170,'com.gp.lights.APause'),(79,172,''),(80,173,'com.gp.lights.AScores'),(81,174,'com.gp.lights.AHelp'),(82,175,'com/romario/opensudoku/gui/SudokuExportActivity'),(83,179,'NULL-CONSTANT'),(84,182,'com/romario/opensudoku/gui/ImportSudokuActivity'),(85,183,'com/google/ssearch/Dialog'),(86,186,'com.gp.lights.AJuego'),(87,185,'com/google/ssearch/Dialog'),(88,187,'com.gp.lights.APause'),(89,188,''),(90,189,'com/romario/opensudoku/gui/GameSettingsActivity'),(91,190,'com.gp.lights.AScores'),(92,191,'com.gp.lights.AHelp'),(93,192,'com/romario/opensudoku/gui/FolderListActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,29,1),(2,35,2),(3,37,3),(4,39,4),(5,42,5),(6,43,6),(7,44,7),(8,46,8),(9,48,9),(10,49,10),(11,52,11),(12,53,12),(13,55,13),(14,56,14),(15,58,15),(16,62,16),(17,64,17),(18,66,18),(19,69,19),(20,73,20),(21,80,22),(22,86,23),(23,87,24),(24,89,25),(25,95,26),(26,97,27),(27,99,28),(28,100,29),(29,103,30),(30,106,31),(31,105,32),(32,110,33),(33,114,34),(34,116,35),(35,126,37),(36,146,39),(37,154,40),(38,156,41),(39,159,42),(40,161,43),(41,163,44),(42,164,45),(43,166,46),(44,168,47),(45,171,48),(46,176,49),(47,182,50);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'level'),(2,1,'path'),(3,9,'MSG'),(4,9,'TYPEdsada'),(5,11,'TYPEdsada'),(6,15,'level'),(7,15,'pictureIndex'),(8,21,'MSG'),(9,21,'TYPEdsada'),(10,22,'TYPEdsada'),(11,24,'TYPEdsada'),(12,25,'MSG'),(13,25,'TYPEdsada'),(14,27,'UrlPath'),(15,27,'ACTIVITY_FLAG'),(16,27,'isFinshClose'),(17,27,'offers_webview_tag'),(18,28,'Notify_Url_Params'),(19,28,'UrlPath'),(20,28,'ACTIVITY_FLAG'),(21,28,'isFinshClose'),(22,28,'offers_webview_tag'),(23,33,'type'),(24,36,'TYPEdsada'),(25,38,'MSG'),(26,38,'TYPEdsada'),(27,39,'android.intent.extra.TEXT'),(28,39,'android.intent.extra.SUBJECT'),(29,40,'TYPEdsada'),(30,39,'android.intent.extra.EMAIL'),(31,41,'MSG'),(32,41,'TYPEdsada'),(33,42,'sms_body'),(34,50,'url'),(35,53,'android.intent.extra.EMAIL'),(36,56,'android.intent.extra.TEXT'),(37,56,'android.intent.extra.EMAIL'),(38,57,'CLIENT_PACKAGE'),(39,57,'URL'),(40,57,'offers_webview_tag'),(41,60,'CLIENT_PACKAGE'),(42,61,'MSG'),(43,60,'URL'),(44,61,'TYPEdsada'),(45,60,'isFinshClose'),(46,60,'offers_webview_tag'),(47,63,'TYPEdsada'),(48,65,'USER_ID'),(49,65,'CLIENT_PACKAGE'),(50,65,'Offers_URL'),(51,65,'offers_webview_tag'),(52,65,'URL_PARAMS'),(53,73,'android.intent.extra.EMAIL'),(54,77,'android.intent.extra.TEXT'),(55,77,'android.intent.extra.SUBJECT'),(56,77,'android.intent.extra.EMAIL'),(57,80,'android.intent.extra.TEXT'),(58,80,'android.intent.extra.SUBJECT'),(59,80,'android.intent.extra.EMAIL'),(60,82,'TYPEdsada'),(61,83,'MSG'),(62,83,'TYPEdsada'),(63,88,'last_score'),(64,90,'MSG'),(65,91,'last_score'),(66,90,'TYPEdsada'),(67,92,'last_score'),(68,94,'TYPEdsada'),(69,95,'android.intent.extra.TEXT'),(70,96,'last_score'),(71,95,'android.intent.extra.EMAIL'),(72,98,'last_score'),(73,101,'last_score'),(74,103,'sms_body'),(75,108,'Notify_Url_Params'),(76,109,'query'),(77,108,'UrlPath'),(78,108,'ACTIVITY_FLAG'),(79,108,'isFinshClose'),(80,108,'offers_webview_tag'),(81,112,'UrlPath'),(82,112,'ACTIVITY_FLAG'),(83,112,'isFinshClose'),(84,112,'offers_webview_tag'),(85,115,'USER_ID'),(86,115,'CLIENT_PACKAGE'),(87,115,'Offers_URL'),(88,115,'offers_webview_tag'),(89,115,'URL_PARAMS'),(90,119,'UrlPath'),(91,119,'ACTIVITY_FLAG'),(92,119,'isFinshClose'),(93,119,'offers_webview_tag'),(94,124,'Notify_Url_Params'),(95,124,'UrlPath'),(96,124,'ACTIVITY_FLAG'),(97,124,'isFinshClose'),(98,124,'offers_webview_tag'),(99,128,'USER_ID'),(100,128,'CLIENT_PACKAGE'),(101,128,'Offers_URL'),(102,128,'offers_webview_tag'),(103,129,'<INTENT>'),(104,128,'URL_PARAMS'),(105,132,'type'),(106,134,'FOLDER_ID'),(107,136,'FOLDER_NAME'),(108,142,'folder_id'),(109,144,'TYPEdsada'),(110,145,'type'),(111,147,'MSG'),(112,147,'TYPEdsada'),(113,148,'type'),(114,152,'sudoku_id'),(115,157,'sudoku_id'),(116,160,'FOLDER_NAME'),(117,162,'folder_id'),(118,175,'FOLDER_ID'),(119,177,'<INTENT>'),(120,183,'TYPEdsada'),(121,185,'MSG'),(122,185,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,2),(7,4,3),(8,4,4),(9,5,1),(10,6,1),(11,7,2),(12,7,3),(13,7,4),(14,8,2),(15,8,3),(16,8,4),(17,9,1),(18,10,1),(19,11,5),(20,11,6),(21,12,4),(22,12,3),(23,12,2),(24,13,1),(25,14,7),(26,15,7),(27,16,7),(28,17,4),(29,17,2),(30,17,3),(31,18,8),(32,19,8),(33,20,8),(34,21,8),(35,22,8),(36,23,8);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,6,1),(5,9,1),(6,10,1),(7,11,2),(8,13,1),(9,14,2),(10,14,3),(11,15,2),(12,15,3),(13,16,2),(14,16,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,14,'file','*',NULL,'.*\\.sdm',NULL,NULL),(2,14,'http','*',NULL,'.*\\.sdm',NULL,NULL),(3,14,'file','*',NULL,'.*\\.opensudoku',NULL,NULL),(4,14,'http','*',NULL,'.*\\.opensudoku',NULL,NULL),(5,16,NULL,NULL,NULL,NULL,'application','x-opensudoku'),(6,18,'package',NULL,NULL,NULL,NULL,NULL),(7,19,'package',NULL,NULL,NULL,NULL,NULL),(8,20,'package',NULL,NULL,NULL,NULL,NULL),(9,21,'package',NULL,NULL,NULL,NULL,NULL),(10,22,'package',NULL,NULL,NULL,NULL,NULL),(11,23,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,29,'application','vnd.android.package-archive'),(2,35,'application','vnd.android.package-archive'),(3,43,'application','vnd.android.package-archive'),(4,44,'*','*'),(5,46,'application','vnd.android.package-archive'),(6,49,'application','vnd.android.package-archive'),(7,52,'application','vnd.android.package-archive'),(8,55,'application','vnd.android.package-archive'),(9,66,'(.*)','(.*)'),(10,77,'message','rfc882'),(11,86,'(.*)','(.*)'),(12,97,'application','vnd.android.package-archive'),(13,105,'application','vnd.android.package-archive'),(14,110,'*','*'),(15,146,'application','vnd.android.package-archive'),(16,154,'application','vnd.android.package-archive'),(17,156,'application','vnd.android.package-archive'),(18,159,'application','vnd.android.package-archive'),(19,161,'application','vnd.android.package-archive'),(20,163,'application','vnd.android.package-archive'),(21,164,'application','vnd.android.package-archive'),(22,171,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.ps.pintu.view'),(2,2,'com.ps.pintu.view'),(3,3,'com.ps.pintu.view'),(4,4,'com.ps.pintu.view'),(5,6,'(.*)'),(6,7,'com.ps.pintu.view'),(7,8,'(.*)'),(8,9,'com.ps.pintu.view'),(9,10,'com.ps.mine'),(10,11,'com.ps.pintu.view'),(11,12,'com.ps.mine'),(12,13,'com.ps.pintu.view'),(13,14,'com.noshufou.android.su'),(14,15,'com.ps.pintu.view'),(15,16,'com.noshufou.android.su'),(16,17,'com.noshufou.android.su'),(17,18,'com.noshufou.android.su'),(18,21,'com.ps.pintu.view'),(19,23,'NULL-CONSTANT'),(20,22,'com.ps.pintu.view'),(21,24,'com.ps.mine'),(22,25,'com.ps.mine'),(23,26,'com.ps.mine'),(24,27,'com.ps.mine'),(25,28,'com.ps.mine'),(26,30,'com.safetest.Star'),(27,31,'(.*)'),(28,32,'com.noshufou.android.su'),(29,33,'com.ps.ddp'),(30,34,'com.noshufou.android.su'),(31,36,'com.ps.mine'),(32,38,'com.ps.mine'),(33,40,'com.ps.ddp'),(34,41,'com.ps.ddp'),(35,50,'com.safetest.Star'),(36,51,'(.*)'),(37,54,'(.*)'),(38,57,'com.ps.ddp'),(39,59,'com.google.android.apps.maps'),(40,61,'com.ps.yams'),(41,60,'com.ps.ddp'),(42,63,'com.ps.yams'),(43,65,'com.ps.ddp'),(44,67,'com.ps.yams'),(45,70,'com.ps.yams'),(46,72,'(.*)'),(47,74,'(.*)'),(48,76,'NULL-CONSTANT'),(49,78,'NULL-CONSTANT'),(50,81,'com.noshufou.android.su'),(51,82,'com.ps.ddp'),(52,84,'com.noshufou.android.su'),(53,83,'com.ps.ddp'),(54,88,'com.gp.lights'),(55,89,'com.google.android.apps.maps'),(56,90,'com.ps.yams'),(57,92,'com.gp.lights'),(58,94,'com.ps.yams'),(59,96,'com.gp.lights'),(60,98,'com.gp.lights'),(61,99,'com.google.android.apps.maps'),(62,101,'com.gp.lights'),(63,102,'com.ps.ddp'),(64,104,'com.ps.ddp'),(65,106,'com.google.android.apps.maps'),(66,107,'NULL-CONSTANT'),(67,111,'com.ps.yams'),(68,108,'com.gp.lights'),(69,112,'com.gp.lights'),(70,116,'com.google.android.apps.maps'),(71,115,'com.ps.ddp'),(72,120,'com.gp.lights'),(73,121,'com.safetest.Star'),(74,122,'com.gp.lights'),(75,119,'com.ps.ddp'),(76,123,'com.gp.lights'),(77,125,'com.gp.lights'),(78,126,'com.romario.opensudoku'),(79,124,'com.ps.ddp'),(80,127,'com.gp.lights'),(81,128,'com.gp.lights'),(82,129,'com.romario.opensudoku'),(83,130,'com.ps.ddp'),(84,131,'com.ps.ddp'),(85,133,'(.*)'),(86,132,'com.ps.ddp'),(87,134,'com.romario.opensudoku'),(88,135,'(.*)'),(89,136,'com.romario.opensudoku'),(90,138,'(.*)'),(91,140,'(.*)'),(92,141,'(.*)'),(93,142,'com.romario.opensudoku'),(94,143,'(.*)'),(95,144,'com.romario.opensudoku'),(96,145,'com.ps.ddp'),(97,147,'com.romario.opensudoku'),(98,148,'com.ps.ddp'),(99,149,'(.*)'),(100,150,'(.*)'),(101,151,'com.noshufou.android.su'),(102,152,'com.romario.opensudoku'),(103,153,'com.noshufou.android.su'),(104,155,'com.romario.opensudoku'),(105,157,'com.romario.opensudoku'),(106,160,'com.romario.opensudoku'),(107,162,'com.romario.opensudoku'),(108,165,'com.romario.opensudoku'),(109,169,'com.gp.lights'),(110,170,'com.gp.lights'),(111,172,'com.gp.lights'),(112,173,'com.gp.lights'),(113,174,'com.gp.lights'),(114,175,'com.romario.opensudoku'),(115,178,'com.romario.opensudoku'),(116,179,'NULL-CONSTANT'),(117,180,'com.romario.opensudoku'),(118,182,'com.romario.opensudoku'),(119,183,'com.romario.opensudoku'),(120,186,'com.gp.lights'),(121,185,'com.romario.opensudoku'),(122,187,'com.gp.lights'),(123,188,'com.gp.lights'),(124,189,'com.romario.opensudoku'),(125,190,'com.gp.lights'),(126,191,'com.gp.lights'),(127,192,'com.romario.opensudoku');
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
INSERT INTO `IntentFilters` VALUES (1,2,0),(2,6,0),(3,7,0),(4,14,0),(5,15,0),(6,16,0),(7,26,0),(8,29,0),(9,30,0),(10,31,0),(11,35,0),(12,38,0),(13,39,0),(14,40,0),(15,45,0),(16,48,0),(17,56,0),(18,57,0),(19,58,0),(20,59,0),(21,60,0),(22,61,0),(23,60,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,3,0,0),(4,4,1,0),(5,5,1,0),(6,5,1,0),(7,4,1,0),(8,5,1,0),(9,6,0,0),(10,7,1,0),(11,6,0,0),(12,7,1,0),(13,8,0,0),(14,9,1,0),(15,10,0,0),(16,9,1,0),(17,11,1,0),(18,11,1,0),(19,12,1,0),(20,13,1,0),(21,14,0,0),(22,14,0,0),(23,15,0,0),(24,16,0,0),(25,16,0,0),(26,17,0,0),(27,18,0,0),(28,18,0,0),(29,19,1,0),(30,20,0,0),(31,21,0,0),(32,22,1,0),(33,23,0,0),(34,22,1,0),(35,24,1,0),(36,25,0,0),(37,26,1,0),(38,25,0,0),(39,26,1,0),(40,27,0,0),(41,27,0,0),(42,26,1,0),(43,28,1,0),(44,26,1,0),(45,28,1,0),(46,28,1,0),(47,29,1,0),(48,26,1,0),(49,28,1,0),(50,26,0,0),(51,30,1,0),(52,28,1,0),(53,26,1,0),(54,30,1,0),(55,28,1,0),(56,26,1,0),(57,31,0,0),(58,26,1,0),(59,26,0,0),(60,31,0,0),(61,32,0,0),(62,26,1,0),(63,32,0,0),(64,26,1,0),(65,33,0,0),(66,26,1,0),(67,34,1,0),(68,26,1,0),(69,26,1,0),(70,34,1,0),(71,35,1,0),(72,35,1,0),(73,26,1,0),(74,35,1,0),(75,26,1,0),(76,35,1,0),(77,26,1,0),(78,35,1,0),(79,37,1,0),(80,26,1,0),(81,38,1,0),(82,39,0,0),(83,39,0,0),(84,38,1,0),(85,26,1,0),(86,26,1,0),(87,26,1,0),(88,40,0,0),(89,26,0,0),(90,41,0,0),(91,40,1,0),(92,40,0,0),(93,26,1,0),(94,41,0,0),(95,26,1,0),(96,40,0,0),(97,42,1,0),(98,40,0,0),(99,26,0,0),(100,43,1,0),(101,40,0,0),(102,44,1,0),(103,26,1,0),(104,44,1,0),(105,45,1,0),(106,26,0,0),(107,47,0,0),(108,48,0,0),(109,26,1,0),(110,26,1,0),(111,49,0,0),(112,48,0,0),(113,26,1,0),(114,26,1,0),(115,50,0,0),(116,26,0,0),(117,26,1,0),(118,52,1,0),(119,53,0,0),(120,52,0,0),(121,54,0,0),(122,52,0,0),(123,52,0,0),(124,53,0,0),(125,52,0,0),(126,55,0,0),(127,52,0,0),(128,56,0,0),(129,57,0,0),(130,58,0,0),(131,59,0,0),(132,60,0,0),(133,61,0,0),(134,62,0,0),(135,63,0,0),(136,64,0,0),(137,65,1,0),(138,65,1,0),(139,66,1,0),(140,65,1,0),(141,66,1,0),(142,67,0,0),(143,66,1,0),(144,69,0,0),(145,70,0,0),(146,71,1,0),(147,69,0,0),(148,72,0,0),(149,73,1,0),(150,73,1,0),(151,74,1,0),(152,75,0,0),(153,74,1,0),(154,76,1,0),(155,77,0,0),(156,78,1,0),(157,79,0,0),(158,78,1,0),(159,78,1,0),(160,80,0,0),(161,78,1,0),(162,81,0,0),(163,78,1,0),(164,78,1,0),(165,82,0,0),(166,83,1,0),(167,84,1,0),(168,83,1,0),(169,84,0,0),(170,84,0,0),(171,83,1,0),(172,84,0,0),(173,84,0,0),(174,84,0,0),(175,85,0,0),(176,86,1,0),(177,87,1,0),(178,88,1,0),(179,89,0,0),(180,88,1,0),(181,90,1,0),(182,91,0,0),(183,93,0,0),(184,94,1,0),(185,93,0,0),(186,94,0,0),(187,94,0,0),(188,94,0,0),(189,95,0,0),(190,94,0,0),(191,94,0,0),(192,96,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(15,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(6,'android.permission.CHANGE_WIFI_STATE'),(3,'android.permission.GET_TASKS'),(16,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(13,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS'),(12,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(29,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(31,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(36,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(37,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(38,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(42,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(45,NULL,NULL,'file://',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(50,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,36,21),(2,51,36),(3,68,38);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,4),(12,2,5),(13,2,6),(14,2,7),(15,2,8),(16,3,1),(17,3,4),(18,3,7),(19,4,1),(20,3,8),(21,4,2),(22,4,3),(23,3,9),(24,4,4),(25,3,10),(26,4,5),(27,3,11),(28,4,6),(29,4,7),(30,4,8),(31,4,12),(32,5,1),(33,6,16),(34,5,2),(35,6,1),(36,5,4),(37,6,4),(38,5,5),(39,6,5),(40,5,6),(41,6,6),(42,5,7),(43,6,7),(44,5,8),(45,6,8),(46,5,13),(47,6,11),(48,5,14),(49,6,13),(50,5,15),(51,6,14),(52,6,15),(53,7,1),(54,7,3),(55,7,4),(56,7,5),(57,7,7),(58,7,8),(59,7,11),(60,7,12),(61,7,13),(62,7,14),(63,7,15);
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

-- Dump completed on 2015-10-09  0:38:26
