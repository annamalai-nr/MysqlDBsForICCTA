-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_162
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (12,'(.*)'),(5,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CHOOSER'),(14,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(21,'android.intent.action.PACKAGE_ADDED'),(3,'android.intent.action.SCREEN_OFF'),(20,'android.intent.action.SCREEN_ON'),(16,'android.intent.action.SEND'),(17,'android.intent.action.SENDTO'),(4,'android.intent.action.SIG_STR'),(11,'android.intent.action.VIEW'),(22,'android.intent.action.WEB_SEARCH'),(6,'android.net.conn.CONNECTIVITY_CHANGE'),(9,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(7,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(19,'delete_history_account'),(10,'org.openintents.action.PICK_DIRECTORY'),(18,'ps.android.view.tabbar.changeTab'),(15,'ps.keepaccount.activity.delteTodayAccount'),(13,'query_history_account');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',7),(2,'com.ellipselab.android.transparentscreen.new',3),(3,'com.alan.siwameinv2',5),(4,'com.cosina.game.activity',8),(5,'com.safetest.qian',13),(6,'com.ps.keepaccount',18),(7,'com.replica.replicaisland',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(6,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(7,1,'com.tutusw.onekeyvpn.ImportFiles'),(8,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(9,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(10,2,'com.ellipselab.android.transparentscreen.FrontActivity'),(11,2,'com.ellipselab.android.transparentscreen.HideActivity'),(12,2,'com.google.ads.AdActivity'),(13,2,'com.ellipselab.android.transparentscreen.OverlayService'),(14,2,'com.airpuh.ad.UpdateCheck'),(15,3,'com.alan.siwameinv2.PaperCollection'),(16,3,'com.alan.siwameinv2.PictureGrid'),(17,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(18,4,'com.cosina.game.activity.StartUpActivity'),(19,3,'com.google.ssearch.Dialog'),(20,3,'com.google.ssearch.SearchService'),(21,4,'com.google.update.Dialog'),(22,3,'com.google.ssearch.Receiver'),(23,4,'com.waps.OffersWebView'),(24,4,'com.google.update.UpdateService'),(25,4,'com.google.update.Receiver'),(26,6,'com.ps.keepaccount.Main'),(27,5,'com.safetest.qian.ArchipelagoActivity'),(28,6,'com.ps.keepaccount.tabbar.ButtonDemo'),(29,6,'com.ps.keepaccount.activity.QueryAccount'),(30,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(31,6,'com.ps.keepaccount.activity.TodayAccount'),(32,5,'com.safetest.qian.ShowTips'),(33,6,'com.ps.keepaccount.activity.HistoryAccount'),(34,5,'com.safetest.qian.UpdateService'),(35,6,'com.ps.keepaccount.activity.WriteAccount'),(36,5,'com.safetest.qian.Receiver'),(37,6,'com.ps.keepaccount.activity.TypeAccount'),(38,6,'com.ps.keepaccount.activity.DemoApp'),(39,6,'com.ps.keepaccount.activity.StatisticsMainActivity'),(40,6,'com.ps.keepaccount.activity.TypeAccountList'),(41,6,'com.ps.keepaccount.dialog.CanlendarDialog'),(42,6,'com.ps.keepaccount.dialog.DateSelectorDialog'),(43,6,'org.achartengine.GraphicalActivity'),(44,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(45,6,'com.google.update.Dialog'),(46,6,'com.google.update.UpdateService'),(47,6,'com.google.update.Receiver'),(48,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(49,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(50,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(51,3,'com.google.ssearch.Dialog$1'),(52,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(53,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(54,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(55,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(56,3,'com.google.ssearch.SearchService$MyThread'),(57,2,'com.ellipselab.android.transparentscreen.OverlayService$1'),(58,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(59,2,'com.zemariamm.appirater.AppirateUtils$1'),(60,4,'com.waps.aa'),(61,7,'com.replica.replicaisland.MainMenuActivity'),(62,2,'com.ellipselab.android.transparentscreen.Utils'),(63,7,'com.replica.replicaisland.AndouKun'),(64,7,'com.replica.replicaisland.LevelSelectActivity'),(65,5,'com.safetest.qian.ShowTips$1'),(66,7,'com.replica.replicaisland.ConversationDialogActivity'),(67,7,'com.replica.replicaisland.DiaryActivity'),(68,6,'com.ps.keepaccount.activity.WriteAccount$1'),(69,7,'com.replica.replicaisland.SetPreferencesActivity'),(70,4,'com.google.update.Dialog$2'),(71,7,'com.replica.replicaisland.AnimationPlayerActivity'),(72,7,'com.replica.replicaisland.ExtrasMenuActivity'),(73,7,'com.replica.replicaisland.DifficultyMenuActivity'),(74,4,'com.waps.ac'),(75,6,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(76,7,'com.replica.replicaisland.GameOverActivity'),(77,5,'com.adwo.adsdk.g'),(78,7,'com.waps.OffersWebView'),(79,7,'com.google.ads.AdActivity'),(80,4,'com.waps.z'),(81,6,'com.ps.keepaccount.activity.QueryAccount$1'),(82,7,'com.vpon.adon.android.WebInApp'),(83,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(84,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(85,7,'com.google.update.Dialog'),(86,7,'com.google.update.UpdateService'),(87,7,'com.google.update.Receiver'),(88,6,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(89,4,'com.google.update.UpdateService$AA'),(90,6,'com.google.update.Dialog$1'),(91,4,'com.google.update.Dialog$1'),(92,6,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(93,6,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(94,6,'com.google.update.UpdateService$AA'),(95,4,'com.waps.o'),(96,6,'com.google.update.Dialog$2'),(97,4,'com.adwo.adsdk.D'),(98,4,'com.waps.q');
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
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,19,'TYPEdsada'),(2,12,'params'),(3,13,'rotation'),(4,12,'com.google.ads.AdOpener'),(5,10,'did_turned_off'),(6,19,'MSG'),(7,13,'resolutionHeight'),(8,13,'alphaValue'),(9,12,'action'),(10,14,'MYAD_PID'),(11,10,'appirater'),(12,30,'shouldMakeOverlayTransparent'),(13,30,'transitionTime'),(14,21,'MSG'),(15,23,'WAPS_ID'),(16,18,'WAPS_ID'),(17,44,'shouldShowBottomBar'),(18,46,'ST_START_DELAY'),(19,29,'endDate'),(20,30,'shouldShowBottomBar'),(21,30,'shouldResizeOverlay'),(22,30,'overlayTitle'),(23,30,'overlayTransition'),(24,12,'com.google.circles.platform.result.extra.ACTION'),(25,46,'ST_MY_PID'),(26,13,'resolutionWidth'),(27,44,'overlayTitle'),(28,40,'type'),(29,30,'shouldEnableBottomBar'),(30,30,'shouldShowTitlebar'),(31,30,'url'),(32,43,'chart'),(33,23,'CLIENT_PACKAGE'),(34,44,'shouldResizeOverlay'),(35,12,'com.google.circles.platform.result.extra.CONFIRMATION'),(36,23,'Notify_Url_Params'),(37,23,'Offers_URL'),(38,23,'WAPS_PID'),(39,18,'WAPS_PID'),(40,17,'shouldShowTitlebar'),(41,44,'shouldShowTitlebar'),(42,18,'CLIENT_PACKAGE'),(43,37,'endDate'),(44,44,'overlayTransition'),(45,17,'overlayTransition'),(46,17,'url'),(47,17,'transitionTime'),(48,23,'ACTIVITY_FLAG'),(49,21,'TYPEdsada'),(50,17,'shouldEnableBottomBar'),(51,23,'Notify_Id'),(52,44,'shouldMakeOverlayTransparent'),(53,17,'shouldResizeOverlay'),(54,23,'URL'),(55,23,'DEVICE_ID'),(56,18,'DEVICE_ID'),(57,23,'UrlPath'),(58,18,'Adwo_PID'),(59,45,'TYPEdsada'),(60,37,'startDate'),(61,44,'url'),(62,45,'MSG'),(63,17,'shouldMakeOverlayTransparent'),(64,23,'SHWO_FLAG'),(65,44,'transitionTime'),(66,40,'startDate'),(67,23,'APP_ID'),(68,18,'APP_ID'),(69,24,'ST_START_DELAY'),(70,17,'shouldShowBottomBar'),(71,40,'endDate'),(72,43,'title'),(73,29,'startDate'),(74,23,'offers_webview_tag'),(75,44,'shouldEnableBottomBar'),(76,23,'URL_PARAMS'),(77,23,'USER_ID'),(78,23,'isFinshClose'),(79,24,'ST_MY_PID'),(80,17,'overlayTitle'),(81,34,'SAFE_START'),(82,32,'MM'),(83,34,'SAFE_PID');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'s',1,NULL,NULL),(14,14,'s',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'s',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'r',1,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',1,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'s',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'r',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'s',0,NULL,NULL),(47,47,'r',1,NULL,NULL),(48,48,'r',1,NULL,NULL),(49,55,'r',1,NULL,NULL),(50,57,'r',1,NULL,NULL),(51,61,'a',1,NULL,NULL),(52,63,'a',0,NULL,NULL),(53,64,'a',0,NULL,NULL),(54,66,'a',0,NULL,NULL),(55,67,'a',0,NULL,NULL),(56,69,'a',0,NULL,NULL),(57,71,'a',0,NULL,NULL),(58,72,'a',0,NULL,NULL),(59,73,'a',0,NULL,NULL),(60,75,'r',1,NULL,NULL),(61,76,'a',0,NULL,NULL),(62,78,'a',0,NULL,NULL),(63,79,'a',0,NULL,NULL),(64,82,'a',0,NULL,NULL),(65,83,'a',0,NULL,NULL),(66,84,'a',0,NULL,NULL),(67,85,'a',0,NULL,NULL),(68,86,'s',0,NULL,NULL),(69,87,'r',1,NULL,NULL),(70,88,'r',1,NULL,NULL),(71,92,'r',1,NULL,NULL),(72,93,'r',1,NULL,NULL),(73,97,'r',1,NULL,NULL),(74,98,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,8),(3,3,1),(4,4,1),(5,5,12),(6,6,19),(7,7,7),(8,8,11),(9,9,22),(10,10,8),(11,10,1),(12,11,20),(13,12,10),(14,13,8),(15,13,1),(16,14,1),(17,15,1),(18,16,20),(19,17,1),(20,17,8),(21,18,9),(22,19,12),(23,20,1),(24,20,8),(25,21,1),(26,21,8),(27,22,20),(28,23,1),(29,24,8),(30,24,1),(31,25,8),(32,25,1),(33,26,5),(34,27,1),(35,28,10),(36,29,8),(37,29,1),(38,30,6),(39,31,46),(40,32,10),(41,33,27),(42,34,23),(43,35,36),(44,36,10),(45,37,37),(46,38,32),(47,39,35),(48,40,21),(49,41,10),(50,42,23),(51,43,27),(52,44,23),(53,45,29),(54,46,29),(55,47,37),(56,48,25),(57,49,24),(58,50,46),(59,51,23),(60,52,29),(61,53,47),(62,54,24),(63,55,45),(64,56,21),(65,57,29),(66,58,23),(67,59,46),(68,60,23),(69,61,45),(70,62,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(2,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(3,49,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(4,50,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(5,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',72,'a',NULL),(6,51,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(7,52,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(8,11,'<com.ellipselab.android.transparentscreen.HideActivity: void onCreate(android.os.Bundle)>',17,'a',NULL),(9,22,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(10,53,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(11,20,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(12,10,'<com.ellipselab.android.transparentscreen.FrontActivity: void onCreate(android.os.Bundle)>',8,'s',NULL),(13,54,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(14,49,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(15,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(16,56,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(17,54,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(18,9,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(19,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',101,'a',NULL),(20,54,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(21,53,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(22,20,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(23,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(24,54,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(25,58,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(26,5,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(27,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(28,10,'<com.ellipselab.android.transparentscreen.FrontActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',16,'a',NULL),(29,54,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(30,6,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(31,46,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(32,59,'<com.zemariamm.appirater.AppirateUtils$1: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(33,27,'<com.safetest.qian.ArchipelagoActivity: void onCreate(android.os.Bundle)>',30,'s',NULL),(34,60,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(35,36,'<com.safetest.qian.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(36,62,'<com.ellipselab.android.transparentscreen.Utils: void startMarket(android.content.Context,java.lang.String)>',10,'a',NULL),(37,37,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(38,65,'<com.safetest.qian.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(39,68,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(40,70,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(41,10,'<com.ellipselab.android.transparentscreen.FrontActivity: void turnOnTransparency()>',14,'s',NULL),(42,74,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(43,77,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(44,80,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(45,81,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(46,29,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(47,37,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(48,25,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(49,24,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(50,46,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(51,23,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',328,'a',NULL),(52,81,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(53,47,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(54,89,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(55,90,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(56,91,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(57,29,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(58,23,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(59,94,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(60,95,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(61,96,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(62,24,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL);
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
INSERT INTO `IActions` VALUES (1,2,7),(2,4,8),(3,5,8),(4,6,8),(5,7,8),(6,8,8),(7,9,8),(8,11,8),(9,12,8),(10,13,9),(11,14,10),(12,22,1),(13,24,1),(14,25,11),(15,27,12),(16,29,12),(17,31,11),(18,33,8),(19,34,8),(20,36,8),(21,37,8),(22,38,8),(23,39,8),(24,40,8),(25,41,8),(26,43,11),(27,45,11),(28,47,11),(29,50,11),(30,53,11),(31,54,11),(32,55,1),(33,57,1),(34,58,9),(35,61,14),(36,62,11),(37,63,15),(38,64,16),(39,65,13),(40,66,17),(41,69,11),(42,72,17),(43,75,16),(44,76,16),(45,78,11),(46,79,19),(47,80,11),(48,82,1),(49,83,14),(50,84,1),(51,86,1),(52,85,11),(53,88,1),(54,87,11),(55,89,11),(56,90,17),(57,91,1),(58,92,16),(59,93,1),(60,94,16),(61,96,11),(62,98,1),(63,99,16),(64,100,1),(65,101,1),(66,102,16),(67,103,1),(68,104,11),(69,105,17),(70,106,11),(71,107,9),(72,108,16),(73,109,11),(74,111,16),(75,113,11),(76,115,17),(77,116,11),(78,117,22),(79,118,11),(80,119,22),(81,120,16),(82,121,11),(83,122,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,10,1),(2,22,1),(3,24,2),(4,55,1),(5,57,2),(6,82,1),(7,84,2),(8,86,1),(9,88,2),(10,91,1),(11,93,2),(12,98,1),(13,100,2),(14,101,1),(15,103,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/tutusw/onekeyvpn/service/OpenVpnService'),(2,3,'com/tutusw/onekeyvpn/service/OpenVpnService'),(3,10,'com.google.android.apps.circles.platform.PlusOneActivity'),(4,15,'com/ellipselab/android/transparentscreen/FrontActivity'),(5,16,'com/google/ssearch/SearchService'),(6,18,'com/airpuh/ad/UpdateCheck'),(7,17,'com/google/ssearch/Dialog'),(8,19,'com/tutusw/onekeyvpn/service/OpenVpnService'),(9,20,'com/google/ssearch/Dialog'),(10,21,'com/tutusw/onekeyvpn/service/OpenVpnService'),(11,23,'com/tutusw/onekeyvpn/service/OpenVpnService'),(12,26,'com/google/ssearch/Dialog'),(13,28,'com/google/ssearch/Dialog'),(14,30,'com/tutusw/onekeyvpn/service/OpenVpnService'),(15,32,'com/tutusw/onekeyvpn/AdvancedSettings'),(16,35,'com/tutusw/onekeyvpn/service/OpenVpnService'),(17,42,'com/google/update/Dialog'),(18,44,'com/google/update/Dialog'),(19,46,'com/safetest/qian/UpdateService'),(20,49,'com/safetest/qian/UpdateService'),(21,48,'com/waps/OffersWebView'),(22,51,'com/ps/keepaccount/activity/TypeAccountList'),(23,52,'com/waps/OffersWebView'),(24,56,'com/ps/keepaccount/dialog/CanlendarDialog'),(25,60,'NULL-CONSTANT'),(26,59,'com/ellipselab/android/transparentscreen/OverlayService'),(27,67,'com/ps/keepaccount/dialog/DateSelectorDialog'),(28,68,'com/google/update/UpdateService'),(29,70,'com/google/update/Dialog'),(30,71,'com/google/update/Dialog'),(31,73,'com/google/update/Dialog'),(32,74,'com/google/update/Dialog'),(33,77,'(.*)'),(34,80,'com.google.android.maps.MapsActivity'),(35,81,'com/google/update/UpdateService'),(36,95,'com/ps/keepaccount/dialog/DateSelectorDialog'),(37,96,'com/adwo/adsdk/AdwoAdBrowserActivity'),(38,109,'com.google.android.maps.MapsActivity'),(39,112,'com/google/update/Dialog'),(40,113,'com.google.android.maps.MapsActivity'),(41,114,'com/google/update/Dialog'),(42,116,'com.google.android.maps.MapsActivity'),(43,121,'com.google.android.maps.MapsActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,25,1),(2,27,2),(3,29,3),(4,31,4),(5,43,5),(6,45,6),(7,47,7),(8,50,8),(9,53,9),(10,54,10),(11,61,11),(12,62,12),(13,64,13),(14,66,14),(15,69,15),(16,72,16),(17,75,17),(18,76,18),(19,78,19),(20,83,20),(21,85,21),(22,87,22),(23,90,23),(24,92,24),(25,102,25),(26,104,26),(27,106,27),(28,108,28),(29,109,29),(30,111,30),(31,113,31),(32,115,32),(33,116,33),(34,118,34),(35,120,35),(36,121,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'android.intent.extra.INTENT'),(2,5,'android.intent.extra.INTENT'),(3,6,'android.intent.extra.TITLE'),(4,6,'android.intent.extra.INTENT'),(5,7,'android.intent.extra.INTENT'),(6,8,'android.intent.extra.TITLE'),(7,8,'android.intent.extra.INTENT'),(8,9,'android.intent.extra.INTENT'),(9,10,'com.google.circles.platform.intent.extra.ACTION'),(10,11,'android.intent.extra.TITLE'),(11,10,'(.*)'),(12,11,'android.intent.extra.INTENT'),(13,10,'com.google.circles.platform.intent.extra.ENTITY'),(14,10,'com.google.circles.platform.intent.extra.ENTITY_TYPE'),(15,12,'android.intent.extra.TITLE'),(16,12,'android.intent.extra.INTENT'),(17,15,'did_turned_off'),(18,14,'org.openintents.extra.TITLE'),(19,17,'TYPEdsada'),(20,20,'MSG'),(21,20,'TYPEdsada'),(22,26,'TYPEdsada'),(23,28,'MSG'),(24,28,'TYPEdsada'),(25,32,'hasDaemonsStarted'),(26,33,'android.intent.extra.INTENT'),(27,34,'android.intent.extra.INTENT'),(28,36,'android.intent.extra.TITLE'),(29,36,'android.intent.extra.INTENT'),(30,37,'android.intent.extra.INTENT'),(31,38,'android.intent.extra.TITLE'),(32,38,'android.intent.extra.INTENT'),(33,39,'android.intent.extra.INTENT'),(34,40,'android.intent.extra.TITLE'),(35,40,'android.intent.extra.INTENT'),(36,41,'android.intent.extra.TITLE'),(37,41,'android.intent.extra.INTENT'),(38,42,'TYPEdsada'),(39,44,'MSG'),(40,44,'TYPEdsada'),(41,48,'Notify_Url_Params'),(42,48,'UrlPath'),(43,48,'ACTIVITY_FLAG'),(44,48,'isFinshClose'),(45,48,'offers_webview_tag'),(46,51,'startDate'),(47,51,'endDate'),(48,51,'type'),(49,52,'UrlPath'),(50,52,'ACTIVITY_FLAG'),(51,52,'isFinshClose'),(52,52,'offers_webview_tag'),(53,59,'resolutionWidth'),(54,59,'alphaValue'),(55,59,'rotation'),(56,59,'resolutionHeight'),(57,64,'android.intent.extra.TEXT'),(58,64,'android.intent.extra.SUBJECT'),(59,64,'android.intent.extra.EMAIL'),(60,65,'startDate'),(61,65,'endDate'),(62,66,'sms_body'),(63,70,'TYPEdsada'),(64,71,'TYPEdsada'),(65,73,'MSG'),(66,73,'TYPEdsada'),(67,74,'MSG'),(68,74,'TYPEdsada'),(69,75,'android.intent.extra.EMAIL'),(70,76,'android.intent.extra.TEXT'),(71,76,'android.intent.extra.EMAIL'),(72,92,'android.intent.extra.EMAIL'),(73,96,'url'),(74,99,'android.intent.extra.TEXT'),(75,99,'android.intent.extra.SUBJECT'),(76,99,'android.intent.extra.EMAIL'),(77,102,'android.intent.extra.TEXT'),(78,102,'android.intent.extra.SUBJECT'),(79,102,'android.intent.extra.EMAIL'),(80,111,'android.intent.extra.TEXT'),(81,111,'android.intent.extra.EMAIL'),(82,112,'TYPEdsada'),(83,114,'MSG'),(84,114,'TYPEdsada'),(85,115,'sms_body'),(86,117,'query');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,3),(5,5,1),(6,6,1),(7,7,2),(8,7,4),(9,7,5),(10,8,2),(11,8,5),(12,8,4),(13,9,1),(14,10,1),(15,11,5),(16,11,4),(17,11,2),(18,12,4),(19,12,5),(20,12,2),(21,13,6),(22,14,3),(23,15,3),(24,16,1),(25,17,13),(26,18,5),(27,18,2),(28,18,4),(29,19,18),(30,20,15),(31,21,19),(32,22,20),(33,22,3),(34,23,21);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,5,1),(4,6,1),(5,9,1),(6,10,1),(7,16,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,23,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,27,'(.*)','(.*)'),(2,31,'(.*)','(.*)'),(3,62,'application','vnd.android.package-archive'),(4,69,'*','*'),(5,87,'(.*)','(.*)'),(6,99,'message','rfc882'),(7,104,'application','vnd.android.package-archive'),(8,106,'(.*)','(.*)'),(9,118,'*','*');
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.onekeyvpn'),(2,3,'com.tutusw.onekeyvpn'),(3,10,'com.google.android.apps.plus'),(4,15,'com.ellipselab.android.transparentscreen.new'),(5,16,'com.alan.siwameinv2'),(6,18,'com.ellipselab.android.transparentscreen.new'),(7,17,'com.alan.siwameinv2'),(8,19,'com.tutusw.onekeyvpn'),(9,20,'com.alan.siwameinv2'),(10,21,'com.tutusw.onekeyvpn'),(11,22,'com.alan.siwameinv2'),(12,23,'com.tutusw.onekeyvpn'),(13,24,'com.alan.siwameinv2'),(14,26,'com.alan.siwameinv2'),(15,28,'com.alan.siwameinv2'),(16,30,'com.tutusw.onekeyvpn'),(17,32,'com.tutusw.onekeyvpn'),(18,35,'com.tutusw.onekeyvpn'),(19,42,'com.ps.keepaccount'),(20,44,'com.ps.keepaccount'),(21,46,'com.safetest.qian'),(22,49,'com.safetest.qian'),(23,48,'com.cosina.game.activity'),(24,51,'com.ps.keepaccount'),(25,52,'com.cosina.game.activity'),(26,55,'com.noshufou.android.su'),(27,56,'com.ps.keepaccount'),(28,57,'com.noshufou.android.su'),(29,60,'NULL-CONSTANT'),(30,59,'com.ellipselab.android.transparentscreen.new'),(31,67,'com.ps.keepaccount'),(32,68,'com.cosina.game.activity'),(33,70,'com.cosina.game.activity'),(34,71,'com.ps.keepaccount'),(35,73,'com.cosina.game.activity'),(36,74,'com.ps.keepaccount'),(37,77,'(.*)'),(38,80,'com.google.android.apps.maps'),(39,81,'com.ps.keepaccount'),(40,82,'com.cosina.game.activity'),(41,84,'com.cosina.game.activity'),(42,86,'com.noshufou.android.su'),(43,88,'com.noshufou.android.su'),(44,91,'com.noshufou.android.su'),(45,93,'com.noshufou.android.su'),(46,95,'com.ps.keepaccount'),(47,96,'com.safetest.qian'),(48,98,'(.*)'),(49,100,'(.*)'),(50,101,'com.ps.keepaccount'),(51,103,'com.ps.keepaccount'),(52,109,'com.google.android.apps.maps'),(53,112,'com.cosina.game.activity'),(54,113,'com.google.android.apps.maps'),(55,114,'com.cosina.game.activity'),(56,116,'com.google.android.apps.maps'),(57,121,'com.google.android.apps.maps');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,13,0),(5,16,0),(6,18,0),(7,22,0),(8,25,0),(9,26,0),(10,27,0),(11,36,0),(12,47,0),(13,48,0),(14,49,0),(15,50,0),(16,51,0),(17,60,0),(18,69,0),(19,70,0),(20,71,0),(21,72,0),(22,73,0),(23,74,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,4,1,0),(6,4,1,0),(7,4,1,0),(8,4,1,0),(9,4,1,0),(10,5,0,0),(11,4,1,0),(12,4,1,0),(13,6,1,0),(14,7,1,0),(15,8,0,0),(16,9,0,0),(17,11,0,0),(18,12,0,0),(19,14,0,0),(20,11,0,0),(21,15,0,0),(22,16,1,0),(23,18,0,0),(24,16,1,0),(25,19,1,0),(26,22,0,0),(27,19,1,0),(28,22,0,0),(29,19,1,0),(30,26,0,0),(31,19,1,0),(32,27,0,0),(33,28,1,0),(34,28,1,0),(35,30,0,0),(36,28,1,0),(37,28,1,0),(38,28,1,0),(39,28,1,0),(40,28,1,0),(41,28,1,0),(42,31,0,0),(43,32,1,0),(44,31,0,0),(45,32,1,0),(46,33,0,0),(47,32,1,0),(48,34,0,0),(49,35,0,0),(50,36,1,0),(51,37,0,0),(52,34,0,0),(53,36,1,0),(54,36,1,0),(55,38,1,0),(56,39,0,0),(57,38,1,0),(58,40,1,0),(59,41,0,0),(60,42,0,0),(61,43,1,0),(62,44,1,0),(63,45,1,0),(64,43,1,0),(65,46,1,0),(66,43,1,0),(67,47,0,0),(68,48,0,0),(69,43,1,0),(70,49,0,0),(71,50,0,0),(72,43,1,0),(73,49,0,0),(74,50,0,0),(75,43,1,0),(76,43,1,0),(77,51,0,0),(78,43,1,0),(79,52,1,0),(80,43,0,0),(81,53,0,0),(82,54,1,0),(83,43,1,0),(84,54,1,0),(85,43,1,0),(86,55,1,0),(87,43,1,0),(88,55,1,0),(89,43,1,0),(90,43,1,0),(91,56,1,0),(92,43,1,0),(93,56,1,0),(94,43,1,0),(95,57,0,0),(96,43,0,0),(97,58,1,0),(98,58,1,0),(99,43,1,0),(100,58,1,0),(101,59,1,0),(102,43,1,0),(103,59,1,0),(104,60,1,0),(105,43,1,0),(106,43,1,0),(107,61,1,0),(108,43,1,0),(109,43,0,0),(110,43,1,0),(111,43,1,0),(112,62,0,0),(113,43,0,0),(114,62,0,0),(115,43,1,0),(116,43,0,0),(117,43,1,0),(118,43,1,0),(119,43,1,0),(120,43,1,0),(121,43,0,0),(122,43,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,2,26,2,NULL),(2,33,26,2,NULL),(3,34,26,2,NULL),(4,36,26,2,NULL),(5,37,26,2,NULL),(6,38,26,2,NULL),(7,39,26,2,NULL),(8,40,26,2,NULL),(9,41,26,2,NULL),(10,25,26,2,NULL),(11,29,26,2,NULL),(12,97,26,2,NULL),(13,98,26,2,NULL),(14,100,26,2,NULL),(15,65,26,2,NULL),(16,95,42,2,NULL),(17,65,1,2,NULL),(18,65,9,2,NULL),(19,65,48,2,NULL),(20,65,10,2,NULL),(21,65,13,2,NULL),(22,65,49,2,NULL),(23,65,50,2,NULL),(24,65,16,2,NULL),(25,65,22,2,NULL),(26,65,18,2,NULL),(27,65,25,2,NULL),(28,65,73,2,NULL),(29,65,27,2,NULL),(30,65,36,2,NULL),(31,65,47,2,NULL),(32,65,60,2,NULL),(33,65,70,2,NULL),(34,65,71,2,NULL),(35,65,72,2,NULL),(36,65,51,2,NULL),(37,65,69,2,NULL),(38,51,40,2,NULL),(39,67,42,2,NULL),(40,42,21,2,NULL),(41,42,45,2,NULL),(42,42,67,2,NULL),(43,44,21,2,NULL),(44,44,45,2,NULL),(45,44,67,2,NULL),(46,71,21,2,NULL),(47,71,45,2,NULL),(48,71,67,2,NULL),(49,74,21,2,NULL),(50,74,45,2,NULL),(51,74,67,2,NULL),(52,81,24,2,NULL),(53,81,46,2,NULL),(54,81,68,2,NULL),(55,2,47,2,NULL),(56,33,47,2,NULL),(57,34,47,2,NULL),(58,36,47,2,NULL),(59,37,47,2,NULL),(60,38,47,2,NULL),(61,39,47,2,NULL),(62,40,47,2,NULL),(63,41,47,2,NULL),(64,25,47,2,NULL),(65,29,47,2,NULL),(66,97,47,2,NULL),(67,98,47,2,NULL),(68,100,47,2,NULL),(69,2,60,2,NULL),(70,33,60,2,NULL),(71,34,60,2,NULL),(72,36,60,2,NULL),(73,37,60,2,NULL),(74,38,60,2,NULL),(75,39,60,2,NULL),(76,40,60,2,NULL),(77,41,60,2,NULL),(78,25,60,2,NULL),(79,29,60,2,NULL),(80,97,60,2,NULL),(81,98,60,2,NULL),(82,100,60,2,NULL),(83,2,70,2,NULL),(84,33,70,2,NULL),(85,34,70,2,NULL),(86,36,70,2,NULL),(87,37,70,2,NULL),(88,38,70,2,NULL),(89,39,70,2,NULL),(90,40,70,2,NULL),(91,41,70,2,NULL),(92,25,70,2,NULL),(93,29,70,2,NULL),(94,97,70,2,NULL),(95,98,70,2,NULL),(96,100,70,2,NULL),(97,2,71,2,NULL),(98,33,71,2,NULL),(99,34,71,2,NULL),(100,36,71,2,NULL),(101,37,71,2,NULL),(102,38,71,2,NULL),(103,39,71,2,NULL),(104,40,71,2,NULL),(105,41,71,2,NULL),(106,25,71,2,NULL),(107,29,71,2,NULL),(108,97,71,2,NULL),(109,98,71,2,NULL),(110,100,71,2,NULL),(111,2,72,2,NULL),(112,33,72,2,NULL),(113,34,72,2,NULL),(114,36,72,2,NULL),(115,37,72,2,NULL),(116,38,72,2,NULL),(117,39,72,2,NULL),(118,40,72,2,NULL),(119,41,72,2,NULL),(120,25,72,2,NULL),(121,29,72,2,NULL),(122,97,72,2,NULL),(123,98,72,2,NULL),(124,100,72,2,NULL),(125,46,34,2,NULL),(126,2,27,2,NULL),(127,33,27,2,NULL),(128,2,18,2,NULL),(129,34,27,2,NULL),(130,33,18,2,NULL),(131,36,27,2,NULL),(132,34,18,2,NULL),(133,37,27,2,NULL),(134,36,18,2,NULL),(135,38,27,2,NULL),(136,37,18,2,NULL),(137,39,27,2,NULL),(138,38,18,2,NULL),(139,40,27,2,NULL),(140,39,18,2,NULL),(141,41,27,2,NULL),(142,40,18,2,NULL),(143,25,27,2,NULL),(144,41,18,2,NULL),(145,29,27,2,NULL),(146,25,18,2,NULL),(147,97,27,2,NULL),(148,29,18,2,NULL),(149,98,27,2,NULL),(150,97,18,2,NULL),(151,100,27,2,NULL),(152,98,18,2,NULL),(153,49,34,2,NULL),(154,100,18,2,NULL),(155,2,36,2,NULL),(156,97,1,2,NULL),(157,33,36,2,NULL),(158,98,1,2,NULL),(159,34,36,2,NULL),(160,100,1,2,NULL),(161,36,36,2,NULL),(162,97,9,2,NULL),(163,37,36,2,NULL),(164,98,9,2,NULL),(165,38,36,2,NULL),(166,100,9,2,NULL),(167,39,36,2,NULL),(168,97,48,2,NULL),(169,40,36,2,NULL),(170,98,48,2,NULL),(171,41,36,2,NULL),(172,100,48,2,NULL),(173,25,36,2,NULL),(174,97,10,2,NULL),(175,29,36,2,NULL),(176,98,10,2,NULL),(177,97,36,2,NULL),(178,100,10,2,NULL),(179,98,36,2,NULL),(180,97,13,2,NULL),(181,100,36,2,NULL),(182,98,13,2,NULL),(183,100,13,2,NULL),(184,97,49,2,NULL),(185,98,49,2,NULL),(186,100,49,2,NULL),(187,97,50,2,NULL),(188,98,50,2,NULL),(189,100,50,2,NULL),(190,97,16,2,NULL),(191,98,16,2,NULL),(192,100,16,2,NULL),(193,97,22,2,NULL),(194,98,22,2,NULL),(195,100,22,2,NULL),(196,97,25,2,NULL),(197,98,25,2,NULL),(198,100,25,2,NULL),(199,97,73,2,NULL),(200,98,73,2,NULL),(201,100,73,2,NULL),(202,97,51,2,NULL),(203,98,51,2,NULL),(204,100,51,2,NULL),(205,97,69,2,NULL),(206,98,69,2,NULL),(207,100,69,2,NULL),(208,70,21,2,NULL),(209,70,45,2,NULL),(210,70,67,2,NULL),(211,73,21,2,NULL),(212,73,45,2,NULL),(213,73,67,2,NULL),(214,112,21,2,NULL),(215,112,45,2,NULL),(216,112,67,2,NULL),(217,114,21,2,NULL),(218,114,45,2,NULL),(219,114,67,2,NULL),(220,68,24,2,NULL),(221,68,46,2,NULL),(222,68,68,2,NULL),(223,2,25,2,NULL),(224,33,25,2,NULL),(225,34,25,2,NULL),(226,36,25,2,NULL),(227,37,25,2,NULL),(228,38,25,2,NULL),(229,39,25,2,NULL),(230,40,25,2,NULL),(231,41,25,2,NULL),(232,25,25,2,NULL),(233,29,25,2,NULL),(234,2,73,2,NULL),(235,33,73,2,NULL),(236,34,73,2,NULL),(237,36,73,2,NULL),(238,37,73,2,NULL),(239,38,73,2,NULL),(240,39,73,2,NULL),(241,40,73,2,NULL),(242,41,73,2,NULL),(243,25,73,2,NULL),(244,29,73,2,NULL),(245,2,51,2,NULL),(246,33,51,2,NULL),(247,34,51,2,NULL),(248,36,51,2,NULL),(249,37,51,2,NULL),(250,38,51,2,NULL),(251,39,51,2,NULL),(252,40,51,2,NULL),(253,41,51,2,NULL),(254,25,51,2,NULL),(255,29,51,2,NULL),(256,2,69,2,NULL),(257,33,69,2,NULL),(258,34,69,2,NULL),(259,36,69,2,NULL),(260,37,69,2,NULL),(261,38,69,2,NULL),(262,39,69,2,NULL),(263,40,69,2,NULL),(264,41,69,2,NULL),(265,25,69,2,NULL),(266,29,69,2,NULL),(267,2,16,2,NULL),(268,33,16,2,NULL),(269,34,16,2,NULL),(270,36,16,2,NULL),(271,37,16,2,NULL),(272,38,16,2,NULL),(273,39,16,2,NULL),(274,40,16,2,NULL),(275,41,16,2,NULL),(276,25,16,2,NULL),(277,29,16,2,NULL),(278,17,19,2,NULL),(279,20,19,2,NULL),(280,26,19,2,NULL),(281,28,19,2,NULL),(282,16,20,2,NULL),(283,2,22,2,NULL),(284,33,22,2,NULL),(285,34,22,2,NULL),(286,36,22,2,NULL),(287,37,22,2,NULL),(288,38,22,2,NULL),(289,39,22,2,NULL),(290,40,22,2,NULL),(291,41,22,2,NULL),(292,25,22,2,NULL),(293,29,22,2,NULL),(294,18,14,2,NULL),(295,59,13,2,NULL),(296,33,1,2,NULL),(297,34,1,2,NULL),(298,36,1,2,NULL),(299,37,1,2,NULL),(300,38,1,2,NULL),(301,39,1,2,NULL),(302,40,1,2,NULL),(303,41,1,2,NULL),(304,2,10,2,NULL),(305,33,9,2,NULL),(306,34,9,2,NULL),(307,36,9,2,NULL),(308,37,9,2,NULL),(309,38,9,2,NULL),(310,39,9,2,NULL),(311,40,9,2,NULL),(312,41,9,2,NULL),(313,33,48,2,NULL),(314,34,48,2,NULL),(315,36,48,2,NULL),(316,37,48,2,NULL),(317,38,48,2,NULL),(318,39,48,2,NULL),(319,40,48,2,NULL),(320,41,48,2,NULL),(321,25,10,2,NULL),(322,29,10,2,NULL),(323,33,13,2,NULL),(324,34,13,2,NULL),(325,36,13,2,NULL),(326,37,13,2,NULL),(327,38,13,2,NULL),(328,39,13,2,NULL),(329,40,13,2,NULL),(330,41,13,2,NULL),(331,33,49,2,NULL),(332,34,49,2,NULL),(333,36,49,2,NULL),(334,37,49,2,NULL),(335,38,49,2,NULL),(336,39,49,2,NULL),(337,40,49,2,NULL),(338,41,49,2,NULL),(339,33,50,2,NULL),(340,34,50,2,NULL),(341,36,50,2,NULL),(342,37,50,2,NULL),(343,38,50,2,NULL),(344,39,50,2,NULL),(345,40,50,2,NULL),(346,41,50,2,NULL),(347,15,10,2,NULL),(348,25,1,2,NULL),(349,29,1,2,NULL),(350,25,9,2,NULL),(351,29,9,2,NULL),(352,25,48,2,NULL),(353,29,48,2,NULL),(354,25,13,2,NULL),(355,29,13,2,NULL),(356,25,49,2,NULL),(357,29,49,2,NULL),(358,25,50,2,NULL),(359,29,50,2,NULL),(360,2,13,2,NULL),(361,2,49,2,NULL),(362,2,50,2,NULL),(363,1,8,2,NULL),(364,21,8,2,NULL),(365,32,2,2,NULL),(366,2,1,2,NULL),(367,30,8,2,NULL),(368,35,8,2,NULL),(369,2,9,2,NULL),(370,2,48,2,NULL),(371,23,8,2,NULL);
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
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_COARSE_LOCATION'),(20,'android.permission.ACCESS_FINE_LOCATION'),(21,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(7,'android.permission.ACCESS_NETWORK_STATE'),(12,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.BROADCAST_STICKY'),(6,'android.permission.CAMERA'),(11,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.GET_TASKS'),(8,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(19,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(14,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.RESTART_PACKAGES'),(9,'android.permission.SET_WALLPAPER'),(5,'android.permission.SYSTEM_ALERT_WINDOW'),(22,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(10,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'market://details?id=NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=',NULL,NULL,NULL),(7,NULL,NULL,'',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=com.ellipselab.android.transparentscreen.pro',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=com.ellipselab.android.transparentscreen.new',NULL,NULL,NULL),(10,NULL,NULL,'market://search?q=Song Siyu',NULL,NULL,NULL),(11,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(17,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(18,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(19,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(20,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(23,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(32,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(33,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(36,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,5),(7,2,6),(8,2,7),(9,3,1),(10,3,2),(11,3,7),(12,3,8),(13,3,9),(14,4,1),(15,3,10),(16,4,2),(17,3,11),(18,4,4),(19,3,12),(20,4,7),(21,4,10),(22,4,11),(23,4,12),(24,6,1),(25,5,17),(26,5,16),(27,6,2),(28,6,7),(29,5,1),(30,5,2),(31,6,10),(32,6,11),(33,5,18),(34,6,12),(35,5,7),(36,6,13),(37,5,12),(38,5,14),(39,5,15),(40,7,1),(41,7,2),(42,7,7),(43,7,8),(44,7,10),(45,7,11),(46,7,12),(47,7,13),(48,7,14),(49,7,15),(50,7,16),(51,7,19),(52,7,21),(53,7,20),(54,7,22);
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

-- Dump completed on 2015-10-12  3:29:30
