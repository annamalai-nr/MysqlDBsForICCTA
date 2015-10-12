-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_193
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (5,'android.intent.action.BATTERY_CHANGED_ACTION'),(4,'android.intent.action.BOOT_COMPLETED'),(7,'android.intent.action.CHOOSER'),(10,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.PACKAGE_ADDED'),(11,'android.intent.action.SEND'),(12,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(2,'android.intent.action.VIEW'),(16,'android.intent.action.WEB_SEARCH'),(8,'android.net.wifi.PICK_WIFI_NETWORK'),(6,'android.net.wifi.WIFI_STATE_CHANGED'),(17,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(9,'com.zft.task.result'),(13,'delete_history_account'),(19,'ps.android.view.tabbar.changeTab'),(15,'ps.keepaccount.activity.delteTodayAccount'),(18,'query_history_account');
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
INSERT INTO `Applications` VALUES (1,'uk.co.extorian.EICARAntiVirusTest',1),(2,'de.trier.infsec.koch.droidsheep',13),(3,'com.ps.keepaccount',5),(4,'com.safetest.Star',7),(5,'com.alan.mp3cutter',51),(6,'com.zft',5);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(3,'android.intent.category.SAMPLE_CODE');
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
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'uk.co.extorian.EICARAntiVirusTest.EICARAntiVirusTestMainActivity'),(2,1,'uk.co.extorian.EICARAntiVirusTest.EICARAntiVirusTestMainActivity$2'),(3,2,'de.trier.infsec.koch.droidsheep.activities.ListenActivity'),(4,2,'de.trier.infsec.koch.droidsheep.activities.HijackActivity'),(5,2,'de.trier.infsec.koch.droidsheep.activities.DonateActivity'),(6,2,'de.trier.infsec.koch.droidsheep.services.ArpspoofService'),(7,2,'de.trier.infsec.koch.droidsheep.services.DroidSheepService'),(8,3,'com.ps.keepaccount.Main'),(9,3,'com.ps.keepaccount.tabbar.ButtonDemo'),(10,3,'com.ps.keepaccount.activity.QueryAccount'),(11,3,'com.ps.keepaccount.activity.TodayAccount'),(12,3,'com.ps.keepaccount.activity.HistoryAccount'),(13,3,'com.ps.keepaccount.activity.WriteAccount'),(14,3,'com.ps.keepaccount.activity.TypeAccount'),(15,4,'com.safetest.Star.Star'),(16,3,'com.ps.keepaccount.activity.DemoApp'),(17,3,'com.ps.keepaccount.activity.StatisticsMainActivity'),(18,4,'com.safetest.Star.StarGame'),(19,3,'com.ps.keepaccount.activity.TypeAccountList'),(20,4,'com.safetest.Star.StarHelp'),(21,3,'com.ps.keepaccount.dialog.CanlendarDialog'),(22,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(23,3,'com.ps.keepaccount.dialog.DateSelectorDialog'),(24,4,'com.safetest.Star.ShowTips'),(25,3,'org.achartengine.GraphicalActivity'),(26,4,'com.safetest.Star.UpdateService'),(27,3,'com.waps.OffersWebView'),(28,4,'com.safetest.Star.Receiver'),(29,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(30,3,'com.google.update.Dialog'),(31,3,'com.google.update.UpdateService'),(32,3,'com.google.update.Receiver'),(33,5,'com.alan.mp3cutter.Mp3Cutter'),(34,5,'com.alan.mp3cutter.Mp3Cut'),(35,5,'com.alan.mp3cutter.Mp3Join'),(36,5,'com.alan.mp3cutter.Mp3List'),(37,5,'org.achartengine.GraphicalActivity'),(38,5,'com.google.ads.AdActivity'),(39,5,'com.vpon.adon.android.WebInApp'),(40,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(41,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(42,5,'com.waps.OffersWebView'),(43,5,'com.google.update.Dialog'),(44,5,'com.google.update.UpdateService'),(45,5,'com.google.update.Receiver'),(46,2,'de.trier.infsec.koch.droidsheep.objects.WifiChangeChecker'),(47,2,'de.trier.infsec.koch.droidsheep.helper.MailHelper'),(48,6,'com.zft.QLogoPage'),(49,6,'com.zft.setting_.QAideTools'),(50,6,'com.zft.setting_.QUserDefineZF'),(51,6,'com.zft.setting_.QCallSetting'),(52,6,'com.zft.setting_.QGracePeriod'),(53,6,'com.zft.setting_.QHFWarnning'),(54,6,'com.zft.setting_.QIPSetting_'),(55,6,'com.zft.setting_.QPresentCall'),(56,6,'com.zft.setting_.QRomaSetting'),(57,6,'com.zft.setting_.QTHFCalc'),(58,6,'com.zft.setting_.QSpecialNumber'),(59,6,'com.zft.setting_.QTrafficSetting'),(60,6,'com.zft.setting_.QSMSSetting_'),(61,6,'com.zft.setting_.QCallInfoShowPosition'),(62,6,'com.zft.setting_.QHelpAndSupport'),(63,6,'com.zft.information.QInformation'),(64,6,'com.zft.information.QInformation_info'),(65,6,'com.zft.QDescriptionPage'),(66,6,'com.zft.subpage.QSmsSubPage'),(67,6,'com.zft.QDefinningTc'),(68,6,'com.zft.QChangeTC'),(69,6,'com.zft.QLocationPage'),(70,6,'com.zft.QMainPage'),(71,6,'com.zft.QRegistPage'),(72,6,'com.zft.QSelectTC'),(73,6,'com.zft.QSelectMainTc'),(74,6,'com.zft.QSelectNetTc'),(75,6,'com.zft.QDetailMainTc'),(76,6,'com.zft.QFeatruePage'),(77,6,'com.zft.QTcInfo'),(78,6,'com.zft.QChangeTC_'),(79,6,'com.zft.subpage.QTrafficSubPage'),(80,6,'com.zft.subpage.QSmdrPage'),(81,6,'com.zft.subpage.QChargePage'),(82,6,'com.zft.subpage.QFeedBackPage'),(83,6,'com.zft.subpage.QFriendsPage'),(84,6,'com.core.components.QSubList'),(85,6,'com.zft.happysms.MainActivity'),(86,6,'com.zft.QCallReport'),(87,6,'com.zft.subpage.QPieSubPage'),(88,6,'com.zft.subpage.QBarChartSubPage'),(89,6,'com.zft.subpage.QSmsduSubPage'),(90,6,'com.service.ZftService'),(91,6,'com.service.BootBroadcastReceiver'),(92,6,'com.zft.CheckChargeReceiver'),(93,6,'com.service.callLogs.LogsContentProvider'),(94,6,'com.provider.Variable'),(95,6,'com.service.netraffic.TrafficProvider'),(96,4,'com.safetest.Star.ShowTips$1'),(97,4,'com.adwo.adsdk.g'),(98,3,'com.ps.keepaccount.activity.QueryAccount$1'),(99,5,'com.waps.o'),(100,3,'com.waps.m'),(101,5,'com.alan.mp3cutter.Mp3Cutter$3'),(102,3,'com.waps.AppConnect'),(103,5,'com.google.update.Dialog$2'),(104,3,'com.ps.keepaccount.activity.WriteAccount$1'),(105,5,'com.alan.mp3cutter.Mp3List$3'),(106,3,'com.waps.k'),(107,5,'com.waps.q'),(108,5,'com.waps.AppConnect'),(109,3,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(110,3,'com.google.update.Dialog$2'),(111,5,'com.waps.ac'),(112,5,'com.waps.z'),(113,3,'com.google.update.Dialog$1'),(114,3,'com.google.update.UpdateService$MyThread'),(115,5,'com.google.update.UpdateService$AA'),(116,5,'com.google.update.Dialog$1'),(117,3,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(118,5,'com.waps.aa'),(119,3,'com.ju6.a'),(120,3,'com.waps.o'),(121,5,'com.alan.mp3cutter.Mp3Cutter$2'),(122,3,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(123,3,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver');
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
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,5,'localBin'),(2,5,'interface'),(3,3,'MOBILE'),(4,3,'AUTH'),(5,5,'gateway'),(6,21,'transitionTime'),(7,21,'shouldShowBottomBar'),(8,21,'shouldShowTitlebar'),(9,21,'url'),(10,25,'SAFE_PID'),(11,21,'shouldResizeOverlay'),(12,21,'shouldMakeOverlayTransparent'),(13,21,'overlayTransition'),(14,26,'URL'),(15,26,'URL_PARAMS'),(16,28,'transitionTime'),(17,28,'shouldEnableBottomBar'),(18,39,'Adwo_PID'),(19,42,'TYPEdsada'),(20,32,'APP_ID'),(21,26,'Offers_URL'),(22,41,'APP_ID'),(23,7,'WAPS_ID'),(24,40,'shouldShowTitlebar'),(25,30,'WAPS_ID'),(26,41,'Notify_Url_Params'),(27,15,'WAPS_ID'),(28,41,'isFinshClose'),(29,28,'WAPS_ID'),(30,28,'url'),(31,9,'startDate'),(32,41,'URL'),(33,26,'USER_ID'),(34,39,'isTestMode'),(35,30,'ST_START_DELAY'),(36,26,'CLIENT_PACKAGE'),(37,9,'endDate'),(38,28,'shouldMakeOverlayTransparent'),(39,40,'shouldResizeOverlay'),(40,41,'Notify_Id'),(41,32,'DEVICE_ID'),(42,41,'DEVICE_ID'),(43,40,'overlayTitle'),(44,40,'url'),(45,28,'shouldShowBottomBar'),(46,28,'overlayTransition'),(47,33,'name'),(48,30,'ST_MY_PID'),(49,24,'title'),(50,13,'endDate'),(51,23,'MM'),(52,7,'CLIENT_PACKAGE'),(53,40,'overlayTransition'),(54,25,'SAFE_START'),(55,30,'CLIENT_PACKAGE'),(56,21,'overlayTitle'),(57,15,'CLIENT_PACKAGE'),(58,21,'shouldEnableBottomBar'),(59,28,'CLIENT_PACKAGE'),(60,41,'ACTIVITY_FLAG'),(61,42,'MSG'),(62,38,'url'),(63,41,'UrlPath'),(64,7,'WAPS_PID'),(65,30,'WAPS_PID'),(66,15,'WAPS_PID'),(67,28,'WAPS_PID'),(68,29,'MSG'),(69,35,'action'),(70,41,'SHWO_FLAG'),(71,32,'WAPS_ID'),(72,41,'WAPS_ID'),(73,40,'shouldEnableBottomBar'),(74,40,'transitionTime'),(75,28,'overlayTitle'),(76,13,'startDate'),(77,41,'Offers_URL'),(78,41,'offers_webview_tag'),(79,41,'USER_ID'),(80,40,'shouldShowBottomBar'),(81,43,'ST_START_DELAY'),(82,7,'DEVICE_ID'),(83,30,'DEVICE_ID'),(84,15,'DEVICE_ID'),(85,28,'DEVICE_ID'),(86,28,'shouldShowTitlebar'),(87,7,'APP_ID'),(88,30,'APP_ID'),(89,15,'APP_ID'),(90,28,'APP_ID'),(91,26,'isFinshClose'),(92,24,'chart'),(93,18,'endDate'),(94,28,'shouldResizeOverlay'),(95,32,'CLIENT_PACKAGE'),(96,41,'CLIENT_PACKAGE'),(97,43,'ST_MY_PID'),(98,32,'WAPS_PID'),(99,41,'WAPS_PID'),(100,40,'shouldMakeOverlayTransparent'),(101,18,'type'),(102,38,'adWidth'),(103,18,'startDate'),(104,41,'URL_PARAMS'),(105,29,'TYPEdsada');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,3,'a',1,NULL,NULL),(3,4,'a',1,NULL,NULL),(4,5,'a',1,NULL,NULL),(5,6,'s',0,NULL,NULL),(6,7,'s',0,NULL,NULL),(7,8,'a',1,NULL,NULL),(8,9,'a',0,NULL,NULL),(9,10,'a',0,NULL,NULL),(10,11,'a',0,NULL,NULL),(11,12,'a',0,NULL,NULL),(12,13,'a',0,NULL,NULL),(13,14,'a',0,NULL,NULL),(14,15,'a',1,NULL,NULL),(15,16,'a',0,NULL,NULL),(16,17,'a',0,NULL,NULL),(17,18,'a',0,NULL,NULL),(18,19,'a',0,NULL,NULL),(19,20,'a',0,NULL,NULL),(20,21,'a',0,NULL,NULL),(21,22,'a',0,NULL,NULL),(22,23,'a',0,NULL,NULL),(23,24,'a',0,NULL,NULL),(24,25,'a',0,NULL,NULL),(25,26,'s',0,NULL,NULL),(26,27,'a',0,NULL,NULL),(27,28,'r',1,NULL,NULL),(28,29,'a',0,NULL,NULL),(29,30,'a',0,NULL,NULL),(30,31,'s',0,NULL,NULL),(31,32,'r',1,NULL,NULL),(32,33,'a',1,NULL,NULL),(33,34,'a',0,NULL,NULL),(34,35,'a',0,NULL,NULL),(35,36,'a',0,NULL,NULL),(36,37,'a',0,NULL,NULL),(37,38,'a',0,NULL,NULL),(38,39,'a',0,NULL,NULL),(39,40,'a',0,NULL,NULL),(40,41,'a',0,NULL,NULL),(41,42,'a',0,NULL,NULL),(42,43,'a',0,NULL,NULL),(43,44,'s',0,NULL,NULL),(44,45,'r',1,NULL,NULL),(45,46,'r',1,NULL,NULL),(46,48,'a',1,NULL,NULL),(47,49,'a',1,NULL,NULL),(48,50,'a',1,NULL,NULL),(49,51,'a',1,NULL,NULL),(50,52,'a',1,NULL,NULL),(51,53,'a',1,NULL,NULL),(52,54,'a',1,NULL,NULL),(53,55,'a',1,NULL,NULL),(54,56,'a',1,NULL,NULL),(55,57,'a',1,NULL,NULL),(56,58,'a',1,NULL,NULL),(57,59,'a',1,NULL,NULL),(58,60,'a',1,NULL,NULL),(59,61,'a',1,NULL,NULL),(60,62,'a',1,NULL,NULL),(61,63,'a',0,NULL,NULL),(62,64,'a',0,NULL,NULL),(63,65,'a',0,NULL,NULL),(64,66,'a',0,NULL,NULL),(65,67,'a',0,NULL,NULL),(66,68,'a',0,NULL,NULL),(67,69,'a',0,NULL,NULL),(68,70,'a',1,NULL,NULL),(69,71,'a',0,NULL,NULL),(70,72,'a',0,NULL,NULL),(71,73,'a',0,NULL,NULL),(72,74,'a',0,NULL,NULL),(73,75,'a',0,NULL,NULL),(74,76,'a',0,NULL,NULL),(75,77,'a',0,NULL,NULL),(76,78,'a',0,NULL,NULL),(77,79,'a',0,NULL,NULL),(78,80,'a',0,NULL,NULL),(79,81,'a',0,NULL,NULL),(80,82,'a',0,NULL,NULL),(81,83,'a',0,NULL,NULL),(82,84,'a',0,NULL,NULL),(83,85,'a',0,NULL,NULL),(84,86,'a',1,NULL,NULL),(85,87,'a',0,NULL,NULL),(86,88,'a',0,NULL,NULL),(87,89,'a',0,NULL,NULL),(88,90,'s',0,NULL,NULL),(89,91,'r',1,NULL,NULL),(90,92,'r',1,NULL,NULL),(91,93,'p',0,NULL,NULL),(92,94,'p',0,NULL,NULL),(93,95,'p',0,NULL,NULL),(94,100,'r',1,NULL,NULL),(95,107,'r',1,NULL,NULL),(96,109,'r',1,NULL,NULL),(97,117,'r',1,NULL,NULL),(98,122,'r',1,NULL,NULL),(99,123,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,2),(3,3,4),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,3),(9,9,14),(10,10,27),(11,11,23),(12,12,14),(13,13,9),(14,14,31),(15,15,9),(16,16,41),(17,17,32),(18,18,9),(19,19,15),(20,20,42),(21,21,44),(22,22,12),(23,23,35),(24,24,26),(25,25,32),(26,26,13),(27,27,29),(28,28,41),(29,29,9),(30,30,35),(31,31,41),(32,32,29),(33,33,43),(34,34,30),(35,35,43),(36,36,30),(37,37,42),(38,38,13),(39,39,41),(40,40,30),(41,41,30),(42,42,15),(43,42,30),(44,42,28),(45,43,32),(46,44,43),(47,45,41),(48,46,30),(49,46,15),(50,46,28),(51,47,41),(52,48,28),(53,48,30),(54,48,15),(55,49,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<uk.co.extorian.EICARAntiVirusTest.EICARAntiVirusTestMainActivity$2: void onClick(android.view.View)>',6,'a',NULL),(2,3,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',23,'a',NULL),(3,5,'<de.trier.infsec.koch.droidsheep.activities.DonateActivity: void onClick(android.view.View)>',12,'a',NULL),(4,3,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: void click(int,boolean)>',26,'a',NULL),(5,47,'<de.trier.infsec.koch.droidsheep.helper.MailHelper: void sendAuthByMail(android.content.Context,de.trier.infsec.koch.droidsheep.auth.Auth)>',15,'a',NULL),(6,3,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',29,'a',NULL),(7,3,'<de.trier.infsec.koch.droidsheep.activities.ListenActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(8,4,'<de.trier.infsec.koch.droidsheep.activities.HijackActivity: void showDonate()>',8,'a',NULL),(9,15,'<com.safetest.Star.Star: void onCreate(android.os.Bundle)>',17,'s',NULL),(10,28,'<com.safetest.Star.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(11,96,'<com.safetest.Star.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(12,97,'<com.adwo.adsdk.g: void run()>',59,'a',NULL),(13,98,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(14,32,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(15,10,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(16,99,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(17,101,'<com.alan.mp3cutter.Mp3Cutter$3: void onClick(android.view.View)>',45,'a',NULL),(18,98,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(19,102,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',12,'a',NULL),(20,103,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(21,45,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(22,104,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(23,105,'<com.alan.mp3cutter.Mp3List$3: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',125,'a',NULL),(24,106,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(25,108,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(26,14,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(27,110,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(28,111,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(29,10,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(30,36,'<com.alan.mp3cutter.Mp3List: void addDataToListView()>',3,'p',NULL),(31,112,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(32,113,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(33,44,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(34,114,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(35,115,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(36,31,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(37,116,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(38,14,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(39,118,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(40,119,'<com.ju6.a: boolean b()>',178,'p',NULL),(41,31,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(42,120,'<com.waps.o: void onClick(android.view.View)>',39,'a',NULL),(43,121,'<com.alan.mp3cutter.Mp3Cutter$2: void onClick(android.view.View)>',45,'a',NULL),(44,44,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(45,42,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(46,120,'<com.waps.o: void onClick(android.view.View)>',78,'a',NULL),(47,42,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',331,'a',NULL),(48,120,'<com.waps.o: void onClick(android.view.View)>',54,'a',NULL),(49,102,'<com.waps.AppConnect: void showMore(android.content.Context,java.lang.String)>',12,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,2),(2,2,2),(3,3,2),(4,5,7),(5,6,7),(6,7,7),(7,8,7),(8,9,7),(9,10,7),(10,11,7),(11,12,7),(12,13,2),(13,14,8),(14,18,1),(15,19,1),(16,20,10),(17,21,11),(18,22,12),(19,23,2),(20,24,12),(21,25,2),(22,26,11),(23,27,11),(24,28,2),(25,29,2),(26,30,10),(27,31,2),(28,32,2),(29,33,2),(30,34,12),(31,35,11),(32,36,11),(33,37,11),(34,38,11),(35,39,13),(36,40,12),(37,41,2),(38,43,11),(39,45,2),(40,47,11),(41,48,2),(42,49,2),(43,51,12),(44,52,15),(45,53,2),(46,55,16),(47,56,17),(48,57,2),(49,59,16),(50,61,11),(51,63,2),(52,64,2),(53,65,10),(54,68,17),(55,70,18),(56,71,2),(57,72,1),(58,73,1),(59,75,1),(60,77,1),(61,78,1),(62,80,1),(63,82,1),(64,83,1),(65,91,1),(66,92,1),(67,93,1),(68,95,1),(69,98,1),(70,99,1),(71,102,2),(72,103,2);
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
INSERT INTO `ICategories` VALUES (1,18,1),(2,19,4),(3,72,1),(4,73,4),(5,75,1),(6,77,4),(7,78,4),(8,80,1),(9,82,1),(10,83,4),(11,91,1),(12,92,4),(13,93,1),(14,95,4),(15,98,1),(16,99,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,4,'de/trier/infsec/koch/droidsheep/activities/HijackActivity'),(2,15,'de/trier/infsec/koch/droidsheep/activities/DonateActivity'),(3,16,'com/safetest/Star/UpdateService'),(4,17,'com/safetest/Star/UpdateService'),(5,25,'com/adwo/adsdk/AdwoAdBrowserActivity'),(6,29,'com.google.android.maps.MapsActivity'),(7,42,'com/google/update/UpdateService'),(8,44,'com/ps/keepaccount/dialog/DateSelectorDialog'),(9,45,'com.google.android.maps.MapsActivity'),(10,49,'com.google.android.maps.MapsActivity'),(11,50,'com/alan/mp3cutter/Mp3List'),(12,53,'com.google.android.maps.MapsActivity'),(13,54,'com/waps/OffersWebView'),(14,58,'com/google/update/UpdateService'),(15,60,'com/ps/keepaccount/dialog/CanlendarDialog'),(16,62,'com/alan/mp3cutter/Mp3Cut'),(17,63,'com.google.android.maps.MapsActivity'),(18,66,'com/waps/OffersWebView'),(19,67,'com/ps/keepaccount/dialog/DateSelectorDialog'),(20,69,'NULL-CONSTANT'),(21,74,'com/google/update/Dialog'),(22,76,'com/google/update/Dialog'),(23,79,'com/google/update/Dialog'),(24,81,'com/google/update/Dialog'),(25,84,'com/ps/keepaccount/activity/TypeAccountList'),(26,85,'com/waps/OffersWebView'),(27,86,'com/google/update/Dialog'),(28,87,'com/waps/OffersWebView'),(29,88,'com/google/update/Dialog'),(30,90,'com/alan/mp3cutter/Mp3List'),(31,94,'com/google/update/Dialog'),(32,96,'com/google/update/Dialog'),(33,100,'com/waps/OffersWebView'),(34,101,'(.*)'),(35,104,'com/waps/OffersWebView');
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,13,4),(5,20,5),(6,21,6),(7,22,7),(8,23,8),(9,24,9),(10,26,10),(11,27,11),(12,28,12),(13,30,13),(14,31,14),(15,32,15),(16,34,16),(17,35,17),(18,38,18),(19,41,19),(20,43,20),(21,45,21),(22,47,22),(23,48,23),(24,49,24),(25,51,25),(26,53,26),(27,57,27),(28,61,28),(29,63,29),(30,64,30),(31,71,32),(32,102,34),(33,103,35);
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,4,'MOBILE'),(2,4,'AUTH'),(3,5,'android.intent.extra.INTENT'),(4,6,'android.intent.extra.INTENT'),(5,7,'android.intent.extra.TITLE'),(6,7,'android.intent.extra.INTENT'),(7,8,'android.intent.extra.INTENT'),(8,9,'android.intent.extra.TITLE'),(9,9,'android.intent.extra.INTENT'),(10,10,'android.intent.extra.INTENT'),(11,11,'android.intent.extra.TITLE'),(12,11,'android.intent.extra.INTENT'),(13,12,'android.intent.extra.TITLE'),(14,12,'android.intent.extra.INTENT'),(15,21,'android.intent.extra.TEXT'),(16,21,'android.intent.extra.SUBJECT'),(17,21,'android.intent.extra.EMAIL'),(18,22,'sms_body'),(19,25,'url'),(20,26,'android.intent.extra.EMAIL'),(21,27,'android.intent.extra.TEXT'),(22,27,'android.intent.extra.EMAIL'),(23,35,'android.intent.extra.EMAIL'),(24,37,'android.intent.extra.TEXT'),(25,37,'android.intent.extra.SUBJECT'),(26,37,'android.intent.extra.EMAIL'),(27,38,'android.intent.extra.TEXT'),(28,38,'android.intent.extra.SUBJECT'),(29,38,'android.intent.extra.EMAIL'),(30,47,'android.intent.extra.TEXT'),(31,47,'android.intent.extra.EMAIL'),(32,50,'action'),(33,51,'sms_body'),(34,54,'USER_ID'),(35,54,'CLIENT_PACKAGE'),(36,54,'Offers_URL'),(37,54,'URL_PARAMS'),(38,55,'query'),(39,62,'id'),(40,62,'name'),(41,66,'USER_ID'),(42,66,'CLIENT_PACKAGE'),(43,66,'Offers_URL'),(44,66,'offers_webview_tag'),(45,66,'URL_PARAMS'),(46,70,'startDate'),(47,70,'endDate'),(48,74,'TYPEdsada'),(49,76,'MSG'),(50,76,'TYPEdsada'),(51,79,'TYPEdsada'),(52,81,'MSG'),(53,81,'TYPEdsada'),(54,84,'startDate'),(55,84,'endDate'),(56,84,'type'),(57,85,'Notify_Url_Params'),(58,85,'UrlPath'),(59,85,'ACTIVITY_FLAG'),(60,85,'isFinshClose'),(61,85,'offers_webview_tag'),(62,86,'TYPEdsada'),(63,87,'UrlPath'),(64,87,'ACTIVITY_FLAG'),(65,87,'isFinshClose'),(66,87,'offers_webview_tag'),(67,88,'MSG'),(68,88,'TYPEdsada'),(69,90,'action'),(70,94,'TYPEdsada'),(71,96,'MSG'),(72,96,'TYPEdsada'),(73,100,'CLIENT_PACKAGE'),(74,100,'URL'),(75,100,'isFinshClose'),(76,104,'USER_ID'),(77,104,'CLIENT_PACKAGE'),(78,104,'Offers_URL'),(79,104,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,7,3),(8,7,4),(9,7,5),(10,8,5),(11,8,3),(12,8,4),(13,9,1),(14,10,5),(15,10,3),(16,10,4),(17,11,6),(18,12,1),(19,13,1),(20,14,1),(21,15,1),(22,16,1),(23,17,1),(24,18,1),(25,19,1),(26,20,1),(27,21,1),(28,22,1),(29,23,1),(30,24,1),(31,25,1),(32,26,1),(33,27,1),(34,28,2),(35,29,4),(36,30,9),(37,31,14),(38,32,14),(39,33,15),(40,34,18),(41,35,19),(42,36,13);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,1),(6,6,1),(7,9,1),(8,12,1),(9,13,3),(10,14,3),(11,15,3),(12,16,3),(13,17,3),(14,18,3),(15,19,3),(16,20,3),(17,21,3),(18,22,3),(19,23,3),(20,24,3),(21,25,3),(22,26,3),(23,27,2),(24,28,2);
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
INSERT INTO `IFData` VALUES (1,31,'package',NULL,NULL,NULL,NULL,NULL),(2,32,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,23,'*','*'),(2,32,'(.*)','(.*)'),(3,37,'message','rfc882'),(4,41,'(.*)','(.*)'),(5,48,'application','vnd.android.package-archive'),(6,57,'*','*'),(7,64,'application','vnd.android.package-archive'),(8,71,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,4,'de.trier.infsec.koch.droidsheep'),(2,15,'de.trier.infsec.koch.droidsheep'),(3,16,'com.safetest.Star'),(4,17,'com.safetest.Star'),(5,18,'com.noshufou.android.su'),(6,19,'com.noshufou.android.su'),(7,25,'com.safetest.Star'),(8,29,'com.google.android.apps.maps'),(9,42,'com.ps.keepaccount'),(10,44,'com.ps.keepaccount'),(11,45,'com.google.android.apps.maps'),(12,49,'com.google.android.apps.maps'),(13,50,'com.alan.mp3cutter'),(14,53,'com.google.android.apps.maps'),(15,54,'com.ps.keepaccount'),(16,58,'com.alan.mp3cutter'),(17,60,'com.ps.keepaccount'),(18,62,'com.alan.mp3cutter'),(19,63,'com.google.android.apps.maps'),(20,66,'com.alan.mp3cutter'),(21,67,'com.ps.keepaccount'),(22,69,'NULL-CONSTANT'),(23,72,'com.noshufou.android.su'),(24,73,'com.noshufou.android.su'),(25,74,'com.alan.mp3cutter'),(26,75,'com.ps.keepaccount'),(27,76,'com.alan.mp3cutter'),(28,77,'com.ps.keepaccount'),(29,78,'com.alan.mp3cutter'),(30,79,'com.ps.keepaccount'),(31,80,'com.alan.mp3cutter'),(32,81,'com.ps.keepaccount'),(33,82,'com.noshufou.android.su'),(34,83,'com.noshufou.android.su'),(35,84,'com.ps.keepaccount'),(36,85,'com.alan.mp3cutter'),(37,86,'com.ps.keepaccount'),(38,87,'com.alan.mp3cutter'),(39,88,'com.ps.keepaccount'),(40,90,'com.alan.mp3cutter'),(41,91,'(.*)'),(42,92,'(.*)'),(43,93,'NULL-CONSTANT'),(44,94,'com.alan.mp3cutter'),(45,95,'NULL-CONSTANT'),(46,96,'com.alan.mp3cutter'),(47,98,'(.*)'),(48,99,'(.*)'),(49,100,'com.ps.keepaccount'),(50,101,'(.*)'),(51,104,'com.ps.keepaccount');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,7,0),(6,14,0),(7,27,0),(8,31,0),(9,32,0),(10,44,0),(11,45,0),(12,46,0),(13,47,0),(14,48,0),(15,49,0),(16,50,0),(17,51,0),(18,52,0),(19,53,0),(20,54,0),(21,55,0),(22,56,0),(23,57,0),(24,58,0),(25,59,0),(26,60,0),(27,68,0),(28,84,0),(29,89,0),(30,90,0),(31,94,0),(32,95,0),(33,96,0),(34,97,0),(35,98,0),(36,99,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,1,0),(4,4,0,0),(5,5,1,0),(6,5,1,0),(7,5,1,0),(8,5,1,0),(9,5,1,0),(10,5,1,0),(11,5,1,0),(12,5,1,0),(13,6,1,0),(14,7,1,0),(15,8,0,0),(16,9,0,0),(17,10,0,0),(18,11,1,0),(19,11,1,0),(20,12,1,0),(21,12,1,0),(22,12,1,0),(23,12,1,0),(24,12,1,0),(25,12,0,0),(26,12,1,0),(27,12,1,0),(28,12,1,0),(29,12,0,0),(30,12,1,0),(31,12,1,0),(32,12,1,0),(33,12,1,0),(34,12,1,0),(35,12,1,0),(36,12,1,0),(37,12,1,0),(38,12,1,0),(39,13,1,0),(40,12,1,0),(41,12,1,0),(42,14,0,0),(43,12,1,0),(44,15,0,0),(45,12,0,0),(46,12,1,0),(47,12,1,0),(48,16,1,0),(49,12,0,0),(50,17,0,0),(51,12,1,0),(52,18,1,0),(53,12,0,0),(54,19,0,0),(55,12,1,0),(56,20,1,0),(57,12,1,0),(58,21,0,0),(59,12,1,0),(60,22,0,0),(61,12,1,0),(62,23,0,0),(63,12,0,0),(64,24,1,0),(65,12,1,0),(66,25,0,0),(67,26,0,0),(68,27,1,0),(69,28,0,0),(70,29,1,0),(71,31,1,0),(72,32,1,0),(73,32,1,0),(74,33,0,0),(75,34,1,0),(76,33,0,0),(77,34,1,0),(78,35,1,0),(79,36,0,0),(80,35,1,0),(81,36,0,0),(82,37,1,0),(83,37,1,0),(84,38,0,0),(85,39,0,0),(86,41,0,0),(87,39,0,0),(88,41,0,0),(89,42,1,0),(90,43,0,0),(91,42,1,0),(92,42,1,0),(93,42,1,0),(94,44,0,0),(95,42,1,0),(96,44,0,0),(97,45,1,0),(98,45,1,0),(99,45,1,0),(100,46,0,0),(101,47,0,0),(102,48,1,0),(103,48,1,0),(104,49,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.service.callLogs.LogsContentProvider'),(2,2,'com.provider.Variable'),(3,3,'com.service.net.TrafficContentProvider');
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (9,'android.permission.ACCESS_COARSE_LOCATION'),(16,'android.permission.ACCESS_FINE_LOCATION'),(17,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(3,'android.permission.ACCESS_WIFI_STATE'),(18,'android.permission.ADD_SYSTEM_SERVICE'),(24,'android.permission.CALL_PHONE'),(29,'android.permission.CHANGE_NETWORK_STATE'),(13,'android.permission.CHANGE_WIFI_STATE'),(6,'android.permission.GET_TASKS'),(5,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(27,'android.permission.MODIFY_AUDIO_SETTINGS'),(28,'android.permission.MODIFY_PHONE_STATE'),(22,'android.permission.PROCESS_OUTGOING_CALLS'),(25,'android.permission.READ_CONTACTS'),(15,'android.permission.READ_EXTERNAL_STORAGE'),(10,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(12,'android.permission.RECEIVE_BOOT_COMPLETED'),(23,'android.permission.RECEIVE_SMS'),(20,'android.permission.SEND_SMS'),(4,'android.permission.WAKE_LOCK'),(21,'android.permission.WRITE_APN_SETTINGS'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS'),(19,'com.android.launcher.permission.INSTALL_SHORTCUT'),(26,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(1,'com.google.android.gm.permission.WRITE_GMAIL');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,91,0,NULL,NULL),(2,92,0,NULL,NULL),(3,93,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://extorian.co.uk/donate.html?utm_source=eicar_anti_virus_test&utm_medium=android_app&utm_campaign=eicar_anti_virus_test',NULL,NULL,NULL),(2,NULL,NULL,'http://droidsheep.de/forum',NULL,NULL,NULL),(3,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(4,NULL,NULL,'http://droidsheep.de/?page_id=121',NULL,NULL,NULL),(5,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(8,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(9,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'tel:NULL-CONSTANT',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(16,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT((.*))&z=22',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(24,NULL,NULL,'http://maps.google.com/maps?q=(.*)((.*))&z=22',NULL,NULL,NULL),(25,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(26,NULL,NULL,'http://maps.google.com/maps?q=NULL-CONSTANT()&z=22',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'http://maps.google.com/maps?q=(.*)()&z=22',NULL,NULL,NULL),(30,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(31,NULL,NULL,'content://media/external/audio/media',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(33,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,30,31),(2,40,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,3,2),(6,3,3),(7,3,5),(8,3,6),(9,3,7),(10,3,8),(11,3,9),(12,3,10),(13,3,11),(14,3,12),(15,3,13),(16,3,14),(17,4,2),(18,4,3),(19,4,8),(20,4,9),(21,4,10),(22,4,11),(23,4,14),(24,5,17),(25,5,16),(26,5,2),(27,5,3),(28,5,6),(29,5,7),(30,5,9),(31,5,10),(32,5,12),(33,5,13),(34,5,14),(35,5,15),(36,6,2),(37,6,3),(38,6,4),(39,6,6),(40,6,8),(41,6,10),(42,6,11),(43,6,12),(44,6,13),(45,6,14),(46,6,19),(47,6,18),(48,6,21),(49,6,20),(50,6,23),(51,6,22),(52,6,25),(53,6,24),(54,6,27),(55,6,26),(56,6,29),(57,6,28);
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

-- Dump completed on 2015-10-09  0:38:30
