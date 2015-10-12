-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_148
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (24,'(.*)'),(17,'Speedup.intent.action.refreshservice'),(19,'Speedup.intent.action.temp'),(8,'Speedup.intent.action.updatewidget'),(5,'android.appwidget.action.APPWIDGET_CONFIGURE'),(7,'android.appwidget.action.APPWIDGET_UPDATE'),(18,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(14,'android.intent.action.CHOOSER'),(22,'android.intent.action.EDIT'),(23,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.PACKAGE_ADDED'),(9,'android.intent.action.SCREEN_OFF'),(10,'android.intent.action.SCREEN_ON'),(2,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(13,'android.net.conn.CONNECTIVITY_CHANGE'),(20,'android.service.wallpaper.LIVE_WALLPAPER_CHOOSER'),(12,'android.service.wallpaper.WallpaperService'),(11,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(15,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(16,'org.openintents.action.PICK_DIRECTORY');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.fingerscanner',5),(2,'com.tutusw.onekeyvpn',6),(3,'com.tutusw.phonespeedup',14),(4,'com.ps.blackwhite',3),(5,'com.safesys.superexplorer',34),(6,'com.livegame.wallpapermingche',3),(7,'com.alan.message',19);
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
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.fingerscanner.SettingsActivity'),(2,1,'com.tutusw.fingerscanner.FingerprintActivity'),(3,1,'com.tutusw.fingerscanner.HelpActivity'),(4,1,'com.eguan.state.Dialog'),(5,1,'com.eguan.state.StateService'),(6,1,'com.tutusw.fingerscanner.SleepService'),(7,1,'com.eguan.state.Receiver'),(8,1,'com.tutusw.fingerscanner.BootReceiver'),(9,2,'com.tutusw.onekeyvpn.OpenVpnSettings'),(10,2,'com.tutusw.onekeyvpn.AdvancedSettings'),(11,2,'com.tutusw.onekeyvpn.EditConfig'),(12,2,'com.tutusw.onekeyvpn.EditConfigPreferences'),(13,2,'com.tutusw.onekeyvpn.EnterPassphrase'),(14,2,'com.tutusw.onekeyvpn.EnterUserPassword'),(15,2,'com.tutusw.onekeyvpn.ImportFiles'),(16,2,'com.tutusw.onekeyvpn.service.OpenVpnService'),(17,2,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(18,3,'com.tutusw.phonespeedup.IntroActivity'),(19,3,'com.tutusw.phonespeedup.InfoActivity'),(20,3,'com.google.ssearch.Dialog'),(21,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(22,3,'com.tutusw.phonespeedup.Home'),(23,4,'com.ps.blackwhite.BlackWhite'),(24,3,'com.tutusw.phonespeedup.PerflockActivity'),(25,3,'com.tutusw.phonespeedup.ProfilesActivity'),(26,3,'com.tutusw.phonespeedup.ProfileEditActivity'),(27,4,'com.google.update.Dialog'),(28,3,'com.tutusw.phonespeedup.AdvancedActivity'),(29,4,'com.google.update.UpdateService'),(30,3,'com.tutusw.phonespeedup.AboutActivity'),(31,4,'com.google.update.Receiver'),(32,3,'com.tutusw.phonespeedup.StresstestActivity'),(33,3,'com.tutusw.phonespeedup.Setcpu'),(34,3,'com.tutusw.phonespeedup.WidgetConfigActivity'),(35,5,'com.safesys.superexplorer.RootExplorer'),(36,3,'com.google.ssearch.SearchService'),(37,3,'com.tutusw.phonespeedup.StartupService'),(38,5,'com.safesys.superexplorer.PermissionsActivity'),(39,3,'com.tutusw.phonespeedup.ProfilesService'),(40,5,'com.safesys.superexplorer.ScriptActivity'),(41,3,'com.tutusw.phonespeedup.WidgetService'),(42,5,'com.safesys.superexplorer.DisplayText'),(43,3,'com.google.ssearch.Receiver'),(44,5,'com.safesys.superexplorer.BookmarkList'),(45,5,'com.safesys.superexplorer.SearchCriteria'),(46,3,'com.tutusw.phonespeedup.StartupReceiver'),(47,1,'com.eguan.state.StateService$MyThread'),(48,5,'com.safesys.superexplorer.Preferences'),(49,5,'com.safesys.superexplorer.ViewDatabase'),(50,3,'com.tutusw.phonespeedup.Widget'),(51,5,'com.safesys.superexplorer.ViewTable'),(52,5,'com.safesys.superexplorer.SQLiteEditorAdvert'),(53,5,'com.safesys.superexplorer.CreateZip'),(54,5,'com.safesys.superexplorer.ShowTips'),(55,5,'com.safesys.superexplorer.UpdateService'),(56,5,'com.safesys.superexplorer.Receiver'),(57,1,'com.tutusw.fingerscanner.SleepService$1'),(58,1,'com.eguan.state.Dialog$1'),(59,6,'com.livegame.wallpapermingche.MainActivity'),(60,6,'com.livegame.wallpapermingche.SettingsActivity'),(61,6,'com.livegame.wallpapermingche.SelectFolderActivity'),(62,6,'com.google.ads.AdActivity'),(63,6,'com.vpon.adon.android.WebInApp'),(64,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(65,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(66,6,'com.waps.OffersWebView'),(67,6,'com.google.update.Dialog'),(68,6,'com.livegame.wallpapermingche.WallpaperSlideshow'),(69,6,'com.google.update.UpdateService'),(70,6,'com.google.update.Receiver'),(71,2,'com.tutusw.onekeyvpn.service.ManagementThread'),(72,2,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(73,2,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(74,2,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(75,2,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(76,2,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(77,2,'com.tutusw.onekeyvpn.ImportFiles$2'),(78,4,'com.ju6.a'),(79,4,'com.google.update.UpdateService$MyThread'),(80,4,'com.google.update.Dialog$1'),(81,4,'com.google.update.Dialog$2'),(82,3,'com.tutusw.phonespeedup.ProfilesActivity$Clicker'),(83,3,'com.tutusw.phonespeedup.Home$clicker'),(84,3,'com.google.ssearch.Dialog$1'),(85,3,'com.tutusw.phonespeedup.WidgetService$1'),(86,3,'com.tutusw.phonespeedup.ProfilesService$1'),(87,3,'android.appwidget.AppWidgetProvider'),(88,3,'com.google.ssearch.SearchService$MyThread'),(89,6,'com.google.update.Dialog$1'),(90,6,'com.livegame.wallpapermingche.MainActivity$1'),(91,6,'com.waps.AppConnect'),(92,6,'com.waps.q'),(93,5,'com.ju6.a'),(94,7,'com.alan.message.SmsMessage'),(95,7,'com.alan.message.MessageList'),(96,7,'com.alan.message.EditMessage'),(97,6,'com.google.update.UpdateService$AA'),(98,7,'com.alan.message.AddMessage'),(99,7,'com.alan.message.InputMessage'),(100,7,'com.alan.message.Setting'),(101,7,'com.alan.message.Help'),(102,7,'com.google.ads.AdActivity'),(103,6,'com.livegame.wallpapermingche.MainActivity$2'),(104,5,'com.safesys.superexplorer.SQLiteEditorAdvert$1'),(105,7,'com.vpon.adon.android.WebInApp'),(106,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(107,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(108,6,'com.google.update.Dialog$2'),(109,7,'com.waps.OffersWebView'),(110,7,'com.google.update.Dialog'),(111,7,'com.google.update.UpdateService'),(112,6,'com.waps.o'),(113,7,'com.google.update.Receiver'),(114,5,'com.safesys.superexplorer.RootExplorer$34'),(115,6,'com.waps.ac'),(116,6,'com.waps.aa'),(117,6,'com.waps.z'),(118,5,'com.safesys.superexplorer.RootExplorer$33'),(119,5,'com.safesys.superexplorer.ShowTips$1'),(120,5,'com.safesys.superexplorer.RootExplorer$31'),(121,7,'com.google.update.Dialog$1'),(122,7,'com.waps.AppConnect'),(123,7,'com.alan.message.Setting$1'),(124,7,'com.waps.k'),(125,7,'com.waps.m'),(126,7,'com.google.update.Dialog$2'),(127,7,'com.google.update.UpdateService$MyThread'),(128,7,'com.ju6.a');
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'MSG'),(2,4,'TYPEdsada'),(3,29,'ST_START_DELAY'),(4,21,'overlayTransition'),(5,21,'url'),(6,21,'shouldMakeOverlayTransparent'),(7,21,'shouldEnableBottomBar'),(8,27,'MSG'),(9,21,'overlayTitle'),(10,21,'shouldResizeOverlay'),(11,27,'TYPEdsada'),(12,29,'ST_MY_PID'),(13,21,'shouldShowBottomBar'),(14,21,'transitionTime'),(15,21,'shouldShowTitlebar'),(16,26,'row_id'),(17,20,'TYPEdsada'),(18,34,'appWidgetId'),(19,61,'adWidth'),(20,63,'shouldShowBottomBar'),(21,64,'offers_webview_tag'),(22,42,'group'),(23,35,'location'),(24,20,'MSG'),(25,51,'permissions'),(26,64,'APP_ID'),(27,57,'APP_ID'),(28,61,'url'),(29,67,'ST_MY_PID'),(30,64,'DEVICE_ID'),(31,57,'DEVICE_ID'),(32,64,'URL'),(33,64,'Offers_URL'),(34,63,'shouldResizeOverlay'),(35,64,'CLIENT_PACKAGE'),(36,57,'CLIENT_PACKAGE'),(37,65,'TYPEdsada'),(38,64,'WAPS_PID'),(39,57,'WAPS_PID'),(40,64,'Notify_Id'),(41,63,'shouldMakeOverlayTransparent'),(42,48,'restore_permissions_cmd'),(43,62,'Adwo_PID'),(44,50,'table'),(45,58,'folder'),(46,50,'restore_permissions_cmd'),(47,63,'overlayTitle'),(48,42,'permissions'),(49,63,'url'),(50,64,'Notify_Url_Params'),(51,35,'saved_list_pos'),(52,38,'name'),(53,62,'isTestMode'),(54,51,'make_readable_cmd'),(55,35,'name'),(56,64,'URL_PARAMS'),(57,64,'isFinshClose'),(58,64,'ACTIVITY_FLAG'),(59,63,'shouldShowTitlebar'),(60,63,'overlayTransition'),(61,64,'UrlPath'),(62,64,'SHWO_FLAG'),(63,63,'shouldEnableBottomBar'),(64,63,'transitionTime'),(65,64,'WAPS_ID'),(66,57,'WAPS_ID'),(67,64,'USER_ID'),(68,65,'MSG'),(69,67,'ST_START_DELAY'),(70,54,'SAFE_PID'),(71,35,'text'),(72,50,'filter_value'),(73,50,'filter_field'),(74,50,'is_filtered'),(75,48,'make_readable_cmd'),(76,35,'permissions'),(77,54,'SAFE_START'),(78,35,'selection_names'),(79,42,'edit_mode'),(80,38,'iconid'),(81,42,'owner'),(82,35,'error_msg'),(83,52,'data'),(84,35,'zip_name'),(85,35,'selection_state'),(86,48,'make_writeable_cmd'),(87,52,'zip_name'),(88,53,'MM'),(89,35,'flags'),(90,50,'make_readable_cmd'),(91,38,'permissions'),(92,50,'make_writeable_cmd'),(93,51,'restore_permissions_cmd'),(94,35,'multi_select_mode'),(95,84,'Adwo_PID'),(96,87,'TYPEdsada'),(97,86,'URL'),(98,87,'MSG'),(99,75,'message'),(100,75,'content'),(101,78,'CLIENT_PACKAGE'),(102,75,'CLIENT_PACKAGE'),(103,77,'CLIENT_PACKAGE'),(104,76,'CLIENT_PACKAGE'),(105,81,'CLIENT_PACKAGE'),(106,79,'CLIENT_PACKAGE'),(107,86,'URL_PARAMS'),(108,76,'message'),(109,86,'isFinshClose'),(110,88,'ST_MY_PID'),(111,85,'transitionTime'),(112,77,'itemContent'),(113,78,'DEVICE_ID'),(114,75,'DEVICE_ID'),(115,77,'DEVICE_ID'),(116,76,'DEVICE_ID'),(117,81,'DEVICE_ID'),(118,79,'DEVICE_ID'),(119,85,'shouldResizeOverlay'),(120,78,'WAPS_PID'),(121,75,'WAPS_PID'),(122,77,'WAPS_PID'),(123,76,'WAPS_PID'),(124,81,'WAPS_PID'),(125,79,'WAPS_PID'),(126,82,'com.google.ads.AdOpener'),(127,88,'ST_START_DELAY'),(128,84,'isTestMode'),(129,85,'shouldShowTitlebar'),(130,82,'params'),(131,85,'shouldMakeOverlayTransparent'),(132,85,'shouldEnableBottomBar'),(133,78,'WAPS_ID'),(134,75,'WAPS_ID'),(135,77,'WAPS_ID'),(136,76,'WAPS_ID'),(137,81,'WAPS_ID'),(138,79,'WAPS_ID'),(139,78,'APP_ID'),(140,75,'APP_ID'),(141,77,'APP_ID'),(142,76,'APP_ID'),(143,81,'APP_ID'),(144,79,'APP_ID'),(145,86,'Offers_URL'),(146,83,'url'),(147,85,'overlayTitle'),(148,85,'url'),(149,86,'CLIENT_PACKAGE'),(150,85,'overlayTransition'),(151,86,'USER_ID'),(152,85,'shouldShowBottomBar'),(153,83,'adWidth'),(154,82,'action');
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'s',0,NULL,NULL),(7,7,'r',1,NULL,NULL),(8,8,'r',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'s',0,NULL,NULL),(17,17,'r',1,3,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',1,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',1,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'s',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'s',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'r',1,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'r',0,3,NULL),(47,48,'a',0,NULL,NULL),(48,49,'a',0,NULL,NULL),(49,50,'r',1,NULL,NULL),(50,51,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,53,'a',0,NULL,NULL),(53,54,'a',0,NULL,NULL),(54,55,'s',0,NULL,NULL),(55,56,'r',1,NULL,NULL),(56,57,'r',1,NULL,NULL),(57,59,'a',1,NULL,NULL),(58,60,'a',1,NULL,NULL),(59,61,'a',0,NULL,NULL),(60,62,'a',0,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'s',1,18,NULL),(67,69,'s',0,NULL,NULL),(68,70,'r',1,NULL,NULL),(69,72,'r',1,NULL,NULL),(70,85,'r',1,NULL,NULL),(71,86,'r',1,NULL,NULL),(72,87,'r',1,NULL,NULL),(73,46,'r',1,NULL,NULL),(74,92,'r',1,NULL,NULL),(75,94,'a',1,NULL,NULL),(76,95,'a',0,NULL,NULL),(77,96,'a',0,NULL,NULL),(78,98,'a',0,NULL,NULL),(79,99,'a',0,NULL,NULL),(80,100,'a',0,NULL,NULL),(81,101,'a',0,NULL,NULL),(82,102,'a',0,NULL,NULL),(83,105,'a',0,NULL,NULL),(84,106,'a',0,NULL,NULL),(85,107,'a',0,NULL,NULL),(86,109,'a',0,NULL,NULL),(87,110,'a',0,NULL,NULL),(88,111,'s',0,NULL,NULL),(89,113,'r',1,NULL,NULL),(90,125,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,1),(3,3,8),(4,4,5),(5,5,1),(6,6,1),(7,7,5),(8,8,1),(9,9,5),(10,10,4),(11,11,1),(12,12,1),(13,13,9),(14,13,16),(15,14,16),(16,14,9),(17,15,9),(18,16,9),(19,17,17),(20,18,9),(21,19,16),(22,19,9),(23,20,16),(24,20,9),(25,21,16),(26,21,9),(27,22,9),(28,23,9),(29,24,13),(30,25,9),(31,25,16),(32,26,16),(33,27,14),(34,28,9),(35,28,16),(36,29,15),(37,30,9),(38,31,9),(39,32,16),(40,32,9),(41,33,29),(42,34,29),(43,35,29),(44,36,29),(45,37,27),(46,38,27),(47,39,31),(48,40,22),(49,41,22),(50,42,36),(51,43,25),(52,44,22),(53,45,37),(54,46,19),(55,47,18),(56,48,25),(57,49,20),(58,50,22),(59,51,25),(60,52,30),(61,53,36),(62,54,22),(63,55,25),(64,56,25),(65,57,22),(66,58,37),(67,59,18),(68,60,36),(69,61,65),(70,62,43),(71,63,49),(72,64,64),(73,65,57),(74,66,25),(75,67,57),(76,68,34),(77,69,35),(78,70,46),(79,71,35),(80,72,35),(81,73,35),(82,74,54),(83,75,55),(84,76,67),(85,77,51),(86,78,57),(87,79,51),(88,80,65),(89,81,35),(90,82,64),(91,83,35),(92,84,64),(93,85,64),(94,85,59),(95,86,35),(96,87,68),(97,88,67),(98,89,67),(99,90,64),(100,91,64),(101,92,35),(102,93,48),(103,94,35),(104,95,35),(105,96,35),(106,97,53),(107,98,35),(108,99,35),(109,100,35),(110,101,35),(111,102,76),(112,103,75),(113,104,87),(114,105,82),(115,106,75),(116,107,75),(117,108,75),(118,109,75),(119,110,75),(120,111,88),(121,112,75),(122,113,75),(123,114,80),(124,115,86),(125,116,75),(126,117,79),(127,118,75),(128,119,89),(129,120,76),(130,121,75),(131,122,87),(132,123,88),(133,124,75),(134,125,88),(135,126,75),(136,127,75),(137,128,88);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(2,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',14,'a',NULL),(3,8,'<com.tutusw.fingerscanner.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',8,'s',NULL),(4,47,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(5,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(6,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(7,5,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(8,1,'<com.tutusw.fingerscanner.SettingsActivity: void onStart()>',18,'s',NULL),(9,5,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(10,58,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(11,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',27,'s',NULL),(12,1,'<com.tutusw.fingerscanner.SettingsActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(13,71,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(14,71,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(15,73,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(16,9,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(17,17,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(18,74,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(19,75,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(20,71,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(21,76,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(22,9,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(23,16,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(24,13,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(25,71,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(26,16,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(27,14,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(28,71,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(29,77,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(30,73,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(31,9,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(32,76,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(33,29,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(34,78,'<com.ju6.a: boolean b()>',178,'p',NULL),(35,79,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(36,29,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(37,80,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(38,81,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(39,31,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(40,22,'<com.tutusw.phonespeedup.Home: void launchClass(java.lang.Class)>',4,'a',NULL),(41,22,'<com.tutusw.phonespeedup.Home: void updateWidget()>',3,'r',NULL),(42,36,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(43,82,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',67,'r',NULL),(44,83,'<com.tutusw.phonespeedup.Home$clicker: void onClick(android.view.View)>',97,'a',NULL),(45,37,'<com.tutusw.phonespeedup.StartupService: void updateWidget(int,int)>',5,'r',NULL),(46,19,'<com.tutusw.phonespeedup.InfoActivity: void launchClass(java.lang.Class)>',4,'a',NULL),(47,18,'<com.tutusw.phonespeedup.IntroActivity: void launchMarket()>',4,'a',NULL),(48,82,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',44,'s',NULL),(49,84,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(50,22,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(51,82,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',48,'r',NULL),(52,30,'<com.tutusw.phonespeedup.AboutActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',13,'a',NULL),(53,36,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(54,22,'<com.tutusw.phonespeedup.Home: void onCreate(android.os.Bundle)>',216,'s',NULL),(55,82,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',79,'a',NULL),(56,25,'<com.tutusw.phonespeedup.ProfilesActivity: void update()>',9,'r',NULL),(57,22,'<com.tutusw.phonespeedup.Home: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(58,37,'<com.tutusw.phonespeedup.StartupService: void onDestroy()>',79,'s',NULL),(59,18,'<com.tutusw.phonespeedup.IntroActivity: void launchCupcake()>',3,'a',NULL),(60,88,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(61,89,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(62,43,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(63,50,'<com.tutusw.phonespeedup.Widget: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',15,'s',NULL),(64,66,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(65,90,'<com.livegame.wallpapermingche.MainActivity$1: void onClick(android.view.View)>',37,'a',NULL),(66,82,'<com.tutusw.phonespeedup.ProfilesActivity$Clicker: void onClick(android.view.View)>',31,'r',NULL),(67,91,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(68,34,'<com.tutusw.phonespeedup.WidgetConfigActivity: void apply()>',39,'s',NULL),(69,35,'<com.safesys.superexplorer.RootExplorer: void Send(com.safesys.superexplorer.DirectoryEntry)>',6,'a',0),(70,46,'<com.tutusw.phonespeedup.StartupReceiver: void onReceive(android.content.Context,android.content.Intent)>',11,'s',0),(71,35,'<com.safesys.superexplorer.RootExplorer: void ShowPreferences()>',3,'a',NULL),(72,35,'<com.safesys.superexplorer.RootExplorer: void ExecuteZipSelected(java.lang.String)>',11,'a',NULL),(73,35,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFolder(com.safesys.superexplorer.DirectoryEntry)>',12,'a',NULL),(74,93,'<com.ju6.a: boolean b()>',178,'p',NULL),(75,56,'<com.safesys.superexplorer.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(76,97,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(77,52,'<com.safesys.superexplorer.SQLiteEditorAdvert: void DownloadSQLiteEditor()>',4,'a',NULL),(78,103,'<com.livegame.wallpapermingche.MainActivity$2: void onClick(android.view.View)>',35,'a',NULL),(79,104,'<com.safesys.superexplorer.SQLiteEditorAdvert$1: void onClick(android.view.View)>',21,'a',NULL),(80,108,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(81,35,'<com.safesys.superexplorer.RootExplorer: void DownloadRootExplorer()>',4,'a',NULL),(82,112,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(83,114,'<com.safesys.superexplorer.RootExplorer$34: void onClick(android.content.DialogInterface,int)>',23,'a',NULL),(84,66,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(85,115,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(86,35,'<com.safesys.superexplorer.RootExplorer: void OpenItem(com.safesys.superexplorer.DirectoryEntry)>',53,'a',NULL),(87,70,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(88,69,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(89,69,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(90,116,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(91,117,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(92,35,'<com.safesys.superexplorer.RootExplorer: void Search()>',5,'a',NULL),(93,49,'<com.safesys.superexplorer.ViewDatabase: void OpenItem(com.safesys.superexplorer.Database$Table)>',15,'a',NULL),(94,35,'<com.safesys.superexplorer.RootExplorer: void ShowPermissionsDialog(com.safesys.superexplorer.DirectoryEntry)>',13,'a',NULL),(95,118,'<com.safesys.superexplorer.RootExplorer$33: void onClick(android.content.DialogInterface,int)>',37,'a',NULL),(96,35,'<com.safesys.superexplorer.RootExplorer: void CreateZipFromFile(com.safesys.superexplorer.DirectoryEntry)>',16,'a',NULL),(97,119,'<com.safesys.superexplorer.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(98,35,'<com.safesys.superexplorer.RootExplorer: void ShowBookmarks()>',3,'a',NULL),(99,35,'<com.safesys.superexplorer.RootExplorer: void EditItem(com.safesys.superexplorer.DirectoryEntry)>',4,'a',0),(100,120,'<com.safesys.superexplorer.RootExplorer$31: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(101,35,'<com.safesys.superexplorer.RootExplorer: void OpenAsText(com.safesys.superexplorer.DirectoryEntry)>',10,'a',0),(102,95,'<com.alan.message.MessageList: boolean onContextItemSelected(android.view.MenuItem)>',28,'a',NULL),(103,94,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',59,'a',NULL),(104,121,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(105,102,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(106,94,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',47,'a',NULL),(107,94,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(108,94,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',43,'a',NULL),(109,122,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(110,94,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',124,'a',NULL),(111,111,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(112,94,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',45,'p',0),(113,94,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',33,'a',NULL),(114,123,'<com.alan.message.Setting$1: void onClick(android.view.View)>',7,'a',NULL),(115,124,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(116,94,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',38,'a',NULL),(117,99,'<com.alan.message.InputMessage: void addDataToListview()>',9,'p',NULL),(118,94,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',91,'p',0),(119,113,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(120,95,'<com.alan.message.MessageList: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(121,94,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',129,'a',NULL),(122,126,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(123,111,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(124,94,'<com.alan.message.SmsMessage: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(125,127,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(126,94,'<com.alan.message.SmsMessage: boolean onContextItemSelected(android.view.MenuItem)>',53,'a',NULL),(127,94,'<com.alan.message.SmsMessage: void onActivityResult(int,int,android.content.Intent)>',68,'p',0),(128,128,'<com.ju6.a: boolean b()>',178,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,6),(2,4,1),(3,5,1),(4,13,11),(5,19,14),(6,20,14),(7,21,14),(8,22,14),(9,23,14),(10,24,14),(11,25,14),(12,26,14),(13,29,15),(14,31,16),(15,36,1),(16,37,1),(17,40,1),(18,41,1),(19,42,11),(20,47,8),(21,50,17),(22,51,6),(23,52,8),(24,54,6),(25,56,11),(26,58,17),(27,64,17),(28,68,1),(29,69,1),(30,70,1),(31,71,1),(32,75,1),(33,76,1),(34,77,20),(35,78,17),(36,85,1),(37,86,1),(38,87,6),(39,90,11),(40,91,6),(41,92,6),(42,96,6),(43,97,6),(44,99,6),(45,101,22),(46,108,6),(47,110,6),(48,112,6),(49,113,6),(50,114,6),(51,115,6),(52,122,1),(53,123,1),(54,125,6),(55,126,6),(56,127,6),(57,128,22),(58,131,6),(59,132,6),(60,134,6),(61,135,6),(62,136,6),(63,138,23),(64,139,1),(65,140,1),(66,141,24),(67,142,6),(68,143,24),(69,148,23),(70,152,23),(71,153,6),(72,158,11),(73,162,1),(74,163,1),(75,164,23);
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
INSERT INTO `ICategories` VALUES (1,4,2),(2,5,1),(3,36,1),(4,37,2),(5,40,1),(6,41,2),(7,68,1),(8,69,2),(9,70,1),(10,71,2),(11,75,1),(12,76,2),(13,85,1),(14,86,2),(15,122,1),(16,123,2),(17,139,1),(18,140,2),(19,141,3),(20,142,3),(21,143,3),(22,162,1),(23,163,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/eguan/state/StateService'),(2,3,'com/tutusw/fingerscanner/SleepService'),(3,6,'com/tutusw/fingerscanner/FingerprintActivity'),(4,7,'com/tutusw/fingerscanner/SleepService'),(5,8,'com/eguan/state/Dialog'),(6,9,'com/eguan/state/Dialog'),(7,10,'com/tutusw/fingerscanner/SleepService'),(8,11,'com/eguan/state/Dialog'),(9,12,'com/eguan/state/Dialog'),(10,14,'com/tutusw/fingerscanner/SleepService'),(11,15,'com/tutusw/fingerscanner/HelpActivity'),(12,16,'com/tutusw/onekeyvpn/service/OpenVpnService'),(13,17,'com/tutusw/onekeyvpn/service/OpenVpnService'),(14,18,'com/tutusw/onekeyvpn/service/OpenVpnService'),(15,27,'com/tutusw/onekeyvpn/service/OpenVpnService'),(16,28,'com/tutusw/onekeyvpn/service/OpenVpnService'),(17,30,'com/tutusw/onekeyvpn/service/OpenVpnService'),(18,32,'com/tutusw/onekeyvpn/service/OpenVpnService'),(19,33,'com/tutusw/onekeyvpn/AdvancedSettings'),(20,34,'com/google/update/Dialog'),(21,35,'com/google/update/Dialog'),(22,38,'com/google/update/Dialog'),(23,39,'com/google/update/Dialog'),(24,43,'com/google/update/UpdateService'),(25,44,'com/tutusw/phonespeedup/AdvancedActivity'),(26,45,'com/tutusw/phonespeedup/InfoActivity'),(27,46,'com/tutusw/phonespeedup/AboutActivity'),(28,48,'com/google/ssearch/Dialog'),(29,49,'com/google/ssearch/Dialog'),(30,53,'com/tutusw/phonespeedup/StresstestActivity'),(31,55,'com/tutusw/phonespeedup/ProfilesService'),(32,57,'com/tutusw/phonespeedup/IntroActivity'),(33,59,'com/tutusw/phonespeedup/IntroActivity'),(34,60,'com/google/ssearch/Dialog'),(35,61,'com/google/ssearch/Dialog'),(36,62,'com/tutusw/phonespeedup/ProfilesService'),(37,63,'com/tutusw/phonespeedup/ProfileEditActivity'),(38,65,'com/tutusw/phonespeedup/PerflockActivity'),(39,66,'com/tutusw/phonespeedup/ProfilesService'),(40,67,'com/tutusw/phonespeedup/Setcpu'),(41,72,'com/google/ssearch/SearchService'),(42,73,'com/tutusw/phonespeedup/WidgetService'),(43,80,'com/tutusw/phonespeedup/WidgetService'),(44,79,'com/waps/OffersWebView'),(45,81,'com/safesys/superexplorer/Preferences'),(46,82,'com/safesys/superexplorer/CreateZip'),(47,83,'com/safesys/superexplorer/CreateZip'),(48,84,'com/safesys/superexplorer/UpdateService'),(49,88,'com/livegame/wallpapermingche/SettingsActivity'),(50,89,'com/safesys/superexplorer/ViewDatabase'),(51,94,'(.*)'),(52,93,'com/safesys/superexplorer/ScriptActivity'),(53,95,'NULL-CONSTANT'),(54,98,'com/google/update/UpdateService'),(55,100,'com/google/update/Dialog'),(56,102,'com/google/update/Dialog'),(57,101,'com.safesys.sqleditor.EditDatabase'),(58,104,'com/google/update/Dialog'),(59,103,'com/safesys/superexplorer/SQLiteEditorAdvert'),(60,105,'com/google/update/Dialog'),(61,106,'com/safesys/superexplorer/ViewDatabase'),(62,107,'com/waps/OffersWebView'),(63,109,'com/waps/OffersWebView'),(64,111,'com/safesys/superexplorer/DisplayText'),(65,116,'com/safesys/superexplorer/SearchCriteria'),(66,117,'com/safesys/superexplorer/ViewTable'),(67,118,'com/safesys/superexplorer/PermissionsActivity'),(68,119,'com/safesys/superexplorer/DisplayText'),(69,120,'com/safesys/superexplorer/DisplayText'),(70,121,'com/safesys/superexplorer/CreateZip'),(71,124,'com/safesys/superexplorer/BookmarkList'),(72,128,'com.safesys.sqleditor.EditDatabase'),(73,129,'com/safesys/superexplorer/SQLiteEditorAdvert'),(74,130,'com/safesys/superexplorer/ViewDatabase'),(75,133,'com/safesys/superexplorer/DisplayText'),(76,137,'com/alan/message/EditMessage'),(77,144,'com/alan/message/InputMessage'),(78,145,'com/alan/message/Help'),(79,146,'com/alan/message/MessageList'),(80,147,'com/waps/OffersWebView'),(81,149,'com/google/update/Dialog'),(82,150,'com/google/update/Dialog'),(83,151,'com/alan/message/MessageList'),(84,154,'com/alan/message/MessageList'),(85,155,'com/google/update/UpdateService'),(86,156,'com/alan/message/AddMessage'),(87,157,'com/alan/message/MessageList'),(88,159,'com/google/update/Dialog'),(89,160,'com/google/update/Dialog'),(90,161,'com/alan/message/Setting');
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
INSERT INTO `IData` VALUES (1,2,1),(2,51,3),(3,54,4),(4,87,6),(5,89,7),(6,91,8),(7,92,9),(8,93,10),(9,96,11),(10,97,12),(11,99,13),(12,101,14),(13,103,15),(14,106,16),(15,108,17),(16,110,18),(17,111,19),(18,112,20),(19,113,21),(20,114,22),(21,115,23),(22,119,24),(23,120,25),(24,125,26),(25,126,27),(26,127,28),(27,128,29),(28,129,30),(29,130,31),(30,131,32),(31,132,33),(32,133,34),(33,134,35),(34,135,36),(35,136,37),(36,141,38),(37,142,39),(38,143,40),(39,153,41);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,8,'MSG'),(2,8,'TYPEdsada'),(3,9,'TYPEdsada'),(4,11,'MSG'),(5,11,'TYPEdsada'),(6,12,'TYPEdsada'),(7,19,'android.intent.extra.INTENT'),(8,20,'android.intent.extra.INTENT'),(9,21,'android.intent.extra.TITLE'),(10,21,'android.intent.extra.INTENT'),(11,22,'android.intent.extra.INTENT'),(12,23,'android.intent.extra.TITLE'),(13,23,'android.intent.extra.INTENT'),(14,24,'android.intent.extra.INTENT'),(15,25,'android.intent.extra.TITLE'),(16,25,'android.intent.extra.INTENT'),(17,26,'android.intent.extra.TITLE'),(18,26,'android.intent.extra.INTENT'),(19,31,'org.openintents.extra.TITLE'),(20,33,'hasDaemonsStarted'),(21,34,'MSG'),(22,34,'TYPEdsada'),(23,35,'TYPEdsada'),(24,38,'MSG'),(25,38,'TYPEdsada'),(26,39,'TYPEdsada'),(27,48,'TYPEdsada'),(28,49,'MSG'),(29,49,'TYPEdsada'),(30,60,'TYPEdsada'),(31,61,'MSG'),(32,61,'TYPEdsada'),(33,77,'android.live_wallpaper.package'),(34,77,'android.live_wallpaper.settings'),(35,79,'USER_ID'),(36,79,'CLIENT_PACKAGE'),(37,79,'Offers_URL'),(38,79,'offers_webview_tag'),(39,79,'URL_PARAMS'),(40,82,'data'),(41,82,'zip_name'),(42,82,'mode'),(43,83,'data'),(44,83,'mode'),(45,89,'make_readable_cmd'),(46,89,'restore_permissions_cmd'),(47,89,'permissions'),(48,93,'permissions'),(49,93,'size'),(50,100,'MSG'),(51,100,'TYPEdsada'),(52,101,'make_readable_cmd'),(53,101,'restore_permissions_cmd'),(54,102,'TYPEdsada'),(55,101,'permissions'),(56,101,'make_writeable_cmd'),(57,103,'make_readable_cmd'),(58,104,'MSG'),(59,103,'restore_permissions_cmd'),(60,104,'TYPEdsada'),(61,103,'permissions'),(62,103,'make_writeable_cmd'),(63,105,'TYPEdsada'),(64,106,'make_readable_cmd'),(65,106,'restore_permissions_cmd'),(66,106,'permissions'),(67,107,'UrlPath'),(68,107,'ACTIVITY_FLAG'),(69,107,'isFinshClose'),(70,107,'offers_webview_tag'),(71,109,'Notify_Url_Params'),(72,109,'UrlPath'),(73,109,'ACTIVITY_FLAG'),(74,109,'isFinshClose'),(75,109,'offers_webview_tag'),(76,111,'edit_mode'),(77,111,'permissions'),(78,116,'location'),(79,117,'make_readable_cmd'),(80,117,'restore_permissions_cmd'),(81,117,'table'),(82,117,'make_writeable_cmd'),(83,118,'iconid'),(84,118,'name'),(85,118,'permissions'),(86,118,'fullpath'),(87,119,'chmod_value'),(88,119,'permissions'),(89,119,'edit_mode'),(90,119,'owner'),(91,119,'group'),(92,119,'size'),(93,120,'edit_mode'),(94,120,'permissions'),(95,120,'owner'),(96,120,'group'),(97,120,'size'),(98,121,'data'),(99,121,'zip_name'),(100,121,'mode'),(101,128,'make_readable_cmd'),(102,128,'restore_permissions_cmd'),(103,128,'permissions'),(104,128,'make_writeable_cmd'),(105,129,'make_readable_cmd'),(106,129,'restore_permissions_cmd'),(107,129,'permissions'),(108,129,'make_writeable_cmd'),(109,130,'make_readable_cmd'),(110,130,'restore_permissions_cmd'),(111,130,'permissions'),(112,133,'edit_mode'),(113,133,'permissions'),(114,137,'itemContent'),(115,137,'type'),(116,146,'type'),(117,147,'USER_ID'),(118,147,'CLIENT_PACKAGE'),(119,147,'Offers_URL'),(120,147,'URL_PARAMS'),(121,149,'TYPEdsada'),(122,150,'MSG'),(123,150,'TYPEdsada'),(124,151,'type'),(125,154,'type'),(126,156,'type'),(127,157,'type'),(128,159,'TYPEdsada'),(129,160,'MSG'),(130,160,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,3),(6,4,1),(7,5,3),(8,6,1),(9,7,1),(10,8,2),(11,8,3),(12,8,4),(13,9,5),(14,10,1),(15,11,4),(16,11,3),(17,11,2),(18,12,3),(19,13,8),(20,13,7),(21,14,2),(22,14,4),(23,14,3),(24,15,9),(25,15,10),(26,16,9),(27,16,10),(28,17,10),(29,17,9),(30,18,1),(31,19,12),(32,20,2),(33,20,4),(34,20,3),(35,21,13),(36,22,8),(37,22,10),(38,22,9),(39,23,10),(40,23,8),(41,23,9),(42,24,9),(43,24,10),(44,24,8),(45,25,8),(46,25,9),(47,25,10),(48,26,9),(49,26,10),(50,26,8),(51,27,8),(52,27,9),(53,27,10),(54,28,9),(55,28,10),(56,28,19),(57,28,18),(58,28,17),(59,29,10),(60,29,9),(61,29,19),(62,29,18),(63,29,17),(64,30,9),(65,30,10),(66,30,18),(67,30,17),(68,30,19),(69,31,18),(70,31,19),(71,31,17),(72,31,10),(73,31,9),(74,32,19),(75,32,17),(76,32,18),(77,32,10),(78,32,9),(79,33,18),(80,33,19),(81,33,17),(82,33,10),(83,33,9),(84,34,8),(85,34,10),(86,34,9),(87,35,8),(88,35,9),(89,35,10),(90,36,9),(91,36,10),(92,36,8),(93,37,8),(94,37,9),(95,37,10),(96,38,9),(97,38,10),(98,38,8),(99,39,9),(100,39,8),(101,39,10),(102,40,21),(103,41,1),(104,42,2),(105,42,3),(106,42,4),(107,43,21);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,4,1),(3,6,1),(4,7,1),(5,10,1),(6,18,1),(7,41,1);
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
INSERT INTO `IFData` VALUES (1,40,'package',NULL,NULL,NULL,NULL,NULL),(2,43,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,92,'application','vnd.android.package-archive'),(2,96,'application','vnd.ms-powerpoint'),(3,97,'image','*'),(4,99,'application','pdf'),(5,108,'application','msword'),(6,110,'application','vnd.ms-excel'),(7,112,'application','vnd.android.package-archive'),(8,113,'application','vnd.android.package-archive'),(9,114,'audio','*'),(10,115,'video','*'),(11,125,'application','vnd.ms-powerpoint'),(12,126,'image','*'),(13,127,'application','pdf'),(14,131,'application','msword'),(15,132,'application','vnd.ms-excel'),(16,134,'application','vnd.android.package-archive'),(17,135,'audio','*'),(18,136,'video','*'),(19,138,'vnd.android.cursor.item','phone'),(20,143,'(.*)','(.*)'),(21,148,'vnd.android.cursor.item','phone'),(22,152,'image','*'),(23,153,'application','vnd.android.package-archive'),(24,164,'vnd.android.cursor.item','phone');
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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.fingerscanner'),(2,3,'com.tutusw.fingerscanner'),(3,4,'com.tutusw.fingerscanner'),(4,5,'com.tutusw.fingerscanner'),(5,6,'com.tutusw.fingerscanner'),(6,7,'com.tutusw.fingerscanner'),(7,8,'com.tutusw.fingerscanner'),(8,9,'com.tutusw.fingerscanner'),(9,10,'com.tutusw.fingerscanner'),(10,11,'com.tutusw.fingerscanner'),(11,12,'com.tutusw.fingerscanner'),(12,14,'com.tutusw.fingerscanner'),(13,15,'com.tutusw.fingerscanner'),(14,16,'com.tutusw.onekeyvpn'),(15,17,'com.tutusw.onekeyvpn'),(16,18,'com.tutusw.onekeyvpn'),(17,27,'com.tutusw.onekeyvpn'),(18,28,'com.tutusw.onekeyvpn'),(19,30,'com.tutusw.onekeyvpn'),(20,32,'com.tutusw.onekeyvpn'),(21,33,'com.tutusw.onekeyvpn'),(22,34,'com.ps.blackwhite'),(23,35,'com.ps.blackwhite'),(24,36,'com.ps.blackwhite'),(25,37,'com.ps.blackwhite'),(26,38,'com.ps.blackwhite'),(27,39,'com.ps.blackwhite'),(28,40,'com.noshufou.android.su'),(29,41,'com.noshufou.android.su'),(30,43,'com.ps.blackwhite'),(31,44,'com.tutusw.phonespeedup'),(32,45,'com.tutusw.phonespeedup'),(33,46,'com.tutusw.phonespeedup'),(34,48,'com.tutusw.phonespeedup'),(35,49,'com.tutusw.phonespeedup'),(36,53,'com.tutusw.phonespeedup'),(37,55,'com.tutusw.phonespeedup'),(38,57,'com.tutusw.phonespeedup'),(39,59,'com.tutusw.phonespeedup'),(40,60,'com.tutusw.phonespeedup'),(41,61,'com.tutusw.phonespeedup'),(42,62,'com.tutusw.phonespeedup'),(43,63,'com.tutusw.phonespeedup'),(44,65,'com.tutusw.phonespeedup'),(45,66,'com.tutusw.phonespeedup'),(46,67,'com.tutusw.phonespeedup'),(47,68,'com.tutusw.phonespeedup'),(48,69,'com.tutusw.phonespeedup'),(49,70,'com.noshufou.android.su'),(50,72,'com.tutusw.phonespeedup'),(51,71,'com.noshufou.android.su'),(52,73,'com.tutusw.phonespeedup'),(53,75,'(.*)'),(54,76,'(.*)'),(55,80,'com.tutusw.phonespeedup'),(56,79,'com.livegame.wallpapermingche'),(57,81,'com.safesys.superexplorer'),(58,82,'com.safesys.superexplorer'),(59,83,'com.safesys.superexplorer'),(60,84,'com.safesys.superexplorer'),(61,85,'com.livegame.wallpapermingche'),(62,86,'com.livegame.wallpapermingche'),(63,88,'com.livegame.wallpapermingche'),(64,89,'com.safesys.superexplorer'),(65,94,'(.*)'),(66,93,'com.safesys.superexplorer'),(67,95,'NULL-CONSTANT'),(68,98,'com.livegame.wallpapermingche'),(69,100,'com.livegame.wallpapermingche'),(70,102,'com.livegame.wallpapermingche'),(71,101,'com.safesys.sqleditor'),(72,104,'com.livegame.wallpapermingche'),(73,103,'com.safesys.superexplorer'),(74,105,'com.livegame.wallpapermingche'),(75,106,'com.safesys.superexplorer'),(76,107,'com.livegame.wallpapermingche'),(77,109,'com.livegame.wallpapermingche'),(78,111,'com.safesys.superexplorer'),(79,116,'com.safesys.superexplorer'),(80,117,'com.safesys.superexplorer'),(81,118,'com.safesys.superexplorer'),(82,119,'com.safesys.superexplorer'),(83,120,'com.safesys.superexplorer'),(84,121,'com.safesys.superexplorer'),(85,122,'com.noshufou.android.su'),(86,123,'com.noshufou.android.su'),(87,124,'com.safesys.superexplorer'),(88,128,'com.safesys.sqleditor'),(89,129,'com.safesys.superexplorer'),(90,130,'com.safesys.superexplorer'),(91,133,'com.safesys.superexplorer'),(92,137,'com.alan.message'),(93,139,'com.noshufou.android.su'),(94,140,'com.noshufou.android.su'),(95,144,'com.alan.message'),(96,145,'com.alan.message'),(97,146,'com.alan.message'),(98,147,'com.alan.message'),(99,149,'com.alan.message'),(100,150,'com.alan.message'),(101,151,'com.alan.message'),(102,154,'com.alan.message'),(103,155,'com.alan.message'),(104,156,'com.alan.message'),(105,157,'com.alan.message'),(106,159,'com.alan.message'),(107,160,'com.alan.message'),(108,161,'com.alan.message'),(109,162,'com.alan.message'),(110,163,'com.alan.message');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,7,0),(3,8,0),(4,9,0),(5,17,0),(6,18,0),(7,23,0),(8,31,0),(9,34,0),(10,35,0),(11,43,0),(12,46,0),(13,49,0),(14,55,0),(15,8,0),(16,56,0),(17,7,0),(18,57,0),(19,66,0),(20,68,0),(21,69,0),(22,49,0),(23,43,0),(24,70,0),(25,71,0),(26,72,0),(27,73,0),(28,49,0),(29,43,0),(30,70,0),(31,71,0),(32,72,0),(33,73,0),(34,49,0),(35,43,0),(36,70,0),(37,71,0),(38,72,0),(39,73,0),(40,74,0),(41,75,0),(42,89,0),(43,90,0);
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
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,5,0,0),(7,6,0,0),(8,7,0,0),(9,7,0,0),(10,8,0,0),(11,9,0,0),(12,9,0,0),(13,10,1,0),(14,11,0,0),(15,12,0,0),(16,15,0,0),(17,16,0,0),(18,17,0,0),(19,18,1,0),(20,18,1,0),(21,18,1,0),(22,18,1,0),(23,18,1,0),(24,18,1,0),(25,18,1,0),(26,18,1,0),(27,22,0,0),(28,24,0,0),(29,26,1,0),(30,27,0,0),(31,29,1,0),(32,30,0,0),(33,31,0,0),(34,33,0,0),(35,33,0,0),(36,35,1,0),(37,35,1,0),(38,36,0,0),(39,36,0,0),(40,37,1,0),(41,37,1,0),(42,38,1,0),(43,39,0,0),(44,40,0,0),(45,40,0,0),(46,40,0,0),(47,41,1,0),(48,42,0,0),(49,42,0,0),(50,43,1,0),(51,44,1,0),(52,45,1,0),(53,46,0,0),(54,47,1,0),(55,48,0,0),(56,49,1,0),(57,50,0,0),(58,51,1,0),(59,52,0,0),(60,53,0,0),(61,53,0,0),(62,54,0,0),(63,55,0,0),(64,56,1,0),(65,57,0,0),(66,58,0,0),(67,59,0,0),(68,60,1,0),(69,60,1,0),(70,61,1,0),(71,61,1,0),(72,62,0,0),(73,63,0,0),(74,64,1,0),(75,64,1,0),(76,64,1,0),(77,65,1,0),(78,66,1,0),(79,67,0,0),(80,68,0,0),(81,71,0,0),(82,72,0,0),(83,73,0,0),(84,75,0,0),(85,76,1,0),(86,76,1,0),(87,77,1,0),(88,78,0,0),(89,79,0,0),(90,80,1,0),(91,81,1,0),(92,82,1,0),(93,83,0,0),(94,84,0,0),(95,85,0,0),(96,86,1,0),(97,86,1,0),(98,87,0,0),(99,86,1,0),(100,88,0,0),(101,86,0,0),(102,88,0,0),(103,86,0,0),(104,89,0,0),(105,89,0,0),(106,86,0,0),(107,90,0,0),(108,86,1,0),(109,90,0,0),(110,86,1,0),(111,86,0,0),(112,86,1,0),(113,91,1,0),(114,86,1,0),(115,86,1,0),(116,92,0,0),(117,93,0,0),(118,94,0,0),(119,95,0,0),(120,95,0,0),(121,96,0,0),(122,97,1,0),(123,97,1,0),(124,98,0,0),(125,100,1,0),(126,100,1,0),(127,100,1,0),(128,100,0,0),(129,100,0,0),(130,100,0,0),(131,100,1,0),(132,100,1,0),(133,100,0,0),(134,100,1,0),(135,100,1,0),(136,100,1,0),(137,102,0,0),(138,103,1,0),(139,104,1,0),(140,104,1,0),(141,105,1,0),(142,105,1,0),(143,105,1,0),(144,106,0,0),(145,107,0,0),(146,108,0,0),(147,109,0,0),(148,110,1,0),(149,111,0,0),(150,111,0,0),(151,113,0,0),(152,114,1,0),(153,115,1,0),(154,116,0,0),(155,119,0,0),(156,120,0,0),(157,121,0,0),(158,122,1,0),(159,123,0,0),(160,123,0,0),(161,124,0,0),(162,125,1,0),(163,125,1,0),(164,126,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (15,'android.permission.ACCESS_COARSE_LOCATION'),(17,'android.permission.ACCESS_FINE_LOCATION'),(22,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(11,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.BIND_WALLPAPER'),(8,'android.permission.BROADCAST_STICKY'),(5,'android.permission.CHANGE_WIFI_STATE'),(1,'android.permission.DISABLE_KEYGUARD'),(16,'android.permission.GET_TASKS'),(12,'android.permission.INSTALL_PACKAGES'),(4,'android.permission.INTERNET'),(21,'android.permission.READ_CONTACTS'),(19,'android.permission.READ_EXTERNAL_STORAGE'),(2,'android.permission.READ_PHONE_STATE'),(13,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(20,'android.permission.SEND_SMS'),(6,'android.permission.VIBRATE'),(10,'android.permission.WAKE_LOCK'),(9,'android.permission.WRITE_EXTERNAL_STORAGE'),(14,'android.permission.WRITE_SMS');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://android.thinkchange.mobi',NULL,NULL,NULL),(2,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(3,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(4,NULL,NULL,'market://search?q=pname:com.mhuang.overclocking',NULL,NULL,NULL),(5,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(6,NULL,NULL,'market://search?q=pname:com.safesys.sqleditor',NULL,NULL,NULL),(7,'(.*)','(.*)','(.*)','(.*)',NULL,'(.*)'),(8,NULL,NULL,'market://search?q=pname:com.safesys.superexplorer',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(16,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(25,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(37,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(38,NULL,NULL,'(.*)',NULL,NULL,NULL),(39,NULL,NULL,'(.*)',NULL,NULL,NULL),(40,NULL,NULL,'(.*)',NULL,NULL,NULL),(41,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(42,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(43,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,34,2),(2,74,5),(3,117,42),(4,128,43);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,2),(9,2,4),(10,2,8),(11,3,2),(12,3,3),(13,3,4),(14,3,5),(15,3,6),(16,4,2),(17,3,7),(18,4,3),(19,3,9),(20,4,4),(21,3,10),(22,4,5),(23,3,11),(24,4,7),(25,4,9),(26,4,11),(27,4,12),(28,4,13),(29,4,14),(30,4,15),(31,5,2),(32,5,4),(33,5,9),(34,5,11),(35,5,13),(36,5,14),(37,5,15),(38,6,17),(39,6,16),(40,6,2),(41,6,3),(42,6,4),(43,6,5),(44,6,7),(45,6,9),(46,6,11),(47,6,15),(48,7,2),(49,7,4),(50,7,5),(51,7,7),(52,7,9),(53,7,11),(54,7,12),(55,7,13),(56,7,14),(57,7,15),(58,7,17),(59,7,16),(60,7,19),(61,7,21),(62,7,20),(63,7,22);
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

-- Dump completed on 2015-10-09  0:38:18
