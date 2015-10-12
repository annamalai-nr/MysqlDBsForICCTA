-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_104
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
INSERT INTO `ActionStrings` VALUES (16,'(.*)'),(20,'android.intent.action.ACTION_SHUTDOWN'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(5,'android.intent.action.CHOOSER'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.NEW_OUTGOING_CALL'),(14,'android.intent.action.PACKAGE_ADDED'),(21,'android.intent.action.PACKAGE_REMOVED'),(9,'android.intent.action.PHONE_STATE'),(3,'android.intent.action.SIG_STR'),(13,'android.intent.action.VIEW'),(11,'android.net.conn.CONNECTIVITY_CHANGE'),(6,'com.adwo.android.snake.MUSIC'),(12,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(22,'com.atools.nettraffic.receiver'),(23,'com.googlecode.droidwall.intent.action.STATUS_CHANGED'),(8,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(17,'delete_history_account'),(7,'org.openintents.action.PICK_DIRECTORY'),(18,'ps.android.view.tabbar.changeTab'),(19,'ps.keepaccount.activity.delteTodayAccount'),(15,'query_history_account');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',6),(2,'com.ps.keepaccount',9),(3,'com.ps.yams',7),(4,'com.gp.geekadoo',10),(5,'com.adwo.android.snake',7),(6,'com.gp.animalkeeper',1),(7,'com.atools.nettraffic',3);
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
INSERT INTO `CategoryStrings` VALUES (5,'android.intent.category.BROWSABLE'),(3,'android.intent.category.DEFAULT'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(2,'android.intent.category.default');
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
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(6,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(7,1,'com.tutusw.onekeyvpn.ImportFiles'),(8,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(9,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(10,2,'com.ps.keepaccount.Main'),(11,2,'com.ps.keepaccount.tabbar.ButtonDemo'),(12,2,'com.ps.keepaccount.activity.QueryAccount'),(13,2,'com.ps.keepaccount.activity.TodayAccount'),(14,2,'com.ps.keepaccount.activity.HistoryAccount'),(15,2,'com.ps.keepaccount.activity.WriteAccount'),(16,2,'com.ps.keepaccount.activity.TypeAccount'),(17,2,'com.ps.keepaccount.activity.StatisticsMainActivity'),(18,3,'com.ps.yams.Yams'),(19,2,'com.ps.keepaccount.activity.TypeAccountList'),(20,2,'com.ps.keepaccount.dialog.CanlendarDialog'),(21,3,'com.google.update.Dialog'),(22,2,'com.ps.keepaccount.dialog.DateSelectorDialog'),(23,3,'cn.domob.android.ads.DomobActivity'),(24,2,'org.achartengine.GraphicalActivity'),(25,3,'com.adwo.adsdk.AdwoAdBrowserActivity'),(26,2,'com.google.update.Dialog'),(27,3,'com.google.update.UpdateService'),(28,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(29,3,'com.google.update.Receiver'),(30,2,'com.waps.OffersWebView'),(31,4,'com.gp.geekadoo.ui.MainScreen'),(32,2,'com.google.update.UpdateService'),(33,2,'com.google.update.Receiver'),(34,4,'com.gp.geekadoo.ui.Yaniv'),(35,4,'com.google.update.Dialog'),(36,4,'cn.domob.android.ads.DomobActivity'),(37,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(38,4,'com.waps.OffersWebView'),(39,4,'com.google.update.UpdateService'),(40,4,'com.google.update.Receiver'),(41,5,'com.adwo.android.snake.Snake'),(42,5,'com.adwo.android.snake.begin'),(43,5,'com.adwo.android.snake.editname'),(44,5,'com.adwo.android.snake.queryActivity'),(45,5,'com.adwo.android.snake.orderActivity'),(46,5,'com.adwo.android.snake.Music'),(47,5,'com.google.ads.AdActivity'),(48,5,'com.vpon.adon.android.WebInApp'),(49,5,'com.adwo.adsdk.AdwoSplashAdActivity'),(50,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(51,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(52,5,'com.waps.OffersWebView'),(53,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(54,5,'com.google.update.Dialog'),(55,5,'com.adwo.android.snake.MusicServer'),(56,5,'com.google.update.UpdateService'),(57,5,'com.google.update.Receiver'),(58,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(59,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(60,6,'com.gp.animalkeeper.GameStartMenu'),(61,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(62,6,'com.gp.animalkeeper.GameMainActivity'),(63,6,'com.gp.animalkeeper.GameOverMenu'),(64,6,'com.gp.animalkeeper.Top'),(65,6,'cn.domob.android.ads.DomobActivity'),(66,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(67,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(68,6,'com.google.update.Dialog'),(69,6,'com.waps.OffersWebView'),(70,6,'com.google.update.UpdateService'),(71,6,'com.gp.animalkeeper.CallReceiver'),(72,6,'com.google.update.Receiver'),(73,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(74,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(75,3,'com.google.update.Dialog$2'),(76,3,'cn.domob.android.ads.i$6'),(77,3,'cn.domob.android.ads.DomobActionReceiver'),(78,3,'com.google.update.Dialog$1'),(79,3,'cn.domob.android.ads.DomobAdEngine$2'),(80,3,'cn.domob.android.ads.i'),(81,2,'com.ps.keepaccount.activity.HistoryAccount$QueryAccountBroadcastReceiver'),(82,3,'cn.domob.android.ads.DomobAdManager'),(83,2,'com.waps.o'),(84,2,'com.ps.keepaccount.activity.WriteAccount$1'),(85,5,'com.waps.k'),(86,2,'com.waps.s'),(87,3,'com.google.update.UpdateService$AA'),(88,5,'com.google.update.UpdateService$MyThread'),(89,5,'com.google.update.Dialog$1'),(90,4,'com.waps.z'),(91,5,'com.adwo.android.snake.orderActivity$orderbackListener'),(92,5,'com.google.update.Dialog$2'),(93,5,'com.adwo.android.snake.editname$saveButtonListener'),(94,4,'com.waps.q'),(95,2,'com.google.update.Dialog$1'),(96,5,'com.adwo.android.snake.queryActivity$backListener'),(97,2,'com.ps.keepaccount.activity.HistoryAccount$DeleteHisAccountBroadcastReceiver'),(98,5,'com.adwo.android.snake.begin$soundButtonListener'),(99,4,'com.google.update.Dialog$2'),(100,5,'com.adwo.android.snake.begin$beginButtonListener'),(101,5,'com.ju6.a'),(102,2,'com.ps.keepaccount.tabbar.TabBarActivity$ChangeTabBroadcastReceiver'),(103,2,'com.google.update.UpdateService$AA'),(104,4,'cn.domob.android.ads.DomobAdEngine$2'),(105,5,'com.waps.m'),(106,4,'com.gp.geekadoo.ui.MainScreen$3'),(107,2,'com.google.update.Dialog$2'),(108,4,'com.waps.ac'),(109,5,'com.adwo.android.snake.editname$orderListener'),(110,4,'com.waps.aa'),(111,5,'com.adwo.android.snake.editname$queryListener'),(112,2,'com.waps.q'),(113,2,'com.waps.z'),(114,4,'com.gp.geekadoo.ui.MainScreen$5'),(115,2,'com.ps.keepaccount.activity.QueryAccount$1'),(116,2,'com.ps.keepaccount.activity.TodayAccount$DeleteAaccountBroadcastReceiver'),(117,4,'com.google.update.UpdateService$AA'),(118,2,'com.waps.aa'),(119,4,'com.waps.o'),(120,4,'cn.domob.android.ads.DomobActionReceiver'),(121,2,'com.waps.ac'),(122,4,'com.google.update.Dialog$1'),(123,4,'cn.domob.android.ads.i$6'),(124,4,'cn.domob.android.ads.DomobAdManager'),(125,4,'cn.domob.android.ads.i'),(126,7,'com.atools.nettraffic.MainActivity'),(127,7,'com.atools.nettraffic.TrafficControlActivity'),(128,7,'com.atools.nettraffic.SettingActivity'),(129,7,'com.atools.nettraffic.MoreActivity'),(130,7,'com.atools.nettraffic.AlertDialogActivity'),(131,7,'com.ranfeng.common.SoftUpdateActivity'),(132,7,'com.atools.battery.ShowTips'),(133,7,'com.atools.nettraffic.services.NetTrafficService_2_1'),(134,7,'com.atools.nettraffic.services.NetTrafficService_2_2'),(135,7,'com.atools.battery.UpdateService'),(136,7,'com.atools.nettraffic.BootAndShutdownBroadcast'),(137,7,'com.atools.nettraffic.CommonBroadcast'),(138,7,'com.atools.battery.m'),(139,7,'com.atools.nettraffic.util.InternetController'),(140,7,'com.ranfeng.common.FeedBackDialog$2'),(141,7,'com.atools.nettraffic.Api'),(142,7,'com.atools.nettraffic.MainActivity$ClickEvent'),(143,6,'cn.domob.android.a.a$a'),(144,6,'com.waps.ac'),(145,6,'com.google.update.UpdateService$AA'),(146,6,'cn.domob.android.ads.e'),(147,6,'cn.domob.android.ads.o$5'),(148,6,'cn.domob.android.ads.g$1'),(149,6,'com.google.update.Dialog$1'),(150,6,'com.gp.animalkeeper.GameOverMenu$5'),(151,6,'com.waps.aa'),(152,6,'cn.domob.android.ads.o'),(153,6,'cn.domob.android.ads.DomobAdManager'),(154,6,'com.waps.z'),(155,6,'com.waps.q'),(156,6,'com.waps.o'),(157,6,'com.google.update.Dialog$2');
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
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,25,'shouldResizeOverlay'),(2,25,'overlayTransition'),(3,21,'TYPEdsada'),(4,27,'DOMOB_PID'),(5,25,'DOMOB_PID'),(6,25,'shouldShowTitlebar'),(7,23,'appName'),(8,25,'transitionTime'),(9,18,'tours'),(10,23,'appId'),(11,18,'dialog_shown'),(12,25,'shouldEnableBottomBar'),(13,25,'shouldMakeOverlayTransparent'),(14,18,'de_valeur'),(15,27,'DOMOB_ALLOW_LOCATION'),(16,25,'DOMOB_ALLOW_LOCATION'),(17,18,'lances'),(18,21,'MSG'),(19,25,'shouldShowBottomBar'),(20,27,'ST_START_DELAY'),(21,25,'overlayTitle'),(22,27,'DOMOB_TEST_MODE'),(23,25,'DOMOB_TEST_MODE'),(24,27,'ST_MY_PID'),(25,23,'actType'),(26,28,'shouldMakeOverlayTransparent'),(27,18,'points'),(28,50,'transitionTime'),(29,25,'url'),(30,30,'Notify_Id'),(31,16,'startDate'),(32,30,'USER_ID'),(33,41,'snake-view'),(34,28,'overlayTitle'),(35,42,'WAPS_PID'),(36,32,'CLIENT_PACKAGE'),(37,28,'CLIENT_PACKAGE'),(38,30,'isFinshClose'),(39,28,'overlayTransition'),(40,28,'shouldResizeOverlay'),(41,51,'USER_ID'),(42,50,'shouldMakeOverlayTransparent'),(43,38,'Offers_URL'),(44,31,'WAPS_ID'),(45,38,'WAPS_ID'),(46,31,'DEVICE_ID'),(47,38,'DEVICE_ID'),(48,37,'transitionTime'),(49,50,'shouldResizeOverlay'),(50,51,'URL_PARAMS'),(51,50,'url'),(52,51,'CLIENT_PACKAGE'),(53,51,'URL'),(54,51,'Offers_URL'),(55,32,'ST_START_DELAY'),(56,12,'endDate'),(57,39,'DOMOB_PID'),(58,37,'DOMOB_PID'),(59,42,'CLIENT_PACKAGE'),(60,24,'chart'),(61,49,'isTestMode'),(62,50,'overlayTitle'),(63,38,'ACTIVITY_FLAG'),(64,37,'overlayTitle'),(65,52,'MSG'),(66,30,'URL'),(67,50,'shouldShowBottomBar'),(68,50,'overlayTransition'),(69,38,'URL_PARAMS'),(70,50,'shouldShowTitlebar'),(71,37,'shouldEnableBottomBar'),(72,32,'ST_MY_PID'),(73,12,'startDate'),(74,10,'DEVICE_ID'),(75,30,'DEVICE_ID'),(76,32,'DEVICE_ID'),(77,47,'params'),(78,28,'DEVICE_ID'),(79,47,'action'),(80,28,'shouldShowBottomBar'),(81,38,'SHWO_FLAG'),(82,37,'shouldShowBottomBar'),(83,35,'TYPEdsada'),(84,42,'DEVICE_ID'),(85,30,'UrlPath'),(86,34,'state'),(87,10,'APP_ID'),(88,38,'URL'),(89,30,'APP_ID'),(90,37,'shouldResizeOverlay'),(91,32,'APP_ID'),(92,38,'offers_webview_tag'),(93,28,'APP_ID'),(94,39,'ST_START_DELAY'),(95,28,'transitionTime'),(96,36,'actType'),(97,31,'APP_ID'),(98,38,'APP_ID'),(99,31,'WAPS_PID'),(100,38,'WAPS_PID'),(101,42,'WAPS_ID'),(102,52,'TYPEdsada'),(103,51,'isFinshClose'),(104,48,'adWidth'),(105,38,'Notify_Url_Params'),(106,48,'url'),(107,49,'Adwo_PID'),(108,26,'TYPEdsada'),(109,54,'ST_MY_PID'),(110,30,'CLIENT_PACKAGE'),(111,50,'shouldEnableBottomBar'),(112,28,'shouldShowTitlebar'),(113,10,'WAPS_ID'),(114,30,'WAPS_ID'),(115,32,'WAPS_ID'),(116,38,'USER_ID'),(117,28,'WAPS_ID'),(118,34,'gamedata'),(119,16,'endDate'),(120,36,'appId'),(121,41,'usernamezl'),(122,42,'APP_ID'),(123,54,'ST_START_DELAY'),(124,30,'Offers_URL'),(125,19,'startDate'),(126,47,'com.google.ads.AdOpener'),(127,10,'CLIENT_PACKAGE'),(128,30,'ACTIVITY_FLAG'),(129,24,'title'),(130,30,'SHWO_FLAG'),(131,10,'WAPS_PID'),(132,30,'WAPS_PID'),(133,36,'appName'),(134,32,'WAPS_PID'),(135,28,'WAPS_PID'),(136,30,'offers_webview_tag'),(137,19,'type'),(138,28,'url'),(139,19,'endDate'),(140,28,'shouldEnableBottomBar'),(141,39,'DOMOB_TEST_MODE'),(142,37,'DOMOB_TEST_MODE'),(143,38,'UrlPath'),(144,26,'MSG'),(145,30,'Notify_Url_Params'),(146,38,'isFinshClose'),(147,38,'Notify_Id'),(148,37,'shouldMakeOverlayTransparent'),(149,30,'URL_PARAMS'),(150,37,'url'),(151,37,'shouldShowTitlebar'),(152,38,'CLIENT_PACKAGE'),(153,39,'DOMOB_ALLOW_LOCATION'),(154,37,'DOMOB_ALLOW_LOCATION'),(155,39,'ST_MY_PID'),(156,35,'MSG'),(157,37,'overlayTransition'),(158,31,'CLIENT_PACKAGE'),(159,87,'SAFE_PID'),(160,84,'MM'),(161,87,'SAFE_START'),(162,85,'boot_start_service'),(163,89,'android.intent.extra.REPLACING'),(164,62,'FSAd'),(165,62,'shouldResizeOverlay'),(166,63,'TYPEdsada'),(167,64,'URL'),(168,64,'Notify_Url_Params'),(169,61,'shouldEnableBottomBar'),(170,58,'APP_ID'),(171,64,'APP_ID'),(172,57,'APP_ID'),(173,56,'APP_ID'),(174,64,'USER_ID'),(175,58,'DOMOB_TEST_MODE'),(176,62,'DOMOB_TEST_MODE'),(177,57,'DOMOB_TEST_MODE'),(178,65,'DOMOB_TEST_MODE'),(179,56,'DOMOB_TEST_MODE'),(180,61,'DOMOB_TEST_MODE'),(181,58,'DOMOB_PID'),(182,62,'DOMOB_PID'),(183,57,'DOMOB_PID'),(184,65,'DOMOB_PID'),(185,56,'DOMOB_PID'),(186,61,'DOMOB_PID'),(187,62,'shouldShowBottomBar'),(188,64,'SHWO_FLAG'),(189,63,'MSG'),(190,62,'shouldMakeOverlayTransparent'),(191,64,'URL_PARAMS'),(192,58,'WAPS_ID'),(193,64,'WAPS_ID'),(194,57,'WAPS_ID'),(195,56,'WAPS_ID'),(196,58,'WAPS_PID'),(197,64,'WAPS_PID'),(198,57,'WAPS_PID'),(199,56,'WAPS_PID'),(200,64,'isFinshClose'),(201,64,'UrlPath'),(202,64,'offers_webview_tag'),(203,64,'Offers_URL'),(204,60,'appName'),(205,64,'ACTIVITY_FLAG'),(206,60,'actType'),(207,61,'transitionTime'),(208,58,'score'),(209,57,'score'),(210,56,'score'),(211,60,'appId'),(212,58,'DEVICE_ID'),(213,64,'DEVICE_ID'),(214,57,'DEVICE_ID'),(215,56,'DEVICE_ID'),(216,62,'shouldShowTitlebar'),(217,62,'overlayTitle'),(218,64,'Notify_Id'),(219,61,'shouldResizeOverlay'),(220,62,'shouldEnableBottomBar'),(221,64,'CLIENT_PACKAGE'),(222,61,'shouldShowTitlebar'),(223,61,'shouldMakeOverlayTransparent'),(224,61,'shouldShowBottomBar'),(225,58,'CLIENT_PACKAGE'),(226,57,'CLIENT_PACKAGE'),(227,56,'CLIENT_PACKAGE'),(228,61,'url'),(229,58,'DOMOB_ALLOW_LOCATION'),(230,62,'DOMOB_ALLOW_LOCATION'),(231,57,'DOMOB_ALLOW_LOCATION'),(232,65,'DOMOB_ALLOW_LOCATION'),(233,56,'DOMOB_ALLOW_LOCATION'),(234,61,'DOMOB_ALLOW_LOCATION'),(235,61,'overlayTransition'),(236,62,'overlayTransition'),(237,65,'ST_START_DELAY'),(238,65,'ST_MY_PID'),(239,62,'transitionTime'),(240,61,'overlayTitle');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',0,NULL,NULL),(12,12,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'a',0,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'a',0,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'s',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'s',0,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'a',0,NULL,NULL),(39,39,'s',0,NULL,NULL),(40,40,'r',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,52,'a',0,NULL,NULL),(52,54,'a',0,NULL,NULL),(53,55,'s',1,NULL,NULL),(54,56,'s',0,NULL,NULL),(55,57,'r',1,NULL,NULL),(56,60,'a',1,NULL,NULL),(57,62,'a',0,NULL,NULL),(58,63,'a',0,NULL,NULL),(59,64,'a',0,NULL,NULL),(60,65,'a',0,NULL,NULL),(61,66,'a',0,NULL,NULL),(62,67,'a',0,NULL,NULL),(63,68,'a',0,NULL,NULL),(64,69,'a',0,NULL,NULL),(65,70,'s',0,NULL,NULL),(66,71,'r',1,NULL,NULL),(67,72,'r',1,NULL,NULL),(68,74,'r',1,NULL,NULL),(69,77,'r',1,NULL,NULL),(70,81,'r',1,NULL,NULL),(71,94,'r',1,NULL,NULL),(72,97,'r',1,NULL,NULL),(73,102,'r',1,NULL,NULL),(74,105,'r',1,NULL,NULL),(75,112,'r',1,NULL,NULL),(76,116,'r',1,NULL,NULL),(77,120,'r',1,NULL,NULL),(78,126,'a',1,NULL,NULL),(79,127,'a',0,NULL,NULL),(80,128,'a',0,NULL,NULL),(81,129,'a',0,NULL,NULL),(82,130,'a',0,NULL,NULL),(83,131,'a',0,NULL,NULL),(84,132,'a',0,NULL,NULL),(85,133,'s',0,NULL,NULL),(86,134,'s',0,NULL,NULL),(87,135,'s',0,NULL,NULL),(88,136,'r',1,4,NULL),(89,137,'r',1,NULL,NULL),(90,146,'r',1,NULL,NULL),(91,155,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,1),(2,2,1),(3,2,8),(4,3,1),(5,4,1),(6,5,1),(7,5,8),(8,6,8),(9,6,1),(10,7,1),(11,8,8),(12,8,1),(13,9,7),(14,10,8),(15,10,1),(16,11,8),(17,12,8),(18,12,1),(19,13,9),(20,14,8),(21,14,1),(22,15,6),(23,16,5),(24,17,1),(25,18,1),(26,19,1),(27,19,8),(28,20,1),(29,21,21),(30,22,25),(31,22,27),(32,23,27),(33,24,21),(34,25,27),(35,25,25),(36,26,27),(37,26,25),(38,27,25),(39,27,27),(40,28,27),(41,29,30),(42,30,15),(43,31,51),(44,32,29),(45,33,32),(46,33,28),(47,34,27),(48,35,54),(49,36,30),(50,37,52),(51,38,28),(52,38,32),(53,39,47),(54,40,32),(55,40,28),(56,41,38),(57,42,16),(58,43,45),(59,44,32),(60,45,38),(61,46,52),(62,47,31),(63,48,16),(64,49,43),(65,50,26),(66,52,38),(67,51,42),(68,53,55),(69,54,44),(70,55,40),(71,56,33),(72,57,42),(73,58,35),(74,59,12),(75,60,42),(76,61,39),(77,62,54),(78,63,54),(79,64,32),(80,65,39),(81,65,37),(82,66,31),(83,67,26),(84,68,38),(85,69,43),(86,70,30),(87,71,38),(88,72,43),(89,73,54),(90,74,39),(91,75,30),(92,76,31),(93,77,12),(94,78,12),(95,79,32),(96,80,12),(97,81,39),(98,82,30),(99,83,38),(100,84,30),(101,85,35),(102,86,37),(103,86,39),(104,87,31),(105,88,39),(106,88,37),(107,89,39),(108,89,37),(109,90,84),(110,91,83),(111,91,82),(112,91,79),(113,91,78),(114,92,83),(115,92,81),(116,93,89),(117,94,86),(118,95,85),(119,96,78),(120,97,89),(121,98,88),(122,98,79),(123,99,88),(124,100,83),(125,100,78),(126,100,82),(127,100,79),(128,101,83),(129,101,82),(130,101,79),(131,101,78),(132,102,80),(133,103,78),(134,103,83),(135,104,83),(136,104,78),(137,105,78),(138,106,83),(139,106,82),(140,106,79),(141,106,78),(142,107,78),(143,107,83),(144,108,78),(145,109,83),(146,109,82),(147,110,88),(148,111,62),(149,111,65),(150,111,58),(151,111,61),(152,111,57),(153,111,56),(154,112,64),(155,113,59),(156,114,65),(157,115,62),(158,115,65),(159,115,58),(160,115,61),(161,115,56),(162,115,57),(163,116,56),(164,116,58),(165,116,57),(166,116,65),(167,116,62),(168,116,61),(169,117,63),(170,118,64),(171,119,64),(172,120,58),(173,121,67),(174,122,56),(175,122,57),(176,122,58),(177,123,64),(178,124,65),(179,124,58),(180,124,62),(181,124,57),(182,124,61),(183,124,56),(184,125,65),(185,125,61),(186,125,62),(187,125,58),(188,125,56),(189,125,57),(190,126,64),(191,127,65),(192,128,65),(193,129,64),(194,130,63);
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
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(2,51,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(3,53,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(4,58,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(5,59,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(6,51,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(7,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(8,59,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(9,61,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(10,51,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(11,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(12,51,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(13,9,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(14,51,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(15,6,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(16,5,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(17,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(18,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(19,73,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(20,58,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(21,75,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(22,76,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(23,27,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(24,78,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(25,79,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(26,80,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(27,82,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(28,27,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(29,83,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(30,84,'<com.ps.keepaccount.activity.WriteAccount$1: void onClick(android.view.View)>',6,'a',NULL),(31,85,'<com.waps.k: java.lang.String a(java.lang.String[])>',84,'a',NULL),(32,29,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(33,86,'<com.waps.s: void onClick(android.view.View)>',85,'a',NULL),(34,87,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(35,88,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(36,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(37,89,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(38,86,'<com.waps.s: void onClick(android.view.View)>',59,'a',NULL),(39,47,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',65,'a',NULL),(40,86,'<com.waps.s: void onClick(android.view.View)>',35,'a',NULL),(41,90,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(42,16,'<com.ps.keepaccount.activity.TypeAccount: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',10,'a',NULL),(43,91,'<com.adwo.android.snake.orderActivity$orderbackListener: void onClick(android.view.View)>',7,'a',NULL),(44,32,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(45,38,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(46,92,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(47,31,'<com.gp.geekadoo.ui.MainScreen: void startYanivHandler()>',5,'a',NULL),(48,16,'<com.ps.keepaccount.activity.TypeAccount: void onActivityResult(int,int,android.content.Intent)>',18,'a',NULL),(49,93,'<com.adwo.android.snake.editname$saveButtonListener: void onClick(android.view.View)>',27,'a',NULL),(50,95,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(51,42,'<com.adwo.android.snake.begin: void onCreate(android.os.Bundle)>',5,'s',NULL),(52,38,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(53,57,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(54,96,'<com.adwo.android.snake.queryActivity$backListener: void onClick(android.view.View)>',7,'a',NULL),(55,40,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(56,33,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(57,98,'<com.adwo.android.snake.begin$soundButtonListener: void onClick(android.view.View)>',23,'s',0),(58,99,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(59,12,'<com.ps.keepaccount.activity.QueryAccount: void onTabChanged(java.lang.String)>',6,'a',NULL),(60,100,'<com.adwo.android.snake.begin$beginButtonListener: void onClick(android.view.View)>',8,'a',NULL),(61,39,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(62,101,'<com.ju6.a: boolean b()>',178,'p',NULL),(63,56,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(64,103,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(65,104,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(66,106,'<com.gp.geekadoo.ui.MainScreen$3: void onClick(android.view.View)>',6,'a',NULL),(67,107,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(68,108,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(69,109,'<com.adwo.android.snake.editname$orderListener: void onClick(android.view.View)>',7,'a',NULL),(70,30,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(71,110,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(72,111,'<com.adwo.android.snake.editname$queryListener: void onClick(android.view.View)>',7,'a',NULL),(73,56,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(74,39,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(75,113,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(76,114,'<com.gp.geekadoo.ui.MainScreen$5: void onClick(android.view.View)>',52,'a',NULL),(77,115,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',21,'r',NULL),(78,12,'<com.ps.keepaccount.activity.QueryAccount: void onActivityResult(int,int,android.content.Intent)>',15,'r',NULL),(79,32,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(80,115,'<com.ps.keepaccount.activity.QueryAccount$1: void onClick(android.content.DialogInterface,int)>',11,'r',NULL),(81,117,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(82,118,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(83,119,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(84,121,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(85,122,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(86,123,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(87,31,'<com.gp.geekadoo.ui.MainScreen: void resumeYanivHandler()>',5,'a',NULL),(88,124,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(89,125,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(90,138,'<com.atools.battery.m: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(91,139,'<com.atools.nettraffic.util.InternetController: boolean enableApnList(java.util.List)>',25,'p',NULL),(92,140,'<com.ranfeng.common.FeedBackDialog$2: void onClick(android.view.View)>',7,'a',NULL),(93,137,'<com.atools.nettraffic.CommonBroadcast: void onReceive(android.content.Context,android.content.Intent)>',32,'s',NULL),(94,134,'<com.atools.nettraffic.services.NetTrafficService_2_2: void onDestroy()>',4,'r',NULL),(95,133,'<com.atools.nettraffic.services.NetTrafficService_2_1: void onDestroy()>',4,'r',NULL),(96,126,'<com.atools.nettraffic.MainActivity: void onCreate(android.os.Bundle)>',112,'s',NULL),(97,137,'<com.atools.nettraffic.CommonBroadcast: void onReceive(android.content.Context,android.content.Intent)>',27,'s',NULL),(98,141,'<com.atools.nettraffic.Api: void setEnabled(android.content.Context,boolean)>',16,'r',NULL),(99,136,'<com.atools.nettraffic.BootAndShutdownBroadcast: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(100,139,'<com.atools.nettraffic.util.InternetController: boolean disableApnList(java.util.List)>',22,'p',NULL),(101,139,'<com.atools.nettraffic.util.InternetController: java.util.List selectApnInfo(java.lang.String,java.lang.String[])>',10,'p',NULL),(102,126,'<com.atools.nettraffic.MainActivity: void s_checkIfshowAlertDialog(android.content.Context)>',12,'a',NULL),(103,142,'<com.atools.nettraffic.MainActivity$ClickEvent: void onClick(android.view.View)>',26,'a',NULL),(104,142,'<com.atools.nettraffic.MainActivity$ClickEvent: void onClick(android.view.View)>',9,'a',NULL),(105,126,'<com.atools.nettraffic.MainActivity: void onCreate(android.os.Bundle)>',17,'s',NULL),(106,139,'<com.atools.nettraffic.util.InternetController: int executeCountQuery(java.lang.String,java.lang.String[])>',8,'p',NULL),(107,142,'<com.atools.nettraffic.MainActivity$ClickEvent: void onClick(android.view.View)>',20,'a',NULL),(108,126,'<com.atools.nettraffic.MainActivity: void onCreate(android.os.Bundle)>',23,'s',NULL),(109,130,'<com.atools.nettraffic.AlertDialogActivity: void onClick(android.view.View)>',12,'a',NULL),(110,136,'<com.atools.nettraffic.BootAndShutdownBroadcast: void onReceive(android.content.Context,android.content.Intent)>',19,'s',NULL),(111,143,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(112,144,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(113,64,'<com.gp.animalkeeper.Top: boolean onKeyDown(int,android.view.KeyEvent)>',6,'a',NULL),(114,145,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(115,147,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(116,148,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(117,149,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(118,69,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',295,'a',NULL),(119,69,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',320,'a',NULL),(120,150,'<com.gp.animalkeeper.GameOverMenu$5: void onClick(android.content.DialogInterface,int)>',43,'a',NULL),(121,72,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(122,62,'<com.gp.animalkeeper.GameMainActivity: void gameOverToWhere()>',9,'a',NULL),(123,151,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(124,152,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(125,153,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(126,154,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(127,70,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(128,70,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(129,156,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(130,157,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,5),(2,3,5),(3,4,5),(4,5,5),(5,6,5),(6,7,5),(7,8,5),(8,9,5),(9,11,7),(10,12,8),(11,19,12),(12,20,13),(13,22,13),(14,23,13),(15,24,13),(16,25,13),(17,28,1),(18,29,1),(19,30,13),(20,32,13),(21,35,13),(22,38,1),(23,39,1),(24,40,1),(25,41,1),(26,43,1),(27,44,1),(28,45,1),(29,46,1),(30,47,13),(31,48,16),(32,50,1),(33,51,13),(34,52,1),(35,53,16),(36,54,13),(37,60,12),(38,64,1),(39,66,6),(40,67,1),(41,68,1),(42,70,1),(43,74,12),(44,81,1),(45,82,1),(46,83,13),(47,84,12),(48,95,13),(49,96,5),(50,97,17),(51,98,5),(52,99,15),(53,100,5),(54,101,5),(55,103,5),(56,105,5),(57,106,5),(58,107,5),(59,108,19),(60,109,1),(61,111,1),(62,112,13),(63,115,1),(64,116,1),(65,117,13),(66,119,13),(67,120,13),(68,121,13),(69,122,13),(70,124,13),(71,125,1),(72,126,1),(73,127,13),(74,129,22),(75,130,22),(76,133,23),(77,145,1),(78,146,1),(79,147,13),(80,149,13),(81,150,13),(82,151,13),(83,152,13),(84,153,1),(85,154,1),(86,156,1),(87,157,1),(88,164,13),(89,165,13),(90,170,13),(91,171,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,28,1),(2,29,4),(3,38,1),(4,39,4),(5,40,4),(6,41,1),(7,43,1),(8,44,1),(9,45,4),(10,46,4),(11,48,5),(12,50,1),(13,51,5),(14,52,4),(15,53,5),(16,64,1),(17,67,1),(18,68,4),(19,70,4),(20,81,1),(21,82,4),(22,109,1),(23,111,4),(24,115,1),(25,116,4),(26,125,1),(27,126,4),(28,145,1),(29,146,4),(30,153,1),(31,154,4),(32,156,1),(33,157,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'com/tutusw/onekeyvpn/service/OpenVpnService'),(2,10,'com/tutusw/onekeyvpn/service/OpenVpnService'),(3,13,'com/tutusw/onekeyvpn/service/OpenVpnService'),(4,14,'com/tutusw/onekeyvpn/service/OpenVpnService'),(5,15,'com/tutusw/onekeyvpn/service/OpenVpnService'),(6,16,'com/tutusw/onekeyvpn/service/OpenVpnService'),(7,17,'com/tutusw/onekeyvpn/AdvancedSettings'),(8,18,'com/tutusw/onekeyvpn/service/OpenVpnService'),(9,26,'com/google/update/Dialog'),(10,27,'com/google/update/Dialog'),(11,31,'com/google/update/Dialog'),(12,33,'com/google/update/Dialog'),(13,34,'com/ps/keepaccount/dialog/CanlendarDialog'),(14,36,'com/google/update/UpdateService'),(15,37,'com/waps/OffersWebView'),(16,55,'com/ps/keepaccount/dialog/DateSelectorDialog'),(17,56,'com/adwo/android/snake/editname'),(18,57,'com/google/update/Dialog'),(19,59,'(.*)'),(20,58,'com/google/update/Dialog'),(21,61,'com/gp/geekadoo/ui/Yaniv'),(22,62,'com/ps/keepaccount/activity/TypeAccountList'),(23,63,'com/adwo/android/snake/Snake'),(24,69,'com/google/update/UpdateService'),(25,71,'com/adwo/android/snake/editname'),(26,72,'com/google/update/UpdateService'),(27,73,'com/google/update/UpdateService'),(28,75,'com/ps/keepaccount/dialog/DateSelectorDialog'),(29,77,'com/adwo/android/snake/Snake'),(30,76,'com/google/update/Dialog'),(31,78,'com/google/update/Dialog'),(32,79,'com/google/update/Dialog'),(33,80,'com/google/update/Dialog'),(34,85,'NULL-CONSTANT'),(35,86,'com/adwo/android/snake/orderActivity'),(36,87,'(.*)'),(37,89,'com/adwo/android/snake/queryActivity'),(38,88,'com/waps/OffersWebView'),(39,91,'com/google/update/Dialog'),(40,90,'com/waps/OffersWebView'),(41,92,'com/google/update/Dialog'),(42,93,'com/google/update/Dialog'),(43,94,'com/google/update/Dialog'),(44,102,'com/google/update/Dialog'),(45,104,'com/google/update/Dialog'),(46,110,'com/waps/OffersWebView'),(47,113,'com/waps/OffersWebView'),(48,114,'NULL-CONSTANT'),(49,123,'com/gp/geekadoo/ui/Yaniv'),(50,128,'com/atools/nettraffic/services/NetTrafficService_2_1'),(51,131,'com/atools/nettraffic/services/NetTrafficService_2_2'),(52,132,'com/atools/nettraffic/services/NetTrafficService_2_2'),(53,134,'com/atools/nettraffic/services/NetTrafficService_2_1'),(54,135,'com/atools/nettraffic/AlertDialogActivity'),(55,136,'com/atools/nettraffic/MoreActivity'),(56,137,'com/atools/nettraffic/TrafficControlActivity'),(57,138,'com/atools/battery/UpdateService'),(58,139,'com/atools/nettraffic/SettingActivity'),(59,140,'com/atools/nettraffic/services/NetTrafficService_2_1'),(60,141,'com/atools/nettraffic/TrafficControlActivity'),(61,142,'com/atools/nettraffic/services/NetTrafficService_2_2'),(62,143,'NULL-CONSTANT'),(63,144,'com/gp/animalkeeper/GameStartMenu'),(64,158,'(.*)'),(65,159,'com/gp/animalkeeper/Top'),(66,160,'com/google/update/UpdateService'),(67,161,'com/gp/animalkeeper/GameOverMenu'),(68,162,'com/waps/OffersWebView'),(69,163,'com/waps/OffersWebView'),(70,166,'com/google/update/Dialog'),(71,167,'com/google/update/Dialog'),(72,168,'com/google/update/Dialog'),(73,169,'com/google/update/Dialog');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,20,1),(2,22,2),(3,23,3),(4,24,4),(5,25,5),(6,30,6),(7,32,8),(8,35,9),(9,47,10),(10,48,11),(11,51,12),(12,53,13),(13,54,14),(14,83,16),(15,95,17),(16,112,18),(17,117,19),(18,119,20),(19,120,21),(20,121,22),(21,122,23),(22,124,25),(23,127,27),(24,147,32),(25,149,33),(26,150,34),(27,151,35),(28,152,36),(29,164,37),(30,165,39),(31,170,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,2,'android.intent.extra.INTENT'),(2,3,'android.intent.extra.INTENT'),(3,4,'android.intent.extra.TITLE'),(4,4,'android.intent.extra.INTENT'),(5,5,'android.intent.extra.INTENT'),(6,6,'android.intent.extra.TITLE'),(7,6,'android.intent.extra.INTENT'),(8,7,'android.intent.extra.INTENT'),(9,8,'android.intent.extra.TITLE'),(10,8,'android.intent.extra.INTENT'),(11,9,'android.intent.extra.TITLE'),(12,9,'android.intent.extra.INTENT'),(13,11,'org.openintents.extra.TITLE'),(14,17,'hasDaemonsStarted'),(15,26,'MSG'),(16,26,'TYPEdsada'),(17,27,'TYPEdsada'),(18,31,'MSG'),(19,31,'TYPEdsada'),(20,33,'TYPEdsada'),(21,37,'CLIENT_PACKAGE'),(22,37,'URL'),(23,37,'isFinshClose'),(24,37,'offers_webview_tag'),(25,57,'TYPEdsada'),(26,58,'MSG'),(27,58,'TYPEdsada'),(28,61,'state'),(29,62,'startDate'),(30,62,'endDate'),(31,62,'type'),(32,63,'usernamezl'),(33,77,'usernamezl'),(34,76,'MSG'),(35,76,'TYPEdsada'),(36,78,'TYPEdsada'),(37,79,'TYPEdsada'),(38,80,'MSG'),(39,80,'TYPEdsada'),(40,88,'UrlPath'),(41,88,'ACTIVITY_FLAG'),(42,88,'isFinshClose'),(43,88,'offers_webview_tag'),(44,90,'Notify_Url_Params'),(45,90,'UrlPath'),(46,90,'ACTIVITY_FLAG'),(47,91,'TYPEdsada'),(48,90,'isFinshClose'),(49,90,'offers_webview_tag'),(50,92,'MSG'),(51,92,'TYPEdsada'),(52,93,'MSG'),(53,93,'TYPEdsada'),(54,94,'TYPEdsada'),(55,96,'android.intent.extra.INTENT'),(56,98,'android.intent.extra.INTENT'),(57,99,'startDate'),(58,100,'android.intent.extra.TITLE'),(59,99,'endDate'),(60,100,'android.intent.extra.INTENT'),(61,101,'android.intent.extra.INTENT'),(62,102,'TYPEdsada'),(63,103,'android.intent.extra.TITLE'),(64,103,'android.intent.extra.INTENT'),(65,104,'MSG'),(66,104,'TYPEdsada'),(67,105,'android.intent.extra.INTENT'),(68,106,'android.intent.extra.TITLE'),(69,106,'android.intent.extra.INTENT'),(70,107,'android.intent.extra.TITLE'),(71,107,'android.intent.extra.INTENT'),(72,110,'Notify_Url_Params'),(73,110,'UrlPath'),(74,110,'ACTIVITY_FLAG'),(75,110,'isFinshClose'),(76,110,'offers_webview_tag'),(77,113,'UrlPath'),(78,113,'ACTIVITY_FLAG'),(79,113,'isFinshClose'),(80,113,'offers_webview_tag'),(81,123,'state'),(82,133,'com.googlecode.droidwall.intent.extra.STATUS'),(83,134,'boot_start_service'),(84,161,'score'),(85,162,'Notify_Url_Params'),(86,162,'UrlPath'),(87,162,'ACTIVITY_FLAG'),(88,162,'isFinshClose'),(89,162,'offers_webview_tag'),(90,163,'UrlPath'),(91,163,'ACTIVITY_FLAG'),(92,163,'isFinshClose'),(93,163,'offers_webview_tag'),(94,166,'TYPEdsada'),(95,167,'MSG'),(96,167,'TYPEdsada'),(97,168,'TYPEdsada'),(98,169,'MSG'),(99,169,'TYPEdsada');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,5,4),(8,6,1),(9,7,2),(10,7,3),(11,7,4),(12,8,2),(13,8,3),(14,8,4),(15,9,1),(16,10,6),(17,11,4),(18,11,3),(19,11,2),(20,12,1),(21,13,9),(22,14,10),(23,15,4),(24,15,2),(25,15,3),(26,16,11),(27,17,14),(28,18,15),(29,19,14),(30,20,17),(31,21,18),(32,22,14),(33,23,14),(34,24,19),(35,25,14),(36,26,1),(37,27,20),(38,27,2),(39,28,21),(40,29,22),(41,30,14),(42,31,14),(43,32,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,4,1),(4,6,1),(5,9,1),(6,10,2),(7,12,1),(8,13,3),(9,14,3),(10,26,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,19,'package',NULL,NULL,NULL,NULL,NULL),(3,22,'package',NULL,NULL,NULL,NULL,NULL),(4,23,'package',NULL,NULL,NULL,NULL,NULL),(5,25,'package',NULL,NULL,NULL,NULL,NULL),(6,28,'package',NULL,NULL,NULL,NULL,NULL),(7,30,'package',NULL,NULL,NULL,NULL,NULL),(8,31,'package',NULL,NULL,NULL,NULL,NULL),(9,32,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,20,'application','vnd.android.package-archive'),(2,22,'application','vnd.android.package-archive'),(3,23,'application','vnd.android.package-archive'),(4,24,'application','vnd.android.package-archive'),(5,25,'application','vnd.android.package-archive'),(6,32,'application','vnd.android.package-archive'),(7,35,'application','vnd.android.package-archive'),(8,53,'(.*)','(.*)'),(9,54,'application','vnd.android.package-archive'),(10,95,'application','vnd.android.package-archive'),(11,112,'application','vnd.android.package-archive'),(12,117,'application','vnd.android.package-archive'),(13,119,'application','vnd.android.package-archive'),(14,120,'application','vnd.android.package-archive'),(15,121,'application','vnd.android.package-archive'),(16,122,'application','vnd.android.package-archive'),(17,147,'application','vnd.android.package-archive'),(18,149,'application','vnd.android.package-archive'),(19,150,'application','vnd.android.package-archive'),(20,151,'application','vnd.android.package-archive'),(21,152,'application','vnd.android.package-archive'),(22,165,'application','vnd.android.package-archive'),(23,170,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'com.tutusw.onekeyvpn'),(2,10,'com.tutusw.onekeyvpn'),(3,13,'com.tutusw.onekeyvpn'),(4,14,'com.tutusw.onekeyvpn'),(5,15,'com.tutusw.onekeyvpn'),(6,16,'com.tutusw.onekeyvpn'),(7,17,'com.tutusw.onekeyvpn'),(8,18,'com.tutusw.onekeyvpn'),(9,26,'com.ps.yams'),(10,27,'com.ps.yams'),(11,28,'com.noshufou.android.su'),(12,29,'com.noshufou.android.su'),(13,31,'com.ps.yams'),(14,33,'com.ps.yams'),(15,34,'com.ps.keepaccount'),(16,36,'com.ps.yams'),(17,37,'com.ps.keepaccount'),(18,38,'com.ps.yams'),(19,39,'com.adwo.android.snake'),(20,40,'com.ps.yams'),(21,41,'com.adwo.android.snake'),(22,43,'(.*)'),(23,44,'com.noshufou.android.su'),(24,45,'(.*)'),(25,46,'com.noshufou.android.su'),(26,50,'NULL-CONSTANT'),(27,52,'NULL-CONSTANT'),(28,55,'com.ps.keepaccount'),(29,56,'com.adwo.android.snake'),(30,57,'com.ps.keepaccount'),(31,59,'(.*)'),(32,58,'com.ps.keepaccount'),(33,61,'com.gp.geekadoo'),(34,62,'com.ps.keepaccount'),(35,63,'com.adwo.android.snake'),(36,64,'com.noshufou.android.su'),(37,67,'(.*)'),(38,69,'com.adwo.android.snake'),(39,68,'com.noshufou.android.su'),(40,70,'(.*)'),(41,71,'com.adwo.android.snake'),(42,72,'com.gp.geekadoo'),(43,73,'com.ps.keepaccount'),(44,75,'com.ps.keepaccount'),(45,77,'com.adwo.android.snake'),(46,76,'com.gp.geekadoo'),(47,78,'com.gp.geekadoo'),(48,79,'com.adwo.android.snake'),(49,80,'com.adwo.android.snake'),(50,81,'com.ps.keepaccount'),(51,82,'com.ps.keepaccount'),(52,85,'NULL-CONSTANT'),(53,86,'com.adwo.android.snake'),(54,87,'(.*)'),(55,89,'com.adwo.android.snake'),(56,88,'com.gp.geekadoo'),(57,91,'com.adwo.android.snake'),(58,90,'com.gp.geekadoo'),(59,92,'com.adwo.android.snake'),(60,93,'com.gp.geekadoo'),(61,94,'com.gp.geekadoo'),(62,102,'com.ps.keepaccount'),(63,104,'com.ps.keepaccount'),(64,109,'com.gp.geekadoo'),(65,111,'com.gp.geekadoo'),(66,110,'com.ps.keepaccount'),(67,113,'com.ps.keepaccount'),(68,114,'NULL-CONSTANT'),(69,115,'com.noshufou.android.su'),(70,116,'com.noshufou.android.su'),(71,123,'com.gp.geekadoo'),(72,125,'com.noshufou.android.su'),(73,126,'com.noshufou.android.su'),(74,128,'com.atools.nettraffic'),(75,131,'com.atools.nettraffic'),(76,132,'com.atools.nettraffic'),(77,134,'com.atools.nettraffic'),(78,135,'com.atools.nettraffic'),(79,136,'com.atools.nettraffic'),(80,137,'com.atools.nettraffic'),(81,138,'com.atools.nettraffic'),(82,139,'com.atools.nettraffic'),(83,140,'com.atools.nettraffic'),(84,141,'com.atools.nettraffic'),(85,142,'com.atools.nettraffic'),(86,143,'NULL-CONSTANT'),(87,144,'com.gp.animalkeeper'),(88,145,'com.gp.animalkeeper'),(89,146,'com.gp.animalkeeper'),(90,153,'com.noshufou.android.su'),(91,154,'com.noshufou.android.su'),(92,156,'(.*)'),(93,157,'(.*)'),(94,158,'(.*)'),(95,159,'com.gp.animalkeeper'),(96,160,'com.gp.animalkeeper'),(97,161,'com.gp.animalkeeper'),(98,162,'com.gp.animalkeeper'),(99,163,'com.gp.animalkeeper'),(100,166,'com.gp.animalkeeper'),(101,167,'com.gp.animalkeeper'),(102,168,'com.gp.animalkeeper'),(103,169,'com.gp.animalkeeper');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,18,0),(5,29,0),(6,31,0),(7,33,0),(8,40,0),(9,42,0),(10,53,0),(11,55,0),(12,56,0),(13,66,0),(14,66,0),(15,67,0),(16,68,0),(17,69,0),(18,70,0),(19,71,0),(20,72,0),(21,73,0),(22,74,0),(23,75,0),(24,76,0),(25,77,0),(26,78,0),(27,88,0),(28,89,0),(29,89,0),(30,90,0),(31,91,0),(32,90,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,1,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,3,1,0),(10,4,0,0),(11,9,1,0),(12,11,1,0),(13,13,0,0),(14,15,0,0),(15,16,0,0),(16,17,0,0),(17,18,0,0),(18,20,0,0),(19,21,1,0),(20,22,1,0),(21,22,1,0),(22,22,1,0),(23,22,1,0),(24,22,1,0),(25,22,1,0),(26,23,0,0),(27,23,0,0),(28,24,1,0),(29,24,1,0),(30,26,1,0),(31,28,0,0),(32,29,1,0),(33,28,0,0),(34,30,0,0),(35,31,1,0),(36,32,0,0),(37,33,0,0),(38,34,1,0),(39,35,1,0),(40,34,1,0),(41,35,1,0),(42,36,1,0),(43,36,1,0),(44,37,1,0),(45,36,1,0),(46,37,1,0),(47,38,1,0),(48,39,1,0),(49,40,1,0),(50,40,1,0),(51,39,1,0),(52,40,1,0),(53,39,1,0),(54,41,1,0),(55,42,0,0),(56,43,0,0),(57,44,0,0),(58,44,0,0),(59,45,0,0),(60,46,1,0),(61,47,0,0),(62,48,0,0),(63,49,0,0),(64,50,1,0),(65,52,1,0),(66,51,1,0),(67,52,1,0),(68,50,1,0),(69,53,0,0),(70,52,1,0),(71,54,0,0),(72,55,0,0),(73,56,0,0),(74,58,1,0),(75,59,0,0),(76,61,0,0),(77,60,0,0),(78,61,0,0),(79,63,0,0),(80,63,0,0),(81,64,1,0),(82,64,1,0),(83,66,1,0),(84,67,1,0),(85,68,0,0),(86,69,0,0),(87,70,0,0),(88,71,0,0),(89,72,0,0),(90,71,0,0),(91,73,0,0),(92,73,0,0),(93,74,0,0),(94,74,0,0),(95,75,1,0),(96,76,1,0),(97,77,1,0),(98,76,1,0),(99,78,1,0),(100,76,1,0),(101,76,1,0),(102,79,0,0),(103,76,1,0),(104,79,0,0),(105,76,1,0),(106,76,1,0),(107,76,1,0),(108,80,1,0),(109,81,1,0),(110,82,0,0),(111,81,1,0),(112,83,1,0),(113,82,0,0),(114,84,0,0),(115,85,1,0),(116,85,1,0),(117,86,1,0),(118,86,1,0),(119,86,1,0),(120,86,1,0),(121,86,1,0),(122,86,1,0),(123,87,0,0),(124,89,1,0),(125,90,1,0),(126,90,1,0),(127,92,1,0),(128,93,0,0),(129,94,1,0),(130,95,1,0),(131,96,0,0),(132,97,0,0),(133,98,1,0),(134,99,0,0),(135,102,0,0),(136,103,0,0),(137,104,0,0),(138,105,0,0),(139,107,0,0),(140,108,0,0),(141,109,0,0),(142,110,0,0),(143,112,0,0),(144,113,0,0),(145,114,1,0),(146,114,1,0),(147,115,1,0),(148,115,1,0),(149,115,1,0),(150,115,1,0),(151,115,1,0),(152,115,1,0),(153,117,1,0),(154,117,1,0),(155,118,1,0),(156,118,1,0),(157,118,1,0),(158,119,0,0),(159,120,0,0),(160,121,0,0),(161,122,0,0),(162,123,0,0),(163,123,0,0),(164,124,1,0),(165,126,1,0),(166,127,0,0),(167,127,0,0),(168,128,0,0),(169,128,0,0),(170,129,1,0),(171,130,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,66,1,2,NULL),(2,12,42,2,NULL),(3,66,9,2,NULL),(4,66,68,2,NULL),(5,66,10,2,NULL),(6,99,42,2,NULL),(7,42,42,2,NULL),(8,43,42,2,NULL),(9,45,42,2,NULL),(10,66,33,2,NULL),(11,66,70,2,NULL),(12,66,72,2,NULL),(13,66,73,2,NULL),(14,66,76,2,NULL),(15,66,18,2,NULL),(16,66,29,2,NULL),(17,66,31,2,NULL),(18,65,42,2,NULL),(19,67,42,2,NULL),(20,70,42,2,NULL),(21,66,40,2,NULL),(22,48,42,2,NULL),(23,51,42,2,NULL),(24,66,53,2,NULL),(25,66,55,2,NULL),(26,66,56,2,NULL),(27,155,42,2,NULL),(28,156,42,2,NULL),(29,157,42,2,NULL),(30,66,66,2,NULL),(31,66,67,2,NULL),(32,66,78,2,NULL),(33,130,42,2,NULL),(34,129,42,2,NULL),(35,66,88,2,NULL),(36,66,89,2,NULL),(37,48,1,2,NULL),(38,51,1,2,NULL),(39,48,9,2,NULL),(40,51,9,2,NULL),(41,48,68,2,NULL),(42,51,68,2,NULL),(43,48,10,2,NULL),(44,51,10,2,NULL),(45,48,33,2,NULL),(46,51,33,2,NULL),(47,48,70,2,NULL),(48,51,70,2,NULL),(49,48,72,2,NULL),(50,51,72,2,NULL),(51,48,73,2,NULL),(52,51,73,2,NULL),(53,48,76,2,NULL),(54,51,76,2,NULL),(55,48,18,2,NULL),(56,51,18,2,NULL),(57,48,29,2,NULL),(58,51,29,2,NULL),(59,48,31,2,NULL),(60,51,31,2,NULL),(61,48,40,2,NULL),(62,51,40,2,NULL),(63,48,53,2,NULL),(64,51,53,2,NULL),(65,48,55,2,NULL),(66,51,55,2,NULL),(67,48,56,2,NULL),(68,51,56,2,NULL),(69,48,66,2,NULL),(70,51,66,2,NULL),(71,48,67,2,NULL),(72,51,67,2,NULL),(73,48,78,2,NULL),(74,51,78,2,NULL),(75,48,88,2,NULL),(76,51,88,2,NULL),(77,48,89,2,NULL),(78,51,89,2,NULL),(79,12,53,2,NULL),(80,99,53,2,NULL),(81,42,53,2,NULL),(82,43,53,2,NULL),(83,45,53,2,NULL),(84,65,53,2,NULL),(85,67,53,2,NULL),(86,70,53,2,NULL),(87,155,53,2,NULL),(88,156,53,2,NULL),(89,157,53,2,NULL),(90,130,53,2,NULL),(91,129,53,2,NULL),(92,79,21,2,NULL),(93,79,26,2,NULL),(94,79,35,2,NULL),(95,79,52,2,NULL),(96,79,63,2,NULL),(97,80,21,2,NULL),(98,80,26,2,NULL),(99,80,35,2,NULL),(100,80,52,2,NULL),(101,80,63,2,NULL),(102,91,21,2,NULL),(103,91,26,2,NULL),(104,91,35,2,NULL),(105,91,52,2,NULL),(106,91,63,2,NULL),(107,12,56,2,NULL),(108,92,21,2,NULL),(109,99,56,2,NULL),(110,92,26,2,NULL),(111,42,56,2,NULL),(112,92,35,2,NULL),(113,43,56,2,NULL),(114,92,52,2,NULL),(115,45,56,2,NULL),(116,92,63,2,NULL),(117,65,56,2,NULL),(118,69,27,2,NULL),(119,67,56,2,NULL),(120,69,32,2,NULL),(121,70,56,2,NULL),(122,69,39,2,NULL),(123,155,56,2,NULL),(124,69,54,2,NULL),(125,156,56,2,NULL),(126,69,65,2,NULL),(127,157,56,2,NULL),(128,12,55,2,NULL),(129,130,56,2,NULL),(130,99,55,2,NULL),(131,129,56,2,NULL),(132,42,55,2,NULL),(133,161,58,2,NULL),(134,43,55,2,NULL),(135,144,56,2,NULL),(136,45,55,2,NULL),(137,155,1,2,NULL),(138,65,55,2,NULL),(139,156,1,2,NULL),(140,67,55,2,NULL),(141,157,1,2,NULL),(142,70,55,2,NULL),(143,155,9,2,NULL),(144,155,55,2,NULL),(145,156,9,2,NULL),(146,156,55,2,NULL),(147,157,9,2,NULL),(148,157,55,2,NULL),(149,155,68,2,NULL),(150,130,55,2,NULL),(151,156,68,2,NULL),(152,129,55,2,NULL),(153,157,68,2,NULL),(154,155,10,2,NULL),(155,156,10,2,NULL),(156,157,10,2,NULL),(157,155,33,2,NULL),(158,156,33,2,NULL),(159,157,33,2,NULL),(160,155,70,2,NULL),(161,156,70,2,NULL),(162,157,70,2,NULL),(163,155,72,2,NULL),(164,156,72,2,NULL),(165,157,72,2,NULL),(166,155,73,2,NULL),(167,156,73,2,NULL),(168,157,73,2,NULL),(169,155,76,2,NULL),(170,156,76,2,NULL),(171,157,76,2,NULL),(172,155,18,2,NULL),(173,156,18,2,NULL),(174,157,18,2,NULL),(175,155,29,2,NULL),(176,156,29,2,NULL),(177,157,29,2,NULL),(178,155,31,2,NULL),(179,156,31,2,NULL),(180,157,31,2,NULL),(181,155,40,2,NULL),(182,156,40,2,NULL),(183,157,40,2,NULL),(184,155,66,2,NULL),(185,156,66,2,NULL),(186,157,66,2,NULL),(187,155,67,2,NULL),(188,156,67,2,NULL),(189,157,67,2,NULL),(190,155,78,2,NULL),(191,156,78,2,NULL),(192,157,78,2,NULL),(193,155,88,2,NULL),(194,156,88,2,NULL),(195,157,88,2,NULL),(196,155,89,2,NULL),(197,156,89,2,NULL),(198,157,89,2,NULL),(199,166,21,2,NULL),(200,166,26,2,NULL),(201,166,35,2,NULL),(202,166,52,2,NULL),(203,166,63,2,NULL),(204,167,21,2,NULL),(205,167,26,2,NULL),(206,167,35,2,NULL),(207,167,52,2,NULL),(208,167,63,2,NULL),(209,168,21,2,NULL),(210,168,26,2,NULL),(211,168,35,2,NULL),(212,168,52,2,NULL),(213,168,63,2,NULL),(214,169,21,2,NULL),(215,169,26,2,NULL),(216,169,35,2,NULL),(217,169,52,2,NULL),(218,169,63,2,NULL),(219,12,66,2,NULL),(220,99,66,2,NULL),(221,42,66,2,NULL),(222,43,66,2,NULL),(223,45,66,2,NULL),(224,65,66,2,NULL),(225,67,66,2,NULL),(226,70,66,2,NULL),(227,130,66,2,NULL),(228,129,66,2,NULL),(229,160,27,2,NULL),(230,160,32,2,NULL),(231,160,39,2,NULL),(232,160,54,2,NULL),(233,160,65,2,NULL),(234,12,67,2,NULL),(235,99,67,2,NULL),(236,42,67,2,NULL),(237,43,67,2,NULL),(238,45,67,2,NULL),(239,65,67,2,NULL),(240,67,67,2,NULL),(241,70,67,2,NULL),(242,130,67,2,NULL),(243,129,67,2,NULL),(244,12,10,2,NULL),(245,99,10,2,NULL),(246,42,10,2,NULL),(247,43,10,2,NULL),(248,45,10,2,NULL),(249,65,10,2,NULL),(250,67,10,2,NULL),(251,70,10,2,NULL),(252,130,10,2,NULL),(253,129,10,2,NULL),(254,75,22,2,NULL),(255,99,1,2,NULL),(256,99,9,2,NULL),(257,99,68,2,NULL),(258,99,33,2,NULL),(259,99,70,2,NULL),(260,99,72,2,NULL),(261,99,73,2,NULL),(262,99,76,2,NULL),(263,99,18,2,NULL),(264,99,29,2,NULL),(265,99,31,2,NULL),(266,99,40,2,NULL),(267,99,78,2,NULL),(268,99,88,2,NULL),(269,99,89,2,NULL),(270,55,22,2,NULL),(271,62,19,2,NULL),(272,42,1,2,NULL),(273,43,1,2,NULL),(274,45,1,2,NULL),(275,42,9,2,NULL),(276,43,9,2,NULL),(277,45,9,2,NULL),(278,42,68,2,NULL),(279,43,68,2,NULL),(280,45,68,2,NULL),(281,42,33,2,NULL),(282,43,33,2,NULL),(283,45,33,2,NULL),(284,42,70,2,NULL),(285,43,70,2,NULL),(286,45,70,2,NULL),(287,42,72,2,NULL),(288,43,72,2,NULL),(289,45,72,2,NULL),(290,42,73,2,NULL),(291,43,73,2,NULL),(292,45,73,2,NULL),(293,42,76,2,NULL),(294,43,76,2,NULL),(295,45,76,2,NULL),(296,42,18,2,NULL),(297,43,18,2,NULL),(298,45,18,2,NULL),(299,42,29,2,NULL),(300,43,29,2,NULL),(301,45,29,2,NULL),(302,42,31,2,NULL),(303,43,31,2,NULL),(304,45,31,2,NULL),(305,42,40,2,NULL),(306,43,40,2,NULL),(307,45,40,2,NULL),(308,42,78,2,NULL),(309,43,78,2,NULL),(310,45,78,2,NULL),(311,42,88,2,NULL),(312,43,88,2,NULL),(313,45,88,2,NULL),(314,42,89,2,NULL),(315,43,89,2,NULL),(316,45,89,2,NULL),(317,57,21,2,NULL),(318,57,26,2,NULL),(319,57,35,2,NULL),(320,57,52,2,NULL),(321,57,63,2,NULL),(322,58,21,2,NULL),(323,58,26,2,NULL),(324,58,35,2,NULL),(325,58,52,2,NULL),(326,58,63,2,NULL),(327,102,21,2,NULL),(328,102,26,2,NULL),(329,102,35,2,NULL),(330,102,52,2,NULL),(331,102,63,2,NULL),(332,104,21,2,NULL),(333,104,26,2,NULL),(334,104,35,2,NULL),(335,104,52,2,NULL),(336,104,63,2,NULL),(337,73,27,2,NULL),(338,73,32,2,NULL),(339,73,39,2,NULL),(340,73,54,2,NULL),(341,73,65,2,NULL),(342,12,33,2,NULL),(343,65,33,2,NULL),(344,67,33,2,NULL),(345,70,33,2,NULL),(346,130,33,2,NULL),(347,129,33,2,NULL),(348,12,70,2,NULL),(349,65,70,2,NULL),(350,67,70,2,NULL),(351,70,70,2,NULL),(352,130,70,2,NULL),(353,129,70,2,NULL),(354,12,72,2,NULL),(355,65,72,2,NULL),(356,67,72,2,NULL),(357,70,72,2,NULL),(358,130,72,2,NULL),(359,129,72,2,NULL),(360,12,73,2,NULL),(361,65,73,2,NULL),(362,67,73,2,NULL),(363,70,73,2,NULL),(364,130,73,2,NULL),(365,129,73,2,NULL),(366,12,76,2,NULL),(367,65,76,2,NULL),(368,67,76,2,NULL),(369,70,76,2,NULL),(370,130,76,2,NULL),(371,129,76,2,NULL),(372,131,86,2,NULL),(373,135,82,2,NULL),(374,138,87,2,NULL),(375,140,85,2,NULL),(376,12,78,2,NULL),(377,65,78,2,NULL),(378,67,78,2,NULL),(379,70,78,2,NULL),(380,130,78,2,NULL),(381,129,78,2,NULL),(382,141,79,2,NULL),(383,130,1,2,NULL),(384,130,9,2,NULL),(385,130,68,2,NULL),(386,130,18,2,NULL),(387,130,29,2,NULL),(388,130,31,2,NULL),(389,130,40,2,NULL),(390,130,88,2,NULL),(391,130,89,2,NULL),(392,129,1,2,NULL),(393,129,9,2,NULL),(394,129,68,2,NULL),(395,129,18,2,NULL),(396,129,29,2,NULL),(397,129,31,2,NULL),(398,129,40,2,NULL),(399,129,88,2,NULL),(400,129,89,2,NULL),(401,134,85,2,NULL),(402,142,86,2,NULL),(403,12,88,2,NULL),(404,65,88,2,NULL),(405,67,88,2,NULL),(406,70,88,2,NULL),(407,128,85,2,NULL),(408,132,86,2,NULL),(409,12,89,2,NULL),(410,65,89,2,NULL),(411,67,89,2,NULL),(412,70,89,2,NULL),(413,1,8,2,NULL),(414,16,8,2,NULL),(415,17,2,2,NULL),(416,12,1,2,NULL),(417,65,1,2,NULL),(418,67,1,2,NULL),(419,70,1,2,NULL),(420,15,8,2,NULL),(421,14,8,2,NULL),(422,12,9,2,NULL),(423,12,68,2,NULL),(424,12,18,2,NULL),(425,12,29,2,NULL),(426,12,31,2,NULL),(427,12,40,2,NULL),(428,13,8,2,NULL),(429,65,9,2,NULL),(430,67,9,2,NULL),(431,70,9,2,NULL),(432,65,68,2,NULL),(433,67,68,2,NULL),(434,70,68,2,NULL),(435,61,34,2,NULL),(436,123,34,2,NULL),(437,65,31,2,NULL),(438,67,31,2,NULL),(439,70,31,2,NULL),(440,65,18,2,NULL),(441,67,18,2,NULL),(442,70,18,2,NULL),(443,65,29,2,NULL),(444,67,29,2,NULL),(445,70,29,2,NULL),(446,65,40,2,NULL),(447,67,40,2,NULL),(448,70,40,2,NULL),(449,76,21,2,NULL),(450,76,26,2,NULL),(451,76,35,2,NULL),(452,76,52,2,NULL),(453,76,63,2,NULL),(454,78,21,2,NULL),(455,78,26,2,NULL),(456,78,35,2,NULL),(457,78,52,2,NULL),(458,78,63,2,NULL),(459,93,21,2,NULL),(460,93,26,2,NULL),(461,93,35,2,NULL),(462,93,52,2,NULL),(463,93,63,2,NULL),(464,94,21,2,NULL),(465,94,26,2,NULL),(466,94,35,2,NULL),(467,94,52,2,NULL),(468,94,63,2,NULL),(469,72,27,2,NULL),(470,72,32,2,NULL),(471,72,39,2,NULL),(472,72,54,2,NULL),(473,72,65,2,NULL),(474,26,21,2,NULL),(475,26,26,2,NULL),(476,26,35,2,NULL),(477,26,52,2,NULL),(478,26,63,2,NULL),(479,27,21,2,NULL),(480,27,26,2,NULL),(481,27,35,2,NULL),(482,27,52,2,NULL),(483,27,63,2,NULL),(484,31,21,2,NULL),(485,31,26,2,NULL),(486,31,35,2,NULL),(487,31,52,2,NULL),(488,31,63,2,NULL),(489,33,21,2,NULL),(490,33,26,2,NULL),(491,33,35,2,NULL),(492,33,52,2,NULL),(493,33,63,2,NULL),(494,36,27,2,NULL),(495,36,32,2,NULL),(496,36,39,2,NULL),(497,36,54,2,NULL),(498,36,65,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (10,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(13,'android.permission.ACCESS_NETWORK_STATE'),(9,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.BROADCAST_STICKY'),(12,'android.permission.CHANGE_WIFI_STATE'),(6,'android.permission.GET_TASKS'),(5,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(17,'android.permission.PROCESS_OUTGOING_CALLS'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(11,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(19,'android.permission.RECORD_AUDIO'),(18,'android.permission.VIBRATE'),(20,'android.permission.WAKE_LOCK'),(21,'android.permission.WRITE_APN_SETTINGS'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(8,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(2,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(3,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(5,NULL,NULL,'file://',NULL,NULL,NULL),(6,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(7,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(8,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(16,NULL,NULL,'http://www.youtube.com/watch?v=V4XuZRbbs6M',NULL,NULL,NULL),(17,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(18,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(20,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(21,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(22,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(23,NULL,NULL,'file://',NULL,NULL,NULL),(24,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(25,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(26,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(27,NULL,NULL,'http://3ghappy.net/and/feedback.aspx',NULL,NULL,NULL),(28,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(29,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(30,NULL,NULL,'content://telephony/carriers',NULL,NULL,NULL),(31,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(32,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(33,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(36,NULL,NULL,'file://',NULL,NULL,NULL),(37,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,27,7),(2,62,15),(3,88,24),(4,91,26),(5,100,28),(6,101,29),(7,106,30),(8,111,31),(9,125,38);
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,2,13),(16,3,16),(17,3,1),(18,3,2),(19,3,4),(20,3,7),(21,3,9),(22,3,12),(23,3,13),(24,3,14),(25,3,15),(26,4,16),(27,4,1),(28,4,2),(29,4,4),(30,4,6),(31,4,7),(32,4,9),(33,4,12),(34,4,13),(35,4,14),(36,4,15),(37,5,1),(38,5,2),(39,5,5),(40,5,6),(41,5,7),(42,5,8),(43,5,9),(44,5,10),(45,5,11),(46,5,12),(47,5,13),(48,5,14),(49,5,15),(50,5,16),(51,6,1),(52,6,2),(53,6,4),(54,6,6),(55,6,7),(56,6,9),(57,6,10),(58,6,12),(59,6,13),(60,6,14),(61,6,15),(62,6,17),(63,6,16),(64,6,19),(65,6,18),(66,6,20),(67,7,1),(68,7,2),(69,7,21),(70,7,5),(71,7,7),(72,7,9),(73,7,10),(74,7,13);
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

-- Dump completed on 2015-10-12  3:29:17
