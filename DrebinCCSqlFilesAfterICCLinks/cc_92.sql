-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_92
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(12,'DownloadManageServicer.ACTION_CONTROL'),(15,'DownloadManageServicer.ACTION_UPDATE'),(24,'android.bluetooth.adapter.action.STATE_CHANGED'),(19,'android.intent.action.AIRPLANE_MODE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(13,'android.intent.action.DELETE'),(10,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PACKAGE_ADDED'),(6,'android.intent.action.PACKAGE_REMOVED'),(7,'android.intent.action.PACKAGE_REPLACED'),(8,'android.intent.action.PHONE_STATE'),(27,'android.intent.action.RINGTONE_PICKER'),(2,'android.intent.action.SIG_STR'),(9,'android.intent.action.VIEW'),(17,'android.media.RINGER_MODE_CHANGED'),(26,'android.net.wifi.STATE_CHANGE'),(18,'android.net.wifi.WIFI_AP_STATE_CHANGED'),(31,'android.net.wifi.WIFI_STATE_CHANGED'),(28,'android.settings.AIRPLANE_MODE_SETTINGS'),(29,'android.settings.BLUETOOTH_SETTINGS'),(23,'android.settings.DISPLAY_SETTINGS'),(25,'android.settings.LOCATION_SOURCE_SETTINGS'),(20,'android.settings.SOUND_SETTINGS'),(21,'android.settings.SYNC_SETTINGS'),(22,'android.settings.WIFI_SETTINGS'),(30,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(32,'org.openintents.action.PICK_FILE'),(11,'ru.atools.sytrant.SyncService'),(14,'uiupdate');
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
INSERT INTO `Applications` VALUES (1,'com.safesys.viruskiller',33),(2,'ru.atools.sytrant',5),(3,'com.allen.cc',10),(4,'com.phone.setup.mobile',4),(5,'com.info.eraser.glance',1),(6,'com.gp.lights',7),(7,'com.ps.wordsearch.view',1);
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
INSERT INTO `CategoryStrings` VALUES (4,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.safesys.viruskiller.MainActivity'),(2,1,'com.safesys.viruskiller.ShowTips'),(3,1,'com.safesys.viruskiller.UpdateService'),(4,1,'com.safesys.viruskiller.ScanningManagerService'),(5,1,'com.safesys.viruskiller.DownloadManageService'),(6,2,'ru.atools.sytrant.Sytrant'),(7,1,'com.safesys.viruskiller.Receiver'),(8,2,'ru.atools.sytrant.About'),(9,1,'com.safesys.viruskiller.ScanningReciever'),(10,2,'ru.atools.sytrant.Settings'),(11,2,'ru.atools.sytrant.SyncService'),(12,1,'com.safesys.viruskiller.ScanPackageBroadcast'),(13,2,'ru.atools.sytrant.UpdateCheck'),(14,2,'ru.atools.sytrant.BootUpReceiver'),(15,3,'com.waps.OffersWebView'),(16,3,'com.allen.cc.portal.MainTabActivity'),(17,3,'com.allen.sms.save.SmsListActivity'),(18,3,'com.allen.sms.save.HelpActivity'),(19,3,'com.allen.cc.contact.IncomingContactList'),(20,3,'com.allen.cc.contact.OutgoingContactList'),(21,4,'com.phone.setup.mobile.QuickSettings'),(22,3,'com.allen.cc.contact.MissedContactList'),(23,3,'com.allen.cc.contact.TotalDisplay'),(24,3,'com.allen.cc.portal.Settings'),(25,4,'com.google.ads.AdActivity'),(26,3,'net.youmi.android.AdActivity'),(27,4,'com.phone.setup.mobile.Setting'),(28,5,'com.info.eraser.glance.main'),(29,3,'com.google.update.Dialog'),(30,4,'com.phone.setup.mobile.strategy.service.CelebrateService'),(31,3,'com.google.update.UpdateService'),(32,5,'com.google.ads.AdActivity'),(33,4,'com.phone.setup.mobile.Receiver'),(34,3,'com.google.update.Receiver'),(35,5,'com.info.eraser.glance.strategy.service.CelebrateService'),(36,5,'com.info.eraser.glance.strategy.core.RebirthReceiver'),(37,4,'com.phone.setup.mobile.strategy.core.RebirthReceiver'),(38,6,'com.gp.lights.ALuces'),(39,7,'com.ps.wordsearch.view.WordSearchActivity'),(40,6,'com.gp.lights.AJuego'),(41,6,'com.gp.lights.AHelp'),(42,6,'com.gp.lights.AScores'),(43,7,'com.ps.wordsearch.view.CrashActivity'),(44,6,'cn.domob.android.ads.DomobActivity'),(45,7,'com.ps.wordsearch.view.WordListActivity'),(46,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(47,7,'com.ps.wordsearch.view.TutorialActivity'),(48,7,'com.ps.wordsearch.view.WordSearchPreferences'),(49,7,'com.google.update.Dialog'),(50,7,'cn.domob.android.ads.DomobActivity'),(51,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,7,'com.ps.wordsearch.view.IOService'),(53,7,'com.google.update.UpdateService'),(54,7,'com.google.update.Receiver'),(55,7,'com.ps.wordsearch.view.WordDictionaryProvider'),(56,1,'com.safesys.viruskiller.DownloadManageService$CommandReceiver'),(57,1,'com.safesys.viruskiller.MainActivity$UIReceiver'),(58,1,'com.safesys.viruskiller.MainActivity$UpdateReceiver'),(59,1,'com.ju6.a'),(60,1,'com.safesys.viruskiller.MainActivity$2'),(61,1,'com.safesys.viruskiller.ShowTips$1'),(62,5,'com.info.common.TaskHandler'),(63,5,'com.info.eraser.glance.strategy.service.Tools'),(64,4,'com.phone.setup.mobile.NetworkStateReceiver'),(65,4,'com.phone.setup.mobile.strategy.service.Tools'),(66,3,'com.allen.cc.contact.base.BaseContactList'),(67,3,'com.google.update.UpdateService$MyThread'),(68,3,'com.google.update.Dialog$2'),(69,3,'com.ju6.a'),(70,3,'com.waps.m'),(71,3,'com.google.update.Dialog$1'),(72,6,'com.gp.lights.ALuces$3'),(73,3,'com.waps.k'),(74,3,'com.allen.sms.save.dao.SmsDao'),(75,6,'cn.domob.android.ads.e'),(76,6,'com.gp.lights.ALuces$2'),(77,3,'com.waps.AppConnect'),(78,6,'cn.domob.android.ads.o'),(79,6,'cn.domob.android.ads.o$5'),(80,6,'cn.domob.android.a.a$a'),(81,6,'cn.domob.android.ads.DomobAdManager'),(82,6,'com.gp.lights.ALuces$4'),(83,6,'cn.domob.android.ads.g$1'),(84,7,'com.ps.wordsearch.view.WordListActivity$1'),(85,7,'cn.domob.android.ads.i'),(86,7,'com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener'),(87,7,'com.ps.wordsearch.view.WordListActivity$ExportListener'),(88,7,'cn.domob.android.ads.i$6'),(89,7,'com.ps.wordsearch.view.WordListActivity$ImportListener'),(90,7,'com.google.update.Dialog$1'),(91,7,'com.google.update.UpdateService$MyThread'),(92,7,'com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener'),(93,7,'com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener'),(94,7,'com.ps.wordsearch.model.dictionary.DictionaryCustomProvider'),(95,7,'com.google.update.Dialog$2'),(96,7,'cn.domob.android.ads.DomobActionReceiver'),(97,7,'com.ju6.a'),(98,7,'cn.domob.android.ads.DomobAdEngine$2'),(99,7,'cn.domob.android.ads.DomobAdManager');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'MYAD_PID'),(2,3,'SAFE_PID'),(3,4,'notification_record'),(4,4,'state'),(5,3,'SAFE_START'),(6,2,'MM'),(7,35,'filename4'),(8,32,'params'),(9,32,'com.google.ads.AdOpener'),(10,35,'url4'),(11,32,'action'),(12,35,'Title4'),(13,35,'PackageName4'),(14,35,'Description4'),(15,30,'url4'),(16,30,'filename4'),(17,21,'android.intent.extra.ringtone.PICKED_URI'),(18,29,'MSG'),(19,25,'params'),(20,30,'Title4'),(21,15,'isFinshClose'),(22,15,'Offers_URL'),(23,25,'com.google.ads.AdOpener'),(24,15,'CLIENT_PACKAGE'),(25,29,'TYPEdsada'),(26,46,'url'),(27,15,'URL'),(28,46,'overlayTitle'),(29,46,'shouldMakeOverlayTransparent'),(30,30,'PackageName4'),(31,15,'URL_PARAMS'),(32,25,'action'),(33,30,'Description4'),(34,16,'WAPS_PID'),(35,46,'shouldResizeOverlay'),(36,40,'DOMOB_TEST_MODE'),(37,46,'DOMOB_TEST_MODE'),(38,15,'USER_ID'),(39,26,'A7D1721B9508405D8271AB82AC6D9B3C'),(40,16,'DEVICE_ID'),(41,31,'ST_MY_PID'),(42,16,'CLIENT_PACKAGE'),(43,16,'APP_ID'),(44,31,'ST_START_DELAY'),(45,16,'WAPS_ID'),(46,46,'overlayTransition'),(47,46,'shouldShowBottomBar'),(48,40,'DOMOB_PID'),(49,46,'DOMOB_PID'),(50,46,'shouldShowTitlebar'),(51,44,'appName'),(52,46,'shouldEnableBottomBar'),(53,46,'transitionTime'),(54,44,'appId'),(55,44,'actType'),(56,40,'DOMOB_ALLOW_LOCATION'),(57,46,'DOMOB_ALLOW_LOCATION'),(58,39,'ws_high_score'),(59,39,'KEY_WORDLIST_COUNT'),(60,39,'KEY_SIZE'),(61,50,'actType'),(62,39,'ws_time'),(63,39,'ws_grid'),(64,53,'DOMOB_ALLOW_LOCATION'),(65,52,'DOMOB_ALLOW_LOCATION'),(66,51,'DOMOB_ALLOW_LOCATION'),(67,39,'KEY_GLOBAL_RANK'),(68,51,'url'),(69,39,'KEY_THEME'),(70,51,'overlayTitle'),(71,51,'shouldShowTitlebar'),(72,50,'appId'),(73,53,'DOMOB_TEST_MODE'),(74,52,'DOMOB_TEST_MODE'),(75,51,'DOMOB_TEST_MODE'),(76,49,'MSG'),(77,51,'shouldMakeOverlayTransparent'),(78,51,'transitionTime'),(79,51,'shouldShowBottomBar'),(80,49,'TYPEdsada'),(81,50,'appName'),(82,51,'overlayTransition'),(83,51,'shouldEnableBottomBar'),(84,51,'shouldResizeOverlay'),(85,39,'KEY_TIME'),(86,39,'KEY_GLOBAL_HIGH_SCORE'),(87,39,'KEY_HIGH_SCORE'),(88,53,'ST_START_DELAY'),(89,39,'KEY_NAME'),(90,53,'ST_MY_PID'),(91,39,'KEY_RANK'),(92,53,'DOMOB_PID'),(93,52,'DOMOB_PID'),(94,51,'DOMOB_PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'s',0,NULL,NULL),(4,4,'s',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'r',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'r',1,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,13,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'r',1,NULL,NULL),(38,38,'a',1,NULL,NULL),(39,39,'a',1,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',1,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',1,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'s',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'r',1,NULL,NULL),(55,55,'p',0,NULL,NULL),(56,56,'r',1,NULL,NULL),(57,57,'r',1,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,64,'r',1,NULL,NULL),(60,70,'r',1,NULL,NULL),(61,75,'r',1,NULL,NULL),(62,96,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,6),(2,2,6),(3,3,6),(4,4,1),(5,4,9),(6,5,6),(7,6,14),(8,7,1),(9,8,1),(10,9,7),(11,10,3),(12,11,1),(13,12,1),(14,13,2),(15,14,4),(16,15,28),(17,16,28),(18,17,28),(19,18,36),(20,19,32),(21,20,28),(22,21,28),(23,22,35),(24,23,21),(25,24,37),(26,25,30),(27,26,21),(28,27,21),(29,28,21),(30,29,21),(31,30,21),(32,31,16),(33,32,21),(34,33,31),(35,34,21),(36,35,21),(37,36,22),(38,36,20),(39,36,19),(40,37,23),(41,38,21),(42,39,31),(43,40,21),(44,41,31),(45,42,25),(46,43,16),(47,44,34),(48,45,21),(49,46,21),(50,47,29),(51,48,38),(52,49,31),(53,50,21),(54,51,29),(55,52,38),(56,53,15),(57,54,17),(58,55,17),(59,56,38),(60,57,16),(61,58,40),(62,58,46),(63,59,46),(64,59,40),(65,60,46),(66,60,40),(67,61,46),(68,61,40),(69,62,38),(70,63,40),(71,63,46),(72,64,53),(73,65,45),(74,66,51),(75,66,52),(76,66,53),(77,67,45),(78,68,39),(79,69,39),(80,70,45),(81,71,51),(82,71,53),(83,71,52),(84,72,39),(85,73,45),(86,74,49),(87,75,53),(88,76,39),(89,77,39),(90,78,45),(91,79,54),(92,80,39),(93,81,55),(94,82,55),(95,83,45),(96,84,39),(97,85,49),(98,86,39),(99,87,45),(100,88,39),(101,89,53),(102,90,55),(103,91,45),(104,92,39),(105,93,53),(106,93,52),(107,93,51),(108,94,53),(109,95,51),(110,95,53),(111,95,52),(112,96,45);
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
INSERT INTO `ExitPoints` VALUES (1,6,'<ru.atools.sytrant.Sytrant: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(2,6,'<ru.atools.sytrant.Sytrant: void onCreate(android.os.Bundle)>',35,'s',NULL),(3,6,'<ru.atools.sytrant.Sytrant: void initUI()>',25,'s',0),(4,4,'<com.safesys.viruskiller.ScanningManagerService: void beginStartingService(android.content.Context,android.content.Intent)>',3,'s',NULL),(5,6,'<ru.atools.sytrant.Sytrant: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(6,14,'<ru.atools.sytrant.BootUpReceiver: void onReceive(android.content.Context,android.content.Intent)>',18,'s',NULL),(7,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',284,'r',NULL),(8,1,'<com.safesys.viruskiller.MainActivity: void onClick(android.view.View)>',148,'a',NULL),(9,7,'<com.safesys.viruskiller.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(10,59,'<com.ju6.a: boolean b()>',178,'p',NULL),(11,1,'<com.safesys.viruskiller.MainActivity: void onCreate(android.os.Bundle)>',256,'s',NULL),(12,60,'<com.safesys.viruskiller.MainActivity$2: void onClick(android.view.View)>',79,'a',NULL),(13,61,'<com.safesys.viruskiller.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(14,4,'<com.safesys.viruskiller.ScanningManagerService: void onStart(android.content.Intent,int)>',29,'a',NULL),(15,28,'<com.info.eraser.glance.main: void onCreate(android.os.Bundle)>',6,'s',NULL),(16,62,'<com.info.common.TaskHandler: int deleteAllSms()>',4,'p',NULL),(17,62,'<com.info.common.TaskHandler: int deleteAllContacts()>',3,'p',NULL),(18,36,'<com.info.eraser.glance.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(19,32,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(20,62,'<com.info.common.TaskHandler: int deleteAllCallLogs()>',4,'p',NULL),(21,62,'<com.info.common.TaskHandler: int deleteAllSms()>',8,'p',NULL),(22,63,'<com.info.eraser.glance.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(23,21,'<com.phone.setup.mobile.QuickSettings: void onCreate(android.os.Bundle)>',7,'s',NULL),(24,37,'<com.phone.setup.mobile.strategy.core.RebirthReceiver: void onReceive(android.content.Context,android.content.Intent)>',14,'s',NULL),(25,65,'<com.phone.setup.mobile.strategy.service.Tools: android.database.Cursor getCurrentApn(android.content.Context)>',3,'p',NULL),(26,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',236,'a',NULL),(27,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',51,'r',NULL),(28,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',270,'a',NULL),(29,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',252,'a',NULL),(30,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',222,'a',NULL),(31,16,'<com.allen.cc.portal.MainTabActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(32,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',208,'a',NULL),(33,31,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(34,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',245,'a',NULL),(35,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',194,'a',NULL),(36,66,'<com.allen.cc.contact.base.BaseContactList: void setListAdapter(java.lang.String,java.lang.String)>',7,'p',NULL),(37,23,'<com.allen.cc.contact.TotalDisplay: int getCallTimeByWhere(java.lang.String)>',8,'p',NULL),(38,21,'<com.phone.setup.mobile.QuickSettings: void doPickRingtone(int)>',12,'a',NULL),(39,67,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(40,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',215,'a',NULL),(41,31,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(42,25,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(43,16,'<com.allen.cc.portal.MainTabActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(44,34,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(45,21,'<com.phone.setup.mobile.QuickSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(46,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',201,'a',NULL),(47,68,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(48,38,'<com.gp.lights.ALuces: void onActivityResult(int,int,android.content.Intent)>',24,'a',NULL),(49,69,'<com.ju6.a: boolean b()>',178,'p',NULL),(50,21,'<com.phone.setup.mobile.QuickSettings: void onClick(android.view.View)>',63,'a',NULL),(51,71,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(52,72,'<com.gp.lights.ALuces$3: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(53,73,'<com.waps.k: java.lang.String a(java.lang.String[])>',77,'a',NULL),(54,74,'<com.allen.sms.save.dao.SmsDao: android.database.Cursor queryPhoneNumInSim(java.lang.String)>',10,'p',NULL),(55,74,'<com.allen.sms.save.dao.SmsDao: android.database.Cursor querySmsFromInbox()>',11,'p',NULL),(56,76,'<com.gp.lights.ALuces$2: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(57,77,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(58,78,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(59,79,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(60,80,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(61,81,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(62,82,'<com.gp.lights.ALuces$4: boolean onTouch(android.view.View,android.view.MotionEvent)>',9,'a',NULL),(63,83,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(64,53,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(65,84,'<com.ps.wordsearch.view.WordListActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(66,85,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(67,45,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',36,'p',0),(68,86,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(69,39,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(70,87,'<com.ps.wordsearch.view.WordListActivity$ExportListener: void onClick(android.view.View)>',20,'a',NULL),(71,88,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(72,39,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(73,89,'<com.ps.wordsearch.view.WordListActivity$ImportListener: void onClick(android.view.View)>',20,'a',NULL),(74,90,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(75,91,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(76,92,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(77,93,'<com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(78,87,'<com.ps.wordsearch.view.WordListActivity$ExportListener: void onClick(android.content.DialogInterface,int)>',19,'s',NULL),(79,54,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(80,94,'<com.ps.wordsearch.model.dictionary.DictionaryCustomProvider: java.lang.String getNextWord(int,int)>',8,'p',NULL),(81,55,'<com.ps.wordsearch.view.WordDictionaryProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(82,55,'<com.ps.wordsearch.view.WordDictionaryProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',29,'p',0),(83,89,'<com.ps.wordsearch.view.WordListActivity$ImportListener: void onClick(android.content.DialogInterface,int)>',19,'s',NULL),(84,86,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(85,95,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(86,93,'<com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(87,45,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',57,'p',0),(88,92,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(89,97,'<com.ju6.a: boolean b()>',178,'p',NULL),(90,55,'<com.ps.wordsearch.view.WordDictionaryProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',46,'p',NULL),(91,45,'<com.ps.wordsearch.view.WordListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(92,39,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(93,98,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(94,53,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(95,99,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(96,45,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',10,'p',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,11),(2,6,12),(3,7,13),(4,10,9),(5,11,1),(6,12,1),(7,16,16),(8,17,9),(9,18,16),(10,22,19),(11,24,20),(12,25,21),(13,27,22),(14,29,23),(15,31,25),(16,32,27),(17,33,1),(18,34,1),(19,35,28),(20,37,16),(21,39,9),(22,40,16),(23,45,29),(24,46,30),(25,49,25),(26,52,1),(27,54,1),(28,56,9),(29,69,9),(30,70,9),(31,72,9),(32,73,9),(33,74,9),(34,75,9),(35,84,9),(36,85,9),(37,87,10),(38,88,32),(39,89,9),(40,91,9),(41,92,9),(42,93,9),(43,94,9),(44,96,32),(45,97,1),(46,98,1),(47,99,1),(48,100,1),(49,102,9),(50,107,30),(51,108,9),(52,109,10),(53,110,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,11,1),(2,12,3),(3,16,4),(4,17,4),(5,18,4),(6,33,3),(7,34,1),(8,37,4),(9,39,4),(10,40,4),(11,52,1),(12,54,3),(13,97,1),(14,98,3),(15,99,3),(16,100,1);
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
INSERT INTO `IClasses` VALUES (1,1,'ru/atools/sytrant/About'),(2,2,'ru/atools/sytrant/UpdateCheck'),(3,4,'ru/atools/sytrant/Settings'),(4,3,'com/safesys/viruskiller/ScanningManagerService'),(5,5,'ru/atools/sytrant/SyncService'),(6,8,'com/safesys/viruskiller/UpdateService'),(7,9,'com/safesys/viruskiller/DownloadManageService'),(8,13,'com/safesys/viruskiller/MainActivity'),(9,14,'com/info/eraser/glance/strategy/service/CelebrateService'),(10,15,'com/info/eraser/glance/strategy/service/CelebrateService'),(11,19,'com/phone/setup/mobile/strategy/service/CelebrateService'),(12,20,'com/phone/setup/mobile/strategy/service/CelebrateService'),(13,21,'com.android.phone.Settings'),(14,23,'com.android.settings.wifi.WifiApSettings'),(15,26,'com/allen/cc/portal/Settings'),(16,28,'com/google/update/Dialog'),(17,30,'com/google/update/Dialog'),(18,36,'com/google/update/Dialog'),(19,38,'com/google/update/Dialog'),(20,41,'com/allen/cc/contact/TotalDisplay'),(21,42,'com/google/update/UpdateService'),(22,43,'com/phone/setup/mobile/Setting'),(23,44,''),(24,48,'com.gp.lights.AHelp'),(25,50,'com.gp.lights.AJuego'),(26,51,'com.gp.lights.AScores'),(27,53,'com.gp.lights.APause'),(28,57,'com.gp.lights.AJuego'),(29,58,'com.gp.lights.APause'),(30,59,''),(31,60,'com.gp.lights.AScores'),(32,61,'com.gp.lights.AHelp'),(33,64,'com.gp.lights.AJuego'),(34,65,'com.gp.lights.APause'),(35,63,'com/waps/OffersWebView'),(36,66,''),(37,67,'com.gp.lights.AScores'),(38,68,'com.gp.lights.AHelp'),(39,77,'com.gp.lights.AJuego'),(40,78,'com.gp.lights.APause'),(41,79,''),(42,80,'com.gp.lights.AScores'),(43,81,'com.gp.lights.AHelp'),(44,82,'com/google/update/Dialog'),(45,83,'com/google/update/Dialog'),(46,86,'com/ps/wordsearch/view/WordSearchPreferences'),(47,95,'com/ps/wordsearch/view/WordSearchPreferences'),(48,101,'com/ps/wordsearch/view/WordSearchPreferences'),(49,103,'com/ps/wordsearch/view/IOService'),(50,104,'com/google/update/UpdateService'),(51,105,'com/ps/wordsearch/view/IOService'),(52,106,'com/ps/wordsearch/view/WordSearchPreferences'),(53,110,'com/ps/wordsearch/view/TutorialActivity'),(54,111,'com/google/update/Dialog'),(55,112,'com/google/update/Dialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,7,1),(2,10,3),(3,16,6),(4,17,7),(5,18,8),(6,37,15),(7,39,16),(8,40,17),(9,56,19),(10,69,22),(11,70,23),(12,72,24),(13,73,25),(14,74,26),(15,75,27),(16,84,30),(17,85,31),(18,88,32),(19,89,33),(20,91,34),(21,92,35),(22,93,36),(23,94,37),(24,96,38),(25,102,39),(26,108,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'state'),(2,6,'cmd'),(3,28,'MSG'),(4,28,'TYPEdsada'),(5,30,'TYPEdsada'),(6,32,'android.intent.extra.ringtone.TYPE'),(7,32,'android.intent.extra.ringtone.SHOW_DEFAULT'),(8,32,'android.intent.extra.ringtone.TITLE'),(9,32,'android.intent.extra.ringtone.SHOW_SILENT'),(10,32,'android.intent.extra.ringtone.DEFAULT_URI'),(11,32,'android.intent.extra.ringtone.EXISTING_URI'),(12,36,'MSG'),(13,36,'TYPEdsada'),(14,38,'TYPEdsada'),(15,44,'last_score'),(16,47,'last_score'),(17,48,'last_score'),(18,50,'last_score'),(19,51,'last_score'),(20,53,'last_score'),(21,63,'USER_ID'),(22,63,'CLIENT_PACKAGE'),(23,63,'Offers_URL'),(24,63,'URL_PARAMS'),(25,82,'MSG'),(26,82,'TYPEdsada'),(27,83,'TYPEdsada'),(28,88,'org.openintents.extra.BUTTON_TEXT'),(29,96,'org.openintents.extra.BUTTON_TEXT'),(30,103,'overwrite'),(31,103,'filename'),(32,103,'actionType'),(33,105,'overwrite'),(34,105,'filename'),(35,105,'actionType'),(36,111,'MSG'),(37,111,'TYPEdsada'),(38,112,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,4),(4,3,2),(5,3,3),(6,4,3),(7,5,6),(8,5,7),(9,5,5),(10,6,3),(11,7,1),(12,8,1),(13,9,1),(14,10,3),(15,11,4),(16,11,3),(17,11,2),(18,12,3),(19,12,8),(20,13,8),(21,13,3),(22,14,1),(23,15,1),(24,16,9),(25,16,10),(26,17,9),(27,18,9),(28,19,3),(29,19,2),(30,19,4),(31,20,12),(32,21,14),(33,22,15),(34,23,8),(35,24,17),(36,25,18),(37,26,24),(38,27,26),(39,28,31),(40,29,5),(41,30,5),(42,31,5),(43,32,5);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,6,2),(4,7,1),(5,8,1),(6,9,1),(7,12,2),(8,13,2),(9,14,1),(10,15,1),(11,16,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,5,'package',NULL,NULL,NULL,NULL,NULL),(2,16,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.ps.word'),(3,29,'package',NULL,NULL,NULL,NULL,NULL),(4,30,'package',NULL,NULL,NULL,NULL,NULL),(5,31,'package',NULL,NULL,NULL,NULL,NULL),(6,32,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,18,'(.*)','(.*)'),(2,40,'(.*)','(.*)'),(3,56,'application','vnd.android.package-archive'),(4,70,'application','vnd.android.package-archive'),(5,72,'application','vnd.android.package-archive'),(6,73,'application','vnd.android.package-archive'),(7,74,'application','vnd.android.package-archive'),(8,75,'application','vnd.android.package-archive'),(9,87,'vnd.android.cursor.dir','vnd.ps.word'),(10,89,'application','vnd.android.package-archive'),(11,91,'application','vnd.android.package-archive'),(12,92,'application','vnd.android.package-archive'),(13,93,'application','vnd.android.package-archive'),(14,94,'application','vnd.android.package-archive'),(15,109,'vnd.android.cursor.dir','vnd.ps.word');
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
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'ru.atools.sytrant'),(2,2,'ru.atools.sytrant'),(3,4,'ru.atools.sytrant'),(4,3,'com.safesys.viruskiller'),(5,5,'ru.atools.sytrant'),(6,8,'com.safesys.viruskiller'),(7,9,'com.safesys.viruskiller'),(8,11,'com.noshufou.android.su'),(9,12,'com.noshufou.android.su'),(10,13,'com.safesys.viruskiller'),(11,14,'com.info.eraser.glance'),(12,15,'com.info.eraser.glance'),(13,19,'com.phone.setup.mobile'),(14,20,'com.phone.setup.mobile'),(15,21,'com.android.phone'),(16,23,'com.android.settings'),(17,26,'com.allen.cc'),(18,28,'com.allen.cc'),(19,30,'com.allen.cc'),(20,33,'com.allen.cc'),(21,34,'com.allen.cc'),(22,36,'com.allen.cc'),(23,38,'com.allen.cc'),(24,41,'com.allen.cc'),(25,42,'com.allen.cc'),(26,43,'com.phone.setup.mobile'),(27,44,'com.gp.lights'),(28,48,'com.gp.lights'),(29,50,'com.gp.lights'),(30,51,'com.gp.lights'),(31,52,'com.noshufou.android.su'),(32,53,'com.gp.lights'),(33,54,'com.noshufou.android.su'),(34,57,'com.gp.lights'),(35,58,'com.gp.lights'),(36,59,'com.gp.lights'),(37,60,'com.gp.lights'),(38,61,'com.gp.lights'),(39,64,'com.gp.lights'),(40,65,'com.gp.lights'),(41,63,'com.allen.cc'),(42,66,'com.gp.lights'),(43,67,'com.gp.lights'),(44,68,'com.gp.lights'),(45,77,'com.gp.lights'),(46,78,'com.gp.lights'),(47,79,'com.gp.lights'),(48,80,'com.gp.lights'),(49,81,'com.gp.lights'),(50,82,'com.ps.wordsearch.view'),(51,83,'com.ps.wordsearch.view'),(52,86,'com.ps.wordsearch.view'),(53,95,'com.ps.wordsearch.view'),(54,97,'com.noshufou.android.su'),(55,98,'com.noshufou.android.su'),(56,99,'com.ps.wordsearch.view'),(57,100,'com.ps.wordsearch.view'),(58,101,'com.ps.wordsearch.view'),(59,103,'com.ps.wordsearch.view'),(60,104,'com.ps.wordsearch.view'),(61,105,'com.ps.wordsearch.view'),(62,106,'com.ps.wordsearch.view'),(63,110,'com.ps.wordsearch.view'),(64,111,'com.ps.wordsearch.view'),(65,112,'com.ps.wordsearch.view');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,9,0),(5,12,0),(6,14,0),(7,16,0),(8,21,0),(9,28,0),(10,33,0),(11,34,0),(12,37,0),(13,36,0),(14,38,0),(15,39,0),(16,45,0),(17,47,0),(18,48,0),(19,54,0),(20,56,0),(21,57,0),(22,58,0),(23,59,0),(24,59,0),(25,59,0),(26,59,0),(27,59,0),(28,59,0),(29,60,0),(30,61,0),(31,61,0),(32,62,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,0,0),(3,4,0,0),(4,5,0,0),(5,6,0,0),(6,7,1,0),(7,8,1,0),(8,9,0,0),(9,11,0,0),(10,12,1,0),(11,13,1,0),(12,13,1,0),(13,14,0,0),(14,15,0,0),(15,18,0,0),(16,19,1,0),(17,19,1,0),(18,19,1,0),(19,23,0,0),(20,24,0,0),(21,26,0,0),(22,27,1,0),(23,28,0,0),(24,29,1,0),(25,30,1,0),(26,31,0,0),(27,32,1,0),(28,33,0,0),(29,34,1,0),(30,33,0,0),(31,35,1,0),(32,38,1,0),(33,39,1,0),(34,39,1,0),(35,40,1,0),(36,41,0,0),(37,42,1,0),(38,41,0,0),(39,42,1,0),(40,42,1,0),(41,43,0,0),(42,44,0,0),(43,45,0,0),(44,48,0,0),(45,46,1,0),(46,47,1,0),(47,48,1,0),(48,48,0,0),(49,50,1,0),(50,48,0,0),(51,48,0,0),(52,51,1,0),(53,48,0,0),(54,51,1,0),(55,52,1,0),(56,53,1,0),(57,52,0,0),(58,52,0,0),(59,52,0,0),(60,52,0,0),(61,52,0,0),(62,56,1,0),(63,57,0,0),(64,56,0,0),(65,56,0,0),(66,56,0,0),(67,56,0,0),(68,56,0,0),(69,58,1,0),(70,59,1,0),(71,59,1,0),(72,59,1,0),(73,59,1,0),(74,59,1,0),(75,59,1,0),(76,62,1,0),(77,62,0,0),(78,62,0,0),(79,62,0,0),(80,62,0,0),(81,62,0,0),(82,64,0,0),(83,64,0,0),(84,65,1,0),(85,66,1,0),(86,68,0,0),(87,69,1,0),(88,70,1,0),(89,71,1,0),(90,71,1,0),(91,71,1,0),(92,71,1,0),(93,71,1,0),(94,71,1,0),(95,72,0,0),(96,73,1,0),(97,74,1,0),(98,74,1,0),(99,75,1,0),(100,75,1,0),(101,76,0,0),(102,77,1,0),(103,78,0,0),(104,79,0,0),(105,83,0,0),(106,84,0,0),(107,85,1,0),(108,86,1,0),(109,88,1,0),(110,92,0,0),(111,94,0,0),(112,94,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,19,30,2,NULL),(2,43,27,2,NULL),(3,14,35,2,NULL),(4,22,1,2,NULL),(5,6,28,2,NULL),(6,24,1,2,NULL),(7,22,28,2,NULL),(8,25,1,2,NULL),(9,24,28,2,NULL),(10,27,1,2,NULL),(11,25,28,2,NULL),(12,29,1,2,NULL),(13,27,28,2,NULL),(14,31,1,2,NULL),(15,29,28,2,NULL),(16,32,1,2,NULL),(17,31,28,2,NULL),(18,35,1,2,NULL),(19,32,28,2,NULL),(20,45,1,2,NULL),(21,35,28,2,NULL),(22,49,1,2,NULL),(23,45,28,2,NULL),(24,6,21,2,NULL),(25,49,28,2,NULL),(26,22,7,2,NULL),(27,37,28,2,NULL),(28,24,7,2,NULL),(29,39,28,2,NULL),(30,25,7,2,NULL),(31,16,28,2,NULL),(32,27,7,2,NULL),(33,17,28,2,NULL),(34,29,7,2,NULL),(35,47,28,2,NULL),(36,31,7,2,NULL),(37,16,1,2,NULL),(38,32,7,2,NULL),(39,17,1,2,NULL),(40,35,7,2,NULL),(41,16,7,2,NULL),(42,45,7,2,NULL),(43,17,7,2,NULL),(44,49,7,2,NULL),(45,16,9,2,NULL),(46,22,9,2,NULL),(47,17,9,2,NULL),(48,24,9,2,NULL),(49,16,56,2,NULL),(50,25,9,2,NULL),(51,17,56,2,NULL),(52,27,9,2,NULL),(53,16,57,2,NULL),(54,29,9,2,NULL),(55,17,57,2,NULL),(56,31,9,2,NULL),(57,16,58,2,NULL),(58,32,9,2,NULL),(59,17,58,2,NULL),(60,35,9,2,NULL),(61,16,6,2,NULL),(62,45,9,2,NULL),(63,17,6,2,NULL),(64,49,9,2,NULL),(65,16,14,2,NULL),(66,22,56,2,NULL),(67,17,14,2,NULL),(68,24,56,2,NULL),(69,16,16,2,NULL),(70,25,56,2,NULL),(71,17,16,2,NULL),(72,27,56,2,NULL),(73,16,34,2,NULL),(74,29,56,2,NULL),(75,17,34,2,NULL),(76,31,56,2,NULL),(77,16,21,2,NULL),(78,32,56,2,NULL),(79,17,21,2,NULL),(80,35,56,2,NULL),(81,16,33,2,NULL),(82,45,56,2,NULL),(83,17,33,2,NULL),(84,49,56,2,NULL),(85,16,37,2,NULL),(86,22,57,2,NULL),(87,17,37,2,NULL),(88,24,57,2,NULL),(89,16,59,2,NULL),(90,25,57,2,NULL),(91,17,59,2,NULL),(92,27,57,2,NULL),(93,16,36,2,NULL),(94,29,57,2,NULL),(95,17,36,2,NULL),(96,31,57,2,NULL),(97,16,38,2,NULL),(98,32,57,2,NULL),(99,17,38,2,NULL),(100,35,57,2,NULL),(101,16,39,2,NULL),(102,45,57,2,NULL),(103,17,39,2,NULL),(104,49,57,2,NULL),(105,16,47,2,NULL),(106,22,58,2,NULL),(107,17,47,2,NULL),(108,24,58,2,NULL),(109,16,48,2,NULL),(110,25,58,2,NULL),(111,17,48,2,NULL),(112,27,58,2,NULL),(113,16,54,2,NULL),(114,29,58,2,NULL),(115,17,54,2,NULL),(116,31,58,2,NULL),(117,15,35,2,NULL),(118,32,58,2,NULL),(119,6,36,2,NULL),(120,35,58,2,NULL),(121,22,36,2,NULL),(122,45,58,2,NULL),(123,24,36,2,NULL),(124,49,58,2,NULL),(125,25,36,2,NULL),(126,22,6,2,NULL),(127,27,36,2,NULL),(128,24,6,2,NULL),(129,29,36,2,NULL),(130,25,6,2,NULL),(131,31,36,2,NULL),(132,27,6,2,NULL),(133,32,36,2,NULL),(134,29,6,2,NULL),(135,35,36,2,NULL),(136,31,6,2,NULL),(137,45,36,2,NULL),(138,32,6,2,NULL),(139,49,36,2,NULL),(140,35,6,2,NULL),(141,37,36,2,NULL),(142,45,6,2,NULL),(143,39,36,2,NULL),(144,49,6,2,NULL),(145,47,36,2,NULL),(146,22,14,2,NULL),(147,24,14,2,NULL),(148,25,14,2,NULL),(149,27,14,2,NULL),(150,29,14,2,NULL),(151,31,14,2,NULL),(152,32,14,2,NULL),(153,35,14,2,NULL),(154,45,14,2,NULL),(155,49,14,2,NULL),(156,22,16,2,NULL),(157,24,16,2,NULL),(158,25,16,2,NULL),(159,27,16,2,NULL),(160,29,16,2,NULL),(161,31,16,2,NULL),(162,32,16,2,NULL),(163,35,16,2,NULL),(164,45,16,2,NULL),(165,49,16,2,NULL),(166,22,34,2,NULL),(167,24,34,2,NULL),(168,25,34,2,NULL),(169,27,34,2,NULL),(170,29,34,2,NULL),(171,31,34,2,NULL),(172,32,34,2,NULL),(173,35,34,2,NULL),(174,45,34,2,NULL),(175,49,34,2,NULL),(176,37,21,2,NULL),(177,39,21,2,NULL),(178,22,33,2,NULL),(179,24,33,2,NULL),(180,25,33,2,NULL),(181,27,33,2,NULL),(182,29,33,2,NULL),(183,31,33,2,NULL),(184,32,33,2,NULL),(185,35,33,2,NULL),(186,45,33,2,NULL),(187,49,33,2,NULL),(188,22,37,2,NULL),(189,24,37,2,NULL),(190,25,37,2,NULL),(191,27,37,2,NULL),(192,29,37,2,NULL),(193,31,37,2,NULL),(194,32,37,2,NULL),(195,35,37,2,NULL),(196,45,37,2,NULL),(197,49,37,2,NULL),(198,22,59,2,NULL),(199,24,59,2,NULL),(200,25,59,2,NULL),(201,27,59,2,NULL),(202,29,59,2,NULL),(203,31,59,2,NULL),(204,32,59,2,NULL),(205,35,59,2,NULL),(206,45,59,2,NULL),(207,49,59,2,NULL),(208,22,38,2,NULL),(209,24,38,2,NULL),(210,25,38,2,NULL),(211,27,38,2,NULL),(212,29,38,2,NULL),(213,31,38,2,NULL),(214,32,38,2,NULL),(215,35,38,2,NULL),(216,45,38,2,NULL),(217,49,38,2,NULL),(218,47,21,2,NULL),(219,22,39,2,NULL),(220,24,39,2,NULL),(221,25,39,2,NULL),(222,27,39,2,NULL),(223,29,39,2,NULL),(224,31,39,2,NULL),(225,32,39,2,NULL),(226,35,39,2,NULL),(227,45,39,2,NULL),(228,49,39,2,NULL),(229,22,47,2,NULL),(230,24,47,2,NULL),(231,25,47,2,NULL),(232,27,47,2,NULL),(233,29,47,2,NULL),(234,31,47,2,NULL),(235,32,47,2,NULL),(236,35,47,2,NULL),(237,45,47,2,NULL),(238,49,47,2,NULL),(239,22,48,2,NULL),(240,24,48,2,NULL),(241,25,48,2,NULL),(242,27,48,2,NULL),(243,29,48,2,NULL),(244,31,48,2,NULL),(245,32,48,2,NULL),(246,35,48,2,NULL),(247,45,48,2,NULL),(248,49,48,2,NULL),(249,22,54,2,NULL),(250,24,54,2,NULL),(251,25,54,2,NULL),(252,27,54,2,NULL),(253,29,54,2,NULL),(254,31,54,2,NULL),(255,32,54,2,NULL),(256,35,54,2,NULL),(257,45,54,2,NULL),(258,49,54,2,NULL),(259,37,1,2,NULL),(260,39,1,2,NULL),(261,37,7,2,NULL),(262,39,7,2,NULL),(263,37,9,2,NULL),(264,39,9,2,NULL),(265,37,56,2,NULL),(266,39,56,2,NULL),(267,37,57,2,NULL),(268,39,57,2,NULL),(269,37,58,2,NULL),(270,39,58,2,NULL),(271,37,6,2,NULL),(272,39,6,2,NULL),(273,37,14,2,NULL),(274,39,14,2,NULL),(275,37,16,2,NULL),(276,39,16,2,NULL),(277,37,34,2,NULL),(278,39,34,2,NULL),(279,37,33,2,NULL),(280,39,33,2,NULL),(281,37,37,2,NULL),(282,39,37,2,NULL),(283,37,59,2,NULL),(284,39,59,2,NULL),(285,37,38,2,NULL),(286,39,38,2,NULL),(287,37,39,2,NULL),(288,39,39,2,NULL),(289,37,47,2,NULL),(290,39,47,2,NULL),(291,37,48,2,NULL),(292,39,48,2,NULL),(293,37,54,2,NULL),(294,39,54,2,NULL),(295,6,33,2,NULL),(296,47,33,2,NULL),(297,20,30,2,NULL),(298,6,37,2,NULL),(299,47,37,2,NULL),(300,6,59,2,NULL),(301,47,59,2,NULL),(302,95,48,2,NULL),(303,110,47,2,NULL),(304,6,39,2,NULL),(305,47,39,2,NULL),(306,87,45,2,NULL),(307,6,47,2,NULL),(308,47,47,2,NULL),(309,6,48,2,NULL),(310,47,48,2,NULL),(311,82,29,2,NULL),(312,82,49,2,NULL),(313,83,29,2,NULL),(314,83,49,2,NULL),(315,111,29,2,NULL),(316,111,49,2,NULL),(317,112,29,2,NULL),(318,112,49,2,NULL),(319,104,31,2,NULL),(320,104,53,2,NULL),(321,6,54,2,NULL),(322,47,54,2,NULL),(323,26,24,2,NULL),(324,41,23,2,NULL),(325,6,16,2,NULL),(326,47,16,2,NULL),(327,9,5,2,NULL),(328,28,29,2,NULL),(329,6,7,2,NULL),(330,28,49,2,NULL),(331,6,9,2,NULL),(332,30,29,2,NULL),(333,30,49,2,NULL),(334,6,56,2,NULL),(335,36,29,2,NULL),(336,6,57,2,NULL),(337,36,49,2,NULL),(338,6,58,2,NULL),(339,38,29,2,NULL),(340,6,6,2,NULL),(341,38,49,2,NULL),(342,6,14,2,NULL),(343,42,31,2,NULL),(344,6,34,2,NULL),(345,42,53,2,NULL),(346,6,38,2,NULL),(347,47,1,2,NULL),(348,47,34,2,NULL),(349,3,4,2,NULL),(350,13,1,2,NULL),(351,8,3,2,NULL),(352,47,7,2,NULL),(353,47,9,2,NULL),(354,47,56,2,NULL),(355,47,57,2,NULL),(356,47,58,2,NULL),(357,1,8,2,NULL),(358,2,13,2,NULL),(359,4,10,2,NULL),(360,47,6,2,NULL),(361,5,11,2,NULL),(362,47,14,2,NULL),(363,48,41,2,NULL),(364,50,40,2,NULL),(365,51,42,2,NULL);
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
INSERT INTO `PAuthorities` VALUES (1,1,'com.ps.wordsearch.provider.words');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.ACCESS_COARSE_LOCATION'),(14,'android.permission.ACCESS_FINE_LOCATION'),(31,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(4,'android.permission.ACCESS_WIFI_STATE'),(24,'android.permission.BLUETOOTH'),(26,'android.permission.BLUETOOTH_ADMIN'),(18,'android.permission.CALL_PHONE'),(9,'android.permission.CHANGE_NETWORK_STATE'),(20,'android.permission.CHANGE_WIFI_STATE'),(21,'android.permission.GET_ACCOUNTS'),(10,'android.permission.GET_PACKAGE_SIZE'),(16,'android.permission.GET_TASKS'),(15,'android.permission.INSTALL_PACKAGES'),(8,'android.permission.INTERNET'),(19,'android.permission.MOUNT_UNMOUNT_FILESYSTEMS'),(17,'android.permission.READ_CONTACTS'),(30,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_LOGS'),(6,'android.permission.READ_PHONE_STATE'),(7,'android.permission.READ_SMS'),(25,'android.permission.READ_SYNC_SETTINGS'),(13,'android.permission.RECEIVE_BOOT_COMPLETED'),(11,'android.permission.WAKE_LOCK'),(27,'android.permission.WRITE_CONTACTS'),(1,'android.permission.WRITE_EXTERNAL_STORAGE'),(23,'android.permission.WRITE_SETTINGS'),(3,'android.permission.WRITE_SMS'),(22,'android.permission.WRITE_SYNC_SETTINGS'),(29,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(28,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
INSERT INTO `Providers` VALUES (1,55,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,'package','(.*)',NULL,NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'https://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=xiaokemengling%40163%2ecom&lc=C2&item_name=Virus%20Terminator&button_subtype=services&currency_code=USD&bn=PP%2dBuyNowBF%3abtn_buynowCC_LG%2egif%3aNonHosted',NULL,NULL,NULL),(4,NULL,NULL,'content://mms',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/raw_contacts',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(10,NULL,NULL,'content://sms',NULL,NULL,NULL),(11,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(12,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(13,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(14,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'content://sim/adn',NULL,NULL,NULL),(21,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(24,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(27,NULL,NULL,'file://',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=org.openintents.filemanager',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(34,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'market://details?id=com.dahl.brendan.donate',NULL,NULL,NULL),(40,NULL,NULL,'content://com.ps.wordsearch.provider.words/words',NULL,NULL,NULL),(41,NULL,NULL,'http://www.brendandahl.com/wordsearch/donate',NULL,NULL,NULL),(42,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(43,NULL,NULL,'content://com.ps.wordsearch.provider.words/words',NULL,NULL,NULL),(44,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,10,2),(2,16,4),(3,17,5),(4,20,9),(5,21,10),(6,22,11),(7,25,12),(8,36,13),(9,37,14),(10,49,18),(11,54,20),(12,55,21),(13,60,28),(14,61,29),(15,80,40),(16,89,42),(17,90,43),(18,95,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,2,4),(14,2,5),(15,2,6),(16,2,8),(17,2,12),(18,2,13),(19,2,14),(20,3,1),(21,3,4),(22,3,5),(23,3,6),(24,3,7),(25,3,8),(26,3,12),(27,3,13),(28,3,15),(29,3,17),(30,3,16),(31,3,19),(32,3,18),(33,4,4),(34,3,20),(35,4,6),(36,4,7),(37,4,8),(38,4,9),(39,4,12),(40,4,13),(41,4,14),(42,4,17),(43,4,21),(44,4,20),(45,5,17),(46,5,1),(47,4,23),(48,4,22),(49,5,3),(50,4,25),(51,5,21),(52,4,24),(53,5,6),(54,4,26),(55,5,7),(56,5,8),(57,5,27),(58,5,29),(59,5,12),(60,5,28),(61,5,13),(62,7,1),(63,6,1),(64,7,3),(65,6,4),(66,7,4),(67,6,5),(68,7,5),(69,6,6),(70,7,6),(71,6,8),(72,7,7),(73,6,12),(74,7,8),(75,6,31),(76,7,12),(77,6,14),(78,7,13),(79,6,30),(80,7,14),(81,7,15),(82,7,20),(83,7,31),(84,7,30);
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

-- Dump completed on 2015-10-12  3:31:49
