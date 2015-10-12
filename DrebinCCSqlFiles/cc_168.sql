-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_168
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (27,'(.*)'),(17,'Speedup.intent.action.refreshservice'),(24,'Speedup.intent.action.temp'),(7,'Speedup.intent.action.updatewidget'),(5,'android.appwidget.action.APPWIDGET_CONFIGURE'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(23,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CHOOSER'),(20,'android.intent.action.DIAL'),(13,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(25,'android.intent.action.PACKAGE_ADDED'),(19,'android.intent.action.SCREEN_OFF'),(18,'android.intent.action.SCREEN_ON'),(8,'android.intent.action.SEARCH'),(21,'android.intent.action.SEND'),(22,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(10,'android.intent.action.VIEW'),(26,'android.intent.action.WEB_SEARCH'),(15,'android.net.conn.CONNECTIVITY_CHANGE'),(16,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(28,'com.google.zxing.client.android.SCAN'),(9,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(12,'org.openintents.action.PICK_DIRECTORY'),(11,'org.openintents.action.PICK_FILE');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',7),(2,'com.tutusw.phonespeedup',14),(3,'com.ps.kickfly',3),(4,'com.safetest.compass',9),(5,'com.evilsunflower.compass',8),(6,'com.livegame.android.shelves',11),(7,'org.openintents.filemanager',12);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.OPENABLE');
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
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(6,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(7,1,'com.tutusw.onekeyvpn.ImportFiles'),(8,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(9,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(10,2,'com.tutusw.phonespeedup.IntroActivity'),(11,2,'com.tutusw.phonespeedup.InfoActivity'),(12,3,'com.ps.kickfly.GameMainActivity'),(13,2,'com.google.ssearch.Dialog'),(14,2,'com.tutusw.phonespeedup.Home'),(15,2,'com.tutusw.phonespeedup.PerflockActivity'),(16,3,'com.ps.kickfly.KickFly'),(17,2,'com.tutusw.phonespeedup.ProfilesActivity'),(18,3,'com.ps.kickfly.GameModeActivity'),(19,2,'com.tutusw.phonespeedup.ProfileEditActivity'),(20,2,'com.tutusw.phonespeedup.AdvancedActivity'),(21,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(22,2,'com.tutusw.phonespeedup.AboutActivity'),(23,3,'com.google.update.Dialog'),(24,2,'com.tutusw.phonespeedup.StresstestActivity'),(25,3,'com.google.update.UpdateService'),(26,2,'com.tutusw.phonespeedup.Setcpu'),(27,3,'com.google.update.Receiver'),(28,2,'com.tutusw.phonespeedup.WidgetConfigActivity'),(29,2,'com.google.ssearch.SearchService'),(30,2,'com.tutusw.phonespeedup.StartupService'),(31,2,'com.tutusw.phonespeedup.ProfilesService'),(32,2,'com.tutusw.phonespeedup.WidgetService'),(33,2,'com.google.ssearch.Receiver'),(34,2,'com.tutusw.phonespeedup.StartupReceiver'),(35,2,'com.tutusw.phonespeedup.Widget'),(36,4,'com.safetest.compass.CompassActivity'),(37,5,'com.evilsunflower.compass.Main'),(38,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(39,4,'com.safetest.compass.ShowTips'),(40,5,'com.evilsunflower.compass.ShowTips'),(41,4,'com.safetest.compass.widget.CompassService'),(42,5,'com.evilsunflower.compass.UpdateService'),(43,4,'com.safetest.compass.UpdateService'),(44,5,'com.evilsunflower.compass.Receiver'),(45,4,'com.safetest.compass.widget.CompassWidget'),(46,4,'com.safetest.compass.Receiver'),(47,6,'com.livegame.android.shelves.activity.ShelvesActivity'),(48,6,'com.livegame.android.shelves.activity.AddBookActivity'),(49,6,'com.livegame.android.shelves.activity.BookDetailsActivity'),(50,6,'com.livegame.android.shelves.activity.SettingsActivity'),(51,6,'com.google.ads.AdActivity'),(52,7,'org.openintents.filemanager.FileManagerActivity'),(53,6,'com.vpon.adon.android.WebInApp'),(54,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(55,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(56,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(57,6,'com.waps.OffersWebView'),(58,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(59,6,'com.google.update.Dialog'),(60,6,'com.google.update.UpdateService'),(61,6,'com.google.update.Receiver'),(62,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(63,6,'com.livegame.android.shelves.provider.BooksProvider'),(64,7,'org.openintents.filemanager.PreferenceActivity'),(65,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(66,7,'org.openintents.distribution.EulaActivity'),(67,7,'org.openintents.distribution.NewVersionActivity'),(68,7,'com.google.ads.AdActivity'),(69,7,'com.vpon.adon.android.WebInApp'),(70,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(71,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(72,7,'com.waps.OffersWebView'),(73,7,'com.google.update.Dialog'),(74,7,'com.google.update.UpdateService'),(75,7,'com.google.update.Receiver'),(76,7,'org.openintents.filemanager.FileManagerProvider'),(77,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(78,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(79,3,'com.google.update.UpdateService$MyThread'),(80,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(81,3,'com.ju6.a'),(82,3,'com.google.update.Dialog$1'),(83,3,'com.google.update.Dialog$2'),(84,5,'com.evilsunflower.compass.ShowTips$1'),(85,2,'com.google.ssearch.Dialog$1'),(86,2,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(87,2,'com.tutusw.phonespeedup.Home$clicker'),(88,4,'com.safetest.compass.widget.CompassService$1'),(89,4,'com.safetest.compass.MyLocationManager$ConnectivityBroadcastReceiver'),(90,4,'com.adwo.adsdk.D'),(91,2,'com.tutusw.phonespeedup.WidgetService$1'),(92,4,'android.appwidget.AppWidgetProvider'),(93,2,'com.tutusw.phonespeedup.ProfilesService$1'),(94,2,'android.appwidget.AppWidgetProvider'),(95,4,'com.adwo.adsdk.g'),(96,2,'com.google.ssearch.SearchService$MyThread'),(97,7,'com.google.update.Dialog$2'),(98,6,'com.waps.q'),(99,7,'com.ju6.a'),(100,6,'com.waps.o'),(101,7,'com.google.update.Dialog$1'),(102,6,'com.livegame.android.shelves.provider.BooksManager'),(103,6,'com.waps.aa'),(104,7,'com.google.update.UpdateService$MyThread'),(105,6,'com.waps.ac'),(106,6,'com.waps.z'),(107,7,'com.waps.k'),(108,4,'com.safetest.compass.ShowTips$1'),(109,6,'com.google.update.Dialog$1'),(110,6,'com.livegame.android.shelves.provider.BooksUpdater'),(111,7,'com.waps.m'),(112,6,'com.google.update.UpdateService$AA'),(113,7,'com.waps.AppConnect'),(114,6,'com.google.update.Dialog$2'),(115,6,'com.waps.AppConnect');
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,21,'shouldShowBottomBar'),(2,23,'TYPEdsada'),(3,25,'ST_MY_PID'),(4,23,'MSG'),(5,21,'shouldShowTitlebar'),(6,21,'shouldResizeOverlay'),(7,21,'overlayTransition'),(8,25,'ST_START_DELAY'),(9,21,'url'),(10,21,'shouldEnableBottomBar'),(11,21,'shouldMakeOverlayTransparent'),(12,21,'overlayTitle'),(13,21,'transitionTime'),(14,42,'SAFE_START'),(15,42,'SAFE_PID'),(16,40,'MM'),(17,13,'TYPEdsada'),(18,19,'row_id'),(19,63,'org.openintents.extra.launch_activity_class'),(20,62,'org.openintents.extra.launch_activity_class'),(21,68,'CLIENT_PACKAGE'),(22,69,'TYPEdsada'),(23,67,'shouldEnableBottomBar'),(24,13,'MSG'),(25,52,'DEVICE_ID'),(26,67,'overlayTransition'),(27,52,'APP_ID'),(28,67,'transitionTime'),(29,69,'MSG'),(30,48,'shelves.search.inprogress'),(31,48,'shelves.add.inprogress'),(32,53,'url'),(33,65,'url'),(34,47,'query'),(35,55,'shouldResizeOverlay'),(36,68,'isFinshClose'),(37,52,'CLIENT_PACKAGE'),(38,55,'shouldEnableBottomBar'),(39,56,'APP_ID'),(40,47,'APP_ID'),(41,56,'WAPS_ID'),(42,28,'appWidgetId'),(43,47,'WAPS_ID'),(44,68,'URL_PARAMS'),(45,67,'shouldShowTitlebar'),(46,67,'url'),(47,64,'com.google.ads.AdOpener'),(48,56,'UrlPath'),(49,63,'org.openintents.extra.launch_activity_intent'),(50,47,'UMENG_APPKEY'),(51,62,'org.openintents.extra.launch_activity_intent'),(52,47,'shelves.import.index'),(53,68,'Offers_URL'),(54,57,'TYPEdsada'),(55,70,'ST_START_DELAY'),(56,47,'SCAN_RESULT'),(57,66,'isTestMode'),(58,55,'overlayTransition'),(59,52,'show_directory_input'),(60,58,'ST_MY_PID'),(61,63,'org.openintents.extra.launch_activity_package'),(62,55,'overlayTitle'),(63,62,'org.openintents.extra.launch_activity_package'),(64,47,'shelves.add.inprogress'),(65,64,'params'),(66,52,'org.openintents.extra.TITLE'),(67,52,'context_file'),(68,52,'org.openintents.extra.WRITEABLE_ONLY'),(69,66,'Adwo_PID'),(70,52,'WAPS_ID'),(71,56,'URL_PARAMS'),(72,47,'UMENG_CHANNEL'),(73,48,'shelves.search.book'),(74,55,'shouldMakeOverlayTransparent'),(75,38,'overlayTitle'),(76,67,'shouldResizeOverlay'),(77,38,'shouldMakeOverlayTransparent'),(78,38,'shouldShowBottomBar'),(79,43,'SAFE_START'),(80,38,'url'),(81,38,'transitionTime'),(82,38,'shouldResizeOverlay'),(83,38,'overlayTransition'),(84,39,'MM'),(85,38,'shouldEnableBottomBar'),(86,56,'Notify_Id'),(87,54,'Adwo_PID'),(88,38,'shouldShowTitlebar'),(89,43,'SAFE_PID'),(90,68,'URL'),(91,56,'Offers_URL'),(92,52,'current_directory'),(93,56,'WAPS_PID'),(94,64,'action'),(95,47,'WAPS_PID'),(96,56,'SHWO_FLAG'),(97,55,'shouldShowBottomBar'),(98,56,'DEVICE_ID'),(99,47,'DEVICE_ID'),(100,48,'shelves.add.book'),(101,56,'URL'),(102,54,'isTestMode'),(103,67,'shouldShowBottomBar'),(104,52,'steps_back'),(105,67,'shouldMakeOverlayTransparent'),(106,65,'adWidth'),(107,49,'shelves.extra.book_id'),(108,47,'SCAN_RESULT_FORMAT'),(109,56,'ACTIVITY_FLAG'),(110,47,'shelves.import.inprogress'),(111,68,'USER_ID'),(112,67,'overlayTitle'),(113,52,'org.openintents.extra.BUTTON_TEXT'),(114,58,'ST_START_DELAY'),(115,56,'CLIENT_PACKAGE'),(116,47,'CLIENT_PACKAGE'),(117,52,'WAPS_PID'),(118,52,'context_text'),(119,70,'ST_MY_PID'),(120,56,'isFinshClose'),(121,55,'shouldShowTitlebar'),(122,48,'shelves.add.bookToAdd'),(123,56,'Notify_Url_Params'),(124,47,'shelves.import.books'),(125,55,'url'),(126,57,'MSG'),(127,53,'adWidth'),(128,56,'USER_ID'),(129,55,'transitionTime'),(130,56,'offers_webview_tag'),(131,47,'shelves.add.book');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'s',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'r',1,NULL,NULL),(28,28,'a',1,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'s',0,NULL,NULL),(31,31,'s',0,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',0,4,NULL),(35,35,'r',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'s',0,NULL,NULL),(43,43,'s',0,NULL,NULL),(44,44,'r',1,NULL,NULL),(45,45,'r',1,NULL,NULL),(46,46,'r',1,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',1,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',1,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,55,'a',0,NULL,NULL),(55,56,'a',0,NULL,NULL),(56,57,'a',0,NULL,NULL),(57,59,'a',0,NULL,NULL),(58,60,'s',0,NULL,NULL),(59,61,'r',1,NULL,NULL),(60,63,'p',0,NULL,NULL),(61,64,'a',0,NULL,NULL),(62,66,'a',0,NULL,NULL),(63,67,'a',0,NULL,NULL),(64,68,'a',0,NULL,NULL),(65,69,'a',0,NULL,NULL),(66,70,'a',0,NULL,NULL),(67,71,'a',0,NULL,NULL),(68,72,'a',0,NULL,NULL),(69,73,'a',0,NULL,NULL),(70,74,'s',0,NULL,NULL),(71,75,'r',1,NULL,NULL),(72,76,'p',0,NULL,NULL),(73,80,'r',1,NULL,NULL),(74,88,'r',1,NULL,NULL),(75,89,'r',1,NULL,NULL),(76,90,'r',1,NULL,NULL),(77,91,'r',1,NULL,NULL),(78,92,'r',1,NULL,NULL),(79,93,'r',1,NULL,NULL),(80,94,'r',1,NULL,NULL),(81,34,'r',1,NULL,NULL),(82,98,'r',1,NULL,NULL),(83,111,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,5,8),(7,6,6),(8,7,8),(9,7,1),(10,8,8),(11,8,1),(12,9,1),(13,10,8),(14,10,1),(15,11,1),(16,12,5),(17,13,8),(18,13,1),(19,14,9),(20,15,7),(21,16,25),(22,17,1),(23,17,8),(24,18,1),(25,19,1),(26,19,8),(27,20,25),(28,21,1),(29,22,1),(30,22,8),(31,23,27),(32,24,25),(33,25,25),(34,26,23),(35,27,23),(36,28,44),(37,29,37),(38,30,40),(39,31,13),(40,32,10),(41,33,17),(42,34,17),(43,35,29),(44,36,35),(45,37,14),(46,38,22),(47,39,46),(48,40,45),(49,41,17),(50,42,14),(51,43,36),(52,44,29),(53,45,17),(54,46,30),(55,47,11),(56,48,14),(57,49,29),(58,50,62),(59,50,63),(60,51,52),(61,52,69),(62,53,70),(63,54,14),(64,55,56),(65,56,17),(66,57,69),(67,58,14),(68,59,49),(69,60,70),(70,61,56),(71,62,14),(72,63,28),(73,64,70),(74,65,34),(75,66,17),(76,67,10),(77,68,47),(78,69,33),(79,70,30),(80,71,47),(81,71,48),(82,72,49),(83,72,47),(84,73,52),(85,74,58),(86,75,59),(87,76,56),(88,77,56),(89,78,52),(90,79,58),(91,80,68),(92,81,52),(93,82,60),(94,83,47),(95,84,39),(96,85,52),(97,86,57),(98,87,64),(99,88,47),(100,89,56),(101,90,71),(102,91,47),(103,92,47),(104,93,70),(105,94,58),(106,95,47),(107,96,52),(108,97,47),(109,98,56),(110,99,57),(111,100,47),(112,101,47),(113,102,47),(114,103,47),(115,104,60);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(2,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(3,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(4,54,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(5,58,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(6,6,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(7,62,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(8,58,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(9,54,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(10,62,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(11,65,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(12,5,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(13,77,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(14,9,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(15,78,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(16,79,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(17,58,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(18,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(19,58,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(20,25,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(21,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(22,58,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(23,27,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(24,81,'<com.ju6.a: boolean b()>',178,'p',NULL),(25,25,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(26,82,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(27,83,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(28,44,'<com.evilsunflower.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(29,37,'<com.evilsunflower.compass.Main: void onCreate(android.os.Bundle)>',45,'s',NULL),(30,84,'<com.evilsunflower.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(31,85,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(32,10,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(33,86,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(34,17,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(35,29,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(36,35,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(37,87,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(38,22,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(39,46,'<com.safetest.compass.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(40,41,'<com.safetest.compass.widget.CompassService: void start(android.content.Context)>',4,'s',NULL),(41,86,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(42,14,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(43,95,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(44,29,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(45,86,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(46,30,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(47,11,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(48,14,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(49,96,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(50,66,'<org.openintents.distribution.EulaActivity: void startOriginalActivity()>',6,'a',NULL),(51,52,'<org.openintents.filemanager.FileManagerActivity: void showSettings()>',3,'a',NULL),(52,97,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(53,99,'<com.ju6.a: boolean b()>',178,'p',NULL),(54,14,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(55,100,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(56,86,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(57,101,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(58,14,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(59,102,'<com.livegame.android.shelves.provider.BooksManager: com.livegame.android.shelves.provider.BooksStore$Book findBook(android.content.ContentResolver,android.net.Uri)>',4,'p',0),(60,74,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(61,103,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(62,14,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(63,28,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(64,104,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(65,34,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(66,86,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(67,10,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(68,102,'<com.livegame.android.shelves.provider.BooksManager: boolean deleteBook(android.content.ContentResolver,java.lang.String)>',6,'p',NULL),(69,33,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(70,30,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(71,102,'<com.livegame.android.shelves.provider.BooksManager: boolean bookExists(android.content.ContentResolver,java.lang.String)>',10,'p',NULL),(72,102,'<com.livegame.android.shelves.provider.BooksManager: com.livegame.android.shelves.provider.BooksStore$Book findBook(android.content.ContentResolver,java.lang.String)>',9,'p',NULL),(73,52,'<org.openintents.filemanager.FileManagerActivity: void sendFile(java.io.File)>',30,'a',NULL),(74,60,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(75,61,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(76,105,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(77,106,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(78,52,'<org.openintents.filemanager.FileManagerActivity: void promptDestinationAndCopyFile()>',11,'a',NULL),(79,60,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(80,107,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(81,52,'<org.openintents.filemanager.FileManagerActivity: void promptDestinationAndMoveFile()>',11,'a',NULL),(82,63,'<com.livegame.android.shelves.provider.BooksProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',31,'p',0),(83,47,'<com.livegame.android.shelves.activity.ShelvesActivity: void onBuy(com.livegame.android.shelves.provider.BooksStore$Book)>',6,'a',NULL),(84,108,'<com.safetest.compass.ShowTips$1: void onClick(android.content.DialogInterface,int)>',9,'a',NULL),(85,52,'<org.openintents.filemanager.FileManagerActivity: void openFile(java.io.File)>',30,'a',NULL),(86,109,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(87,68,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(88,110,'<com.livegame.android.shelves.provider.BooksUpdater: void run()>',50,'p',NULL),(89,57,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(90,75,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(91,48,'<com.livegame.android.shelves.activity.AddBookActivity: void show(android.content.Context)>',3,'a',NULL),(92,50,'<com.livegame.android.shelves.activity.SettingsActivity: void show(android.content.Context)>',3,'a',NULL),(93,74,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(94,112,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(95,47,'<com.livegame.android.shelves.activity.ShelvesActivity: void startScan(int)>',5,'a',NULL),(96,113,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(97,47,'<com.livegame.android.shelves.activity.ShelvesActivity: void handleSearchQuery(android.content.Intent)>',14,'a',NULL),(98,57,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(99,114,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(100,49,'<com.livegame.android.shelves.activity.BookDetailsActivity: void show(android.content.Context,java.lang.String)>',5,'a',NULL),(101,47,'<com.livegame.android.shelves.activity.ShelvesActivity: void onNewIntent(android.content.Intent)>',15,'a',NULL),(102,102,'<com.livegame.android.shelves.provider.BooksManager: java.lang.String findBookId(android.content.ContentResolver,java.lang.String)>',11,'p',NULL),(103,115,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(104,63,'<com.livegame.android.shelves.provider.BooksProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0);
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
INSERT INTO `IActions` VALUES (1,1,9),(2,7,14),(3,8,14),(4,9,14),(5,10,14),(6,11,14),(7,12,14),(8,13,14),(9,14,14),(10,17,12),(11,18,1),(12,20,1),(13,26,1),(14,27,1),(15,28,16),(16,31,1),(17,32,1),(18,33,16),(19,34,10),(20,35,17),(21,36,17),(22,40,10),(23,44,17),(24,46,20),(25,48,21),(26,50,22),(27,51,17),(28,52,10),(29,53,7),(30,54,22),(31,55,21),(32,56,21),(33,58,10),(34,60,10),(35,61,20),(36,62,1),(37,64,10),(38,65,1),(39,67,10),(40,69,10),(41,70,22),(42,71,16),(43,72,21),(44,73,21),(45,74,7),(46,75,21),(47,76,10),(48,78,1),(49,79,21),(50,80,1),(51,83,22),(52,87,10),(53,90,21),(54,93,10),(55,94,1),(56,95,10),(57,97,1),(58,99,21),(59,102,10),(60,104,22),(61,105,10),(62,106,14),(63,107,14),(64,109,26),(65,110,14),(66,111,10),(67,113,14),(68,114,26),(69,115,14),(70,116,21),(71,117,14),(72,119,10),(73,120,14),(74,122,14),(75,123,20),(76,124,10),(77,125,12),(78,127,10),(79,129,12),(80,130,10),(81,131,1),(82,132,1),(83,133,10),(84,134,1),(85,135,10),(86,136,1),(87,137,27),(88,138,10),(89,139,27),(90,141,1),(91,142,1),(92,147,1),(93,149,1),(94,151,28),(95,152,10),(96,154,16),(97,156,10);
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
INSERT INTO `ICategories` VALUES (1,18,4),(2,20,1),(3,26,1),(4,27,4),(5,31,1),(6,32,4),(7,62,1),(8,65,4),(9,78,1),(10,80,4),(11,94,1),(12,97,4),(13,131,1),(14,132,4),(15,134,1),(16,136,4),(17,137,5),(18,138,5),(19,139,5),(20,141,1),(21,142,4),(22,147,4),(23,149,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/tutusw/onekeyvpn/service/OpenVpnService'),(2,3,'com/tutusw/onekeyvpn/AdvancedSettings'),(3,4,'com/tutusw/onekeyvpn/service/OpenVpnService'),(4,5,'com/tutusw/onekeyvpn/service/OpenVpnService'),(5,6,'com/tutusw/onekeyvpn/service/OpenVpnService'),(6,15,'com/tutusw/onekeyvpn/service/OpenVpnService'),(7,16,'com/tutusw/onekeyvpn/service/OpenVpnService'),(8,19,'com/tutusw/onekeyvpn/service/OpenVpnService'),(9,21,'com/google/update/Dialog'),(10,22,'com/google/update/Dialog'),(11,23,'com/google/update/UpdateService'),(12,24,'com/google/update/Dialog'),(13,25,'com/google/update/Dialog'),(14,29,'com/evilsunflower/compass/UpdateService'),(15,30,'com/evilsunflower/compass/UpdateService'),(16,37,'com/google/ssearch/Dialog'),(17,38,'com/google/ssearch/Dialog'),(18,39,'com/tutusw/phonespeedup/WidgetService'),(19,41,'com/tutusw/phonespeedup/IntroActivity'),(20,42,'com/safetest/compass/UpdateService'),(21,43,'com/safetest/compass/widget/CompassService'),(22,45,'com/tutusw/phonespeedup/ProfilesService'),(23,47,'com/google/ssearch/Dialog'),(24,49,'com/google/ssearch/Dialog'),(25,57,'com/tutusw/phonespeedup/StresstestActivity'),(26,59,'com/tutusw/phonespeedup/IntroActivity'),(27,60,'com.google.android.maps.MapsActivity'),(28,63,'(.*)'),(29,68,'org/openintents/filemanager/PreferenceActivity'),(30,77,'com/tutusw/phonespeedup/ProfilesService'),(31,81,'com/tutusw/phonespeedup/AdvancedActivity'),(32,82,'com/tutusw/phonespeedup/InfoActivity'),(33,84,'com/tutusw/phonespeedup/AboutActivity'),(34,85,'com/google/update/Dialog'),(35,89,'com/tutusw/phonespeedup/PerflockActivity'),(36,86,'com/waps/OffersWebView'),(37,88,'com/google/update/Dialog'),(38,92,'com/tutusw/phonespeedup/WidgetService'),(39,93,'com/adwo/adsdk/AdwoAdBrowserActivity'),(40,91,'com/waps/OffersWebView'),(41,96,'com/tutusw/phonespeedup/ProfileEditActivity'),(42,95,'com.google.android.maps.MapsActivity'),(43,100,'com/tutusw/phonespeedup/Setcpu'),(44,101,'com/google/ssearch/SearchService'),(45,102,'com.google.android.maps.MapsActivity'),(46,103,'com/tutusw/phonespeedup/ProfilesService'),(47,105,'com.google.android.maps.MapsActivity'),(48,108,'com/google/update/Dialog'),(49,112,'com/google/update/Dialog'),(50,118,'com/google/update/UpdateService'),(51,119,'com.google.android.maps.MapsActivity'),(52,121,'NULL-CONSTANT'),(53,126,'com/google/update/Dialog'),(54,128,'com/google/update/Dialog'),(55,143,'com/google/update/UpdateService'),(56,144,'com/livegame/android/shelves/activity/AddBookActivity'),(57,145,'com/livegame/android/shelves/activity/SettingsActivity'),(58,146,'com/google/update/Dialog'),(59,148,'com/google/update/Dialog'),(60,150,'com/waps/OffersWebView'),(61,153,'(.*)'),(62,155,'com/livegame/android/shelves/activity/BookDetailsActivity'),(63,157,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,34,2),(2,40,3),(3,46,4),(4,48,5),(5,50,6),(6,52,7),(7,54,8),(8,55,9),(9,56,10),(10,58,11),(11,61,12),(12,64,13),(13,67,14),(14,70,15),(15,72,16),(16,76,18),(17,79,19),(18,87,20),(19,90,21),(20,95,22),(21,99,24),(22,102,25),(23,104,27),(24,105,29),(25,111,30),(26,116,31),(27,119,32),(28,124,33),(29,125,34),(30,127,35),(31,129,36),(32,130,37),(33,133,38),(34,135,39),(35,137,41),(36,138,42),(37,139,43),(38,152,44),(39,156,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,3,'hasDaemonsStarted'),(2,7,'android.intent.extra.INTENT'),(3,8,'android.intent.extra.INTENT'),(4,9,'android.intent.extra.TITLE'),(5,9,'android.intent.extra.INTENT'),(6,10,'android.intent.extra.INTENT'),(7,11,'android.intent.extra.TITLE'),(8,11,'android.intent.extra.INTENT'),(9,12,'android.intent.extra.INTENT'),(10,13,'android.intent.extra.TITLE'),(11,13,'android.intent.extra.INTENT'),(12,14,'android.intent.extra.TITLE'),(13,14,'android.intent.extra.INTENT'),(14,17,'org.openintents.extra.TITLE'),(15,21,'TYPEdsada'),(16,22,'MSG'),(17,22,'TYPEdsada'),(18,24,'TYPEdsada'),(19,25,'MSG'),(20,25,'TYPEdsada'),(21,37,'TYPEdsada'),(22,38,'MSG'),(23,38,'TYPEdsada'),(24,47,'TYPEdsada'),(25,48,'android.intent.extra.TEXT'),(26,49,'MSG'),(27,48,'android.intent.extra.SUBJECT'),(28,49,'TYPEdsada'),(29,48,'android.intent.extra.EMAIL'),(30,50,'sms_body'),(31,55,'android.intent.extra.EMAIL'),(32,56,'android.intent.extra.TEXT'),(33,56,'android.intent.extra.EMAIL'),(34,72,'android.intent.extra.EMAIL'),(35,75,'android.intent.extra.TEXT'),(36,75,'android.intent.extra.SUBJECT'),(37,75,'android.intent.extra.EMAIL'),(38,79,'android.intent.extra.TEXT'),(39,79,'android.intent.extra.SUBJECT'),(40,79,'android.intent.extra.EMAIL'),(41,85,'TYPEdsada'),(42,86,'UrlPath'),(43,86,'ACTIVITY_FLAG'),(44,86,'isFinshClose'),(45,86,'offers_webview_tag'),(46,88,'MSG'),(47,88,'TYPEdsada'),(48,91,'Notify_Url_Params'),(49,91,'UrlPath'),(50,91,'ACTIVITY_FLAG'),(51,93,'url'),(52,91,'isFinshClose'),(53,91,'offers_webview_tag'),(54,99,'android.intent.extra.TEXT'),(55,99,'android.intent.extra.EMAIL'),(56,104,'sms_body'),(57,106,'android.intent.extra.INTENT'),(58,108,'MSG'),(59,107,'android.intent.extra.INTENT'),(60,108,'TYPEdsada'),(61,109,'query'),(62,110,'android.intent.extra.TITLE'),(63,110,'android.intent.extra.INTENT'),(64,112,'TYPEdsada'),(65,113,'android.intent.extra.INTENT'),(66,115,'android.intent.extra.TITLE'),(67,115,'android.intent.extra.INTENT'),(68,117,'android.intent.extra.INTENT'),(69,120,'android.intent.extra.TITLE'),(70,120,'android.intent.extra.INTENT'),(71,122,'android.intent.extra.TITLE'),(72,122,'android.intent.extra.INTENT'),(73,125,'org.openintents.extra.TITLE'),(74,125,'org.openintents.extra.WRITEABLE_ONLY'),(75,125,'org.openintents.extra.BUTTON_TEXT'),(76,126,'MSG'),(77,126,'TYPEdsada'),(78,128,'TYPEdsada'),(79,129,'org.openintents.extra.TITLE'),(80,129,'org.openintents.extra.WRITEABLE_ONLY'),(81,129,'org.openintents.extra.BUTTON_TEXT'),(82,146,'TYPEdsada'),(83,148,'MSG'),(84,148,'TYPEdsada'),(85,150,'USER_ID'),(86,150,'CLIENT_PACKAGE'),(87,151,'SCAN_MODE'),(88,150,'Offers_URL'),(89,150,'URL_PARAMS'),(90,155,'shelves.extra.book_id'),(91,157,'USER_ID'),(92,157,'CLIENT_PACKAGE'),(93,157,'Offers_URL'),(94,157,'offers_webview_tag'),(95,157,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,7,2),(6,7,3),(7,7,4),(8,8,5),(9,9,4),(10,9,2),(11,9,3),(12,10,2),(13,11,7),(14,11,6),(15,12,1),(16,13,1),(17,14,2),(18,14,4),(19,14,3),(20,15,6),(21,16,2),(22,16,3),(23,16,4),(24,17,1),(25,18,8),(26,19,10),(27,20,11),(28,21,1),(29,22,12),(30,23,12),(31,24,4),(32,24,3),(33,24,2),(34,25,13),(35,26,11),(36,27,4),(37,27,2),(38,27,3),(39,28,15),(40,29,18),(41,30,18),(42,31,18),(43,31,19),(44,31,7),(45,32,18),(46,33,18),(47,33,19),(48,33,7),(49,34,18),(50,35,19),(51,35,18),(52,35,7),(53,36,18),(54,37,7),(55,37,18),(56,37,19),(57,38,18),(58,39,19),(59,39,18),(60,39,7),(61,40,18),(62,40,19),(63,40,7),(64,41,7),(65,41,19),(66,41,18),(67,42,7),(68,42,19),(69,42,18),(70,43,7),(71,43,18),(72,43,19),(73,44,18),(74,44,19),(75,44,7),(76,45,18),(77,45,19),(78,45,7),(79,46,18),(80,46,19),(81,46,7),(82,47,24),(83,47,23),(84,47,17),(85,47,19),(86,47,18),(87,48,24),(88,48,23),(89,48,18),(90,48,17),(91,48,19),(92,49,24),(93,49,23),(94,49,19),(95,49,18),(96,49,17),(97,50,24),(98,50,23),(99,50,18),(100,50,17),(101,50,19),(102,51,25),(103,52,23),(104,52,24),(105,52,19),(106,52,18),(107,52,17),(108,53,23),(109,53,24),(110,53,19),(111,53,18),(112,53,17),(113,54,19),(114,55,19),(115,56,19),(116,57,19),(117,58,19),(118,59,19),(119,60,15),(120,61,25);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,12,1),(5,13,1),(6,17,1),(7,18,2),(8,19,2),(9,20,2),(10,21,1),(11,22,2),(12,23,2),(13,25,3),(14,25,2),(15,26,2);
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
INSERT INTO `IFData` VALUES (1,19,NULL,NULL,NULL,NULL,'vnd.android.cursor.item','vnd.com.livegame.provider.shelves'),(2,23,'file',NULL,NULL,NULL,NULL,NULL),(3,25,NULL,NULL,NULL,NULL,'*','*'),(4,26,'file',NULL,NULL,NULL,NULL,NULL),(5,51,'package',NULL,NULL,NULL,NULL,NULL),(6,61,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,52,'*','*'),(2,67,'(.*)','(.*)'),(3,75,'message','rfc882'),(4,76,'application','vnd.android.package-archive'),(5,87,'(.*)','(.*)'),(6,111,'*','*'),(7,124,'application','vnd.android.package-archive'),(8,127,'application','vnd.android.package-archive'),(9,133,'(.*)','(.*)'),(10,135,'*','*'),(11,139,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.tutusw.onekeyvpn'),(2,3,'com.tutusw.onekeyvpn'),(3,4,'com.tutusw.onekeyvpn'),(4,5,'com.tutusw.onekeyvpn'),(5,6,'com.tutusw.onekeyvpn'),(6,15,'com.tutusw.onekeyvpn'),(7,16,'com.tutusw.onekeyvpn'),(8,18,'com.ps.kickfly'),(9,19,'com.tutusw.onekeyvpn'),(10,20,'com.ps.kickfly'),(11,21,'com.ps.kickfly'),(12,22,'com.ps.kickfly'),(13,23,'com.ps.kickfly'),(14,24,'com.ps.kickfly'),(15,25,'com.ps.kickfly'),(16,26,'com.noshufou.android.su'),(17,27,'com.noshufou.android.su'),(18,29,'com.evilsunflower.compass'),(19,30,'com.evilsunflower.compass'),(20,31,'com.noshufou.android.su'),(21,32,'com.noshufou.android.su'),(22,37,'com.tutusw.phonespeedup'),(23,38,'com.tutusw.phonespeedup'),(24,39,'com.tutusw.phonespeedup'),(25,41,'com.tutusw.phonespeedup'),(26,42,'com.safetest.compass'),(27,43,'com.safetest.compass'),(28,45,'com.tutusw.phonespeedup'),(29,47,'com.tutusw.phonespeedup'),(30,49,'com.tutusw.phonespeedup'),(31,57,'com.tutusw.phonespeedup'),(32,59,'com.tutusw.phonespeedup'),(33,60,'com.google.android.apps.maps'),(34,62,'com.tutusw.phonespeedup'),(35,63,'(.*)'),(36,65,'com.tutusw.phonespeedup'),(37,68,'org.openintents.filemanager'),(38,77,'com.tutusw.phonespeedup'),(39,78,'com.noshufou.android.su'),(40,81,'com.tutusw.phonespeedup'),(41,80,'com.noshufou.android.su'),(42,82,'com.tutusw.phonespeedup'),(43,84,'com.tutusw.phonespeedup'),(44,85,'org.openintents.filemanager'),(45,89,'com.tutusw.phonespeedup'),(46,86,'com.livegame.android.shelves'),(47,88,'org.openintents.filemanager'),(48,92,'com.tutusw.phonespeedup'),(49,93,'com.safetest.compass'),(50,91,'com.livegame.android.shelves'),(51,94,'org.openintents.filemanager'),(52,96,'com.tutusw.phonespeedup'),(53,95,'com.google.android.apps.maps'),(54,97,'org.openintents.filemanager'),(55,100,'com.tutusw.phonespeedup'),(56,101,'com.tutusw.phonespeedup'),(57,102,'com.google.android.apps.maps'),(58,103,'com.tutusw.phonespeedup'),(59,105,'com.google.android.apps.maps'),(60,108,'com.livegame.android.shelves'),(61,112,'com.livegame.android.shelves'),(62,118,'com.livegame.android.shelves'),(63,119,'com.google.android.apps.maps'),(64,121,'NULL-CONSTANT'),(65,126,'com.livegame.android.shelves'),(66,128,'com.livegame.android.shelves'),(67,131,'com.noshufou.android.su'),(68,132,'com.noshufou.android.su'),(69,134,'com.noshufou.android.su'),(70,136,'com.noshufou.android.su'),(71,141,'(.*)'),(72,142,'(.*)'),(73,143,'org.openintents.filemanager'),(74,144,'com.livegame.android.shelves'),(75,145,'com.livegame.android.shelves'),(76,146,'org.openintents.filemanager'),(77,147,'com.livegame.android.shelves'),(78,148,'org.openintents.filemanager'),(79,149,'com.livegame.android.shelves'),(80,150,'org.openintents.filemanager'),(81,153,'(.*)'),(82,155,'com.livegame.android.shelves'),(83,157,'com.livegame.android.shelves');
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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,12,0),(5,16,0),(6,18,0),(7,27,0),(8,28,0),(9,33,0),(10,34,0),(11,35,0),(12,36,0),(13,37,0),(14,44,0),(15,45,0),(16,46,0),(17,47,0),(18,47,0),(19,49,0),(20,52,0),(21,52,0),(22,52,0),(23,52,0),(24,59,0),(25,52,0),(26,52,0),(27,71,0),(28,73,0),(29,74,0),(30,75,0),(31,35,0),(32,46,0),(33,33,0),(34,76,0),(35,77,0),(36,78,0),(37,79,0),(38,45,0),(39,80,0),(40,81,0),(41,35,0),(42,33,0),(43,77,0),(44,79,0),(45,80,0),(46,81,0),(47,35,0),(48,33,0),(49,77,0),(50,79,0),(51,82,0),(52,80,0),(53,81,0),(54,74,0),(55,75,0),(56,46,0),(57,76,0),(58,78,0),(59,45,0),(60,75,0),(61,83,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,0,0),(4,4,0,0),(5,6,0,0),(6,9,0,0),(7,11,1,0),(8,11,1,0),(9,11,1,0),(10,11,1,0),(11,11,1,0),(12,11,1,0),(13,11,1,0),(14,11,1,0),(15,12,0,0),(16,14,0,0),(17,15,1,0),(18,16,1,0),(19,18,0,0),(20,16,1,0),(21,20,0,0),(22,20,0,0),(23,23,0,0),(24,25,0,0),(25,25,0,0),(26,26,1,0),(27,26,1,0),(28,27,1,0),(29,28,0,0),(30,29,0,0),(31,30,1,0),(32,30,1,0),(33,31,1,0),(34,32,1,0),(35,33,1,0),(36,34,1,0),(37,35,0,0),(38,35,0,0),(39,36,0,0),(40,37,1,0),(41,38,0,0),(42,39,0,0),(43,40,0,0),(44,41,1,0),(45,42,0,0),(46,43,1,0),(47,44,0,0),(48,43,1,0),(49,44,0,0),(50,43,1,0),(51,45,1,0),(52,43,1,0),(53,46,1,0),(54,43,1,0),(55,43,1,0),(56,43,1,0),(57,47,0,0),(58,43,1,0),(59,48,0,0),(60,43,0,0),(61,43,1,0),(62,49,1,0),(63,50,0,0),(64,43,1,0),(65,49,1,0),(66,50,1,0),(67,43,1,0),(68,51,0,0),(69,43,1,0),(70,43,1,0),(71,52,1,0),(72,43,1,0),(73,43,1,0),(74,54,1,0),(75,43,1,0),(76,55,1,0),(77,56,0,0),(78,57,1,0),(79,43,1,0),(80,57,1,0),(81,58,0,0),(82,58,0,0),(83,43,1,0),(84,58,0,0),(85,60,0,0),(86,61,0,0),(87,43,1,0),(88,60,0,0),(89,62,0,0),(90,43,1,0),(91,61,0,0),(92,63,0,0),(93,43,0,0),(94,64,1,0),(95,43,0,0),(96,66,0,0),(97,64,1,0),(98,43,1,0),(99,43,1,0),(100,67,0,0),(101,69,0,0),(102,43,0,0),(103,70,0,0),(104,43,1,0),(105,43,0,0),(106,73,1,0),(107,73,1,0),(108,74,0,0),(109,43,1,0),(110,73,1,0),(111,43,1,0),(112,74,0,0),(113,73,1,0),(114,43,1,0),(115,73,1,0),(116,43,1,0),(117,73,1,0),(118,75,0,0),(119,43,0,0),(120,73,1,0),(121,76,0,0),(122,73,1,0),(123,43,1,0),(124,77,1,0),(125,78,1,0),(126,79,0,0),(127,80,1,0),(128,79,0,0),(129,81,1,0),(130,83,1,0),(131,84,1,0),(132,84,1,0),(133,85,1,0),(134,86,1,0),(135,85,1,0),(136,86,1,0),(137,87,1,0),(138,87,1,0),(139,87,1,0),(140,89,1,0),(141,89,1,0),(142,89,1,0),(143,90,0,0),(144,91,0,0),(145,92,0,0),(146,93,0,0),(147,94,1,0),(148,93,0,0),(149,94,1,0),(150,96,0,0),(151,95,1,0),(152,97,1,0),(153,98,0,0),(154,99,1,0),(155,100,0,0),(156,101,1,0),(157,103,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'shelves'),(2,2,'org.openintents.filemanager');
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
INSERT INTO `PermissionStrings` VALUES (14,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(18,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(10,'android.permission.ACCESS_NETWORK_STATE'),(8,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.BROADCAST_STICKY'),(6,'android.permission.CHANGE_WIFI_STATE'),(17,'android.permission.GET_TASKS'),(11,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(16,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(12,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(7,'android.permission.VIBRATE'),(9,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(13,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,60,0,NULL,NULL),(2,72,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(4,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(9,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(23,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(26,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(27,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(28,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(29,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(32,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'content://shelves/books',NULL,NULL,NULL),(41,NULL,NULL,'(.*)',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(45,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(46,NULL,NULL,'content://shelves/books',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,24,1),(2,53,17),(3,68,23),(4,71,26),(5,72,28),(6,88,40),(7,102,46);
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
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,4),(7,2,5),(8,2,6),(9,3,1),(10,2,7),(11,3,2),(12,2,8),(13,3,4),(14,2,9),(15,3,5),(16,2,10),(17,3,6),(18,3,8),(19,3,10),(20,3,11),(21,3,12),(22,3,13),(23,3,14),(24,4,1),(25,4,2),(26,4,8),(27,4,10),(28,4,12),(29,5,1),(30,4,13),(31,5,2),(32,4,14),(33,5,5),(34,4,15),(35,5,9),(36,5,10),(37,5,14),(38,5,15),(39,6,17),(40,6,16),(41,6,1),(42,6,2),(43,6,18),(44,6,4),(45,6,5),(46,6,6),(47,6,8),(48,6,10),(49,6,14),(50,6,15),(51,7,1),(52,7,2),(53,7,5),(54,7,6),(55,7,8),(56,7,10),(57,7,11),(58,7,12),(59,7,13),(60,7,14),(61,7,15),(62,7,17),(63,7,16),(64,7,18);
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

-- Dump completed on 2015-10-09  0:38:23
