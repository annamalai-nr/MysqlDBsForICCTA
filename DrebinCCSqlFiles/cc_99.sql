-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_99
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
INSERT INTO `ActionStrings` VALUES (23,'<INTENT>'),(11,'Speedup.intent.action.refreshservice'),(15,'Speedup.intent.action.temp'),(7,'Speedup.intent.action.updatewidget'),(2,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(12,'android.intent.action.BATTERY_CHANGED'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(21,'android.intent.action.CHOOSER'),(17,'android.intent.action.DIAL'),(9,'android.intent.action.EDIT'),(8,'android.intent.action.INSERT'),(1,'android.intent.action.MAIN'),(20,'android.intent.action.PACKAGE_ADDED'),(13,'android.intent.action.SCREEN_OFF'),(14,'android.intent.action.SCREEN_ON'),(18,'android.intent.action.SEND'),(19,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(10,'android.intent.action.VIEW'),(22,'android.intent.action.WEB_SEARCH'),(16,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.tutusw.phonespeedup',14),(2,'com.evilsunflower.picturepuzzle',1),(3,'com.ps.opensudoku',13),(4,'com.ps.yams',1),(5,'com.gp.geekadoo',10),(6,'com.mogo.puzzle',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.phonespeedup.IntroActivity'),(2,1,'com.tutusw.phonespeedup.InfoActivity'),(3,1,'com.google.ssearch.Dialog'),(4,1,'com.tutusw.phonespeedup.Home'),(5,1,'com.tutusw.phonespeedup.PerflockActivity'),(6,1,'com.tutusw.phonespeedup.ProfilesActivity'),(7,1,'com.tutusw.phonespeedup.ProfileEditActivity'),(8,1,'com.tutusw.phonespeedup.AdvancedActivity'),(9,1,'com.tutusw.phonespeedup.AboutActivity'),(10,1,'com.tutusw.phonespeedup.StresstestActivity'),(11,1,'com.tutusw.phonespeedup.Setcpu'),(12,1,'com.tutusw.phonespeedup.WidgetConfigActivity'),(13,1,'com.google.ssearch.SearchService'),(14,1,'com.tutusw.phonespeedup.StartupService'),(15,1,'com.tutusw.phonespeedup.ProfilesService'),(16,1,'com.tutusw.phonespeedup.WidgetService'),(17,1,'com.google.ssearch.Receiver'),(18,1,'com.tutusw.phonespeedup.StartupReceiver'),(19,1,'com.tutusw.phonespeedup.Widget'),(20,3,'com.ps.opensudoku.gui.FolderListActivity'),(21,2,'com.evilsunflower.picturepuzzle.picpuzzle'),(22,3,'com.ps.opensudoku.gui.SudokuListActivity'),(23,3,'com.ps.opensudoku.gui.SudokuEditActivity'),(24,2,'com.vpon.adon.android.WebInApp'),(25,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(26,2,'com.evilsunflower.picturepuzzle.ShowTips'),(27,3,'com.ps.opensudoku.gui.FileImportActivity'),(28,2,'com.evilsunflower.picturepuzzle.UpdateService'),(29,2,'com.evilsunflower.picturepuzzle.Receiver'),(30,3,'com.ps.opensudoku.gui.ImportSudokuActivity'),(31,5,'com.gp.geekadoo.ui.MainScreen'),(32,4,'com.ps.yams.Yams'),(33,3,'com.ps.opensudoku.gui.SudokuImportActivity'),(34,5,'com.gp.geekadoo.ui.Yaniv'),(35,5,'com.google.update.Dialog'),(36,4,'com.google.update.Dialog'),(37,5,'cn.domob.android.ads.DomobActivity'),(38,3,'com.ps.opensudoku.gui.SudokuExportActivity'),(39,4,'cn.domob.android.ads.DomobActivity'),(40,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(41,3,'com.ps.opensudoku.gui.SudokuPlayActivity'),(42,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(43,5,'com.google.update.UpdateService'),(44,3,'com.ps.opensudoku.gui.GameSettingsActivity'),(45,4,'com.google.update.UpdateService'),(46,5,'com.google.update.Receiver'),(47,3,'com.ps.opensudoku.gui.FileListActivity'),(48,4,'com.google.update.Receiver'),(49,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(50,6,'com.mogo.puzzle.begin'),(51,3,'com.google.update.Dialog'),(52,3,'com.google.update.UpdateService'),(53,3,'com.google.update.Receiver'),(54,6,'com.mogo.puzzle.Main'),(55,6,'com.google.ads.AdActivity'),(56,6,'com.vpon.adon.android.WebInApp'),(57,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(58,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(59,6,'com.waps.OffersWebView'),(60,6,'com.google.update.Dialog'),(61,6,'com.google.update.UpdateService'),(62,6,'com.google.update.Receiver'),(63,1,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(64,1,'com.tutusw.phonespeedup.WidgetService$1'),(65,1,'com.tutusw.phonespeedup.ProfilesService$1'),(66,1,'android.appwidget.AppWidgetProvider'),(67,1,'com.google.ssearch.SearchService$MyThread'),(68,1,'com.google.ssearch.Dialog$1'),(69,2,'com.adwo.adsdk.g'),(70,1,'com.tutusw.phonespeedup.Home$clicker'),(71,4,'cn.domob.android.ads.DomobActionReceiver'),(72,4,'cn.domob.android.ads.i'),(73,4,'cn.domob.android.ads.DomobAdEngine$2'),(74,5,'com.gp.geekadoo.ui.MainScreen$3'),(75,4,'cn.domob.android.ads.DomobAdManager'),(76,5,'com.google.update.Dialog$1'),(77,6,'com.waps.q'),(78,4,'com.ju6.a'),(79,5,'com.gp.geekadoo.ui.MainScreen$5'),(80,4,'com.google.update.Dialog$2'),(81,6,'com.waps.o'),(82,4,'com.google.update.Dialog$1'),(83,6,'com.waps.AppConnect'),(84,4,'cn.domob.android.ads.i$6'),(85,6,'com.waps.ac'),(86,5,'cn.domob.android.ads.DomobActionReceiver'),(87,6,'com.google.update.Dialog$1'),(88,5,'cn.domob.android.ads.i$6'),(89,6,'com.google.update.UpdateService$AA'),(90,6,'com.waps.z'),(91,2,'com.madhouse.android.ads._'),(92,5,'cn.domob.android.ads.DomobAdManager'),(93,4,'com.google.update.UpdateService$MyThread'),(94,6,'com.waps.aa'),(95,2,'com.evilsunflower.picturepuzzle.ShowTips$1'),(96,6,'com.google.update.Dialog$2'),(97,5,'cn.domob.android.ads.i'),(98,5,'com.google.update.Dialog$2'),(99,6,'com.mogo.puzzle.begin$beginButtonListener'),(100,5,'cn.domob.android.ads.DomobAdEngine$2'),(101,5,'com.google.update.UpdateService$AA'),(102,3,'com.google.update.Dialog$2'),(103,3,'com.ps.opensudoku.gui.FileListActivity$3'),(104,3,'com.google.update.Dialog$1'),(105,3,'com.google.update.UpdateService$AA'),(106,3,'com.ps.opensudoku.gui.FolderListActivity$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,3,'MSG'),(2,12,'appWidgetId'),(3,7,'row_id'),(4,28,'SAFE_START'),(5,25,'shouldEnableBottomBar'),(6,3,'TYPEdsada'),(7,45,'DOMOB_PID'),(8,42,'DOMOB_PID'),(9,42,'overlayTransition'),(10,58,'shouldResizeOverlay'),(11,59,'USER_ID'),(12,36,'MSG'),(13,42,'shouldShowBottomBar'),(14,45,'DOMOB_ALLOW_LOCATION'),(15,42,'DOMOB_ALLOW_LOCATION'),(16,43,'DOMOB_PID'),(17,40,'DOMOB_PID'),(18,59,'APP_ID'),(19,40,'overlayTransition'),(20,50,'APP_ID'),(21,43,'DOMOB_ALLOW_LOCATION'),(22,40,'DOMOB_ALLOW_LOCATION'),(23,40,'shouldMakeOverlayTransparent'),(24,43,'DOMOB_TEST_MODE'),(25,40,'DOMOB_TEST_MODE'),(26,42,'overlayTitle'),(27,36,'TYPEdsada'),(28,59,'Offers_URL'),(29,57,'Adwo_PID'),(30,61,'ST_MY_PID'),(31,42,'transitionTime'),(32,42,'url'),(33,42,'shouldMakeOverlayTransparent'),(34,42,'shouldResizeOverlay'),(35,39,'appId'),(36,59,'Notify_Url_Params'),(37,58,'url'),(38,59,'SHWO_FLAG'),(39,58,'shouldMakeOverlayTransparent'),(40,57,'isTestMode'),(41,59,'CLIENT_PACKAGE'),(42,59,'URL'),(43,32,'dialog_shown'),(44,59,'WAPS_PID'),(45,50,'WAPS_PID'),(46,56,'url'),(47,59,'DEVICE_ID'),(48,50,'DEVICE_ID'),(49,59,'ACTIVITY_FLAG'),(50,60,'MSG'),(51,45,'DOMOB_TEST_MODE'),(52,42,'DOMOB_TEST_MODE'),(53,37,'actType'),(54,40,'transitionTime'),(55,59,'Notify_Id'),(56,59,'UrlPath'),(57,45,'ST_START_DELAY'),(58,59,'offers_webview_tag'),(59,60,'TYPEdsada'),(60,59,'WAPS_ID'),(61,42,'shouldShowTitlebar'),(62,50,'WAPS_ID'),(63,39,'appName'),(64,59,'URL_PARAMS'),(65,32,'lances'),(66,32,'de_valeur'),(67,58,'overlayTransition'),(68,42,'shouldEnableBottomBar'),(69,28,'SAFE_PID'),(70,32,'tours'),(71,39,'actType'),(72,58,'shouldEnableBottomBar'),(73,26,'MM'),(74,25,'shouldShowBottomBar'),(75,25,'transitionTime'),(76,40,'shouldResizeOverlay'),(77,40,'overlayTitle'),(78,40,'shouldShowBottomBar'),(79,34,'state'),(80,45,'ST_MY_PID'),(81,32,'points'),(82,24,'url'),(83,25,'overlayTitle'),(84,25,'shouldMakeOverlayTransparent'),(85,25,'overlayTransition'),(86,25,'shouldResizeOverlay'),(87,24,'(.*)'),(88,25,'url'),(89,25,'shouldShowTitlebar'),(90,24,'adWidth'),(91,56,'adWidth'),(92,59,'isFinshClose'),(93,35,'MSG'),(94,43,'ST_START_DELAY'),(95,58,'shouldShowBottomBar'),(96,58,'transitionTime'),(97,58,'shouldShowTitlebar'),(98,61,'ST_START_DELAY'),(99,40,'shouldEnableBottomBar'),(100,50,'CLIENT_PACKAGE'),(101,58,'overlayTitle'),(102,35,'TYPEdsada'),(103,34,'gamedata'),(104,43,'ST_MY_PID'),(105,37,'appId'),(106,40,'url'),(107,37,'appName'),(108,40,'shouldShowTitlebar'),(109,49,'shouldShowBottomBar'),(110,41,'isRunning'),(111,41,'cols'),(112,23,'cols'),(113,41,'oldValue'),(114,23,'oldValue'),(115,49,'transitionTime'),(116,41,'state'),(117,23,'state'),(118,52,'ST_MY_PID'),(119,41,'id'),(120,23,'id'),(121,41,'rows'),(122,23,'rows'),(123,41,'note'),(124,23,'note'),(125,41,'time'),(126,23,'time'),(127,49,'shouldMakeOverlayTransparent'),(128,41,'tickInterval'),(129,41,'cells'),(130,23,'cells'),(131,41,'notes'),(132,23,'notes'),(133,41,'cmdStack.(.*)'),(134,23,'cmdStack.(.*)'),(135,41,'cellColumn'),(136,23,'cellColumn'),(137,49,'overlayTitle'),(138,49,'overlayTransition'),(139,41,'cmdStack.size'),(140,23,'cmdStack.size'),(141,41,'commandClass'),(142,23,'commandClass'),(143,33,'FOLDER_NAME'),(144,41,'cellRow'),(145,23,'cellRow'),(146,41,'lastPlayed'),(147,23,'lastPlayed'),(148,52,'ST_START_DELAY'),(149,41,'tickCount'),(150,49,'url'),(151,22,'mEditNotePuzzleID'),(152,22,'mResetPuzzleID'),(153,20,'mRenameFolderID'),(154,41,'oldNote'),(155,23,'oldNote'),(156,51,'TYPEdsada'),(157,47,'mDirectory'),(158,49,'shouldResizeOverlay'),(159,51,'MSG'),(160,41,'created'),(161,23,'created'),(162,33,'APPEND_TO_FOLDER'),(163,49,'shouldShowTitlebar'),(164,41,'accumTime'),(165,33,'GAMES'),(166,20,'mDeleteFolderID'),(167,41,'value'),(168,23,'value'),(169,47,'FOLDER_NAME'),(170,49,'shouldEnableBottomBar'),(171,22,'mDeletePuzzleID');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,NULL,NULL),(18,18,'r',0,2,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'s',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'s',0,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',1,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'r',1,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'r',1,NULL,NULL),(63,64,'r',1,NULL,NULL),(64,65,'r',1,NULL,NULL),(65,66,'r',1,NULL,NULL),(66,18,'r',1,NULL,NULL),(67,71,'r',1,NULL,NULL),(68,77,'r',1,NULL,NULL),(69,86,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,4),(2,2,6),(3,3,6),(4,4,6),(5,5,9),(6,6,13),(7,7,2),(8,8,1),(9,9,4),(10,10,6),(11,11,6),(12,12,18),(13,13,13),(14,14,12),(15,15,17),(16,16,14),(17,17,1),(18,18,19),(19,19,6),(20,20,4),(21,21,29),(22,22,3),(23,23,4),(24,24,21),(25,25,13),(26,26,4),(27,27,4),(28,28,14),(29,29,42),(30,29,45),(31,30,61),(32,31,42),(33,31,45),(34,32,45),(35,33,59),(36,34,31),(37,35,45),(38,35,42),(39,36,35),(40,37,45),(41,38,31),(42,39,36),(43,40,59),(44,41,36),(45,42,50),(46,43,42),(47,43,45),(48,44,59),(49,45,60),(50,46,43),(51,46,40),(52,47,61),(53,48,45),(54,49,59),(55,50,48),(56,51,46),(57,52,24),(58,53,40),(59,53,43),(60,54,45),(61,55,59),(62,56,26),(63,57,31),(64,58,43),(65,59,60),(66,60,21),(67,61,59),(68,62,43),(69,63,61),(70,64,43),(71,64,40),(72,65,31),(73,66,62),(74,67,35),(75,68,50),(76,69,40),(77,69,43),(78,70,43),(79,71,20),(80,72,41),(81,73,47),(82,74,44),(83,74,41),(84,74,51),(85,75,44),(86,75,41),(87,75,47),(88,76,20),(89,77,41),(90,77,51),(91,77,44),(92,78,53),(93,79,20),(94,80,41),(95,81,22),(96,82,52),(97,83,22),(98,84,22),(99,85,22),(100,86,52),(101,87,52),(102,88,22),(103,89,30),(104,90,27),(105,91,20),(106,91,41),(107,91,23),(108,91,38),(109,92,20);
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
INSERT INTO `ExitPoints` VALUES (1,4,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(2,63,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(3,63,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(4,6,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(5,9,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(6,13,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(7,2,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(8,1,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(9,4,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(10,63,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(11,63,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(12,18,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(13,67,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(14,12,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(15,17,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(16,14,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(17,1,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(18,19,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(19,63,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(20,4,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(21,29,'<com.evilsunflower.picturepuzzle.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(22,68,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(23,4,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(24,69,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(25,13,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(26,70,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(27,4,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(28,14,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(29,72,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(30,61,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(31,73,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(32,45,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(33,59,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(34,74,'<com.gp.geekadoo.ui.MainScreen$3: void onClick(android.view.View)>',6,'a',NULL),(35,75,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(36,76,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(37,78,'<com.ju6.a: boolean b()>',178,'p',NULL),(38,79,'<com.gp.geekadoo.ui.MainScreen$5: void onClick(android.view.View)>',52,'a',NULL),(39,80,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(40,81,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(41,82,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(42,83,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(43,84,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(44,85,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(45,87,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(46,88,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(47,89,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(48,45,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(49,90,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(50,48,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(51,46,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(52,91,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(53,92,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(54,93,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(55,94,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(56,95,'<com.evilsunflower.picturepuzzle.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(57,31,'<com.gp.geekadoo.ui.MainScreen: void resumeYanivHandler()>',5,'a',NULL),(58,43,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(59,96,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(60,21,'<com.evilsunflower.picturepuzzle.picpuzzle: void onCreate(android.os.Bundle)>',40,'s',NULL),(61,59,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(62,43,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(63,61,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(64,97,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(65,31,'<com.gp.geekadoo.ui.MainScreen: void startYanivHandler()>',5,'a',NULL),(66,62,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(67,98,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(68,99,'<com.mogo.puzzle.begin$beginButtonListener: void onClick(android.view.View)>',35,'a',NULL),(69,100,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(70,101,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(71,20,'<com.ps.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(72,41,'<com.ps.opensudoku.gui.SudokuPlayActivity: void restartActivity()>',2,'a',NULL),(73,47,'<com.ps.opensudoku.gui.FileListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',23,'a',NULL),(74,102,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(75,103,'<com.ps.opensudoku.gui.FileListActivity$3: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(76,20,'<com.ps.opensudoku.gui.FolderListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'a',NULL),(77,104,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(78,53,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(79,20,'<com.ps.opensudoku.gui.FolderListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(80,41,'<com.ps.opensudoku.gui.SudokuPlayActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(81,22,'<com.ps.opensudoku.gui.SudokuListActivity: void playSudoku(long)>',5,'a',NULL),(82,52,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(83,22,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',17,'a',NULL),(84,22,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onKeyDown(int,android.view.KeyEvent)>',9,'a',NULL),(85,22,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onContextItemSelected(android.view.MenuItem)>',19,'a',NULL),(86,105,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(87,52,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(88,22,'<com.ps.opensudoku.gui.SudokuListActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(89,30,'<com.ps.opensudoku.gui.ImportSudokuActivity: void onCreate(android.os.Bundle)>',7,'a',NULL),(90,27,'<com.ps.opensudoku.gui.FileImportActivity: void onCreate(android.os.Bundle)>',8,'a',NULL),(91,106,'<com.ps.opensudoku.gui.FolderListActivity$1: void onClick(android.view.View)>',7,'a',NULL),(92,20,'<com.ps.opensudoku.gui.FolderListActivity: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',8,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,7),(2,2,11),(3,3,11),(4,4,11),(5,12,11),(6,13,1),(7,14,1),(8,18,10),(9,23,16),(10,25,17),(11,27,18),(12,29,19),(13,30,10),(14,31,10),(15,33,19),(16,35,18),(17,37,18),(18,38,7),(19,39,10),(20,40,10),(21,41,17),(22,42,10),(23,43,10),(24,45,10),(25,47,10),(26,48,19),(27,50,18),(28,53,1),(29,54,18),(30,55,1),(31,56,10),(32,57,18),(33,58,1),(34,59,18),(35,60,1),(36,61,19),(37,62,10),(38,63,21),(39,64,16),(40,65,10),(41,66,10),(42,67,21),(43,68,21),(44,69,1),(45,70,18),(46,71,21),(47,72,1),(48,73,10),(49,74,21),(50,76,21),(51,78,18),(52,79,10),(53,80,21),(54,81,10),(55,82,21),(56,84,10),(57,86,19),(58,87,10),(59,88,10),(60,89,1),(61,90,10),(62,91,10),(63,92,1),(64,93,10),(65,94,22),(66,96,10),(67,97,10),(68,98,1),(69,100,10),(70,101,22),(71,102,1),(72,103,18),(73,105,10),(74,106,10),(75,107,10),(76,108,17),(77,110,10),(78,112,1),(79,114,1),(80,115,1),(81,117,1),(82,121,16),(83,128,10),(84,131,16),(85,133,1),(86,134,1),(87,136,23),(88,138,16),(89,141,1),(90,142,1),(91,151,9),(92,152,1),(93,153,1),(94,156,8),(95,157,23),(96,159,10);
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
INSERT INTO `ICategories` VALUES (1,13,1),(2,14,4),(3,53,1),(4,55,4),(5,58,1),(6,60,4),(7,69,1),(8,72,4),(9,89,1),(10,92,4),(11,98,4),(12,102,1),(13,112,1),(14,114,1),(15,115,4),(16,117,4),(17,133,1),(18,134,4),(19,136,5),(20,141,1),(21,142,4),(22,152,4),(23,153,1),(24,157,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,5,'com/tutusw/phonespeedup/IntroActivity'),(2,6,'com/google/ssearch/Dialog'),(3,7,'com/google/ssearch/Dialog'),(4,8,'com/tutusw/phonespeedup/StresstestActivity'),(5,9,'com/tutusw/phonespeedup/Setcpu'),(6,10,'com/tutusw/phonespeedup/IntroActivity'),(7,11,'com/tutusw/phonespeedup/ProfileEditActivity'),(8,15,'com/tutusw/phonespeedup/WidgetService'),(9,16,'com/google/ssearch/SearchService'),(10,17,'com/tutusw/phonespeedup/ProfilesService'),(11,19,'com/tutusw/phonespeedup/WidgetService'),(12,20,'com/tutusw/phonespeedup/ProfilesService'),(13,21,'com/tutusw/phonespeedup/ProfilesService'),(14,22,'com/evilsunflower/picturepuzzle/UpdateService'),(15,24,'com/tutusw/phonespeedup/PerflockActivity'),(16,26,'com/google/ssearch/Dialog'),(17,28,'com/google/ssearch/Dialog'),(18,32,'com/tutusw/phonespeedup/AdvancedActivity'),(19,34,'com/tutusw/phonespeedup/InfoActivity'),(20,36,'com/tutusw/phonespeedup/AboutActivity'),(21,40,'com.google.android.maps.MapsActivity'),(22,44,'com/google/update/Dialog'),(23,46,'com/google/update/Dialog'),(24,49,'com/google/update/Dialog'),(25,52,'com/google/update/Dialog'),(26,65,'com/adwo/adsdk/AdwoAdBrowserActivity'),(27,73,'com.google.android.maps.MapsActivity'),(28,77,'com/waps/OffersWebView'),(29,81,'com.google.android.maps.MapsActivity'),(30,85,'NULL-CONSTANT'),(31,88,'com.google.android.maps.MapsActivity'),(32,99,'com/google/update/Dialog'),(33,104,'com/google/update/Dialog'),(34,106,'com.google.android.maps.MapsActivity'),(35,109,'com/google/update/UpdateService'),(36,111,'com/google/update/UpdateService'),(37,113,'com/waps/OffersWebView'),(38,116,'com/gp/geekadoo/ui/Yaniv'),(39,118,'com/waps/OffersWebView'),(40,119,'com/google/update/Dialog'),(41,120,'com/google/update/Dialog'),(42,122,'com/evilsunflower/picturepuzzle/UpdateService'),(43,123,'(.*)'),(44,124,'com/google/update/Dialog'),(45,125,'com/google/update/Dialog'),(46,126,'com/google/update/Dialog'),(47,127,'com/google/update/Dialog'),(48,130,'com/google/update/UpdateService'),(49,129,'com/gp/geekadoo/ui/Yaniv'),(50,132,'com/mogo/puzzle/Main'),(51,135,'com/ps/opensudoku/gui/FileListActivity'),(52,137,'com/ps/opensudoku/gui/FileListActivity'),(53,139,'com/ps/opensudoku/gui/ImportSudokuActivity'),(54,140,'com/ps/opensudoku/gui/SudokuExportActivity'),(55,143,'com/google/update/UpdateService'),(56,144,'com/ps/opensudoku/gui/SudokuExportActivity'),(57,145,'com/ps/opensudoku/gui/GameSettingsActivity'),(58,146,'com/ps/opensudoku/gui/SudokuPlayActivity'),(59,147,'com/google/update/Dialog'),(60,148,'com/google/update/Dialog'),(61,149,'com/ps/opensudoku/gui/FolderListActivity'),(62,150,'com/ps/opensudoku/gui/FolderListActivity'),(63,151,'com/ps/opensudoku/gui/SudokuEditActivity'),(64,154,'com/google/update/Dialog'),(65,155,'com/google/update/Dialog'),(66,156,'com/ps/opensudoku/gui/SudokuEditActivity'),(67,157,'com/ps/opensudoku/gui/SudokuImportActivity'),(68,158,'com/ps/opensudoku/gui/ImportSudokuActivity'),(69,160,'com/ps/opensudoku/gui/SudokuListActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,18,1),(2,25,2),(3,27,3),(4,29,4),(5,30,5),(6,31,6),(7,33,7),(8,35,8),(9,37,9),(10,39,10),(11,41,11),(12,42,12),(13,43,13),(14,45,14),(15,48,15),(16,50,16),(17,56,17),(18,59,19),(19,62,21),(20,66,22),(21,70,23),(22,73,24),(23,78,25),(24,79,26),(25,81,27),(26,84,28),(27,86,29),(28,87,30),(29,88,31),(30,90,32),(31,91,33),(32,93,34),(33,96,35),(34,97,36),(35,100,37),(36,103,38),(37,105,39),(38,106,40),(39,107,41),(40,110,42),(41,128,45),(42,139,46),(43,158,47),(44,159,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'TYPEdsada'),(2,7,'MSG'),(3,7,'TYPEdsada'),(4,26,'TYPEdsada'),(5,27,'android.intent.extra.TEXT'),(6,27,'android.intent.extra.SUBJECT'),(7,28,'MSG'),(8,27,'android.intent.extra.EMAIL'),(9,28,'TYPEdsada'),(10,29,'sms_body'),(11,35,'android.intent.extra.EMAIL'),(12,37,'android.intent.extra.TEXT'),(13,37,'android.intent.extra.EMAIL'),(14,44,'MSG'),(15,44,'TYPEdsada'),(16,46,'TYPEdsada'),(17,49,'MSG'),(18,49,'TYPEdsada'),(19,50,'android.intent.extra.EMAIL'),(20,52,'TYPEdsada'),(21,57,'android.intent.extra.TEXT'),(22,57,'android.intent.extra.SUBJECT'),(23,57,'android.intent.extra.EMAIL'),(24,59,'android.intent.extra.TEXT'),(25,59,'android.intent.extra.SUBJECT'),(26,59,'android.intent.extra.EMAIL'),(27,63,'android.intent.extra.INTENT'),(28,65,'url'),(29,67,'android.intent.extra.INTENT'),(30,68,'android.intent.extra.TITLE'),(31,68,'android.intent.extra.INTENT'),(32,71,'android.intent.extra.INTENT'),(33,74,'android.intent.extra.TITLE'),(34,74,'android.intent.extra.INTENT'),(35,77,'USER_ID'),(36,76,'android.intent.extra.INTENT'),(37,77,'CLIENT_PACKAGE'),(38,78,'android.intent.extra.TEXT'),(39,77,'Offers_URL'),(40,78,'android.intent.extra.EMAIL'),(41,77,'offers_webview_tag'),(42,80,'android.intent.extra.TITLE'),(43,77,'URL_PARAMS'),(44,80,'android.intent.extra.INTENT'),(45,82,'android.intent.extra.TITLE'),(46,82,'android.intent.extra.INTENT'),(47,86,'sms_body'),(48,94,'query'),(49,99,'MSG'),(50,99,'TYPEdsada'),(51,104,'TYPEdsada'),(52,113,'Notify_Url_Params'),(53,113,'UrlPath'),(54,113,'ACTIVITY_FLAG'),(55,113,'isFinshClose'),(56,113,'offers_webview_tag'),(57,116,'state'),(58,118,'UrlPath'),(59,118,'ACTIVITY_FLAG'),(60,118,'isFinshClose'),(61,118,'offers_webview_tag'),(62,119,'MSG'),(63,119,'TYPEdsada'),(64,120,'TYPEdsada'),(65,124,'MSG'),(66,124,'TYPEdsada'),(67,125,'TYPEdsada'),(68,126,'MSG'),(69,126,'TYPEdsada'),(70,127,'TYPEdsada'),(71,129,'state'),(72,135,'FOLDER_NAME'),(73,136,'<INTENT>'),(74,137,'FOLDER_NAME'),(75,140,'FOLDER_ID'),(76,144,'FOLDER_ID'),(77,146,'sudoku_id'),(78,147,'MSG'),(79,147,'TYPEdsada'),(80,148,'TYPEdsada'),(81,151,'sudoku_id'),(82,154,'MSG'),(83,154,'TYPEdsada'),(84,155,'TYPEdsada'),(85,156,'folder_id'),(86,157,'<INTENT>'),(87,160,'folder_id');
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
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,4),(4,3,5),(5,3,3),(6,4,4),(7,5,6),(8,5,7),(9,6,1),(10,7,1),(11,8,8),(12,8,9),(13,9,10),(14,10,5),(15,10,3),(16,10,4),(17,11,10),(18,12,1),(19,13,1),(20,14,10),(21,15,4),(22,15,5),(23,15,3),(24,16,3),(25,16,4),(26,16,5),(27,17,1),(28,18,5),(29,18,3),(30,18,4),(31,19,3),(32,19,5),(33,19,4),(34,20,15),(35,20,14),(36,20,13),(37,20,12),(38,20,11),(39,21,13),(40,21,12),(41,21,15),(42,21,14),(43,21,11),(44,22,15),(45,22,14),(46,22,13),(47,22,12),(48,22,11),(49,23,11),(50,23,12),(51,23,13),(52,23,14),(53,23,15),(54,24,13),(55,24,14),(56,24,11),(57,24,12),(58,24,15),(59,25,11),(60,25,12),(61,25,13),(62,25,14),(63,25,15),(64,26,13),(65,26,14),(66,26,7),(67,27,7),(68,27,14),(69,27,13),(70,28,7),(71,28,14),(72,28,13),(73,29,7),(74,29,14),(75,29,13),(76,30,7),(77,30,14),(78,30,13),(79,31,14),(80,31,13),(81,31,7),(82,32,14),(83,32,13),(84,32,7),(85,33,7),(86,33,14),(87,33,13),(88,34,7),(89,34,14),(90,34,13),(91,35,7),(92,35,13),(93,35,14),(94,36,7),(95,36,13),(96,36,14),(97,37,7),(98,37,13),(99,37,14),(100,38,20),(101,39,20),(102,40,20);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,6,1),(3,7,1),(4,8,2),(5,9,2),(6,9,3),(7,11,3),(8,11,2),(9,12,1),(10,13,1),(11,14,2),(12,14,3),(13,17,1);
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
INSERT INTO `IFData` VALUES (1,9,'file','*',NULL,'.*\\.sdm',NULL,NULL),(2,9,'http','*',NULL,'.*\\.sdm',NULL,NULL),(3,9,'file','*',NULL,'.*\\.opensudoku',NULL,NULL),(4,9,'http','*',NULL,'.*\\.opensudoku',NULL,NULL),(5,14,NULL,NULL,NULL,NULL,'application','x-opensudoku'),(6,38,'package',NULL,NULL,NULL,NULL,NULL),(7,39,'package',NULL,NULL,NULL,NULL,NULL),(8,40,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,31,'*','*'),(2,45,'(.*)','(.*)'),(3,57,'message','rfc882'),(4,62,'(.*)','(.*)'),(5,66,'application','vnd.android.package-archive'),(6,79,'application','vnd.android.package-archive'),(7,84,'application','vnd.android.package-archive'),(8,87,'application','vnd.android.package-archive'),(9,90,'application','vnd.android.package-archive'),(10,91,'application','vnd.android.package-archive'),(11,93,'application','vnd.android.package-archive'),(12,96,'application','vnd.android.package-archive'),(13,97,'*','*'),(14,100,'application','vnd.android.package-archive'),(15,105,'application','vnd.android.package-archive'),(16,107,'application','vnd.android.package-archive'),(17,110,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,5,'com.tutusw.phonespeedup'),(2,6,'com.tutusw.phonespeedup'),(3,7,'com.tutusw.phonespeedup'),(4,8,'com.tutusw.phonespeedup'),(5,9,'com.tutusw.phonespeedup'),(6,10,'com.tutusw.phonespeedup'),(7,11,'com.tutusw.phonespeedup'),(8,13,'com.tutusw.phonespeedup'),(9,14,'com.tutusw.phonespeedup'),(10,15,'com.tutusw.phonespeedup'),(11,16,'com.tutusw.phonespeedup'),(12,17,'com.tutusw.phonespeedup'),(13,19,'com.tutusw.phonespeedup'),(14,20,'com.tutusw.phonespeedup'),(15,21,'com.tutusw.phonespeedup'),(16,22,'com.evilsunflower.picturepuzzle'),(17,24,'com.tutusw.phonespeedup'),(18,26,'com.tutusw.phonespeedup'),(19,28,'com.tutusw.phonespeedup'),(20,32,'com.tutusw.phonespeedup'),(21,34,'com.tutusw.phonespeedup'),(22,36,'com.tutusw.phonespeedup'),(23,40,'com.google.android.apps.maps'),(24,44,'com.mogo.puzzle'),(25,46,'com.mogo.puzzle'),(26,49,'com.ps.yams'),(27,53,'(.*)'),(28,52,'com.ps.yams'),(29,55,'(.*)'),(30,58,'com.noshufou.android.su'),(31,60,'com.noshufou.android.su'),(32,65,'com.evilsunflower.picturepuzzle'),(33,69,'com.noshufou.android.su'),(34,72,'com.noshufou.android.su'),(35,73,'com.google.android.apps.maps'),(36,77,'com.mogo.puzzle'),(37,81,'com.google.android.apps.maps'),(38,85,'NULL-CONSTANT'),(39,89,'com.noshufou.android.su'),(40,88,'com.google.android.apps.maps'),(41,92,'com.noshufou.android.su'),(42,98,'com.mogo.puzzle'),(43,99,'com.ps.yams'),(44,102,'com.mogo.puzzle'),(45,104,'com.ps.yams'),(46,106,'com.google.android.apps.maps'),(47,109,'com.ps.yams'),(48,111,'com.gp.geekadoo'),(49,112,'com.ps.yams'),(50,114,'com.noshufou.android.su'),(51,115,'com.ps.yams'),(52,113,'com.mogo.puzzle'),(53,116,'com.gp.geekadoo'),(54,117,'com.noshufou.android.su'),(55,118,'com.mogo.puzzle'),(56,119,'com.gp.geekadoo'),(57,120,'com.gp.geekadoo'),(58,122,'com.evilsunflower.picturepuzzle'),(59,123,'(.*)'),(60,124,'com.gp.geekadoo'),(61,125,'com.gp.geekadoo'),(62,126,'com.mogo.puzzle'),(63,127,'com.mogo.puzzle'),(64,130,'com.mogo.puzzle'),(65,129,'com.gp.geekadoo'),(66,132,'com.mogo.puzzle'),(67,133,'com.gp.geekadoo'),(68,134,'com.gp.geekadoo'),(69,135,'com.ps.opensudoku'),(70,137,'com.ps.opensudoku'),(71,139,'com.ps.opensudoku'),(72,140,'com.ps.opensudoku'),(73,141,'com.noshufou.android.su'),(74,142,'com.noshufou.android.su'),(75,143,'com.ps.opensudoku'),(76,144,'com.ps.opensudoku'),(77,145,'com.ps.opensudoku'),(78,146,'com.ps.opensudoku'),(79,147,'com.ps.opensudoku'),(80,148,'com.ps.opensudoku'),(81,149,'com.ps.opensudoku'),(82,150,'com.ps.opensudoku'),(83,151,'com.ps.opensudoku'),(84,152,'com.ps.opensudoku'),(85,153,'com.ps.opensudoku'),(86,154,'com.ps.opensudoku'),(87,155,'com.ps.opensudoku'),(88,156,'com.ps.opensudoku'),(89,157,'com.ps.opensudoku'),(90,158,'com.ps.opensudoku'),(91,160,'com.ps.opensudoku');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,12,0),(3,17,0),(4,18,0),(5,19,0),(6,20,0),(7,21,0),(8,23,0),(9,27,0),(10,29,0),(11,30,0),(12,31,0),(13,32,0),(14,33,0),(15,46,0),(16,48,0),(17,50,0),(18,53,0),(19,62,0),(20,19,0),(21,17,0),(22,63,0),(23,64,0),(24,65,0),(25,66,0),(26,19,0),(27,17,0),(28,63,0),(29,64,0),(30,65,0),(31,66,0),(32,19,0),(33,17,0),(34,63,0),(35,64,0),(36,65,0),(37,66,0),(38,67,0),(39,68,0),(40,69,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,1,0),(5,5,0,0),(6,6,0,0),(7,6,0,0),(8,7,0,0),(9,8,0,0),(10,9,0,0),(11,10,0,0),(12,11,1,0),(13,13,1,0),(14,13,1,0),(15,14,0,0),(16,15,0,0),(17,16,0,0),(18,17,1,0),(19,18,0,0),(20,19,0,0),(21,20,0,0),(22,21,0,0),(23,22,1,0),(24,23,0,0),(25,24,1,0),(26,25,0,0),(27,24,1,0),(28,25,0,0),(29,24,1,0),(30,26,1,0),(31,24,1,0),(32,27,0,0),(33,24,1,0),(34,27,0,0),(35,24,1,0),(36,27,0,0),(37,24,1,0),(38,28,1,0),(39,24,1,0),(40,24,0,0),(41,24,1,0),(42,29,1,0),(43,24,1,0),(44,30,0,0),(45,24,1,0),(46,30,0,0),(47,24,1,0),(48,24,1,0),(49,32,0,0),(50,24,1,0),(51,33,1,0),(52,32,0,0),(53,33,1,0),(54,24,1,0),(55,33,1,0),(56,34,1,0),(57,24,1,0),(58,36,1,0),(59,24,1,0),(60,36,1,0),(61,24,1,0),(62,24,1,0),(63,38,1,0),(64,39,1,0),(65,24,0,0),(66,40,1,0),(67,38,1,0),(68,38,1,0),(69,41,1,0),(70,24,1,0),(71,38,1,0),(72,41,1,0),(73,24,0,0),(74,38,1,0),(75,24,1,0),(76,38,1,0),(77,42,0,0),(78,24,1,0),(79,43,1,0),(80,38,1,0),(81,24,0,0),(82,38,1,0),(83,43,1,0),(84,43,1,0),(85,44,0,0),(86,24,1,0),(87,43,1,0),(88,24,0,0),(89,45,1,0),(90,43,1,0),(91,46,1,0),(92,45,1,0),(93,43,1,0),(94,24,1,0),(95,46,1,0),(96,46,1,0),(97,24,1,0),(98,47,1,0),(99,48,0,0),(100,46,1,0),(101,24,1,0),(102,47,1,0),(103,24,1,0),(104,48,0,0),(105,46,1,0),(106,24,0,0),(107,46,1,0),(108,24,1,0),(109,50,0,0),(110,49,1,0),(111,51,0,0),(112,54,1,0),(113,55,0,0),(114,56,1,0),(115,54,1,0),(116,57,0,0),(117,56,1,0),(118,55,0,0),(119,58,0,0),(120,58,0,0),(121,59,1,0),(122,60,0,0),(123,61,0,0),(124,62,0,0),(125,62,0,0),(126,63,0,0),(127,63,0,0),(128,64,1,0),(129,65,0,0),(130,66,0,0),(131,67,1,0),(132,68,0,0),(133,70,1,0),(134,70,1,0),(135,71,0,0),(136,72,1,0),(137,73,0,0),(138,74,1,0),(139,75,0,0),(140,76,0,0),(141,77,1,0),(142,77,1,0),(143,78,0,0),(144,79,0,0),(145,80,0,0),(146,81,0,0),(147,82,0,0),(148,82,0,0),(149,83,0,0),(150,84,0,0),(151,85,0,0),(152,86,1,0),(153,86,1,0),(154,87,0,0),(155,87,0,0),(156,88,0,0),(157,89,0,0),(158,90,0,0),(159,91,1,0),(160,92,0,0);
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
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(9,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(5,'android.permission.CHANGE_WIFI_STATE'),(17,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(12,'android.permission.READ_CONTACTS'),(16,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.VIBRATE'),(8,'android.permission.WAKE_LOCK'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(10,'android.permission.WRITE_SMS'),(15,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(2,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(3,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(4,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'http://www.youtube.com/watch?v=V4XuZRbbs6M',NULL,NULL,NULL),(18,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(27,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(28,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(31,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(34,NULL,NULL,'file://',NULL,NULL,NULL),(35,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(38,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(40,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(41,NULL,NULL,'file://',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(45,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(46,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(47,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(48,NULL,NULL,'http://code.google.com/p/opensudoku-android/wiki/Puzzles',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,35,18),(2,37,20),(3,52,43),(4,53,44);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,2,1),(11,3,1),(12,2,3),(13,3,2),(14,2,4),(15,3,3),(16,2,7),(17,3,4),(18,2,8),(19,3,5),(20,2,9),(21,3,7),(22,2,10),(23,3,9),(24,2,11),(25,2,12),(26,2,13),(27,2,14),(28,2,15),(29,4,1),(30,4,2),(31,5,16),(32,4,3),(33,5,1),(34,5,2),(35,4,4),(36,4,5),(37,5,18),(38,5,3),(39,4,7),(40,4,9),(41,5,4),(42,5,5),(43,4,10),(44,5,7),(45,4,11),(46,5,9),(47,4,13),(48,5,14),(49,4,14),(50,4,17),(51,4,16),(52,4,18),(53,6,16),(54,6,1),(55,6,2),(56,6,18),(57,6,3),(58,6,4),(59,6,5),(60,6,7),(61,6,9),(62,6,11),(63,6,14);
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

-- Dump completed on 2015-10-09  0:41:16
