-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_117
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
INSERT INTO `ActionStrings` VALUES (21,'(.*)'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(6,'android.intent.action.CHOOSER'),(12,'android.intent.action.DIAL'),(19,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.PACKAGE_ADDED'),(16,'android.intent.action.SCREEN_OFF'),(17,'android.intent.action.SCREEN_ON'),(13,'android.intent.action.SEND'),(14,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(18,'android.intent.action.USER_PRESENT'),(11,'android.intent.action.VIEW'),(15,'android.intent.action.WEB_SEARCH'),(20,'android.media.action.IMAGE_CAPTURE'),(5,'android.net.conn.CONNECTIVITY_CHANGE'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(8,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(7,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',6),(2,'sunkay.AndroidApp5',3),(3,'com.gp.paopaoyu',4),(4,'com.testsafe.cell',7),(5,'com.evilsunflower.animalpuzzle',1),(6,'com.ps.pushbox',13),(7,'net.bible.android.activity',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(6,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(7,1,'com.tutusw.onekeyvpn.ImportFiles'),(8,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(9,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(10,2,'sunkay.AndroidApp5.AndroidApp'),(11,2,'com.waps.OffersWebView'),(12,2,'com.google.update.Dialog'),(13,2,'com.google.update.UpdateService'),(14,2,'com.google.update.Receiver'),(15,3,'com.gp.paopaoyu.SplashActivity'),(16,3,'com.gp.paopaoyu.MainView'),(17,3,'com.gp.paopaoyu.AquariumsActivity'),(18,3,'com.gp.paopaoyu.FeedActivity'),(19,3,'com.gp.paopaoyu.SettingsActivity'),(20,3,'com.gp.paopaoyu.StoreActivity'),(21,3,'com.gp.paopaoyu.StoreDetailActivity'),(22,3,'com.gp.paopaoyu.BagActivity'),(23,3,'com.gp.paopaoyu.MiniGameActivity'),(24,3,'com.gp.paopaoyu.ExamActivity'),(25,3,'com.gp.paopaoyu.CreditActivity'),(26,3,'com.gp.paopaoyu.HelpActivity'),(27,3,'com.adwo.adsdk.AdwoSplashAdActivity'),(28,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(29,3,'com.google.update.Dialog'),(30,3,'com.google.update.UpdateService'),(31,3,'com.google.update.Receiver'),(32,4,'com.testsafe.cell.Main'),(33,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(34,4,'com.testsafe.cell.ShowTips'),(35,4,'com.testsafe.cell.UpdateService'),(36,4,'com.testsafe.cell.Receiver'),(37,5,'com.evilsunflower.animalpuzzle.Main'),(38,5,'com.evilsunflower.animalpuzzle.PuzzleView'),(39,5,'com.mobclix.android.sdk.MobclixBrowserActivity'),(40,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(41,5,'com.evilsunflower.animalpuzzle.ShowTips'),(42,5,'com.evilsunflower.animalpuzzle.UpdateService'),(43,5,'com.evilsunflower.animalpuzzle.Receiver'),(44,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(45,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(46,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(47,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(48,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(49,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(50,2,'com.ju6.a'),(51,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(52,2,'com.google.update.UpdateService$MyThread'),(53,2,'com.google.update.Dialog$1'),(54,2,'com.google.update.Dialog$2'),(55,2,'com.waps.m'),(56,2,'com.waps.AppConnect'),(57,2,'com.waps.k'),(58,6,'com.ps.pushbox.Pushbox'),(59,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(60,6,'com.google.update.Dialog'),(61,4,'com.testsafe.cell.ShowTips$1'),(62,6,'com.google.update.UpdateService'),(63,6,'com.google.update.Receiver'),(64,3,'com.google.update.UpdateService$AA'),(65,3,'com.google.update.Dialog$1'),(66,3,'com.gp.paopaoyu.FeedActivity$6'),(67,3,'com.gp.paopaoyu.SettingsActivity$2'),(68,3,'com.gp.paopaoyu.StoreActivity$1'),(69,3,'com.google.update.Dialog$2'),(70,3,'com.gp.paopaoyu.MainView$4'),(71,3,'com.gp.paopaoyu.FeedActivity$4'),(72,3,'com.gp.paopaoyu.MainView$1'),(73,3,'com.gp.paopaoyu.AquariumsActivity$2'),(74,3,'com.gp.paopaoyu.FeedActivity$5'),(75,3,'com.gp.paopaoyu.MainView$3'),(76,5,'com.adwo.adsdk.g'),(77,6,'com.google.update.Dialog$1'),(78,6,'com.google.update.UpdateService$AA'),(79,6,'com.google.update.Dialog$2'),(80,5,'com.adwo.adsdk.D'),(81,5,'com.evilsunflower.animalpuzzle.ShowTips$1'),(82,5,'com.mobclix.android.sdk.MobclixCreative$Action'),(83,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(84,5,'com.mobclix.android.sdk.MobclixBrowserActivity$ScreenReceiver'),(85,5,'com.madhouse.android.ads._'),(86,5,'com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener'),(87,7,'net.bible.android.activity.StartupActivity'),(88,7,'net.bible.android.view.activity.page.MainBibleActivity'),(89,7,'net.bible.android.view.activity.navigation.ChooseDocument'),(90,7,'net.bible.android.view.activity.navigation.GridChoosePassageBook'),(91,7,'net.bible.android.view.activity.navigation.GridChoosePassageChapter'),(92,7,'net.bible.android.view.activity.navigation.GridChoosePassageVerse'),(93,7,'net.bible.android.view.activity.search.Search'),(94,7,'net.bible.android.view.activity.search.SearchResults'),(95,7,'net.bible.android.view.activity.search.SearchIndex'),(96,7,'net.bible.android.view.activity.search.SearchIndexProgressStatus'),(97,7,'net.bible.android.view.activity.NotesActivity'),(98,7,'net.bible.android.view.activity.bookmark.Bookmarks'),(99,7,'net.bible.android.view.activity.bookmark.BookmarkLabels'),(100,7,'net.bible.android.view.activity.navigation.ChooseDictionaryWord'),(101,7,'net.bible.android.view.activity.navigation.ChooseGeneralBookKey'),(102,7,'net.bible.android.view.activity.SettingsActivity'),(103,7,'net.bible.android.view.activity.navigation.History'),(104,7,'net.bible.android.view.activity.speak.Speak'),(105,7,'net.bible.android.view.activity.download.Download'),(106,7,'net.bible.android.view.activity.download.EnsureBibleDownloaded'),(107,7,'net.bible.android.view.activity.download.DownloadStatus'),(108,7,'net.bible.android.view.activity.download.ProgressStatus'),(109,7,'net.bible.android.view.activity.Help'),(110,7,'com.google.ads.AdActivity'),(111,7,'com.vpon.adon.android.WebInApp'),(112,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(113,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(114,7,'com.waps.OffersWebView'),(115,7,'com.google.update.Dialog'),(116,7,'com.google.update.UpdateService'),(117,7,'com.google.update.Receiver'),(118,7,'net.bible.android.control.page.CurrentPageManager'),(119,7,'net.bible.android.view.activity.base.ListActivityBase'),(120,7,'com.google.update.Dialog$2'),(121,7,'net.bible.android.view.activity.base.CustomTitlebarActivityBase$1'),(122,7,'com.google.update.UpdateService$MyThread'),(123,7,'com.google.update.Dialog$1'),(124,7,'com.ju6.a'),(125,7,'com.waps.m'),(126,7,'com.waps.AppConnect'),(127,7,'net.bible.android.view.activity.base.CustomTitlebarActivityBase$2'),(128,7,'com.waps.k');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,11,'URL_PARAMS'),(2,11,'Offers_URL'),(3,11,'CLIENT_PACKAGE'),(4,11,'URL'),(5,10,'APP_ID'),(6,10,'DEVICE_ID'),(7,11,'isFinshClose'),(8,13,'ST_MY_PID'),(9,10,'WAPS_PID'),(10,12,'TYPEdsada'),(11,11,'USER_ID'),(12,13,'ST_START_DELAY'),(13,12,'MSG'),(14,10,'WAPS_ID'),(15,10,'CLIENT_PACKAGE'),(16,33,'shouldShowBottomBar'),(17,33,'overlayTransition'),(18,35,'SAFE_START'),(19,33,'shouldMakeOverlayTransparent'),(20,33,'url'),(21,33,'transitionTime'),(22,33,'shouldResizeOverlay'),(23,34,'MM'),(24,33,'shouldShowTitlebar'),(25,33,'overlayTitle'),(26,35,'SAFE_PID'),(27,33,'shouldEnableBottomBar'),(28,27,'overlayTransition'),(29,27,'transitionTime'),(30,21,'key'),(31,28,'url'),(32,27,'shouldShowBottomBar'),(33,28,'overlayTransition'),(34,28,'shouldShowTitlebar'),(35,21,'type'),(36,28,'shouldMakeOverlayTransparent'),(37,28,'shouldEnableBottomBar'),(38,27,'shouldEnableBottomBar'),(39,27,'shouldShowTitlebar'),(40,30,'ST_MY_PID'),(41,27,'shouldMakeOverlayTransparent'),(42,29,'MSG'),(43,28,'overlayTitle'),(44,18,'Aquarium'),(45,28,'shouldResizeOverlay'),(46,28,'shouldShowBottomBar'),(47,27,'overlayTitle'),(48,27,'FSAd'),(49,27,'shouldResizeOverlay'),(50,29,'TYPEdsada'),(51,28,'transitionTime'),(52,30,'ST_START_DELAY'),(53,48,'TYPEdsada'),(54,47,'overlayTransition'),(55,47,'overlayTitle'),(56,47,'shouldShowBottomBar'),(57,47,'shouldResizeOverlay'),(58,47,'shouldMakeOverlayTransparent'),(59,47,'url'),(60,47,'shouldEnableBottomBar'),(61,47,'transitionTime'),(62,49,'ST_MY_PID'),(63,47,'shouldShowTitlebar'),(64,48,'MSG'),(65,49,'ST_START_DELAY'),(66,40,'shouldMakeOverlayTransparent'),(67,40,'shouldEnableBottomBar'),(68,39,'imageUri'),(69,39,'com.evilsunflower.animalpuzzle.type'),(70,40,'transitionTime'),(71,40,'overlayTitle'),(72,40,'overlayTransition'),(73,40,'url'),(74,39,'(.*)'),(75,40,'shouldShowTitlebar'),(76,41,'MM'),(77,39,'com.evilsunflower.animalpuzzle.data'),(78,39,'Adwo_PID'),(79,42,'SAFE_PID'),(80,40,'shouldResizeOverlay'),(81,40,'shouldShowBottomBar'),(82,42,'SAFE_START'),(83,54,'APP_ID'),(84,55,'APP_ID'),(85,62,'SearchDocument'),(86,80,'shouldEnableBottomBar'),(87,78,'adWidth'),(88,61,'TargetDocument'),(89,77,'params'),(90,77,'com.google.ads.AdOpener'),(91,60,'SearchText'),(92,82,'MSG'),(93,80,'shouldResizeOverlay'),(94,80,'transitionTime'),(95,81,'URL_PARAMS'),(96,61,'SearchDocument'),(97,81,'URL'),(98,61,'SearchText'),(99,83,'ST_MY_PID'),(100,54,'WAPS_PID'),(101,55,'WAPS_PID'),(102,80,'overlayTitle'),(103,83,'ST_START_DELAY'),(104,80,'url'),(105,54,'DEVICE_ID'),(106,55,'DEVICE_ID'),(107,80,'overlayTransition'),(108,81,'CLIENT_PACKAGE'),(109,78,'url'),(110,81,'Offers_URL'),(111,81,'USER_ID'),(112,80,'shouldShowBottomBar'),(113,80,'shouldMakeOverlayTransparent'),(114,63,'SearchDocument'),(115,54,'WAPS_ID'),(116,55,'WAPS_ID'),(117,82,'TYPEdsada'),(118,77,'action'),(119,54,'CLIENT_PACKAGE'),(120,55,'CLIENT_PACKAGE'),(121,80,'shouldShowTitlebar'),(122,81,'isFinshClose'),(123,79,'Adwo_PID'),(124,79,'isTestMode');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',0,NULL,NULL),(14,14,'r',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'s',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,55,'r',1,NULL,NULL),(46,58,'a',1,NULL,NULL),(47,59,'a',0,NULL,NULL),(48,60,'a',0,NULL,NULL),(49,62,'s',0,NULL,NULL),(50,63,'r',1,NULL,NULL),(51,80,'r',1,NULL,NULL),(52,83,'r',1,NULL,NULL),(53,84,'r',1,NULL,NULL),(54,87,'a',1,NULL,NULL),(55,88,'a',0,NULL,NULL),(56,89,'a',0,NULL,NULL),(57,90,'a',0,NULL,NULL),(58,91,'a',0,NULL,NULL),(59,92,'a',0,NULL,NULL),(60,93,'a',0,NULL,NULL),(61,94,'a',0,NULL,NULL),(62,95,'a',0,NULL,NULL),(63,96,'a',0,NULL,NULL),(64,97,'a',0,NULL,NULL),(65,98,'a',0,NULL,NULL),(66,99,'a',0,NULL,NULL),(67,100,'a',0,NULL,NULL),(68,101,'a',0,NULL,NULL),(69,102,'a',0,NULL,NULL),(70,103,'a',0,NULL,NULL),(71,104,'a',0,NULL,NULL),(72,105,'a',0,NULL,NULL),(73,106,'a',0,NULL,NULL),(74,107,'a',0,NULL,NULL),(75,108,'a',0,NULL,NULL),(76,109,'a',0,NULL,NULL),(77,110,'a',0,NULL,NULL),(78,111,'a',0,NULL,NULL),(79,112,'a',0,NULL,NULL),(80,113,'a',0,NULL,NULL),(81,114,'a',0,NULL,NULL),(82,115,'a',0,NULL,NULL),(83,116,'s',0,NULL,NULL),(84,117,'r',1,NULL,NULL),(85,125,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,9),(2,2,1),(3,3,1),(4,3,8),(5,4,1),(6,5,1),(7,5,8),(8,6,8),(9,6,1),(10,7,8),(11,7,1),(12,8,8),(13,8,1),(14,9,5),(15,10,8),(16,10,1),(17,11,1),(18,12,8),(19,12,1),(20,13,8),(21,13,1),(22,14,7),(23,15,1),(24,16,14),(25,17,6),(26,18,13),(27,19,1),(28,20,13),(29,21,1),(30,22,8),(31,23,1),(32,24,13),(33,25,12),(34,26,12),(35,27,10),(36,28,13),(37,29,11),(38,30,34),(39,31,36),(40,32,30),(41,33,29),(42,34,17),(43,34,18),(44,34,19),(45,34,21),(46,34,23),(47,34,24),(48,34,26),(49,34,16),(50,35,19),(51,35,18),(52,35,21),(53,35,23),(54,35,24),(55,35,26),(56,35,16),(57,35,17),(58,36,22),(59,36,20),(60,36,24),(61,36,17),(62,37,29),(63,38,31),(64,39,17),(65,39,16),(66,39,19),(67,39,18),(68,39,21),(69,39,23),(70,39,24),(71,39,26),(72,40,18),(73,40,17),(74,40,16),(75,40,21),(76,40,19),(77,40,26),(78,40,23),(79,40,24),(80,41,21),(81,41,23),(82,41,17),(83,41,16),(84,41,19),(85,41,18),(86,41,24),(87,41,26),(88,42,24),(89,42,22),(90,42,20),(91,42,17),(92,43,26),(93,43,16),(94,43,17),(95,43,21),(96,43,18),(97,43,19),(98,43,24),(99,43,23),(100,44,30),(101,45,30),(102,46,17),(103,46,18),(104,46,19),(105,46,16),(106,46,26),(107,46,21),(108,46,23),(109,46,24),(110,47,39),(111,48,39),(112,48,37),(113,49,50),(114,50,48),(115,51,49),(116,52,49),(117,53,49),(118,54,48),(119,55,41),(120,56,43),(121,57,39),(122,58,39),(123,59,39),(124,60,37),(125,61,39),(126,62,39),(127,63,39),(128,64,39),(129,65,39),(130,66,39),(131,67,39),(132,68,39),(133,69,39),(134,70,65),(135,71,55),(136,72,55),(137,73,83),(138,74,82),(139,75,55),(140,76,77),(141,77,55),(142,78,83),(143,79,82),(144,80,83),(145,81,55),(146,82,55),(147,83,83),(148,84,62),(149,85,73),(150,86,55),(151,87,81),(152,88,84),(153,89,60),(154,90,72),(155,91,72),(156,91,65),(157,92,55);
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
INSERT INTO `ExitPoints` VALUES (1,9,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(2,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(3,45,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(4,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(5,45,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(6,46,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(7,45,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(8,45,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(9,5,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(10,47,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(11,48,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(12,46,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(13,45,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(14,49,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(15,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(16,14,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(17,6,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(18,50,'<com.ju6.a: boolean b()>',178,'p',NULL),(19,51,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(20,13,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(21,51,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(22,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(23,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(24,52,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(25,53,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(26,54,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(27,56,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(28,13,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(29,57,'<com.waps.k: java.lang.String a(java.lang.String[])>',77,'a',NULL),(30,61,'<com.testsafe.cell.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,36,'<com.testsafe.cell.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(32,64,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(33,65,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(34,66,'<com.gp.paopaoyu.FeedActivity$6: void onClick(android.view.View)>',11,'a',NULL),(35,67,'<com.gp.paopaoyu.SettingsActivity$2: void onClick(android.view.View)>',6,'a',NULL),(36,68,'<com.gp.paopaoyu.StoreActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',22,'a',NULL),(37,69,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(38,31,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(39,70,'<com.gp.paopaoyu.MainView$4: void onClick(android.view.View)>',6,'a',NULL),(40,71,'<com.gp.paopaoyu.FeedActivity$4: void onClick(android.view.View)>',9,'a',NULL),(41,72,'<com.gp.paopaoyu.MainView$1: void onClick(android.view.View)>',6,'a',NULL),(42,73,'<com.gp.paopaoyu.AquariumsActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(43,74,'<com.gp.paopaoyu.FeedActivity$5: void onClick(android.view.View)>',9,'a',NULL),(44,30,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(45,30,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(46,75,'<com.gp.paopaoyu.MainView$3: void onClick(android.view.View)>',6,'a',NULL),(47,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',53,'a',NULL),(48,76,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(49,63,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(50,77,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(51,78,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(52,62,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(53,62,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(54,79,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(55,81,'<com.evilsunflower.animalpuzzle.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(56,43,'<com.evilsunflower.animalpuzzle.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(57,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',44,'a',NULL),(58,82,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',81,'a',NULL),(59,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',60,'a',0),(60,37,'<com.evilsunflower.animalpuzzle.Main: void switchToPuzzleView()>',39,'s',NULL),(61,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onCreate(android.os.Bundle)>',129,'p',NULL),(62,82,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',101,'a',NULL),(63,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',64,'a',NULL),(64,39,'<com.mobclix.android.sdk.MobclixBrowserActivity: void onResume()>',35,'a',NULL),(65,85,'<com.madhouse.android.ads._: com.madhouse.android.ads.c _(android.content.Context)>',11,'p',NULL),(66,86,'<com.mobclix.android.sdk.MobclixBrowserActivity$MobclixVideoView$ButtonOnClickListener: void onClick(android.view.View)>',7,'a',NULL),(67,82,'<com.mobclix.android.sdk.MobclixCreative$Action: boolean act()>',69,'a',NULL),(68,82,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',93,'a',NULL),(69,82,'<com.mobclix.android.sdk.MobclixCreative$Action: void loadUrl()>',133,'a',NULL),(70,98,'<net.bible.android.view.activity.bookmark.Bookmarks: void assignLabels(net.bible.service.db.bookmark.BookmarkDto)>',6,'a',NULL),(71,118,'<net.bible.android.control.page.CurrentPageManager: net.bible.android.control.page.CurrentPage setCurrentDocument(org.crosswire.jsword.book.Book)>',19,'a',NULL),(72,119,'<net.bible.android.view.activity.base.ListActivityBase: void startActivity(android.content.Intent)>',3,'a',NULL),(73,116,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(74,120,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(75,121,'<net.bible.android.view.activity.base.CustomTitlebarActivityBase$1: void onClick(android.view.View)>',6,'a',NULL),(76,110,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(77,88,'<net.bible.android.view.activity.page.MainBibleActivity: boolean onKeyDown(int,android.view.KeyEvent)>',24,'a',NULL),(78,122,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(79,123,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(80,124,'<com.ju6.a: boolean b()>',178,'p',NULL),(81,88,'<net.bible.android.view.activity.page.MainBibleActivity: boolean onContextItemSelected(android.view.MenuItem)>',12,'a',NULL),(82,126,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(83,116,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(84,95,'<net.bible.android.view.activity.search.SearchIndex: void monitorProgress()>',15,'a',NULL),(85,106,'<net.bible.android.view.activity.download.EnsureBibleDownloaded: void gotoMainScreen()>',6,'a',NULL),(86,127,'<net.bible.android.view.activity.base.CustomTitlebarActivityBase$2: void onClick(android.view.View)>',9,'a',NULL),(87,128,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(88,117,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(89,93,'<net.bible.android.view.activity.search.Search: void onSearch(android.view.View)>',19,'a',NULL),(90,105,'<net.bible.android.view.activity.download.Download: void doDownload(org.crosswire.jsword.book.Book)>',9,'a',NULL),(91,119,'<net.bible.android.view.activity.base.ListActivityBase: void startActivityForResult(android.content.Intent,int)>',4,'a',NULL),(92,88,'<net.bible.android.view.activity.page.MainBibleActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',45,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,4,6),(2,5,6),(3,6,6),(4,7,6),(5,8,6),(6,9,6),(7,10,6),(8,11,6),(9,12,7),(10,20,8),(11,22,1),(12,23,1),(13,24,1),(14,25,1),(15,26,9),(16,30,11),(17,31,1),(18,32,1),(19,34,1),(20,35,1),(21,36,1),(22,37,1),(23,41,9),(24,53,6),(25,54,6),(26,55,6),(27,56,6),(28,57,6),(29,58,6),(30,59,6),(31,60,6),(32,61,12),(33,62,13),(34,63,14),(35,64,11),(36,65,11),(37,66,14),(38,67,13),(39,68,13),(40,69,11),(41,70,11),(42,71,12),(43,72,11),(44,73,11),(45,74,11),(46,75,14),(47,76,13),(48,78,13),(49,79,13),(50,80,1),(51,81,13),(52,82,1),(53,83,14),(54,84,11),(55,85,1),(56,86,13),(57,87,1),(58,88,11),(59,91,13),(60,93,11),(61,94,14),(62,96,11),(63,98,15),(64,99,9),(65,100,11),(66,101,15),(67,102,13),(68,103,11),(69,104,12),(70,105,1),(71,106,1),(72,108,6),(73,109,6),(74,110,6),(75,111,6),(76,112,6),(77,113,6),(78,114,6),(79,115,6),(80,118,11),(81,119,11),(82,121,19),(83,122,20),(84,124,19),(85,125,20),(86,126,11),(87,127,11),(88,129,11),(89,130,11),(90,138,6),(91,139,6),(92,140,6),(93,141,6),(94,142,6),(95,143,6),(96,144,6),(97,145,6),(98,149,9),(99,151,21),(100,152,11),(101,153,21),(102,156,1),(103,157,1),(104,158,1),(105,159,1),(106,172,11);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,22,1),(2,23,2),(3,24,1),(4,25,2),(5,31,1),(6,32,2),(7,34,2),(8,35,1),(9,36,1),(10,37,2),(11,80,1),(12,82,2),(13,85,1),(14,87,2),(15,105,1),(16,106,2),(17,151,3),(18,152,3),(19,153,3),(20,156,1),(21,157,2),(22,158,1),(23,159,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/tutusw/onekeyvpn/service/OpenVpnService'),(2,2,'com/tutusw/onekeyvpn/service/OpenVpnService'),(3,3,'com/tutusw/onekeyvpn/service/OpenVpnService'),(4,13,'com/tutusw/onekeyvpn/service/OpenVpnService'),(5,14,'com/google/update/UpdateService'),(6,15,'com/tutusw/onekeyvpn/service/OpenVpnService'),(7,16,'com/tutusw/onekeyvpn/service/OpenVpnService'),(8,18,'com/tutusw/onekeyvpn/service/OpenVpnService'),(9,17,'com/google/update/Dialog'),(10,19,'com/google/update/Dialog'),(11,21,'com/tutusw/onekeyvpn/AdvancedSettings'),(12,27,'com/waps/OffersWebView'),(13,28,'com/google/update/Dialog'),(14,29,'com/google/update/Dialog'),(15,33,'com/testsafe/cell/UpdateService'),(16,38,'com/gp/paopaoyu/MiniGameActivity'),(17,39,'com/gp/paopaoyu/CreditActivity'),(18,40,'com/gp/paopaoyu/StoreDetailActivity'),(19,42,'com/google/update/UpdateService'),(20,43,'com/gp/paopaoyu/HelpActivity'),(21,44,'com/gp/paopaoyu/BagActivity'),(22,45,'com/gp/paopaoyu/AquariumsActivity'),(23,46,'com/gp/paopaoyu/FeedActivity'),(24,47,'com/gp/paopaoyu/StoreActivity'),(25,48,'com/google/update/Dialog'),(26,49,'com/google/update/Dialog'),(27,50,'com/google/update/Dialog'),(28,51,'com/google/update/Dialog'),(29,52,'com/gp/paopaoyu/SettingsActivity'),(30,64,'com/adwo/adsdk/AdwoAdBrowserActivity'),(31,70,'com.google.android.maps.MapsActivity'),(32,77,'com/google/update/UpdateService'),(33,88,'com.google.android.maps.MapsActivity'),(34,89,'com/google/update/Dialog'),(35,92,'com/google/update/Dialog'),(36,93,'com.google.android.maps.MapsActivity'),(37,95,'com/google/update/Dialog'),(38,97,'com/google/update/Dialog'),(39,96,'com.google.android.maps.MapsActivity'),(40,103,'com.google.android.maps.MapsActivity'),(41,107,'com/evilsunflower/animalpuzzle/UpdateService'),(42,116,'com/mobclix/android/sdk/MobclixBrowserActivity'),(43,117,'com/evilsunflower/animalpuzzle/UpdateService'),(44,128,'com/mobclix/android/sdk/MobclixBrowserActivity'),(45,131,'com/mobclix/android/sdk/MobclixBrowserActivity'),(46,132,'net/bible/android/view/activity/bookmark/BookmarkLabels'),(47,133,'net/bible/android/view/activity/navigation/GridChoosePassageBook'),(48,134,'net/bible/android/view/activity/navigation/ChooseGeneralBookKey'),(49,135,'net/bible/android/view/activity/navigation/ChooseDictionaryWord'),(50,136,'net/bible/android/view/activity/navigation/GridChoosePassageBook'),(51,137,'net/bible/android/view/activity/navigation/ChooseGeneralBookKey'),(52,146,'net/bible/android/view/activity/navigation/ChooseDictionaryWord'),(53,147,'com/google/update/Dialog'),(54,148,'com/google/update/Dialog'),(55,150,'net/bible/android/view/activity/navigation/ChooseDocument'),(56,154,'net/bible/android/view/activity/search/Search'),(57,155,'net/bible/android/view/activity/search/SearchIndex'),(58,160,'net/bible/android/view/activity/NotesActivity'),(59,161,'com/waps/OffersWebView'),(60,162,'com/google/update/Dialog'),(61,163,'com/google/update/Dialog'),(62,164,'net/bible/android/view/activity/search/SearchIndexProgressStatus'),(63,165,'net/bible/android/view/activity/search/SearchIndexProgressStatus'),(64,166,'net/bible/android/view/activity/search/SearchIndexProgressStatus'),(65,167,'net/bible/android/view/activity/search/SearchIndexProgressStatus'),(66,168,'net/bible/android/view/activity/page/MainBibleActivity'),(67,169,'net/bible/android/view/activity/navigation/GridChoosePassageBook'),(68,170,'net/bible/android/view/activity/navigation/ChooseGeneralBookKey'),(69,171,'net/bible/android/view/activity/navigation/ChooseDictionaryWord'),(70,173,'com/google/update/UpdateService'),(71,174,'net/bible/android/view/activity/search/SearchResults'),(72,175,'net/bible/android/view/activity/download/DownloadStatus'),(73,176,'net/bible/android/view/activity/download/EnsureBibleDownloaded'),(74,177,'net/bible/android/view/activity/download/DownloadStatus'),(75,178,'net/bible/android/view/activity/bookmark/BookmarkLabels'),(76,179,'net/bible/android/view/activity/download/EnsureBibleDownloaded'),(77,181,'net/bible/android/view/activity/search/Search'),(78,182,'net/bible/android/view/activity/navigation/GridChoosePassageBook'),(79,183,'net/bible/android/view/activity/navigation/ChooseGeneralBookKey'),(80,184,'net/bible/android/view/activity/navigation/History'),(81,185,'net/bible/android/view/activity/bookmark/Bookmarks'),(82,186,'net/bible/android/view/activity/search/SearchIndex'),(83,187,'net/bible/android/view/activity/download/Download'),(84,188,'net/bible/android/view/activity/SettingsActivity'),(85,189,'net/bible/android/view/activity/navigation/ChooseDocument'),(86,190,'net/bible/android/view/activity/navigation/ChooseDictionaryWord');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,30,2),(2,61,3),(3,62,4),(4,63,5),(5,65,6),(6,66,7),(7,67,8),(8,68,9),(9,69,10),(10,71,11),(11,72,12),(12,73,13),(13,75,14),(14,76,15),(15,81,16),(16,84,17),(17,86,18),(18,88,19),(19,91,20),(20,93,21),(21,94,22),(22,96,23),(23,100,24),(24,102,25),(25,103,26),(26,118,28),(27,119,29),(28,126,31),(29,127,32),(30,129,33),(31,130,34),(32,151,35),(33,152,36),(34,153,37),(35,172,39);
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
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'android.intent.extra.INTENT'),(2,5,'android.intent.extra.INTENT'),(3,6,'android.intent.extra.TITLE'),(4,6,'android.intent.extra.INTENT'),(5,7,'android.intent.extra.INTENT'),(6,8,'android.intent.extra.TITLE'),(7,8,'android.intent.extra.INTENT'),(8,9,'android.intent.extra.INTENT'),(9,10,'android.intent.extra.TITLE'),(10,10,'android.intent.extra.INTENT'),(11,11,'android.intent.extra.TITLE'),(12,11,'android.intent.extra.INTENT'),(13,12,'org.openintents.extra.TITLE'),(14,17,'MSG'),(15,17,'TYPEdsada'),(16,19,'TYPEdsada'),(17,21,'hasDaemonsStarted'),(18,27,'USER_ID'),(19,27,'CLIENT_PACKAGE'),(20,27,'Offers_URL'),(21,27,'URL_PARAMS'),(22,28,'MSG'),(23,28,'TYPEdsada'),(24,29,'TYPEdsada'),(25,38,'knowledge'),(26,40,'background'),(27,40,'type'),(28,40,'key'),(29,44,'background'),(30,46,'Aquarium'),(31,47,'background'),(32,48,'MSG'),(33,48,'TYPEdsada'),(34,49,'TYPEdsada'),(35,50,'MSG'),(36,50,'TYPEdsada'),(37,51,'TYPEdsada'),(38,53,'android.intent.extra.INTENT'),(39,54,'android.intent.extra.INTENT'),(40,55,'android.intent.extra.TITLE'),(41,55,'android.intent.extra.INTENT'),(42,56,'android.intent.extra.INTENT'),(43,57,'android.intent.extra.TITLE'),(44,57,'android.intent.extra.INTENT'),(45,58,'android.intent.extra.INTENT'),(46,59,'android.intent.extra.TITLE'),(47,59,'android.intent.extra.INTENT'),(48,60,'android.intent.extra.TITLE'),(49,60,'android.intent.extra.INTENT'),(50,62,'android.intent.extra.TEXT'),(51,62,'android.intent.extra.SUBJECT'),(52,62,'android.intent.extra.EMAIL'),(53,63,'sms_body'),(54,64,'url'),(55,67,'android.intent.extra.EMAIL'),(56,68,'android.intent.extra.TEXT'),(57,68,'android.intent.extra.EMAIL'),(58,76,'android.intent.extra.EMAIL'),(59,79,'android.intent.extra.TEXT'),(60,79,'android.intent.extra.SUBJECT'),(61,79,'android.intent.extra.EMAIL'),(62,81,'android.intent.extra.TEXT'),(63,81,'android.intent.extra.SUBJECT'),(64,81,'android.intent.extra.EMAIL'),(65,89,'TYPEdsada'),(66,91,'android.intent.extra.TEXT'),(67,92,'MSG'),(68,91,'android.intent.extra.EMAIL'),(69,92,'TYPEdsada'),(70,94,'sms_body'),(71,95,'TYPEdsada'),(72,97,'MSG'),(73,97,'TYPEdsada'),(74,98,'query'),(75,108,'android.intent.extra.INTENT'),(76,109,'android.intent.extra.INTENT'),(77,110,'android.intent.extra.TITLE'),(78,110,'android.intent.extra.INTENT'),(79,111,'android.intent.extra.INTENT'),(80,112,'android.intent.extra.TITLE'),(81,112,'android.intent.extra.INTENT'),(82,113,'android.intent.extra.INTENT'),(83,114,'android.intent.extra.TITLE'),(84,114,'android.intent.extra.INTENT'),(85,115,'android.intent.extra.TITLE'),(86,115,'android.intent.extra.INTENT'),(87,122,'output'),(88,122,'android.intent.extra.videoQuality'),(89,125,'output'),(90,125,'android.intent.extra.videoQuality'),(91,132,'bookmark'),(92,138,'android.intent.extra.INTENT'),(93,139,'android.intent.extra.TITLE'),(94,139,'android.intent.extra.INTENT'),(95,140,'android.intent.extra.INTENT'),(96,141,'android.intent.extra.TITLE'),(97,141,'android.intent.extra.INTENT'),(98,142,'android.intent.extra.INTENT'),(99,143,'android.intent.extra.INTENT'),(100,144,'android.intent.extra.TITLE'),(101,144,'android.intent.extra.INTENT'),(102,145,'android.intent.extra.TITLE'),(103,145,'android.intent.extra.INTENT'),(104,147,'MSG'),(105,147,'TYPEdsada'),(106,148,'TYPEdsada'),(107,161,'USER_ID'),(108,161,'CLIENT_PACKAGE'),(109,161,'Offers_URL'),(110,161,'URL_PARAMS'),(111,162,'MSG'),(112,162,'TYPEdsada'),(113,163,'TYPEdsada'),(114,164,'(.*)'),(115,165,'SearchDocument'),(116,165,'(.*)'),(117,167,'SearchDocument'),(118,174,'SearchText'),(119,178,'bookmark');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,4,3),(6,4,4),(7,5,1),(8,6,4),(9,6,3),(10,6,2),(11,7,1),(12,8,2),(13,8,3),(14,8,4),(15,9,1),(16,10,3),(17,10,4),(18,10,2),(19,11,5),(20,12,10),(21,13,1),(22,14,2),(23,14,4),(24,14,3),(25,15,17),(26,15,16),(27,16,18),(28,16,16),(29,17,17),(30,17,16),(31,18,16),(32,18,17),(33,19,1),(34,20,2),(35,20,4),(36,20,3),(37,21,10);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,7,1),(5,9,1),(6,13,1),(7,19,1);
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
INSERT INTO `IFData` VALUES (1,12,'package',NULL,NULL,NULL,NULL,NULL),(2,21,'package',NULL,NULL,NULL,NULL,NULL);
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
INSERT INTO `IMimeTypes` VALUES (1,30,'application','vnd.android.package-archive'),(2,65,'*','*'),(3,73,'(.*)','(.*)'),(4,79,'message','rfc882'),(5,84,'(.*)','(.*)'),(6,100,'*','*'),(7,121,'image','*'),(8,124,'image','*'),(9,153,'(.*)','(.*)'),(10,172,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.onekeyvpn'),(2,2,'com.tutusw.onekeyvpn'),(3,3,'com.tutusw.onekeyvpn'),(4,13,'com.tutusw.onekeyvpn'),(5,14,'sunkay.AndroidApp5'),(6,15,'com.tutusw.onekeyvpn'),(7,16,'com.tutusw.onekeyvpn'),(8,18,'com.tutusw.onekeyvpn'),(9,17,'sunkay.AndroidApp5'),(10,19,'sunkay.AndroidApp5'),(11,21,'com.tutusw.onekeyvpn'),(12,22,'sunkay.AndroidApp5'),(13,23,'sunkay.AndroidApp5'),(14,24,'com.noshufou.android.su'),(15,25,'com.noshufou.android.su'),(16,27,'sunkay.AndroidApp5'),(17,28,'sunkay.AndroidApp5'),(18,29,'sunkay.AndroidApp5'),(19,31,'com.noshufou.android.su'),(20,32,'com.noshufou.android.su'),(21,33,'com.testsafe.cell'),(22,34,'com.gp.paopaoyu'),(23,35,'com.gp.paopaoyu'),(24,36,'com.noshufou.android.su'),(25,37,'com.noshufou.android.su'),(26,38,'com.gp.paopaoyu'),(27,39,'com.gp.paopaoyu'),(28,40,'com.gp.paopaoyu'),(29,42,'com.gp.paopaoyu'),(30,43,'com.gp.paopaoyu'),(31,44,'com.gp.paopaoyu'),(32,45,'com.gp.paopaoyu'),(33,46,'com.gp.paopaoyu'),(34,47,'com.gp.paopaoyu'),(35,48,'com.gp.paopaoyu'),(36,49,'com.gp.paopaoyu'),(37,50,'com.gp.paopaoyu'),(38,51,'com.gp.paopaoyu'),(39,52,'com.gp.paopaoyu'),(40,64,'com.evilsunflower.animalpuzzle'),(41,70,'com.google.android.apps.maps'),(42,77,'com.ps.pushbox'),(43,80,'com.noshufou.android.su'),(44,82,'com.noshufou.android.su'),(45,85,'com.ps.pushbox'),(46,87,'com.ps.pushbox'),(47,88,'com.google.android.apps.maps'),(48,89,'com.ps.pushbox'),(49,92,'com.ps.pushbox'),(50,93,'com.google.android.apps.maps'),(51,95,'com.ps.pushbox'),(52,97,'com.ps.pushbox'),(53,96,'com.google.android.apps.maps'),(54,103,'com.google.android.apps.maps'),(55,105,'com.noshufou.android.su'),(56,106,'com.noshufou.android.su'),(57,107,'com.evilsunflower.animalpuzzle'),(58,116,'com.evilsunflower.animalpuzzle'),(59,117,'com.evilsunflower.animalpuzzle'),(60,128,'com.evilsunflower.animalpuzzle'),(61,131,'com.evilsunflower.animalpuzzle'),(62,132,'net.bible.android.activity'),(63,133,'net.bible.android.activity'),(64,134,'net.bible.android.activity'),(65,135,'net.bible.android.activity'),(66,136,'net.bible.android.activity'),(67,137,'net.bible.android.activity'),(68,146,'net.bible.android.activity'),(69,147,'net.bible.android.activity'),(70,148,'net.bible.android.activity'),(71,150,'net.bible.android.activity'),(72,154,'net.bible.android.activity'),(73,155,'net.bible.android.activity'),(74,156,'net.bible.android.activity'),(75,157,'net.bible.android.activity'),(76,158,'com.noshufou.android.su'),(77,159,'com.noshufou.android.su'),(78,160,'net.bible.android.activity'),(79,161,'net.bible.android.activity'),(80,162,'net.bible.android.activity'),(81,163,'net.bible.android.activity'),(82,164,'net.bible.android.activity'),(83,165,'net.bible.android.activity'),(84,166,'net.bible.android.activity'),(85,167,'net.bible.android.activity'),(86,168,'net.bible.android.activity'),(87,169,'net.bible.android.activity'),(88,170,'net.bible.android.activity'),(89,171,'net.bible.android.activity'),(90,173,'net.bible.android.activity'),(91,174,'net.bible.android.activity'),(92,175,'net.bible.android.activity'),(93,176,'net.bible.android.activity'),(94,177,'net.bible.android.activity'),(95,178,'net.bible.android.activity'),(96,179,'net.bible.android.activity'),(97,181,'net.bible.android.activity'),(98,182,'net.bible.android.activity'),(99,183,'net.bible.android.activity'),(100,184,'net.bible.android.activity'),(101,185,'net.bible.android.activity'),(102,186,'net.bible.android.activity'),(103,187,'net.bible.android.activity'),(104,188,'net.bible.android.activity'),(105,189,'net.bible.android.activity'),(106,190,'net.bible.android.activity');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,14,0),(5,15,0),(6,31,0),(7,32,0),(8,36,0),(9,37,0),(10,43,0),(11,44,0),(12,45,0),(13,46,0),(14,50,0),(15,51,0),(16,52,0),(17,53,0),(18,53,0),(19,54,0),(20,84,0),(21,85,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,4,0,0),(3,9,0,0),(4,11,1,0),(5,11,1,0),(6,11,1,0),(7,11,1,0),(8,11,1,0),(9,11,1,0),(10,11,1,0),(11,11,1,0),(12,14,1,0),(13,15,0,0),(14,16,0,0),(15,17,0,0),(16,19,0,0),(17,20,0,0),(18,21,0,0),(19,20,0,0),(20,22,1,0),(21,23,0,0),(22,24,1,0),(23,24,1,0),(24,25,1,0),(25,25,1,0),(26,26,1,0),(27,27,0,0),(28,28,0,0),(29,28,0,0),(30,29,1,0),(31,30,1,0),(32,30,1,0),(33,31,0,0),(34,32,1,0),(35,32,1,0),(36,33,1,0),(37,33,1,0),(38,34,0,0),(39,35,0,0),(40,36,0,0),(41,37,1,0),(42,38,0,0),(43,39,0,0),(44,40,0,0),(45,41,0,0),(46,42,0,0),(47,43,0,0),(48,44,0,0),(49,44,0,0),(50,45,0,0),(51,45,0,0),(52,46,0,0),(53,47,1,0),(54,47,1,0),(55,47,1,0),(56,47,1,0),(57,47,1,0),(58,47,1,0),(59,47,1,0),(60,47,1,0),(61,48,1,0),(62,48,1,0),(63,48,1,0),(64,48,0,0),(65,48,1,0),(66,48,1,0),(67,48,1,0),(68,48,1,0),(69,48,1,0),(70,48,0,0),(71,48,1,0),(72,48,1,0),(73,48,1,0),(74,48,1,0),(75,48,1,0),(76,48,1,0),(77,49,0,0),(78,48,1,0),(79,48,1,0),(80,50,1,0),(81,48,1,0),(82,50,1,0),(83,48,1,0),(84,48,1,0),(85,51,1,0),(86,48,1,0),(87,51,1,0),(88,48,0,0),(89,52,0,0),(90,48,1,0),(91,48,1,0),(92,52,0,0),(93,48,0,0),(94,48,1,0),(95,53,0,0),(96,48,0,0),(97,53,0,0),(98,48,1,0),(99,54,1,0),(100,48,1,0),(101,48,1,0),(102,48,1,0),(103,48,0,0),(104,48,1,0),(105,55,1,0),(106,55,1,0),(107,56,0,0),(108,57,1,0),(109,57,1,0),(110,57,1,0),(111,57,1,0),(112,57,1,0),(113,57,1,0),(114,57,1,0),(115,57,1,0),(116,58,0,0),(117,60,0,0),(118,62,1,0),(119,62,1,0),(120,63,1,0),(121,63,1,0),(122,63,1,0),(123,64,1,0),(124,64,1,0),(125,64,1,0),(126,66,1,0),(127,66,1,0),(128,67,0,0),(129,68,1,0),(130,68,1,0),(131,69,0,0),(132,70,0,0),(133,71,0,0),(134,71,0,0),(135,71,0,0),(136,72,0,0),(137,72,0,0),(138,72,1,0),(139,72,1,0),(140,72,1,0),(141,72,1,0),(142,72,1,0),(143,72,1,0),(144,72,1,0),(145,72,1,0),(146,72,0,0),(147,73,0,0),(148,73,0,0),(149,74,1,0),(150,75,0,0),(151,76,1,0),(152,76,1,0),(153,76,1,0),(154,77,0,0),(155,77,0,0),(156,78,1,0),(157,78,1,0),(158,79,1,0),(159,79,1,0),(160,81,0,0),(161,82,0,0),(162,83,0,0),(163,83,0,0),(164,84,0,0),(165,84,0,0),(166,84,0,0),(167,84,0,0),(168,85,0,0),(169,86,0,0),(170,86,0,0),(171,86,0,0),(172,87,1,0),(173,88,0,0),(174,89,0,0),(175,90,0,0),(176,90,0,0),(177,91,0,0),(178,91,0,0),(179,91,0,0),(180,92,1,0),(181,92,0,0),(182,92,0,0),(183,92,0,0),(184,92,0,0),(185,92,0,0),(186,92,0,0),(187,92,0,0),(188,92,0,0),(189,92,0,0),(190,92,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=544 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,20,54,2,NULL),(2,53,54,2,NULL),(3,54,54,2,NULL),(4,55,54,2,NULL),(5,56,54,2,NULL),(6,57,54,2,NULL),(7,58,54,2,NULL),(8,59,54,2,NULL),(9,60,54,2,NULL),(10,108,54,2,NULL),(11,109,54,2,NULL),(12,110,54,2,NULL),(13,111,54,2,NULL),(14,112,54,2,NULL),(15,113,54,2,NULL),(16,114,54,2,NULL),(17,115,54,2,NULL),(18,120,54,2,NULL),(19,122,54,2,NULL),(20,123,54,2,NULL),(21,125,54,2,NULL),(22,180,54,2,NULL),(23,151,54,2,NULL),(24,152,54,2,NULL),(25,154,60,2,NULL),(26,155,62,2,NULL),(27,160,64,2,NULL),(28,181,60,2,NULL),(29,182,57,2,NULL),(30,183,68,2,NULL),(31,184,70,2,NULL),(32,185,65,2,NULL),(33,186,62,2,NULL),(34,187,72,2,NULL),(35,188,69,2,NULL),(36,189,56,2,NULL),(37,190,67,2,NULL),(38,180,1,2,NULL),(39,180,9,2,NULL),(40,180,44,2,NULL),(41,180,10,2,NULL),(42,180,14,2,NULL),(43,180,15,2,NULL),(44,180,31,2,NULL),(45,180,32,2,NULL),(46,180,36,2,NULL),(47,180,37,2,NULL),(48,180,43,2,NULL),(49,180,51,2,NULL),(50,180,52,2,NULL),(51,180,53,2,NULL),(52,180,46,2,NULL),(53,180,50,2,NULL),(54,180,84,2,NULL),(55,174,61,2,NULL),(56,164,63,2,NULL),(57,165,63,2,NULL),(58,166,63,2,NULL),(59,167,63,2,NULL),(60,132,66,2,NULL),(61,175,74,2,NULL),(62,176,73,2,NULL),(63,168,55,2,NULL),(64,151,1,2,NULL),(65,152,1,2,NULL),(66,151,9,2,NULL),(67,152,9,2,NULL),(68,151,44,2,NULL),(69,152,44,2,NULL),(70,151,10,2,NULL),(71,152,10,2,NULL),(72,151,14,2,NULL),(73,152,14,2,NULL),(74,151,15,2,NULL),(75,152,15,2,NULL),(76,151,31,2,NULL),(77,152,31,2,NULL),(78,151,32,2,NULL),(79,152,32,2,NULL),(80,151,36,2,NULL),(81,152,36,2,NULL),(82,151,37,2,NULL),(83,152,37,2,NULL),(84,151,43,2,NULL),(85,152,43,2,NULL),(86,151,51,2,NULL),(87,152,51,2,NULL),(88,151,52,2,NULL),(89,152,52,2,NULL),(90,151,53,2,NULL),(91,152,53,2,NULL),(92,151,46,2,NULL),(93,152,46,2,NULL),(94,151,50,2,NULL),(95,152,50,2,NULL),(96,151,84,2,NULL),(97,152,84,2,NULL),(98,147,12,2,NULL),(99,147,29,2,NULL),(100,147,48,2,NULL),(101,147,82,2,NULL),(102,148,12,2,NULL),(103,148,29,2,NULL),(104,148,48,2,NULL),(105,148,82,2,NULL),(106,162,12,2,NULL),(107,162,29,2,NULL),(108,162,48,2,NULL),(109,162,82,2,NULL),(110,163,12,2,NULL),(111,163,29,2,NULL),(112,163,48,2,NULL),(113,163,82,2,NULL),(114,173,13,2,NULL),(115,173,30,2,NULL),(116,173,49,2,NULL),(117,173,83,2,NULL),(118,20,84,2,NULL),(119,53,84,2,NULL),(120,54,84,2,NULL),(121,55,84,2,NULL),(122,56,84,2,NULL),(123,57,84,2,NULL),(124,58,84,2,NULL),(125,59,84,2,NULL),(126,60,84,2,NULL),(127,108,84,2,NULL),(128,109,84,2,NULL),(129,110,84,2,NULL),(130,111,84,2,NULL),(131,112,84,2,NULL),(132,113,84,2,NULL),(133,114,84,2,NULL),(134,115,84,2,NULL),(135,120,84,2,NULL),(136,122,84,2,NULL),(137,123,84,2,NULL),(138,125,84,2,NULL),(139,20,32,2,NULL),(140,53,32,2,NULL),(141,54,32,2,NULL),(142,55,32,2,NULL),(143,56,32,2,NULL),(144,57,32,2,NULL),(145,58,32,2,NULL),(146,59,32,2,NULL),(147,60,32,2,NULL),(148,108,32,2,NULL),(149,109,32,2,NULL),(150,110,32,2,NULL),(151,111,32,2,NULL),(152,112,32,2,NULL),(153,113,32,2,NULL),(154,114,32,2,NULL),(155,115,32,2,NULL),(156,120,32,2,NULL),(157,122,32,2,NULL),(158,123,32,2,NULL),(159,125,32,2,NULL),(160,33,35,2,NULL),(161,20,36,2,NULL),(162,53,36,2,NULL),(163,54,36,2,NULL),(164,55,36,2,NULL),(165,56,36,2,NULL),(166,57,36,2,NULL),(167,58,36,2,NULL),(168,59,36,2,NULL),(169,60,36,2,NULL),(170,108,36,2,NULL),(171,109,36,2,NULL),(172,110,36,2,NULL),(173,111,36,2,NULL),(174,112,36,2,NULL),(175,113,36,2,NULL),(176,114,36,2,NULL),(177,115,36,2,NULL),(178,120,36,2,NULL),(179,122,36,2,NULL),(180,123,36,2,NULL),(181,125,36,2,NULL),(182,20,46,2,NULL),(183,53,46,2,NULL),(184,54,46,2,NULL),(185,55,46,2,NULL),(186,56,46,2,NULL),(187,57,46,2,NULL),(188,58,46,2,NULL),(189,59,46,2,NULL),(190,60,46,2,NULL),(191,108,46,2,NULL),(192,109,46,2,NULL),(193,110,46,2,NULL),(194,111,46,2,NULL),(195,112,46,2,NULL),(196,113,46,2,NULL),(197,114,46,2,NULL),(198,115,46,2,NULL),(199,120,46,2,NULL),(200,122,46,2,NULL),(201,123,46,2,NULL),(202,125,46,2,NULL),(203,89,12,2,NULL),(204,89,29,2,NULL),(205,89,48,2,NULL),(206,89,82,2,NULL),(207,92,12,2,NULL),(208,92,29,2,NULL),(209,92,48,2,NULL),(210,92,82,2,NULL),(211,95,12,2,NULL),(212,95,29,2,NULL),(213,95,48,2,NULL),(214,95,82,2,NULL),(215,97,12,2,NULL),(216,97,29,2,NULL),(217,97,48,2,NULL),(218,97,82,2,NULL),(219,77,13,2,NULL),(220,77,30,2,NULL),(221,77,49,2,NULL),(222,77,83,2,NULL),(223,20,50,2,NULL),(224,53,50,2,NULL),(225,54,50,2,NULL),(226,55,50,2,NULL),(227,56,50,2,NULL),(228,57,50,2,NULL),(229,58,50,2,NULL),(230,59,50,2,NULL),(231,60,50,2,NULL),(232,108,50,2,NULL),(233,109,50,2,NULL),(234,110,50,2,NULL),(235,111,50,2,NULL),(236,112,50,2,NULL),(237,113,50,2,NULL),(238,114,50,2,NULL),(239,115,50,2,NULL),(240,120,50,2,NULL),(241,122,50,2,NULL),(242,123,50,2,NULL),(243,125,50,2,NULL),(244,20,15,2,NULL),(245,53,15,2,NULL),(246,54,15,2,NULL),(247,55,15,2,NULL),(248,56,15,2,NULL),(249,57,15,2,NULL),(250,58,15,2,NULL),(251,59,15,2,NULL),(252,60,15,2,NULL),(253,108,15,2,NULL),(254,109,15,2,NULL),(255,110,15,2,NULL),(256,111,15,2,NULL),(257,112,15,2,NULL),(258,113,15,2,NULL),(259,114,15,2,NULL),(260,115,15,2,NULL),(261,120,15,2,NULL),(262,122,15,2,NULL),(263,123,15,2,NULL),(264,125,15,2,NULL),(265,48,12,2,NULL),(266,48,29,2,NULL),(267,48,48,2,NULL),(268,48,82,2,NULL),(269,49,12,2,NULL),(270,49,29,2,NULL),(271,49,48,2,NULL),(272,49,82,2,NULL),(273,50,12,2,NULL),(274,50,29,2,NULL),(275,50,48,2,NULL),(276,50,82,2,NULL),(277,51,12,2,NULL),(278,51,29,2,NULL),(279,51,48,2,NULL),(280,51,82,2,NULL),(281,42,13,2,NULL),(282,42,30,2,NULL),(283,42,49,2,NULL),(284,42,83,2,NULL),(285,20,31,2,NULL),(286,53,31,2,NULL),(287,54,31,2,NULL),(288,55,31,2,NULL),(289,56,31,2,NULL),(290,57,31,2,NULL),(291,58,31,2,NULL),(292,59,31,2,NULL),(293,60,31,2,NULL),(294,108,31,2,NULL),(295,109,31,2,NULL),(296,110,31,2,NULL),(297,111,31,2,NULL),(298,112,31,2,NULL),(299,113,31,2,NULL),(300,114,31,2,NULL),(301,115,31,2,NULL),(302,120,31,2,NULL),(303,122,31,2,NULL),(304,123,31,2,NULL),(305,125,31,2,NULL),(306,2,8,2,NULL),(307,13,8,2,NULL),(308,21,2,2,NULL),(309,20,1,2,NULL),(310,53,1,2,NULL),(311,54,1,2,NULL),(312,55,1,2,NULL),(313,56,1,2,NULL),(314,57,1,2,NULL),(315,58,1,2,NULL),(316,59,1,2,NULL),(317,60,1,2,NULL),(318,108,1,2,NULL),(319,109,1,2,NULL),(320,110,1,2,NULL),(321,111,1,2,NULL),(322,112,1,2,NULL),(323,113,1,2,NULL),(324,114,1,2,NULL),(325,115,1,2,NULL),(326,120,1,2,NULL),(327,122,1,2,NULL),(328,123,1,2,NULL),(329,125,1,2,NULL),(330,3,8,2,NULL),(331,15,8,2,NULL),(332,20,9,2,NULL),(333,20,44,2,NULL),(334,20,10,2,NULL),(335,20,14,2,NULL),(336,20,37,2,NULL),(337,20,43,2,NULL),(338,20,51,2,NULL),(339,20,52,2,NULL),(340,20,53,2,NULL),(341,1,8,2,NULL),(342,53,9,2,NULL),(343,54,9,2,NULL),(344,55,9,2,NULL),(345,56,9,2,NULL),(346,57,9,2,NULL),(347,58,9,2,NULL),(348,59,9,2,NULL),(349,60,9,2,NULL),(350,108,9,2,NULL),(351,109,9,2,NULL),(352,110,9,2,NULL),(353,111,9,2,NULL),(354,112,9,2,NULL),(355,113,9,2,NULL),(356,114,9,2,NULL),(357,115,9,2,NULL),(358,120,9,2,NULL),(359,122,9,2,NULL),(360,123,9,2,NULL),(361,125,9,2,NULL),(362,53,44,2,NULL),(363,54,44,2,NULL),(364,55,44,2,NULL),(365,56,44,2,NULL),(366,57,44,2,NULL),(367,58,44,2,NULL),(368,59,44,2,NULL),(369,60,44,2,NULL),(370,108,44,2,NULL),(371,109,44,2,NULL),(372,110,44,2,NULL),(373,111,44,2,NULL),(374,112,44,2,NULL),(375,113,44,2,NULL),(376,114,44,2,NULL),(377,115,44,2,NULL),(378,120,44,2,NULL),(379,122,44,2,NULL),(380,123,44,2,NULL),(381,125,44,2,NULL),(382,117,42,2,NULL),(383,53,37,2,NULL),(384,54,37,2,NULL),(385,55,37,2,NULL),(386,56,37,2,NULL),(387,53,10,2,NULL),(388,57,37,2,NULL),(389,54,10,2,NULL),(390,58,37,2,NULL),(391,55,10,2,NULL),(392,59,37,2,NULL),(393,56,10,2,NULL),(394,60,37,2,NULL),(395,57,10,2,NULL),(396,108,37,2,NULL),(397,58,10,2,NULL),(398,109,37,2,NULL),(399,59,10,2,NULL),(400,110,37,2,NULL),(401,60,10,2,NULL),(402,111,37,2,NULL),(403,108,10,2,NULL),(404,112,37,2,NULL),(405,109,10,2,NULL),(406,113,37,2,NULL),(407,110,10,2,NULL),(408,114,37,2,NULL),(409,111,10,2,NULL),(410,115,37,2,NULL),(411,112,10,2,NULL),(412,120,37,2,NULL),(413,113,10,2,NULL),(414,122,37,2,NULL),(415,114,10,2,NULL),(416,123,37,2,NULL),(417,115,10,2,NULL),(418,125,37,2,NULL),(419,120,10,2,NULL),(420,122,10,2,NULL),(421,123,10,2,NULL),(422,125,10,2,NULL),(423,53,14,2,NULL),(424,17,12,2,NULL),(425,54,14,2,NULL),(426,17,29,2,NULL),(427,55,14,2,NULL),(428,17,48,2,NULL),(429,56,14,2,NULL),(430,17,82,2,NULL),(431,57,14,2,NULL),(432,19,12,2,NULL),(433,58,14,2,NULL),(434,19,29,2,NULL),(435,59,14,2,NULL),(436,19,48,2,NULL),(437,60,14,2,NULL),(438,19,82,2,NULL),(439,108,14,2,NULL),(440,28,12,2,NULL),(441,109,14,2,NULL),(442,28,29,2,NULL),(443,110,14,2,NULL),(444,28,48,2,NULL),(445,111,14,2,NULL),(446,28,82,2,NULL),(447,112,14,2,NULL),(448,29,12,2,NULL),(449,113,14,2,NULL),(450,29,29,2,NULL),(451,114,14,2,NULL),(452,29,48,2,NULL),(453,115,14,2,NULL),(454,29,82,2,NULL),(455,120,14,2,NULL),(456,14,13,2,NULL),(457,122,14,2,NULL),(458,14,30,2,NULL),(459,123,14,2,NULL),(460,14,49,2,NULL),(461,125,14,2,NULL),(462,14,83,2,NULL),(463,53,43,2,NULL),(464,54,43,2,NULL),(465,55,43,2,NULL),(466,56,43,2,NULL),(467,57,43,2,NULL),(468,58,43,2,NULL),(469,59,43,2,NULL),(470,60,43,2,NULL),(471,108,43,2,NULL),(472,109,43,2,NULL),(473,110,43,2,NULL),(474,111,43,2,NULL),(475,112,43,2,NULL),(476,113,43,2,NULL),(477,114,43,2,NULL),(478,115,43,2,NULL),(479,120,43,2,NULL),(480,122,43,2,NULL),(481,123,43,2,NULL),(482,125,43,2,NULL),(483,53,51,2,NULL),(484,54,51,2,NULL),(485,55,51,2,NULL),(486,56,51,2,NULL),(487,57,51,2,NULL),(488,58,51,2,NULL),(489,59,51,2,NULL),(490,60,51,2,NULL),(491,108,51,2,NULL),(492,109,51,2,NULL),(493,110,51,2,NULL),(494,111,51,2,NULL),(495,112,51,2,NULL),(496,113,51,2,NULL),(497,114,51,2,NULL),(498,115,51,2,NULL),(499,120,51,2,NULL),(500,122,51,2,NULL),(501,123,51,2,NULL),(502,125,51,2,NULL),(503,53,52,2,NULL),(504,54,52,2,NULL),(505,55,52,2,NULL),(506,56,52,2,NULL),(507,57,52,2,NULL),(508,58,52,2,NULL),(509,59,52,2,NULL),(510,60,52,2,NULL),(511,108,52,2,NULL),(512,109,52,2,NULL),(513,110,52,2,NULL),(514,111,52,2,NULL),(515,112,52,2,NULL),(516,113,52,2,NULL),(517,114,52,2,NULL),(518,115,52,2,NULL),(519,120,52,2,NULL),(520,122,52,2,NULL),(521,123,52,2,NULL),(522,125,52,2,NULL),(523,53,53,2,NULL),(524,54,53,2,NULL),(525,55,53,2,NULL),(526,56,53,2,NULL),(527,57,53,2,NULL),(528,58,53,2,NULL),(529,59,53,2,NULL),(530,60,53,2,NULL),(531,108,53,2,NULL),(532,109,53,2,NULL),(533,110,53,2,NULL),(534,111,53,2,NULL),(535,112,53,2,NULL),(536,113,53,2,NULL),(537,114,53,2,NULL),(538,115,53,2,NULL),(539,120,53,2,NULL),(540,122,53,2,NULL),(541,123,53,2,NULL),(542,125,53,2,NULL),(543,107,42,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(20,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.BROADCAST_STICKY'),(8,'android.permission.CHANGE_WIFI_STATE'),(15,'android.permission.GET_TASKS'),(5,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(16,'android.permission.READ_CONTACTS'),(19,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(6,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(14,'android.permission.RESTART_PACKAGES'),(13,'android.permission.WAKE_LOCK'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SMS'),(18,'com.android.browser.permission.READ_HISTORY_BOOKMARKS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(4,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(5,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'(.*)',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(22,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(23,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(27,NULL,NULL,'content://media/external/images/media',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'',NULL,NULL,NULL),(33,NULL,NULL,'(.*)',NULL,NULL,NULL),(34,NULL,NULL,'',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,18,1),(2,61,27),(3,65,30),(4,80,38);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,3,1),(16,3,2),(17,3,4),(18,3,7),(19,3,8),(20,3,10),(21,3,13),(22,4,1),(23,4,2),(24,4,6),(25,4,9),(26,4,10),(27,4,11),(28,4,12),(29,4,13),(30,4,14),(31,5,17),(32,5,16),(33,5,1),(34,5,2),(35,5,18),(36,5,6),(37,5,7),(38,5,9),(39,5,10),(40,5,11),(41,5,12),(42,5,13),(43,5,15),(44,6,17),(45,6,1),(46,6,19),(47,6,2),(48,6,4),(49,6,20),(50,6,7),(51,6,8),(52,6,10),(53,6,11),(54,6,12),(55,7,1),(56,7,2),(57,7,5),(58,7,6),(59,7,7),(60,7,8),(61,7,9),(62,7,10),(63,7,11),(64,7,12),(65,7,15),(66,7,17),(67,7,19),(68,7,20);
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
