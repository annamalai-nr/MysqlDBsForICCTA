-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_139
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
INSERT INTO `ActionStrings` VALUES (11,'(.*)'),(6,'android.appwidget.action.APPWIDGET_UPDATE'),(5,'android.intent.action.BATTERY_CHANGED'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(3,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(2,'android.intent.action.SIG_STR'),(12,'android.intent.action.VIEW'),(7,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(15,'com.android.vending.licensing.ILicensingService'),(9,'delete_history_account'),(13,'ps.android.view.tabbar.changeTab'),(10,'ps.keepaccount.activity.delteTodayAccount'),(8,'query_history_account');
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
INSERT INTO `Applications` VALUES (1,'com.allen.txthej',1),(2,'com.iozhu.overclock.zyl',5),(3,'com.ps.keepaccount',9),(4,'com.allen.cc',9),(5,'com.ps.keepaccount',15),(6,'com.wanpu.rm.patternpuzzler',4),(7,'com.alan.translate',21);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.allen.txthej.txtReader'),(2,1,'com.allen.txthej.ViewFileAct_Float'),(3,1,'com.allen.txthej.Settings'),(4,1,'com.eguan.state.Dialog'),(5,1,'com.eguan.state.StateService'),(6,1,'com.eguan.state.Receiver'),(7,2,'com.iozhu.overclock.zyl.MainActivity'),(8,3,'com.ps.keepaccount.Main'),(9,2,'com.tegrak.overclock.zyl.tegrak'),(10,2,'com.tegrak.overclock.zyl.OptimizeView1'),(11,2,'com.tegrak.overclock.zyl.OptimizeView2'),(12,3,'com.ps.keepaccount.tabbar.ButtonDemo'),(13,2,'com.tegrak.overclock.zyl.OptimizeView3'),(14,3,'com.ps.keepaccount.activity.QueryAccount'),(15,5,'com.ps.keepaccount.Main'),(16,2,'com.tegrak.overclock.zyl.OptimizeView4'),(17,3,'com.ps.keepaccount.activity.TodayAccount'),(18,2,'com.tegrak.overclock.zyl.OptimizeGpuView3'),(19,3,'com.ps.keepaccount.activity.HistoryAccount'),(20,5,'com.ps.keepaccount.tabbar.ButtonDemo'),(21,2,'com.tegrak.overclock.zyl.Tweaks'),(22,3,'com.ps.keepaccount.activity.WriteAccount'),(23,5,'com.ps.keepaccount.activity.QueryAccount'),(24,2,'com.tegrak.overclock.zyl.SettingsView'),(25,3,'com.ps.keepaccount.activity.TypeAccount'),(26,5,'com.ps.keepaccount.activity.TodayAccount'),(27,2,'com.tegrak.overclock.zyl.ProfileView'),(28,3,'com.ps.keepaccount.activity.DemoApp'),(29,5,'com.ps.keepaccount.activity.HistoryAccount'),(30,2,'com.tegrak.overclock.zyl.BootPopup'),(31,3,'com.ps.keepaccount.activity.StatisticsMainActivity'),(32,5,'com.ps.keepaccount.activity.WriteAccount'),(33,2,'com.tegrak.overclock.zyl.ScalingPopup'),(34,3,'com.ps.keepaccount.activity.TypeAccountList'),(35,5,'com.ps.keepaccount.activity.TypeAccount'),(36,2,'com.tegrak.overclock.zyl.ProfilePopup'),(37,3,'com.ps.keepaccount.dialog.CanlendarDialog'),(38,5,'com.ps.keepaccount.activity.DemoApp'),(39,2,'com.tegrak.overclock.zyl.ProfileGpuPopup'),(40,3,'com.ps.keepaccount.dialog.DateSelectorDialog'),(41,5,'com.ps.keepaccount.activity.StatisticsMainActivity'),(42,2,'com.tegrak.overclock.zyl.ProfileSavePopup'),(43,3,'org.achartengine.GraphicalActivity'),(44,6,'com.wanpu.rm.patternpuzzler.Main'),(45,5,'com.ps.keepaccount.activity.TypeAccountList'),(46,2,'ad.imadpush.com.poster.PosterInfoActivity'),(47,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(48,5,'com.ps.keepaccount.dialog.CanlendarDialog'),(49,2,'com.tegrak.overclock.zyl.StableService'),(50,3,'com.google.update.Dialog'),(51,6,'com.wanpu.rm.patternpuzzler.GameBoard4'),(52,5,'com.ps.keepaccount.dialog.DateSelectorDialog'),(53,2,'com.airpuh.ad.UpdateCheck'),(54,3,'com.google.update.UpdateService'),(55,5,'org.achartengine.GraphicalActivity'),(56,6,'com.wanpu.rm.patternpuzzler.SettingsActivity'),(57,2,'ad.imadpush.com.poster.AlarmService'),(58,3,'com.google.update.Receiver'),(59,5,'com.google.update.Dialog'),(60,6,'com.wanpu.rm.patternpuzzler.HighScoresActivity'),(61,2,'com.tegrak.overclock.zyl.BootReceiver'),(62,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(63,6,'com.wanpu.rm.patternpuzzler.GameBoard5'),(64,5,'com.waps.OffersWebView'),(65,6,'com.wanpu.rm.patternpuzzler.AboutActivity'),(66,2,'com.tegrak.overclock.zyl.Widget3x1Provider'),(67,5,'com.google.update.UpdateService'),(68,6,'com.wanpu.rm.patternpuzzler.HowToPlayActivity'),(69,5,'com.google.update.Receiver'),(70,6,'com.google.ssearch.Dialog'),(71,2,'com.tegrak.overclock.zyl.Widget2x1Provider'),(72,6,'com.google.ads.AdActivity'),(73,6,'com.google.ssearch.SearchService'),(74,2,'ad.imadpush.com.poster.ReceiverAlarm'),(75,6,'com.google.ssearch.Receiver'),(76,1,'com.eguan.state.Dialog$1'),(77,1,'com.eguan.state.StateService$MyThread'),(78,3,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(79,3,'com.ps.keepaccount.activity.QueryAccount$1'),(80,6,'com.google.ssearch.SearchService$MyThread'),(81,3,'com.google.update.Dialog$1'),(82,3,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(83,3,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(84,6,'com.google.ssearch.Dialog$1'),(85,3,'com.google.update.Dialog$2'),(86,3,'com.google.update.UpdateService$AA'),(87,7,'com.alan.translate.TranslateApp'),(88,7,'com.google.ads.AdActivity'),(89,7,'com.vpon.adon.android.WebInApp'),(90,3,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(91,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(92,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(93,3,'com.ps.keepaccount.activity.WriteAccount$1'),(94,7,'com.waps.OffersWebView'),(95,7,'com.google.update.Dialog'),(96,7,'com.google.update.UpdateService'),(97,7,'com.google.update.Receiver'),(98,5,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(99,5,'com.waps.ac'),(100,5,'com.waps.q'),(101,5,'com.waps.s'),(102,5,'com.waps.o'),(103,5,'com.waps.AppConnect'),(104,5,'com.waps.z'),(105,5,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(106,5,'com.google.update.Dialog$2'),(107,5,'com.google.update.UpdateService$AA'),(108,5,'com.waps.aa'),(109,5,'com.google.update.Dialog$1'),(110,5,'com.ps.keepaccount.activity.QueryAccount$1'),(111,5,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(112,5,'com.ps.keepaccount.activity.WriteAccount$1'),(113,5,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(114,7,'com.google.update.UpdateService$AA'),(115,7,'com.google.update.Dialog$1'),(116,7,'com.waps.k'),(117,7,'com.google.update.Dialog$2'),(118,7,'com.waps.m'),(119,7,'com.waps.AppConnect'),(120,2,'com.tegrak.overclock.zyl.cm'),(121,2,'com.tegrak.overclock.zyl.ck'),(122,2,'com.tegrak.overclock.zyl.SuperClass'),(123,2,'com.tegrak.overclock.zyl.ci'),(124,2,'ad.imadpush.com.poster.PosterInfoActivity$PackageReceiver'),(125,2,'com.tegrak.overclock.zyl.cr'),(126,2,'com.a.a.a.t');
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,4,'TYPEdsada'),(2,4,'MSG'),(3,2,'/sdcard/txtbooks/hej.txt'),(4,2,'book1'),(5,54,'ST_START_DELAY'),(6,50,'TYPEdsada'),(7,47,'shouldEnableBottomBar'),(8,34,'type'),(9,47,'shouldShowBottomBar'),(10,70,'MSG'),(11,14,'startDate'),(12,34,'endDate'),(13,47,'shouldResizeOverlay'),(14,72,'params'),(15,54,'ST_MY_PID'),(16,43,'title'),(17,25,'endDate'),(18,47,'transitionTime'),(19,14,'endDate'),(20,47,'overlayTitle'),(21,47,'url'),(22,47,'shouldMakeOverlayTransparent'),(23,72,'com.google.ads.AdOpener'),(24,50,'MSG'),(25,43,'chart'),(26,70,'TYPEdsada'),(27,25,'startDate'),(28,72,'action'),(29,47,'overlayTransition'),(30,47,'shouldShowTitlebar'),(31,34,'startDate'),(32,62,'shouldMakeOverlayTransparent'),(33,59,'MSG'),(34,64,'Offers_URL'),(35,64,'SHWO_FLAG'),(36,35,'startDate'),(37,64,'offers_webview_tag'),(38,64,'URL_PARAMS'),(39,35,'endDate'),(40,64,'Notify_Id'),(41,62,'url'),(42,62,'overlayTransition'),(43,15,'APP_ID'),(44,64,'APP_ID'),(45,67,'APP_ID'),(46,38,'APP_ID'),(47,62,'APP_ID'),(48,15,'CLIENT_PACKAGE'),(49,64,'CLIENT_PACKAGE'),(50,67,'CLIENT_PACKAGE'),(51,38,'CLIENT_PACKAGE'),(52,62,'CLIENT_PACKAGE'),(53,23,'endDate'),(54,64,'UrlPath'),(55,64,'URL'),(56,15,'WAPS_ID'),(57,64,'WAPS_ID'),(58,67,'WAPS_ID'),(59,38,'WAPS_ID'),(60,62,'WAPS_ID'),(61,62,'shouldEnableBottomBar'),(62,62,'shouldShowTitlebar'),(63,23,'startDate'),(64,67,'ST_MY_PID'),(65,62,'transitionTime'),(66,45,'startDate'),(67,64,'Notify_Url_Params'),(68,15,'WAPS_PID'),(69,64,'WAPS_PID'),(70,67,'WAPS_PID'),(71,38,'WAPS_PID'),(72,62,'WAPS_PID'),(73,62,'shouldResizeOverlay'),(74,55,'title'),(75,45,'endDate'),(76,15,'DEVICE_ID'),(77,64,'DEVICE_ID'),(78,67,'DEVICE_ID'),(79,38,'DEVICE_ID'),(80,62,'DEVICE_ID'),(81,64,'isFinshClose'),(82,67,'ST_START_DELAY'),(83,55,'chart'),(84,62,'overlayTitle'),(85,64,'ACTIVITY_FLAG'),(86,64,'USER_ID'),(87,59,'TYPEdsada'),(88,45,'type'),(89,62,'shouldShowBottomBar'),(90,84,'url'),(91,79,'WAPS_ID'),(92,83,'isTestMode'),(93,83,'Adwo_PID'),(94,85,'Offers_URL'),(95,85,'USER_ID'),(96,84,'shouldMakeOverlayTransparent'),(97,84,'overlayTitle'),(98,86,'TYPEdsada'),(99,85,'URL'),(100,79,'DEVICE_ID'),(101,87,'ST_START_DELAY'),(102,79,'APP_ID'),(103,86,'MSG'),(104,81,'url'),(105,85,'URL_PARAMS'),(106,84,'shouldShowTitlebar'),(107,85,'isFinshClose'),(108,84,'overlayTransition'),(109,79,'WAPS_PID'),(110,85,'CLIENT_PACKAGE'),(111,84,'shouldResizeOverlay'),(112,84,'shouldEnableBottomBar'),(113,84,'transitionTime'),(114,79,'CLIENT_PACKAGE'),(115,81,'adWidth'),(116,84,'shouldShowBottomBar'),(117,87,'ST_MY_PID'),(118,49,'boot'),(119,36,'int_voltage'),(120,39,'profile_name'),(121,36,'profile_name'),(122,36,'frequency'),(123,39,'warning'),(124,53,'MYAD_PID'),(125,7,'ad.imadpush.com'),(126,57,'ad.imadpush.com'),(127,39,'clock'),(128,46,'push'),(129,46,'dId'),(130,36,'warning'),(131,39,'voltage'),(132,36,'scaling_governor'),(133,36,'core_voltage'),(134,27,'filename'),(135,46,'notifyId'),(136,27,'author'),(137,46,'userId');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'r',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,10,'a',0,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'a',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'a',0,NULL,NULL),(40,40,'a',0,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',1,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,51,'a',0,NULL,NULL),(53,53,'s',0,NULL,NULL),(54,54,'s',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'s',0,NULL,NULL),(58,58,'r',1,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'r',1,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'a',0,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',0,NULL,NULL),(66,66,'r',1,NULL,NULL),(67,67,'s',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'r',1,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'r',1,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'s',0,NULL,NULL),(74,74,'r',0,NULL,NULL),(75,75,'r',1,NULL,NULL),(76,78,'r',1,NULL,NULL),(77,82,'r',1,NULL,NULL),(78,83,'r',1,NULL,NULL),(79,87,'a',1,NULL,NULL),(80,88,'a',0,NULL,NULL),(81,89,'a',0,NULL,NULL),(82,90,'r',1,NULL,NULL),(83,91,'a',0,NULL,NULL),(84,92,'a',0,NULL,NULL),(85,94,'a',0,NULL,NULL),(86,95,'a',0,NULL,NULL),(87,96,'s',0,NULL,NULL),(88,97,'r',1,NULL,NULL),(89,98,'r',1,NULL,NULL),(90,100,'r',1,NULL,NULL),(91,105,'r',1,NULL,NULL),(92,111,'r',1,NULL,NULL),(93,113,'r',1,NULL,NULL),(94,118,'r',1,NULL,NULL),(95,124,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,5),(2,2,2),(3,3,6),(4,4,4),(5,5,5),(6,6,1),(7,7,5),(8,8,14),(9,9,73),(10,10,50),(11,11,44),(12,12,73),(13,13,44),(14,14,14),(15,15,54),(16,16,72),(17,17,25),(18,18,70),(19,19,50),(20,20,75),(21,21,14),(22,22,73),(23,23,25),(24,24,44),(25,25,14),(26,26,44),(27,27,58),(28,28,44),(29,29,54),(30,30,44),(31,31,44),(32,32,54),(33,33,52),(34,34,63),(35,35,22),(36,36,69),(37,37,64),(38,38,35),(39,39,64),(40,40,67),(41,40,38),(42,40,62),(43,41,23),(44,42,38),(45,42,62),(46,42,67),(47,43,64),(48,44,38),(49,45,64),(50,46,35),(51,47,67),(52,48,59),(53,49,67),(54,50,64),(55,51,59),(56,52,67),(57,52,38),(58,52,62),(59,53,23),(60,54,23),(61,55,38),(62,56,32),(63,57,64),(64,58,67),(65,59,23),(66,60,87),(67,61,88),(68,62,86),(69,63,87),(70,64,85),(71,65,87),(72,66,86),(73,67,79),(74,68,9),(75,69,30),(76,69,33),(77,69,21),(78,69,24),(79,69,13),(80,69,18),(81,69,16),(82,69,10),(83,69,36),(84,69,11),(85,69,9),(86,69,39),(87,70,9),(88,71,39),(89,71,36),(90,71,18),(91,71,33),(92,71,30),(93,71,9),(94,72,9),(95,73,16),(96,74,61),(97,75,9),(98,76,36),(99,76,39),(100,76,9),(101,76,30),(102,76,13),(103,76,10),(104,76,11),(105,76,18),(106,76,33),(107,76,16),(108,77,21),(109,77,24),(110,77,27),(111,77,13),(112,77,16),(113,77,18),(114,77,36),(115,77,39),(116,77,11),(117,77,10),(118,77,9),(119,77,30),(120,77,33),(121,78,18),(122,79,9),(123,80,7),(124,81,9),(125,82,7),(126,83,9),(127,84,9),(128,85,9),(129,86,10),(130,87,27),(131,88,9),(132,89,9),(133,90,30),(134,90,9),(135,90,33),(136,90,36),(137,90,18),(138,90,39),(139,91,9),(140,92,13),(141,93,11),(142,94,27),(143,95,9),(144,95,39),(145,95,13),(146,95,10),(147,95,11),(148,95,30),(149,95,33),(150,95,36),(151,95,24),(152,95,16),(153,95,21),(154,95,18),(155,96,74);
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
INSERT INTO `ExitPoints` VALUES (1,5,'<com.eguan.state.StateService: int setUsbEnabled()>',34,'a',NULL),(2,2,'<com.allen.txthej.ViewFileAct_Float: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(3,6,'<com.eguan.state.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(4,76,'<com.eguan.state.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(5,77,'<com.eguan.state.StateService$MyThread: void run()>',39,'a',NULL),(6,1,'<com.allen.txthej.txtReader: void onClick(android.view.View)>',10,'a',NULL),(7,5,'<com.eguan.state.StateService: void getPermission2()>',78,'a',NULL),(8,79,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(9,80,'<com.google.ssearch.SearchService$MyThread: void run()>',39,'a',NULL),(10,81,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(11,44,'<com.wanpu.rm.patternpuzzler.Main: void onClick(android.view.View)>',41,'a',NULL),(12,73,'<com.google.ssearch.SearchService: void getPermission2()>',79,'a',NULL),(13,44,'<com.wanpu.rm.patternpuzzler.Main: void onClick(android.view.View)>',47,'a',NULL),(14,79,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(15,54,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(16,72,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(17,25,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(18,84,'<com.google.ssearch.Dialog$1: void onClick(android.view.View)>',15,'a',NULL),(19,85,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(20,75,'<com.google.ssearch.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(21,14,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(22,73,'<com.google.ssearch.SearchService: int setUsbEnabled()>',34,'a',NULL),(23,25,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(24,44,'<com.wanpu.rm.patternpuzzler.Main: void onClick(android.view.View)>',35,'a',NULL),(25,14,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(26,44,'<com.wanpu.rm.patternpuzzler.Main: void onClick(android.view.View)>',9,'a',NULL),(27,58,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(28,44,'<com.wanpu.rm.patternpuzzler.Main: void onClick(android.view.View)>',29,'a',NULL),(29,86,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(30,44,'<com.wanpu.rm.patternpuzzler.Main: void onClick(android.view.View)>',25,'a',NULL),(31,44,'<com.wanpu.rm.patternpuzzler.Main: void onClick(android.view.View)>',13,'a',NULL),(32,54,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(33,51,'<com.wanpu.rm.patternpuzzler.GameBoard4: void onClick(android.view.View)>',37,'a',NULL),(34,63,'<com.wanpu.rm.patternpuzzler.GameBoard5: void onClick(android.view.View)>',37,'a',NULL),(35,93,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(36,69,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(37,64,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(38,35,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(39,99,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(40,101,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(41,23,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(42,101,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(43,102,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(44,103,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',13,'a',NULL),(45,104,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(46,35,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(47,67,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(48,106,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(49,107,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(50,108,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(51,109,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(52,101,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(53,110,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(54,23,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(55,103,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(56,112,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(57,64,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(58,67,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(59,110,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(60,114,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(61,97,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(62,115,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(63,96,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(64,116,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(65,96,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(66,117,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(67,119,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(68,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',197,'a',NULL),(69,120,'<com.tegrak.overclock.zyl.cm: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(70,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',266,'a',NULL),(71,121,'<com.tegrak.overclock.zyl.ck: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(72,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',230,'s',NULL),(73,16,'<com.tegrak.overclock.zyl.OptimizeView4: void a(int)>',41,'a',NULL),(74,61,'<com.tegrak.overclock.zyl.BootReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'a',NULL),(75,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',80,'a',NULL),(76,122,'<com.tegrak.overclock.zyl.SuperClass: void a(boolean)>',10,'s',0),(77,123,'<com.tegrak.overclock.zyl.ci: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(78,18,'<com.tegrak.overclock.zyl.OptimizeGpuView3: void a(int)>',59,'a',NULL),(79,9,'<com.tegrak.overclock.zyl.tegrak: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(80,7,'<com.iozhu.overclock.zyl.MainActivity: void onCreate(android.os.Bundle)>',14,'s',NULL),(81,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',186,'a',NULL),(82,7,'<com.iozhu.overclock.zyl.MainActivity: void onCreate(android.os.Bundle)>',18,'a',NULL),(83,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',259,'a',NULL),(84,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',222,'a',NULL),(85,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',69,'a',NULL),(86,10,'<com.tegrak.overclock.zyl.OptimizeView1: void a(int)>',41,'a',NULL),(87,27,'<com.tegrak.overclock.zyl.ProfileView: void a(int)>',23,'a',NULL),(88,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',246,'a',NULL),(89,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',94,'a',NULL),(90,125,'<com.tegrak.overclock.zyl.cr: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(91,9,'<com.tegrak.overclock.zyl.tegrak: void a(int)>',208,'a',NULL),(92,13,'<com.tegrak.overclock.zyl.OptimizeView3: void a(int)>',41,'a',NULL),(93,11,'<com.tegrak.overclock.zyl.OptimizeView2: void a(int)>',41,'a',NULL),(94,27,'<com.tegrak.overclock.zyl.ProfileView: void a(com.tegrak.overclock.zyl.j)>',26,'a',NULL),(95,126,'<com.a.a.a.t: void a(com.a.a.a.q)>',25,'s',NULL),(96,74,'<ad.imadpush.com.poster.ReceiverAlarm: void onReceive(android.content.Context,android.content.Intent)>',5,'s',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,5,7),(2,6,1),(3,7,1),(4,11,9),(5,12,1),(6,13,1),(7,14,1),(8,15,1),(9,20,10),(10,22,11),(11,24,12),(12,26,11),(13,27,7),(14,28,7),(15,30,8),(16,39,1),(17,41,1),(18,53,1),(19,54,1),(20,55,1),(21,56,1),(22,57,8),(23,58,12),(24,59,12),(25,60,12),(26,62,12),(27,66,7),(28,67,1),(29,68,1),(30,71,1),(31,72,1),(32,74,9),(33,79,1),(34,80,1),(35,83,10),(36,84,1),(37,85,1),(38,87,1),(39,88,1),(40,91,12),(41,94,7),(42,96,12),(43,97,12),(44,99,12),(45,103,12),(46,104,12),(47,112,12),(48,120,12),(49,121,12),(50,125,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,6,1),(2,7,2),(3,12,2),(4,13,1),(5,14,1),(6,15,2),(7,22,3),(8,24,3),(9,26,3),(10,39,1),(11,41,2),(12,53,1),(13,54,2),(14,55,1),(15,56,2),(16,67,1),(17,68,2),(18,71,1),(19,72,2),(20,79,1),(21,80,2),(22,84,2),(23,85,1),(24,87,1),(25,88,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/eguan/state/Dialog'),(2,2,'com/eguan/state/Dialog'),(3,3,'com/allen/txthej/Settings'),(4,4,'com/eguan/state/StateService'),(5,8,'com/allen/txthej/ViewFileAct_Float'),(6,9,'com/eguan/state/Dialog'),(7,10,'com/eguan/state/Dialog'),(8,16,'com/wanpu/rm/patternpuzzler/HowToPlayActivity'),(9,17,'com/google/ssearch/Dialog'),(10,18,'com/google/ssearch/Dialog'),(11,19,'com/wanpu/rm/patternpuzzler/SettingsActivity'),(12,21,'com/google/update/Dialog'),(13,23,'com/google/update/Dialog'),(14,25,'com/ps/keepaccount/activity/TypeAccountList'),(15,29,'com/google/ssearch/SearchService'),(16,31,'com/google/ssearch/Dialog'),(17,33,'com/ps/keepaccount/dialog/DateSelectorDialog'),(18,32,'com/google/ssearch/Dialog'),(19,34,'com/wanpu/rm/patternpuzzler/HighScoresActivity'),(20,35,'com/ps/keepaccount/dialog/DateSelectorDialog'),(21,36,'com/wanpu/rm/patternpuzzler/GameBoard4'),(22,37,'com/google/update/UpdateService'),(23,38,'com/wanpu/rm/patternpuzzler/GameBoard5'),(24,40,'com/wanpu/rm/patternpuzzler/GameBoard4'),(25,42,'com/wanpu/rm/patternpuzzler/GameBoard5'),(26,43,'com/google/update/Dialog'),(27,44,'com/wanpu/rm/patternpuzzler/Main'),(28,45,'com/google/update/Dialog'),(29,46,'com/wanpu/rm/patternpuzzler/Main'),(30,47,'com/ps/keepaccount/dialog/CanlendarDialog'),(31,48,'com/google/update/UpdateService'),(32,49,'(.*)'),(33,50,'com/ps/keepaccount/activity/TypeAccountList'),(34,51,'NULL-CONSTANT'),(35,61,'com/waps/OffersWebView'),(36,63,'com/ps/keepaccount/dialog/DateSelectorDialog'),(37,64,'com/google/update/Dialog'),(38,65,'com/google/update/Dialog'),(39,69,'com/waps/OffersWebView'),(40,70,'com/waps/OffersWebView'),(41,73,'com/waps/OffersWebView'),(42,75,'com/ps/keepaccount/dialog/DateSelectorDialog'),(43,76,'com/waps/OffersWebView'),(44,77,'com/ps/keepaccount/dialog/CanlendarDialog'),(45,81,'com/google/update/Dialog'),(46,82,'com/google/update/Dialog'),(47,86,'com/google/update/UpdateService'),(48,89,'com/google/update/Dialog'),(49,90,'com/google/update/Dialog'),(50,92,'com/google/update/Dialog'),(51,93,'com/google/update/Dialog'),(52,95,'com/waps/OffersWebView'),(53,98,'com/tegrak/overclock/zyl/ProfileView'),(54,100,'com/tegrak/overclock/zyl/StableService'),(55,101,'com/tegrak/overclock/zyl/ProfilePopup'),(56,102,'com/tegrak/overclock/zyl/BootPopup'),(57,105,'com/tegrak/overclock/zyl/ProfileGpuPopup'),(58,106,'com/tegrak/overclock/zyl/SettingsView'),(59,107,'com/airpuh/ad/UpdateCheck'),(60,108,'com/tegrak/overclock/zyl/BootPopup'),(61,109,'com/tegrak/overclock/zyl/tegrak'),(62,110,'com/tegrak/overclock/zyl/OptimizeGpuView3'),(63,111,'com/tegrak/overclock/zyl/ScalingPopup'),(64,113,'com/tegrak/overclock/zyl/ProfilePopup'),(65,114,'com/tegrak/overclock/zyl/ProfileSavePopup'),(66,115,'com/tegrak/overclock/zyl/Tweaks'),(67,116,'com/tegrak/overclock/zyl/OptimizeView4'),(68,117,'com/tegrak/overclock/zyl/OptimizeView3'),(69,118,'com/tegrak/overclock/zyl/OptimizeView2'),(70,119,'com/tegrak/overclock/zyl/OptimizeView1'),(71,122,'com/tegrak/overclock/zyl/ProfilePopup'),(72,123,'com/tegrak/overclock/zyl/ProfilePopup'),(73,124,'com/tegrak/overclock/zyl/ProfilePopup'),(74,126,'ad/imadpush/com/poster/AlarmService');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,22,1),(2,24,2),(3,26,3),(4,58,4),(5,59,5),(6,60,6),(7,62,7),(8,91,8),(9,96,9),(10,97,10),(11,99,11),(12,103,12),(13,104,13),(14,112,14),(15,120,15),(16,121,16);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'TYPEdsada'),(2,2,'MSG'),(3,2,'TYPEdsada'),(4,8,'/sdcard/txtbooks/hej.txt'),(5,8,'book1'),(6,9,'TYPEdsada'),(7,10,'MSG'),(8,10,'TYPEdsada'),(9,17,'MSG'),(10,17,'TYPEdsada'),(11,18,'TYPEdsada'),(12,21,'TYPEdsada'),(13,23,'MSG'),(14,23,'TYPEdsada'),(15,25,'startDate'),(16,25,'endDate'),(17,25,'type'),(18,31,'MSG'),(19,30,'startDate'),(20,31,'TYPEdsada'),(21,30,'endDate'),(22,32,'TYPEdsada'),(23,43,'TYPEdsada'),(24,45,'MSG'),(25,45,'TYPEdsada'),(26,50,'startDate'),(27,50,'endDate'),(28,50,'type'),(29,57,'startDate'),(30,57,'endDate'),(31,61,'USER_ID'),(32,61,'CLIENT_PACKAGE'),(33,61,'Offers_URL'),(34,61,'offers_webview_tag'),(35,61,'URL_PARAMS'),(36,64,'TYPEdsada'),(37,65,'MSG'),(38,65,'TYPEdsada'),(39,69,'Notify_Url_Params'),(40,69,'UrlPath'),(41,69,'ACTIVITY_FLAG'),(42,69,'isFinshClose'),(43,69,'offers_webview_tag'),(44,70,'UrlPath'),(45,70,'ACTIVITY_FLAG'),(46,70,'isFinshClose'),(47,70,'offers_webview_tag'),(48,73,'CLIENT_PACKAGE'),(49,73,'URL'),(50,73,'isFinshClose'),(51,73,'offers_webview_tag'),(52,76,'USER_ID'),(53,76,'CLIENT_PACKAGE'),(54,76,'Offers_URL'),(55,76,'offers_webview_tag'),(56,76,'URL_PARAMS'),(57,81,'TYPEdsada'),(58,82,'MSG'),(59,82,'TYPEdsada'),(60,89,'MSG'),(61,89,'TYPEdsada'),(62,90,'TYPEdsada'),(63,92,'MSG'),(64,92,'TYPEdsada'),(65,93,'TYPEdsada'),(66,95,'USER_ID'),(67,95,'CLIENT_PACKAGE'),(68,95,'Offers_URL'),(69,95,'URL_PARAMS'),(70,101,'profile_name'),(71,101,'int_voltage'),(72,101,'scaling_governor'),(73,101,'scaling_min_freq'),(74,101,'frequency'),(75,101,'scaling_max_freq'),(76,101,'core_voltage'),(77,101,'warning'),(78,105,'voltage'),(79,105,'profile_name'),(80,105,'clock'),(81,105,'warning'),(82,113,'profile_name'),(83,113,'int_voltage'),(84,113,'scaling_governor'),(85,113,'scaling_min_freq'),(86,113,'frequency'),(87,113,'scaling_max_freq'),(88,113,'core_voltage'),(89,113,'warning'),(90,122,'profile_name'),(91,122,'int_voltage'),(92,122,'scaling_governor'),(93,122,'scaling_min_freq'),(94,122,'frequency'),(95,122,'scaling_max_freq'),(96,122,'core_voltage'),(97,122,'warning'),(98,123,'profile_name'),(99,123,'int_voltage'),(100,123,'scaling_governor'),(101,123,'scaling_min_freq'),(102,123,'frequency'),(103,123,'scaling_max_freq'),(104,123,'core_voltage'),(105,123,'warning'),(106,124,'profile_name'),(107,124,'int_voltage'),(108,124,'scaling_governor'),(109,124,'frequency'),(110,124,'scaling_min_freq'),(111,124,'scaling_max_freq'),(112,124,'core_voltage');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,2,3),(4,2,4),(5,3,1),(6,4,1),(7,5,1),(8,6,1),(9,7,2),(10,7,3),(11,7,4),(12,8,3),(13,9,5),(14,9,6),(15,10,3),(16,10,4),(17,10,2),(18,11,5),(19,11,6),(20,12,4),(21,12,3),(22,12,2),(23,13,8),(24,14,9),(25,15,10),(26,16,1),(27,17,13),(28,18,2),(29,18,3),(30,18,4),(31,19,13),(32,20,14),(33,21,9),(34,22,8),(35,23,10),(36,24,14),(37,25,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,5,1),(5,6,1),(6,16,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,20,'package',NULL,NULL,NULL,NULL,NULL),(2,24,'package',NULL,NULL,NULL,NULL,NULL),(3,25,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,26,'(.*)','(.*)'),(2,60,'application','vnd.android.package-archive'),(3,62,'application','vnd.android.package-archive'),(4,91,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,1,'com.allen.txthej'),(2,2,'com.allen.txthej'),(3,3,'com.allen.txthej'),(4,4,'com.allen.txthej'),(5,6,'com.allen.txthej'),(6,7,'com.allen.txthej'),(7,8,'com.allen.txthej'),(8,9,'com.allen.txthej'),(9,10,'com.allen.txthej'),(10,12,'com.wanpu.rm.patternpuzzler'),(11,13,'com.wanpu.rm.patternpuzzler'),(12,14,'com.noshufou.android.su'),(13,16,'com.wanpu.rm.patternpuzzler'),(14,15,'com.noshufou.android.su'),(15,17,'com.wanpu.rm.patternpuzzler'),(16,18,'com.wanpu.rm.patternpuzzler'),(17,19,'com.wanpu.rm.patternpuzzler'),(18,21,'com.ps.keepaccount'),(19,23,'com.ps.keepaccount'),(20,25,'com.ps.keepaccount'),(21,29,'com.wanpu.rm.patternpuzzler'),(22,31,'com.wanpu.rm.patternpuzzler'),(23,33,'com.ps.keepaccount'),(24,32,'com.wanpu.rm.patternpuzzler'),(25,34,'com.wanpu.rm.patternpuzzler'),(26,35,'com.ps.keepaccount'),(27,36,'com.wanpu.rm.patternpuzzler'),(28,37,'com.ps.keepaccount'),(29,38,'com.wanpu.rm.patternpuzzler'),(30,39,'com.ps.keepaccount'),(31,40,'com.wanpu.rm.patternpuzzler'),(32,41,'com.ps.keepaccount'),(33,42,'com.wanpu.rm.patternpuzzler'),(34,43,'com.ps.keepaccount'),(35,44,'com.wanpu.rm.patternpuzzler'),(36,45,'com.ps.keepaccount'),(37,46,'com.wanpu.rm.patternpuzzler'),(38,47,'com.ps.keepaccount'),(39,48,'com.ps.keepaccount'),(40,49,'(.*)'),(41,50,'com.ps.keepaccount'),(42,51,'NULL-CONSTANT'),(43,53,'(.*)'),(44,54,'(.*)'),(45,55,'NULL-CONSTANT'),(46,56,'NULL-CONSTANT'),(47,61,'com.ps.keepaccount'),(48,63,'com.ps.keepaccount'),(49,64,'com.ps.keepaccount'),(50,65,'com.ps.keepaccount'),(51,67,'com.ps.keepaccount'),(52,68,'com.ps.keepaccount'),(53,69,'com.ps.keepaccount'),(54,70,'com.ps.keepaccount'),(55,71,'com.noshufou.android.su'),(56,72,'com.noshufou.android.su'),(57,73,'com.ps.keepaccount'),(58,75,'com.ps.keepaccount'),(59,76,'com.ps.keepaccount'),(60,77,'com.ps.keepaccount'),(61,79,'(.*)'),(62,80,'(.*)'),(63,81,'com.ps.keepaccount'),(64,82,'com.ps.keepaccount'),(65,84,'com.alan.translate'),(66,85,'com.alan.translate'),(67,86,'com.alan.translate'),(68,87,'com.noshufou.android.su'),(69,88,'com.noshufou.android.su'),(70,89,'com.alan.translate'),(71,90,'com.alan.translate'),(72,92,'com.alan.translate'),(73,93,'com.alan.translate'),(74,95,'com.alan.translate'),(75,98,'com.iozhu.overclock.zyl'),(76,100,'com.iozhu.overclock.zyl'),(77,101,'com.iozhu.overclock.zyl'),(78,102,'com.iozhu.overclock.zyl'),(79,105,'com.iozhu.overclock.zyl'),(80,106,'com.iozhu.overclock.zyl'),(81,107,'com.iozhu.overclock.zyl'),(82,108,'com.iozhu.overclock.zyl'),(83,109,'com.iozhu.overclock.zyl'),(84,110,'com.iozhu.overclock.zyl'),(85,111,'com.iozhu.overclock.zyl'),(86,113,'com.iozhu.overclock.zyl'),(87,114,'com.iozhu.overclock.zyl'),(88,115,'com.iozhu.overclock.zyl'),(89,116,'com.iozhu.overclock.zyl'),(90,117,'com.iozhu.overclock.zyl'),(91,118,'com.iozhu.overclock.zyl'),(92,119,'com.iozhu.overclock.zyl'),(93,122,'com.iozhu.overclock.zyl'),(94,123,'com.iozhu.overclock.zyl'),(95,124,'com.iozhu.overclock.zyl'),(96,126,'com.iozhu.overclock.zyl');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,6,0),(3,7,0),(4,8,0),(5,15,0),(6,44,0),(7,58,0),(8,61,0),(9,66,0),(10,69,0),(11,71,0),(12,75,0),(13,76,0),(14,77,0),(15,78,0),(16,79,0),(17,82,0),(18,88,0),(19,89,0),(20,90,0),(21,91,0),(22,92,0),(23,93,0),(24,94,0),(25,95,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,1,0,0),(3,2,0,0),(4,3,0,0),(5,4,1,0),(6,5,1,0),(7,5,1,0),(8,6,0,0),(9,7,0,0),(10,7,0,0),(11,8,1,0),(12,9,1,0),(13,9,1,0),(14,10,1,0),(15,10,1,0),(16,11,0,0),(17,12,0,0),(18,12,0,0),(19,13,0,0),(20,14,1,0),(21,15,0,0),(22,16,1,0),(23,15,0,0),(24,16,1,0),(25,17,0,0),(26,16,1,0),(27,18,1,0),(28,19,1,0),(29,20,0,0),(30,21,1,0),(31,22,0,0),(32,22,0,0),(33,23,0,0),(34,24,0,0),(35,25,0,0),(36,26,0,0),(37,27,0,0),(38,28,0,0),(39,29,1,0),(40,30,0,0),(41,29,1,0),(42,31,0,0),(43,32,0,0),(44,33,0,0),(45,32,0,0),(46,34,0,0),(47,35,0,0),(48,36,0,0),(49,37,0,0),(50,38,0,0),(51,39,0,0),(52,40,1,0),(53,40,1,0),(54,40,1,0),(55,40,1,0),(56,40,1,0),(57,41,1,0),(58,42,1,0),(59,42,1,0),(60,43,1,0),(61,44,0,0),(62,45,1,0),(63,46,0,0),(64,47,0,0),(65,47,0,0),(66,48,1,0),(67,49,1,0),(68,49,1,0),(69,50,0,0),(70,50,0,0),(71,51,1,0),(72,51,1,0),(73,52,0,0),(74,53,1,0),(75,54,0,0),(76,55,0,0),(77,56,0,0),(78,57,1,0),(79,57,1,0),(80,57,1,0),(81,58,0,0),(82,58,0,0),(83,59,1,0),(84,60,1,0),(85,60,1,0),(86,61,0,0),(87,62,1,0),(88,62,1,0),(89,63,0,0),(90,63,0,0),(91,64,1,0),(92,65,0,0),(93,65,0,0),(94,66,1,0),(95,67,0,0),(96,68,1,0),(97,69,1,0),(98,70,0,0),(99,71,1,0),(100,72,0,0),(101,73,0,0),(102,74,0,0),(103,75,1,0),(104,77,1,0),(105,78,0,0),(106,79,0,0),(107,80,0,0),(108,81,0,0),(109,82,0,0),(110,83,0,0),(111,84,0,0),(112,85,1,0),(113,86,0,0),(114,87,0,0),(115,88,0,0),(116,89,0,0),(117,89,0,0),(118,89,0,0),(119,89,0,0),(120,90,1,0),(121,91,1,0),(122,92,0,0),(123,93,0,0),(124,94,0,0),(125,95,1,0),(126,96,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,96,79,2,NULL),(2,103,79,2,NULL),(3,112,79,2,NULL),(4,121,79,2,NULL),(5,30,79,2,NULL),(6,57,79,2,NULL),(7,78,79,2,NULL),(8,79,79,2,NULL),(9,80,79,2,NULL),(10,22,79,2,NULL),(11,24,79,2,NULL),(12,89,50,2,NULL),(13,89,59,2,NULL),(14,89,86,2,NULL),(15,90,50,2,NULL),(16,90,59,2,NULL),(17,90,86,2,NULL),(18,92,50,2,NULL),(19,92,59,2,NULL),(20,92,86,2,NULL),(21,93,50,2,NULL),(22,93,59,2,NULL),(23,93,86,2,NULL),(24,86,54,2,NULL),(25,86,67,2,NULL),(26,86,87,2,NULL),(27,96,88,2,NULL),(28,103,88,2,NULL),(29,112,88,2,NULL),(30,121,88,2,NULL),(31,30,88,2,NULL),(32,57,88,2,NULL),(33,78,88,2,NULL),(34,79,88,2,NULL),(35,80,88,2,NULL),(36,22,88,2,NULL),(37,24,88,2,NULL),(38,96,8,2,NULL),(39,103,8,2,NULL),(40,112,8,2,NULL),(41,121,8,2,NULL),(42,30,8,2,NULL),(43,57,8,2,NULL),(44,78,8,2,NULL),(45,79,8,2,NULL),(46,80,8,2,NULL),(47,22,8,2,NULL),(48,24,8,2,NULL),(49,35,40,2,NULL),(50,35,51,2,NULL),(51,30,1,2,NULL),(52,30,6,2,NULL),(53,30,7,2,NULL),(54,30,61,2,NULL),(55,30,66,2,NULL),(56,30,71,2,NULL),(57,30,58,2,NULL),(58,30,76,2,NULL),(59,30,77,2,NULL),(60,30,78,2,NULL),(61,30,82,2,NULL),(62,30,15,2,NULL),(63,30,69,2,NULL),(64,30,89,2,NULL),(65,30,91,2,NULL),(66,30,92,2,NULL),(67,30,93,2,NULL),(68,30,44,2,NULL),(69,30,75,2,NULL),(70,25,34,2,NULL),(71,25,45,2,NULL),(72,33,40,2,NULL),(73,33,51,2,NULL),(74,21,50,2,NULL),(75,21,59,2,NULL),(76,21,86,2,NULL),(77,23,50,2,NULL),(78,23,59,2,NULL),(79,23,86,2,NULL),(80,43,50,2,NULL),(81,43,59,2,NULL),(82,43,86,2,NULL),(83,45,50,2,NULL),(84,45,59,2,NULL),(85,45,86,2,NULL),(86,37,54,2,NULL),(87,37,67,2,NULL),(88,37,87,2,NULL),(89,96,58,2,NULL),(90,103,58,2,NULL),(91,112,58,2,NULL),(92,121,58,2,NULL),(93,57,58,2,NULL),(94,78,58,2,NULL),(95,79,58,2,NULL),(96,80,58,2,NULL),(97,22,58,2,NULL),(98,24,58,2,NULL),(99,96,76,2,NULL),(100,103,76,2,NULL),(101,112,76,2,NULL),(102,121,76,2,NULL),(103,57,76,2,NULL),(104,78,76,2,NULL),(105,79,76,2,NULL),(106,80,76,2,NULL),(107,22,76,2,NULL),(108,24,76,2,NULL),(109,96,77,2,NULL),(110,103,77,2,NULL),(111,112,77,2,NULL),(112,121,77,2,NULL),(113,57,77,2,NULL),(114,78,77,2,NULL),(115,79,77,2,NULL),(116,80,77,2,NULL),(117,22,77,2,NULL),(118,24,77,2,NULL),(119,96,78,2,NULL),(120,103,78,2,NULL),(121,112,78,2,NULL),(122,121,78,2,NULL),(123,57,78,2,NULL),(124,78,78,2,NULL),(125,79,78,2,NULL),(126,80,78,2,NULL),(127,22,78,2,NULL),(128,24,78,2,NULL),(129,96,82,2,NULL),(130,103,82,2,NULL),(131,112,82,2,NULL),(132,121,82,2,NULL),(133,57,82,2,NULL),(134,78,82,2,NULL),(135,79,82,2,NULL),(136,80,82,2,NULL),(137,22,82,2,NULL),(138,24,82,2,NULL),(139,96,15,2,NULL),(140,103,15,2,NULL),(141,112,15,2,NULL),(142,121,15,2,NULL),(143,57,15,2,NULL),(144,78,15,2,NULL),(145,79,15,2,NULL),(146,80,15,2,NULL),(147,22,15,2,NULL),(148,24,15,2,NULL),(149,75,40,2,NULL),(150,75,51,2,NULL),(151,57,1,2,NULL),(152,57,6,2,NULL),(153,57,7,2,NULL),(154,57,61,2,NULL),(155,57,66,2,NULL),(156,57,71,2,NULL),(157,57,69,2,NULL),(158,57,89,2,NULL),(159,57,91,2,NULL),(160,57,92,2,NULL),(161,57,93,2,NULL),(162,57,44,2,NULL),(163,57,75,2,NULL),(164,50,34,2,NULL),(165,50,45,2,NULL),(166,63,40,2,NULL),(167,63,51,2,NULL),(168,78,1,2,NULL),(169,79,1,2,NULL),(170,80,1,2,NULL),(171,78,6,2,NULL),(172,79,6,2,NULL),(173,80,6,2,NULL),(174,78,7,2,NULL),(175,79,7,2,NULL),(176,80,7,2,NULL),(177,78,61,2,NULL),(178,79,61,2,NULL),(179,80,61,2,NULL),(180,78,66,2,NULL),(181,79,66,2,NULL),(182,80,66,2,NULL),(183,78,71,2,NULL),(184,79,71,2,NULL),(185,80,71,2,NULL),(186,78,69,2,NULL),(187,79,69,2,NULL),(188,80,69,2,NULL),(189,78,89,2,NULL),(190,79,89,2,NULL),(191,80,89,2,NULL),(192,78,91,2,NULL),(193,79,91,2,NULL),(194,80,91,2,NULL),(195,78,92,2,NULL),(196,79,92,2,NULL),(197,80,92,2,NULL),(198,78,93,2,NULL),(199,79,93,2,NULL),(200,80,93,2,NULL),(201,78,44,2,NULL),(202,79,44,2,NULL),(203,80,44,2,NULL),(204,78,75,2,NULL),(205,79,75,2,NULL),(206,80,75,2,NULL),(207,64,50,2,NULL),(208,64,59,2,NULL),(209,64,86,2,NULL),(210,65,50,2,NULL),(211,65,59,2,NULL),(212,65,86,2,NULL),(213,81,50,2,NULL),(214,81,59,2,NULL),(215,81,86,2,NULL),(216,82,50,2,NULL),(217,82,59,2,NULL),(218,82,86,2,NULL),(219,48,54,2,NULL),(220,48,67,2,NULL),(221,48,87,2,NULL),(222,96,69,2,NULL),(223,103,69,2,NULL),(224,112,69,2,NULL),(225,121,69,2,NULL),(226,22,69,2,NULL),(227,24,69,2,NULL),(228,96,89,2,NULL),(229,103,89,2,NULL),(230,112,89,2,NULL),(231,121,89,2,NULL),(232,22,89,2,NULL),(233,24,89,2,NULL),(234,96,91,2,NULL),(235,103,91,2,NULL),(236,112,91,2,NULL),(237,121,91,2,NULL),(238,22,91,2,NULL),(239,24,91,2,NULL),(240,96,92,2,NULL),(241,103,92,2,NULL),(242,112,92,2,NULL),(243,121,92,2,NULL),(244,22,92,2,NULL),(245,24,92,2,NULL),(246,96,93,2,NULL),(247,103,93,2,NULL),(248,112,93,2,NULL),(249,121,93,2,NULL),(250,22,93,2,NULL),(251,24,93,2,NULL),(252,107,53,2,NULL),(253,109,9,2,NULL),(254,96,7,2,NULL),(255,103,7,2,NULL),(256,112,7,2,NULL),(257,121,7,2,NULL),(258,22,7,2,NULL),(259,24,7,2,NULL),(260,98,27,2,NULL),(261,100,49,2,NULL),(262,106,24,2,NULL),(263,108,30,2,NULL),(264,110,18,2,NULL),(265,111,33,2,NULL),(266,115,21,2,NULL),(267,116,16,2,NULL),(268,117,13,2,NULL),(269,118,11,2,NULL),(270,119,10,2,NULL),(271,96,1,2,NULL),(272,103,1,2,NULL),(273,112,1,2,NULL),(274,121,1,2,NULL),(275,96,6,2,NULL),(276,103,6,2,NULL),(277,112,6,2,NULL),(278,121,6,2,NULL),(279,96,61,2,NULL),(280,103,61,2,NULL),(281,112,61,2,NULL),(282,121,61,2,NULL),(283,96,66,2,NULL),(284,103,66,2,NULL),(285,112,66,2,NULL),(286,121,66,2,NULL),(287,96,71,2,NULL),(288,103,71,2,NULL),(289,112,71,2,NULL),(290,121,71,2,NULL),(291,96,44,2,NULL),(292,103,44,2,NULL),(293,112,44,2,NULL),(294,121,44,2,NULL),(295,96,75,2,NULL),(296,103,75,2,NULL),(297,112,75,2,NULL),(298,121,75,2,NULL),(299,113,36,2,NULL),(300,123,36,2,NULL),(301,122,36,2,NULL),(302,101,36,2,NULL),(303,105,39,2,NULL),(304,114,42,2,NULL),(305,124,36,2,NULL),(306,102,30,2,NULL),(307,22,61,2,NULL),(308,24,61,2,NULL),(309,22,66,2,NULL),(310,24,66,2,NULL),(311,22,71,2,NULL),(312,24,71,2,NULL),(313,126,57,2,NULL),(314,8,2,2,NULL),(315,22,1,2,NULL),(316,24,1,2,NULL),(317,3,3,2,NULL),(318,1,4,2,NULL),(319,2,4,2,NULL),(320,9,4,2,NULL),(321,10,4,2,NULL),(322,4,5,2,NULL),(323,22,6,2,NULL),(324,24,6,2,NULL),(325,16,68,2,NULL),(326,19,56,2,NULL),(327,34,60,2,NULL),(328,36,52,2,NULL),(329,38,63,2,NULL),(330,40,52,2,NULL),(331,42,63,2,NULL),(332,22,44,2,NULL),(333,24,44,2,NULL),(334,44,44,2,NULL),(335,46,44,2,NULL),(336,22,75,2,NULL),(337,24,75,2,NULL),(338,17,70,2,NULL),(339,18,70,2,NULL),(340,31,70,2,NULL),(341,32,70,2,NULL),(342,29,73,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (12,'android.permission.ACCESS_COARSE_LOCATION'),(5,'android.permission.ACCESS_FINE_LOCATION'),(25,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(8,'android.permission.ACCESS_NETWORK_STATE'),(7,'android.permission.ACCESS_WIFI_STATE'),(4,'android.permission.CHANGE_WIFI_STATE'),(13,'android.permission.GET_ACCOUNTS'),(14,'android.permission.GET_TASKS'),(21,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(24,'android.permission.READ_EXTERNAL_STORAGE'),(6,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(23,'android.permission.READ_SMS'),(9,'android.permission.RECEIVE_BOOT_COMPLETED'),(26,'android.permission.SET_WALLPAPER'),(11,'android.permission.VIBRATE'),(3,'android.permission.WRITE_EXTERNAL_STORAGE'),(22,'android.permission.WRITE_SMS'),(10,'com.android.vending.CHECK_LICENSE');
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(6,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=com.tegrak.overclock.zyl',NULL,NULL,NULL),(11,NULL,NULL,'market://details?id=com.iozhu.overclock.zyl',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=com.tegrak.overclock.zyl',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=com.iozhu.overclock.zyl',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,2,1),(10,2,2),(11,2,3),(12,2,7),(13,2,8),(14,2,9),(15,2,10),(16,2,11),(17,3,1),(18,2,12),(19,3,2),(20,2,13),(21,3,3),(22,5,1),(23,3,4),(24,5,2),(25,3,7),(26,5,3),(27,5,21),(28,3,8),(29,3,14),(30,5,4),(31,5,23),(32,5,22),(33,5,7),(34,5,8),(35,5,9),(36,5,12),(37,5,14),(38,6,1),(39,6,2),(40,6,3),(41,6,4),(42,6,21),(43,6,5),(44,6,7),(45,6,25),(46,6,8),(47,6,24),(48,6,12),(49,7,1),(50,7,2),(51,7,3),(52,7,4),(53,7,5),(54,7,7),(55,7,8),(56,7,12),(57,7,14),(58,7,21),(59,7,23),(60,7,22),(61,7,25),(62,7,24),(63,7,26);
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

-- Dump completed on 2015-10-12  3:29:25
