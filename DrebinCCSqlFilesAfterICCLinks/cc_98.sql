-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_98
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
INSERT INTO `ActionStrings` VALUES (13,'DownloadManageServicer.ACTION_CONTROL'),(11,'DownloadManageServicer.ACTION_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.DELETE'),(14,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(15,'android.intent.action.SEND'),(16,'android.intent.action.SENDTO'),(2,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(17,'android.intent.action.WEB_SEARCH'),(10,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(12,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.catsw.FontMgr',5),(2,'com.safesys.viruskiller',32),(3,'com.safetest.qian',9),(4,'com.wqx.blackjack',24),(5,'com.droidhen.vipbasketball',56),(6,'com.safetest.tractor',5),(7,'com.evilsunflower.jump',1);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.catsw.FontMgr.FontMgr'),(2,1,'com.catsw.FontMgr.install'),(3,1,'com.catsw.FontMgr.FileList'),(4,1,'com.catsw.FontMgr.restore'),(5,1,'com.catsw.FontMgr.rList'),(6,1,'com.catsw.FontMgr.UpdateCheck'),(7,2,'com.safesys.viruskiller.MainActivity'),(8,2,'com.google.update.Dialog'),(9,2,'com.google.update.UpdateService'),(10,2,'com.safesys.viruskiller.ScanningManagerService'),(11,2,'com.safesys.viruskiller.DownloadManageService'),(12,2,'com.google.update.Receiver'),(13,2,'com.safesys.viruskiller.ScanningReciever'),(14,2,'com.safesys.viruskiller.ScanPackageBroadcast'),(15,3,'com.safetest.qian.ArchipelagoActivity'),(16,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(17,3,'com.safetest.qian.ShowTips'),(18,3,'com.safetest.qian.UpdateService'),(19,3,'com.safetest.qian.Receiver'),(20,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(21,4,'com.wqx.blackjack.Blackjack'),(22,4,'com.wqx.blackjack.Card'),(23,4,'com.google.update.Dialog'),(24,4,'com.waps.OffersWebView'),(25,5,'com.droidhen.vipbasketball.GameActivity'),(26,4,'com.google.update.UpdateService'),(27,4,'com.google.update.Receiver'),(28,1,'com.catsw.FontMgr.restore$4'),(29,5,'com.droidhen.vipbasketball.OptionActivity'),(30,5,'com.droidhen.api.promptclient.more.MoreActivity'),(31,5,'com.droidhen.api.promptclient.prompt.RecommendActivity'),(32,5,'com.droidhen.api.promptclient.prompt.RateActivity'),(33,1,'com.catsw.FontMgr.install$1'),(34,5,'com.droidhen.api.scoreclient.ui.HighScoresActivity'),(35,5,'com.droidhen.api.scoreclient.ui.AchievementListActivity'),(36,5,'com.droidhen.vipbasketball.ShowTips'),(37,5,'com.droidhen.vipbasketball.UpdateService'),(38,5,'com.droidhen.vipbasketball.Receiver'),(39,1,'com.catsw.FontMgr.restore$3'),(40,5,'com.droidhen.api.scoreclient.ScoreClientProvider'),(41,1,'com.catsw.FontMgr.FontMgr$10'),(42,6,'com.safetest.tractor.android.AndroidTractorGameController'),(43,6,'com.safetest.tractor.android.CreditActivity'),(44,1,'com.catsw.FontMgr.FontMgr$3'),(45,6,'com.safetest.tractor.android.Tractor'),(46,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(47,6,'com.safetest.tractor.ShowTips'),(48,6,'com.safetest.tractor.UpdateService'),(49,6,'com.safetest.tractor.Receiver'),(50,1,'com.catsw.FontMgr.install$4'),(51,1,'com.catsw.FontMgr.install$3'),(52,1,'com.catsw.FontMgr.FontMgr$2'),(53,1,'com.catsw.FontMgr.restore$1'),(54,1,'com.catsw.FontMgr.FontMgr$11'),(55,7,'com.evilsunflower.jump.Splash'),(56,7,'com.evilsunflower.jump.ShowTips'),(57,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(58,7,'com.evilsunflower.jump.AgileBuddyActivity'),(59,2,'com.safesys.viruskiller.MainActivity$2'),(60,7,'com.evilsunflower.jump.Prefs'),(61,7,'com.evilsunflower.jump.TipsActivity'),(62,7,'com.scoreloop.android.coreui.HighscoresActivity'),(63,7,'com.scoreloop.android.coreui.ProfileActivity'),(64,2,'com.google.update.UpdateService$MyThread'),(65,7,'com.evilsunflower.jump.UpdateService'),(66,7,'com.evilsunflower.jump.Receiver'),(67,2,'com.google.update.Dialog$2'),(68,2,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(69,2,'com.google.update.Dialog$1'),(70,2,'com.safesys.viruskiller.MainActivity$UIReceiver'),(71,2,'com.ju6.a'),(72,2,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(73,3,'com.safetest.qian.ShowTips$1'),(74,3,'com.adwo.adsdk.g'),(75,4,'com.google.update.UpdateService$AA'),(76,5,'com.droidhen.api.promptclient.prompt.RecommendActivity$1'),(77,5,'com.droidhen.vipbasketball.ShowTips$1'),(78,4,'com.waps.x'),(79,4,'com.waps.aa'),(80,6,'com.safetest.tractor.ShowTips$1'),(81,4,'com.waps.q'),(82,4,'com.waps.y'),(83,6,'com.adwo.adsdk.g'),(84,4,'com.waps.o'),(85,4,'com.google.update.Dialog$2'),(86,4,'com.google.update.Dialog$1'),(87,7,'com.evilsunflower.jump.ShowTips$1'),(88,7,'com.adwo.adsdk.g');
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,2,'fpath1'),(2,4,'fpath2'),(3,3,'ftype'),(4,4,'ftxt'),(5,3,'ftxt'),(6,2,'fpath2'),(7,6,'MYAD_PID'),(8,4,'fpath1'),(9,5,'ftxt'),(10,2,'ftxt'),(11,5,'ftype'),(12,10,'state'),(13,8,'MSG'),(14,9,'ST_START_DELAY'),(15,8,'TYPEdsada'),(16,10,'notification_record'),(17,9,'ST_MY_PID'),(18,16,'shouldShowBottomBar'),(19,16,'url'),(20,16,'shouldResizeOverlay'),(21,16,'transitionTime'),(22,16,'shouldShowTitlebar'),(23,16,'overlayTitle'),(24,18,'SAFE_START'),(25,16,'shouldEnableBottomBar'),(26,16,'overlayTransition'),(27,18,'SAFE_PID'),(28,17,'MM'),(29,16,'shouldMakeOverlayTransparent'),(30,24,'UrlPath'),(31,21,'mMaxScore'),(32,21,'mMoney'),(33,32,'submit'),(34,35,'SAFE_START'),(35,31,'msg'),(36,32,'global'),(37,31,'file'),(38,26,'ST_START_DELAY'),(39,21,'mStartTime'),(40,24,'Offers_URL'),(41,24,'isFinshClose'),(42,20,'overlayTransition'),(43,21,'mLoseCount'),(44,32,'mode'),(45,32,'board'),(46,34,'MM'),(47,35,'SAFE_PID'),(48,24,'USER_ID'),(49,20,'overlayTitle'),(50,21,'mCurrentScore'),(51,22,'WAPS_ID'),(52,24,'WAPS_ID'),(53,21,'WAPS_ID'),(54,20,'transitionTime'),(55,24,'Notify_Id'),(56,20,'shouldEnableBottomBar'),(57,22,'CLIENT_PACKAGE'),(58,24,'CLIENT_PACKAGE'),(59,21,'CLIENT_PACKAGE'),(60,24,'offers_webview_tag'),(61,24,'URL_PARAMS'),(62,22,'WAPS_PID'),(63,24,'WAPS_PID'),(64,21,'WAPS_PID'),(65,24,'Notify_Url_Params'),(66,21,'mWinCount'),(67,20,'url'),(68,22,'DEVICE_ID'),(69,24,'DEVICE_ID'),(70,21,'DEVICE_ID'),(71,23,'MSG'),(72,41,'overlayTitle'),(73,22,'mWinCount'),(74,38,'create_game'),(75,38,'num_decks'),(76,41,'shouldShowTitlebar'),(77,38,'num_ais'),(78,21,'Blackjack'),(79,20,'shouldShowTitlebar'),(80,22,'mLoseCount'),(81,24,'URL'),(82,22,'mCurrentScore'),(83,22,'mMaxScore'),(84,24,'ACTIVITY_FLAG'),(85,22,'mMoney'),(86,26,'ST_MY_PID'),(87,23,'TYPEdsada'),(88,20,'shouldShowBottomBar'),(89,22,'APP_ID'),(90,24,'APP_ID'),(91,21,'APP_ID'),(92,20,'shouldMakeOverlayTransparent'),(93,22,'mStartTime'),(94,24,'SHWO_FLAG'),(95,20,'shouldResizeOverlay'),(96,38,'preferred_player_id'),(97,43,'SAFE_PID'),(98,38,'server_address'),(99,47,'url'),(100,42,'MM'),(101,41,'shouldShowBottomBar'),(102,41,'transitionTime'),(103,41,'shouldMakeOverlayTransparent'),(104,47,'shouldMakeOverlayTransparent'),(105,41,'url'),(106,47,'shouldEnableBottomBar'),(107,41,'shouldResizeOverlay'),(108,47,'shouldShowBottomBar'),(109,38,'num_players'),(110,41,'overlayTransition'),(111,47,'shouldResizeOverlay'),(112,38,'game_id'),(113,47,'shouldShowTitlebar'),(114,53,'SAFE_PID'),(115,47,'overlayTransition'),(116,46,'MM'),(117,53,'SAFE_START'),(118,43,'SAFE_START'),(119,47,'transitionTime'),(120,41,'shouldEnableBottomBar'),(121,47,'overlayTitle'),(122,48,'SENSOR_MODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'r',1,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'s',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',1,NULL,NULL),(26,26,'s',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,31,'a',0,NULL,NULL),(31,32,'a',0,NULL,NULL),(32,34,'a',0,NULL,NULL),(33,35,'a',0,NULL,NULL),(34,36,'a',0,NULL,NULL),(35,37,'s',0,NULL,NULL),(36,38,'r',1,NULL,NULL),(37,40,'p',0,NULL,NULL),(38,42,'a',0,NULL,NULL),(39,43,'a',1,NULL,NULL),(40,45,'a',0,NULL,NULL),(41,46,'a',0,NULL,NULL),(42,47,'a',0,NULL,NULL),(43,48,'s',0,NULL,NULL),(44,49,'r',1,NULL,NULL),(45,55,'a',1,NULL,NULL),(46,56,'a',0,NULL,NULL),(47,57,'a',0,NULL,NULL),(48,58,'a',0,NULL,NULL),(49,60,'a',0,NULL,NULL),(50,61,'a',0,NULL,NULL),(51,62,'a',0,NULL,NULL),(52,63,'a',0,NULL,NULL),(53,65,'s',0,NULL,NULL),(54,66,'r',1,NULL,NULL),(55,68,'r',1,NULL,NULL),(56,70,'r',1,NULL,NULL),(57,72,'r',1,NULL,NULL),(58,81,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,3),(2,2,3),(3,3,4),(4,4,2),(5,5,4),(6,6,1),(7,7,4),(8,8,5),(9,9,1),(10,10,5),(11,11,1),(12,12,1),(13,13,1),(14,14,2),(15,15,2),(16,16,2),(17,17,1),(18,18,4),(19,19,1),(20,20,3),(21,21,5),(22,22,10),(23,23,7),(24,24,12),(25,25,7),(26,26,9),(27,27,8),(28,28,8),(29,29,9),(30,30,7),(31,30,13),(32,31,7),(33,32,9),(34,33,9),(35,34,7),(36,35,15),(37,36,19),(38,37,17),(39,38,15),(40,39,26),(41,40,24),(42,41,37),(43,42,37),(44,43,36),(45,44,26),(46,45,30),(47,45,25),(48,46,37),(49,47,34),(50,48,27),(51,49,24),(52,50,21),(53,51,24),(54,52,26),(55,53,42),(56,54,44),(57,55,24),(58,56,39),(59,57,38),(60,58,24),(61,59,21),(62,60,24),(63,61,24),(64,62,23),(65,63,21),(66,64,23),(67,65,38),(68,66,54),(69,67,50),(70,68,38),(71,69,51),(72,70,52),(73,71,39),(74,72,45),(75,73,39),(76,74,48),(77,75,38),(78,75,39),(79,76,46),(80,77,38),(81,78,48),(82,79,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,3,'<com.catsw.FontMgr.FileList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',74,'a',NULL),(2,3,'<com.catsw.FontMgr.FileList: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(3,28,'<com.catsw.FontMgr.restore$4: void onClick(android.view.View)>',14,'a',NULL),(4,33,'<com.catsw.FontMgr.install$1: void onClick(android.view.View)>',7,'a',NULL),(5,39,'<com.catsw.FontMgr.restore$3: void onClick(android.view.View)>',14,'a',NULL),(6,41,'<com.catsw.FontMgr.FontMgr$10: void onClick(android.view.View)>',7,'a',NULL),(7,4,'<com.catsw.FontMgr.restore: void Fmain()>',4,'a',NULL),(8,5,'<com.catsw.FontMgr.rList: void onListItemClick(android.widget.ListView,android.view.View,int,long)>',74,'a',NULL),(9,44,'<com.catsw.FontMgr.FontMgr$3: void onClick(android.view.View)>',7,'a',NULL),(10,5,'<com.catsw.FontMgr.rList: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(11,1,'<com.catsw.FontMgr.FontMgr: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(12,1,'<com.catsw.FontMgr.FontMgr: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(13,1,'<com.catsw.FontMgr.FontMgr: void onCreate(android.os.Bundle)>',7,'s',NULL),(14,50,'<com.catsw.FontMgr.install$4: void onClick(android.view.View)>',14,'a',NULL),(15,51,'<com.catsw.FontMgr.install$3: void onClick(android.view.View)>',14,'a',NULL),(16,2,'<com.catsw.FontMgr.install: void Fmain()>',4,'a',NULL),(17,52,'<com.catsw.FontMgr.FontMgr$2: void onClick(android.view.View)>',7,'a',NULL),(18,53,'<com.catsw.FontMgr.restore$1: void onClick(android.view.View)>',7,'a',NULL),(19,54,'<com.catsw.FontMgr.FontMgr$11: void onClick(android.view.View)>',7,'a',NULL),(20,3,'<com.catsw.FontMgr.FileList: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(21,5,'<com.catsw.FontMgr.rList: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(22,10,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(23,7,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(24,12,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(25,59,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(26,64,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(27,67,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(28,69,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(29,9,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(30,10,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(31,7,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(32,9,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(33,71,'<com.ju6.a: boolean b()>',178,'p',NULL),(34,7,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(35,15,'<com.safetest.qian.ArchipelagoActivity: void onCreate(android.os.Bundle)>',30,'s',NULL),(36,19,'<com.safetest.qian.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,73,'<com.safetest.qian.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(38,74,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(39,26,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(40,24,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(41,40,'<com.droidhen.api.scoreclient.ScoreClientProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',31,'p',0),(42,40,'<com.droidhen.api.scoreclient.ScoreClientProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',14,'p',0),(43,38,'<com.droidhen.vipbasketball.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(44,75,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(45,76,'<com.droidhen.api.promptclient.prompt.RecommendActivity$1: void onClick(android.view.View)>',26,'a',NULL),(46,40,'<com.droidhen.api.scoreclient.ScoreClientProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',28,'p',0),(47,77,'<com.droidhen.vipbasketball.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(48,27,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(49,78,'<com.waps.x: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(50,21,'<com.wqx.blackjack.Blackjack: void onClick(android.view.View)>',33,'a',NULL),(51,79,'<com.waps.aa: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(52,26,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(53,80,'<com.safetest.tractor.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(54,49,'<com.safetest.tractor.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(55,82,'<com.waps.y: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(56,43,'<com.safetest.tractor.android.CreditActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(57,83,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(58,24,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',41,'a',NULL),(59,21,'<com.wqx.blackjack.Blackjack: boolean onOptionsItemSelected(android.view.MenuItem)>',43,'a',NULL),(60,24,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',356,'a',NULL),(61,84,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(62,85,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(63,21,'<com.wqx.blackjack.Blackjack: boolean onKeyDown(int,android.view.KeyEvent)>',37,'a',NULL),(64,86,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(65,42,'<com.safetest.tractor.android.AndroidTractorGameController: void LaunchNewGameActivity()>',4,'a',NULL),(66,66,'<com.evilsunflower.jump.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(67,61,'<com.evilsunflower.jump.TipsActivity: void onClick(android.view.View)>',9,'a',NULL),(68,42,'<com.safetest.tractor.android.AndroidTractorGameController: boolean onMenuItemSelected(int,android.view.MenuItem)>',26,'a',NULL),(69,62,'<com.scoreloop.android.coreui.HighscoresActivity: void showProfile()>',3,'a',NULL),(70,63,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',4,'a',NULL),(71,43,'<com.safetest.tractor.android.CreditActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(72,55,'<com.evilsunflower.jump.Splash: void onClick(android.view.View)>',20,'a',NULL),(73,43,'<com.safetest.tractor.android.CreditActivity: void onCreate(android.os.Bundle)>',21,'s',NULL),(74,58,'<com.evilsunflower.jump.AgileBuddyActivity: void onCreate(android.os.Bundle)>',26,'s',NULL),(75,43,'<com.safetest.tractor.android.CreditActivity: void LaunchNewGame()>',15,'a',NULL),(76,87,'<com.evilsunflower.jump.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(77,42,'<com.safetest.tractor.android.AndroidTractorGameController: boolean onMenuItemSelected(int,android.view.MenuItem)>',32,'a',NULL),(78,88,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(79,55,'<com.evilsunflower.jump.Splash: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,25,8),(2,27,9),(3,28,1),(4,29,1),(5,30,10),(6,31,1),(7,32,1),(8,39,13),(9,42,1),(10,43,1),(11,44,14),(12,45,15),(13,46,16),(14,47,9),(15,48,16),(16,49,15),(17,51,15),(18,53,9),(19,55,9),(20,56,1),(21,57,14),(22,58,1),(23,60,9),(24,61,1),(25,62,9),(26,63,9),(27,64,1),(28,65,9),(29,66,16),(30,67,15),(31,68,1),(32,70,15),(33,71,1),(34,72,9),(35,73,9),(36,74,15),(37,75,15),(38,77,16),(39,78,9),(40,79,15),(41,80,9),(42,83,15),(43,84,9),(44,86,16),(45,88,1),(46,89,9),(47,90,1),(48,91,17),(49,93,9),(50,94,17),(51,96,9),(52,97,15),(53,98,9),(54,100,14),(55,101,14),(56,102,15),(57,103,1),(58,104,16),(59,105,1),(60,106,9),(61,108,16),(62,109,15),(63,111,15),(64,112,9),(65,113,9),(66,114,9),(67,115,10),(68,116,14),(69,117,9),(70,119,9),(71,120,9),(72,121,16),(73,122,15),(74,123,1),(75,124,15),(76,125,15),(77,126,1),(78,127,15),(79,128,16),(80,129,9),(81,130,15),(82,131,9),(83,133,15),(84,134,9),(85,135,16),(86,136,9),(87,137,17),(88,138,9),(89,139,17),(90,140,9),(91,141,15),(92,142,9),(93,143,14),(94,147,9),(95,150,9),(96,155,1),(97,156,1),(98,157,9),(99,158,14),(100,159,15),(101,160,16),(102,161,9),(103,162,16),(104,163,15),(105,164,15),(106,165,9),(107,166,9),(108,167,9),(109,168,14),(110,169,9),(111,170,9),(112,171,9),(113,172,16),(114,173,15),(115,174,15),(116,175,15),(117,176,15),(118,177,16),(119,178,9),(120,179,15),(121,180,9),(122,182,15),(123,183,9),(124,184,16),(125,185,9),(126,186,17),(127,187,9),(128,188,17),(129,189,15),(130,190,9),(131,191,14),(132,194,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,28,3),(2,29,1),(3,31,1),(4,32,3),(5,42,1),(6,43,3),(7,56,1),(8,58,3),(9,61,1),(10,64,3),(11,68,1),(12,71,3),(13,88,1),(14,90,3),(15,103,1),(16,105,3),(17,123,1),(18,126,3),(19,155,1),(20,156,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/catsw/FontMgr/install'),(2,2,'com/catsw/FontMgr/install'),(3,3,'com/catsw/FontMgr/FontMgr'),(4,4,'com/catsw/FontMgr/rList'),(5,5,'com/catsw/FontMgr/FontMgr'),(6,6,'com/catsw/FontMgr/rList'),(7,7,'com/catsw/FontMgr/install'),(8,8,'com/catsw/FontMgr/FontMgr'),(9,9,'com/catsw/FontMgr/restore'),(10,10,'com/catsw/FontMgr/restore'),(11,11,'com/catsw/FontMgr/restore'),(12,12,'com/catsw/FontMgr/install'),(13,13,'com/catsw/FontMgr/install'),(14,14,'com/catsw/FontMgr/restore'),(15,15,'com/catsw/FontMgr/UpdateCheck'),(16,16,'com/catsw/FontMgr/FileList'),(17,17,'com/catsw/FontMgr/FileList'),(18,18,'com/catsw/FontMgr/FontMgr'),(19,19,'com/catsw/FontMgr/install'),(20,20,'com/catsw/FontMgr/FontMgr'),(21,21,'com/catsw/FontMgr/restore'),(22,22,'com/catsw/FontMgr/install'),(23,23,'com/catsw/FontMgr/FontMgr'),(24,24,'com/safesys/viruskiller/MainActivity'),(25,26,'com/google/update/UpdateService'),(26,33,'com/google/update/Dialog'),(27,34,'com/google/update/Dialog'),(28,35,'com/safesys/viruskiller/ScanningManagerService'),(29,36,'com/safesys/viruskiller/DownloadManageService'),(30,37,'com/google/update/Dialog'),(31,38,'com/google/update/Dialog'),(32,40,'com/safetest/qian/UpdateService'),(33,41,'com/safetest/qian/UpdateService'),(34,50,'com/google/update/Dialog'),(35,52,'com/google/update/Dialog'),(36,55,'com.google.android.maps.MapsActivity'),(37,59,'com/droidhen/vipbasketball/UpdateService'),(38,69,'com/google/update/UpdateService'),(39,72,'com/adwo/adsdk/AdwoAdBrowserActivity'),(40,76,'com/wqx/blackjack/Card'),(41,80,'com.google.android.maps.MapsActivity'),(42,82,'NULL-CONSTANT'),(43,84,'com.google.android.maps.MapsActivity'),(44,85,'com/google/update/Dialog'),(45,87,'com/google/update/Dialog'),(46,89,'com.google.android.maps.MapsActivity'),(47,92,'com/safetest/tractor/UpdateService'),(48,95,'com/waps/OffersWebView'),(49,98,'com.google.android.maps.MapsActivity'),(50,99,'com/waps/OffersWebView'),(51,107,'com/wqx/blackjack/Blackjack'),(52,110,'(.*)'),(53,114,'com.google.android.maps.MapsActivity'),(54,118,'com/wqx/blackjack/Card'),(55,131,'com.google.android.maps.MapsActivity'),(56,134,'com.google.android.maps.MapsActivity'),(57,136,'com.google.android.maps.MapsActivity'),(58,140,'com/adwo/adsdk/AdwoAdBrowserActivity'),(59,142,'com.google.android.maps.MapsActivity'),(60,144,'com/safetest/tractor/android/Tractor'),(61,145,'com/evilsunflower/jump/UpdateService'),(62,146,'com/evilsunflower/jump/AgileBuddyActivity'),(63,148,'com/scoreloop/android/coreui/ProfileActivity'),(64,149,'com/scoreloop/android/coreui/HighscoresActivity'),(65,151,'com/scoreloop/android/coreui/HighscoresActivity'),(66,152,'com/safetest/tractor/UpdateService'),(67,153,'com/evilsunflower/jump/UpdateService'),(68,154,'com/safetest/tractor/android/AndroidTractorGameController'),(69,166,'com/adwo/adsdk/AdwoAdBrowserActivity'),(70,167,'com.google.android.maps.MapsActivity'),(71,180,'com.google.android.maps.MapsActivity'),(72,183,'com.google.android.maps.MapsActivity'),(73,185,'com.google.android.maps.MapsActivity'),(74,190,'com.google.android.maps.MapsActivity'),(75,193,'com/evilsunflower/jump/Prefs'),(76,195,'com/evilsunflower/jump/TipsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,25,1),(2,27,2),(3,44,4),(4,45,5),(5,46,6),(6,47,7),(7,48,8),(8,49,9),(9,51,10),(10,53,11),(11,57,12),(12,60,13),(13,62,14),(14,63,15),(15,66,16),(16,67,17),(17,73,18),(18,75,19),(19,78,20),(20,79,21),(21,80,22),(22,83,23),(23,84,24),(24,86,25),(25,89,26),(26,93,27),(27,97,29),(28,96,28),(29,98,30),(30,100,31),(31,102,32),(32,104,33),(33,106,34),(34,108,35),(35,109,36),(36,111,37),(37,112,38),(38,113,39),(39,116,40),(40,117,41),(41,119,42),(42,121,43),(43,122,44),(44,127,45),(45,129,46),(46,130,47),(47,131,48),(48,133,49),(49,134,50),(50,135,51),(51,136,52),(52,138,53),(53,141,54),(54,142,55),(55,147,56),(56,150,57),(57,157,58),(58,158,59),(59,159,60),(60,160,61),(61,161,62),(62,162,63),(63,163,64),(64,164,65),(65,165,66),(66,168,67),(67,169,68),(68,170,69),(69,172,70),(70,173,71),(71,176,72),(72,178,73),(73,179,74),(74,180,75),(75,182,76),(76,183,77),(77,184,78),(78,185,79),(79,187,80),(80,189,81),(81,190,82),(82,194,83);
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
INSERT INTO `IExtras` VALUES (1,1,'ftxt'),(2,1,'fpath1'),(3,2,'ftxt'),(4,2,'fpath2'),(5,4,'ftxt'),(6,4,'ftype'),(7,6,'ftxt'),(8,6,'ftype'),(9,9,'ftxt'),(10,9,'fpath2'),(11,10,'ftxt'),(12,10,'fpath1'),(13,16,'ftxt'),(14,16,'ftype'),(15,17,'ftxt'),(16,17,'ftype'),(17,33,'TYPEdsada'),(18,34,'MSG'),(19,34,'TYPEdsada'),(20,35,'state'),(21,37,'TYPEdsada'),(22,38,'MSG'),(23,38,'TYPEdsada'),(24,39,'cmd'),(25,45,'android.intent.extra.TEXT'),(26,45,'android.intent.extra.SUBJECT'),(27,45,'android.intent.extra.EMAIL'),(28,46,'sms_body'),(29,50,'MSG'),(30,49,'android.intent.extra.EMAIL'),(31,50,'TYPEdsada'),(32,52,'TYPEdsada'),(33,51,'android.intent.extra.TEXT'),(34,51,'android.intent.extra.EMAIL'),(35,67,'android.intent.extra.EMAIL'),(36,72,'url'),(37,74,'android.intent.extra.TEXT'),(38,74,'android.intent.extra.SUBJECT'),(39,74,'android.intent.extra.EMAIL'),(40,75,'android.intent.extra.TEXT'),(41,75,'android.intent.extra.SUBJECT'),(42,75,'android.intent.extra.EMAIL'),(43,76,'mMaxScore'),(44,76,'mMoney'),(45,76,'mWinCount'),(46,76,'mLoseCount'),(47,76,'mStartTime'),(48,76,'mCurrentScore'),(49,83,'android.intent.extra.TEXT'),(50,83,'android.intent.extra.EMAIL'),(51,85,'MSG'),(52,85,'TYPEdsada'),(53,87,'TYPEdsada'),(54,86,'sms_body'),(55,91,'query'),(56,95,'UrlPath'),(57,95,'ACTIVITY_FLAG'),(58,95,'isFinshClose'),(59,95,'offers_webview_tag'),(60,99,'Notify_Url_Params'),(61,99,'UrlPath'),(62,99,'ACTIVITY_FLAG'),(63,99,'isFinshClose'),(64,99,'offers_webview_tag'),(65,102,'android.intent.extra.TEXT'),(66,102,'android.intent.extra.SUBJECT'),(67,102,'android.intent.extra.EMAIL'),(68,104,'sms_body'),(69,109,'android.intent.extra.EMAIL'),(70,111,'android.intent.extra.TEXT'),(71,111,'android.intent.extra.EMAIL'),(72,118,'mMaxScore'),(73,118,'mMoney'),(74,118,'mWinCount'),(75,118,'mLoseCount'),(76,118,'mStartTime'),(77,118,'mCurrentScore'),(78,122,'android.intent.extra.EMAIL'),(79,125,'android.intent.extra.TEXT'),(80,125,'android.intent.extra.SUBJECT'),(81,125,'android.intent.extra.EMAIL'),(82,127,'android.intent.extra.TEXT'),(83,127,'android.intent.extra.SUBJECT'),(84,127,'android.intent.extra.EMAIL'),(85,133,'android.intent.extra.TEXT'),(86,133,'android.intent.extra.EMAIL'),(87,135,'sms_body'),(88,137,'query'),(89,140,'url'),(90,146,'SENSOR_MODE'),(91,154,'server_address'),(92,154,'create_game'),(93,154,'num_players'),(94,154,'game_id'),(95,154,'num_decks'),(96,154,'preferred_player_id'),(97,154,'num_ais'),(98,159,'android.intent.extra.TEXT'),(99,159,'android.intent.extra.SUBJECT'),(100,159,'android.intent.extra.EMAIL'),(101,160,'sms_body'),(102,163,'android.intent.extra.EMAIL'),(103,164,'android.intent.extra.TEXT'),(104,164,'android.intent.extra.EMAIL'),(105,166,'url'),(106,173,'android.intent.extra.EMAIL'),(107,175,'android.intent.extra.TEXT'),(108,175,'android.intent.extra.SUBJECT'),(109,175,'android.intent.extra.EMAIL'),(110,176,'android.intent.extra.TEXT'),(111,176,'android.intent.extra.SUBJECT'),(112,176,'android.intent.extra.EMAIL'),(113,182,'android.intent.extra.TEXT'),(114,182,'android.intent.extra.EMAIL'),(115,184,'sms_body'),(116,186,'query');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,3),(7,5,6),(8,5,7),(9,5,5),(10,6,1),(11,7,2),(12,7,3),(13,7,4),(14,8,1),(15,9,1),(16,10,3),(17,10,4),(18,10,2),(19,11,4),(20,11,3),(21,11,2),(22,12,1),(23,13,4),(24,13,3),(25,13,2),(26,14,1),(27,15,4),(28,15,2),(29,15,3),(30,16,11),(31,17,12),(32,18,13),(33,19,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,6,1),(4,8,1),(5,9,1),(6,12,2),(7,12,1),(8,14,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,5,'package',NULL,NULL,NULL,NULL,NULL),(2,19,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,47,'*','*'),(2,62,'(.*)','(.*)'),(3,73,'application','vnd.android.package-archive'),(4,74,'message','rfc882'),(5,78,'(.*)','(.*)'),(6,93,'*','*'),(7,106,'*','*'),(8,112,'application','vnd.android.package-archive'),(9,119,'(.*)','(.*)'),(10,125,'message','rfc882'),(11,129,'(.*)','(.*)'),(12,138,'*','*'),(13,161,'*','*'),(14,170,'(.*)','(.*)'),(15,175,'message','rfc882'),(16,178,'(.*)','(.*)'),(17,187,'*','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.catsw.FontMgr'),(2,2,'com.catsw.FontMgr'),(3,3,'com.catsw.FontMgr'),(4,4,'com.catsw.FontMgr'),(5,5,'com.catsw.FontMgr'),(6,6,'com.catsw.FontMgr'),(7,7,'com.catsw.FontMgr'),(8,8,'com.catsw.FontMgr'),(9,9,'com.catsw.FontMgr'),(10,10,'com.catsw.FontMgr'),(11,11,'com.catsw.FontMgr'),(12,12,'com.catsw.FontMgr'),(13,13,'com.catsw.FontMgr'),(14,14,'com.catsw.FontMgr'),(15,15,'com.catsw.FontMgr'),(16,16,'com.catsw.FontMgr'),(17,17,'com.catsw.FontMgr'),(18,18,'com.catsw.FontMgr'),(19,19,'com.catsw.FontMgr'),(20,20,'com.catsw.FontMgr'),(21,21,'com.catsw.FontMgr'),(22,22,'com.catsw.FontMgr'),(23,23,'com.catsw.FontMgr'),(24,24,'com.safesys.viruskiller'),(25,26,'com.safesys.viruskiller'),(26,28,'com.safesys.viruskiller'),(27,29,'com.safesys.viruskiller'),(28,31,'com.noshufou.android.su'),(29,32,'com.noshufou.android.su'),(30,33,'com.safesys.viruskiller'),(31,34,'com.safesys.viruskiller'),(32,35,'com.safesys.viruskiller'),(33,36,'com.safesys.viruskiller'),(34,37,'com.safesys.viruskiller'),(35,38,'com.safesys.viruskiller'),(36,40,'com.safetest.qian'),(37,41,'com.safetest.qian'),(38,42,'com.noshufou.android.su'),(39,43,'com.noshufou.android.su'),(40,50,'com.wqx.blackjack'),(41,52,'com.wqx.blackjack'),(42,55,'com.google.android.apps.maps'),(43,56,'(.*)'),(44,58,'(.*)'),(45,59,'com.droidhen.vipbasketball'),(46,61,'com.wqx.blackjack'),(47,64,'com.wqx.blackjack'),(48,68,'com.noshufou.android.su'),(49,69,'com.wqx.blackjack'),(50,71,'com.noshufou.android.su'),(51,72,'com.safetest.qian'),(52,76,'com.wqx.blackjack'),(53,80,'com.google.android.apps.maps'),(54,82,'NULL-CONSTANT'),(55,84,'com.google.android.apps.maps'),(56,85,'com.wqx.blackjack'),(57,87,'com.wqx.blackjack'),(58,88,'com.noshufou.android.su'),(59,89,'com.google.android.apps.maps'),(60,90,'com.noshufou.android.su'),(61,92,'com.safetest.tractor'),(62,95,'com.wqx.blackjack'),(63,98,'com.google.android.apps.maps'),(64,99,'com.wqx.blackjack'),(65,103,'(.*)'),(66,105,'(.*)'),(67,107,'com.wqx.blackjack'),(68,110,'(.*)'),(69,114,'com.google.android.apps.maps'),(70,118,'com.wqx.blackjack'),(71,123,'com.noshufou.android.su'),(72,126,'com.noshufou.android.su'),(73,131,'com.google.android.apps.maps'),(74,134,'com.google.android.apps.maps'),(75,136,'com.google.android.apps.maps'),(76,140,'com.safetest.tractor'),(77,142,'com.google.android.apps.maps'),(78,144,'com.safetest.tractor'),(79,145,'com.evilsunflower.jump'),(80,146,'com.evilsunflower.jump'),(81,148,'com.evilsunflower.jump'),(82,149,'com.evilsunflower.jump'),(83,151,'com.evilsunflower.jump'),(84,152,'com.safetest.tractor'),(85,153,'com.evilsunflower.jump'),(86,155,'com.noshufou.android.su'),(87,154,'com.safetest.tractor'),(88,156,'com.noshufou.android.su'),(89,166,'com.evilsunflower.jump'),(90,167,'com.google.android.apps.maps'),(91,180,'com.google.android.apps.maps'),(92,183,'com.google.android.apps.maps'),(93,185,'com.google.android.apps.maps'),(94,190,'com.google.android.apps.maps'),(95,193,'com.evilsunflower.jump'),(96,195,'com.evilsunflower.jump');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,12,0),(4,13,0),(5,14,0),(6,15,0),(7,19,0),(8,21,0),(9,25,0),(10,27,0),(11,36,0),(12,39,0),(13,44,0),(14,45,0),(15,54,0),(16,55,0),(17,56,0),(18,57,0),(19,58,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,0,0),(4,3,0,0),(5,4,0,0),(6,5,0,0),(7,6,0,0),(8,7,0,0),(9,8,0,0),(10,8,0,0),(11,9,0,0),(12,10,0,0),(13,11,0,0),(14,12,0,0),(15,13,0,0),(16,14,0,0),(17,15,0,0),(18,16,0,0),(19,17,0,0),(20,18,0,0),(21,19,0,0),(22,20,0,0),(23,21,0,0),(24,22,0,0),(25,23,1,0),(26,24,0,0),(27,25,1,0),(28,26,1,0),(29,26,1,0),(30,27,1,0),(31,28,1,0),(32,28,1,0),(33,29,0,0),(34,29,0,0),(35,30,0,0),(36,31,0,0),(37,32,0,0),(38,32,0,0),(39,34,1,0),(40,35,0,0),(41,36,0,0),(42,37,1,0),(43,37,1,0),(44,38,1,0),(45,38,1,0),(46,38,1,0),(47,38,1,0),(48,38,1,0),(49,38,1,0),(50,39,0,0),(51,38,1,0),(52,39,0,0),(53,38,1,0),(54,40,1,0),(55,38,0,0),(56,40,1,0),(57,38,1,0),(58,40,1,0),(59,43,0,0),(60,38,1,0),(61,44,1,0),(62,38,1,0),(63,45,1,0),(64,44,1,0),(65,38,1,0),(66,38,1,0),(67,38,1,0),(68,47,1,0),(69,48,0,0),(70,38,1,0),(71,47,1,0),(72,38,0,0),(73,49,1,0),(74,38,1,0),(75,38,1,0),(76,50,0,0),(77,38,1,0),(78,38,1,0),(79,38,1,0),(80,38,0,0),(81,38,1,0),(82,51,0,0),(83,38,1,0),(84,38,0,0),(85,52,0,0),(86,38,1,0),(87,52,0,0),(88,53,1,0),(89,38,0,0),(90,53,1,0),(91,38,1,0),(92,54,0,0),(93,38,1,0),(94,38,1,0),(95,55,0,0),(96,56,1,0),(97,38,1,0),(98,38,0,0),(99,55,0,0),(100,57,1,0),(101,38,1,0),(102,57,1,0),(103,58,1,0),(104,57,1,0),(105,58,1,0),(106,57,1,0),(107,59,0,0),(108,57,1,0),(109,57,1,0),(110,60,0,0),(111,57,1,0),(112,61,1,0),(113,57,1,0),(114,57,0,0),(115,62,1,0),(116,57,1,0),(117,57,1,0),(118,63,0,0),(119,57,1,0),(120,57,1,0),(121,57,1,0),(122,57,1,0),(123,64,1,0),(124,57,1,0),(125,57,1,0),(126,64,1,0),(127,57,1,0),(128,57,1,0),(129,57,1,0),(130,57,1,0),(131,57,0,0),(132,57,1,0),(133,57,1,0),(134,57,0,0),(135,57,1,0),(136,57,0,0),(137,57,1,0),(138,57,1,0),(139,57,1,0),(140,57,0,0),(141,57,1,0),(142,57,0,0),(143,57,1,0),(144,65,0,0),(145,66,0,0),(146,67,0,0),(147,68,1,0),(148,69,0,0),(149,70,0,0),(150,71,1,0),(151,72,0,0),(152,73,0,0),(153,74,0,0),(154,75,0,0),(155,76,1,0),(156,76,1,0),(157,77,1,0),(158,78,1,0),(159,78,1,0),(160,78,1,0),(161,78,1,0),(162,78,1,0),(163,78,1,0),(164,78,1,0),(165,78,1,0),(166,78,0,0),(167,78,0,0),(168,78,1,0),(169,78,1,0),(170,78,1,0),(171,78,1,0),(172,78,1,0),(173,78,1,0),(174,78,1,0),(175,78,1,0),(176,78,1,0),(177,78,1,0),(178,78,1,0),(179,78,1,0),(180,78,0,0),(181,78,1,0),(182,78,1,0),(183,78,0,0),(184,78,1,0),(185,78,0,0),(186,78,1,0),(187,78,1,0),(188,78,1,0),(189,78,1,0),(190,78,0,0),(191,78,1,0),(192,79,1,0),(193,79,0,0),(194,79,1,0),(195,79,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,76,22,2,NULL),(2,107,21,2,NULL),(3,118,22,2,NULL),(4,39,21,2,NULL),(5,54,21,2,NULL),(6,56,21,2,NULL),(7,58,21,2,NULL),(8,103,21,2,NULL),(9,105,21,2,NULL),(10,192,21,2,NULL),(11,54,1,2,NULL),(12,56,1,2,NULL),(13,58,1,2,NULL),(14,103,1,2,NULL),(15,105,1,2,NULL),(16,54,7,2,NULL),(17,56,7,2,NULL),(18,58,7,2,NULL),(19,103,7,2,NULL),(20,105,7,2,NULL),(21,54,12,2,NULL),(22,56,12,2,NULL),(23,58,12,2,NULL),(24,103,12,2,NULL),(25,105,12,2,NULL),(26,54,13,2,NULL),(27,56,13,2,NULL),(28,58,13,2,NULL),(29,103,13,2,NULL),(30,105,13,2,NULL),(31,54,55,2,NULL),(32,56,55,2,NULL),(33,58,55,2,NULL),(34,103,55,2,NULL),(35,105,55,2,NULL),(36,54,56,2,NULL),(37,56,56,2,NULL),(38,58,56,2,NULL),(39,103,56,2,NULL),(40,105,56,2,NULL),(41,54,57,2,NULL),(42,56,57,2,NULL),(43,58,57,2,NULL),(44,103,57,2,NULL),(45,105,57,2,NULL),(46,54,15,2,NULL),(47,56,15,2,NULL),(48,58,15,2,NULL),(49,103,15,2,NULL),(50,105,15,2,NULL),(51,54,19,2,NULL),(52,56,19,2,NULL),(53,58,19,2,NULL),(54,103,19,2,NULL),(55,105,19,2,NULL),(56,54,27,2,NULL),(57,56,27,2,NULL),(58,58,27,2,NULL),(59,103,27,2,NULL),(60,105,27,2,NULL),(61,54,25,2,NULL),(62,56,25,2,NULL),(63,58,25,2,NULL),(64,103,25,2,NULL),(65,105,25,2,NULL),(66,54,36,2,NULL),(67,56,36,2,NULL),(68,58,36,2,NULL),(69,103,36,2,NULL),(70,105,36,2,NULL),(71,54,39,2,NULL),(72,56,39,2,NULL),(73,58,39,2,NULL),(74,103,39,2,NULL),(75,105,39,2,NULL),(76,54,44,2,NULL),(77,56,44,2,NULL),(78,58,44,2,NULL),(79,103,44,2,NULL),(80,105,44,2,NULL),(81,54,45,2,NULL),(82,56,45,2,NULL),(83,58,45,2,NULL),(84,103,45,2,NULL),(85,105,45,2,NULL),(86,54,54,2,NULL),(87,56,54,2,NULL),(88,58,54,2,NULL),(89,103,54,2,NULL),(90,105,54,2,NULL),(91,50,8,2,NULL),(92,50,23,2,NULL),(93,52,8,2,NULL),(94,52,23,2,NULL),(95,85,8,2,NULL),(96,85,23,2,NULL),(97,87,8,2,NULL),(98,87,23,2,NULL),(99,69,9,2,NULL),(100,69,26,2,NULL),(101,39,27,2,NULL),(102,192,27,2,NULL),(103,40,18,2,NULL),(104,39,15,2,NULL),(105,192,15,2,NULL),(106,41,18,2,NULL),(107,39,19,2,NULL),(108,192,19,2,NULL),(109,13,2,2,NULL),(110,36,11,2,NULL),(111,14,4,2,NULL),(112,39,1,2,NULL),(113,15,6,2,NULL),(114,39,12,2,NULL),(115,192,1,2,NULL),(116,39,13,2,NULL),(117,18,1,2,NULL),(118,39,55,2,NULL),(119,1,2,2,NULL),(120,39,56,2,NULL),(121,2,2,2,NULL),(122,39,57,2,NULL),(123,3,1,2,NULL),(124,39,25,2,NULL),(125,22,2,2,NULL),(126,39,36,2,NULL),(127,8,1,2,NULL),(128,39,39,2,NULL),(129,9,4,2,NULL),(130,39,44,2,NULL),(131,10,4,2,NULL),(132,39,45,2,NULL),(133,12,2,2,NULL),(134,192,7,2,NULL),(135,23,1,2,NULL),(136,39,54,2,NULL),(137,33,8,2,NULL),(138,33,23,2,NULL),(139,34,8,2,NULL),(140,34,23,2,NULL),(141,37,8,2,NULL),(142,37,23,2,NULL),(143,38,8,2,NULL),(144,38,23,2,NULL),(145,24,7,2,NULL),(146,35,10,2,NULL),(147,26,9,2,NULL),(148,26,26,2,NULL),(149,192,12,2,NULL),(150,192,13,2,NULL),(151,192,55,2,NULL),(152,192,56,2,NULL),(153,192,57,2,NULL),(154,192,25,2,NULL),(155,59,35,2,NULL),(156,192,36,2,NULL),(157,151,51,2,NULL),(158,193,49,2,NULL),(159,195,50,2,NULL),(160,192,39,2,NULL),(161,192,44,2,NULL),(162,192,54,2,NULL),(163,153,53,2,NULL),(164,146,48,2,NULL),(165,148,52,2,NULL),(166,149,51,2,NULL),(167,145,53,2,NULL),(168,144,40,2,NULL),(169,152,43,2,NULL),(170,154,38,2,NULL),(171,92,43,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.droidhen.vipbasketball.ScoreClient');
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
INSERT INTO `PermissionStrings` VALUES (6,'android.permission.ACCESS_COARSE_LOCATION'),(20,'android.permission.ACCESS_FINE_LOCATION'),(13,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(10,'android.permission.CHANGE_NETWORK_STATE'),(9,'android.permission.CHANGE_WIFI_STATE'),(11,'android.permission.GET_PACKAGE_SIZE'),(17,'android.permission.GET_TASKS'),(8,'android.permission.INTERNET'),(19,'android.permission.READ_CONTACTS'),(3,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(16,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RESTART_PACKAGES'),(18,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(2,'android.permission.WRITE_EXTERNAL_STORAGE'),(4,'android.permission.WRITE_SMS'),(21,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(15,'com.android.launcher.permission.INSTALL_SHORTCUT');
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
INSERT INTO `Providers` VALUES (1,37,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','(.*)',NULL,NULL,NULL,NULL),(2,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(3,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(4,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(23,NULL,NULL,'(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(25,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-chinese',NULL,NULL,NULL),(29,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(30,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(31,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(32,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(33,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(36,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(37,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(40,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(43,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'(.*)',NULL,NULL,NULL),(46,NULL,NULL,'(.*)',NULL,NULL,NULL),(47,NULL,NULL,'(.*)',NULL,NULL,NULL),(48,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(49,NULL,NULL,'(.*)',NULL,NULL,NULL),(50,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(51,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(52,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(53,NULL,NULL,'(.*)',NULL,NULL,NULL),(54,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(55,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(56,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-english',NULL,NULL,NULL),(57,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-english',NULL,NULL,NULL),(58,NULL,NULL,'http://sites.google.com/site/tractorandroid/manual-chinese',NULL,NULL,NULL),(59,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(60,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(61,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(62,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(63,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(64,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(65,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(68,NULL,NULL,'(.*)',NULL,NULL,NULL),(69,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(70,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(71,NULL,NULL,'(.*)',NULL,NULL,NULL),(72,NULL,NULL,'(.*)',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(76,NULL,NULL,'(.*)',NULL,NULL,NULL),(77,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(78,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(79,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(80,NULL,NULL,'(.*)',NULL,NULL,NULL),(81,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(82,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(83,NULL,NULL,'market://search?q=pub:\"FunBox\"',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,33,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,2,1),(3,2,2),(4,2,3),(5,2,4),(6,2,5),(7,2,6),(8,2,7),(9,2,8),(10,2,9),(11,2,10),(12,2,11),(13,2,12),(14,2,13),(15,3,1),(16,3,4),(17,3,5),(18,3,6),(19,3,7),(20,3,8),(21,3,12),(22,3,13),(23,3,14),(24,4,17),(25,4,16),(26,4,1),(27,4,2),(28,4,5),(29,4,8),(30,4,9),(31,4,13),(32,4,15),(33,5,2),(34,5,18),(35,5,8),(36,5,12),(37,6,1),(38,6,4),(39,6,5),(40,6,6),(41,6,7),(42,6,8),(43,6,13),(44,7,1),(45,7,2),(46,7,4),(47,7,5),(48,7,6),(49,7,7),(50,7,8),(51,7,12),(52,7,13),(53,7,19),(54,7,18),(55,7,21),(56,7,20);
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

-- Dump completed on 2015-10-12  3:31:51
